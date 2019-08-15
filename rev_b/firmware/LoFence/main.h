/*
 * main.h
 *
 * Created: 21.07.2019 08:47:59
 *  Author: kiu
 */ 

#ifndef MAIN_H_
#define MAIN_H_

#define DEBUG 1
//#define FACTORY_RESET 1
#define INTERVAL_SECONDS 60 * 60
#define MEASURE_MS 15000

#include "secret.h"
// secret.h contains the required keys for ABP
// Copy from TTN Device Console.
// Example:
//   const char *devAddr = "";
//   const char *nwkSKey = "";
//   const char *appSKey = "";

void adc_init();

void rn2483_break_and_baud();

void rn2483_init();

void power_save(uint32_t sec);

void debug(char buf[]);

void rn2483_tx(char buf[]);

void rn2483_rx_clear();

void rn2483_rx();
	
void measure();

void transmit();

void pause();

int main(void);

#endif /* MAIN_H_ */