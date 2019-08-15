/**
 * \file
 *
 * \brief USART basic driver.
 *
 (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

/**
 * \defgroup doc_driver_usart_basic USART Basic
 * \ingroup doc_driver_usart
 *
 * \section doc_driver_usart_basic_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */
#include <compiler.h>
#include <clock_config.h>
#include <usart_basic.h>
#include <atomic.h>

/* Static Variables holding the ringbuffer used in IRQ mode */
static uint8_t          USART_0_rxbuf[USART_0_RX_BUFFER_SIZE];
static volatile uint8_t USART_0_rx_head;
static volatile uint8_t USART_0_rx_tail;
static volatile uint8_t USART_0_rx_elements;
static uint8_t          USART_0_txbuf[USART_0_TX_BUFFER_SIZE];
static volatile uint8_t USART_0_tx_head;
static volatile uint8_t USART_0_tx_tail;
static volatile uint8_t USART_0_tx_elements;

void USART_0_default_rx_isr_cb(void);
void (*USART_0_rx_isr_cb)(void) = &USART_0_default_rx_isr_cb;
void USART_0_default_udre_isr_cb(void);
void (*USART_0_udre_isr_cb)(void) = &USART_0_default_udre_isr_cb;

void USART_0_default_rx_isr_cb(void)
{
	uint8_t data;
	uint8_t tmphead;

	/* Read the received data */
	data = UDR0;
	/* Calculate buffer index */
	tmphead = (USART_0_rx_head + 1) & USART_0_RX_BUFFER_MASK;

	if (tmphead == USART_0_rx_tail) {
		/* ERROR! Receive buffer overflow */
	} else {
		/* Store new index */
		USART_0_rx_head = tmphead;

		/* Store received data in buffer */
		USART_0_rxbuf[tmphead] = data;
		USART_0_rx_elements++;
	}
}

void USART_0_default_udre_isr_cb(void)
{
	uint8_t tmptail;

	/* Check if all data is transmitted */
	if (USART_0_tx_elements != 0) {
		/* Calculate buffer index */
		tmptail = (USART_0_tx_tail + 1) & USART_0_TX_BUFFER_MASK;
		/* Store new index */
		USART_0_tx_tail = tmptail;
		/* Start transmission */
		UDR0 = USART_0_txbuf[tmptail];
		USART_0_tx_elements--;
	}

	if (USART_0_tx_elements == 0) {
		/* Disable UDRE interrupt */
		UCSR0B &= ~(1 << UDRIE0);
	}
}

/**
 * \brief Set call back function for USART_0
 *
 * \param[in] cb The call back function to set
 *
 * \param[in] type The type of ISR to be set
 *
 * \return Nothing
 */
void USART_0_set_ISR_cb(usart_cb_t cb, usart_cb_type_t type)
{
	switch (type) {
	case RX_CB:
		USART_0_rx_isr_cb = cb;
		break;
	case UDRE_CB:
		USART_0_udre_isr_cb = cb;
		break;
	default:
		// do nothing
		break;
	}
}

/* Interrupt service routine for RX complete */
ISR(USART0_RX_vect)
{
	if (USART_0_rx_isr_cb != NULL)
		(*USART_0_rx_isr_cb)();
}

/* Interrupt service routine for Data Register Empty */
ISR(USART0_UDRE_vect)
{
	if (USART_0_udre_isr_cb != NULL)
		(*USART_0_udre_isr_cb)();
}

bool USART_0_is_tx_ready()
{
	return (USART_0_tx_elements != USART_0_TX_BUFFER_SIZE);
}

bool USART_0_is_rx_ready()
{
	return (USART_0_rx_elements != 0);
}

bool USART_0_is_tx_busy()
{
	return (!(UCSR0A & (1 << TXC0)));
}

/**
 * \brief Read one character from USART_0
 *
 * Function will block if a character is not available.
 *
 * \return Data read from the USART_0 module
 */
uint8_t USART_0_read(void)
{
	uint8_t tmptail;

	/* Wait for incoming data */
	while (USART_0_rx_elements == 0)
		;
	/* Calculate buffer index */
	tmptail = (USART_0_rx_tail + 1) & USART_0_RX_BUFFER_MASK;
	/* Store new index */
	USART_0_rx_tail = tmptail;
	ENTER_CRITICAL(R);
	USART_0_rx_elements--;
	EXIT_CRITICAL(R);

	/* Return data */
	return USART_0_rxbuf[tmptail];
}

/**
 * \brief Write one character to USART_0
 *
 * Function will block until a character can be accepted.
 *
 * \param[in] data The character to write to the USART
 *
 * \return Nothing
 */
void USART_0_write(const uint8_t data)
{
	uint8_t tmphead;

	/* Calculate buffer index */
	tmphead = (USART_0_tx_head + 1) & USART_0_TX_BUFFER_MASK;
	/* Wait for free space in buffer */
	while (USART_0_tx_elements == USART_0_TX_BUFFER_SIZE)
		;
	/* Store data in buffer */
	USART_0_txbuf[tmphead] = data;
	/* Store new index */
	USART_0_tx_head = tmphead;
	ENTER_CRITICAL(W);
	USART_0_tx_elements++;
	EXIT_CRITICAL(W);
	/* Enable UDRE interrupt */
	UCSR0B |= (1 << UDRIE0);
}

/**
 * \brief Initialize USART interface
 * If module is configured to disabled state, the clock to the USART is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 * \retval 0 the USART init was successful
 * \retval 1 the USART init was not successful
 */
int8_t USART_0_init()
{

	// Module is in UART mode

	/* Enable USART0 */
	PRR0 &= ~(1 << PRUSART0);

#define BAUD 9600

#include <utils/setbaud.h>

	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

	UCSR0A = USE_2X << U2X0 /*  */
	         | 0 << MPCM0;  /* Multi-processor Communication Mode: disabled */

	UCSR0B = 1 << RXCIE0    /* RX Complete Interrupt Enable: enabled */
	         | 0 << TXCIE0  /* TX Complete Interrupt Enable: disabled */
	         | 0 << UDRIE0  /* USART Data Register Empty Interupt Enable: disabled */
	         | 1 << RXEN0   /* Receiver Enable: enabled */
	         | 1 << TXEN0   /* Transmitter Enable: enabled */
	         | 0 << UCSZ02; /*  */

	// UCSR0C = (0 << UMSEL01) | (0 << UMSEL00) /*  */
	//		 | (0 << UPM01) | (0 << UPM00) /* Disabled */
	//		 | 0 << USBS0 /* USART Stop Bit Select: disabled */
	//		 | (1 << UCSZ01) | (1 << UCSZ00); /* 8-bit */

	// UCSR0D = 0 << RXSIE /* USART RX Start Interrupt Enable: disabled */
	//		 | 0 << SFDE; /* Start Frame Detection Enable: disabled */

	uint8_t x;

	/* Initialize ringbuffers */
	x = 0;

	USART_0_rx_tail     = x;
	USART_0_rx_head     = x;
	USART_0_rx_elements = x;
	USART_0_tx_tail     = x;
	USART_0_tx_head     = x;
	USART_0_tx_elements = x;

	return 0;
}

/**
 * \brief Enable RX and TX in USART_0
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the RX and TX enable-bits in the USART control register
 *
 * \return Nothing
 */
void USART_0_enable()
{
	UCSR0B |= ((1 << TXEN0) | (1 << RXEN0));
}

/**
 * \brief Enable RX in USART_0
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the RX enable-bit in the USART control register
 *
 * \return Nothing
 */
void USART_0_enable_rx()
{
	UCSR0B |= (1 << RXEN0);
}

/**
 * \brief Enable TX in USART_0
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the TX enable-bit in the USART control register
 *
 * \return Nothing
 */
void USART_0_enable_tx()
{
	UCSR0B |= (1 << TXEN0);
}

/**
 * \brief Disable USART_0
 * 1. Disables the USART module by clearing the enable-bit(s) in the USART control register
 * 2. If supported by the clock system, disables the clock to the USART
 *
 * \return Nothing
 */
void USART_0_disable()
{
	UCSR0B &= ~((1 << TXEN0) | (1 << RXEN0));
}

/**
 * \brief Get recieved data from USART_0
 *
 * \return Data register from USART_0 module
 */
uint8_t USART_0_get_data()
{
	return UDR0;
}

/* Static Variables holding the ringbuffer used in IRQ mode */
static uint8_t          USART_1_rxbuf[USART_1_RX_BUFFER_SIZE];
static volatile uint8_t USART_1_rx_head;
static volatile uint8_t USART_1_rx_tail;
static volatile uint8_t USART_1_rx_elements;
static uint8_t          USART_1_txbuf[USART_1_TX_BUFFER_SIZE];
static volatile uint8_t USART_1_tx_head;
static volatile uint8_t USART_1_tx_tail;
static volatile uint8_t USART_1_tx_elements;

void USART_1_default_rx_isr_cb(void);
void (*USART_1_rx_isr_cb)(void) = &USART_1_default_rx_isr_cb;
void USART_1_default_udre_isr_cb(void);
void (*USART_1_udre_isr_cb)(void) = &USART_1_default_udre_isr_cb;

void USART_1_default_rx_isr_cb(void)
{
	uint8_t data;
	uint8_t tmphead;

	/* Read the received data */
	data = UDR1;
	/* Calculate buffer index */
	tmphead = (USART_1_rx_head + 1) & USART_1_RX_BUFFER_MASK;

	if (tmphead == USART_1_rx_tail) {
		/* ERROR! Receive buffer overflow */
	} else {
		/* Store new index */
		USART_1_rx_head = tmphead;

		/* Store received data in buffer */
		USART_1_rxbuf[tmphead] = data;
		USART_1_rx_elements++;
	}
}

void USART_1_default_udre_isr_cb(void)
{
	uint8_t tmptail;

	/* Check if all data is transmitted */
	if (USART_1_tx_elements != 0) {
		/* Calculate buffer index */
		tmptail = (USART_1_tx_tail + 1) & USART_1_TX_BUFFER_MASK;
		/* Store new index */
		USART_1_tx_tail = tmptail;
		/* Start transmission */
		UDR1 = USART_1_txbuf[tmptail];
		USART_1_tx_elements--;
	}

	if (USART_1_tx_elements == 0) {
		/* Disable UDRE interrupt */
		UCSR1B &= ~(1 << UDRIE1);
	}
}

/**
 * \brief Set call back function for USART_1
 *
 * \param[in] cb The call back function to set
 *
 * \param[in] type The type of ISR to be set
 *
 * \return Nothing
 */
void USART_1_set_ISR_cb(usart_cb_t cb, usart_cb_type_t type)
{
	switch (type) {
	case RX_CB:
		USART_1_rx_isr_cb = cb;
		break;
	case UDRE_CB:
		USART_1_udre_isr_cb = cb;
		break;
	default:
		// do nothing
		break;
	}
}

/* Interrupt service routine for RX complete */
ISR(USART1_RX_vect)
{
	if (USART_1_rx_isr_cb != NULL)
		(*USART_1_rx_isr_cb)();
}

/* Interrupt service routine for Data Register Empty */
ISR(USART1_UDRE_vect)
{
	if (USART_1_udre_isr_cb != NULL)
		(*USART_1_udre_isr_cb)();
}

bool USART_1_is_tx_ready()
{
	return (USART_1_tx_elements != USART_1_TX_BUFFER_SIZE);
}

bool USART_1_is_rx_ready()
{
	return (USART_1_rx_elements != 0);
}

bool USART_1_is_tx_busy()
{
	return (!(UCSR1A & (1 << TXC1)));
}

/**
 * \brief Read one character from USART_1
 *
 * Function will block if a character is not available.
 *
 * \return Data read from the USART_1 module
 */
uint8_t USART_1_read(void)
{
	uint8_t tmptail;

	/* Wait for incoming data */
	while (USART_1_rx_elements == 0)
		;
	/* Calculate buffer index */
	tmptail = (USART_1_rx_tail + 1) & USART_1_RX_BUFFER_MASK;
	/* Store new index */
	USART_1_rx_tail = tmptail;
	ENTER_CRITICAL(R);
	USART_1_rx_elements--;
	EXIT_CRITICAL(R);

	/* Return data */
	return USART_1_rxbuf[tmptail];
}

/**
 * \brief Write one character to USART_1
 *
 * Function will block until a character can be accepted.
 *
 * \param[in] data The character to write to the USART
 *
 * \return Nothing
 */
void USART_1_write(const uint8_t data)
{
	uint8_t tmphead;

	/* Calculate buffer index */
	tmphead = (USART_1_tx_head + 1) & USART_1_TX_BUFFER_MASK;
	/* Wait for free space in buffer */
	while (USART_1_tx_elements == USART_1_TX_BUFFER_SIZE)
		;
	/* Store data in buffer */
	USART_1_txbuf[tmphead] = data;
	/* Store new index */
	USART_1_tx_head = tmphead;
	ENTER_CRITICAL(W);
	USART_1_tx_elements++;
	EXIT_CRITICAL(W);
	/* Enable UDRE interrupt */
	UCSR1B |= (1 << UDRIE1);
}

/**
 * \brief Initialize USART interface
 * If module is configured to disabled state, the clock to the USART is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 * \retval 0 the USART init was successful
 * \retval 1 the USART init was not successful
 */
int8_t USART_1_init()
{

	// Module is in UART mode

	/* Enable USART1 */
	PRR0 &= ~(1 << PRUSART1);

#define BAUD 9600

#include <utils/setbaud.h>

	UBRR1H = UBRRH_VALUE;
	UBRR1L = UBRRL_VALUE;

	UCSR1A = USE_2X << U2X1 /*  */
	         | 0 << MPCM1;  /* Multi-processor Communication Mode: disabled */

	UCSR1B = 1 << RXCIE1    /* RX Complete Interrupt Enable: enabled */
	         | 0 << TXCIE1  /* TX Complete Interrupt Enable: disabled */
	         | 0 << UDRIE1  /* USART Data Register Empty Interupt Enable: disabled */
	         | 0 << RXEN1   /* Receiver Enable: disabled */
	         | 1 << TXEN1   /* Transmitter Enable: enabled */
	         | 0 << UCSZ12; /*  */

	// UCSR1C = (0 << UMSEL11) | (0 << UMSEL10) /*  */
	//		 | (0 << UPM11) | (0 << UPM10) /* Disabled */
	//		 | 0 << USBS1 /* USART Stop Bit Select: disabled */
	//		 | (1 << UCSZ11) | (1 << UCSZ10); /* 8-bit */

	// UCSR1D = 0 << RXSIE /* USART RX Start Interrupt Enable: disabled */
	//		 | 0 << SFDE; /* Start Frame Detection Enable: disabled */

	uint8_t x;

	/* Initialize ringbuffers */
	x = 0;

	USART_1_rx_tail     = x;
	USART_1_rx_head     = x;
	USART_1_rx_elements = x;
	USART_1_tx_tail     = x;
	USART_1_tx_head     = x;
	USART_1_tx_elements = x;

	return 0;
}

/**
 * \brief Enable RX and TX in USART_1
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the RX and TX enable-bits in the USART control register
 *
 * \return Nothing
 */
void USART_1_enable()
{
	UCSR1B |= ((1 << TXEN1) | (1 << RXEN1));
}

/**
 * \brief Enable RX in USART_1
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the RX enable-bit in the USART control register
 *
 * \return Nothing
 */
void USART_1_enable_rx()
{
	UCSR1B |= (1 << RXEN1);
}

/**
 * \brief Enable TX in USART_1
 * 1. If supported by the clock system, enables the clock to the USART
 * 2. Enables the USART module by setting the TX enable-bit in the USART control register
 *
 * \return Nothing
 */
void USART_1_enable_tx()
{
	UCSR1B |= (1 << TXEN1);
}

/**
 * \brief Disable USART_1
 * 1. Disables the USART module by clearing the enable-bit(s) in the USART control register
 * 2. If supported by the clock system, disables the clock to the USART
 *
 * \return Nothing
 */
void USART_1_disable()
{
	UCSR1B &= ~((1 << TXEN1) | (1 << RXEN1));
}

/**
 * \brief Get recieved data from USART_1
 *
 * \return Data register from USART_1 module
 */
uint8_t USART_1_get_data()
{
	return UDR1;
}
