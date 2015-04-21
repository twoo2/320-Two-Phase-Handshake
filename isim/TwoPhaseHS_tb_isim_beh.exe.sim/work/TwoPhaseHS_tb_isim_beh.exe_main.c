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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000000924517765_3125220529_init();
    unisims_ver_m_00000000001508379050_3852734344_init();
    unisims_ver_m_00000000003405408344_3841093685_init();
    work_m_00000000000697516084_2382423540_init();
    work_m_00000000003080064713_3833725021_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003080064713_3833725021");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
