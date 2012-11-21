/*
 * usart.c
 *
 *  Created on: May 25, 2012
 *      Author: Francisco Llobet
 */

// This program uses the StdPeriphLib_v100 for the STM32F4xx

#include "usart.h"		// Local Usart definition


// Includes


// Function: usart_init_configuration()
// Author:	 Francisco Llobet
// Use:		 Initializes configuration settings for USART communication ports.
void usart_init_configuration(void)
{
	//Setting configuration settings (!!)

	// Usart USB communication settings:
	usart_com_usb.USART_BaudRate = USART_USB_BAUD;
	usart_com_usb.USART_WordLength = USART_WordLength_8b;
	usart_com_usb.USART_StopBits = USART_StopBits_1;
	usart_com_usb.USART_Parity = USART_Parity_No ;
	usart_com_usb.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	usart_com_usb.USART_HardwareFlowControl = USART_HardwareFlowControl_RTS_CTS;

	//USART eDVS communication settings:
	usart_com_edvs.USART_BaudRate = USART_EDVS_BAUD;
	usart_com_edvs.USART_WordLength = USART_WordLength_8b;
	usart_com_edvs.USART_StopBits = USART_StopBits_1;
	usart_com_edvs.USART_Parity = USART_Parity_No ;
	usart_com_edvs.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	usart_com_edvs.USART_HardwareFlowControl = USART_HardwareFlowControl_RTS_CTS;

	//ROBOT communication settings:
	usart_com_robot.USART_BaudRate = USART_ROBOT_BAUD;
	usart_com_robot.USART_WordLength = USART_WordLength_8b;
	usart_com_robot.USART_StopBits = USART_StopBits_1;
	usart_com_robot.USART_Parity = USART_Parity_No ;
	usart_com_robot.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	usart_com_robot.USART_HardwareFlowControl = USART_HardwareFlowControl_RTS_CTS;

}

// Function: usart_gpio_init_configuration()
// Author:	 Francisco Llobet
// Use:		 Initializes GPIO-specific configuration settings for USART communication ports.
void usart_gpio_init_configuration(void)
{
	// Initializing USART communication configuration
	GPIO_com_usb.GPIO_Pin		= 	(GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_13 | GPIO_Pin_14);
	GPIO_com_usb.GPIO_Mode		= GPIO_Mode_AF;			// Using Alternate function
	GPIO_com_usb.GPIO_OType		= GPIO_OType_PP;		// Push-Pull
	GPIO_com_usb.GPIO_PuPd		= GPIO_PuPd_UP;			// Pull-up
	GPIO_com_usb.GPIO_Speed		= GPIO_Speed_50MHz;	// High speed ? Necessary ??

	GPIO_com_edvs.GPIO_Pin		= (GPIO_Pin_9 | GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12);
	GPIO_com_edvs.GPIO_Mode		= GPIO_Mode_AF;			// Using Alternate function
	GPIO_com_edvs.GPIO_OType	= GPIO_OType_PP;		// Push-Pull
	GPIO_com_edvs.GPIO_PuPd		= GPIO_PuPd_UP;			// Pull-up
	GPIO_com_edvs.GPIO_Speed	= GPIO_Speed_50MHz;	// High speed ? Necessary ??

	GPIO_com_robot.GPIO_Pin		= (GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9);
	GPIO_com_robot.GPIO_Mode	= GPIO_Mode_AF;			// Using Alternate function
	GPIO_com_robot.GPIO_OType	= GPIO_OType_PP;		// Push-Pull
	GPIO_com_robot.GPIO_PuPd	= GPIO_PuPd_UP;			// Pull-up
	GPIO_com_robot.GPIO_Speed	= GPIO_Speed_50MHz;		// High speed ? Necessary ??

}



// usart_init_ports(void)
// Author Francisco Llobet
// Use:		Initializes ports using available configuration
void usart_init_ports(void)
{
	// Setup:
	// 1- Load configuration settings.
	// 2- Enable RCC peripheral clock.
	// 3- Enable GPIO clocks via RCC_AHB1PeriphClockCmd()
	// 4- Initialize alternate GPIO functions
	// 5- Run USART_Init();
	// 6- Run USART_ClockInit(); for synchronous mode
	// 7- Run USART_ITConfig(); for interrupt config
	// 8- DMA_Init() for DMA init and USART_DMACmd() for channel request
	// 9- Enable USART with USART_Cmd();
	// 10- Enable DMA using DMA_Cmd();

	// Step 1
	usart_init_configuration();			// Loading usart configuration
	usart_gpio_init_configuration();	// Loading gpio configuration

	// Step 2
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);	// Enabling clock for eDVS
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART6, ENABLE);  // Enabling clock for Robot
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);  // Enabling clock for USB

	// Step 3:
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);

	// DMA init
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA2, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1, ENABLE);

	// Step 4
	GPIO_Init(GPIOC,	&GPIO_com_robot);						// Robot, USART6
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource6,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource7,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource8,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource9,	GPIO_AF_USART6);

	GPIO_Init(GPIOA,	&GPIO_com_edvs);						// eDVS, USART1
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource10,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource11,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource12,	GPIO_AF_USART1);

	GPIO_Init(GPIOB,	&GPIO_com_usb);						// USB, USART3
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource10,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource11,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource13,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource14,	GPIO_AF_USART3);

	USART_OverSampling8Cmd(USART_ROBOT, ENABLE); // Enabling lower oversampling
	USART_OverSampling8Cmd(USART_EDVS, ENABLE); // Enabling lower oversampling
	USART_OverSampling8Cmd(USART_USB, ENABLE); // Enabling lower oversampling

	// Step 5
	USART_Init(USART_USB,  &usart_com_usb);					// USB
	USART_Init(USART_EDVS, &usart_com_edvs);				// eDVS
	USART_Init(USART_ROBOT,&usart_com_robot);				// Robot

	// Step 9	START!
	USART_Cmd(USART_USB, ENABLE);							// USB
	USART_Cmd(USART_EDVS, ENABLE);							// eDVS
	USART_Cmd(USART_ROBOT, ENABLE);							// Robot

	// Configuring interrupt setting

	USART_ITConfig(USART_USB,   USART_IT_RXNE, ENABLE);	// Enabling receive Interrupt for USART_USB
	USART_ITConfig(USART_EDVS,  USART_IT_RXNE, ENABLE);	// Enabling receive Interrupt for USART_EDVS
	USART_ITConfig(USART_ROBOT, USART_IT_RXNE, ENABLE);	// Enabling receive Interrupt for USART_ROBOT
}



