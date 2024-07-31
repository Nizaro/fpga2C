*************************************************************************
```
   ____  ____
  /   /\/   /
 /___/  \  /
 \   \   \/    � Copyright 2018 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary
  /   /        information of Xilinx, Inc. and is protected under U.S.
 /___/   /\    and international copyright and other intellectual
 \   \  /  \   property laws.
  \___\/\___\
```
*************************************************************************

Vendor:             Xilinx
readme.txt Version:	1.4
Date Last Modified:	25 May 18
Date Created:		29 Nov 2009

Associated Filename: 	Xapp524.zip
Associated Document: 	XAPP524, Serial LVDS High-Speed ADC Interface.

Supported Device: 	Series-7

*************************************************************************
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
THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
FILE AT ALL TIMES.

*************************************************************************
[TOC]
*************************************************************************
## REVISION HISTORY

| Date       | Readme Version | Revision Description                                       |
| ---------- | -------------- | ---------------------------------------------------------- |
| 19/08/2012 | 1.0            | Initial Xilinx release                                     |
| 23/10/2015 | 1.1            | Updated design files.                                      |
| 10/01/2016 | 1.2            | Port to Vivado + design update.                            |
| 15/02/2018 | 1.3            | Global update. Simulation ported to QuestaSIm and design   |
|            |                | moved to Vivado_2017.4 or later.                           |
| 25/05/2018 | 1.4            | Updates Applied to AdcFrame_Lib. See HDL code for changes. |

## OVERVIEW

This "readme" describes how to use the contents of the zip file, how and with what tool the
designs are made and what to do to obtain from/about the design.

### ReadMe files in the design Hierarchy
  *A md file is a Markdown text file.*
  *It can be opened with a normal editor, as if it was a txt file.*
  *Opening it in a markdown reader or in a web browser provides better readable layout.*
**PLEASE**: Read the "...ReadMe...md" files in the different folders.

## SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

- Xilinx Vivado_2017.4 or higher.
- QuestaSim_10.5d or higher

## USED DESIGN ENTRY TOOLS.

- Atom text editor (www.atom.io)

## DESIGN FILE HIERARCHY.

REMARK: The reference design is only available in VHDL.
```
 |
 +-- /Adc_Interface                 ADC interface project
 |   +-- /Constraints
 |   |    KC705_AdcToplevel_Toplevel.xdc
 |   |    KC705_Apps_AdcToplevel.xdc
 |   +-- /Documents                 Top level project documents.
 |   +-- /Libraries                 Libraries used by the top level design.
 |   |   +-- /AdcClock_Lib	       Each of these directories is used as a library by
 |   |   +-- /AdcData_Lib           the top level design. At the same time each of
 |   |   +-- /AdcFrame_Lib          these can be used as stand-alone design. The
 |   |   +-- /AdcMem_Lib            directory structure is made identical to the
 |   |   +-- /AdcBulkMem_Lib        top level directory structure.
 |   |   +-- /Common
 |   |   +-- /MmcmClock_Lib
 |   +-- /Simscripts                Top level simulation scripts
 |   +-- /Simulation                Top level simulation working directory.
 |   +-- /Vhdl                     Top level source code files.
 |   |   + /SimSrcRsltsTxtFiles
 |   |   |    AdcInVec.txt           Simulation vector file.
 |   |   |    AdcOutVec.txt          Simulations vector file.
 |   |   |    AdcReadvec.txt         Simulation vector file.
 |   |   |    AdcReadCnst_1_Vec.txt  Simulation vector file.
 |   |   |    AdcReadCnst_2_Vec.txt  Simulation vector file.
 |   |   | Adc_Vhdl_ReadMe.md        Explications about the VHDL source code.
 |   |   | AdcIo.vhd
 |   |   | AdcToplevel.vhd
 |   |   | AdcToplevel_Checker.vhd
 |   |   | AdcToplevel_Testbench.vhd
 |   |   | AdcToplevel_Tester.vhd
 |   |   | AdcToplevel_Toplevel.vhd
 |   |   | Adc6445_Tester.vhd
 |   |   | Apps_AdcToplevel.vhd
 |

```
## REMARKS:
No remarks.

## Folders
### /Constraints
XDC constraints file in order to put the design in teh FPGA of a KC705 development board.
WHen the design is used as part of a customized design, one must create an own XDC file
and make sure timing and placement are met.

### /Libraries
Each of the directories in a /Libraries directory is set up as a stand alone project
with its own documentation, simulation, and sometimes implementation. The goal is that
these smaller designs can be used as standalone design or as component in other designs.
The structure of a library is therefore the same as that of a design at a higher
hierarchical level.
  ```
    /<Library name>_Lib
        +-- /Documents		Documents about the library content.
        +-- /Simscripts		Simulation scripts for the library.
        +-- /Simulation		Simulation tool work directory
        +-- /Vhdl            Source code of the library. More later on.
  ```
Example of a library setup and use:
  ```
    /Libraries
        /AdcClock_Lib
        /AdcData_Lib
            +-- /Documents		    Documents about the library content.
            +-- /Simscripts         Simulation scripts of the design in the library.
            +-- /Simulation         Used by the simulator to store compiled models.
            +-- /Vhdl
            |    +-- AdcData.vhd            File used in the design (Data treatment pipe).
            |    +-- AdcData_Toplevel.vhd   Design that can be used to implement this part.
            |    +-- AdcData_Testbench.vhd  Test bench for the AdcData design.
            |    +-- AdcData_Checker.vhd    Used by the simulation as data checker.
            |    +-- AdcData_Tester.vhd     Stimuli for the test bench of AdcData.
            |    +-- AdcData_Vec.txt        Vector text file read by AdcData_Tester.
            |    +-- AdcDataCheck_Vec.txt   File written by AdcData_Checker (results).
        /AdcFrame_Lib
        /AdcMem_Lib
        /.....
  ```
### /SimScripts
- Read the *Readme_Simulation.md* file in order to know how to start and simulate the design.
- Each library folder contains a *Readme_Simulation.md*.
- Contents:
  ```
   /SimScripts
      <Design_Name>_FuncSim.do      TCL command file for QuestaSim to run the simulation.
      <Design_Name>_FuncWave.do     File called by the ..._FuncSim.do file. Contains the
                                    signals to display as waveforms.
      Readme_Simulation.md          Instructions how to run the simulation.
      transcript                    File generated by QuestaSim.
                                    Contains all executed commands.
  ```

### /Vhdl
Here the HDL source code of the design is stored.
The directory contains not only the hardware source code but also all the files needed
for simulation of the design, except the simulation scripts stored in /SimScripts.
```
The design:
	AdcToplevel.vhd
The files needed for simulation:
	AdcToplevel_Testbench.vhd	Toplevel test bench including all components
	AdcToplevel_Tester.vhd		Sets the input control pins of the ADC
	AdcToplevel_Checker.vhd		Checks the output of the simulation
	Ads6445_Tester.vhd			Mimicking of an ADC
Input and output file for/from the simulation:
	AdcInVec.txt
	AdcOutVec.txt
	AdcRead_Vec.txt
	AdcReadCnst_1_Vec.txt
	AdcReadCnst_2_Vec.txt
Implementation of the top level design with only ADC inputs.
	AdcToplevel_Toplevel.vhd
Implementation of the toplevel design with a small application:
	AdcIo.vhd
	Apps_AdcToplevel.vhd
```

## TECHNICAL SUPPORT
To obtain technical support, create a WebCase at www.xilinx.com/support.
uestions are routed to a team with expertise using this product.

Xilinx provides technical support for use of this product when used according to the
guidelines described in the documentation, and cannot guarantee timing, functionality,
or support of this product for designs that do not follow specified guidelines.

## REVISION DETAILS.
  - 19 Aug 2012
      Release of the original design.
  - 10 Jan 2016
      Design upgraded to Vivado_2017.3
  - 15 Feb 2018
      Design completely reviewed, updated, simulation ported to QuestaSim and
      Synthesis and implementation upgraded to Vivado_2017.4 or later.
  - 25 May 2018
      Applied some changes to AdcFrame_Lib/Vhdl/AdcFrame.vhd.
      Increased the bitslip watch counter by one for all resolution widths. Now there
      are effectively 8-bitslips possible. With the old counter size only seven bitslips
      were accounted for.
      Changed the behavior of the re-sync. When the bitslip counter goes out of range 
      the design needs to restart from zero. That process was combinatorial and is now
      a registered process. The re-sync also triggers a full reset of the design what makes 
      it more robust.

Kind regards,

xilinx
