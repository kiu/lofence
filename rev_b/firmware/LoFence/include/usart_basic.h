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

#ifndef USART_BASIC_H_INCLUDED
#define USART_BASIC_H_INCLUDED

#include <atmel_start.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* USART_0 Ringbuffer */

#define USART_0_RX_BUFFER_SIZE 256
#define USART_0_TX_BUFFER_SIZE 256
#define USART_0_RX_BUFFER_MASK (USART_0_RX_BUFFER_SIZE - 1)
#define USART_0_TX_BUFFER_MASK (USART_0_TX_BUFFER_SIZE - 1)

typedef enum { RX_CB = 1, UDRE_CB } usart_cb_type_t;
typedef void (*usart_cb_t)(void);

int8_t USART_0_init();

void USART_0_enable();

void USART_0_enable_rx();

void USART_0_enable_tx();

void USART_0_disable();

uint8_t USART_0_get_data();

bool USART_0_is_tx_ready();

bool USART_0_is_rx_ready();

bool USART_0_is_tx_busy();

uint8_t USART_0_read(void);

void USART_0_write(const uint8_t data);

void USART_0_set_ISR_cb(usart_cb_t cb, usart_cb_type_t type);

/* USART_1 Ringbuffer */

#define USART_1_RX_BUFFER_SIZE 8
#define USART_1_TX_BUFFER_SIZE 8
#define USART_1_RX_BUFFER_MASK (USART_1_RX_BUFFER_SIZE - 1)
#define USART_1_TX_BUFFER_MASK (USART_1_TX_BUFFER_SIZE - 1)

int8_t USART_1_init();

void USART_1_enable();

void USART_1_enable_rx();

void USART_1_enable_tx();

void USART_1_disable();

uint8_t USART_1_get_data();

bool USART_1_is_tx_ready();

bool USART_1_is_rx_ready();

bool USART_1_is_tx_busy();

uint8_t USART_1_read(void);

void USART_1_write(const uint8_t data);

void USART_1_set_ISR_cb(usart_cb_t cb, usart_cb_type_t type);

#ifdef __cplusplus
}
#endif

#endif /* USART_BASIC_H_INCLUDED */
