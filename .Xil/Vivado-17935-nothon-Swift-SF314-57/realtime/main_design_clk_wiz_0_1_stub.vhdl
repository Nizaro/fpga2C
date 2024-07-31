-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_clk_wiz_0_1 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end main_design_clk_wiz_0_1;

architecture stub of main_design_clk_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
