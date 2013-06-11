/*
 * interrupts.h
 *
 *  Created on: May 29, 2012
 *      Author: jt
 */

#ifndef INTERRUPTS_H_
#define INTERRUPTS_H_

//#include "misc.h"	// Including driver file
//#include "main.h"	// This requires access to all kinds of stuff
//#include "spinnaker_comm.h"
#include "spin_link_ll.h"
#include "spin_link.h"
#include <stdio.h>
#include <stdlib.h>
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_dma.h"
#include "stm32f4xx_exti.h"
#include "stm32f4xx_syscfg.h"
//#include "stm32f4xx.h"
#include "usart.h"
#include "leds.h"
#include "dma.h"
#include "omnibot.h"

#define USB_IRQhandler		USART3_IRQHandler
#define EDVS_IRQhandler		USART1_IRQHandler
#define ROBOT_IRQhandler	USART6_IRQHandler
#define SPL_DAV_IRQHandler  EXTI2_IRQHandler
#define EDVS_DMA_IRQHandler DMA2_Stream2_IRQHandler

NVIC_InitTypeDef	nvic_com_usb;	// NVIC initializations structure
NVIC_InitTypeDef	nvic_com_edvs;	// NVIC initializations structure
NVIC_InitTypeDef	nvic_com_robot;	// NVIC initializations structure
NVIC_InitTypeDef	nvic_spl;

EXTI_InitTypeDef	exti_spl;





extern uint8_t PACKET_AV;
//extern spin_link_pkg_t spin_link_packet;

void usart_init_nvic(void);
void spin_link_init_nvic(void);

void USB_IRQhandler(void);
void EDVS_IRQhandler(void);
void ROBOT_IRQhandler(void);
void SPL_DAV_IRQHandler(void);
void EDVS_DMA_IRQHandler(void);

#endif /* INTERRUPTS_H_ */
