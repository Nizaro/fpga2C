/*
 * dma.h
 *
 *  Created on: Jul 31, 2013
 *      Author: bwiec
 */
//
// 1 packet = bytes transferred by ALL bds
//


#ifndef DMA_H_
#define DMA_H_

// ***** Includes *****
#include "xaxidma.h"
#include "xscugic.h"

// ***** Defines *****
#define DEBUG            0
#define DMA_XFER_LENGTH  512 // Bytes per BD

#define MEM_BASE_ADDR	 0x01000000 // Somewhere off in DDR
#define RX_BD_SPACE_BASE (MEM_BASE_ADDR)
#define RX_BD_SPACE_HIGH (MEM_BASE_ADDR + 0x0000FFFF)
#define TX_BD_SPACE_BASE (MEM_BASE_ADDR + 0x00010000)
#define TX_BD_SPACE_HIGH (MEM_BASE_ADDR + 0x0001FFFF)
#define TX_BUFFER_BASE	 (MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE	 (MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH	 (MEM_BASE_ADDR + 0x004FFFFF)

//#define MAX_PKT_LEN		 0x100 // Not sure...
#define MAX_PKT_LEN		 DMA_XFER_LENGTH*2 // Not sure...

// Each transfer consists of NUM_PKTS_TO_TRANSFER number of packets
// each of which having NUM_BDS_PER_PKT number of BDs. Each BD
// describes 512 bytes of data
#define NUM_BYTES_PER_BD 512
#define NUM_BDS_PER_PKT  2
#define NUM_PKTS_TO_XFER 1
#define COALESCING_CNT   NUM_BDS_TO_XFER
#define NUM_BDS_TO_XFER  (NUM_PKTS_TO_XFER * NUM_BDS_PER_PKT)
#define DELAY_TIMER_CNT	 0

// ***** Prototypes *****
int dma_tansfer();
int dma_init(XAxiDma_Config* cfg_ptr);
int s2mm_bd_setup(XAxiDma* axi_dma); // FIX ME! Remove pass of global
int mm2s_bd_setup(XAxiDma* axi_dma);
int intr_init(XScuGic_Config *gic_cfg);
int fifo_init();
int reset_data_source();
int dma_xfer(int* dma_buf);
int dma_verify_xfer();
int cleanup();

#endif /* DMA_H_ */
