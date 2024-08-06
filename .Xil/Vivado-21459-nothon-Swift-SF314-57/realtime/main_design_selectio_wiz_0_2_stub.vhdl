-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_selectio_wiz_0_2 is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 39 downto 0 );
    bitslip : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end main_design_selectio_wiz_0_2;

architecture stub of main_design_selectio_wiz_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
