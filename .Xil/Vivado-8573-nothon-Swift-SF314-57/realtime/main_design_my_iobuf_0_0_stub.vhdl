-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
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
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_iobuf,Vivado 2024.1";
begin
end;
