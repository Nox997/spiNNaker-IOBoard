/*
 * leds.c
 *
 *  Created on: Jun 12, 2012
 *      Author: jt
 */

#include "leds.h"

void led_init(void)
{

	GPIO_leds.GPIO_Pin		= LED0;
	GPIO_leds.GPIO_Mode		= GPIO_Mode_OUT;			//
	GPIO_leds.GPIO_OType	= GPIO_OType_PP;		// Push-Pull
	GPIO_leds.GPIO_PuPd		= GPIO_PuPd_UP;			// Pull-up
	GPIO_leds.GPIO_Speed	= GPIO_Speed_100MHz;	// High speed ? Necessary ??

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);		// Enabling clocks

	GPIO_Init(LED,		&GPIO_leds);
}


void led0_on(void)
{
	LED->ODR |= LED0;

}

void led0_off(void)
{
	LED->ODR &= ~LED0;

}


void led0_toggle(void)
{
	LED->ODR ^= LED0;
}




