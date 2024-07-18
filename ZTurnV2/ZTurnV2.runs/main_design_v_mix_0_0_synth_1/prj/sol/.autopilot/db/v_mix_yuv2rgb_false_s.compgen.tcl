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
    id 284 \
    name srcLayer2Yuv \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2Yuv \
    op interface \
    ports { srcLayer2Yuv_dout { I 24 vector } srcLayer2Yuv_num_data_valid { I 3 vector } srcLayer2Yuv_fifo_cap { I 3 vector } srcLayer2Yuv_empty_n { I 1 bit } srcLayer2Yuv_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name HwReg_layerHeight_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_2_val \
    op interface \
    ports { HwReg_layerHeight_2_val_dout { I 16 vector } HwReg_layerHeight_2_val_num_data_valid { I 3 vector } HwReg_layerHeight_2_val_fifo_cap { I 3 vector } HwReg_layerHeight_2_val_empty_n { I 1 bit } HwReg_layerHeight_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name HwReg_layerWidth_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_2_val \
    op interface \
    ports { HwReg_layerWidth_2_val_dout { I 16 vector } HwReg_layerWidth_2_val_num_data_valid { I 3 vector } HwReg_layerWidth_2_val_fifo_cap { I 3 vector } HwReg_layerWidth_2_val_empty_n { I 1 bit } HwReg_layerWidth_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name HwReg_layerEnableFlag_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_2_val \
    op interface \
    ports { HwReg_layerEnableFlag_2_val_dout { I 1 vector } HwReg_layerEnableFlag_2_val_num_data_valid { I 3 vector } HwReg_layerEnableFlag_2_val_fifo_cap { I 3 vector } HwReg_layerEnableFlag_2_val_empty_n { I 1 bit } HwReg_layerEnableFlag_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name srcLayer2Rgb \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2Rgb \
    op interface \
    ports { srcLayer2Rgb_din { O 24 vector } srcLayer2Rgb_num_data_valid { I 3 vector } srcLayer2Rgb_fifo_cap { I 3 vector } srcLayer2Rgb_full_n { I 1 bit } srcLayer2Rgb_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name HwReg_layerEnableFlag_2_val_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_2_val_c \
    op interface \
    ports { HwReg_layerEnableFlag_2_val_c_din { O 1 vector } HwReg_layerEnableFlag_2_val_c_num_data_valid { I 3 vector } HwReg_layerEnableFlag_2_val_c_fifo_cap { I 3 vector } HwReg_layerEnableFlag_2_val_c_full_n { I 1 bit } HwReg_layerEnableFlag_2_val_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name HwReg_layerWidth_2_val_c25 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_2_val_c25 \
    op interface \
    ports { HwReg_layerWidth_2_val_c25_din { O 16 vector } HwReg_layerWidth_2_val_c25_num_data_valid { I 3 vector } HwReg_layerWidth_2_val_c25_fifo_cap { I 3 vector } HwReg_layerWidth_2_val_c25_full_n { I 1 bit } HwReg_layerWidth_2_val_c25_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name HwReg_layerHeight_2_val_c33 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_2_val_c33 \
    op interface \
    ports { HwReg_layerHeight_2_val_c33_din { O 16 vector } HwReg_layerHeight_2_val_c33_num_data_valid { I 3 vector } HwReg_layerHeight_2_val_c33_fifo_cap { I 3 vector } HwReg_layerHeight_2_val_c33_full_n { I 1 bit } HwReg_layerHeight_2_val_c33_write { O 1 bit } } \
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


