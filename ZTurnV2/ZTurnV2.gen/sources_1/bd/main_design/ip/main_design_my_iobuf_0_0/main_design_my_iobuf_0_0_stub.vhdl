-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Jul 22 09:16:37 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_my_iobuf_0_0/main_design_my_iobuf_0_0_stub.vhdl
-- Design      : main_design_my_iobuf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_my_iobuf_0_0 is
  Port ( 
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC
  );

end main_design_my_iobuf_0_0;

architecture stub of main_design_my_iobuf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IO,I,O,T";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_iobuf,Vivado 2024.1";
begin
end;
