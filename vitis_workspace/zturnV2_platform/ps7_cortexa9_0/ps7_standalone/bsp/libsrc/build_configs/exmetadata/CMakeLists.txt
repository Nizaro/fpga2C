
cmake_minimum_required(VERSION 3.15)
project(bsp)
        
set(DRIVER_TARGETS axidma;coresightps_dcc;devcfg;dmaps;emacps;iicps;scugic;scutimer;scuwdt;uartps;xadcps)
set(DRIVER_LOCATIONS /tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/axidma_v9_18;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_10;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/devcfg_v3_8;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/dmaps_v2_10;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/emacps_v3_20;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/iicps_v3_19;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/scugic_v5_3;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/scutimer_v2_6;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/scuwdt_v2_5;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_14;/tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/xadcps_v2_7)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/ps7_cortexa9_0/ps7_standalone/bsp/libsrc/${drv} /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/ps7_cortexa9_0/ps7_standalone/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
