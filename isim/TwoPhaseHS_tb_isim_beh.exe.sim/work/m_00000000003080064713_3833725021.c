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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Wooster/Documents/CSE320/Homework6/HW6/Problem3/TwoPhaseHS_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_69_0(char *t0)
{
    char t13[8];
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
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3704);
    t3 = (t0 + 3456);
    xsi_add_process_toexecute(0, t2, t3);
    t4 = (t0 + 3952);
    t5 = (t0 + 3456);
    xsi_add_process_toexecute(0, t4, t5);
    t6 = (t0 + 4200);
    t7 = (t0 + 3456);
    xsi_add_process_toexecute(0, t6, t7);
    t8 = (t0 + 4448);
    t9 = (t0 + 3456);
    xsi_add_process_toexecute(0, t8, t9);
    t10 = (t0 + 4696);
    t11 = (t0 + 3456);
    xsi_add_process_toexecute(0, t10, t11);
    t12 = (t0 + 2728);
    memset(t13, 0, 8);
    *((unsigned int *)t13) = 5;
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 32);
    t14 = (t0 + 5208);
    *((int *)t14) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t15 = (t0 + 2728);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    if (*((int *)t17) > 0)
        goto LAB5;

LAB6:    t19 = (t0 + 3456);
    xsi_clean_active_fork_process_list(t19);
    goto LAB1;

LAB5:    t18 = (t0 + 5208);
    *((int *)t18) = 1;
    goto LAB1;

}

static void Forked_72_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 3704);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(72, ng0);

LAB6:    xsi_set_current_line(73, ng0);

LAB7:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 3704);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB5:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memcpy(t4, t5, 8);
    t9 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t9 - 1);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 32);
    goto LAB2;

LAB8:    xsi_set_current_line(73, ng0);
    t5 = (t0 + 2088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t8) == 0)
        goto LAB9;

LAB11:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB12:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB14;

LAB13:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t0 + 2088);
    xsi_vlogvar_assign_value(t25, t4, 0, 0, 1);
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB14:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB13;

LAB15:    goto LAB5;

}

static void Forked_75_2(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 3952);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(75, ng0);

LAB6:    xsi_set_current_line(76, ng0);

LAB7:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 3952);
    xsi_process_wait(t3, 6000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB5:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memcpy(t4, t5, 8);
    t9 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t9 - 1);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 32);
    goto LAB2;

LAB8:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 2248);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t8) == 0)
        goto LAB9;

LAB11:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB12:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB14;

LAB13:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t0 + 2248);
    xsi_vlogvar_assign_value(t25, t4, 0, 0, 1);
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB14:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB13;

LAB15:    goto LAB5;

}

static void Forked_78_3(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;

LAB0:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4200);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(78, ng0);

LAB6:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB5:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t5, t4, 8);
    t6 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t6 - 1);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 32);
    goto LAB2;

}

static void Forked_84_4(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4448);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(84, ng0);

LAB6:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 4448);
    xsi_process_wait(t3, 100000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB5:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t7, t4, 8);
    t8 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t8 - 1);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);
    goto LAB2;

LAB7:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 5224);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 4448);
    xsi_process_wait(t4, 1000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(86, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5240);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(87, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5256);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 4448);
    xsi_process_wait(t4, 1000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(88, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5272);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB5;

}

static void Forked_91_5(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;

LAB0:    t1 = (t0 + 4888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4696);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(91, ng0);

LAB6:
LAB5:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t5, t4, 8);
    t6 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t6 - 1);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 32);
    goto LAB2;

}


extern void work_m_00000000003080064713_3833725021_init()
{
	static char *pe[] = {(void *)Initial_69_0,(void *)Forked_72_1,(void *)Forked_75_2,(void *)Forked_78_3,(void *)Forked_84_4,(void *)Forked_91_5};
	xsi_register_didat("work_m_00000000003080064713_3833725021", "isim/TwoPhaseHS_tb_isim_beh.exe.sim/work/m_00000000003080064713_3833725021.didat");
	xsi_register_executes(pe);
}
