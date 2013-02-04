/*
 * omnibot.c
 *
 *  Created on: 10.10.2012
 *      Author: denk
 */

#include "omnibot.h"

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include "usart.h"
// uint32_t ARRAY CONTAINING ALL NEURON KEYS:
uint32_t MGMT_ARRAY[0x200];

float x_speed;
int32_t x_accumulator;
int32_t x_payload_speed;
float y_speed;
int32_t y_accumulator;
int32_t y_payload_speed;
float t_speed;
int32_t t_accumulator;
int32_t t_payload_speed;

char motor_command_string[100];
char num_buffer[20];

int32_t timeout_var;
uint32_t motor_init_cmd_cycle_1;
uint32_t motor_init_cmd_cycle_2;
uint32_t motor_count;

omnisensors_t robotSensorData;
uint32_t omniAvailFlag;


uint8_t omnibot_init() {
	//Run Variable:
	int i = 0;

	omniAvailFlag = 0;

	robotSensorData.a_0 = 0;
	robotSensorData.a_1 = 0;
	robotSensorData.a_2 = 0;

	robotSensorData.g_0 = 0;
	robotSensorData.g_1 = 0;
	robotSensorData.g_2 = 0;

	robotSensorData.e_0 = 0;
	robotSensorData.e_1 = 0;
	robotSensorData.e_2 = 0;

	robotSensorData.w_0 = 0;
	robotSensorData.w_1 = 0;
	robotSensorData.w_2 = 0;

	robotSensorData.c_0 = 0;
	robotSensorData.c_1 = 0;
	robotSensorData.c_2 = 0;
	robotSensorData.c_3 = 0;

	robotSensorData.bump = 0;

	//Initialize the neuron_array:
	for (i = 1; i < 0x106; i++) {
		MGMT_ARRAY[i] = i;
	}
	//Special attention to the rate coding variables, we default to NO RATE CODING:
	MGMT_ARRAY[RATE_CODING_ACTUATORS_ENABLE] 	= 0;
	MGMT_ARRAY[RATE_CODING_SENSORS_ENABLE]		= 0;
	//Set OMNIBOT XY address, EDVS1 and EDVS2 addresses to 8,8 9,9 and 10,10
	MGMT_ARRAY[OMNIBOT_XY]		= 8 << 24 | 8 << 16;
	MGMT_ARRAY[EDVS1_XY] 		= 9	<< 24 | 9 << 16;
	MGMT_ARRAY[EDVS2_XY] 		= 10<< 24 |10 << 16;

	//Motor Speeds
	x_accumulator = 0;
	y_accumulator = 0;
	t_accumulator = 0;
	x_speed = 0;
	y_speed = 0;
	t_speed = 0;
	x_payload_speed = 0;
	y_payload_speed = 0;
	t_payload_speed = 0;

	//Set Command Echo on Robot OFF and Set Output of Sensorimotor data to 20Hz:
	usart3_sendString("!E2\r\n!I1,20,A\r\n");
	usart3_sendDataFromBufferBlocking();

	//Initialize motor command counter:
	motor_count = 1;
	motor_init_cmd_cycle_1 = 1;
	motor_init_cmd_cycle_2 = 5000;

	//Initialize Timeout:
	timeout_var = TIMEOUT_MS;

	return 0;
}

uint8_t omnibot_sensor_data_handler(char* buffer, uint32_t buff_length) {
	if (buff_length != 129) {
		//usart_dma_transmission("Not enough chars\n", 17);
		return -1;
	}

	//example data from robot: "-Ib=00 w=+00000 +00000 +00000 c=-00574 -03136 +01918 +00754 a=+00004 -00148 -32590 g=+00000 +00000 +00000 e=+00001 +00000 +00752\n"
	buffer+=4;

	//convert bump

	robotSensorData.bump = (buffer[0]-'0')*10 	+
							(buffer[1]-'0')*1 		;
	buffer += 5;

	//convert wheel velocities
	robotSensorData.w_0 =  (buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.w_0 = -robotSensorData.w_0);
	buffer += 7;

	robotSensorData.w_1 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.w_1 = -robotSensorData.w_1);
	buffer += 7;

	robotSensorData.w_2 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.w_2 = -robotSensorData.w_2);
	buffer += 9;



	//convert compass
	robotSensorData.c_0 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.c_0 = -robotSensorData.c_0);
	buffer += 7;

	robotSensorData.c_1 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.c_1 = -robotSensorData.c_1);
	buffer += 7;

	robotSensorData.c_2 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.c_2 = -robotSensorData.c_2);
	buffer += 7;

	robotSensorData.c_3 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.c_3 = -robotSensorData.c_3);
	buffer += 9;

	//convert accelerometer
	robotSensorData.a_0 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.a_0 = -robotSensorData.a_0);
	buffer += 7;

	robotSensorData.a_1 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.a_1 = -robotSensorData.a_1);
	buffer += 7;

	robotSensorData.a_2 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.a_2 = -robotSensorData.a_2);
	buffer += 9;

	//convert gyro
	robotSensorData.g_0 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.g_0 = -robotSensorData.g_0);
	buffer += 7;

	robotSensorData.g_1 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.g_1 = -robotSensorData.g_1);
	buffer += 7;

	robotSensorData.g_2 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.g_2 = -robotSensorData.g_2);
	buffer += 9;


	//convert euler
	robotSensorData.e_0 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.e_0 = -robotSensorData.e_0);
	buffer += 7;

	robotSensorData.e_1 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.e_1 = -robotSensorData.e_1);
	buffer += 7;

	robotSensorData.e_2 = 	(buffer[1]-'0')*10000 	+
							(buffer[2]-'0')*1000 	+
							(buffer[3]-'0')*100	+
							(buffer[4]-'0')*10 	+
							(buffer[5]-'0')*1		;
	if (buffer[0] == '-') (robotSensorData.e_2 = -robotSensorData.e_2);
	omniAvailFlag = 1;
	return 0;
}

int32_t decay_speeds(){

	x_speed = X_DECAY*x_speed + x_accumulator;
	x_accumulator = 0;
	x_speed = x_speed > 70 ? 70 : x_speed;
	x_speed = x_speed < -70 ? -70 : x_speed;

	y_speed = Y_DECAY*y_speed + y_accumulator;
	y_accumulator = 0;
	y_speed = y_speed > 70 ? 70 : y_speed;
	y_speed = y_speed < -70 ? -70 : y_speed;

	t_speed = T_DECAY*t_speed + t_accumulator;
	t_accumulator = 0;
	t_speed = t_speed > 70 ? 70 : t_speed;
	t_speed = t_speed < -70 ? -70 : t_speed;

	return 0;
}

int32_t send_motor_command_rate_coding(){

	strcpy(motor_command_string, "!D");
	itoa((int) x_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, ",");

	itoa((int) y_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, ",");

	itoa((int) t_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, "\n");

	usart3_sendString(motor_command_string);

	return 0;

}

int32_t send_motor_command_value_coding(){

	strcpy(motor_command_string, "!D");
	itoa((int) x_payload_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, ",");

	itoa((int) y_payload_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, ",");

	itoa((int) t_payload_speed, num_buffer,10);
	strcat(motor_command_string, num_buffer);
	strcat(motor_command_string, "\n");

	usart3_sendString(motor_command_string);

	return 0;
}


int32_t omnibot_command_cycle(){

	if(motor_count >= MOTOR_COMMAND_CYCLE) {
		motor_count = 1;

		if (MGMT_ARRAY[RATE_CODING_ACTUATORS_ENABLE]) {
			//Decay Motor Commands, send new motor values to robot:
			decay_speeds();
			send_motor_command_rate_coding();
		}
		else {
			//Send along the motor values:
			send_motor_command_value_coding();
		}
	}
	else {
		motor_count++;
	}


	//Resend Motor Init commands (failsafe, actually we shouldn't need this)
	if(motor_init_cmd_cycle_1 >= MOTOR_INIT_COMMAND_CYCLE) {
		usart3_sendString("!E2\r\n");
		motor_init_cmd_cycle_1 = 1;
//		USART_SendData(USART_USB,'E');

		//this should not go here, however it fits at the moment..
//		edvs_dma_transmission("!E+\r",4);
	}
	else motor_init_cmd_cycle_1++;

	if(motor_init_cmd_cycle_2 >= MOTOR_INIT_COMMAND_CYCLE) {
		usart3_sendString("!I1,2,A\r\n");
		motor_init_cmd_cycle_2 = 1;
//		USART_SendData(USART_USB,'I');
	}
	else motor_init_cmd_cycle_2++;

	return 0;
}

void value_coding(spin_link_pkg_t *outputPackage) {
	//Check whether new data is available:
	if(omniAvailFlag){
		omniAvailFlag = 0;

		int i = 0;
		// Send all available data to spiNNaker
		for (i=0; i<6; i++) {
			outputPackage->header = 0x2;
			outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[BUMP0+i] & DEL_UPPER_16);
			outputPackage->payload = ((robotSensorData.bump >> i) & 1) ? 1 : 0;
			spin_link_packet_send(outputPackage,1);
		}

		//Wheel Values:
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[WHEEL_0_VEL_POSITIVE] & DEL_UPPER_16);
		//CD: if sth. is not working, check signed - unsigned conversion here:
		outputPackage->payload = robotSensorData.w_0;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[WHEEL_1_VEL_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.w_1;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[WHEEL_2_VEL_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.w_2;
		spin_link_packet_send(outputPackage,1);

		//Gyro Values:
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[GYRO_x_POSITIVE] & DEL_UPPER_16);
		//CD: if sth. is not working, check signed - unsigned conversion here:
		outputPackage->payload = robotSensorData.g_0;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[GYRO_y_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.g_1;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[GYRO_z_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.g_2;
		spin_link_packet_send(outputPackage,1);

		//Accelerometer Values:
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[ACCEL_x_POSITIVE] & DEL_UPPER_16);
		//CD: if sth. is not working, check signed - unsigned conversion here:
		outputPackage->payload = robotSensorData.a_0;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[ACCEL_y_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.a_1;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[ACCEL_z_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.a_2;
		spin_link_packet_send(outputPackage,1);

		//Euler Values:
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[EULER_x_POSITIVE] & DEL_UPPER_16);
		//CD: if sth. is not working, check signed - unsigned conversion here:
		outputPackage->payload = robotSensorData.e_0;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[EULER_y_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.e_1;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[EULER_z_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.e_2;
		spin_link_packet_send(outputPackage,1);

		//Compass Values:
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[COMPASS_0_POSITIVE] & DEL_UPPER_16);
		//CD: if sth. is not working, check signed - unsigned conversion here:
		outputPackage->payload = robotSensorData.c_0;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[COMPASS_1_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.c_1;
		spin_link_packet_send(outputPackage,1);
		outputPackage->header = 0x2;
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[COMPASS_2_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.c_2;
		spin_link_packet_send(outputPackage,1);
		outputPackage->key = (MGMT_ARRAY[OMNIBOT_XY] & DEL_LOWER_16) | (MGMT_ARRAY[COMPASS_3_POSITIVE] & DEL_UPPER_16);
		outputPackage->payload = robotSensorData.c_3;
		spin_link_packet_send(outputPackage,1);
	}
}

int32_t manage_neurons(uint32_t key, uint32_t payload) {
	//In the neuron array, set the new neuron key to the received payload. Delete all bits >=MGMT_KEY first!
	if ((key & (~0xFFFFFC00)) > 0x1FF) {
		//Definitely not a correct management key, return!
		return -1;
	}

	// FIXME! Quick and Dirty enabling / disabling of the Retinas, FIX LATER!
	if ((key & (~0xFFFFFC00)) == EDVS1_ENABLE) {
		if (payload == 0) {
			uart5_sendString("Disabling Retina 1\n");
			usart1_sendString("!E0\r!E-\rE-\r");
//			usart1_sendDataFromBufferBlocking();
		}
		else {
			uart5_sendString("Enabling Retina 1\n");
			usart1_sendString("!E0\r!E+\rE+\r");
//			usart1_sendDataFromBufferBlocking();
		}
	}
	if ((key & (~0xFFFFFC00)) == EDVS2_ENABLE) {
		if (payload == 0) {
			uart5_sendString("Disabling Retina 2\n");
			usart6_sendString("!E0\r!E-\rE-\r");
//			usart6_sendDataFromBufferBlocking();
		}
		else {
			uart5_sendString("Enabling Retina 2\n");
			usart6_sendString("!E0\r!E+\rE+\r");
//			usart6_sendDataFromBufferBlocking();
		}
	}
	// END FIXME!

	MGMT_ARRAY[(key & (~0xFFFFFC00))] = payload;
	return 0;
}
