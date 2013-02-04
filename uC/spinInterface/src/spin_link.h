/*
 * spin_link.h
 *
 *  Created on: Jul 30, 2012
 *      Author: francisco
 */

//////////////////////////////////////////////////////
// TODO: CLEAN UP!
//////////////////////////////////////////////////////

#ifndef SPIN_LINK_H_
#define SPIN_LINK_H_


// Hardware stuff
#include "stm32f4xx.h"
#include "stm32f4xx_gpio.h"		// General purpose stuff
#include "stm32f4xx_rcc.h"
#include <string.h>

#define SPIN_LINK_BUFF_SIZE	127
// Hardware specific defines!	*****************************
// Adjust depending on I/O configuration on STM32F4 Plattform
// Requires the stm32f4xx headers AND the SdtPeripheral lib

#define SPIN_MCU_DATA_IN								GPIOA
#define SPIN_MCU_DATA_IN_AV								GPIOB
#define SPIN_MCU_DATA_IN_EOP							GPIOB
#define SPIN_MCU_DATA_IN_ACK							GPIOB

#define RCC_SPIN_MCU_DATA_IN_1			 RCC_AHB1Periph_GPIOA
#define RCC_SPIN_MCU_DATA_IN_2			 RCC_AHB1Periph_GPIOB

#define SPIN_MCU_DATA_OUT								GPIOC
#define SPIN_MCU_DATA_OUT_AV							GPIOH
#define SPIN_MCU_DATA_OUT_EOP							GPIOC
#define SPIN_MCU_DATA_OUT_BSY							GPIOH

#define RCC_SPIN_MCU_DATA_OUT_1			 RCC_AHB1Periph_GPIOC
#define RCC_SPIN_MCU_DATA_OUT_2			 RCC_AHB1Periph_GPIOH


#define	SPLI0		GPIO_Pin_0	// MicroC Input Line 0
#define	SPLI1		GPIO_Pin_1	// MicroC Input Line 1
#define	SPLI2		GPIO_Pin_2
#define	SPLI3		GPIO_Pin_3
#define	SPLI4		GPIO_Pin_4
#define	SPLI5		GPIO_Pin_5
#define	SPLI6		GPIO_Pin_6
#define	SPLI7		GPIO_Pin_7	//
#define SPLI8		GPIO_Pin_0
#define SPLI_EOP	SPLI8
#define SPLI_AV		GPIO_Pin_2
#define SPLI_ACK	GPIO_Pin_1



#define	SPLO0		GPIO_Pin_0	// MicroC Input Line 0
#define	SPLO1		GPIO_Pin_1	// MicroC Input Line 1
#define	SPLO2		GPIO_Pin_2
#define	SPLO3		GPIO_Pin_3
#define	SPLO4		GPIO_Pin_4
#define	SPLO5		GPIO_Pin_5
#define	SPLO6		GPIO_Pin_13
#define	SPLO7		GPIO_Pin_14	//
#define SPLO8		GPIO_Pin_15 // EoP signal
#define SPLO_EOP	SPLO8
#define SPLO_AV 	GPIO_Pin_1
#define SPLO_BSY	GPIO_Pin_0

#define SPLI_MASK	(SPLI0 | SPLI1 | SPLI2 |SPLI3 | SPLI4 | SPLI5 | SPLI6 | SPLI7)
#define SPLO_MASK	(SPLO0 | SPLO1 | SPLO2 |SPLO3 | SPLO4 | SPLO5 | SPLO6 | SPLO7)

#define EOP_BIT		(uint16_t)(1<<8) // 0x100
#define NO_DATA_BIT (uint16_t)(1<<9) // Data Bit

// Bitmasks for header
// Header stuff
#define SPL_PARITY		(uint8_t)(0x01)
#define SPL_PAYLOAD		(uint8_t)(0x02)
#define SPL_PCKG_TYPE	(uint8_t)(0xC0)

//Define package types:
#define MC_PACKAGE 		(uint8_t)(0x0)



// Packet definition
typedef struct spin_link_pkg	// SpiNNaker link packet type
		{
		uint8_t		header;
		uint32_t	key;
		uint32_t	payload;
		} spin_link_pkg_t;

typedef struct spin_link_buff
		{
		uint8_t		first;
		uint8_t		last;
		uint8_t		elements;
		struct spin_link_pkg	buffer[SPIN_LINK_BUFF_SIZE];
		}	spin_link_buff_t;

		// Global variables
		extern spin_link_buff_t	spin_link_out;
		extern spin_link_buff_t	spin_link_in;


// Functions
void spin_link_in_init(void);
void spin_link_out_init(void);
void spin_link_init(void);
void spin_link_send(uint8_t data);	// Send 8-bit data
void spin_link_send_eop(void);		// Send eop Signal
uint16_t spin_link_receive(void);

// Buffer stuff
uint8_t	spin_link_buffer_init(void);	// Initialize a buffer
uint8_t spin_link_buffer_push(spin_link_pkg_t* package);	// Push a package into (outbound) buffer
uint8_t spin_link_buffer_pop(spin_link_pkg_t* package); // Pop a package from (outbound) buffer
uint8_t spin_link_package_composer(uint16_t* data, spin_link_pkg_t* package);
void spin_link_packet_send(spin_link_pkg_t* package, uint32_t load);	// Nibble composer

void spin_link_init_nvic(void);

// Fun macros:
// PARAMETRIZED FUN!!!
#define SPL_ODR(data)	(((data) & 0x3F) | (((data) & 0xC0) << 7))
#define SPL_OBSY		(SPIN_MCU_DATA_OUT_BSY->IDR & SPLO_BSY)
#define SPL_IDR			(SPIN_MCU_DATA_IN->IDR & 0xFF)
#define SPL_IEOP		(SPIN_MCU_DATA_IN_EOP->IDR & SPLI_EOP)
#define SPL_IAV			(SPIN_MCU_DATA_IN_AV->IDR & SPLI_AV)
#define SPL_IACK		(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)

#endif /* SPIN_LINK_H_ */
