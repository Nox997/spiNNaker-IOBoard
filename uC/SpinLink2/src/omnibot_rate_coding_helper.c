/*
 * omnibot_rate_coding_helper.c
 *
 *  Created on: 10.10.2012
 *      Author: denk
 */
#include <math.h>
#include "omnibot_rate_coding_helper.h"

char stringBuffer[100];

uint32_t wp[6];
uint32_t wcount[6];
float wa;
float wt;
spin_link_pkg_t spike;
uint32_t bp[6];
uint32_t bcount[6];


int32_t initialize_rate_coding(){

	spike.key 	= MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16;
	spike.header 	= 0x2;
	spike.payload	= 0;

	int i;
	for (i=0; i < 6; i++) {
		wp[i] = 65535;
		wcount[i]= 1;
		bp[i] = 65535;
		bcount[i] = 1;
	}

	//Calculate slope and intercept for wheels:
	wa = (FREQ_UPPER-FREQ_LOWER)/(W_MAX-W_MIN);
	wt = FREQ_UPPER - wa*W_MAX;

	counterOmnibotPackages = 0;
	return 0;
}


uint32_t calc_period(float freq){
	return (uint16_t) floor(GROUND_FREQ / freq + .5f);
}

int32_t rate_coding(){
	int i = 0;

	//Check whether new sensor data is available, and set periods accordingly
	// TODO: Fill in a check whether there are multiple new data available...
	if(counterOmnibotPackages){
		manage_wheel_spikes();
		manage_bump_spikes();
		counterOmnibotPackages = 0;
	}

	//Send Spikes!
	//wheel spikes:
	for (i=0; i < 6; i++) {
		if (wcount[i] >= wp[i]) {
			//Send spikes for wheels
			spike.header = 0x2;
			spike.payload = 0;
			//WHEEL_0_VEL_POSITIVE indicates the "base address" for the wheel spikes
			spike.key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[WHEEL_0_VEL_POSITIVE + i] & DEL_UPPER_16 );
			spin_link_packet_send(&spike,0);

			wcount[i] = 1;
		}
		else {
			wcount[i]++;
		}
	}
	//bump spikes: (loop starts at 1!)
	for (i=0;i < 6; i++){
		if (bcount[i] >= bp[i]) {
			//Send spikes for bumpers
			//spike KEY = B_NEUR_RATE_KEY + i
			spike.header = 0x2;
			spike.payload = 0;
			//BUMP0 indicateds the "base address" for the wheel spikes
			spike.key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[BUMP0 + i] & DEL_UPPER_16 );
			spin_link_packet_send(&spike,0);

			bcount[i] = 1;
		}
		else {
			bcount[i]++;
		}
	}
	return 0;
}

int32_t manage_wheel_spikes(){
	//Calculates new periods according to the current sensor readings

	float wf_0, wf_1, wf_2;

	wf_0 = wa*fabs(robotSensorData.w_0) + wt;
	wf_1 = wa*fabs(robotSensorData.w_1) + wt;
	wf_2 = wa*fabs(robotSensorData.w_2) + wt;

	if (robotSensorData.w_0 >= 0) {
		wp[0] = calc_period(wf_0);
		wp[1] = MAX_PERIOD;
	}
	else{
		wp[0] = MAX_PERIOD;
		wp[1] = calc_period(wf_0);
	}

	if (robotSensorData.w_1 >= 0) {
		wp[2] = calc_period(wf_1);
		wp[3] = MAX_PERIOD;
	}
	else{
		wp[2] = MAX_PERIOD;
		wp[3] = calc_period(wf_1);
	}

	if (robotSensorData.w_2 >= 0) {
		wp[4] = calc_period(wf_2);
		wp[5] = MAX_PERIOD;
	}
	else{
		wp[4] = MAX_PERIOD;
		wp[5] = calc_period(wf_2);
	}

	return 0;
}

int32_t manage_bump_spikes(){
	//Calculates new periods according to the current sensor readings
	int i;
	for (i=0; i<6; i++) {
		bp[i] = ((robotSensorData.bump >> i) & 1) ? B_P_HIGH : B_P_LOW;
	}
	return 0;
}
