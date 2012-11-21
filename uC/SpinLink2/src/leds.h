/*
 * leds.h
 * Adapted for SpinLink2
 * Created on: Jun 12, 2012
 * Author: Francisco Llobet
 */

#ifndef LEDS_H_
#define LEDS_H_

#include "stm32f4xx_gpio.h"
#include "stm32f4xx_rcc.h"

#define LED		GPIOB			// LED GPIO_PORT
#define LED0	GPIO_ODR_ODR_9	// Port PB9


GPIO_InitTypeDef	GPIO_leds;


void led_init(void);
void led0_on(void);
void led0_off(void);
void led0_toggle(void);


#endif /* LEDS_H_ */
