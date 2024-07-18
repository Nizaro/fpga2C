open_project -reset prj
set_top v_mix
open_solution sol
set_part {xc7z020clg400-2}
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_mix_config.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_mix.cpp
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_mix.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_dma.cpp
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_dma.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_csc.cpp
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/v_csc.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls_video.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls_opencv.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_axi_io.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_arithm.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_core.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_fast.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_haar.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_harris.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_histogram.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_hough.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_imgbase.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_imgproc.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_io.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_mem.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_stereobm.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_types.h
add_files -cflags " -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls -I /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src " /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_v_mix_0_0/src/hls/hls_video_undistort.h

create_clock -period 10 -name ap_clk

#config_rtl -enable_axiFlushable
config_interface -m_axi_flush_mode
config_interface -m_axi_conservative_mode

#config_interface -input_reg_miode both -output_reg_mode both
config_interface -m_axi_addr64=false



config_rtl -module_prefix main_design_v_mix_0_0_
config_export -vendor xilinx.com -library ip -version 5.2
csynth_design
export_design -format ip_catalog
exit
