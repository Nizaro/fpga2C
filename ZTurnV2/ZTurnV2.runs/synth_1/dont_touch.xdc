# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/elab_constraints.xdc

# Block Designs: bd/main_design/main_design.bd
# Block Designs: The module: 'main_design' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_processing_system7_0_0 || ORIG_REF_NAME==main_design_processing_system7_0_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_proc_sys_reset_0_0 || ORIG_REF_NAME==main_design_proc_sys_reset_0_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_xbar_1/main_design_xbar_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_xbar_1 || ORIG_REF_NAME==main_design_xbar_1} -quiet] -quiet

# IP: bd/main_design/ip/main_design_ps7_0_axi_periph_0/main_design_ps7_0_axi_periph_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_ps7_0_axi_periph_0 || ORIG_REF_NAME==main_design_ps7_0_axi_periph_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_axi_quad_spi_0_2/main_design_axi_quad_spi_0_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_axi_quad_spi_0_2 || ORIG_REF_NAME==main_design_axi_quad_spi_0_2} -quiet] -quiet

# IP: bd/main_design/ip/main_design_util_ds_buf_0_2/main_design_util_ds_buf_0_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_util_ds_buf_0_2 || ORIG_REF_NAME==main_design_util_ds_buf_0_2} -quiet] -quiet

# IP: bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_axi_dma_0_0 || ORIG_REF_NAME==main_design_axi_dma_0_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_xbar_2/main_design_xbar_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_xbar_2 || ORIG_REF_NAME==main_design_xbar_2} -quiet] -quiet

# IP: bd/main_design/ip/main_design_axi_mem_intercon_0/main_design_axi_mem_intercon_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_axi_mem_intercon_0 || ORIG_REF_NAME==main_design_axi_mem_intercon_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_auto_pc_0 || ORIG_REF_NAME==main_design_auto_pc_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_auto_us_0 || ORIG_REF_NAME==main_design_auto_us_0} -quiet] -quiet

# IP: bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_auto_us_1 || ORIG_REF_NAME==main_design_auto_us_1} -quiet] -quiet

# IP: bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_auto_us_2 || ORIG_REF_NAME==main_design_auto_us_2} -quiet] -quiet

# IP: bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==main_design_auto_pc_1 || ORIG_REF_NAME==main_design_auto_pc_1} -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_processing_system7_0_0 || ORIG_REF_NAME==main_design_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_proc_sys_reset_0_0 || ORIG_REF_NAME==main_design_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_proc_sys_reset_0_0 || ORIG_REF_NAME==main_design_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_quad_spi_0_2/main_design_axi_quad_spi_0_2_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_axi_quad_spi_0_2 || ORIG_REF_NAME==main_design_axi_quad_spi_0_2} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_quad_spi_0_2/main_design_axi_quad_spi_0_2.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_axi_quad_spi_0_2 || ORIG_REF_NAME==main_design_axi_quad_spi_0_2} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_quad_spi_0_2/main_design_axi_quad_spi_0_2_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_quad_spi_0_2/main_design_axi_quad_spi_0_2_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_axi_quad_spi_0_2 || ORIG_REF_NAME==main_design_axi_quad_spi_0_2} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_util_ds_buf_0_2/main_design_util_ds_buf_0_2_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_util_ds_buf_0_2 || ORIG_REF_NAME==main_design_util_ds_buf_0_2} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_util_ds_buf_0_2/main_design_util_ds_buf_0_2_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_axi_dma_0_0 || ORIG_REF_NAME==main_design_axi_dma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_axi_dma_0_0 || ORIG_REF_NAME==main_design_axi_dma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0_clocks.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_auto_us_0 || ORIG_REF_NAME==main_design_auto_us_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1_clocks.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_auto_us_1 || ORIG_REF_NAME==main_design_auto_us_1} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2_clocks.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==main_design_auto_us_2 || ORIG_REF_NAME==main_design_auto_us_2} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1_ooc.xdc

# XDC: /home/nothon/ISIR/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/main_design_ooc.xdc
