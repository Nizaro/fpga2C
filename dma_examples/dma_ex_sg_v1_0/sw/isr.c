/*
 * isr.c
 *
 *  Created on: Aug 2, 2013
 *      Author: bwiec
 */

// ***** Includes *****
#include "xaxidma.h"
#include "xscugic.h"

#include "isr.h"

// ***** External variables *****
extern XScuGic axi_intc;
extern XAxiDma axi_dma;
extern int dma_err;
extern int s2mm_done;
extern int mm2s_done;

void s2mm_isr(void* CallbackRef)
{
	u32 irq_status;
	int time_out;
	XAxiDma_BdRing* rx_ring = (XAxiDma_BdRing *) CallbackRef;
	XAxiDma_BdRing* tx_ring = XAxiDma_GetTxRing(&axi_dma);


	// Disable interrupts
	XAxiDma_BdRingIntDisable(rx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingIntDisable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

	// Read pending interrupts
	irq_status = XAxiDma_BdRingGetIrq(rx_ring);

	// Acknowledge pending interrupts
	XAxiDma_BdRingAckIrq(rx_ring, irq_status);

	// If no interrupt is asserted, we do not do anything
	if (!(irq_status & XAXIDMA_IRQ_ALL_MASK))
		return;

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((irq_status & XAXIDMA_IRQ_ERROR_MASK))
	{

		dma_err = 1;

		// Reset should never fail for transmit channel
		XAxiDma_Reset(&axi_dma);

		time_out = RESET_TIMEOUT_COUNTER;
		while (time_out)
		{
			if (XAxiDma_ResetIsDone(&axi_dma))
				break;

			time_out -= 1;
		}

		return;
	}

	// Completion interrupt asserted
	if (irq_status & XAXIDMA_IRQ_IOC_MASK)
		s2mm_done = 1;

	// Re-enable interrupts
	XAxiDma_BdRingIntEnable(rx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingIntEnable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

}

void mm2s_isr(void* CallbackRef)
{

	u32 irq_status;
	int time_out;
	XAxiDma_BdRing* tx_ring = (XAxiDma_BdRing *) CallbackRef;
	XAxiDma_BdRing* rx_ring = XAxiDma_GetTxRing(&axi_dma);

	// Disable interrupts
	XAxiDma_BdRingIntDisable(rx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingIntDisable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

	// Read pending interrupts
	irq_status = XAxiDma_BdRingGetIrq(tx_ring);

	// Acknowledge pending interrupts
	XAxiDma_BdRingAckIrq(tx_ring, irq_status);

	// If no interrupt is asserted, we do not do anything
	if (!(irq_status & XAXIDMA_IRQ_ALL_MASK))
		return;

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if (irq_status & XAXIDMA_IRQ_ERROR_MASK)
	{

		dma_err = 1;

		// Reset could fail and hang
		XAxiDma_Reset(&axi_dma);

		time_out = RESET_TIMEOUT_COUNTER;

		while (time_out)
		{
			if (XAxiDma_ResetIsDone(&axi_dma))
				break;

			time_out -= 1;
		}

		return;
	}

	// If completion interrupt is asserted, then set RxDone flag
	if (irq_status & XAXIDMA_IRQ_IOC_MASK)
		mm2s_done = 1;

	// Re-enable interrupts
	XAxiDma_BdRingIntEnable(rx_ring, XAXIDMA_IRQ_ALL_MASK);
	XAxiDma_BdRingIntEnable(tx_ring, XAXIDMA_IRQ_ALL_MASK);

}

