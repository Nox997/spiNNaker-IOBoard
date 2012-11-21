/*
 * usart.h
 *
 *  Created on: May 25, 2012
 *      Author: jt
 */

#ifndef USART_H_
#define USART_H_

#include "stm32f4xx_usart.h"	// Including driver file
#include "stm32f4xx_gpio.h"		// General purpose stuff
#include "stm32f4xx_rcc.h"

/* Serial Port parameter */
#define USART_USB		USART3 // USART6
#define USART_EDVS		USART1
#define USART_ROBOT		USART6 // USART3

#define USART_USB_BAUD	 2000000		// Baudrate definition for USB communications
#define USART_EDVS_BAUD	 4000000		// Baudrate definition for eDVS communications
#define USART_ROBOT_BAUD 4000000		// Baudrate definition for Robot communications

USART_InitTypeDef	usart_com_usb;	// USART Init def struct for USB communications
USART_InitTypeDef	usart_com_edvs;	// USART Init def struct for eDVS communications
USART_InitTypeDef	usart_com_robot;// USART Init def struct for Robot communications

GPIO_InitTypeDef	GPIO_com_usb;		// GPIO settings GPIO usart
GPIO_InitTypeDef	GPIO_com_edvs;	// GPIO settings for eDVS comm	(GPIO-A)
GPIO_InitTypeDef	GPIO_com_robot;	// GPIO settings for Robot comm (GPIO-B)

void usart_init_configuration(void);
void usart_gpio_init_configuration(void);
void usart_init_ports(void);




#endif /* USART_H_ */
