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
    id 195 \
    name outLayer0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outLayer0 \
    op interface \
    ports { outLayer0_dout { I 24 vector } outLayer0_num_data_valid { I 3 vector } outLayer0_fifo_cap { I 3 vector } outLayer0_empty_n { I 1 bit } outLayer0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name srcLayer1x \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer1x \
    op interface \
    ports { srcLayer1x_dout { I 24 vector } srcLayer1x_num_data_valid { I 3 vector } srcLayer1x_fifo_cap { I 3 vector } srcLayer1x_empty_n { I 1 bit } srcLayer1x_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name HwReg_width_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_width_val \
    op interface \
    ports { HwReg_width_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name HwReg_height_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_height_val \
    op interface \
    ports { HwReg_height_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name HwReg_background_Y_R_val12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_background_Y_R_val12 \
    op interface \
    ports { HwReg_background_Y_R_val12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name HwReg_background_U_G_val13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_background_U_G_val13 \
    op interface \
    ports { HwReg_background_U_G_val13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name HwReg_background_V_B_val14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_background_V_B_val14 \
    op interface \
    ports { HwReg_background_V_B_val14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name HwReg_layerEnable_val16 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnable_val16 \
    op interface \
    ports { HwReg_layerEnable_val16_dout { I 3 vector } HwReg_layerEnable_val16_num_data_valid { I 4 vector } HwReg_layerEnable_val16_fifo_cap { I 4 vector } HwReg_layerEnable_val16_empty_n { I 1 bit } HwReg_layerEnable_val16_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name HwReg_layerStartX_1_val17 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartX_1_val17 \
    op interface \
    ports { HwReg_layerStartX_1_val17_dout { I 16 vector } HwReg_layerStartX_1_val17_num_data_valid { I 4 vector } HwReg_layerStartX_1_val17_fifo_cap { I 4 vector } HwReg_layerStartX_1_val17_empty_n { I 1 bit } HwReg_layerStartX_1_val17_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name HwReg_layerStartY_1_val19 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerStartY_1_val19 \
    op interface \
    ports { HwReg_layerStartY_1_val19_dout { I 16 vector } HwReg_layerStartY_1_val19_num_data_valid { I 4 vector } HwReg_layerStartY_1_val19_fifo_cap { I 4 vector } HwReg_layerStartY_1_val19_empty_n { I 1 bit } HwReg_layerStartY_1_val19_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
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
    id 206 \
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
    id 207 \
    name HwReg_layerScaleFactor_1_val25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerScaleFactor_1_val25 \
    op interface \
    ports { HwReg_layerScaleFactor_1_val25_dout { I 8 vector } HwReg_layerScaleFactor_1_val25_num_data_valid { I 4 vector } HwReg_layerScaleFactor_1_val25_fifo_cap { I 4 vector } HwReg_layerScaleFactor_1_val25_empty_n { I 1 bit } HwReg_layerScaleFactor_1_val25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name outLayer1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outLayer1 \
    op interface \
    ports { outLayer1_din { O 24 vector } outLayer1_num_data_valid { I 3 vector } outLayer1_fifo_cap { I 3 vector } outLayer1_full_n { I 1 bit } outLayer1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name HwReg_layerEnable_val16_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_layerEnable_val16_c \
    op interface \
    ports { HwReg_layerEnable_val16_c_din { O 3 vector } HwReg_layerEnable_val16_c_num_data_valid { I 3 vector } HwReg_layerEnable_val16_c_fifo_cap { I 3 vector } HwReg_layerEnable_val16_c_full_n { I 1 bit } HwReg_layerEnable_val16_c_write { O 1 bit } } \
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


