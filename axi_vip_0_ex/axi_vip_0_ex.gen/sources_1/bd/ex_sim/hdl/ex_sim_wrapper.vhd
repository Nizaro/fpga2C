--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Wed Jul 10 13:40:43 2024
--Host        : nothon-Swift-SF314-57 running 64-bit Ubuntu 24.04 LTS
--Command     : generate_target ex_sim_wrapper.bd
--Design      : ex_sim_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex_sim_wrapper is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end ex_sim_wrapper;

architecture STRUCTURE of ex_sim_wrapper is
  component ex_sim is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component ex_sim;
begin
ex_sim_i: component ex_sim
     port map (
      aclk => aclk,
      aresetn => aresetn
    );
end STRUCTURE;
