/*
 * GENERATED FILE - DO NOT EDIT
 * (C) Code Red Technologies Ltd, 2008-2012
 * Generated linker script file for STM32F405RG
 * Created from generic_c.ld (vRed Suite v4.2 (2 [Build 361] [03/04/2012] ))
 * By Red Suite v4.2.2 [Build 361] [03/04/2012]  on Mon Sep 24 15:42:50 CEST 2012
 */


INCLUDE "SpinLink2_Debug_lib.ld"
INCLUDE "SpinLink2_Debug_mem.ld"

ENTRY(ResetISR)

SECTIONS
{

	/* MAIN TEXT SECTION */	
	.text : ALIGN(4)
	{
		FILL(0xff)
		KEEP(*(.isr_vector))
		
		/* Global Section Table */
		. = ALIGN(4) ;
		__section_table_start = .;
		__data_section_table = .;
		LONG(LOADADDR(.data));
		LONG(    ADDR(.data)) ;
		LONG(  SIZEOF(.data));
		LONG(LOADADDR(.data_RAM2));
		LONG(    ADDR(.data_RAM2)) ;
		LONG(  SIZEOF(.data_RAM2));
		LONG(LOADADDR(.data_RAM3));
		LONG(    ADDR(.data_RAM3)) ;
		LONG(  SIZEOF(.data_RAM3));
		__data_section_table_end = .;
		__bss_section_table = .;
		LONG(    ADDR(.bss));
		LONG(  SIZEOF(.bss));
		LONG(    ADDR(.bss_RAM2));
		LONG(  SIZEOF(.bss_RAM2));
		LONG(    ADDR(.bss_RAM3));
		LONG(  SIZEOF(.bss_RAM3));
		__bss_section_table_end = .;
		__section_table_end = . ;
		/* End of Global Section Table */
		

		*(.after_vectors*)
		
		*(.text*)
		*(.rodata .rodata.*)
		. = ALIGN(4);
		
	} > MFlash1024

	/*
	 * for exception handling/unwind - some Newlib functions (in common
	 * with C++ and STDC++) use this.
	 */
	.ARM.extab : ALIGN(4)
	{
		*(.ARM.extab* .gnu.linkonce.armextab.*)
	} > MFlash1024
	__exidx_start = .;
	
	.ARM.exidx : ALIGN(4)
	{
		*(.ARM.exidx* .gnu.linkonce.armexidx.*)
	} > MFlash1024
	__exidx_end = .;
	
	_etext = .;
		
	
	.data_RAM2 : ALIGN(4)
	{
	   FILL(0xff)
		*(.data.$RAM2*)
		*(.data.$PeriphRam16*)
	   . = ALIGN(4) ;
	} > PeriphRam16 AT>MFlash1024
	
	.data_RAM3 : ALIGN(4)
	{
	   FILL(0xff)
		*(.data.$RAM3*)
		*(.data.$Ram64*)
	   . = ALIGN(4) ;
	} > Ram64 AT>MFlash1024
	
	/* MAIN DATA SECTION */

	.uninit_RESERVED : ALIGN(4)
	{
		KEEP(*(.bss.$RESERVED*))
	} > Ram112

	.data : ALIGN(4)
	{
		FILL(0xff)
		_data = .;
		*(vtable)
		*(.data*)
		. = ALIGN(4) ;
		_edata = .;
	} > Ram112 AT>MFlash1024

	
	.bss_RAM2 : ALIGN(4)
	{
		*(.bss.$RAM2*)
		*(.bss.$PeriphRam16*)
	   . = ALIGN(4) ;
	} > PeriphRam16
	
	.bss_RAM3 : ALIGN(4)
	{
		*(.bss.$RAM3*)
		*(.bss.$Ram64*)
	   . = ALIGN(4) ;
	} > Ram64

	/* MAIN BSS SECTION */
	.bss : ALIGN(4)
	{
		_bss = .;
		*(.bss*)
		*(COMMON)
		. = ALIGN(4) ;
		_ebss = .;
		PROVIDE(end = .);
	} > Ram112
	
	PROVIDE(_pvHeapStart = .);
	PROVIDE(_vStackTop = __top_Ram112 - 0);
}
