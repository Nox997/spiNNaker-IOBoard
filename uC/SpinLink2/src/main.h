/*
 * main.h
 *
 *  Created on: Aug 13, 2012
 *      Author: jt
 */

#ifndef MAIN_H_
#define MAIN_H_
#include <stdlib.h>				// The C-Standard library (Redlib version)
#include <string.h>				// C string manipulation library
#include "stm32f4xx.h"			// Main Peripherals definitions
#include "stm32f4xx_rcc.h"
#include "system_stm32f4xx.h"	// System init
#include "usart.h"				// USART Port definitions
#include "interrupts.h"			// Interrupt configuration and initialization
#include "dma.h"				// DMA configuration
//#include "spinnaker_comm.h"		// SpiNNaker communications port
#include "leds.h"
#include "spin_link_ll.h"
#include "spin_link.h"
#include "timer.h"
#include "omnibot.h" 					//Omnibot Sensor Parsing
#include "omnibot_rate_coding_helper.h" //Omnibot rate coder helping function

#endif /* MAIN_H_ */
