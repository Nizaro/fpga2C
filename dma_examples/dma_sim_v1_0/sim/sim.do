
# Call vsim to invoke simulator
vsim -t 1ps -novopt -pli "C:/Xilinx/Vivado/2013.2/ids_lite/ISE/lib/nt64/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L blk_mem_gen_v8_0 -L fifo_generator_v10_0 -L proc_common_v4_0 -L axi_datamover_v5_0 -L axi_sg_v4_04_a -L axi_dma_v7_0 -L generic_baseblocks_v2_0 -L axi_infrastructure_v1_0 -L axi_register_slice_v2_0 -L axi_data_fifo_v2_0 -L axi_crossbar_v2_0 -lib work test glbl

# Source wave do file
do {wave.do}

# Set default format
radix hex

# Log all signals
log -r /*

# Set the window types
view wave
view structure
view signals

# Run the simulation
run 1ms