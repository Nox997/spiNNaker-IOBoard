/*
 * timer.h
 *
 *  Created on: 30.01.2013
 *      Author: copied from Francisco L.
 */

#ifndef TIMER_H_
#define TIMER_H_

#include "stm32f4xx_tim.h"
#include "stm32f4xx_rcc.h"

// Counter Register: TIM5->CNT

void ms_tick_init(void);
void ms_tick_start(void);

#endif /* TIMER_H_ */
