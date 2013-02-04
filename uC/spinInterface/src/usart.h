/*
 * usart.h
 *
 *  Created on: 28.11.2012
 *      Author: denk
 */

#ifndef USART_H_
#define USART_H_

#include "stm32f4xx_rcc.h"

/*
 USART1: 	EDVS1
 USART6: 	EDVS2
 USART3: 	Omnibot
 */

//Baud Rates for individual devices:
#define USART_EDVS_BAUD			4000000
#define USART_OMNIBOT_BAUD		4000000
#define USART_DEBUG_BAUD		2000000

// Circular Buffer for EDVS Data:
#define EDVS_BUF_SIZE 		4096
extern volatile uint8_t 	USART1_RX_BUFFER[EDVS_BUF_SIZE];
extern volatile uint8_t 	USART6_RX_BUFFER[EDVS_BUF_SIZE];

// Buffer for Robot Sensor Data:
#define ROBOT_BUF_SIZE 4096
extern volatile uint8_t		USART3_RX_BUFFER[ROBOT_BUF_SIZE];

// USART Output buffer size:
#define USART_OUTPUT_BUF_SIZE 		4096

void usart_init(void);
int32_t usart_sendDataFromBuffers(void);
int32_t usart_sendDataFromBuffersBlocking(void);
int32_t usart1_sendDataFromBufferBlocking(void);
int32_t usart3_sendDataFromBufferBlocking(void);
int32_t uart5_sendDataFromBufferBlocking(void);
int32_t usart6_sendDataFromBufferBlocking(void);
int32_t usart1_sendString(char*);
int32_t usart3_sendString(char*);
int32_t uart5_sendString(char*);
int32_t usart6_sendString(char*);
int32_t usart1_sendChar(char);
int32_t usart3_sendChar(char);
int32_t uart5_sendChar(char);
int32_t usart6_sendChar(char);

#endif /* USART_H_ */
