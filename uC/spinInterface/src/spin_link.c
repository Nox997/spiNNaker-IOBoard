/*
 * spink_link.c
 *
 *  Created on: Jul 30, 2012
 *      Author: francisco
 */

//////////////////////////////////////////////////////
// TODO: CLEAN UP!
//////////////////////////////////////////////////////

#include "spin_link.h"


// Bit Twiddling Hack - Parity Lookup Table for parity calculation:
static const uint32_t ParityTable256[256] =
{
#   define P2(n) n, n^1, n^1, n
#   define P4(n) P2(n), P2(n^1), P2(n^1), P2(n)
#   define P6(n) P4(n), P4(n^1), P4(n^1), P4(n)
    P6(0), P6(1), P6(1), P6(0)
};


// Global variables
spin_link_buff_t	spin_link_out;
spin_link_buff_t	spin_link_in;

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


// Stuff from spin_link.c
/* spin_link_package_parity(spin_link_pkg_t* package)
 *	Date:	21.6.2012
 * The SpiNNaker link package parity checking/validating function
 * Arguments:
 * 	*package:	Pointer to package
 *
 * Returns:		0	Parity bit should be 0
 * 				1	Parity bit should be 1
 */
uint32_t spin_link_package_parity(spin_link_pkg_t* package) // Results are 0 for odd parity and 1 for parity
{



//// Exclude Header (parity) 0 bit
//	uint8_t p = 0;
//	uint8_t pay = 0;
//
//	p	= ((package->header >> 1) );
//	pay = (p & 0x1);
//	p ^=  ((package->header >> 2) );
//	p ^=  ((package->header >> 3) );
//	p ^=  ((package->header >> 4) );
//	p ^=  ((package->header >> 5) );
//	p ^=  ((package->header >> 6) );
//	p ^=  ((package->header >> 7) );
//	p ^=  ((package->key   >> 0) );
//	p ^=  ((package->key   >> 1) );
//	p ^=  ((package->key   >> 2) );
//	p ^=  ((package->key   >> 3) );
//	p ^=  ((package->key   >> 4) );
//	p ^=  ((package->key   >> 5) );
//	p ^=  ((package->key   >> 6) );
//	p ^=  ((package->key   >> 7) );
//	p ^=  ((package->key   >> 8) );
//	p ^=  ((package->key   >> 9) );
//	p ^=  ((package->key   >> 10) );
//	p ^=  ((package->key   >> 11) );
//	p ^=  ((package->key   >> 12) );
//	p ^=  ((package->key   >> 13) );
//	p ^=  ((package->key   >> 14) );
//	p ^=  ((package->key   >> 15) );
//	p ^=  ((package->key   >> 16) );
//	p ^=  ((package->key   >> 17) );
//	p ^=  ((package->key   >> 18) );
//	p ^=  ((package->key   >> 19) );
//	p ^=  ((package->key   >> 20) );
//	p ^=  ((package->key   >> 21) );
//	p ^=  ((package->key   >> 22) );
//	p ^=  ((package->key   >> 23) );
//	p ^=  ((package->key   >> 24) );
//	p ^=  ((package->key   >> 25) );
//	p ^=  ((package->key   >> 26) );
//	p ^=  ((package->key   >> 27) );
//	p ^=  ((package->key   >> 28) );
//	p ^=  ((package->key   >> 29) );
//	p ^=  ((package->key   >> 30) );
//	p ^=  ((package->key   >> 31) );
//	if(pay)
//	{
//	p ^=  ((package->payload   >> 0) );
//	p ^=  ((package->payload   >> 1) );
//	p ^=  ((package->payload   >> 2) );
//	p ^=  ((package->payload   >> 3) );
//	p ^=  ((package->payload   >> 4) );
//	p ^=  ((package->payload   >> 5) );
//	p ^=  ((package->payload   >> 6) );
//	p ^=  ((package->payload   >> 7) );
//	p ^=  ((package->payload   >> 8) );
//	p ^=  ((package->payload   >> 9) );
//	p ^=  ((package->payload   >> 10));
//	p ^=  ((package->payload   >> 11));
//	p ^=  ((package->payload   >> 12));
//	p ^=  ((package->payload   >> 13));
//	p ^=  ((package->payload   >> 14));
//	p ^=  ((package->payload   >> 15));
//	p ^=  ((package->payload   >> 16));
//	p ^=  ((package->payload   >> 17));
//	p ^=  ((package->payload   >> 18));
//	p ^=  ((package->payload   >> 19));
//	p ^=  ((package->payload   >> 20));
//	p ^=  ((package->payload   >> 21));
//	p ^=  ((package->payload   >> 22));
//	p ^=  ((package->payload   >> 23));
//	p ^=  ((package->payload   >> 24));
//	p ^=  ((package->payload   >> 25));
//	p ^=  ((package->payload   >> 26));
//	p ^=  ((package->payload   >> 27));
//	p ^=  ((package->payload   >> 28));
//	p ^=  ((package->payload   >> 29));
//	p ^=  ((package->payload   >> 30));
//	p ^=  ((package->payload   >> 31));
//	}
//
//	p &= 0x1;
//
//	return !p;
 return 0;
}



// Buffer functions:
uint8_t	spin_link_buffer_init(void)	// Initialize a buffer
{
	// Output buffer
	spin_link_out.elements 	=	0;
	spin_link_out.first		=	0;
	spin_link_out.last		=	0;
    // Input buffer
	spin_link_out.elements 	=	0;
	spin_link_out.first		=	0;
	spin_link_out.last		=	0;

	return 1;
}


// Pushing package into a (circular) FIFO buffer
uint8_t spin_link_buffer_push(spin_link_pkg_t* package)
{
	// Copy package content into buffer:
	if(spin_link_out.elements == 0)
	{
		spin_link_out.last = spin_link_out.first;
		spin_link_out.elements = 1;
	}
	else if(spin_link_out.elements == SPIN_LINK_BUFF_SIZE)
	{
		return 0;	// Package could not be enqueued!!
	}
	else{
		spin_link_out.last =  (spin_link_out.last + 1) % SPIN_LINK_BUFF_SIZE;	//Ring buffer implementation
		spin_link_out.elements++;
		}


	// Copying data into buffer

	memcpy(&spin_link_out.buffer[spin_link_out.last], package, sizeof(spin_link_pkg_t) );	// DMA substitution possible
//	spin_link_out.buffer[spin_link_out.last].header  = package->header;
//	spin_link_out.buffer[spin_link_out.last].data    = package->data;
//	spin_link_out.buffer[spin_link_out.last].payload = package->payload;
	return 1;
}

uint8_t spin_link_buffer_pop(spin_link_pkg_t* package)
{
	// Copy package content into buffer:
	if(spin_link_out.elements == 0)
	{
		return 0;	// No more items.
	}
	else{
		//package->header  = spin_link_out.buffer[spin_link_out.first].header;
		//package->data 	 = spin_link_out.buffer[spin_link_out.first].data;
		//package->payload = spin_link_out.buffer[spin_link_out.first].payload;
		// Using memcpy to copy entire packet
		memcpy(package, &spin_link_out.buffer[spin_link_out.first],sizeof(spin_link_pkg_t) );	// DMA substitution possible

		spin_link_out.first =  (spin_link_out.first + 1) % SPIN_LINK_BUFF_SIZE;	//Ring buffer implementation
		spin_link_out.elements--;
		}



	return 1;
}


/* spin_link_package_composer(uint32_t* data, spin_link_pkg_t* package)
 *	Date:	18.6.2012
 * The SpiNNaker link package composing function
 * Arguments:
 * 	*package:	Pointer to package
 * 	*data:		Pointer to incoming data (from the spin_link_nibble_receive() function
 *
 * Returns:		0	Package composing fail
 * 				1	Composing in progress
 * 				2	Package is ready for next phase
 *
 */
uint8_t spin_link_package_composer(uint16_t* data, spin_link_pkg_t* package)
{	// Data is now  8-bit.
	// If data == EOP_BIT, then the package composer will 'terminate' the package
	static uint8_t nibble_counter = 0;
	static uint8_t eop_reset = 0;

	if(*data == EOP_BIT)
	{ 	// EoP value was received!


		//Nibbles 5 or 9 should be EoP
		// If EoP present or nibble count == 18 without EoP, terminate package with failure! Wait until next EoP for next package
		if(nibble_counter == 5 || nibble_counter == 9)	// EoP symbol is at the right place!
		{
			nibble_counter = 0;
			return 2;

			// Data should be validated (parity and payload check)


		}
		else if(eop_reset)
		{
					nibble_counter = 0;
					eop_reset = 0;
					return 0;
		}
		else{	// EoP was received at the wrong place... wait for next EoP to start building package
			nibble_counter = 0;
			eop_reset = 1;
			return 0;

		}
	}
	// Packaging
	else{
		switch(nibble_counter)
		{
		case 0	:	package->header = (uint8_t)(*data & 0xFF);
					break;
		case 1	:	package->key 	= 0;
		case 2	:
		case 3	:
		case 4	:	package->key    |=	(((uint32_t)*data & 0xFF) << (8*(nibble_counter-1)));
					break;
		case 5	:	package->payload = 0;
		case 6	:
		case 7	:
		case 8	:	package->payload |=	(((uint32_t)*data & 0xFF) << (8*(nibble_counter-5)));
					break;
		default	:	return 0;
		}

		nibble_counter++;
	}



	return 1;
}

// Takes a package and sends the nibbles
// Optimized version!!
void spin_link_packet_send(spin_link_pkg_t* package, uint32_t load)	// Nibble composer
{

	if(load == 0){
		package->payload = 0;
		package->header &= ~0x2;
	}
	else package->header |= 0x2;

	//parity =

	package->header &= ~0x1;

	// Parity Calc:
	uint32_t v;

	v = ((package->header & 0xFFFFFFFE) ^ package->key);

	if (package->header & 0x2) {		// PAYLOAD!
		v ^= package->payload;
	}
	v ^= v >> 16;
	v ^= v >> 8;
	if(!ParityTable256[v & 0xff]) 	package->header |= 0x1;
	// Parity Calc Done


		SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(package->header);
		SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		//while(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY);
		SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(package->key);
		SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(package->key >> 8);
		SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(package->key >> 16);
	SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(package->key >> 24);
		SPIN_MCU_DATA_OUT_AV->ODR ^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
	if(load){
		 SPIN_MCU_DATA_OUT->ODR	     = SPL_ODR(package->payload);
		 SPIN_MCU_DATA_OUT_AV->ODR 	^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		 SPIN_MCU_DATA_OUT->ODR	     = SPL_ODR(package->payload >> 8);
	SPIN_MCU_DATA_OUT_AV->ODR   	^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		 SPIN_MCU_DATA_OUT->ODR	     = SPL_ODR(package->payload >> 16);
		 SPIN_MCU_DATA_OUT_AV->ODR 	^= SPLO_AV;
	asm volatile ("nop");
	asm volatile ("nop");
		 SPIN_MCU_DATA_OUT->ODR	     = SPL_ODR(package->payload >> 24);
		 SPIN_MCU_DATA_OUT_AV->ODR 	^= SPLO_AV;
	//while(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY);
	asm volatile ("nop");
	asm volatile ("nop");
	}
		//SPIN_MCU_DATA_OUT->ODR	   = SPL_ODR(0);
		SPIN_MCU_DATA_OUT_EOP->ODR =  SPLO_EOP;
		SPIN_MCU_DATA_OUT_AV->ODR  ^= SPLO_AV;
	//	while(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY);
	//	SPIN_MCU_DATA_OUT_EOP->ODR = 0;
	asm("nop");

}

// NVIC Init for SpinLink:
void spin_link_init_nvic(void)
{
	NVIC_InitTypeDef	nvic_spl;
	EXTI_InitTypeDef	exti_spl;

	// Enable external interrupts
	// DAV is on
	//		PB2
	// 		Rising Edge

	// Syscfg for EXT-Mux


	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource2);
	SYSCFG_CompensationCellCmd(ENABLE);

	// Configure External Interrupt (2)
	exti_spl.EXTI_Line = 		EXTI_Line2;
	exti_spl.EXTI_LineCmd =		ENABLE;
	exti_spl.EXTI_Mode =		EXTI_Mode_Interrupt;
	exti_spl.EXTI_Trigger =		EXTI_Trigger_Rising;


	EXTI_Init(&exti_spl);


	nvic_spl.NVIC_IRQChannel = 						EXTI2_IRQn;
	nvic_spl.NVIC_IRQChannelCmd =					ENABLE;
	nvic_spl.NVIC_IRQChannelPreemptionPriority =	1;
	nvic_spl.NVIC_IRQChannelSubPriority =			0;

   	NVIC_Init(&nvic_spl);


}
