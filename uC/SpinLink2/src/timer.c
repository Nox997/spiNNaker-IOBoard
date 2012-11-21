/*
 * timer.c
 *
 *  Created on: Oct 11, 2012
 *      Author: jt
 */

#include "timer.h"

void ms_tick_init(void)
{
	TIM_DeInit(TIM5);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM5, ENABLE);
	// Set values for init:
	ms_time_init.TIM_Prescaler		   = 42000-1;        // Prescaler for 8kHz
	ms_time_init.TIM_CounterMode 	   = TIM_CounterMode_Up;
	ms_time_init.TIM_Period            = 0xFFFF;
	ms_time_init.TIM_ClockDivision	   = TIM_CKD_DIV4;
	ms_time_init.TIM_RepetitionCounter = 0xFF;



	TIM_TimeBaseInit(TIM5, &ms_time_init);

	TIM_InternalClockConfig(TIM5);
	TIM_SelectOnePulseMode(TIM5, TIM_OPMode_Repetitive);

//	TIM_Cmd(TIM5, ENABLE);
}

void ms_tick_start(void)
{
	TIM_Cmd(TIM5, ENABLE);
}
