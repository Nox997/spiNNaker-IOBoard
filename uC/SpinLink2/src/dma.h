/*
 * dma.h
 *
 *  Created on: May 31, 2012
 *      Author: jt
 */

#ifndef DMA_H_
#define DMA_H_

#include "stm32f4xx_dma.h"	// DMA controller driver for STM32
#include "main.h"	// This requires access to all kinds of stuff
#define  EDVS_BUFFER_SIZE 32// Size in bytes!
#define USB_DMA_STREAM_TX  DMA1_Stream3
#define USB_DMA_STREAM_RX  DMA1_Stream1
#define EDVS_DMA_STREAM_TX DMA2_Stream7
#define EDVS_DMA_STREAM_RX DMA2_Stream2
#define ROB_DMA_STREAM_TX  DMA2_Stream6
#define ROB_DMA_STREAM_RX  DMA2_Stream1



DMA_InitTypeDef usart_dma_usb;
DMA_InitTypeDef usart_dma_edvs;
DMA_InitTypeDef usart_dma_robot;
//DMA_Stream_TypeDef	usart_dma_usb_stream;

void usart_dma_init(void);
void usart_dma_transmission(char* buffer, uint32_t buff_size); // DMA based data transfer to USB interface
void edvs_dma_transmission(char* buffer, uint32_t buff_size);  // DMA based data transfer to EDVS interface
void robot_dma_transmission(char* buffer, uint32_t buff_size); // DMA based data transfer to ROBOT interface

// DMA based peripheral buffer
DMA_InitTypeDef		usart_dma_edvs_buffer;
NVIC_InitTypeDef	nvic_usart_dma;
char edvs_buffer0[EDVS_BUFFER_SIZE];	// First Character buffer for edvs
char edvs_buffer1[EDVS_BUFFER_SIZE];	// Second Character buffer for edvs

#endif /* DMA_H_ */
