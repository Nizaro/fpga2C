/******************************************************************************
* Copyright (c) 2014 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (c) 2022 - 2024 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*****************************************************************************/
/**
* @file boot.S
*
* @addtogroup r5_boot_code Cortex R5 Processor Boot Code
* @{
* <h2> boot.S </h2>
* The boot.S file contains a minimal set of code for transferring control from the processor
* reset location of the processor to the start of the application.
* The boot code performs minimum configuration which is required for an
* application to run starting from reset state of the processor. Below is a
* sequence illustrating what all configuration is performed before control
* reaches to main function.
*
* 1. Program vector table base for exception handling
* 2. Program stack pointer for various modes (IRQ, FIQ, supervisor, undefine,
*    abort, system)
* 3. Disable instruction cache, data cache and MPU
* 4. Invalidate instruction and data cache
* 5. Configure MPU with short descriptor translation table format and program
*    base address of translation table
* 6. Enable data cache, instruction cache and MPU
* 7. Enable Floating point unit
* 8. Transfer control to _start which clears BSS sections and jumping to main
*    application
*
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------
* 5.00  pkp  02/10/14 Initial version
* 5.04	pkp  09/11/15 Disabled ACTLR.DBWR bit to avoid potential R5 deadlock
*		      for errata 780125
* 5.04 pkp   02/04/16 Enabled the fault log for lock-step mode
* 5.04 pkp   02/25/16 Initialized the banked registers for various modes,
*		      initialized floating point registers and enabled the
*		      cache ECC check before enabling the fault log for
*		      lock step mode
* 5.04 pkp   03/24/16 Reset the dbg_lpd_reset before enabling the fault log
*		      to avoid intervention for lock-step mode
* 5.05 pkp   04/11/16 Enable the comparators for non-JTAG boot mode for
*		      lock-step to avoid putting debug logic to reset
* 6.02 pkp   02/13/17 Added support for hard float
* 6.6  mus   02/23/17 Enable/Disable the debug logic in non-JTAG boot mode(when
*		      processor is in lockstep configuration), based
*		      on the mld parameter "lockstep_mode_debug".
* 6.8  mus   09/20/18 Clear VINITHI field in RPU_0_CFG/RPU_1_CFG
*		      registers to initialize CortexR5 core with LOVEC
*		      on reset. It fixes CR#1010656.
* 7.1  mus  03/27/19  Skip reading/writing to the RPU address space registers,
*		      in case if processor is nonsecure and RPU
*		      address space is secure. CR#1015725.
* 7.2  mus  10/11/19  Resetting the r5_0 and r5_1 debug logic is sufficient
*		      to avoid intervention for lock-step mode. So, removed
*		      code which resets dbg_lpd_reset, to unblock debugger
*		      access to LPD. Fix for CR#1027983.
* 7.7  mus  11/26/21  Added call to Print_DDRSize_Warning after MPU enablement
*                     to print warning related to DDR size if it is not in
*                     power of 2. It fixes CR#1116431.
* 8.0  mus  07/06/21  Added support for VERSAL NET
* 9.0  mus  04/28/23  Updated for CortexR52 to support strongly ordered device
*                     attribute at index 3 of MAIR register.
* 9.0  mus  07/04/23  Add support to initialize TCM A, B and C for CortexR52
*                     based on _TCM_A_REGION, _TCM_B_REGION and _TCM_C_REGION
*                     variables exported by linker script.
* 9.0  mus  07/12/23  Added SDT flow support for CortexR52 BSP.
* 9.0  mus  07/27/23  Removed dependency on XPAR_CPU_ID, updated logic to use
*                     CPU affinity register to read CPU ID.
* 9.0  mus  08/01/23  Enable low latency peripheral port for CortexR52.
* 9.1  mus  04/19/24  Add support for lockstep_mode_debug handling in SDT flow
* </pre>
*
******************************************************************************/
#ifndef SDT
#include "xparameters.h"
#else
#include "bspconfig.h"
#endif


.global _prestart
.global _boot
.global __stack
.global __irq_stack
.global __supervisor_stack
.global __abort_stack
.global __fiq_stack
.global __undef_stack
.global _vector_table

#if defined (ARMR52)
.global _TCM_A_REGION
.global _TCM_B_REGION
.global _TCM_C_REGION
#endif

/* Stack Pointer locations for boot code */
.set Undef_stack,	__undef_stack
.set FIQ_stack,		__fiq_stack
.set Abort_stack,	__abort_stack
.set SPV_stack,		__supervisor_stack
.set IRQ_stack,		__irq_stack
.set SYS_stack,		__stack

.set vector_base,	_vector_table

.set RPU_GLBL_CNTL,	0xFF9A0000
.set RPU_ERR_INJ,	0xFF9A0020
.set RPU_0_CFG,		0xFF9A0100
.set RPU_1_CFG,		0xFF9A0200
#if defined(versal)
.set RST_LPD_DBG,	0xFF5E0338
.set BOOT_MODE_USER,	0xF1260200
#else
.set RST_LPD_DBG,	0xFF5E0240
.set BOOT_MODE_USER,	0xFF5E0200
#endif
.set fault_log_enable,	0x101

#if defined (ARMR52)
#ifndef SDT
.set counterfreq,       XPAR_CPU_CORTEXR52_0_TIMESTAMP_CLK_FREQ
#else
.global XCortexr52_ConfigTable
#endif
#else
#ifndef SDT
/*
 * 0th bit of PROCESSOR_ACCESS_VALUE macro signifies trustzone
 * setting for RPU address space
 */
#define RPU_TZ_MASK	0x1
#else
.extern XCortexr5_ConfigTable
.set RPU_TZ_MASK,       0x1
#endif
#endif

.section .boot,"axS"

/* this initializes the various processor modes */

_prestart:
_boot:

OKToRun:
#if defined (ARMR52)
	mrs r0, cpsr
	bfi r1, r0, #0, #5
	cmp r1, #0x1A         /* Check if it is HYP mode */
	bne InitEL1

        ldr r0, =_vector_table
        mcr p15, 4, r0, c12, c0, 0      /* Write HVBAR */
#endif
/* Initialize processor registers to 0 */
	mov	r0,#0
	mov	r1,#0
	mov	r2,#0
	mov	r3,#0
	mov	r4,#0
	mov	r5,#0
	mov	r6,#0
	mov	r7,#0
	mov	r8,#0
	mov	r9,#0
	mov	r10,#0
	mov	r11,#0
	mov	r12,#0

#if defined (ARMR52)
/* Set counter frequency, CNTFRQ: RW from EL2 RO from EL1 */
#ifndef SDT
	ldr     r0,=counterfreq              /* 800 KHZ TODO: change it based on HW design through XPARS */
#else
	ldr	r1,=XCortexr52_ConfigTable
	ldr     r0,[r1]
#endif
    mcr     15,0,r0,c14,c0,0        /* Write CNTFRQ */

/* Change EL1 exception base address */
    ldr r0, =_vector_table
    mcr p15, 0, r0, c12, c0, 0      /* Write VBAR */

    mrc     p15, 4, r1, c1, c0, 1   /* Read HACTLR */
    orr     r1, r1, #(0x1 << 8)     /* Enable access to IMP_PERIPHPREGIONR at EL1 */
    mcr     p15, 4, r1, c1, c0, 1   /* Write HACTLR */

/* Switch to EL1 SVC mode */
    mrs r0, cpsr
    mov r1, #0x13                   /* Mode SVC */
    bfi r0, r1, #0, #5
    msr spsr, r0
    ldr r0, =InitEL1
    msr elr_hyp, r0
    dsb
    isb
    eret
InitEL1:
#endif

/* Initialize stack pointer and banked registers for various mode */
	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the irq stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x12			/* IRQ mode */
	msr	cpsr, r2
	ldr	r13,=IRQ_stack			/* IRQ stack pointer */
	mov 	r14,#0

	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the supervisor stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x13			/* supervisor mode */
	msr	cpsr, r2
	ldr	r13,=SPV_stack			/* Supervisor stack pointer */
	mov 	r14,#0

	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the Abort  stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x17			/* Abort mode */
	msr	cpsr, r2
	ldr	r13,=Abort_stack		/* Abort stack pointer */
	mov 	r14,#0

	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the FIQ stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x11			/* FIQ mode */
	msr	cpsr, r2
	mov 	r8, #0
	mov 	r9, #0
	mov 	r10, #0
	mov 	r11, #0
	mov 	r12, #0
	ldr	r13,=FIQ_stack			/* FIQ stack pointer */
	mov 	r14,#0

	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the Undefine stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x1b			/* Undefine mode */
	msr	cpsr, r2
	ldr	r13,=Undef_stack		/* Undefine stack pointer */
	mov 	r14,#0

	mrs	r0, cpsr			/* get the current PSR */
	mvn	r1, #0x1f			/* set up the system stack pointer */
	and	r2, r1, r0
	orr	r2, r2, #0x1F			/* SYS mode */
	msr	cpsr, r2
	ldr	r13,=SYS_stack			/* SYS stack pointer */
	mov 	r14,#0

/*
 * Enable access to VFP by enabling access to Coprocessors 10 and 11.
 * Enables Full Access i.e. in both privileged and non privileged modes
 */
	mrc     p15, 0, r0, c1, c0, 2      	/* Read Coprocessor Access Control Register (CPACR) */
        orr     r0, r0, #(0xF << 20)       	/* Enable access to CP 10 & 11 */
        mcr     p15, 0, r0, c1, c0, 2      	/* Write Coprocessor Access Control Register (CPACR) */
        isb

/* enable fpu access  */
	vmrs	r3, FPEXC
	orr	r1, r3, #(1<<30)
	vmsr	FPEXC, r1

/* clear the floating point register*/
	mov	r1,#0
	vmov	d0,r1,r1
	vmov	d1,r1,r1
	vmov	d2,r1,r1
	vmov	d3,r1,r1
	vmov	d4,r1,r1
	vmov	d5,r1,r1
	vmov	d6,r1,r1
	vmov	d7,r1,r1
	vmov	d8,r1,r1
	vmov	d9,r1,r1
	vmov	d10,r1,r1
	vmov	d11,r1,r1
	vmov	d12,r1,r1
	vmov	d13,r1,r1
	vmov	d14,r1,r1
	vmov	d15,r1,r1

#ifdef __SOFTFP__
/* Disable the FPU if SOFTFP is defined*/
	vmsr	FPEXC,r3
#endif

/* Disable MPU and caches */
        mrc     p15, 0, r0, c1, c0, 0       	/* Read CP15 Control Register*/
        bic     r0, r0, #0x05               	/* Disable MPU (M bit) and data cache (C bit) */
        bic     r0, r0, #0x1000             	/* Disable instruction cache (I bit) */
        dsb                                 	/* Ensure all previous loads/stores have completed */
        mcr     p15, 0, r0, c1, c0, 0       	/* Write CP15 Control Register */
        isb                                 	/* Ensure subsequent insts execute wrt new MPU settings */
#if defined (ARMR52)
/* TODO: revisit to check whether fault log handling like Cortex-R5 is needed */

/* Enable ECC checks */
	mrc p15, 1, r0, c9, c1, 2			/* Read IMP_MEMPROTCTLR */
	/* disable TCM ECC */
	bic r0, r0, #(0x1 << 0)				/* disable TCM and L1 cache ECC */
	mcr p15, 1, r0, c9, c1, 2			/* Write IMP_MEMPROTCTLR */

/* Enable TCM */
	ldr r0, =_TCM_A_REGION
	ldr r1, [r0]
	tst r1, #0x1
	beq InitTCMB
	mcr p15, 0, r1, c9, c1, 0  /* Write r1 to IMP_ATCMREGIONR */

InitTCMB:
	ldr r0, =_TCM_B_REGION
	ldr r1, [r0]
	tst r1, #0x1
	beq InitTCMC
	mcr p15, 0, r1, c9, c1, 1  /* Write r1 to IMP_BTCMREGIONR */

InitTCMC:
	ldr r0, =_TCM_C_REGION
	ldr r1, [r0]
	tst r1, #0x1
	beq InitTCMDone
	mcr p15, 0, r1, c9, c1, 2  /* Write r1 to IMP_CTCMREGIONR */
InitTCMDone:
	mrc     p15, 0, r1, c15, c0, 0   /* Read IMP_PERIPHPREGIONR */
	orr     r1, r1, #(0x3)           /* Enable peripheral port at EL2 and EL1 and EL0 */
	mcr     p15, 0, r1, c15, c0, 0   /* Write IMP_PERIPHPREGIONR */

/* Disable branch prediction */
	mrc p15, 1, r0, c9, c1, 1			/* Read IMP_BPCTLR */
	orr r0, r0, #(0x1 << 1)				/* Disable branch prediction */
	mcr p15, 1, r0, c9, c1, 1 			/* Write IMP_BPCTLR */

/* Set attributes index for normal and device memory in MAIR0 */
        MRC p15, 0, r0, c10, c2, 0	/* Read MAIR0 */
        LDR r1, =0xBB                   /* Attribute index0: Normal inner/outer RW cacheable, write-through */
        BFI r0, r1, #0, #8              /* Update attribute index0 */
        LDR r1, =0x04                   /* Attribute index1: Device nGnRE */
        BFI r0, r1, #8, #8              /* Update Attribute index1 */
	LDR r1, =0x44                   /* Attribute index2: Normal non cacheable */
        BFI r0, r1, #16, #8              /* Update Attribute index2 */
	LDR r1, =0x00                   /* Attribute index3: Strongly ordered nGnRnE */
        BFI r0, r1, #24, #8              /* Update Attribute index3 */
        MCR p15,0,r0,c10,c2,0           /* Write MAIR0 */

#else
/* Disable Branch prediction, TCM ECC checks */
        mrc     p15, 0, r0, c1, c0, 1       	/* Read ACTLR */
        orr     r0, r0, #(0x1 << 17)        	/* Enable RSDIS bit 17 to disable the return stack */
        orr     r0, r0, #(0x1 << 16)        	/* Clear BP bit 15 and set BP bit 16:*/
        bic     r0, r0, #(0x1 << 15)        	/* Branch always not taken and history table updates disabled*/
        orr     r0, r0, #(0x1 << 27)		/* Enable B1TCM ECC check */
        orr     r0, r0, #(0x1 << 26)		/* Enable B0TCM ECC check */
        orr     r0, r0, #(0x1 << 25)		/* Enable ATCM ECC check */
	bic	r0, r0, #(0x1 << 5)		/* Generate abort on parity errors, with [5:3]=b 000*/
	bic 	r0, r0, #(0x1 << 4)
	bic	r0, r0, #(0x1 << 3)
        mcr     p15, 0, r0, c1, c0, 1       	/* Write ACTLR*/
	dsb				    	/* Complete all outstanding explicit memory operations*/

/* Invalidate caches */
	mov	r0,#0				/* r0 = 0  */
	dsb
	mcr	p15, 0, r0, c7, c5, 0		/* invalidate icache */
	mcr 	p15, 0, r0, c15, c5, 0      	/* Invalidate entire data cache*/
	isb

#if ( (LOCKSTEP_MODE_DEBUG == 0) && ((defined (SDT) || (PROCESSOR_ACCESS_VALUE & RPU_TZ_MASK))))

#ifdef SDT
        ldr     r0,=XCortexr5_ConfigTable
        ands    r0, r0, #RPU_TZ_MASK
        TST     r0, #1
        bne     init       /* Processor does not have access to RPU_GLBL_CNTL */
#endif

/* enable fault log for lock step */
	ldr	r0,=RPU_GLBL_CNTL
	ldr	r1, [r0]
	ands	r1, r1, #0x8
/* branch to initialization if split mode*/
	bne 	init
/* check for boot mode if in lock step, branch to init if JTAG boot mode*/
	ldr	r0,=BOOT_MODE_USER
	ldr 	r1, [r0]
	ands	r1, r1, #0xF
	beq 	init
/* reset the debug logic */
	ldr	r0,=RST_LPD_DBG
	ldr	r1, [r0]
	orr	r1, r1, #(0x1 << 4)
	orr	r1, r1, #(0x1 << 5)
	str	r1, [r0]
/* enable fault log */
	ldr	r0,=RPU_ERR_INJ
	ldr	r1,=fault_log_enable
	ldr	r2, [r0]
	orr	r2, r2, r1
	str	r2, [r0]
	nop
	nop
#endif
#endif

init:
	bl 	Init_MPU		/* Initialize MPU */
#if defined (ARMR52)
/* Enable Branch prediction */
        mrc p15, 1, r0, c9, c1, 1       /* Read IMP_BPCTLR */
        bic r0, r0, #(0x1 << 1)         /* Enable branch prediction */
        mcr p15, 1, r0, c9, c1, 1       /* Write IMP_BPCTLR */

	mrc p15, 0, r1, c1, c0, 0	/* Read System Control Register */
        ldr     r0, =0x1005           /* Set M bit to enable MPU, C & I bit for data and instruction caches  */
	orr r1,r1,r0
        dsb                             /* Ensure all previous loads/stores have completed */
        mcr     p15, 0, r0, c1, c0, 0   /* Write System Control Register */
        isb
#else
/* Enable Branch prediction */
	mrc     p15, 0, r0, c1, c0, 1       /* Read ACTLR*/
        bic     r0, r0, #(0x1 << 17)        /* Clear RSDIS bit 17 to enable return stack*/
        bic     r0, r0, #(0x1 << 16)        /* Clear BP bit 15 and BP bit 16:*/
        bic     r0, r0, #(0x1 << 15)        /* Normal operation, BP is taken from the global history table.*/
        orr	r0, r0, #(0x1 << 14)	    /* Disable DBWR for errata 780125 */
	mcr     p15, 0, r0, c1, c0, 1       /* Write ACTLR*/

/* Enable icahce and dcache */
	mrc 	p15,0,r1,c1,c0,0
	ldr	r0, =0x1005
	orr 	r1,r1,r0
	dsb
	mcr	p15,0,r1,c1,c0,0		/* Enable cache  */
	isb					/* isb	flush prefetch buffer */
#ifndef versal
	bl Print_DDRSize_Warning
#endif

/* Warning message to be removed after 2016.1 */
/* USEAMP was introduced in 2015.4 with ZynqMP and caused confusion with USE_AMP */
#ifdef USEAMP
#warning "-DUSEAMP=1 is deprecated, use -DVEC_TABLE_IN_OCM instead to set vector table in OCM"
#endif

/* Set vector table in TCM/LOVEC */
#ifndef VEC_TABLE_IN_OCM
	mrc	p15, 0, r0, c1, c0, 0
	mvn	r1, #0x2000
	and	r0, r0, r1
	mcr	p15, 0, r0, c1, c0, 0


/* Check if processor is having access to RPU address space */
#if defined (SDT)
        ldr     r0,=XCortexr5_ConfigTable
        ands    r0, r0, #RPU_TZ_MASK
        TST     r0, #1
        bne     nocfgaccess
#endif

#if (defined(SDT)|| (! defined(SDT) && (PROCESSOR_ACCESS_VALUE & RPU_TZ_MASK)))
/* Clear VINITHI to enable LOVEC on reset */
        mrc     p15, 0, r0,  c0,  c0, 5 /* Read MPIDR register */
        ands    r0, r0, #0xFF	        /* Get affinity level 0 */
        bne     cpu1
	ldr r0, =RPU_0_CFG
	b	rpucfg
cpu1:
	ldr r0, =RPU_1_CFG
rpucfg:
	ldr r1, [r0]
	bic r1, r1, #(0x1 << 2)
	str r1, [r0]
#endif
#endif
#endif
nocfgaccess:
/* enable asynchronous abort exception */
	mrs	r0, cpsr
	bic	r0, r0, #0x100
	msr	cpsr_xsf, r0

        b 	_startup                       /* jump to C startup code */


.Ldone:	b	.Ldone				/* Paranoia: we should never get here */


.end
/**
* @} End of "addtogroup r5_boot_code".
*/
