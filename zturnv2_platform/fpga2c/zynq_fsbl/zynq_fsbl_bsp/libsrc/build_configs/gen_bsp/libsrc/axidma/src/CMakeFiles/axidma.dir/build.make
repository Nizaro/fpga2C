# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake

# The command to remove a file.
RM = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/axidma/src/CMakeFiles/axidma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/axidma/src/CMakeFiles/axidma.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj -MF CMakeFiles/axidma.dir/xaxidma.c.obj.d -o CMakeFiles/axidma.dir/xaxidma.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma.c > CMakeFiles/axidma.dir/xaxidma.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma.c -o CMakeFiles/axidma.dir/xaxidma.c.s

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bd.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj -MF CMakeFiles/axidma.dir/xaxidma_bd.c.obj.d -o CMakeFiles/axidma.dir/xaxidma_bd.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bd.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma_bd.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bd.c > CMakeFiles/axidma.dir/xaxidma_bd.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma_bd.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bd.c -o CMakeFiles/axidma.dir/xaxidma_bd.c.s

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bdring.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj -MF CMakeFiles/axidma.dir/xaxidma_bdring.c.obj.d -o CMakeFiles/axidma.dir/xaxidma_bdring.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bdring.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma_bdring.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bdring.c > CMakeFiles/axidma.dir/xaxidma_bdring.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma_bdring.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_bdring.c -o CMakeFiles/axidma.dir/xaxidma_bdring.c.s

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_g.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj -MF CMakeFiles/axidma.dir/xaxidma_g.c.obj.d -o CMakeFiles/axidma.dir/xaxidma_g.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_g.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma_g.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_g.c > CMakeFiles/axidma.dir/xaxidma_g.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma_g.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_g.c -o CMakeFiles/axidma.dir/xaxidma_g.c.s

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_selftest.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj -MF CMakeFiles/axidma.dir/xaxidma_selftest.c.obj.d -o CMakeFiles/axidma.dir/xaxidma_selftest.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_selftest.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma_selftest.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_selftest.c > CMakeFiles/axidma.dir/xaxidma_selftest.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma_selftest.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_selftest.c -o CMakeFiles/axidma.dir/xaxidma_selftest.c.s

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/flags.make
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj: /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_sinit.c
libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj: libsrc/axidma/src/CMakeFiles/axidma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj -MF CMakeFiles/axidma.dir/xaxidma_sinit.c.obj.d -o CMakeFiles/axidma.dir/xaxidma_sinit.c.obj -c /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_sinit.c

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/axidma.dir/xaxidma_sinit.c.i"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_sinit.c > CMakeFiles/axidma.dir/xaxidma_sinit.c.i

libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/axidma.dir/xaxidma_sinit.c.s"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src/xaxidma_sinit.c -o CMakeFiles/axidma.dir/xaxidma_sinit.c.s

# Object files for target axidma
axidma_OBJECTS = \
"CMakeFiles/axidma.dir/xaxidma.c.obj" \
"CMakeFiles/axidma.dir/xaxidma_bd.c.obj" \
"CMakeFiles/axidma.dir/xaxidma_bdring.c.obj" \
"CMakeFiles/axidma.dir/xaxidma_g.c.obj" \
"CMakeFiles/axidma.dir/xaxidma_selftest.c.obj" \
"CMakeFiles/axidma.dir/xaxidma_sinit.c.obj"

# External object files for target axidma
axidma_EXTERNAL_OBJECTS =

libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/build.make
libsrc/axidma/src/libaxidma.a: libsrc/axidma/src/CMakeFiles/axidma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libaxidma.a"
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && $(CMAKE_COMMAND) -P CMakeFiles/axidma.dir/cmake_clean_target.cmake
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/axidma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/axidma/src/CMakeFiles/axidma.dir/build: libsrc/axidma/src/libaxidma.a
.PHONY : libsrc/axidma/src/CMakeFiles/axidma.dir/build

libsrc/axidma/src/CMakeFiles/axidma.dir/clean:
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src && $(CMAKE_COMMAND) -P CMakeFiles/axidma.dir/cmake_clean.cmake
.PHONY : libsrc/axidma/src/CMakeFiles/axidma.dir/clean

libsrc/axidma/src/CMakeFiles/axidma.dir/depend:
	cd /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/axidma/src /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src /home/nothon/fpga2C/zturnv2_platform/fpga2c/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/axidma/src/CMakeFiles/axidma.dir/depend

