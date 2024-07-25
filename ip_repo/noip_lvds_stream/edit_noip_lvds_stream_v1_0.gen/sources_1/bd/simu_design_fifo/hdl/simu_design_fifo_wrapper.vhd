--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Thu Jul 25 10:02:32 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target simu_design_fifo_wrapper.bd
--Design      : simu_design_fifo_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simu_design_fifo_wrapper is
end simu_design_fifo_wrapper;

architecture STRUCTURE of simu_design_fifo_wrapper is
  component simu_design_fifo is
  end component simu_design_fifo;
begin
simu_design_fifo_i: component simu_design_fifo
 ;
end STRUCTURE;
