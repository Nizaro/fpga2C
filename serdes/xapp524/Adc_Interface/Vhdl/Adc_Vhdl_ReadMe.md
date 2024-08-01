**********************************************************************************************
```
   ____  ____
  /   /\/   /
 /___/  \  /
 \   \   \/    � Copyright 2016 - 2018 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary
  /   /        information of Xilinx, Inc. and is protected under U.S.
 /___/   /\    and international copyright and other intellectual
 \   \  /  \   property laws.
  \___\/\___\
```
**********************************************************************************************
```
Vendor:                 Xilinx
Current:                Adc_Vhdl_ReadMe.txt(md)
Version:                1.0
Date Last Modified:     29 Jan 2018
Date Created:           29 Nov 2009
Associated Filename:    xapp524_ADC Interface
Associated Document:    XAPP524.
Supported Device(s):    7-Series FPGAs
```
**********************************************************************************************
Disclaimer:
```
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
```
Critical Applications:
```
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
```
THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
**********************************************************************************************
##ReadMe files in the design Hierarchy
  *A md file is a Markdown text file.*
  *It can be opened with a normal editor, as if it was a txt file.*
  *Opening it in a markdown reader or in a web browser provides better readable layout.*
**PLEASE**: Read the "...ReadMe...md" files in the different folders.

##Setup of the VHDL folder
This is the directory where the top levels of the reference design are stored.
The directory contains not only the hardware source code but also all the files needed
for simulation of the design, except the simulation scripts stored in /SimScripts.

##Structure of the design
ADC interface with small application interface.
```
┌─────────────────────────────────────────────┐
│  Apps_AdcToplevel                           │
│  ┌────────────────────┐   ┌───────────────┐ │
│  │ AdcToplevel        │   │ AdcIo         │ │
│  │                    │   │               │ │
│  │                    │   │               │ │
│  │                    │   └───────────────┘ │
│  │                    │   ┌───────────────┐ │
│  │                    │   │ MmcmClock     │ │
│  │                    │   │               | |
│  │                    │   │               │ │
│  │                    │   └───────────────┘ │
│  │                    │   ┌───────────────┐ │
│  │                    │   │ AdcBulkMem    │ │
│  │                    │   │               | │
│  └────────────────────┘   └───────────────┘ │
└─────────────────────────────────────────────┘
```
The ADC Interface
The ADC interface is for implmentations purposes wrapped within a top level design
called AdcToplevel_Toplevel. This top level design contains the actual AdcToplevel
interface and input and output buffers for the clock, Data and frame.
```
  ┌──────────────────────────┐
  │  AdcToplevel_Toplevel    │
  | ┌────────────────────┐   |
  | │  AdcToplevel       │   |
  | │  ┌───────────────┐ │   |
  | │  │ AdcClock      │ │   |
  | │  │               │ │   |
  | │  │               │ │   |
  | │  └───────────────┘ │   |
  | │  ┌───────────────┐ │   |
  | │  │ AdcFrame      │ │   |
  | │  │               │ │   |
  | │  │               │ │   |
  | │  └───────────────┘ │   |
  | │  ┌───────────────┐ │   |
  | │  │ AdcData       │ │   |
  | │  │               │ │   |
  | │  │               │ │   |
  | │  └───────────────┘ │   |
  | │  ┌───────────────┐ │   |
  | │  │ AdcMem        │ │   |
  | │  │               │ │   |
  | │  │               │ │   |
  | │  └───────────────┘ │   |
  | └────────────────────┘   |
  └──────────────────────────┘
```
The design:
  ./Vhdl/Apps_AdcToplevel.vhd
  ./Vhdl/AdcIo.vhd
  ./Vhdl/AdcToplevel.vhd
The files needed for simulation:
  ./Vhdl/AdcToplevel_Testbench.vhd	              Toplevel testbench including all components
  ./Vhdl/AdcToplevel_Tester.vhd		              Sets the input control pins of the ADC
  .?Vhdl/SimulationAdc/AdcToplevel_Checker.vhd    Checks the output of the simulation
  .?Vhdl/SimulationAdc/Ads6445_Tester.vhd         Mimicking of an ADC
Input and output file for/from the simulation:
  ./Vhdl/SimSrcRsltsTxtFiles/AdcInVec.txt
  ./Vhdl/SimSrcRsltsTxtFiles/AdcOutVec.txt
  ./Vhdl/SimSrcRsltsTxtFiles/AdcRead_Vec.txt
  ./Vhdl/SimSrcRsltsTxtFiles/AdcReadCnst_1_Vec.txt
  ./Vhdl/SimSrcRsltsTxtFiles/AdcReadCnst_2_Vec.txt



Kind regards,


XILINX

**********************************************************************************************