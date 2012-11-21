/*
 * spin_link.h
 *
 *  Created on: Aug 1, 2012
 *      Author: jt
 */

#ifndef SPIN_LINK_H_
#define SPIN_LINK_H_

#include "spin_link_ll.h"
#include <string.h>

#define SPIN_LINK_BUFF_SIZE	127


// Packet definition

typedef struct spin_link_pkg	// SpiNNaker link packet type
		{
		uint8_t		header;
		uint32_t	key;
		uint32_t	payload;
		} spin_link_pkg_t;

typedef struct spin_link_buff
		{
		uint8_t		first;
		uint8_t		last;
		uint8_t		elements;
		struct spin_link_pkg	buffer[SPIN_LINK_BUFF_SIZE];
		}	spin_link_buff_t;


// Bitmasks for header
// Header stuff
#define SPL_PARITY		(uint8_t)(0x01)
#define SPL_PAYLOAD		(uint8_t)(0x02)
#define SPL_PCKG_TYPE	(uint8_t)(0xC0)

//Define package types:
#define MC_PACKAGE 		(uint8_t)(0x0)


// Global variables
spin_link_buff_t		spin_link_out;
spin_link_buff_t		spin_link_in;


// Function
//void spin_link_send_packet(spin_link_pkg_t* packet);

// Buffer stuff
// Buffer stuff
uint8_t	spin_link_buffer_init(void);	// Initialize a buffer
uint8_t spin_link_buffer_push(spin_link_pkg_t* package);	// Push a package into (outbound) buffer
uint8_t spin_link_buffer_pop(spin_link_pkg_t* package); // Pop a package from (outbound) buffer
uint8_t spin_link_package_composer(uint16_t* data, spin_link_pkg_t* package);
void spin_link_packet_send(spin_link_pkg_t* package, uint8_t load);	// Nibble composer

// Buffer functions:
	// Push
	// Pop
	// Init

#endif /* SPIN_LINK_H_ */
