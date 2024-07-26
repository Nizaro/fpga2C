/*
 * dma.c
 *
 *  Created on: Jul 31, 2013
 *      Author: bwiec
 */

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
extern XGpio axi_gpio;
extern XScuGic axi_intc;

// ***** Global variables *****
int s2mm_done; // Flags which get set by ISR
int mm2s_done; // if in interrupt mode
int dma_err;

int dma_tansfer()
{
	// ***** Local variables *****
	int status = 0;
	int dma_buf[DMA_XFER_LENGTH];
	XAxiDma_Config *dma_cfg;
	XScuGic_Config *gic_cfg;

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
	status = cleanup();
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! DMA data check failed!\n\r");
		return XST_FAILURE;
	}

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
	if (XAxiDma_HasSg(&axi_dma))
	{
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	// Disable interrupts for both channels
	XAxiDma_IntrDisable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axi_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	xil_printf("DMA initialization complete!\n\r");

	return XST_SUCCESS;
}

int intr_init(XScuGic_Config *cfg_ptr)
{

	// ***** Local variables *****
	int status;

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
	status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_S2MM_INTROUT_INTR, (Xil_InterruptHandler)s2mm_isr, &axi_dma);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to connect s2mm_isr to the interrupt controller \r\n", status);
		return status;
	}
	status = XScuGic_Connect(&axi_intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, (Xil_InterruptHandler)mm2s_isr, &axi_dma);
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
{
	// ***** Local variables *****
	int status = 0;

	xil_printf("Transferring data...\n\r");

	// Flush cache
	Xil_DCacheFlushRange((u32)dma_buf, DMA_XFER_LENGTH);

	s2mm_done = 0; // Initialize flags which get set by ISR
	mm2s_done = 0;
	dma_err   = 0;

	// Kick off S2MM transfer
	status = XAxiDma_SimpleTransfer(&axi_dma, (u32)dma_buf, DMA_XFER_LENGTH, XAXIDMA_DEVICE_TO_DMA);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to kick off S2MM transfer!\n\r");
		return XST_FAILURE;
	}

	// Kick off MM2S transfer
	status = XAxiDma_SimpleTransfer(&axi_dma, (u32)dma_buf, DMA_XFER_LENGTH, XAXIDMA_DMA_TO_DEVICE);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Failed to kick off MM2S transfer!\n\r");
		return XST_FAILURE;
	}

	// Wait for transfers to complete
	while (!(s2mm_done && mm2s_done) && !dma_err)
	{
			// Do nothing
	}

	// Check if DMA controller threw an error
	if (dma_err)
	{
		xil_printf("ERROR! DMA device threw an error!");
		return XST_FAILURE;
	}

	xil_printf("DMA transfer complete!\n\r");

	return XST_SUCCESS;

}

int dma_verify_xfer()
{

	// ***** Local variables *****
	int ii     = 0;
	int fifo_frame[DMA_XFER_LENGTH];

	xil_printf("Verifying transferred data...\n\r");

	// Read frame of data from AXIS FIFO
	XLlFifo_Read(&axis_fifo, fifo_frame, DMA_XFER_LENGTH);

	#if DEBUG == 1

		xil_printf("------------------------------------\n\r");
		for (ii = 100; ii < 140; ii++)
			xil_printf("fifo_frame[%d] = 0x%X = %d\n\r", ii, fifo_frame[ii], fifo_frame[ii]);
		xil_printf("------------------------------------\n\r");

	#endif

	// Check data
	for (ii = 0; ii < DMA_XFER_LENGTH/4; ii++)
	{
		if (fifo_frame[ii] != ii+1)
		{
			xil_printf("ERROR! Data mismatch\n\r");
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


