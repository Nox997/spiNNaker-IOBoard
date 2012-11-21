/*
 * spin_link_ll.c
 * SpinLink Low Level Stuff
 *  Created on: Jul 30, 2012
 *      Author: jt
 */


#include "spin_link_ll.h"


//#include <stdio.h>
//#include <stdlib.h>


// Inputs: GPIOA: PA0-PA7

void spin_link_in_init(void)	// Initialize incoming spin_link GPIO ports;
{
	GPIO_InitTypeDef	GPIO_spinn_link_in;	// Initialize GPIO Struct


	RCC_AHB1PeriphClockCmd(RCC_SPIN_MCU_DATA_IN_1, ENABLE);		// Enabling clocks
	RCC_AHB1PeriphClockCmd(RCC_SPIN_MCU_DATA_IN_2, ENABLE);		// Enabling clocks


	// Main settings
	GPIO_spinn_link_in.GPIO_OType		= GPIO_OType_PP;		// Push-Pull
	GPIO_spinn_link_in.GPIO_PuPd		= GPIO_PuPd_NOPULL;		// Pull-up
	GPIO_spinn_link_in.GPIO_Speed		= GPIO_Speed_100MHz;	// High speed ? Necessary ??

	// 1st: Input pins
	GPIO_spinn_link_in.GPIO_Mode		= GPIO_Mode_IN;	// Set to output mode

	// Spin Link outgoing data
	GPIO_spinn_link_in.GPIO_Pin		= SPLI_MASK;
	GPIO_Init(SPIN_MCU_DATA_IN,		&GPIO_spinn_link_in);


	GPIO_spinn_link_in.GPIO_Pin		= SPLI_EOP;
	GPIO_Init(SPIN_MCU_DATA_IN_EOP,	&GPIO_spinn_link_in);

	GPIO_spinn_link_in.GPIO_Pin		= SPLO_AV;
	GPIO_Init(SPIN_MCU_DATA_IN_AV,		&GPIO_spinn_link_in);

	// 2nd: Output pins
	GPIO_spinn_link_in.GPIO_Mode	= GPIO_Mode_OUT;	// Set to input mode

	GPIO_spinn_link_in.GPIO_Pin		= SPLI_ACK;
	GPIO_Init(SPIN_MCU_DATA_IN_ACK,	&GPIO_spinn_link_in);

}

void spin_link_out_init(void)	// Initialize incoming spin_link GPIO ports
{
	GPIO_InitTypeDef	GPIO_spinn_link_out;	// Initialize GPIO Struct


	RCC_AHB1PeriphClockCmd(RCC_SPIN_MCU_DATA_OUT_1, ENABLE);		// Enabling clocks
	RCC_AHB1PeriphClockCmd(RCC_SPIN_MCU_DATA_OUT_2, ENABLE);		// Enabling clocks

	// Main settings
	GPIO_spinn_link_out.GPIO_OType		= GPIO_OType_PP;		// Push-Pull
	GPIO_spinn_link_out.GPIO_PuPd		= GPIO_PuPd_NOPULL;		// Pull-up
	GPIO_spinn_link_out.GPIO_Speed		= GPIO_Speed_100MHz;	// High speed ? Necessary ??

	// 1st: Output pins
	GPIO_spinn_link_out.GPIO_Mode		= GPIO_Mode_OUT;	// Set to output mode

	// Spin Link outgoing data
	GPIO_spinn_link_out.GPIO_Pin		= SPLO_MASK;
	GPIO_Init(SPIN_MCU_DATA_OUT,		&GPIO_spinn_link_out);

	GPIO_spinn_link_out.GPIO_Pin		= SPLO_EOP;
	GPIO_Init(SPIN_MCU_DATA_OUT_EOP,	&GPIO_spinn_link_out);

	GPIO_spinn_link_out.GPIO_Pin		= SPLO_AV;
	GPIO_Init(SPIN_MCU_DATA_OUT_AV,		&GPIO_spinn_link_out);

	// 2nd: Input pins
	GPIO_spinn_link_out.GPIO_Mode		= GPIO_Mode_IN;	// Set to input mode

	GPIO_spinn_link_out.GPIO_Pin		= SPLO_BSY;
	GPIO_Init(SPIN_MCU_DATA_OUT_BSY,	&GPIO_spinn_link_out);
}

void spin_link_init(void)
{
	spin_link_in_init();

	spin_link_out_init();
	GPIO_WriteBit(SPIN_MCU_DATA_OUT_EOP, SPLO_EOP, 0);
//	GPIO_WriteBit(SPIN_MCU_DATA_OUT_AV, SPLO_AV, 0);
}


// Sends SpinLink Byte
void spin_link_send(uint8_t data)	// Send normal 8-bit data
{
	// Build up byte:
//	while(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY);
	SPIN_MCU_DATA_OUT->ODR     = (data & 0x3F) | (data & 0xC0) << 7;
	SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
}

void spin_link_send_eop(void)	// Send eop signal
{
//	while(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY);
	SPIN_MCU_DATA_OUT_EOP->ODR |=  SPLO_EOP;
	SPIN_MCU_DATA_OUT_AV->ODR  ^=  SPLO_AV; //Toggle
	SPIN_MCU_DATA_OUT_EOP->ODR &= ~SPLO_EOP;	// Reset
}


uint16_t spin_link_receive(void)	// Pre DMA-Based buffering!
{
	//uint16_t data;
	uint8_t	c;

	c = SPIN_MCU_DATA_IN_EOP->IDR & SPLI_EOP;

	switch(c){
	case 1:	  return EOP_BIT;
	case 0:
	default : return (SPIN_MCU_DATA_IN->IDR & 0xFF);
	}


}
