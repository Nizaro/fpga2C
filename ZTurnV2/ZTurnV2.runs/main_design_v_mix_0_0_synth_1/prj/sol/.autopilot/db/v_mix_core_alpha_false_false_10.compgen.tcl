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
    id 311 \
    name outLayer1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outLayer1 \
    op interface \
    ports { outLayer1_dout { I 24 vector } outLayer1_num_data_valid { I 3 vector } outLayer1_fifo_cap { I 3 vector } outLayer1_empty_n { I 1 bit } outLayer1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name srcLayer2x \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcLayer2x \
    op interface \
    ports { srcLayer2x_dout { I 24 vector } srcLayer2x_num_data_valid { I 3 vector } srcLayer2x_fifo_cap { I 3 vector } srcLayer2x_empty_n { I 1 bit } srcLayer2x_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name hwReg_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_0_val \
    op interface \
    ports { hwReg_0_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name hwReg_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_1_val \
    op interface \
    ports { hwReg_1_val { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name hwReg_6_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_6_val \
    op interface \
    ports { hwReg_6_val_dout { I 3 vector } hwReg_6_val_num_data_valid { I 3 vector } hwReg_6_val_fifo_cap { I 3 vector } hwReg_6_val_empty_n { I 1 bit } hwReg_6_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name hwReg_9_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_9_2_val \
    op interface \
    ports { hwReg_9_2_val_dout { I 16 vector } hwReg_9_2_val_num_data_valid { I 4 vector } hwReg_9_2_val_fifo_cap { I 4 vector } hwReg_9_2_val_empty_n { I 1 bit } hwReg_9_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name hwReg_10_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_10_2_val \
    op interface \
    ports { hwReg_10_2_val_dout { I 16 vector } hwReg_10_2_val_num_data_valid { I 4 vector } hwReg_10_2_val_fifo_cap { I 4 vector } hwReg_10_2_val_empty_n { I 1 bit } hwReg_10_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name hwReg_11_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_11_2_val \
    op interface \
    ports { hwReg_11_2_val_dout { I 16 vector } hwReg_11_2_val_num_data_valid { I 3 vector } hwReg_11_2_val_fifo_cap { I 3 vector } hwReg_11_2_val_empty_n { I 1 bit } hwReg_11_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name hwReg_12_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_12_2_val \
    op interface \
    ports { hwReg_12_2_val_dout { I 16 vector } hwReg_12_2_val_num_data_valid { I 3 vector } hwReg_12_2_val_fifo_cap { I 3 vector } hwReg_12_2_val_empty_n { I 1 bit } hwReg_12_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name hwReg_13_2_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hwReg_13_2_val \
    op interface \
    ports { hwReg_13_2_val_dout { I 8 vector } hwReg_13_2_val_num_data_valid { I 4 vector } hwReg_13_2_val_fifo_cap { I 4 vector } hwReg_13_2_val_empty_n { I 1 bit } hwReg_13_2_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name outLayer2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outLayer2 \
    op interface \
    ports { outLayer2_din { O 24 vector } outLayer2_num_data_valid { I 3 vector } outLayer2_fifo_cap { I 3 vector } outLayer2_full_n { I 1 bit } outLayer2_write { O 1 bit } } \
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


