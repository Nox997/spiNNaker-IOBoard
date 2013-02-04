/*
 * omnibot_rate_coding_helper.h
 *
 *  Created on: 10.10.2012
 *      Author: denk
 */

#ifndef OMNIBOT_RATE_CODING_HELPER_H_
#define OMNIBOT_RATE_CODING_HELPER_H_

#include "stm32f4xx.h"

#define GROUND_FREQ 2000.0f
#define FREQ_LOWER 0.031f
#define FREQ_UPPER 50.0f
#define MAX_PERIOD 64516

#define DEL_LOWER_16 0xFFFF0000
#define DEL_UPPER_16 0x0000FFFF

//Wheels stuff
#define W_MAX 560.0f
#define W_MIN 0.0f
#define W_NEUR_RATE_KEY 0x10

//Bumper Stuff:
#define B_P_HIGH 500
#define B_P_LOW 62500
#define B_NEUR_RATE_KEY 0x800

//Functions
uint32_t calc_period(float freq);
int32_t initialize_rate_coding();
int32_t rate_coding();
int32_t manage_wheel_spikes();
int32_t manage_bump_spikes();


#endif /* OMNIBOT_RATE_CODING_HELPER_H_ */
