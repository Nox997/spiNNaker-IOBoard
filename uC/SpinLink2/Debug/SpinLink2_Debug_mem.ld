/*
 * GENERATED FILE - DO NOT EDIT
 * (C) Code Red Technologies Ltd, 2008-2012
 * Linker script memory definitions
 * Created from LinkMemoryTemplate
 * By Red Suite v4.2.2 [Build 361] [03/04/2012]  on Mon Sep 24 15:42:50 CEST 2012)
*/

MEMORY
{
  /* Define each memory region */
  MFlash1024 (rx) : ORIGIN = 0x8000000, LENGTH = 0x100000 /* 1024k */
  Ram112 (rwx) : ORIGIN = 0x20000000, LENGTH = 0x1c000 /* 112k */
  PeriphRam16 (rwx) : ORIGIN = 0x2001c000, LENGTH = 0x4000 /* 16k */
  Ram64 (rwx) : ORIGIN = 0x10000000, LENGTH = 0x10000 /* 64k */

}
  /* Define a symbol for the top of each memory region */
  __top_MFlash1024 = 0x8000000 + 0x100000;
  __top_Ram112 = 0x20000000 + 0x1c000;
  __top_PeriphRam16 = 0x2001c000 + 0x4000;
  __top_Ram64 = 0x10000000 + 0x10000;

