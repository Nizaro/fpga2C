##############################################################################
## Copyright (c) 2012 Xilinx, Inc.
## This design is confidential and proprietary of Xilinx, All Rights Reserved.
##############################################################################
##   ____  ____
##  /   /\/   /
## /___/  \  /   Vendor:                Xilinx
## \   \   \/    Version:               1.0
##  \   \        Filename:              top16_ddr_rx.xdc
##  /   /        Date Last Modified:    Mar 30, 2016
## /___/   /\    Date Created:          Jun 30, 2013
## \   \  / 
##  \___\/\___ 
## 
##Device: 	    7 Series
##Purpose:  	DDR receiver timing constraints for Vivado
##
##Reference:	XAPP1017.pdf
##    
##Revision History:
##    Rev 1.0 - First created (nicks)
##
##############################################################################
##
##  Disclaimer: 
##
##		This disclaimer is not a license and does not grant any rights to the materials 
##              distributed herewith. Except as otherwise provided in a valid license issued to you 
##              by Xilinx, and to the maximum extent permitted by applicable law: 
##              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
##              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
##              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
##              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
##              or tort, including negligence, or under any other theory of liability) for any loss or damage 
##              of any kind or nature related to, arising under or in connection with these materials, 
##              including for any direct, or any indirect, special, incidental, or consequential loss 
##              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
##              as a result of any action brought by a third party) even if such damage or loss was 
##              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
##
##  Critical Applications:
##
##		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
##		requiring fail-safe performance, such as life-support or safety devices or systems, 
##		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
##		or any other applications that could lead to death, personal injury, or severe property or 
##		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
##		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
##		to applicable laws and regulations governing limitations on product liability.
##
##  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
##
##############################################################################
#

# DDR receiver timing constraints

create_clock -period 1.666 -name clkin_p -add [get_ports clkin_p]
# There is a false path from the clock input to clock input serdes
set_false_path -from [get_ports clkin_p] -to [get_pins -hier -filter {name =~ *iserdes_cm/DDLY}]

# Pin constraints

set_property PACKAGE_PIN  	AD12 	[get_ports refclkin];		set_property IOSTANDARD 	LVCMOS15 [get_ports refclkin]

set_property PACKAGE_PIN 	AG29 	[get_ports dummy];		set_property IOSTANDARD 	LVCMOS25 [get_ports dummy];		#  
set_property PACKAGE_PIN 	AH29 	[get_ports reset];		set_property IOSTANDARD 	LVCMOS25 [get_ports reset];		#  

set_property PACKAGE_PIN 	AD23 	[get_ports clkin_p]; 		set_property DIFF_TERM 		TRUE 	[get_ports clkin_p];		set_property IOSTANDARD 	LVDS_25 [get_ports clkin_p];		# 
set_property PACKAGE_PIN 	AE24 	[get_ports clkin_n];		set_property DIFF_TERM 		TRUE 	[get_ports clkin_n];		set_property IOSTANDARD 	LVDS_25 [get_ports clkin_n];            # 
                                                                                                                                                                                                                        
set_property PACKAGE_PIN 	AC22	[get_ports {datain_p[0]}]; 	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[0]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[0]}];	# 
set_property PACKAGE_PIN 	AD22 	[get_ports {datain_n[0]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[0]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[0]}];	# 
set_property PACKAGE_PIN 	AC24 	[get_ports {datain_p[1]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[1]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[1]}];	# 
set_property PACKAGE_PIN 	AD24 	[get_ports {datain_n[1]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[1]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[1]}];	# 
set_property PACKAGE_PIN 	AD21 	[get_ports {datain_p[2]}];	set_property DIFF_TERM		TRUE 	[get_ports {datain_p[2]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[2]}];	# 
set_property PACKAGE_PIN 	AE21 	[get_ports {datain_n[2]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[2]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[2]}];	# 
set_property PACKAGE_PIN 	AB24 	[get_ports {datain_p[3]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[3]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[3]}];	# 
set_property PACKAGE_PIN 	AC25 	[get_ports {datain_n[3]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[3]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[3]}];	# 
set_property PACKAGE_PIN 	AA20 	[get_ports {datain_p[4]}];	set_property DIFF_TERM 		TRUE	[get_ports {datain_p[4]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[4]}];	# 
set_property PACKAGE_PIN 	AB20 	[get_ports {datain_n[4]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[4]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[4]}];	# 
set_property PACKAGE_PIN 	AE25 	[get_ports {datain_p[5]}];	set_property DIFF_TERM 		TRUE	[get_ports {datain_p[5]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[5]}];	# 
set_property PACKAGE_PIN 	AF25 	[get_ports {datain_n[5]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[5]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[5]}];	# 
set_property PACKAGE_PIN 	AJ24	[get_ports {datain_p[6]}]; 	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[6]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[6]}];	# 
set_property PACKAGE_PIN 	AK25 	[get_ports {datain_n[6]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[6]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[6]}];	# 
set_property PACKAGE_PIN 	AK23 	[get_ports {datain_p[7]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[7]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[7]}];	# 
set_property PACKAGE_PIN 	AK24 	[get_ports {datain_n[7]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[7]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[7]}];	# 
set_property PACKAGE_PIN 	AJ22 	[get_ports {datain_p[8]}];	set_property DIFF_TERM		TRUE 	[get_ports {datain_p[8]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[8]}];	# 
set_property PACKAGE_PIN 	AJ23 	[get_ports {datain_n[8]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[8]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[8]}];	# 
set_property PACKAGE_PIN 	AG25 	[get_ports {datain_p[9]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[9]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[9]}];	# 
set_property PACKAGE_PIN 	AH25 	[get_ports {datain_n[9]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[9]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[9]}];	# 
set_property PACKAGE_PIN 	AK20 	[get_ports {datain_p[10]}];	set_property DIFF_TERM 		TRUE	[get_ports {datain_p[10]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[10]}];	# 
set_property PACKAGE_PIN 	AK21 	[get_ports {datain_n[10]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[10]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[10]}];	# 
set_property PACKAGE_PIN 	AG22 	[get_ports {datain_p[11]}];	set_property DIFF_TERM 		TRUE	[get_ports {datain_p[11]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[11]}];	# 
set_property PACKAGE_PIN 	AH22 	[get_ports {datain_n[11]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[11]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[11]}];	# 
set_property PACKAGE_PIN 	AH21	[get_ports {datain_p[12]}]; 	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[12]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[12]}];	# 
set_property PACKAGE_PIN 	AJ21 	[get_ports {datain_n[12]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[12]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[12]}];	# 
set_property PACKAGE_PIN 	AG20 	[get_ports {datain_p[13]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[13]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[13]}];	# 
set_property PACKAGE_PIN 	AH20 	[get_ports {datain_n[13]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[13]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[13]}];	# 
set_property PACKAGE_PIN 	AF20 	[get_ports {datain_p[14]}];	set_property DIFF_TERM		TRUE 	[get_ports {datain_p[14]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[14]}];	# 
set_property PACKAGE_PIN 	AF21 	[get_ports {datain_n[14]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[14]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[14]}];	# 
set_property PACKAGE_PIN 	AE23 	[get_ports {datain_p[15]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_p[15]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_p[15]}];	# 
set_property PACKAGE_PIN 	AF23 	[get_ports {datain_n[15]}];	set_property DIFF_TERM 		TRUE 	[get_ports {datain_n[15]}];	set_property IOSTANDARD 	LVDS_25 [get_ports {datain_n[15]}];	# 
                                                                                                                                                                                                                     