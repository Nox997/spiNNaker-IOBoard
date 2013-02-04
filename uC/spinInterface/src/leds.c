/*
 * leds.c
 *
 *  Created on: 28.11.2012
 *      Author: denk
 */


#include "leds.h"

void led_init(void) {
	//Struct to Initialize GPIOB:
	GPIO_InitTypeDef GPIO_LED_INIT;
	GPIO_LED_INIT.GPIO_Pin 		= GPIO_ODR_ODR_9;			//Only Pin "PB9" is used for the LED
	GPIO_LED_INIT.GPIO_Mode 	= GPIO_Mode_OUT;
	GPIO_LED_INIT.GPIO_OType	= GPIO_OType_PP;
	GPIO_LED_INIT.GPIO_PuPd 	= GPIO_PuPd_UP;
	GPIO_LED_INIT.GPIO_Speed 	= GPIO_Speed_100MHz;

	//Enable the Clock for the GPIOB port:
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE);

	//Initialize the GPIOB port:
	GPIO_Init(GPIOB, &GPIO_LED_INIT);

	//Initialize the LED to be off in the beginning:
	led_off();
}

void led_on(void) {
	GPIOB->ODR |= GPIO_ODR_ODR_9;
}
void led_off(void) {
	GPIOB->ODR &= ~GPIO_ODR_ODR_9;
}
void led_toggle(void) {
	GPIOB->ODR ^= GPIO_ODR_ODR_9;
}
