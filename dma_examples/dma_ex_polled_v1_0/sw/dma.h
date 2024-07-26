/*
 * dma.h
 *
 *  Created on: Jul 31, 2013
 *      Author: bwiec
 */

#ifndef DMA_H_
#define DMA_H_

// ***** Includes *****
#include "xaxidma.h"

// ***** Defines *****
#define DEBUG           0
#define DMA_XFER_LENGTH 512 // Bytes

// ***** Prototypes *****
int dma_tansfer();
int dma_init(XAxiDma_Config* cfg_ptr);
int fifo_init();
int reset_data_source();
int dma_xfer(int* dma_buf);
int dma_verify_xfer();
int cleanup();

#endif /* DMA_H_ */
