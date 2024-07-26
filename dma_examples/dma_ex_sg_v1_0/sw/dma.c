/*
 * dma.c
 *
 *  Created on: Jul 31, 2013
 *      Author: bwiec
 */

//
// The flow of this program is much different from the register direct mode. This
// is because you can't simply point to the same buffer in memory for both TX
// and RX and then just kick off both transfers simultaneously.
//
// The program flow follows these general steps:
//   1) Initialization
//   2) Kick off S2MM transfer and wait for completion
//   3) Load MM2S BDs with values received from S2MM
//   4) Kick off MM2S transfer and wait for completion
//   5) Check data for correctness
//

// ***** Inlcudes *****
#include "xaxidma.h"
#include "dma.h"
#include "xllfifo.h"
#include "xgpio.h"
#include "xscugic.h"

#include "isr.h"

// ***** External variables *****
extern XAxiDma axi_dma;
extern XLlFifo axis_fifo;
extern XGpio   axi_gpio;
extern XScuGic axi_intc;

// ***** Global variables *****
int s2mm_done; // Flags which get set by ISR
int mm2s_done; // if in interrupt mode
int dma_err;

int dma_tansfer()
{
	// ***** Local variables *****
	int             status                   = 0;
	int             dma_buf[DMA_XFER_LENGTH];
	XAxiDma_Config* dma_cfg;
	XScuGic_Config* gic_cfg;

	// ***** Initialize DMA device *****
	status = dma_init(dma_cfg);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! DMA initialization failed!\n\r");
		return XST_FAILURE;
	}

	// ***** Initialize Interrupts *****
	status = intr_init(gic_cfg);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Interrupt controller initialization failed!\n\r");
		return XST_FAILURE;
	}

	// ***** Initialize AXIS FIFO ****
	status = fifo_init();
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! FIFO initialization failed!\n\r");
		return XST_FAILURE;
	}

	// ***** Release reset on data source *****
	status = reset_data_source();
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Could not release GPIO reset!\n\r");
		return XST_FAILURE;
	}

	// ***** Perform DMA transfer *****
	status = dma_xfer(dma_buf);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! DMA transfer failed!\n\r");
		return XST_FAILURE;
	}

	#if DEBUG == 1

		int ii;

		xil_printf("------------------------------------\n\r");
		for (ii = 0; ii < 40; ii++)
			xil_printf("dma_buf[%d] = 0x%X = %d\n\r", ii, dma_buf[ii], dma_buf[ii]);
		xil_printf("------------------------------------\n\r");

	#endif

	// ***** Check DMA data *****
	status = dma_verify_xfer();
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! DMA data check failed!\n\r");
		return XST_FAILURE;
	}

	// ***** Cleanup *****
//	status = cleanup();
//	if (status != XST_SUCCESS)
//	{
//		xil_printf("ERROR! DMA cleanup failed!\n\r");
//		return XST_FAILURE;
//	}

	return status;
}

int dma_init(XAxiDma_Config* cfg_ptr)
{
	// ***** Local variables *****
	int status = 0;

	xil_printf("Initializing DMA...\n\r");

	// Look up hardware configuration for device
	cfg_ptr = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!cfg_ptr)
	{
		xil_printf("No config found for %d\r\n", XPAR_AXIDMA_0_DEVICE_ID);
		return XST_FAILURE;
	}

	// Initialize driver
	status = XAxiDma_CfgInitialize(&axi_dma, cfg_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("Initialization failed %d\r\n", status);
		return XST_FAILURE;
	}

	// Test for Scatter Gather
	if (!XAxiDma_HasSg(&axi_dma))
	{
		xil_printf("Device configured in Register Direct mode \r\n");
		return XST_FAILURE;
	}

	// Disable interrupts for both channels
	XAxiDma_IntrDisable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	// Set up buffer descriptors
	status = s2mm_bd_setup(&axi_dma);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to set up the S2MM buffer descriptors! %d\r\n", status);
		return XST_FAILURE;
	}

	status = mm2s_bd_setup(&axi_dma);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to set up the MM2S buffer descriptors. %d\r\n", status);
		return XST_FAILURE;
	}

	xil_printf("DMA initialization complete!\n\r");

	return XST_SUCCESS;
}

int s2mm_bd_setup(XAxiDma* axi_dma)
{

	// Local variables
	int             status      = 0;
	int             num_bds     = 0;
	int             ii;
	int             free_bd_cnt;
	XAxiDma_BdRing* rx_ring     = XAxiDma_GetRxRing(axi_dma);
	XAxiDma_Bd*     bd_template;
	XAxiDma_Bd*     bd_ptr;
	XAxiDma_Bd*     bd_cur_ptr;
	u32             rx_buf_ptr;

	xil_printf("Setting up s2mm buffer descriptors...\n\r");

	// Disable interrupts
	XAxiDma_BdRingIntDisable(rx_ring, XAXIDMA_IRQ_ALL_MASK);

	// Calculate the number of BDs
	num_bds = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT, RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);

	// Setup space for BD ring in memory
	status = XAxiDma_BdRingCreate(rx_ring, RX_BD_SPACE_BASE, RX_BD_SPACE_BASE, XAXIDMA_BD_MINIMUM_ALIGNMENT, num_bds);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed create mm2s buffer descriptor ring.\r\n");
		return XST_FAILURE;
	}

	// Allocate BDs from template
	XAxiDma_BdClear(bd_template);
	status = XAxiDma_BdRingClone(rx_ring, bd_template);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed allocate s2mm buffer descriptors.\r\n");
		return XST_FAILURE;
	}

	// Get total number of BDs which can be allocated
	free_bd_cnt = XAxiDma_BdRingGetFreeCnt(rx_ring);

	// Allocate locations in the BD ring
	status = XAxiDma_BdRingAlloc(rx_ring, free_bd_cnt, &bd_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to allocate locations in the buffer descriptor ring.\r\n");
		return XST_FAILURE;
	}

	// Initialize pointer to point to first descriptor
	bd_cur_ptr = bd_ptr;
	rx_buf_ptr = RX_BUFFER_BASE;

	for (ii = 0; ii < free_bd_cnt; ii++)
	{

		// Set destination addresses in buffer descriptors
		status = XAxiDma_BdSetBufAddr(bd_cur_ptr, rx_buf_ptr);
		if (status != XST_SUCCESS)
		{
			xil_printf("ERROR! Failed to set buffer descriptor address.\r\n");
			return XST_FAILURE;
		}

		// Set length in buffer descriptors
		status = XAxiDma_BdSetLength(bd_cur_ptr, DMA_XFER_LENGTH, rx_ring->MaxTransferLen);
		if (status != XST_SUCCESS)
		{
			xil_printf("Rx set length %d on BD %x failed %d\r\n");
			return XST_FAILURE;
		}

		// Set control bits for BD
		XAxiDma_BdSetCtrl(bd_cur_ptr, 0); // ???

		// Set ID for BD
		XAxiDma_BdSetId(bd_cur_ptr, rx_ring); // ???

		// Increment pointer address to the next BD
		rx_buf_ptr += DMA_XFER_LENGTH;

		// Advance current BD pointer for next iteration
		bd_cur_ptr = XAxiDma_BdRingNext(rx_ring, bd_cur_ptr);
	}

	// Setup interrupt coalescing so only 1 interrupt fires per BD Ring transfer
	status = XAxiDma_BdRingSetCoalesce(rx_ring, COALESCING_CNT, DELAY_TIMER_CNT);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed set interrupt coalescing.\r\n");
		return XST_FAILURE;
	}

	// Queue BDs for hardware usage
	status = XAxiDma_BdRingToHw(rx_ring, free_bd_cnt, bd_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to put buffer descriptor rings in hardware queue.\r\n");
		return XST_FAILURE;
	}

	// Enable interrupts
	XAxiDma_BdRingIntEnable(rx_ring, XAXIDMA_IRQ_ALL_MASK);

	xil_printf("s2mm buffer descriptor setup complete!\n\r");

	return XST_SUCCESS;

}

int mm2s_bd_setup(XAxiDma* axi_dma)
{
	// Local Variables
	int             status      = 0;
	int             num_bds     = 0;
	XAxiDma_BdRing* tx_ring     = XAxiDma_GetTxRing(axi_dma);
	XAxiDma_Bd      bd_template;

	xil_printf("Setting up mm2s buffer descriptors...\n\r");

	// Disable interrupts
	XAxiDma_BdRingIntDisable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

	// Calculate the number of BDs
	num_bds = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT, (u32)TX_BD_SPACE_HIGH - (u32)TX_BD_SPACE_BASE + 1);

	// Setup space for BD ring in memory
	status = XAxiDma_BdRingCreate(tx_ring, TX_BD_SPACE_BASE, TX_BD_SPACE_BASE, XAXIDMA_BD_MINIMUM_ALIGNMENT, num_bds);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed create mm2s buffer descriptor ring.\r\n");
		return XST_FAILURE;
	}

	// Allocate BDs from template
	XAxiDma_BdClear(&bd_template);
	status = XAxiDma_BdRingClone(tx_ring, &bd_template);
	if (status != XST_SUCCESS)
	{

		xil_printf("ERROR! Failed allocate s2mm buffer descriptors.\r\n");
		return XST_FAILURE;
	}

	// Setup interrupt coalescing so only 1 interrupt fires per BD Ring transfer
	status = XAxiDma_BdRingSetCoalesce(tx_ring, COALESCING_CNT, DELAY_TIMER_CNT);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed set interrupt coalescing.\r\n");
		return XST_FAILURE;
	}

	// Enable interrupts
	XAxiDma_BdRingIntEnable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

	xil_printf("mm2s buffer descriptor setup complete!\n\r");

	return XST_SUCCESS;

}

int intr_init(XScuGic_Config *cfg_ptr)
{

	// ***** Local variables *****
	int             status  = 0;
	XAxiDma_BdRing* tx_ring = XAxiDma_GetTxRing(&axi_dma);
	XAxiDma_BdRing* rx_ring = XAxiDma_GetRxRing(&axi_dma);

	xil_printf("Initializing interrupt controller...\n\r");

	// Look up hardware configuration for device
	cfg_ptr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (!cfg_ptr)
	{
		xil_printf("No config found for %d\r\n", XPAR_PS7_SCUGIC_0_DEVICE_ID);
		return XST_FAILURE;
	}

	// Initialize driver
	status = XScuGic_CfgInitialize(&axi_intc, cfg_ptr, cfg_ptr->CpuBaseAddress);
	if (status != XST_SUCCESS)
	{
		xil_printf("Initialization failed %d\r\n", status);
		return XST_FAILURE;
	}

	// Set interrupt priorities and trigger type
	XScuGic_SetPriorityTriggerType(&axi_intc, XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(&axi_intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, 0xA8, 0x3);

	// Connect handlers
	//status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR, (Xil_InterruptHandler)s2mm_isr, &axi_dma);
	status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR, (Xil_InterruptHandler)s2mm_isr, rx_ring);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect s2mm_isr to the interrupt controller \r\n", status);
		return status;
	}
	//status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, (Xil_InterruptHandler)mm2s_isr, &axi_dma);
	status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, (Xil_InterruptHandler)mm2s_isr, tx_ring);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect mm2s_isr to the interrupt controller \r\n", status);
		return status;
	}

	// Enable interrupts
	XScuGic_Enable(&axi_intc, XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR);
	XScuGic_Enable(&axi_intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR);

	// Enable DMA interrupts
	XAxiDma_IntrEnable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrEnable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	// Initialize exception table and register the interrupt controller handler with exception table
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &axi_intc);

	// Enable non-critical exceptions
	Xil_ExceptionEnable();

	xil_printf("Interrupt controller initialization complete!\n\r");

	return XST_SUCCESS;
}

int fifo_init()
{
	xil_printf("Initializing FIFO...\n\r");

	// Initialize driver
	XLlFifo_Initialize(&axis_fifo, XPAR_AXI_FIFO_MM_S_1_BASEADDR);

	xil_printf("FIFO initialization complete!\n\r");

	return XST_SUCCESS;
}

int reset_data_source()
{
	// ***** Local variables *****
	int status = 0;

	status = XGpio_Initialize(&axi_gpio, XPAR_AXI_GPIO_1_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	XGpio_DiscreteWrite(&axi_gpio, 1, 0xFFFF);

	return XST_SUCCESS;

}

int dma_xfer(int* dma_buf)
//
// DMA Base Address = 0x40400000
// MM2S_DMACR       = 0x00
// MM2S_DMASR       = 0x04
// MM2S_CURDESC     = 0x08
// MM2S_TAILDESC    = 0x10
// S2MM_DMACR       = 0x30
// S2MM_DMASR       = 0x34
// S2MM_CURDESC     = 0x38
// S2MM_TAILDESC    = 0x40
//
{
	// ***** Local variables *****
	int             status     = 0;
	int             ii;
	int             jj;
	int*            rx_pkt_buf = (int*) RX_BUFFER_BASE;
	int*            tx_pkt_buf = (int*) TX_BUFFER_BASE;
	int*            tx_pkt;
	int*            rx_pkt;
	int             buf_addr;
	XAxiDma_BdRing* tx_ring    = XAxiDma_GetTxRing(&axi_dma);
	XAxiDma_BdRing* rx_ring    = XAxiDma_GetRxRing(&axi_dma);
	XAxiDma_Bd*     bd_ptr;
	XAxiDma_Bd*     cur_bd_ptr;

	xil_printf("Transferring data...\n\r");

	#if DEBUG == 1
		xil_printf("-------------------------------------------\n\r");
		xil_printf("- DMA config before transfer\n\r");
		xil_printf("-------------------------------------------\n\r");
		xil_printf("DMA Base Address     = 0x%08X\n\r", XPAR_AXI_DMA_1_BASEADDR);
		xil_printf("MM2S_DMACR    (0x%02X) = 0x%08X\n\r", 0x00, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x00));
		xil_printf("MM2S_DMASR    (0x%02X) = 0x%08X\n\r", 0x04, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x04));
		xil_printf("MM2S_CURDESC  (0x%02X) = 0x%08X\n\r", 0x08, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x08));
		xil_printf("MM2S_TAILDESC (0x%02X) = 0x%08X\n\r", 0x10, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x10));
		xil_printf("S2MM_DMACR    (0x%02X) = 0x%08X\n\r", 0x30, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x30));
		xil_printf("S2MM_DMASR    (0x%02X) = 0x%08X\n\r", 0x34, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x34));
		xil_printf("S2MM_CURDESC  (0x%02X) = 0x%08X\n\r", 0x38, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x38));
		xil_printf("S2MM_TAILDESC (0x%02X) = 0x%08X\n\r", 0x40, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x40));
		xil_printf("-------------------------------------------\n\r");
	#endif

	// Initialize flags which get set by ISR
	s2mm_done = 0;
	mm2s_done = 0;
	dma_err   = 0;

	// Enable channel
	status = XAxiDma_BdRingStart(rx_ring);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to enable s2mm channel.\r\n");
		return XST_FAILURE;
	}

	#if DEBUG == 1
		int reg_val = 0;

		xil_printf("-------------------------------------------\n\r");
		xil_printf("- DMA config after kicking off transfer\n\r");
		xil_printf("-------------------------------------------\n\r");
		xil_printf("DMA Base Address     = 0x%08X\n\r", XPAR_AXI_DMA_1_BASEADDR);
		xil_printf("MM2S_DMACR    (0x%02X) = 0x%08X\n\r", 0x00, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x00));
		xil_printf("MM2S_DMASR    (0x%02X) = 0x%08X\n\r", 0x04, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x04));
		xil_printf("MM2S_CURDESC  (0x%02X) = 0x%08X\n\r", 0x08, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x08));
		xil_printf("MM2S_TAILDESC (0x%02X) = 0x%08X\n\r", 0x10, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x10));
		xil_printf("S2MM_DMACR    (0x%02X) = 0x%08X\n\r", 0x30, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x30));
		xil_printf("S2MM_DMASR    (0x%02X) = 0x%08X\n\r", 0x34, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x34));
		xil_printf("S2MM_CURDESC  (0x%02X) = 0x%08X\n\r", 0x38, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x38));
		xil_printf("S2MM_TAILDESC (0x%02X) = 0x%08X\n\r", 0x40, XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x40));
		xil_printf("\n\r");
		reg_val = XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, 0x38);
		xil_printf("S2MM_CURDESC_NXTDESC  (0x%02X) = 0x%08X\n\r", 0x00, XAxiDma_ReadReg(reg_val, 0x00));
		xil_printf("S2MM_CURDESC_BUF_ADDR (0x%02X) = 0x%08X\n\r", 0x08, XAxiDma_ReadReg(reg_val, 0x08));
		xil_printf("S2MM_CURDESC_CR       (0x%02X) = 0x%08X\n\r", 0x18, XAxiDma_ReadReg(reg_val, 0x18));
		xil_printf("S2MM_CURDESC_SR       (0x%02X) = 0x%08X\n\r", 0x1C, XAxiDma_ReadReg(reg_val, 0x1C));
		xil_printf("-------------------------------------------\n\r");
	#endif

	// Wait for transfer to complete
	while(!s2mm_done && !dma_err)
	{
		// Do nothing
	}

	// Check if DMA controller threw an error
	if (dma_err)
	{
		xil_printf("ERROR! DMA device threw an error.");
		return XST_FAILURE;
	}

	// Ensure mm2s lengths are appropriate
	if (MAX_PKT_LEN * NUM_BDS_PER_PKT > tx_ring->MaxTransferLen)
	{
		xil_printf("ERROR! Invalid total per packet transfer length.\n\r");
		return XST_INVALID_PARAM;
	}

	// Move data from s2mm BDs into mm2s BDs for transmission (NO!!!!!!! use pointers....)
	tx_pkt = tx_pkt_buf;
	rx_pkt = rx_pkt_buf;
	for(ii = 0; ii < MAX_PKT_LEN * NUM_BDS_TO_XFER; ii++)
		tx_pkt[ii] = rx_pkt[ii];

	// Flush cache
	Xil_DCacheFlushRange((u32)tx_pkt, MAX_PKT_LEN * NUM_BDS_TO_XFER);

	// Allocate locations in the BD ring
	status = XAxiDma_BdRingAlloc(tx_ring, NUM_BDS_TO_XFER, &bd_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to allocate locations in the buffer descriptor ring.\r\n");
		return XST_FAILURE;
	}

	buf_addr   = (int) tx_pkt_buf;
	cur_bd_ptr = bd_ptr;

	// Setup the rest of the BD data structures
	for(ii = 0; ii < NUM_PKTS_TO_XFER; ii++)
	{
		for(jj = 0; jj < NUM_BDS_PER_PKT; jj++)
		{
			u32 cr_bits = 0;

			// Set source address of buffer described by current BD
			status = XAxiDma_BdSetBufAddr(cur_bd_ptr, buf_addr);
			if (status != XST_SUCCESS)
			{
				xil_printf("ERROR! Failed to set source address for this BD.\r\n");
				return XST_FAILURE;
			}

			// Set length of buffer
			status = XAxiDma_BdSetLength(cur_bd_ptr, DMA_XFER_LENGTH, tx_ring->MaxTransferLen);
			if (status != XST_SUCCESS)
			{
				xil_printf("ERROR! Failed to set buffer length for this BD.\r\n");
				return XST_FAILURE;
			}

			// Set SOF (tuser) for first BD (probably don't need this)
			if (jj == 0)
				cr_bits |= XAXIDMA_BD_CTRL_TXSOF_MASK;

			//if (jj == (NUM_BDS_PER_PKT - 1))
				cr_bits |= XAXIDMA_BD_CTRL_TXEOF_MASK; // Sets tlast to generate an interrupt. Since coalescing is 2, need 2 EOFs

			// Set control register
			XAxiDma_BdSetCtrl(cur_bd_ptr, cr_bits);

			// Set ID ???
			XAxiDma_BdSetId(cur_bd_ptr, buf_addr);

			buf_addr += DMA_XFER_LENGTH;
			cur_bd_ptr = XAxiDma_BdRingNext(tx_ring, cur_bd_ptr);
		}
	}

	// Pass the BD to hardware for transmission
	status = XAxiDma_BdRingToHw(tx_ring, NUM_BDS_TO_XFER, bd_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Faild to pass buffer descriptor ring to the hardware. \n\r");
		return XST_FAILURE;
	}

	// Enable channel
	status = XAxiDma_BdRingStart(tx_ring);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to enable mm2s channel.\r\n");
		return XST_FAILURE;
	}

	// Wait for transfer to complete
	while(!mm2s_done && !dma_err)
	{
		// Do nothing
	}

	// Check if DMA controller threw an error
	if (dma_err)
	{
		xil_printf("ERROR! DMA device threw an error.");
		return XST_FAILURE;
	}

	xil_printf("DMA transfer complete!\n\r");

	return XST_SUCCESS;

}

int dma_verify_xfer()
{

	// ***** Local variables *****
	int ii     = 0;
	int fifo_frame[(NUM_BYTES_PER_BD * NUM_BDS_PER_PKT * NUM_PKTS_TO_XFER)];

	xil_printf("Verifying transferred data...\n\r");

	// Read frame of data from AXIS FIFO
	XLlFifo_Read(&axis_fifo, fifo_frame, (NUM_BYTES_PER_BD * NUM_BDS_PER_PKT * NUM_PKTS_TO_XFER));

	#if 0

		xil_printf("------------------------------------\n\r");
		for (ii = 120; ii < 140; ii++)
			xil_printf("fifo_frame[%d] = 0x%X = %d\n\r", ii, fifo_frame[ii], fifo_frame[ii]);
		xil_printf("------------------------------------\n\r");

	#endif

	// Check data
	for (ii = 0; ii < (NUM_BYTES_PER_BD * NUM_BDS_PER_PKT * NUM_PKTS_TO_XFER)/4; ii++) // Word aligned
	{
		if (fifo_frame[ii] != ii+1)
		{
			xil_printf("ERROR! Data mismatch\n\r");




			xil_printf("failed on iteration %d with value %d\n\r", ii, fifo_frame[ii]);




			return XST_FAILURE;
		}
	}

	xil_printf("Data verification complete! Sent data matches received data with no errors.\n\r");

	return XST_SUCCESS;

}


int cleanup()
{
	XGpio_DiscreteWrite(&axi_gpio, 1, 0x0000); // Put data source back in reset state for next run

	return XST_SUCCESS;
}


