#--------------------------------------------------------------------------------------------
#- � Copyright 2016 - 2018, Xilinx, Inc. All rights reserved.
#- This file contains confidential and proprietary information of Xilinx, Inc. and is
#- protected under U.S. and international copyright and other intellectual property laws.
#--------------------------------------------------------------------------------------------
#-
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
#-		Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
#-   ____  ____
#-  /   /\/   /
#- /___/  \  / 			Vendor:              Xilinx Inc.
#- \   \   \/ 			Version:             V1.01
#-  \   \        		Filename:            CntTenBit.do
#-  /   /        		Date Created:        15 Mar 2011
#- /___/   /\    		Date Last Modified:  01 Feb 2018
#- \   \  /  \
#-  \___\/\___\
#-
#- Device:          Virtex6, 7-Series
#- Author:          Defossez
#- Entity Name:     CntTenBit
#- Purpose:         QuestaSim simulation project file.
#- Tools:           Questa-Sim 10.5b or later
#- Limitations:     none
#-
#- Revision History:
#-  Rev. 01 Feb 2018 Defossez
#-      Files set up to date for QuestaSim_10.5 d and Vivado_2017.4 or later.
#--------------------------------------------------------------------------------------------
# This script can be executed from within the QuestaSim GUI.
#   - Start Questa-Sim
#   -   Click: [Tools] tab
#   -   Select: Tcl
#   -   Select: Execute Macro
#   -       Browse to find this file (./Simscripts/Byte_TopNative_RxTx_PrbsFuncSim.do).
#   -       Select it and hit [Open].
#--------------------------------------------------------------------------------------------
# In a project the directory containing this and other simulation scripts is: ./SimScripts.
# In a project the directory containing the files used for and by simulation is: ./Simulation.
# It is assumed that QuestaSim is started from within the ./SimScripts directory.
#   Read the ReadMe.md file in the ./SimScript folder (open it with a text editor).
# It is thus necessary to change to the projects ./SimScripts directory in order to run this
# .do file from within QuestaSim.
#--------------------------------------------------------------------------------------------
cd ../Simulation
#--------------------------------------------------------------------------------------------
#- Check if there are already compiled design libraries, if not create it (name it by
#- default 'work'). Create other design libraries depending the hierarchy of the design.
#--------------------------------------------------------------------------------------------
if {![file exists xil_defaultlib]} {
    vlib xil_defaultlib
}
if {![file exists adcbulkmem_lib]} {
    vlib adcbulkmem_lib
}
#--------------------------------------------------------------------------------------------
#- Compile the source code and drop it it in the correct library.
#-      The "-modelsimini" command attribute can be add to each or selected lines when it is
#-      necessary to use a none default modelsim.ini file. The default modelsim.ini file
#-      resides in the QuestaSim installation directory and points to the directory with
#-      Vivado compiled FPGA libraries. When QuestaSim is started it is picked up
#-      automatically, but when a specific modelsim.ini file must be used, all QuestaSim
#-      commands must have the attribute "-modelsimini" in order to find that specific
#-      modelsim.ini file.
#--------------------------------------------------------------------------------------------
#-
vcom -novopt -work adcbulkmem_lib   {../vhdl/CntFourBit.vhd}
vcom -novopt -work adcbulkmem_lib   {../vhdl/CntTwoBit.vhd}
vcom -novopt -work adcbulkmem_lib   {../vhdl/CntTenBit.vhd}
vcom -novopt -work adcbulkmem_lib   {../vhdl/CntTwelveBit.vhd}
#-
vcom -novopt -work xil_defaultlib   {../Vhdl/CntTenBit.vhd}
vcom -novopt -work xil_defaultlib   {../Vhdl/CntTenBit_Tester.vhd}
vcom -novopt -work xil_defaultlib   {../Vhdl/CntTenBit_Testbench.vhd}
#--------------------------------------------------------------------------------------------
#- Simulate the design with or without SDF files.
#- Simulation with SDF files take the options -sdfmin, -sdftyp, -sdfmax.
#-      The values in the SDF files can be scaled with @timing
#-                       (-sdfmax@1.5 scales the max timing by 150%)
#-      The simulation code is by default optimized (faster simulation).
#-      This is a setting in the modelsim.ini file.
#-      I've seen that this option strips sometimes signals from the design and prevents them being
#-      viewed in the waveforms. Therefore, turn the optimisation OFF.
#-      In stead of doing this in the modelsim.ini file, I add a command option to the
#-      vsim command: "-novopt".
#--------------------------------------------------------------------------------------------
# Generate top level simulation file (Without SDF).
vsim -novopt -L secureip xil_defaultlib.CntTenBit_Testbench(CntTenBit_Testbench_struct)
#--------------------------------------------------------------------------------------------
#- Invoke from here the waveform file in the QuestaSim viewer.
#- The waveform file can be generated from a initial waveform setup in the GUI.
#--------------------------------------------------------------------------------------------
do ../SimScripts/CntTenBit_FuncWave.do
#--------------------------------------------------------------------------------------------
#- Run the simulation
#--------------------------------------------------------------------------------------------
run 5000
#--------------------------------------------------------------------------------------------
