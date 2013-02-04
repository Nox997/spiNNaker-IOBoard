/*
 * irq_handlers.c
 *
 *  Created on: 29.11.2012
 *      Author: denk
 */


#include "irq_handlers.h"
#include "spin_link.h"
// Definition of external Flags: (declared in irq_handlers.h)
volatile uint32_t SPIN_RX_FLAG;


//void USART1_IRQHandler(void) {
//	// eDVS1 handler
//	USART1_IRQ_FLAG = 1;
//	USART1->SR = (uint16_t)~((uint16_t)0x01 << (uint16_t)(USART_IT_RXNE >> 0x08));
//}
//void USART3_IRQHandler(void) {
//	// USB Debug output
//	USART3_IRQ_FLAG = 1;
//	USART3->SR = (uint16_t)~((uint16_t)0x01 << (uint16_t)(USART_IT_RXNE >> 0x08));
//}
//void USART6_IRQHandler(void) {
//	// Omnibot
//	USART6_IRQ_FLAG = 1;
//	USART6->SR = (uint16_t)~((uint16_t)0x01 << (uint16_t)(USART_IT_RXNE >> 0x08));
//}

//USART 1 & 6 are FAST, not USART 3!

//void USART1_IRQHandler(void) {
//	// eDVS1 handler
//	// Set EDVS1_RX_FLAG for main loop (may be obsolete due to RingBuffer...):
//	EDVS1_RX_FLAG = 1;
//
//	// Write received data from USART into the WRITE location (copied from USART_ReceiveData)
//	EDVS1_BUFFER[EDVS1_WRITE] = (uint8_t) (USART1->DR & (uint16_t)0x01FF);
//	// Increment the Write Pointer:
//	EDVS1_WRITE++;
//	// Wrap around happens automatically (uint8_t variable!)
//
//	// Clear the IT Pending flag   (copied from USART_ClearITPendingBit)
//	// this SHOULD be obsolete... but just to be sure
//	USART1->SR = (uint16_t)~USART_FLAG_RXNE;
//	return;
//}
//
//void USART6_IRQHandler(void) {
//	// eDVS2 handler
//	// Set EDVS2_RX_FLAG for main loop (may be obsolete due to RingBuffer...):
//	EDVS2_RX_FLAG = 1;
//
//	// Write received data from USART into the WRITE location (copied from USART_ReceiveData)
//	EDVS2_BUFFER[EDVS2_WRITE] = (uint8_t) (USART6->DR & (uint16_t)0x01FF);
//	// Increment the Write Pointer:
//	EDVS2_WRITE++;
//	// Wrap around happens automatically at 256!(uint8_t variable!)
//
//	// Clear the IT Pending flag   (copied from USART_ClearITPendingBit)
//	// this SHOULD be obsolete... but just to be sure
//	USART6->SR = (uint16_t)~USART_FLAG_RXNE;
//	return;
//}
//void USART3_IRQHandler(void) {
//	// Omnibot IRQ handler
//
//	// Save the currently received character in the Robot Buffer:
//	ROBOT_BUFFER[pos] = (uint8_t) (USART3->DR & (uint16_t)0x01FF);
//
//	// If the currently received char is either a newline or the string termination symbol, set the "Robot Data Received" flag
//	// and reset the position to zero
//	if (ROBOT_BUFFER[pos] == '\n' || ROBOT_BUFFER[pos] == '\0') {
//		ROBOT_RX_FLAG = 1;
//		pos = 0;
//	}
//	else {
//		// increment the counter:
//		pos = (pos + 1) % ROBOT_BUF_SIZE;
//	}
//	return;
//}

//void EXTI2_IRQHandler(void) {
//	// Spinnaker packet arrived handler
//
//	//	uint8_t c;
//	//	uint16_t spin_data;
//	//	spin_link_pkg_t spin_link_packet;
//	//	static char str_buffer[80];
//	//	char num_buffer[80];
//		int32_t timeout = 0;
//	#define TIMEOUT 2
//
//																		// header
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.header = ((uint32_t)SPL_IDR);
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// address byte 0
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.key = ((uint32_t)SPL_IDR);
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// address byte 1
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.key |= ((uint32_t)SPL_IDR) << 8;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// address byte 2
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.key |= ((uint32_t)SPL_IDR) << 16;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// address byte 3
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.key |= ((uint32_t)SPL_IDR) << 24;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// EOP  or  payload byte 0
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP){	inputPackage.payload = 0;
//		 	 	 	 	goto package_good;	}
//		inputPackage.payload = ((uint32_t)SPL_IDR);
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// payload byte 1
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.payload |= ((uint32_t)SPL_IDR) << 8;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// payload byte 2
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.payload |= ((uint32_t)SPL_IDR) << 16;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//																		// payload byte 3
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
//		if(SPL_IEOP) goto package_corrupt;
//		inputPackage.payload |= ((uint32_t)SPL_IDR) << 24;
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		timeout = TIMEOUT; while ((SPL_IAV==0) && (timeout--)) {};
//
//
//																		// EOP  or  error
//		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;			// EOP reception
//		if(!SPL_IEOP) goto package_corrupt;
//
//	package_good:
//		SPIN_RX_FLAG = 1;
//
//		EXTI_ClearFlag(EXTI_Line2);
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//		return;
//
//
//	package_corrupt:
//		// UART debug output: show one asterisk
//		USART3->DR = '~';
//
//		EXTI_ClearFlag(EXTI_Line2);
//		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
//	    return;
//
//
//	//    strcpy(str_buffer, ":");
//	//	goto send_debug_package;
//
//
//	//  strcpy(str_buffer, "*");	  // show that package is corrupt
//	//  goto send_debug_package;
//
//	//	itoa(spin_link_packet.header, num_buffer, 16);
//	//	strcat(str_buffer, num_buffer);
//	//	strcat(str_buffer, " ");
//	//	itoa(spin_link_packet.data, num_buffer, 16);
//	//	strcat(str_buffer, num_buffer);
//	//	strcat(str_buffer, " ");
//	//	itoa(spin_link_packet.payload, num_buffer, 16);
//	//	strcat(str_buffer, num_buffer);
//	//	strcat(str_buffer, "\n");
//	//	usart_dma_transmission(str_buffer, strlen(str_buffer));
//
//	// ACK after Clearing Flag!
//	return;
//}
