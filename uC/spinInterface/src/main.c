/*
===============================================================================
 Name        : main.c
 Author      : 
 Version     :
 Copyright   : Copyright (C) 
 Description : main definition
===============================================================================
*/

#ifdef __USE_CMSIS
#include "stm32f4xx.h"
#endif

// TODO: insert other include files here
#include <string.h>
#include <stdlib.h>
#include "leds.h"
#include "usart.h"
#include "spin_link.h"
#include "omnibot.h"
#include "omnibot_rate_coding_helper.h"
#include "timer.h"

// TODO: insert other definitions and declarations here
 #define TIMEOUT 2



void sleep_some_time(uint32_t counter) {
	while(counter--) {
		asm volatile ("nop");
	}
}

int main(void) {

	sleep_some_time(200000);
	// Deinitialize "everything":
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOB);
	GPIO_DeInit(GPIOC);
	USART_DeInit(USART1);
	USART_DeInit(USART3);
	USART_DeInit(UART5);
	USART_DeInit(USART6);
	DMA_DeInit(DMA1_Stream1);
	DMA_DeInit(DMA2_Stream2);
	DMA_DeInit(DMA2_Stream1);
	EXTI_DeInit();
	TIM_DeInit(TIM5);

	// Initialize LED:
	led_init();

	// Initialize USART Ports:
	usart_init();

	// Initialize SpiNNaker Interface:
	spin_link_init();

	// Initialize Robot:
//	omnibot_init();
//	sleep_some_time(8000000);
//	led_toggle();

	// Initialize EDVS1 & 2:
//	usart1_sendString("!E0\r!E+\rE+\r");
//	usart1_sendDataFromBufferBlocking();
//	usart6_sendString("!E0\r!E+\rE+\r");
//	usart6_sendDataFromBufferBlocking();

	// Initialize ms timer:
	ms_tick_init();



	// Turn the LED on to make it obvious that the board is running:
	led_toggle();
	sleep_some_time(8000000);
	led_toggle();
	sleep_some_time(8000000);
	led_toggle();
	sleep_some_time(8000000);
	led_toggle();
	sleep_some_time(8000000);
	led_toggle();
	sleep_some_time(8000000);
	led_off();


	// USART RX POINTERS //
	int32_t USART1_BTs = 0;
	int32_t USART6_BTs = 0;
	int32_t USART3_BTs = 0;
	// This is the pointer where I am in the USART RX buffer:
	int32_t USART1_READ_POS = 0;
	int32_t USART6_READ_POS = 0;
	int32_t USART3_READ_POS = 0;
	// This is the number of bytes that are available due to the DMA_SxNDTR register - i.e. not counting a Wrap-around!
	// i.e, this is the position of the LAST write
	int32_t USART1_LWRITE_POS = 0;
	int32_t USART6_LWRITE_POS = 0;
	int32_t USART3_LWRITE_POS = 0;

	// Robot Data Handler Stuff...
	char inputChar = 0;
	char omniSensorArray[250];
	uint32_t startOfSensorString = 0;

	// SpiNNaker packets and Flag Variable
	spin_link_pkg_t outputPackage;
	outputPackage.key = 0x0;
	outputPackage.header = 0x2;
	outputPackage.payload = 0;

	spin_link_pkg_t inputPackage;
	inputPackage.key = 0x0;
	inputPackage.header = 0x0;
	inputPackage.payload = 0;

	uint32_t spinAvailFlag = 0;
	int32_t timeout = 0;


	uart5_sendString("\nMain Loop:\n");

	// Start ms timer:
	ms_tick_start();
	while(1) {
		//////////////////////////////////////////////////////////////////////////////////////////////////
		//																								//
		//		DATA RECEPTION FUNCTIONALITY STUFF, i.e. from spiNNaker and the USART					//
		//																								//
		//////////////////////////////////////////////////////////////////////////////////////////////////


		////////////////////////////////////////////////
		////  USART RX DATA POINTER ACTUALIZATION 	////
		////////////////////////////////////////////////

		// Calculate USART1_BTs
		USART1_LWRITE_POS = EDVS_BUF_SIZE - (DMA2_Stream2->NDTR & 0x0000FFFF);
		USART1_BTs = (USART1_LWRITE_POS + EDVS_BUF_SIZE - USART1_READ_POS) & (EDVS_BUF_SIZE - 1);


		// Calculate USART3_BTs:
		USART3_LWRITE_POS = ROBOT_BUF_SIZE - (DMA1_Stream1->NDTR & 0x0000FFFF);
		USART3_BTs = (USART3_LWRITE_POS + ROBOT_BUF_SIZE - USART3_READ_POS) & (ROBOT_BUF_SIZE - 1);


		// Calculate USART6_BTs
		USART6_LWRITE_POS = EDVS_BUF_SIZE - (DMA2_Stream1->NDTR & 0x0000FFFF);
		USART6_BTs = (USART6_LWRITE_POS + EDVS_BUF_SIZE - USART6_READ_POS) & (EDVS_BUF_SIZE - 1);




		///////////////////////////////////////////
		////    SpiNNaker Input Data Handling  ////
		///////////////////////////////////////////

		if (SPL_IAV) {
			inputPackage.key = 0x0;
			inputPackage.header = 0x0;
			inputPackage.payload = 0x0;

																				// header
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.header = ((uint32_t)SPL_IDR);
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// address byte 0
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.key = ((uint32_t)SPL_IDR);
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// address byte 1
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.key |= ((uint32_t)SPL_IDR) << 8;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// address byte 2
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.key |= ((uint32_t)SPL_IDR) << 16;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// address byte 3
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.key |= ((uint32_t)SPL_IDR) << 24;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// EOP  or  payload byte 0
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP){	inputPackage.payload = 0;
				 	 	 	 	goto package_good;	}
				inputPackage.payload = ((uint32_t)SPL_IDR);
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// payload byte 1
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.payload |= ((uint32_t)SPL_IDR) << 8;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// payload byte 2
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.payload |= ((uint32_t)SPL_IDR) << 16;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};

																				// payload byte 3
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
				if(SPL_IEOP) goto package_corrupt;
				inputPackage.payload |= ((uint32_t)SPL_IDR) << 24;
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};


																				// EOP  or  error
				SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;							// EOP reception
				if(!SPL_IEOP) {
					goto package_corrupt;
				}
				else {
					goto package_good;
				}

			package_corrupt:
					// UART debug output: show one C
				uart5_sendString("\nBAD SPIN PACKAGE!\n");
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				goto end;

			package_good:
				SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
				spinAvailFlag = 1;

			end:
			;

		}

		///////////////////////////////////////////
		////   SpiNNaker Packet handling 	   ////
		///////////////////////////////////////////

		if (spinAvailFlag) {
			spinAvailFlag = 0;
			//Check if package is an MC packet:
			if ((inputPackage.header & SPL_PCKG_TYPE) == MC_PACKAGE) {
				//CD: Check this (payload!)
				if (!(inputPackage.header & SPL_PAYLOAD)) { //NO PAYLOAD! -- RATE ENCODING!
					//Reset Timeout for Motor Commands:
					timeout_var = TIMEOUT_MS;
					//CD: Motor command rate encoding
					if (inputPackage.key == MGMT_ARRAY[MOTION_FORWARD]) {
						x_accumulator++;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_BACK]) {
						x_accumulator--;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_LEFT]) {
						y_accumulator++;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_RIGHT]) {
						y_accumulator--;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_CLOCKWISE]) {
						t_accumulator++;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_C_CLKWISE]) {
						t_accumulator--;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
				}
				else if(!(inputPackage.key & MGMT_BIT)) {	//PAYLOAD, BUT NO MGMT PACKET!
					//Reset Timeout for Motor Commands:
					//CD: THINK! THIS IS NON-OPTIMAL


					//CD: Motor command value encoding...
					if (inputPackage.key == MGMT_ARRAY[MOTION_FORWARD]) {
						x_payload_speed = inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_BACK]) {
						x_payload_speed = -inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_LEFT]) {
						y_payload_speed = inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_RIGHT]) {
						y_payload_speed = -inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_CLOCKWISE]) {
						t_payload_speed = inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
					else if (inputPackage.key == MGMT_ARRAY[MOTION_C_CLKWISE]) {
						t_payload_speed = -inputPackage.payload;
						//Reset Timeout for Motor Commands:
						timeout_var = TIMEOUT_MS;
					}
				}
				else { //PAYLOAD + MGMT_BIT ARE SET, MANAGE NEURON KEYS:
					manage_neurons(inputPackage.key, inputPackage.payload);
				}
			}
		}

		//////////////////////////////////////////////////////////////////////////////////////////////////
		///////////   Modality specific stuff (edvs data processing etc.)   //////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////

		///////////////////////////////////////////
		////   USART1 RX DATA HANDLING - EDVS1 ////
		///////////////////////////////////////////

		if(USART1_BTs >= 2) {
			// if EDVS1_BUFFER[READ_POS] is true first byte
				// --> MakePkg using EDVS1_BUFFER[READ_POS], EDVS1_BUFFER[READ_POS++]
				// --> Decrease EDVS1_BTs by 2
				// Increase READ_POS by 1 incl. Wrap Around
			if (USART1_RX_BUFFER[USART1_READ_POS] & 0x80) {
				// This byte is cannot a FIRST byte
				// Skip to next byte:
				USART1_READ_POS++;
				USART1_READ_POS &= (EDVS_BUF_SIZE - 1);
				uart5_sendString("\nEDVS1 Data Hickup!\n");
			}
			else {
				// If we are here, this *could* be a correnct y byte!
				// So, we are now assembling a spinnaker packet

				// TODO: Assembling  spinnaker package:
				outputPackage.key = 0x0;
				outputPackage.key = USART1_RX_BUFFER[USART1_READ_POS] << 8;
				USART1_READ_POS++;
				USART1_READ_POS &= (EDVS_BUF_SIZE - 1);
				outputPackage.key |= USART1_RX_BUFFER[USART1_READ_POS];
				spin_link_packet_send(&outputPackage,0);
				// Assembling done!
				USART1_READ_POS++;
				USART1_READ_POS &= (EDVS_BUF_SIZE - 1);
			}
		}


		/////////////////////////////////////////////
		////  USART3 RX DATA HANDLING - Omnibot  ////
		/////////////////////////////////////////////

		if (USART3_BTs > 0) {
			inputChar = USART3_RX_BUFFER[USART3_READ_POS];
			if (inputChar == '\n') {
				// Process String...
				int i = 0;
				while (startOfSensorString != USART3_READ_POS) {
					omniSensorArray[i++] = USART3_RX_BUFFER[startOfSensorString++];
					startOfSensorString &= (ROBOT_BUF_SIZE - 1);
				}
				omniSensorArray[i] = '\0';
				startOfSensorString = (startOfSensorString + 1) & (ROBOT_BUF_SIZE - 1);
				omnibot_sensor_data_handler(omniSensorArray, i);
			}
			USART3_READ_POS++;
			USART3_READ_POS &= (ROBOT_BUF_SIZE - 1);
		}


		////////////////////////////////////////////
		////   USART6 RX DATA HANDLING - EDVS2  ////
		////////////////////////////////////////////

		if(USART6_BTs >= 2) {
			// if EDVS1_BUFFER[READ_POS] is true first byte
				// --> MakePkg using EDVS1_BUFFER[READ_POS], EDVS1_BUFFER[READ_POS++]
				// --> Decrease EDVS1_BTs by 2
				// Increase READ_POS by 1 incl. Wrap Around
			if (USART6_RX_BUFFER[USART6_READ_POS] & 0x80) {
				// This byte is cannot be a FIRST byte
				// Skip to next byte:
				USART6_READ_POS++;
				USART6_READ_POS &= (EDVS_BUF_SIZE - 1);
				uart5_sendString("\nEDVS1 Data Hickup!\n");
			}
			else {
				// If we are here, this *could* be a correnct y byte!
				// So, we are now assembling a spinnaker packet

				// Assembling spinnaker package:
				outputPackage.key = USART6_RX_BUFFER[USART6_READ_POS] << 8;
				USART6_READ_POS++;
				USART6_READ_POS &= (EDVS_BUF_SIZE - 1);
				outputPackage.key |= USART6_RX_BUFFER[USART6_READ_POS];
				//Set the 16th bit to make clear that this is Retina #2
				outputPackage.key |= 0x10000;
				spin_link_packet_send(&outputPackage,0);
				// Assembling done!
				USART6_READ_POS++;
				USART6_READ_POS &= (EDVS_BUF_SIZE - 1);
			}
		}


		//////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////

		//////////////////////////////////////////////////////////////////////////////////////////////////
		//																								//
		//				DATA TRANSMISSION FUNCTIONALITY, i.e. sending spikes, USART TX etc.				//
		//																								//
		//////////////////////////////////////////////////////////////////////////////////////////////////

		//CD: Timer gets executed every 0.5ms (i.e. ms/2 timer, not ms timer!)
		if (TIM5->CNT > 1000){
			TIM5->CNT = 0;
			led_toggle();
			uart5_sendString("tick...     ");
//			uart5_sendString("Tick...\n");
//
//			//Motor Timeout
//			timeout_var--;
//			//Check for Timeout to set Motor commands to 0:
//			if (timeout_var <= 0) {
//				x_payload_speed = 0;
//				y_payload_speed = 0;
//				t_payload_speed = 0;
//				timeout_var = -1;
//			}
//			//Motor Timeout END
//
//			//Send commands to Robot, decay speeds etc.
//			omnibot_command_cycle();
//
//			if(MGMT_ARRAY[RATE_CODING_SENSORS_ENABLE]) {
//				//Rate Encode sensor data
//				rate_coding();
//			}
//			else{
//				value_coding(&outputPackage);
//			}
		}
		// Send Data to USART if available & USARTs are free!
		usart_sendDataFromBuffers();
	}
	return 0 ;
}
