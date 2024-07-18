-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jul  9 11:21:59 2024
-- Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top main_design_lvds_sync_1_inverter_0 -prefix
--               main_design_lvds_sync_1_inverter_0_ main_design_lvds_data_1_inverter_0_sim_netlist.vhdl
-- Design      : main_design_lvds_data_1_inverter_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_lvds_sync_1_inverter_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_design_lvds_sync_1_inverter_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_lvds_sync_1_inverter_0 : entity is "main_design_lvds_data_1_inverter_0,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of main_design_lvds_sync_1_inverter_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of main_design_lvds_sync_1_inverter_0 : entity is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
end main_design_lvds_sync_1_inverter_0;

architecture STRUCTURE of main_design_lvds_sync_1_inverter_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
