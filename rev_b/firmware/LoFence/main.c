#include <atmel_start.h>
#include <util/delay.h>
#include <string.h>
#include <stdio.h>
#include "main.h"
#include "radio.h"

#define MAX(x, y) (((x) > (y)) ? (x) : (y))
#define MIN(x, y) (((x) < (y)) ? (x) : (y))

volatile uint32_t seconds = 0;

volatile uint8_t adc_clear = 0;
volatile uint8_t adc_max = 0;
volatile uint8_t adc_min = 0;
//volatile uint32_t adc_samples = 0;
uint8_t adc_val = 0;

char buffer_dbg [256];
	
uint16_t volt_bat = 0;
uint16_t volt_fence_plus = 0;
uint16_t volt_fence_minus = 0;

uint16_t rounds = 0;

// ----------------------------------------------------------------------------------------------

ISR(TIMER2_OVF_vect) {
	// see https://www.mikrocontroller.net/articles/AVR-GCC-Tutorial/Die_Timer_und_Z%C3%A4hler_des_AVR#Timer2_im_Asynchron_Mode
	TCCR2B = TCCR2B;
	seconds++;	
	LED_CLK_toggle_level();
	while(ASSR & ((1<<TCN2UB) | (1<<OCR2AUB) | (1<<OCR2BUB) | (1<<TCR2AUB) | (1<<TCR2BUB)));
}

ISR(ADC_vect) {
	adc_val = ADCH;
	if (adc_clear == 1) {
		adc_clear = 0;
		adc_max = 0x00;
		adc_min = 0xFF;
//		adc_samples = 0;
	}
	adc_max = MAX(adc_max, adc_val);
	adc_min = MIN(adc_min, adc_val);
//	adc_samples++;
}

// ----------------------------------------------------------------------------------------------

void adc_init() {
	#ifdef DEBUG
	debug("ADC initialization\r\n");
	#endif

	PRR0 &= ~(1 << PRADC); // Enable
	
	DIDR0 = (1 << ADC0D) | (1 << ADC2D) | (1 << ADC4D); // Disable input buffer
	
	ADMUX = 0x00;
	ADMUX |= (0 << REFS1) | (1 << REFS0); // AVCC with external capacitor at AREF pin
	ADMUX |= (1 << ADLAR); // Left Adjust Result: enabled
	
	ADCSRA = 0x00;
	ADCSRA |= (1 << ADATE); // Auto Trigger: enabled
	ADCSRA |= (1 << ADIE); // ADC Interrupt: enabled
	
	// Safe range: 50khz - 200khz
	//ADCSRA |= (1 << ADPS2) | (0 << ADPS1) | (0 << ADPS0); // 100  16 500khz
	ADCSRA |= (1 << ADPS2) | (0 << ADPS1) | (1 << ADPS0); // 101  32 250khz
	//ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (0 << ADPS0); // 110  64 125khz
	//ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // 111 128  62khz
	
	ADCSRB = 0x00;
	ADCSRB |= (0 << ADTS2) | (0 << ADTS1) | (0 << ADTS0); // Free Running mode
	ADCSRB |= (0 << ACME); // Analog Comparator Multiplexer: disabled

	ACSR |= (1 << ACD); // Disable Comparator

	ADCSRA &= ~(1 << ADEN); // Disable ADC
	PRR0 |= (1 << PRADC); // Disable ADC
	
	#ifdef DEBUG
	debug("\r\n");
	#endif
}



// ----------------------------------------------------------------------------------------------

void power_save(uint32_t sec) {
	seconds = 0;
	sleep_enable();
	while (seconds <= sec) {
		sleep_mode();
	}
	sleep_disable();
}

void debug(char buf[]) {
	#ifdef DEBUG
	for (uint8_t i = 0; i < strlen(buf); i++) {
		while (!USART_1_is_tx_ready()) {}
		USART_1_write(buf[i]);
	}	
	while (USART_1_is_tx_busy()) {}
	#endif
}

// ----------------------------------------------------------------------------------------------

void measure() {
	LED_MSR_set_level(true);
	#ifdef DEBUG
	debug("Measuring\r\n");
	#endif
		
	// ----------------------------------------------------------------------------------------------

	PRR0 &= ~(1 << PRADC); // Enable ADC
	ADC_POWER_set_level(true);
	_delay_ms(1000);
		
	// ----------------------------------------------------------------------------------------------
		
	#ifdef DEBUG
	debug("Measuring battery: ");
	#endif

	BAT_GND_set_level(false);
	_delay_ms(1000);

	ADMUX = (ADMUX & 0xE0) | (1 << MUX2); // Pin 4
	ADCSRA |= (1 << ADEN);
	ADCSRA |= (1 << ADSC);
	adc_clear = 1;
	_delay_ms(500);
	ADCSRA &= ~(1 << ADEN);
	BAT_GND_set_level(true);

	volt_bat = (((330000/255*adc_min*2) - 0))/100;

	#ifdef DEBUG
	sprintf (buffer_dbg, "%d mV\r\n", volt_bat);
	debug(buffer_dbg);
	#endif

	// ----------------------------------------------------------------------------------------------

	#ifdef DEBUG
	debug("Measuring fence positive: ");
	#endif
				
	ADMUX = (ADMUX & 0xE0); // Pin 0
	ADCSRA |= (1 << ADEN);
	ADCSRA |= (1 << ADSC);
	adc_clear = 1;
	_delay_ms(MEASURE_MS);
	ADCSRA &= ~(1 << ADEN);

	volt_fence_plus = (12000/255*adc_max);

	#ifdef DEBUG
	sprintf (buffer_dbg, "%d V\r\n", volt_fence_plus);
	debug(buffer_dbg);
	#endif

	// ----------------------------------------------------------------------------------------------

	#ifdef DEBUG
	debug("Measuring fence negative: ");
	#endif

	ADMUX = (ADMUX & 0xE0) | (1 << MUX1); // Pin 2
	ADCSRA |= (1 << ADEN);
	ADCSRA |= (1 << ADSC);
	adc_clear = 1;
	_delay_ms(MEASURE_MS);
	ADCSRA &= ~(1 << ADEN);

	volt_fence_minus = (12000/255*adc_max);

	#ifdef DEBUG
	sprintf (buffer_dbg, "%d V\r\n", volt_fence_minus);
	debug(buffer_dbg);
	#endif

	// ----------------------------------------------------------------------------------------------

	ADC_POWER_set_level(false);
	PRR0 |= (1 << PRADC); // Disable ADC

	LED_MSR_set_level(false);
	#ifdef DEBUG
	debug("\r\n");
	#endif
}

void pause() {
	LED_IDLE_set_level(true);
	#ifdef DEBUG
	sprintf (buffer_dbg, "Sleeping for %d seconds\r\n", INTERVAL_SECONDS);
	debug(buffer_dbg);
	_delay_ms(500);
	#endif
	
	power_save(INTERVAL_SECONDS);
	
	LED_IDLE_set_level(false);
	#ifdef DEBUG
	debug("\r\n");
	#endif
}

// ----------------------------------------------------------------------------------------------

int main(void) {

	atmel_start_init();

	LED_IDLE_set_level(true);
	LED_MSR_set_level(true);
	LED_TX_set_level(true);

	#ifdef DEBUG
	debug("\r\n");
	debug("\r\n");
	debug("LoFence REV B v0.5\r\n");
	debug("https://github.com/kiu/lofence\r\n");
	debug("Lets get started!\r\n");
	debug("\r\n");
	#endif
	LED_IDLE_set_level(false);

	adc_init();
	LED_MSR_set_level(false);

	// No need to init RN2xx3, as that is done at the start of transmit().
	LED_TX_set_level(false);
		
	while (1) {
		
		#ifdef DEBUG
		sprintf(buffer_dbg, "Round: %u\r\n", rounds);
		debug(buffer_dbg);
		#endif
		
		measure();
		// TODO measure internal temperature
		
		transmit(volt_bat, volt_fence_plus, volt_fence_minus);		
		
		pause();		

		rounds++;
	}
	
}
