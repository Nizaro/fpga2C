# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name srcLayer1Yuv422 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer1Yuv422 \
    op interface \
    ports { srcLayer1Yuv422_dout { I 24 vector } srcLayer1Yuv422_num_data_valid { I 3 vector } srcLayer1Yuv422_fifo_cap { I 3 vector } srcLayer1Yuv422_empty_n { I 1 bit } srcLayer1Yuv422_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name HwReg_layerHeight_1_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_1_val \
    op interface \
    ports { HwReg_layerHeight_1_val_dout { I 16 vector } HwReg_layerHeight_1_val_num_data_valid { I 3 vector } HwReg_layerHeight_1_val_fifo_cap { I 3 vector } HwReg_layerHeight_1_val_empty_n { I 1 bit } HwReg_layerHeight_1_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name HwReg_layerWidth_1_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_1_val \
    op interface \
    ports { HwReg_layerWidth_1_val_dout { I 16 vector } HwReg_layerWidth_1_val_num_data_valid { I 3 vector } HwReg_layerWidth_1_val_fifo_cap { I 3 vector } HwReg_layerWidth_1_val_empty_n { I 1 bit } HwReg_layerWidth_1_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name HwReg_layerEnableFlag_1_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_1_val \
    op interface \
    ports { HwReg_layerEnableFlag_1_val_dout { I 1 vector } HwReg_layerEnableFlag_1_val_num_data_valid { I 3 vector } HwReg_layerEnableFlag_1_val_fifo_cap { I 3 vector } HwReg_layerEnableFlag_1_val_empty_n { I 1 bit } HwReg_layerEnableFlag_1_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name srcLayer1Yuv \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer1Yuv \
    op interface \
    ports { srcLayer1Yuv_din { O 24 vector } srcLayer1Yuv_num_data_valid { I 3 vector } srcLayer1Yuv_fifo_cap { I 3 vector } srcLayer1Yuv_full_n { I 1 bit } srcLayer1Yuv_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name HwReg_layerEnableFlag_1_val_c15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_1_val_c15 \
    op interface \
    ports { HwReg_layerEnableFlag_1_val_c15_din { O 1 vector } HwReg_layerEnableFlag_1_val_c15_num_data_valid { I 3 vector } HwReg_layerEnableFlag_1_val_c15_fifo_cap { I 3 vector } HwReg_layerEnableFlag_1_val_c15_full_n { I 1 bit } HwReg_layerEnableFlag_1_val_c15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name HwReg_layerWidth_1_val_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_1_val_c22 \
    op interface \
    ports { HwReg_layerWidth_1_val_c22_din { O 16 vector } HwReg_layerWidth_1_val_c22_num_data_valid { I 3 vector } HwReg_layerWidth_1_val_c22_fifo_cap { I 3 vector } HwReg_layerWidth_1_val_c22_full_n { I 1 bit } HwReg_layerWidth_1_val_c22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name HwReg_layerHeight_1_val_c30 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_1_val_c30 \
    op interface \
    ports { HwReg_layerHeight_1_val_c30_din { O 16 vector } HwReg_layerHeight_1_val_c30_num_data_valid { I 3 vector } HwReg_layerHeight_1_val_c30_fifo_cap { I 3 vector } HwReg_layerHeight_1_val_c30_full_n { I 1 bit } HwReg_layerHeight_1_val_c30_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


