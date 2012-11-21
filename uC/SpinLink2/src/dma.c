/*
 * dma.c
 *
 *  Created on: May 31, 2012
 *      Author: jt
 */

#include "dma.h"


/*
 * TODO:
 * Implement a DMA Transmission mechanism for USART6-TX
 *
 * USB-TX:  USART6 DMA2 Ch5.6
 * EDVS-TX: USART1 DMA2 Ch4.7
 * ROBO-TX: USART3 DMA1 Ch4.3
 *
 *
 */


void usart_dma_init(void)	// Usart dma initialization structures
{

	DMA_StructInit(&usart_dma_usb); // Use default struct as template
	DMA_StructInit(&usart_dma_edvs); // Use default struct as template
	DMA_StructInit(&usart_dma_robot); // Use default struct as template

	DMA_StructInit(&usart_dma_edvs_buffer);

	usart_dma_robot.DMA_Channel = DMA_Channel_5;
	//usart_dma_usb.DMA_BufferSize = 1;
	usart_dma_robot.DMA_DIR = DMA_DIR_MemoryToPeripheral;
	usart_dma_robot.DMA_Mode = DMA_Mode_Normal ;
	usart_dma_robot.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	usart_dma_robot.DMA_MemoryInc = DMA_MemoryInc_Enable;
	usart_dma_robot.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	usart_dma_robot.DMA_PeripheralBaseAddr = (uint32_t)&(USART6->DR); // Don't know why it works, but it does
	usart_dma_robot.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	usart_dma_robot.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
	usart_dma_robot.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	usart_dma_robot.DMA_Priority = DMA_Priority_High;
	usart_dma_robot.DMA_FIFOMode = DMA_FIFOMode_Disable;
	usart_dma_robot.DMA_FIFOThreshold = DMA_FIFOThreshold_HalfFull;

	usart_dma_edvs.DMA_Channel = DMA_Channel_4;
	//usart_dma_usb.DMA_BufferSize = 1;
	usart_dma_edvs.DMA_DIR = DMA_DIR_MemoryToPeripheral;
	usart_dma_edvs.DMA_Mode = DMA_Mode_Normal ;
	usart_dma_edvs.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	usart_dma_edvs.DMA_MemoryInc = DMA_MemoryInc_Enable;
	usart_dma_edvs.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	usart_dma_edvs.DMA_PeripheralBaseAddr = (uint32_t)&(USART1->DR); // Don't know why it works, but it does
	usart_dma_edvs.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	usart_dma_edvs.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
	usart_dma_edvs.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	usart_dma_edvs.DMA_Priority = DMA_Priority_High;
	usart_dma_edvs.DMA_FIFOMode = DMA_FIFOMode_Disable;
	usart_dma_edvs.DMA_FIFOThreshold = DMA_FIFOThreshold_HalfFull;

	usart_dma_usb.DMA_Channel = DMA_Channel_4;
	//usart_dma_usb.DMA_BufferSize = 1;
	usart_dma_usb.DMA_DIR = DMA_DIR_MemoryToPeripheral;
	usart_dma_usb.DMA_Mode 					= DMA_Mode_Normal ;
	usart_dma_usb.DMA_MemoryDataSize 			= DMA_MemoryDataSize_Byte;
	usart_dma_usb.DMA_MemoryInc 				= DMA_MemoryInc_Enable;
	usart_dma_usb.DMA_PeripheralDataSize 		= DMA_PeripheralDataSize_Byte;
	usart_dma_usb.DMA_PeripheralBaseAddr 		= (uint32_t)&(USART3->DR); //(uint32_t)&(USART3->DR); // Don't know why it works, but it does
	usart_dma_usb.DMA_MemoryBurst 			= DMA_MemoryBurst_Single;
	usart_dma_usb.DMA_PeripheralBurst			= DMA_PeripheralBurst_Single;
	usart_dma_usb.DMA_PeripheralInc 			= DMA_PeripheralInc_Disable;
	usart_dma_usb.DMA_Priority 				= DMA_Priority_High;
	usart_dma_usb.DMA_FIFOMode 				= DMA_FIFOMode_Disable;
	usart_dma_usb.DMA_FIFOThreshold 			= DMA_FIFOThreshold_HalfFull;

	// Doublebuffer RX for eDVS data
	usart_dma_edvs_buffer.DMA_Channel = DMA_Channel_4;
	usart_dma_edvs_buffer.DMA_PeripheralBaseAddr = (uint32_t)&(USART1->DR); /*!< Specifies the peripheral base address for DMAy Streamx. */
	usart_dma_edvs_buffer.DMA_Memory0BaseAddr	 = (uint32_t)edvs_buffer0;
	usart_dma_edvs_buffer.DMA_DIR 				 = DMA_DIR_PeripheralToMemory;
	usart_dma_edvs_buffer.DMA_BufferSize		 = EDVS_BUFFER_SIZE;//*sizeof(char);
	usart_dma_edvs_buffer.DMA_PeripheralInc		 = DMA_PeripheralInc_Disable;
	usart_dma_edvs_buffer.DMA_MemoryInc			 = DMA_MemoryInc_Enable;	//! Rev
	usart_dma_edvs_buffer.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	usart_dma_edvs_buffer.DMA_MemoryDataSize 	 = DMA_MemoryDataSize_Byte;
	usart_dma_edvs_buffer.DMA_Mode				 = DMA_Mode_Circular; //(!Necesary to enable double_buffer mode!)
	usart_dma_edvs_buffer.DMA_Priority 			 = DMA_Priority_VeryHigh;
	usart_dma_edvs_buffer.DMA_FIFOMode 			 = DMA_FIFOMode_Enable; // TEST!
	usart_dma_edvs_buffer.DMA_FIFOThreshold 	 = DMA_FIFOThreshold_HalfFull;
	usart_dma_edvs_buffer.DMA_MemoryBurst 		 = DMA_MemoryBurst_Single;
	usart_dma_edvs_buffer.DMA_PeripheralBurst	 = DMA_PeripheralBurst_Single;


// DMA Peripheral buffering initializing!
	DMA_DeInit(DMA2_Stream2);	// USART1_Rx : Ch.4.2



	// DoubleBufferMode Config and Commands must be called before calling the initialization function
	DMA_DoubleBufferModeConfig(DMA2_Stream2, (uint32_t)edvs_buffer1, (uint32_t)edvs_buffer0);
	DMA_DoubleBufferModeCmd(DMA2_Stream2, ENABLE);
	DMA_Init(DMA2_Stream2, &usart_dma_edvs_buffer);

	DMA_ITConfig(DMA2_Stream2, DMA_IT_TC, ENABLE);	// Enable DMA interrupts!

	DMA_ITConfig(DMA2_Stream2, DMA_IT_HT,  DISABLE);
	DMA_ITConfig(DMA2_Stream2, DMA_IT_TE,  DISABLE);
	DMA_ITConfig(DMA2_Stream2, DMA_IT_DME, DISABLE);
	DMA_ITConfig(DMA2_Stream2, DMA_IT_FE,  DISABLE);



	nvic_usart_dma.NVIC_IRQChannel 					 = 	DMA2_Stream2_IRQn;
	nvic_usart_dma.NVIC_IRQChannelCmd				 =	ENABLE;
	nvic_usart_dma.NVIC_IRQChannelPreemptionPriority =	2;
	nvic_usart_dma.NVIC_IRQChannelSubPriority =			4;

	NVIC_Init(&nvic_usart_dma);	// Init for DMA Strem2

//	DMA_FlowControllerConfig(DMA2_Stream2, DMA_FlowCtrl_Peripheral);
	DMA_Cmd(DMA2_Stream2, ENABLE);

	USART_DMACmd(USART_EDVS, USART_DMAReq_Rx, ENABLE);





}

void usart_dma_transmission(char* buffer, uint32_t buff_size)
{
	// DMA2_Stream6_BASE

	if(DMA_GetCmdStatus(USB_DMA_STREAM_TX) == ENABLE ) return;

	DMA_DeInit(USB_DMA_STREAM_TX);
	//DMA_FlowControllerConfig(DMA2_Stream6, DMA_FlowCtrl_Peripheral);
	usart_dma_usb.DMA_BufferSize = buff_size;
	usart_dma_usb.DMA_Memory0BaseAddr = (uint32_t)buffer;


	DMA_Init(USB_DMA_STREAM_TX, &usart_dma_usb);

	DMA_Cmd(USB_DMA_STREAM_TX, ENABLE);

	USART_DMACmd(USART_USB, USART_DMAReq_Tx, ENABLE);


}

void robot_dma_transmission(char* buffer, uint32_t buff_size)
{
	// DMA2_Stream6_BASE

	if(DMA_GetCmdStatus(ROB_DMA_STREAM_TX) == ENABLE ) return;

	DMA_DeInit(ROB_DMA_STREAM_TX);

	usart_dma_robot.DMA_BufferSize = buff_size;
	usart_dma_robot.DMA_Memory0BaseAddr = (uint32_t)buffer;

	DMA_Init(ROB_DMA_STREAM_TX, &usart_dma_robot);

	DMA_Cmd(ROB_DMA_STREAM_TX, ENABLE);

	USART_DMACmd(USART_ROBOT, USART_DMAReq_Tx, ENABLE);

}

void edvs_dma_transmission(char* buffer, uint32_t buff_size)
{
	// DMA2_Stream6_BASE

	if(DMA_GetCmdStatus(DMA2_Stream7) == ENABLE ) return;

	DMA_DeInit(DMA2_Stream7);

	usart_dma_edvs.DMA_BufferSize = buff_size;
	usart_dma_edvs.DMA_Memory0BaseAddr = (uint32_t)buffer;

	DMA_Init(DMA2_Stream7, &usart_dma_edvs);

	DMA_Cmd(DMA2_Stream7, ENABLE);

	USART_DMACmd(USART_EDVS, USART_DMAReq_Tx, ENABLE);

}
