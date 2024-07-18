# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(main_design_v_mix_0_0_v_mix)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xmain_design_v_mix_0_0_v_mix.c)
collect (PROJECT_LIB_SOURCES xmain_design_v_mix_0_0_v_mix_sinit.c)
collect (PROJECT_LIB_SOURCES xmain_design_v_mix_0_0_v_mix_linux.c)
collect (PROJECT_LIB_SOURCES xmain_design_v_mix_0_0_v_mix_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xmain_design_v_mix_0_0_v_mix.h)
collect (PROJECT_LIB_HEADERS xmain_design_v_mix_0_0_v_mix_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(main_design_v_mix_0_0_v_mix STATIC ${_sources})
set_target_properties(main_design_v_mix_0_0_v_mix PROPERTIES LINKER_LANGUAGE C)

