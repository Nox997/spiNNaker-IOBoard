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
    uni9000_ver_m_00000000001028057173_0525068034_init();
    work_m_00000000000048008119_1674603845_init();
    uni9000_ver_m_00000000000236260522_2449448540_init();
    uni9000_ver_m_00000000003510477262_2316096324_init();
    uni9000_ver_m_00000000003317509437_1759035934_init();
    uni9000_ver_m_00000000001566228165_4138858648_init();
    work_m_00000000003758100297_0415354604_init();
    uni9000_ver_m_00000000003266096158_0690727491_init();
    work_m_00000000000994061735_2693575167_init();
    uni9000_ver_m_00000000003149700083_1668249201_init();
    work_m_00000000002787837946_0874622954_init();
    uni9000_ver_m_00000000001762375489_3501834183_init();
    work_m_00000000003675057688_1356969937_init();
    uni9000_ver_m_00000000002123152668_0970595058_init();
    work_m_00000000001441931797_0108331815_init();
    uni9000_ver_m_00000000001162476414_1323117156_init();
    work_m_00000000000437127944_2608521809_init();
    uni9000_ver_m_00000000003960923341_1435897813_init();
    work_m_00000000001847745219_4262822733_init();
    uni9000_ver_m_00000000002123152668_3476364530_init();
    work_m_00000000001688772711_1825043173_init();
    work_m_00000000000834567448_2372134139_init();
    uni9000_ver_m_00000000001566228165_3431564765_init();
    work_m_00000000001605256345_0331568595_init();
    work_m_00000000004064483342_2347313499_init();
    work_m_00000000001254848863_0285878917_init();
    uni9000_ver_m_00000000000924517765_3125220529_init();
    work_m_00000000000954556848_1554207139_init();
    work_m_00000000000569405358_3825574354_init();
    work_m_00000000001635770664_0553542362_init();
    work_m_00000000004064483342_2097964076_init();
    work_m_00000000001375497685_2623622230_init();
    uni9000_ver_m_00000000002549801008_4245414866_init();
    uni9000_ver_m_00000000001461499759_1414817250_init();
    work_m_00000000001340165503_2268880115_init();
    uni9000_ver_m_00000000003910199674_3201792124_init();
    uni9000_ver_m_00000000003180798007_3385870570_init();
    uni9000_ver_m_00000000001084202422_1356405072_init();
    uni9000_ver_m_00000000003708977463_0342378215_init();
    uni9000_ver_m_00000000001913459263_0548662751_init();
    work_m_00000000001361948070_1791835022_init();
    uni9000_ver_m_00000000002321652869_2814283601_init();
    work_m_00000000001642865764_2764906934_init();
    work_m_00000000001359538505_0753314697_init();
    uni9000_ver_m_00000000000797225129_2567706876_init();
    work_m_00000000002617303813_3966923968_init();
    work_m_00000000003297800797_3324854895_init();
    work_m_00000000001865441554_0262173959_init();
    work_m_00000000003914892320_1630491562_init();
    work_m_00000000001164404382_0286164271_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001164404382_0286164271");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}