/*
 * radio.c
 *
 * Created: 2021/11/29 16:36:37
 *  Author: jpmeijers
 */ 
#include <atmel_start.h>
#include <util/delay.h>
#include <string.h>
#include <stdio.h>

#include "secret.h"
// secret.h contains the required keys for OTAA
// Copy from TTN Device Console.
// Example:
//   char *devEui = "FFFFFFFFFFFFFFFF"; // If set to all FF's here, we will use the Hardware EUI of the RN2483 module.
//   char *appEui = "0000000000000000"; // The Things Stack uses all 00's by default.
//   char *appKey = "";                 // Fill in your 32 character AppKey from the console here.

uint8_t lora_joined = false;
uint8_t transmit_error_count = 0;
char buffer_rn [256];

void rn2483_tx(char buf[]) {
	#ifdef DEBUG
	debug("RN2483 TX: ");
	debug(buf);
	#endif
	
	for (uint8_t i = 0; i < strlen(buf); i++) {
		while (!USART_0_is_tx_ready()) {}
		USART_0_write(buf[i]);
	}
	while (USART_0_is_tx_busy()) {}
}

void rn2483_rx() {
	char nc = 0x00;
	uint8_t len = 0;

	for (; len < 255; len++) {
		nc = USART_0_read();
		buffer_rn[len] = nc;
		if (nc == '\n') {
			break;
		}
	}
	buffer_rn[len+1] = '\0';
	
	#ifdef DEBUG
	debug("RN2483 RX: ");
	debug(buffer_rn);
	#endif
}

void rn2483_rx_clear() {
	#ifdef DEBUG
	debug("RN2483 RX clearing\r\n");
	#endif
	
	while(USART_0_is_rx_ready()) {
		while(USART_0_is_rx_ready()) {
			USART_0_read();
		}
		_delay_ms(100);
	}

}

void rn2483_init_error() {
	#ifdef DEBUG
	debug("Aborting initialization due to unexpected response\r\n");
	#endif

	rn2483_tx("sys sleep 86400000\r\n");
	
	while(1) {
		LED_TX_set_level(true);
		_delay_ms(200);
		LED_TX_set_level(false);
		_delay_ms(200);
	}
}

void transmit_error() {
	#ifdef DEBUG
	debug("Aborting transmission due to unexpected response\r\n");
	#endif

	rn2483_tx("sys sleep 86400000\r\n");
	
	#ifdef DEBUG
	debug("\r\n");
	#endif
	
	for (uint8_t i = 0; i < 20; i++) {
		LED_TX_set_level(true);
		_delay_ms(200);
		LED_TX_set_level(false);
		_delay_ms(200);
	}
}

void rn2483_break_and_baud() {
	#ifdef DEBUG
	debug ("RN2483 wakeup and baud change\r\n");
	#endif
	
	USART_0_disable();

	RN_TX_set_level(false);
	_delay_ms(5);
	RN_TX_set_level(true);

	USART_0_enable();
	
	while (!USART_0_is_tx_ready()) {}
	USART_0_write(0x55);
	
	rn2483_rx_clear();
}

void rn2483_init() {
	#ifdef DEBUG
	debug("RN2483 initialization\r\n");
	#endif

	// Reset RN2483
	RN_RESET_set_level(false);
	_delay_ms(1);
	RN_RESET_set_level(true);
	_delay_ms(1000);

	rn2483_break_and_baud();
	
	rn2483_tx("sys get ver\r\n");
	rn2483_rx();

	rn2483_tx("sys get hweui\r\n");
	rn2483_rx();
	
	if(strcmp("FFFFFFFFFFFFFFFF", devEui) == 0) {
		// DevEUI not set, so use hweui
		strncpy(devEui, buffer_rn, 16);
		#ifdef DEBUG
		debug("DevEUI not set. Using HWEUI.\r\n");
		#endif
	}

	#ifdef FACTORY_RESET
	rn2483_tx("sys factoryRESET\r\n");
	_delay_ms(5000);
	rn2483_break_and_baud();
	while(1) {
		rn2483_rx();
	}
	#endif
	
	rn2483_tx("mac set adr on\r\n");
	rn2483_rx();

	sprintf (buffer_rn, "mac set deveui %s\r\n", devEui);
	rn2483_tx(buffer_rn);
	rn2483_rx();
	if (strcmp(buffer_rn, "ok\r\n") != 0) {
		rn2483_init_error();
		return;
	}

	sprintf (buffer_rn, "mac set appeui %s\r\n", appEui);
	rn2483_tx(buffer_rn);
	rn2483_rx();
	if (strcmp(buffer_rn, "ok\r\n") != 0) {
		rn2483_init_error();
		return;
	}

	sprintf (buffer_rn, "mac set appkey %s\r\n", appKey);
	rn2483_tx(buffer_rn);
	rn2483_rx();
	if (strcmp(buffer_rn, "ok\r\n") != 0) {
		rn2483_init_error();
		return;
	}

	sprintf (buffer_rn, "mac save\r\n");
	rn2483_tx(buffer_rn);
	rn2483_rx();
	if (strcmp(buffer_rn, "ok\r\n") != 0) {
		rn2483_init_error();
		return;
	}
	
	sprintf (buffer_rn, "mac join otaa\r\n");
	rn2483_tx(buffer_rn);
	rn2483_rx();
	rn2483_rx();
	if (strcmp(buffer_rn, "accepted\r\n") != 0) {
		//rn2483_init_error();
		//return;
		lora_joined = false;
		transmit_error();
		} else {
		lora_joined = true;
	}
	
	//rn2483_tx("sys sleep 86400000\r\n");

	#ifdef DEBUG
	debug("\r\n");
	#endif

}

void transmit(uint16_t volt_bat, uint16_t volt_fence_plus, uint16_t volt_fence_minus) {
	LED_TX_set_level(true);
	#ifdef DEBUG
	debug("Transmitting\r\n");
	#endif

	rn2483_break_and_baud();
	
	if(!lora_joined) {
		rn2483_init();
	}
	
	if(!lora_joined) {
		transmit_error();
		return;
	}

	sprintf (buffer_rn, "mac tx uncnf 2 %04X%04X%04X\r\n", volt_bat, volt_fence_plus, volt_fence_minus);
	rn2483_tx(buffer_rn);
	rn2483_rx();
	if (strcmp(buffer_rn, "ok\r\n") != 0) {
		transmit_error();
		return;
	}
	rn2483_rx();
	// TODO handle mac_rx_ok. Add at least a command to remotely restart the device. Also useful is a command to force a rejoin.
	if (strcmp(buffer_rn, "mac_tx_ok\r\n") != 0) {
		transmit_error();
		return;
	}
	
	rn2483_tx("sys sleep 86400000\r\n");
	
	LED_TX_set_level(false);
	#ifdef DEBUG
	debug("\r\n");
	#endif
}