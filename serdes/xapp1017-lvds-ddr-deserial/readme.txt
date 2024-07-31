*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2016-2022 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor:                 Xilinx 
Current Version:        1.2
Date Last Modified:     Feb 10 2022
Date Created:           Sep 30 2013

Associated Filename:    xapp1017-lvds-ddr-deserial.zip
Associated Document:    xapp1017, 
                        LVDS Source Synchronous DDR Deserialization 
Supported Device(s):    Virtex-7, Kintex-7, and Artix-7 FPGAs
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

                Readme  
Date            Version Revision Description
=========================================================================
Sep 30, 2013    1.0     Initial Xilinx release.
Mar 30, 2016    1.1     Second version, updated for last Vivado.
Feb 10, 2022    1.2     CR Fix for del_mech in Verilog Macros
=========================================================================



2. OVERVIEW
    This readme describes how to use the files that come with XAPP1017


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
    Vivado 2016.1 or higher

4. DESIGN FILE HIERARCHY
    The directory structure underneath this top-level folder (XAPP1017) 
    is described below:
    |
    |- Project
    | |     - readme.txt
    | |     - xapp1017_Uncertainties_tool_1.1.xlsx
    | |- Verilog_macros
    | |- Verilog_testbench
    | |- Verilog_top_level_examples
    | |- VHDL_macros
    | |- Verilog_testbench
    | |- Verilog_top_level_examples
    | |- xdc
    |

    readme.txt: This file.
    xapp1017_Uncertainties_tool_1.1.xlsx:   uncertainty calculator spreadsheet
    Verilog_macros:             Folder with the verilog macros
    Verilog_testbench:          Folder with verilog testbenches
    Verilog_top_level_examples: Folder with verilog examples
    VHDL_macros                 Folder with VHDL macros
    Verilog_testbench           Folder with vHDL testbenches
    Verilog_top_level_examples  Folder with vHDL examples
    xdc:                        Folder with Vivado constraint file.

5. INSTALLATION AND OPERATING INSTRUCTIONS 
    - Choose whether your design needs SDR or DDR techniques using the 
      application note and enclosed spreadsheet.
    - Install the Vivado 2016.1 or later tools.
    - To incorporate the appropriate module into a Vivado design project:
    - Verilog flow:
        - Instantiate the receiver module serdes_1_to_468_idelay_ddr.v 
          and set the serdes factor parameter (S) and the number of 
          data-bits per channel parameter (D) appropriately for the 
          application.
        - An example top-level design for 1 channel of 16-bits is 
          provided in the .zip file
    - VHDL flow:
        - Instantiate the receiver module serdes_1_to_468_idelay_ddr.vhd
          and set the serdes factor generic (S) and the number of 
          data-bits per channel generic (D) appropriately for the application.
        - An example top-level design for 1 channel of 16-bits is 
          provided in the .zip file

6. OTHER INFORMATION (OPTIONAL) 
    1) Warnings
    2) Design Notes
    3) Fixes
    4) Known Issues

7. SUPPORT
    To obtain technical support for this reference design, go to 
    www.xilinx.com/support to locate answers to known issues in
    the Xilinx Answers Database or to create a WebCase.  
