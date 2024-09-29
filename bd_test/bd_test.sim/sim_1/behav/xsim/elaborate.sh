#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Aug 09 15:57:23 CEST 2024
# SW Build 5076996 on Wed May 22 18:36:09 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L fifo_generator_v13_2_10 -L xlconcat_v2_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_bd_behav xil_defaultlib.tb_bd xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L fifo_generator_v13_2_10 -L xlconcat_v2_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_bd_behav xil_defaultlib.tb_bd xil_defaultlib.glbl -log elaborate.log
