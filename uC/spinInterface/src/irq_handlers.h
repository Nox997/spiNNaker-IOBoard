/*
 * irq_handlers.h
 *
 *  Created on: 29.11.2012
 *      Author: denk
 */

#ifndef IRQ_HANDLERS_H_
#define IRQ_HANDLERS_H_

//Include the standard definitions for uint32_t files...
#ifdef __USE_CMSIS
#include "stm32f4xx.h"
#endif

// external flags, defined in irq_handlers.c:
extern volatile uint32_t SPIN_RX_FLAG;



// Eventually, these IRQhandlers will be replaced by DMA IRQ Handlers.... hopefully!
void EXTI2_IRQHandler(void);  // Spinnaker packet arrived handler

#endif /* IRQ_HANDLERS_H_ */
