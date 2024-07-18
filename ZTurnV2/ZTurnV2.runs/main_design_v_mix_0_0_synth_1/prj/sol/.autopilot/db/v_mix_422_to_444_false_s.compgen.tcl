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
    id 273 \
    name srcLayer2Yuv422 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2Yuv422 \
    op interface \
    ports { srcLayer2Yuv422_dout { I 24 vector } srcLayer2Yuv422_num_data_valid { I 3 vector } srcLayer2Yuv422_fifo_cap { I 3 vector } srcLayer2Yuv422_empty_n { I 1 bit } srcLayer2Yuv422_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
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
    id 275 \
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
    id 276 \
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
    id 277 \
    name srcLayer2Yuv \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2Yuv \
    op interface \
    ports { srcLayer2Yuv_din { O 24 vector } srcLayer2Yuv_num_data_valid { I 3 vector } srcLayer2Yuv_fifo_cap { I 3 vector } srcLayer2Yuv_full_n { I 1 bit } srcLayer2Yuv_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name HwReg_layerEnableFlag_2_val_c18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnableFlag_2_val_c18 \
    op interface \
    ports { HwReg_layerEnableFlag_2_val_c18_din { O 1 vector } HwReg_layerEnableFlag_2_val_c18_num_data_valid { I 3 vector } HwReg_layerEnableFlag_2_val_c18_fifo_cap { I 3 vector } HwReg_layerEnableFlag_2_val_c18_full_n { I 1 bit } HwReg_layerEnableFlag_2_val_c18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name HwReg_layerWidth_2_val_c26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerWidth_2_val_c26 \
    op interface \
    ports { HwReg_layerWidth_2_val_c26_din { O 16 vector } HwReg_layerWidth_2_val_c26_num_data_valid { I 3 vector } HwReg_layerWidth_2_val_c26_fifo_cap { I 3 vector } HwReg_layerWidth_2_val_c26_full_n { I 1 bit } HwReg_layerWidth_2_val_c26_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name HwReg_layerHeight_2_val_c34 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerHeight_2_val_c34 \
    op interface \
    ports { HwReg_layerHeight_2_val_c34_din { O 16 vector } HwReg_layerHeight_2_val_c34_num_data_valid { I 3 vector } HwReg_layerHeight_2_val_c34_fifo_cap { I 3 vector } HwReg_layerHeight_2_val_c34_full_n { I 1 bit } HwReg_layerHeight_2_val_c34_write { O 1 bit } } \
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


