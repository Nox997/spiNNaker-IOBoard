/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void Gate_34_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    xsi_vlog_notGate(t7, t3);
    t8 = (t0 + 1928);
    xsi_driver_vfirst_trans(t8, 0, 0);
    t9 = (t0 + 1876);
    *((int *)t9) = 1;

LAB1:    return;
}

static void Gate_35_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    t2 = (t0 + 1964);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    xsi_vlog_AndGate(t8, 2, t3, t4);
    t9 = (t0 + 1964);
    xsi_driver_vfirst_trans(t9, 0, 0);
    t10 = (t0 + 1884);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void uni9000_ver_m_00000000003960923341_1435897813_init()
{
	static char *pe[] = {(void *)Gate_34_0,(void *)Gate_35_1};
	xsi_register_didat("uni9000_ver_m_00000000003960923341_1435897813", "isim/main_isim_beh.exe.sim/uni9000_ver/m_00000000003960923341_1435897813.didat");
	xsi_register_executes(pe);
}
