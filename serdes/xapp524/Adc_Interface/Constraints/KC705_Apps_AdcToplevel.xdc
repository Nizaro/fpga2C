#--------------------------------------------------------------------------------------------
#-   ____  ____
#-  /   /\/   /
#- /___/  \  /
#- \   \   \/    © Copyright 2016 - 2018 Xilinx, Inc. All rights reserved.
#-  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
#-  /   /        and is protected under U.S. and international copyright and other
#- /___/   /\    intellectual property laws.
#- \   \  / 
#-  \___\/\___ 
#-
#--------------------------------------------------------------------------------------------
#- Device:              Ultrascale
#- Author:              Defossez
#- Entity Name:          KC705_Apps_AdcToplevel
#- Purpose:             Constraint file for for testing of the Apps hierarchical level
#-                      of design.
#- Tools:               Vivado_2017.3 or later
#- Limitations:         none
#-
#- Vendor:              Xilinx Inc.
#- Version:
#- Filename:             KC705_Apps_AdcToplevel.xdc
#- Date Created:        Jan 2016
#- Date Last Modified:  Jan 2016
#--------------------------------------------------------------------------------------------
#- Disclaimer:
#-		This disclaimer is not a license and does not grant any rights to the materials
#-		distributed herewith. Except as otherwise provided in a valid license issued to you
#-		by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE MATERIALS
#-		ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
#-		WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED
#-		TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR
#-		PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort, including
#-		negligence, or under any other theory of liability) for any loss or damage of any
#-		kind or nature related to, arising under or in connection with these materials,
#-		including for any direct, or any indirect, special, incidental, or consequential
#-		loss or damage (including loss of data, profits, goodwill, or any type of loss or
#-		damage suffered as a result of any action brought by a third party) even if such
#-		damage or loss was reasonably foreseeable or Xilinx had been advised of the
#-		possibility of the same.
#-
#- CRITICAL APPLICATIONS
#-		Xilinx products are not designed or intended to be fail-safe, or for use in any
#-		application requiring fail-safe performance, such as life-support or safety devices
#-		or systems, Class III medical devices, nuclear facilities, applications related to
#-		the deployment of airbags, or any other applications that could lead to death,
#-		personal injury, or severe property or environmental damage (individually and
#-		collectively, "Critical Applications"). Customer assumes the sole risk and
#-		liability of any use of Xilinx products in Critical Applications, subject only to
#-		applicable laws and regulations governing limitations on product liability.
#-
#- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
#-
#- Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
#--------------------------------------------------------------------------------------------
#- Revision History:
#-  Rev. 10 Jan 2016
#-      Changed the original UCF file into an XDC file for use with Vivado.
#--------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------
# Timing constraints
#-------------------------------------------------------------------------------------------
# ADC Bit clock input is as sample taken at the FPGA pin as 800MHz.
# 800MHz = 1.250ns = ISERDES.CLK and ISERDES.CLKDIV = 5.000ns = 200MHz (4xCLK)
# For the test application only 2-channels are implemented -- ] Reason = Loopback hardware 
# testing on Xilinx development board .
# Bit clock input passed though a BUFIO ==] direct/dedicated routing to ISERDES.CLK inputs.
# This path from the package pin to the ISERDES.CLK inputs is routed through an IDELAY,
# BUFIO on dedicated clock nets. Timing cannot improve this and thus this path chould be
# excluded from timing checks.
# Bit clock input passed though BUFR(divide) ==] normal clock routing to ISERDES.CLKDIV.
# This path must be under timing control because the clock is not only used for ISERDES.CLKDIV
# but also for normal clocked logic.
#
create_clock -period 1.250 -name AdcBitClk -waveform {0.000 0.625} [get_ports Adc_DCLK_0_p_pin]
#
# Create a clock path for all logic including the clocks fo rthe IDELAYs..
# Input clock is set to be: 100MHz.
# For the necessary MMCM calculations see the Mmcm_Clock.vhd file.
create_clock -period 10.000 -name SysClk -waveform {0.000 5.000} [get_ports Sys_Clk_p_pin]
#
# Remove the path from the ADC forwarded clock package pin to all ISERDES.CLK pins from the timing
# engine and timing checking for place&route.
set_false_path  -from [get_ports Adc_DCLK_0_p_pin] \
                -through [get_cells Apps_AdcToplevel_I_AdcToplevel/AdcToplevel_I_AdcClock/AdcClock_I_Isrds_Master] \
                -through [get_cells Apps_AdcToplevel_I_AdcToplevel/AdcToplevel_I_AdcClock/AdcClock_I_Bufio] \
                -to [get_cells -hierarchical "*Isrds*"]
#
# Create a clock path for the timing engine from the BUFR output to all elements using this clock.
create_generated_clock -name AdcBitClkDiv \
                        -source [get_pins Apps_AdcToplevel_I_AdcToplevel/AdcToplevel_I_AdcClock/AdcClock_I_Isrds_Master/DDLY] \
                        -divide_by 4 [get_nets -hierarchical "*IntClkDiv*"]
#
set_false_path -from [get_clocks AdcBitClkDiv] -to [get_clocks AdcBitClk]
set_false_path -from [get_clocks AdcBitClk] -to [get_clocks AdcBitClk]
#
# Application constraints
set_false_path -from [get_clocks IntMmcm_SysClk3] -to [get_clocks AdcBitClkDiv]
set_false_path -from [get_clocks AdcBitClkDiv] -to [get_clocks IntMmcm_SysClk3]
set_false_path -from [get_clocks AdcBitClkDiv] -to [get_clocks IntMmcm_SysClk1]
set_false_path -from [get_clocks IntMmcm_SysClk1] -to [get_clocks AdcBitClkDiv]
#
#-------------------------------------------------------------------------------------------
# Create and area for the out_of_context design block.
#-------------------------------------------------------------------------------------------
create_pblock Apps_AdcToplevel
resize_pblock [get_pblocks Apps_AdcToplevel] -add {SLICE_X0Y60:SLICE_X7Y89}
    add_cells_to_pblock [get_pblocks Apps_AdcToplevel] [get_cells -quiet [list \
        Apps_AdcToplevel_I_AdcToplevel
        ]]
#
#-------------------------------------------------------------------------------------------
# Pin LOC constraints
#-------------------------------------------------------------------------------------------
# USER_SMA_CLOCK_P   IOSTANDARD=LVDS_25  VCCO - VCC2V5_FPGA - IO_L12P_T1_MRCC_AD5P_15
# USER_SMA_CLOCK_N   IOSTANDARD=LVDS_25  VCCO - VCC2V5_FPGA - IO_L12N_T1_MRCC_AD5N_15
set_property PACKAGE_PIN  L25  [get_ports Sys_Clk_p_pin]          
set_property PACKAGE_PIN  K25  [get_ports Sys_Clk_n_pin]          
#
# GPIO_LED_4_LS   IOSTANDARD=LVCMOS25; # Bank  13 VCCO - VADJ_FPGA - IO_25_13
# GPIO_LED_5_LS   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_0_17
# GPIO_LED_6_LS   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_25_17
# GPIO_LED_7_LS   IOSTANDARD=LVCMOS25; # Bank  18 VCCO - VADJ_FPGA - IO_25_18
set_property PACKAGE_PIN  AE26 [get_ports AdcIntrfcStats_pin[3]]  
set_property PACKAGE_PIN  G19  [get_ports AdcIntrfcStats_pin[2]]  
set_property PACKAGE_PIN  E18  [get_ports AdcIntrfcStats_pin[1]]  
set_property PACKAGE_PIN  F16  [get_ports AdcIntrfcStats_pin[0]]  
#
# GPIO_SW_N   IOSTANDARD=LVCMOS15; # Bank  33 VCCO - VCC1V5_FPGA - IO_L1P_T0_33
set_property PACKAGE_PIN  AA12 [get_ports Adc_ReSync_pin]         
#
# FMC_LPC_LA33_P    IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L7P_T1_13
# FMC_LPC_LA33_N    IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L7N_T1_13
# FMC_LPC_LA32_P   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L8P_T1_13
# FMC_LPC_LA32_N   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L8N_T1_13
set_property PACKAGE_PIN  AC29 [get_ports Adc_DI_1_0_p_pin]       
set_property PACKAGE_PIN  AC30 [get_ports Adc_DI_1_0_n_pin]       
set_property PACKAGE_PIN  Y30  [get_ports Adc_DI_3_0_p_pin]       
set_property PACKAGE_PIN  AA30 [get_ports Adc_DI_3_0_n_pin]       
#
# FMC_LPC_LA18_CC_P   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L11P_T1_SRCC_13
# FMC_LPC_LA18_CC_N   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L11N_T1_SRCC_13
# FMC_LPC_LA17_CC_P   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L12P_T1_MRCC_13
# FMC_LPC_LA17_CC_N   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L12N_T1_MRCC_13
set_property PACKAGE_PIN  AD27 [get_ports Adc_FCLK_0_p_pin]       
set_property PACKAGE_PIN  AD28 [get_ports Adc_FCLK_0_n_pin]       
set_property PACKAGE_PIN  AB27 [get_ports Adc_DCLK_0_p_pin]       
set_property PACKAGE_PIN  AC27 [get_ports Adc_DCLK_0_n_pin]       
#
# FMC_LPC_LA28_P   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L16P_T2_13
# FMC_LPC_LA28_N   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L16N_T2_13
# FMC_LPC_LA27_P   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L17P_T2_13
# FMC_LPC_LA27_N   IOSTANDARD=LVCMOS25  VCCO - VADJ_FPGA - IO_L17N_T2_13
set_property PACKAGE_PIN  AE30 [get_ports Adc_DI_0_0_p_pin]       
set_property PACKAGE_PIN  AF30 [get_ports Adc_DI_0_0_n_pin]       
set_property PACKAGE_PIN  AJ28 [get_ports Adc_DI_2_0_p_pin]       
set_property PACKAGE_PIN  AJ29 [get_ports Adc_DI_2_0_n_pin]       
#
# FMC_HPC_LA09_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L17P_T2_16
# FMC_HPC_LA09_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L17N_T2_16
# FMC_HPC_LA08_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L18P_T2_16
# FMC_HPC_LA08_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L18N_T2_16
# FMC_HPC_LA02_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L19P_T3_16
# FMC_HPC_LA02_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L19N_T3_VREF_16
# FMC_HPC_LA04_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L20P_T3_16
# FMC_HPC_LA04_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L20N_T3_16
# FMC_HPC_LA11_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L21P_T3_DQS_16
# FMC_HPC_LA11_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L21N_T3_DQS_16
# FMC_HPC_LA05_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L22P_T3_16
# FMC_HPC_LA05_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L22N_T3_16
# FMC_HPC_LA03_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L23P_T3_16
# FMC_HPC_LA03_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L23N_T3_16
# FMC_HPC_LA06_P   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L24P_T3_16
# FMC_HPC_LA06_N   IOSTANDARD=LVCMOS25; # Bank  16 VCCO - VADJ_FPGA - IO_L24N_T3_16
set_property PACKAGE_PIN  B30  [get_ports AdcFrmDataOut_pin[15]]  
set_property PACKAGE_PIN  A30  [get_ports AdcFrmDataOut_pin[14]]  
set_property PACKAGE_PIN  E29  [get_ports AdcFrmDataOut_pin[13]]  
set_property PACKAGE_PIN  E30  [get_ports AdcFrmDataOut_pin[12]]  
set_property PACKAGE_PIN  H24  [get_ports AdcFrmDataOut_pin[11]]  
set_property PACKAGE_PIN  H25  [get_ports AdcFrmDataOut_pin[10]]  
set_property PACKAGE_PIN  G28  [get_ports AdcFrmDataOut_pin[9]]   
set_property PACKAGE_PIN  F28  [get_ports AdcFrmDataOut_pin[8]]   
set_property PACKAGE_PIN  G27  [get_ports AdcFrmDataOut_pin[7]]   
set_property PACKAGE_PIN  F27  [get_ports AdcFrmDataOut_pin[6]]   
set_property PACKAGE_PIN  G29  [get_ports AdcFrmDataOut_pin[5]]   
set_property PACKAGE_PIN  F30  [get_ports AdcFrmDataOut_pin[4]]   
set_property PACKAGE_PIN  H26  [get_ports AdcFrmDataOut_pin[3]]   
set_property PACKAGE_PIN  H27  [get_ports AdcFrmDataOut_pin[2]]   
set_property PACKAGE_PIN  H30  [get_ports AdcFrmDataOut_pin[1]]   
set_property PACKAGE_PIN  G30  [get_ports AdcFrmDataOut_pin[0]]   
#
# FMC_HPC_LA19_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L16P_T2_17
# FMC_HPC_LA19_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L16N_T2_17
# FMC_HPC_LA29_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L17P_T2_17
# FMC_HPC_LA29_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L17N_T2_17
# FMC_HPC_LA25_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L18P_T2_17
# FMC_HPC_LA25_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L18N_T2_17
# FMC_HPC_LA22_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L19P_T3_17
# FMC_HPC_LA22_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L19N_T3_VREF_17
# FMC_HPC_LA24_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L20P_T3_17
# FMC_HPC_LA24_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L20N_T3_17
# FMC_HPC_LA21_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L21P_T3_DQS_17
# FMC_HPC_LA21_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L21N_T3_DQS_17
# FMC_HPC_LA26_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L22P_T3_17
# FMC_HPC_LA26_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L22N_T3_17
# FMC_HPC_LA23_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L23P_T3_17
# FMC_HPC_LA23_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L23N_T3_17
# FMC_HPC_LA27_P   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L24P_T3_17
# FMC_HPC_LA27_N   IOSTANDARD=LVCMOS25; # Bank  17 VCCO - VADJ_FPGA - IO_L24N_T3_17
set_property PACKAGE_PIN  G18   [get_ports AdcMemDataOut_pin[17]] 
set_property PACKAGE_PIN  F18   [get_ports AdcMemDataOut_pin[16]] 
set_property PACKAGE_PIN  C17   [get_ports AdcMemDataOut_pin[15]] 
set_property PACKAGE_PIN  B17   [get_ports AdcMemDataOut_pin[14]] 
set_property PACKAGE_PIN  G17   [get_ports AdcMemDataOut_pin[13]] 
set_property PACKAGE_PIN  F17   [get_ports AdcMemDataOut_pin[12]] 
set_property PACKAGE_PIN  C20   [get_ports AdcMemDataOut_pin[11]] 
set_property PACKAGE_PIN  B20   [get_ports AdcMemDataOut_pin[10]] 
set_property PACKAGE_PIN  A16   [get_ports AdcMemDataOut_pin[9]]  
set_property PACKAGE_PIN  A17   [get_ports AdcMemDataOut_pin[8]]  
set_property PACKAGE_PIN  A20   [get_ports AdcMemDataOut_pin[7]]  
set_property PACKAGE_PIN  A21   [get_ports AdcMemDataOut_pin[6]]  
set_property PACKAGE_PIN  B18   [get_ports AdcMemDataOut_pin[5]]  
set_property PACKAGE_PIN  A18   [get_ports AdcMemDataOut_pin[4]]  
set_property PACKAGE_PIN  B22   [get_ports AdcMemDataOut_pin[3]]  
set_property PACKAGE_PIN  A22   [get_ports AdcMemDataOut_pin[2]]  
set_property PACKAGE_PIN  C19   [get_ports AdcMemDataOut_pin[1]]  
set_property PACKAGE_PIN  B19   [get_ports AdcMemDataOut_pin[0]]  
#
#-------------------------------------------------------------------------------------------
# The end


