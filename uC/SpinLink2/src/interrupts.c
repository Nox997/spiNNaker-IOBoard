/*
 * interrupts.c
 *
 *  Created on: May 29, 2012
 *      Author: jt
 */


#include "interrupts.h"

volatile uint32_t spinPacketAvailableFlag = 0;
volatile uint32_t eDVSAvailableFlag = 0;
volatile uint32_t eDVSUSARTData = 0;

extern volatile uint32_t numCorrectPackages;


/*
 * NVIC configuration
 *
 */
void usart_init_nvic(void)
{

	nvic_com_usb.NVIC_IRQChannel = 						USART6_IRQn;
    nvic_com_usb.NVIC_IRQChannelCmd =					ENABLE;
    nvic_com_usb.NVIC_IRQChannelPreemptionPriority =	4;
   	nvic_com_usb.NVIC_IRQChannelSubPriority =			4;

   	NVIC_Init(&nvic_com_usb);
/*
   	nvic_com_usb.NVIC_IRQChannel = 						USART1_IRQn;
   	nvic_com_usb.NVIC_IRQChannelCmd =					ENABLE;
   	nvic_com_usb.NVIC_IRQChannelPreemptionPriority =	3;
   	nvic_com_usb.NVIC_IRQChannelSubPriority =			0;

	NVIC_Init(&nvic_com_usb);
*/
   	nvic_com_usb.NVIC_IRQChannel = 						USART3_IRQn;
   	nvic_com_usb.NVIC_IRQChannelCmd =					ENABLE;
   	nvic_com_usb.NVIC_IRQChannelPreemptionPriority =	5;
   	nvic_com_usb.NVIC_IRQChannelSubPriority =			0;


	NVIC_Init(&nvic_com_usb);

}

void spin_link_init_nvic(void)
{
	// Enable external interrupts
	// DAV is on
	//		PB2
	// 		Rising Edge

	// Syscfg for EXT-Mux
	EXTI_DeInit();

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource2);
	SYSCFG_CompensationCellCmd(ENABLE);

	// Configure External Interrupt (2)
	exti_spl.EXTI_Line = 		EXTI_Line2;
	exti_spl.EXTI_LineCmd =		ENABLE;
	exti_spl.EXTI_Mode =		EXTI_Mode_Interrupt;
	exti_spl.EXTI_Trigger =		EXTI_Trigger_Rising;


	EXTI_Init(&exti_spl);


	nvic_spl.NVIC_IRQChannel = 						EXTI2_IRQn;
	nvic_spl.NVIC_IRQChannelCmd =					ENABLE;
	nvic_spl.NVIC_IRQChannelPreemptionPriority =	1;
	nvic_spl.NVIC_IRQChannelSubPriority =			0;

   	NVIC_Init(&nvic_spl);


}

/*
 * IRQ Handling functions
 *
 *
 */

void USB_IRQhandler(void) // Actually USART6_IRQHandler()
{
	// uint16_t buffer[80];
	uint16_t c;
	uint16_t c2;
	char string[9];
	char string2[9];

	spin_link_pkg_t	packet;

	led0_on();

	c = USART_ReceiveData(USART_USB);
	while(USART_GetFlagStatus(USART_USB, USART_FLAG_RXNE) == SET);

//	USART_SendData(USART_USB, c);
//	while(USART_GetFlagStatus(USART_USB, USART_FLAG_RXNE) == SET);
	USART_SendData(USART_ROBOT, c);
	USART_SendData(USART_EDVS, c);
//	USART_SendData(USART_USB, c);
//	USART_SendData(USART_USB, c);
//	while(USART_GetFlagStatus(USART_EDVS, USART_FLAG_TC) != SET);
//	USART_SendData(USART_EDVS, '\n');
	//spin_link_send(210);
//		packet.header  = 0x02;
	//	packet.data	 = 0x89547A32;
	//	packet.payload = 0x89547A32;
	packet.header    =  0x2;
	packet.key     =   0x221;
	packet.payload  =   0x89547A32;

	spin_link_packet_send(&packet, 1);

//	x_accumulator = 0;
	// Sending control package
//	package.header	= 0x2;
//	package.data	= 0x221;
//	package.payload = c;
//	spin_link_buffer_push(&package);

	USART_ClearITPendingBit(USART_USB, USART_IT_RXNE);
	led0_off();
}


void EDVS_IRQhandler(void) // Actually USART1_IRQHandler()
{
	eDVSAvailableFlag = 1;
//	static int32_t firstByteReceived = -1;
//	static uint32_t yData = 0;
//	static uint32_t xData = 0;
//
//	firstByteReceived = !(USART_ReceiveData(USAR_EDVS) >> 7);
//	if (firstByteReceived == 0) {
//		yData = USART_ReceiveData(USART_EDVS);
//		if (yData & 0x80 ){ //first bit of ydata has to be zero, so throw away this packet
//			yData = 0;
//			USART_ClearITPendingBit(USART_EDVS, USART_IT_RXNE);
//			return;
//		}
//		else {
//			firstByteReceived = 1;
//			USART_ClearITPendingBit(USART_EDVS, USART_IT_RXNE);
//			return;
//		}
//	}
//	else if (firstByteReceived == 1) {
//		xData = USART_ReceiveData(USART_EDVS);
//
//		//now we have both x and y data, so we can asseble a spiNNaker packet.
//		//as packets are only sent in the main loop, we put this package on top of a buffer and increment the counter to this buffer by one.
//		//we save the entire packet in yData.
//		yData = ((yData << 8) | xData) & DEL_UPPER_16;
//		bufferEDVS1[eDVS1_topPacket] = yData;
//		eDVS1_topPacket = (eDVS1_topPacket + 1) % 100;
//
//		yData = 0;
//		xData = 0;
//		firstByteReceived = 0;
//
//		USART_ClearITPendingBit(USART_EDVS, USART_IT_RXNE);
//		return;
//	}
//	else {
//		USART_ClearITPendingBit(USART_EDVS, USART_IT_RXNE);
//		return;
//	}
	USART_ClearITPendingBit(USART_EDVS, USART_IT_RXNE);
	return;
}

void ROBOT_IRQhandler(void) // Actually USART3_IRQhandler()
{
	char c_IRQ;
	static uint16_t counter_IRQ = 0;
	static unsigned char str_buffer_IRQ[1800];
	led0_on();

	c_IRQ = (char) USART_ReceiveData(USART_ROBOT);
	str_buffer_IRQ[counter_IRQ] = c_IRQ;

	if(c_IRQ == '\n' || (c_IRQ == '\0') ){
		omnibot_sensor_data_handler(str_buffer_IRQ, counter_IRQ);
//		USART_SendData(USART_USB,'F');
		//usart_dma_transmission(str_buffer_IRQ,++counter_IRQ); // Debug output
		counter_IRQ = 0;
	}
	else{
		counter_IRQ++;
	}



//	USART_SendData(USART_ROBOT, c);
//	USART_SendData(USART_EDVS, c);
	//USART_SendData(USART_USB, c_IRQ);
	USART_ClearITPendingBit(USART_ROBOT, USART_IT_RXNE);


	led0_off();

}

static char str_buffer[80];

void SPL_DAV_IRQHandler(void)
{
//	uint8_t c;
//	uint16_t spin_data;
//	spin_link_pkg_t spin_link_packet;
//	static char str_buffer[80];
//	char num_buffer[80];
	int32_t timeout = 0;
#define TIMEOUT 2

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
	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;			// EOP reception
	if(!SPL_IEOP) goto package_corrupt;

package_good:
	spinPacketAvailableFlag = 1;

	EXTI_ClearFlag(EXTI_Line2);
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	return;


package_corrupt:
	// UART debug output: show one asterisk
	USART3->DR = '~';

	EXTI_ClearFlag(EXTI_Line2);
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
    return;


//    strcpy(str_buffer, ":");
//	goto send_debug_package;


//  strcpy(str_buffer, "*");	  // show that package is corrupt
//  goto send_debug_package;

//	itoa(spin_link_packet.header, num_buffer, 16);
//	strcat(str_buffer, num_buffer);
//	strcat(str_buffer, " ");
//	itoa(spin_link_packet.data, num_buffer, 16);
//	strcat(str_buffer, num_buffer);
//	strcat(str_buffer, " ");
//	itoa(spin_link_packet.payload, num_buffer, 16);
//	strcat(str_buffer, num_buffer);
//	strcat(str_buffer, "\n");
//	usart_dma_transmission(str_buffer, strlen(str_buffer));

	// ACK after Clearing Flag!
}


void SPL_DAV_IRQHandler_jorg_does_not_work_well(void)
{
	// uint8_t c;
	// uint16_t spin_data;
	spin_link_pkg_t spin_link_packet;
	char num_buffer[16];


	spin_link_packet.header=0;
	spin_link_packet.key=0;
	spin_link_packet.payload=0;

	//start_interrupt:

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.header	   = (uint8_t)SPL_IDR;
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.key	   = (uint32_t)SPL_IDR;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.key	  |= (uint32_t)SPL_IDR << 8;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.key	  |= (uint32_t)SPL_IDR << 16;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.key	  |= (uint32_t)SPL_IDR << 24;
//	do{SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;}	while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK);
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP){	spin_link_packet.payload = 0;
	 	 	 	 	goto buffer_push;	}
	spin_link_packet.payload  = (uint32_t)SPL_IDR;
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};


	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.payload  |= (uint32_t)SPL_IDR << 8;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.payload  |= (uint32_t)SPL_IDR << 16;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;
	if(SPL_IEOP) goto end_interrupt;
	spin_link_packet.payload  |= (uint32_t)SPL_IDR << 24;
	//while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)
//	do{SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;}	while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK);
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");
	while (SPL_IAV==0) {};

	SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;			// EOP reception
	//if(SPL_IDR);
	if(!SPL_IEOP) goto end_interrupt;
//	do{SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;}	while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK);
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	asm("nop"); asm("nop");

	buffer_push:


//	if( spin_link_packet.data & 0x00000001)
//	{
//		x_accumulator++;
//	}
//	else spin_link_buffer_push(&spin_link_packet);



/*
	for(c = 0; c <= 10; c++)
	{
		if(SPL_IEOP){
			if(c == 6 || c == 10) spin_link_buffer_push(&spin_link_packet);
			break;
		}

		SPIN_MCU_DATA_IN_ACK->ODR |=  SPLI_ACK;

	switch(c){
	case 0:		spin_link_packet.header	  =  (uint8_t)SPL_IDR;
				break;
	case 1:		spin_link_packet.data	  = (uint32_t)SPL_IDR;
				break;
	case 2:		spin_link_packet.data	 |= (uint32_t)SPL_IDR << 8;
				break;
	case 3:		spin_link_packet.data	 |= (uint32_t)SPL_IDR << 16;
				break;
	case 4:		spin_link_packet.data	 |= (uint32_t)SPL_IDR << 24;
				break;
	case 5:		spin_link_packet.payload  = (uint32_t)SPL_IDR;
				break;
	case 6:		spin_link_packet.payload |= (uint32_t)SPL_IDR << 8;
				break;
	case 7:		spin_link_packet.payload |= (uint32_t)SPL_IDR << 16;
				break;
	case 8:		spin_link_packet.payload |= (uint32_t)SPL_IDR << 24;
				break;
	case 9:
	default:
				break;
	}
		SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;

	}
*/



// Debug information

	itoa(spin_link_packet.header, str_buffer, 16);
	strcat(str_buffer, " ");
	itoa(spin_link_packet.key, num_buffer, 16);
	strcat(str_buffer, num_buffer);
	strcat(str_buffer, "-");
	itoa(spin_link_packet.payload, num_buffer, 16);
	strcat(str_buffer, num_buffer);
	strcat(str_buffer, "\n");
	usart_dma_transmission(str_buffer, strlen(str_buffer));
	while(DMA_GetCmdStatus(DMA1_Stream3) == ENABLE );

	goto endend;

	end_interrupt:

	strcpy(str_buffer, "***");
	itoa(spin_link_packet.header, num_buffer, 16);
	strcat(str_buffer, num_buffer);
	strcat(str_buffer, " ");
	itoa(spin_link_packet.key, num_buffer, 16);
	strcat(str_buffer, num_buffer);
	strcat(str_buffer, "-");
	itoa(spin_link_packet.payload, num_buffer, 16);
	strcat(str_buffer, num_buffer);
	strcat(str_buffer, "\n");
	usart_dma_transmission(str_buffer, strlen(str_buffer));
	while(DMA_GetCmdStatus(DMA1_Stream3) == ENABLE );

	endend:
	EXTI_ClearFlag(EXTI_Line2);
	//do{ SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;} while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK);
//	while(SPIN_MCU_DATA_IN_ACK->IDR & SPLI_ACK)	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;
	//EXTI_ClearFlag(EXTI_Line2);
	//SPIN_MCU_DATA_IN_ACK->ODR &= ~SPLI_ACK;


	// ACK after Clearing Flag!

}

//
void EDVS_DMA_IRQHandler(void)	// Handles the DMA transfer flag
{
	led0_on();
	static char *buffer_ptr;
	spin_link_pkg_t out_packet;
	uint8_t c;


	do{	DMA_ClearITPendingBit(DMA2_Stream2, DMA_IT_TCIF2);}
	 while( DMA_GetITStatus(DMA2_Stream2, DMA_IT_TCIF2));


	// Double Buffer Fetcher
	//
	if(DMA_GetCurrentMemoryTarget(DMA2_Stream2)) buffer_ptr = edvs_buffer0;
	else										 buffer_ptr = edvs_buffer1;

	usart_dma_transmission(buffer_ptr, EDVS_BUFFER_SIZE);

	for(c = 0; c < EDVS_BUFFER_SIZE; c++)
	{


	}




	//DMA2->LIFCR = (uint32_t)(0x0F7D0F7D & 0xFFFFFFFF); // Have to clean-up by myself. Francisco

	led0_off();


}






