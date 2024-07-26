-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Jul 22 09:16:37 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_my_iobuf_0_0/main_design_my_iobuf_0_0_sim_netlist.vhdl
-- Design      : main_design_my_iobuf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_my_iobuf_0_0_my_iobuf is
  port (
    O : out STD_LOGIC;
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    T : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of main_design_my_iobuf_0_0_my_iobuf : entity is "my_iobuf";
end main_design_my_iobuf_0_0_my_iobuf;

architecture STRUCTURE of main_design_my_iobuf_0_0_my_iobuf is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_inst : label is "PRIMITIVE";
begin
IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      IO => IO,
      O => O,
      T => T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_my_iobuf_0_0 is
  port (
    IO : inout STD_LOGIC;
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_design_my_iobuf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_my_iobuf_0_0 : entity is "main_design_my_iobuf_0_0,my_iobuf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_my_iobuf_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of main_design_my_iobuf_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of main_design_my_iobuf_0_0 : entity is "my_iobuf,Vivado 2024.1";
end main_design_my_iobuf_0_0;

architecture STRUCTURE of main_design_my_iobuf_0_0 is
begin
U0: entity work.main_design_my_iobuf_0_0_my_iobuf
     port map (
      I => I,
      IO => IO,
      O => O,
      T => T
    );
end STRUCTURE;
