/*
 * usart.c
 *
 *  Created on: 28.11.2012
 *      Author: denk
 */


#include "usart.h"

#include "stm32f4xx_usart.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_dma.h"


// Output Buffers for USART Transmission:
uint8_t USART1_TX_BUFFER[USART_OUTPUT_BUF_SIZE];
uint32_t USART1_TX_READ = 0;
uint32_t USART1_TX_WRITE = 0;

uint8_t USART3_TX_BUFFER[USART_OUTPUT_BUF_SIZE];
uint32_t USART3_TX_READ = 0;
uint32_t USART3_TX_WRITE = 0;

uint8_t UART5_TX_BUFFER[USART_OUTPUT_BUF_SIZE];
uint32_t UART5_TX_READ = 0;
uint32_t UART5_TX_WRITE = 0;

uint8_t USART6_TX_BUFFER[USART_OUTPUT_BUF_SIZE];
uint32_t USART6_TX_READ = 0;
uint32_t USART6_TX_WRITE = 0;




// Input Buffers for USART DMA Reception:
// Initialize the Circular Buffers for EDVS sensors:
volatile uint8_t 	USART1_RX_BUFFER[EDVS_BUF_SIZE];
volatile uint8_t 	USART6_RX_BUFFER[EDVS_BUF_SIZE];

// Initialize the Buffer for the Robot:
volatile uint8_t	USART3_RX_BUFFER[ROBOT_BUF_SIZE];
volatile uint32_t 	pos = 0;

int32_t usart1_sendDataFromBufferBlocking(void) {
	while (USART1_TX_READ != USART1_TX_WRITE) {
		if ((USART1->SR & 0x80) != 0) {
			USART1->DR = USART1_TX_BUFFER[USART1_TX_READ++];
			USART1_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}
	return 0;
}

int32_t usart3_sendDataFromBufferBlocking(void) {
	while (USART3_TX_READ != USART3_TX_WRITE) {
		if ((USART3->SR & 0x80) != 0) {
			USART3->DR = USART3_TX_BUFFER[USART3_TX_READ++];
			USART3_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}
	return 0;
}

int32_t uart5_sendDataFromBufferBlocking(void) {
	while (UART5_TX_READ != UART5_TX_WRITE) {
		if ((UART5->SR & 0x80) != 0) {
			UART5->DR = UART5_TX_BUFFER[UART5_TX_READ++];
			UART5_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}
	return 0;
}

int32_t usart6_sendDataFromBufferBlocking(void) {
	while (USART6_TX_READ != USART6_TX_WRITE) {
		if ((USART6->SR & 0x80) != 0) {
			USART6->DR = USART6_TX_BUFFER[USART6_TX_READ++];
			USART6_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}
	return 0;
}

int32_t usart_sendDataFromBuffersBlocking(void) {
	while (USART1_TX_READ != USART1_TX_WRITE) {
		if ((USART1->SR & 0x80) != 0) {
			USART1->DR = USART1_TX_BUFFER[USART1_TX_READ++];
			USART1_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}

	while (USART3_TX_READ != USART3_TX_WRITE) {
		if ((USART3->SR & 0x80) != 0) {
			USART3->DR = USART3_TX_BUFFER[USART3_TX_READ++];
			USART3_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}

	while (UART5_TX_READ != UART5_TX_WRITE) {
		if ((UART5->SR & 0x80) != 0) {
			UART5->DR = UART5_TX_BUFFER[UART5_TX_READ++];
			UART5_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}

	while (USART6_TX_READ != USART6_TX_WRITE) {
		if ((USART6->SR & 0x80) != 0) {
			USART6->DR = USART6_TX_BUFFER[USART6_TX_READ++];
			USART6_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}


	return 0;
}

int32_t usart_sendDataFromBuffers(void){
	if (USART1_TX_READ != USART1_TX_WRITE) {
		if ((USART1->SR & 0x80) != 0) {
			USART1->DR 	= USART1_TX_BUFFER[USART1_TX_READ++];
			USART1_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}

	if (USART3_TX_READ != USART3_TX_WRITE) {
		if ((USART3->SR & 0x80) != 0) {
			USART3->DR 	= USART3_TX_BUFFER[USART3_TX_READ++];
			USART3_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}

	if (UART5_TX_READ != UART5_TX_WRITE) {
		if ((UART5->SR & 0x80) != 0) {
			UART5->DR 	= UART5_TX_BUFFER[UART5_TX_READ++];
			UART5_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}
	if (USART6_TX_READ != USART6_TX_WRITE) {
		if ((USART6->SR & 0x80) != 0) {
			USART6->DR	= USART6_TX_BUFFER[USART6_TX_READ++];
			USART6_TX_READ &= (USART_OUTPUT_BUF_SIZE - 1);
		}
	}


	return 0;
}

int32_t usart1_sendString(char* data) {
	// This function is assuming a ZERO-terminated string!

	while (*data != '\0') {
		USART1_TX_BUFFER[USART1_TX_WRITE++] = *(data++);
		USART1_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	}
	return 0;
}

int32_t usart3_sendString(char* data) {
	// This function is assuming a ZERO-terminated string!

	while (*data != '\0') {
		USART3_TX_BUFFER[USART3_TX_WRITE++] = *(data++);
		USART3_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	}
	return 0;
}

int32_t uart5_sendString(char* data) {
	// This function is assuming a ZERO-terminated string!
	while (*data != '\0') {

		UART5_TX_BUFFER[UART5_TX_WRITE++] = *(data++);
		UART5_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	}
	return 0;
}

int32_t usart6_sendString(char* data) {
	// This function is assuming a ZERO-terminated string!
	while (*data != '\0') {
		USART6_TX_BUFFER[USART6_TX_WRITE++] = *(data++);
		USART6_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	}
	return 0;
}

int32_t usart1_sendChar(char data) {
	USART1_TX_BUFFER[USART1_TX_WRITE++] = data;
	USART1_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	return 0;
}

int32_t usart3_sendChar(char data) {
	USART3_TX_BUFFER[USART3_TX_WRITE++] = data;
	USART3_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	return 0;
}

int32_t uart5_sendChar(char data) {
	UART5_TX_BUFFER[UART5_TX_WRITE++] = data;
	UART5_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	return 0;
}

int32_t usart6_sendChar(char data) {
	USART6_TX_BUFFER[USART6_TX_WRITE++] = data;
	USART6_TX_WRITE &= (USART_OUTPUT_BUF_SIZE - 1);
	return 0;
}


void usart_init(void) {
	/*
	 * This Function Initializes GPIO A,B,C,D ports as USART 1,3,5,6.
	 */



	// Config Structures:
	GPIO_InitTypeDef 	GPIOA_CONFIG;
	GPIO_InitTypeDef 	GPIOB_CONFIG;
	GPIO_InitTypeDef 	GPIOC_CONFIG;
	GPIO_InitTypeDef 	GPIOD_CONFIG;

	USART_InitTypeDef 	USART_CONFIG;
	DMA_InitTypeDef 	DMA_CONFIG;

	// Enable the AHB Clocks for both DMA Controllers
	// TODO: Check if this is correct!
//	RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_DMA1, ENABLE);
//	RCC_AHB1PeriphResetCmd(RCC_AHB1Periph_DMA2, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA2, ENABLE);


	//////////////////////////////////////////////////////////////////////
	//		Initialize GPIO Ports
	//		GPIOA: USART1, GPIOB: USART3, GPIOC: Mainly USART6, UART5, GPIOD: UART5
	//////////////////////////////////////////////////////////////////////

	GPIOA_CONFIG.GPIO_Pin					= (GPIO_Pin_9 | GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12);
	GPIOA_CONFIG.GPIO_Mode					= GPIO_Mode_AF;
	GPIOA_CONFIG.GPIO_OType					= GPIO_OType_PP;
	GPIOA_CONFIG.GPIO_PuPd					= GPIO_PuPd_UP;
	GPIOA_CONFIG.GPIO_Speed					= GPIO_Speed_100MHz;

	GPIOB_CONFIG.GPIO_Pin					= (GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_13 | GPIO_Pin_14);
	GPIOB_CONFIG.GPIO_Mode					= GPIO_Mode_AF;
	GPIOB_CONFIG.GPIO_OType					= GPIO_OType_PP;
	GPIOB_CONFIG.GPIO_PuPd					= GPIO_PuPd_UP;
	GPIOB_CONFIG.GPIO_Speed					= GPIO_Speed_100MHz;

	GPIOC_CONFIG.GPIO_Pin					= (GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_12);
	GPIOC_CONFIG.GPIO_Mode					= GPIO_Mode_AF;
	GPIOC_CONFIG.GPIO_OType					= GPIO_OType_PP;
	GPIOC_CONFIG.GPIO_PuPd					= GPIO_PuPd_UP;
	GPIOC_CONFIG.GPIO_Speed					= GPIO_Speed_100MHz;

	GPIOD_CONFIG.GPIO_Pin 					= (GPIO_Pin_2);
	GPIOD_CONFIG.GPIO_Mode					= GPIO_Mode_AF;
	GPIOD_CONFIG.GPIO_OType					= GPIO_OType_PP;
	GPIOD_CONFIG.GPIO_PuPd					= GPIO_PuPd_UP;
	GPIOD_CONFIG.GPIO_Speed					= GPIO_Speed_100MHz;


	// Enable GPIO Clocks:
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA,  ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,  ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC,  ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD,  ENABLE);


	//Connect Pins to alternative functions:
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource10,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource11,	GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource12,	GPIO_AF_USART1);

	GPIO_PinAFConfig(GPIOB, GPIO_PinSource10,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource11,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource13,	GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource14,	GPIO_AF_USART3);

	GPIO_PinAFConfig(GPIOC, GPIO_PinSource6,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource7,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource8,	GPIO_AF_USART6);
	GPIO_PinAFConfig(GPIOC, GPIO_PinSource9,	GPIO_AF_USART6);

	GPIO_PinAFConfig(GPIOC, GPIO_PinSource12,	GPIO_AF_UART5);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource2, 	GPIO_AF_UART5);

	// Initialize GPIO ports:
	GPIO_Init(GPIOA, &GPIOA_CONFIG);
	GPIO_Init(GPIOB, &GPIOB_CONFIG);
	GPIO_Init(GPIOC, &GPIOC_CONFIG);
	GPIO_Init(GPIOD, &GPIOD_CONFIG);

	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////



	//////////////////////////////////////////////////////////////////////
	//		Initialize USART1
	//		This is connected to EDVS1
	//////////////////////////////////////////////////////////////////////

	// Set up USART port parameters
	USART_CONFIG.USART_BaudRate 			= USART_EDVS_BAUD;
	USART_CONFIG.USART_WordLength 			= USART_WordLength_8b;
	USART_CONFIG.USART_StopBits 			= USART_StopBits_1;
	USART_CONFIG.USART_Parity 				= USART_Parity_No;
	USART_CONFIG.USART_Mode 				= USART_Mode_Rx | USART_Mode_Tx;
	USART_CONFIG.USART_HardwareFlowControl 	= USART_HardwareFlowControl_RTS_CTS;


	// Enable Clock for this port (Step 1):
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);

	// Enable lower oversampling (has to be called AFTER USART clock init and BEFORE USART init)
	USART_OverSampling8Cmd(USART1, ENABLE);

	// Initialize the USART: (Step 4)
	USART_Init(USART1, &USART_CONFIG);

	// Enable the USART: (Step 7)
	USART_Cmd(USART1, ENABLE);


	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////
	//		Initialize USART3
	//		This is connected to the Omnibot at 2MBaud
	//////////////////////////////////////////////////////////////////////


	// Set up USART port parameters
	USART_CONFIG.USART_BaudRate 			= USART_OMNIBOT_BAUD;
	USART_CONFIG.USART_WordLength 			= USART_WordLength_8b;
	USART_CONFIG.USART_StopBits 			= USART_StopBits_1;
	USART_CONFIG.USART_Parity 				= USART_Parity_No;
	USART_CONFIG.USART_Mode 				= USART_Mode_Rx | USART_Mode_Tx;
	USART_CONFIG.USART_HardwareFlowControl 	= USART_HardwareFlowControl_RTS_CTS;

	// Enable Clock for this port:
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);

	// Enable lower oversampling
	USART_OverSampling8Cmd(USART3, ENABLE);

	// Initialize the USART:
	USART_Init(USART3, &USART_CONFIG);

	// Enable the USART: do I have to switch this with the interrupt enabling? Ask Ginni!
	USART_Cmd(USART3, ENABLE);

	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////
	//		Initialize UART5
	//		This is a debug output
	//////////////////////////////////////////////////////////////////////


	// Set up USART port parameters
	USART_CONFIG.USART_BaudRate 			= USART_DEBUG_BAUD;
	USART_CONFIG.USART_WordLength 			= USART_WordLength_8b;
	USART_CONFIG.USART_StopBits 			= USART_StopBits_1;
	USART_CONFIG.USART_Parity 				= USART_Parity_No;
	USART_CONFIG.USART_Mode 				= USART_Mode_Tx;
	USART_CONFIG.USART_HardwareFlowControl 	= USART_HardwareFlowControl_None;

	// Enable Clock for this port:
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);

	// Enable lower oversampling
	USART_OverSampling8Cmd(UART5, ENABLE);

	// Initialize the USART:
	USART_Init(UART5, &USART_CONFIG);

	// Enable the USART: do I have to switch this with the interrupt enabling? Ask Ginni!
	USART_Cmd(UART5, ENABLE);


	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////


	//////////////////////////////////////////////////////////////////////
	//		Initialize USART6
	//		This is connected to EDVS2
	//////////////////////////////////////////////////////////////////////


	// Set up USART port parameters
	USART_CONFIG.USART_BaudRate 			= USART_EDVS_BAUD;
	USART_CONFIG.USART_WordLength 			= USART_WordLength_8b;
	USART_CONFIG.USART_StopBits 			= USART_StopBits_1;
	USART_CONFIG.USART_Parity 				= USART_Parity_No;
	USART_CONFIG.USART_Mode 				= USART_Mode_Rx | USART_Mode_Tx;
	USART_CONFIG.USART_HardwareFlowControl 	= USART_HardwareFlowControl_RTS_CTS;

	// Enable Clock for this port:
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART6, ENABLE);

	/* Enable lower oversampling In order to reach higher communication baudrates, it is possible to
	  *          enable the oversampling by 8 mode using the function USART_OverSampling8Cmd().
	  *          This function should be called after enabling the USART clock (RCC_APBxPeriphClockCmd())*/
	USART_OverSampling8Cmd(USART6, ENABLE);

	// Initialize the USART:
	USART_Init(USART6, &USART_CONFIG);

	// Enable the USART: do I have to switch this with the interrupt enabling? Ask Ginni!
	USART_Cmd(USART6, ENABLE);


	//////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////
	//		Initialize DMAs
	//
	//////////////////////////////////////////////////////////////////////

	// USART1 DMA RX CONFIG

	// Initialize the DMA (peripheral to memory, circular mode)
	DMA_StructInit(&DMA_CONFIG);

	DMA_CONFIG.DMA_Channel = DMA_Channel_4;
	DMA_CONFIG.DMA_DIR = DMA_DIR_PeripheralToMemory; // Receive
	DMA_CONFIG.DMA_Memory0BaseAddr = (uint32_t) USART1_RX_BUFFER;
	DMA_CONFIG.DMA_BufferSize = 4096;
	DMA_CONFIG.DMA_PeripheralBaseAddr = (uint32_t) &(USART1->DR);
	DMA_CONFIG.DMA_DIR = DMA_DIR_PeripheralToMemory;
	DMA_CONFIG.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_CONFIG.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_CONFIG.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	DMA_CONFIG.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	DMA_CONFIG.DMA_Mode = DMA_Mode_Circular;
	DMA_CONFIG.DMA_Priority = DMA_Priority_High;
	DMA_CONFIG.DMA_FIFOMode = DMA_FIFOMode_Disable;
	DMA_CONFIG.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	DMA_CONFIG.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;



	DMA_FlowControllerConfig(DMA2_Stream2,DMA_FlowCtrl_Memory);

	DMA_Init(DMA2_Stream2, &DMA_CONFIG);

	//	Enable the USART Rx DMA request */
	USART_DMACmd(USART1, USART_DMAReq_Rx, ENABLE);

	// Enable the DMA Stream:
	DMA_Cmd(DMA2_Stream2, ENABLE);





	// USART3 DMA RX CONFIG


	// Initialize the DMA (peripheral to memory, circular mode)
	DMA_StructInit(&DMA_CONFIG);

	DMA_CONFIG.DMA_Channel = DMA_Channel_4;
	DMA_CONFIG.DMA_DIR = DMA_DIR_PeripheralToMemory; // Receive
	DMA_CONFIG.DMA_Memory0BaseAddr = (uint32_t)USART3_RX_BUFFER;
	DMA_CONFIG.DMA_BufferSize = 4096;
	DMA_CONFIG.DMA_PeripheralBaseAddr = (uint32_t)&(USART3->DR);
	DMA_CONFIG.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_CONFIG.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_CONFIG.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	DMA_CONFIG.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	DMA_CONFIG.DMA_Mode = DMA_Mode_Circular;
	DMA_CONFIG.DMA_Priority = DMA_Priority_High;
	DMA_CONFIG.DMA_FIFOMode = DMA_FIFOMode_Disable;
	DMA_CONFIG.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	DMA_CONFIG.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;


	DMA_FlowControllerConfig(DMA1_Stream1,DMA_FlowCtrl_Memory);

	DMA_Init(DMA1_Stream1, &DMA_CONFIG);

	//	Enable the USART Rx DMA request */
	USART_DMACmd(USART3, USART_DMAReq_Rx, ENABLE);

	// Enable the DMA Stream:
	DMA_Cmd(DMA1_Stream1, ENABLE);




	// USART6 DMA RX CONFIG

	// Initialize the DMA (peripheral to memory, circular mode)
	DMA_StructInit(&DMA_CONFIG);

	DMA_CONFIG.DMA_Channel = DMA_Channel_5;
	DMA_CONFIG.DMA_DIR = DMA_DIR_PeripheralToMemory; // Receive
	DMA_CONFIG.DMA_Memory0BaseAddr = (uint32_t)USART6_RX_BUFFER;
	DMA_CONFIG.DMA_BufferSize = EDVS_BUF_SIZE;
	DMA_CONFIG.DMA_PeripheralBaseAddr = (uint32_t)&USART6->DR;
	DMA_CONFIG.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_CONFIG.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_CONFIG.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	DMA_CONFIG.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	DMA_CONFIG.DMA_Mode = DMA_Mode_Circular;
	DMA_CONFIG.DMA_Priority = DMA_Priority_High;
	DMA_CONFIG.DMA_FIFOMode = DMA_FIFOMode_Disable;
	DMA_CONFIG.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	DMA_CONFIG.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;


	DMA_Init(DMA2_Stream1, &DMA_CONFIG);

	//	Enable the USART Rx DMA request */
	USART_DMACmd(USART6, USART_DMAReq_Rx, ENABLE);

	// Enable the DMA Stream:
	DMA_Cmd(DMA2_Stream1, ENABLE);

}
