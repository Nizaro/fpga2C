onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB /test/tb_inst/aclk
add wave -noupdate -group TB /test/tb_inst/aresetn
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_1_tdata
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_1_tlast
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_1_tvalid
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_2_tdata
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_2_tlast
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_2_tvalid
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_1_tready
add wave -noupdate -group TB /test/tb_inst/s_axis_s2mm_2_tready
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_ARADDR
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_ARPROT
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_ARREADY
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_ARVALID
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_AWADDR
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_AWPROT
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_AWREADY
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_AWVALID
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_BREADY
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_BRESP
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_BVALID
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_RDATA
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_RREADY
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_RRESP
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_RVALID
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_WDATA
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_WREADY
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_WSTRB
add wave -noupdate -group {AXI LITE BFM MASTER} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_1_m_axi_lite_WVALID
add wave -noupdate -expand -group DMA1 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/axi_resetn
add wave -noupdate -expand -group DMA1 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s2mm_prmry_reset_out_n
add wave -noupdate -expand -group DMA1 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s2mm_introut
add wave -noupdate -expand -group DMA1 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/axi_dma_tstvec
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_aclk
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_awvalid
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_awready
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_awaddr
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_wvalid
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_wready
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_wdata
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_bresp
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_bvalid
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_bready
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_arvalid
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_arready
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_araddr
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_rvalid
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_rready
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_rdata
add wave -noupdate -expand -group DMA1 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axi_lite_rresp
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_aclk
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awaddr
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awlen
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awsize
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awburst
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awprot
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awcache
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awvalid
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_awready
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_wdata
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_wstrb
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_wlast
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_wvalid
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_wready
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_bresp
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_bvalid
add wave -noupdate -expand -group DMA1 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/m_axi_s2mm_bready
add wave -noupdate -expand -group DMA1 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axis_s2mm_tdata
add wave -noupdate -expand -group DMA1 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axis_s2mm_tkeep
add wave -noupdate -expand -group DMA1 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axis_s2mm_tvalid
add wave -noupdate -expand -group DMA1 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axis_s2mm_tready
add wave -noupdate -expand -group DMA1 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_1/s_axis_s2mm_tlast
add wave -noupdate -expand -group DMA2 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/axi_resetn
add wave -noupdate -expand -group DMA2 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s2mm_prmry_reset_out_n
add wave -noupdate -expand -group DMA2 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s2mm_introut
add wave -noupdate -expand -group DMA2 /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/axi_dma_tstvec
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_aclk
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_awvalid
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_awready
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_awaddr
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_wvalid
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_wready
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_wdata
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_bresp
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_bvalid
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_bready
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_arvalid
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_arready
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_araddr
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_rvalid
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_rready
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_rdata
add wave -noupdate -expand -group DMA2 -group S_AXI_LITE /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axi_lite_rresp
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_aclk
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awaddr
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awlen
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awsize
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awburst
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awprot
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awcache
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awvalid
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_awready
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_wdata
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_wstrb
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_wlast
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_wvalid
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_wready
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_bresp
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_bvalid
add wave -noupdate -expand -group DMA2 -group M_AXI_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/m_axi_s2mm_bready
add wave -noupdate -expand -group DMA2 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axis_s2mm_tdata
add wave -noupdate -expand -group DMA2 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axis_s2mm_tkeep
add wave -noupdate -expand -group DMA2 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axis_s2mm_tvalid
add wave -noupdate -expand -group DMA2 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axis_s2mm_tready
add wave -noupdate -expand -group DMA2 -expand -group S_AXIS_S2MM /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_dma_2/s_axis_s2mm_tlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/ACLK
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/ARESETN
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_ACLK
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_ARESETN
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_araddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arregion
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_arvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awaddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awregion
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_awvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_bid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_bready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_bresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_bvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_rvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_wdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_wlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_wready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_wstrb
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/M00_AXI_wvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_ACLK
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_ARESETN
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_araddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_arvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awaddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_awvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_bready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_bresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_bvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_rdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_rlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_rready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_rresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_rvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_wdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_wlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_wready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_wstrb
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S00_AXI_wvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_ACLK
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_ARESETN
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_araddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_arvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awaddr
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awburst
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awcache
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awlen
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awlock
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awprot
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awqos
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awsize
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_awvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_bid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_bready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_bresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_bvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rresp
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_rvalid
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_wdata
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_wlast
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_wready
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_wstrb
add wave -noupdate -group {MEMORY INTERCONNECT} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/axi_interconnect_2/S01_AXI_wvalid
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ACLK
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARESETN
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWADDR
add wave -noupdate -expand -group {AXI4 BFM SLAVE} -radix hexadecimal /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWLEN
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWSIZE
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWBURST
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWLOCK
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWCACHE
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWPROT
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWREGION
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWQOS
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWUSER
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWVALID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_AWREADY
add wave -noupdate -expand -group {AXI4 BFM SLAVE} -radix unsigned /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WDATA
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WSTRB
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WLAST
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WUSER
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WVALID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_WREADY
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_BID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_BRESP
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_BVALID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_BUSER
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_BREADY
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARADDR
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARLEN
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARSIZE
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARBURST
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARLOCK
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARCACHE
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARPROT
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARREGION
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARQOS
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARUSER
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARVALID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_ARREADY
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RDATA
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RRESP
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RLAST
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RUSER
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RVALID
add wave -noupdate -expand -group {AXI4 BFM SLAVE} /test/tb_inst/uut/design_1_wrapper_inst/design_1_i/cdn_axi_bfm_2/S_AXI_RREADY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5075000 ps} 1} {{Cursor 2} {5335000 ps} 0}
configure wave -namecolwidth 345
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {10500 ns}
