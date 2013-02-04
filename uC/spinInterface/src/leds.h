/*
 * leds.h
 *
 *  Created on: 28.11.2012
 *      Author: denk
 */

#ifndef LEDS_H_
#define LEDS_H_

#include "stm32f4xx_gpio.h"
#include "stm32f4xx_rcc.h"

void led_init(void);
void led_on(void);
void led_off(void);
void led_toggle(void);

#endif /* LEDS_H_ */
