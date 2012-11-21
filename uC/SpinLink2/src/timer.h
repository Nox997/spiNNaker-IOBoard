/*
 * timer.h
 *
 *  Created on: Oct 11, 2012
 *      Author: jt
 */

#ifndef TIMER_H_
#define TIMER_H_

#include "stm32f4xx_tim.h"
#include "stm32f4xx_rcc.h" // Cloking stuff

// Sets prescaler to 4000 hz
TIM_TimeBaseInitTypeDef ms_time_init;






void ms_tick_init(void);
//void ms_tick_reset(void);
void ms_tick_start(void);

void us_tick_init(void);
void us_tick_start(void);





#define ms_tick 		 TIM5->CNT
#define ms_tick_set(val) (TIM5->CNT = val)
#endif /* TIMER_H_ */
