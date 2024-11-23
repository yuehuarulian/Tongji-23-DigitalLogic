/* $Id: xps2_l.h,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
/******************************************************************************
*
* (c) Copyright 2008-2009 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xps2_l.h
*
* This header file contains identifiers and low-level driver functions (or
* macros) that can be used to access the device. The user should refer to the
* hardware device specification for more details of the device operation.
* High-level driver functions are defined in xps2.h.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- ------   -------- -----------------------------------------------
* 1.00a sv/sdm   01/25/08 First release
* </pre>
*
******************************************************************************/
#ifndef XPS2_L_H /* prevent circular inclusions */
#define XPS2_L_H /* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files ********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xil_io.h"

/************************** Constant Definitions ****************************/

/**
 * PS/2 register offsets
 */
/** @name Register Map
 *
 * Register offsets for the XPs2 device.
 * @{
 */
#define XPS2_SRST_OFFSET	0x00000000 /**< Software Reset register */
#define XPS2_STATUS_OFFSET	0x00000004 /**< Status register */
#define XPS2_RX_DATA_OFFSET	0x00000008 /**< Receive Data register */
#define XPS2_TX_DATA_OFFSET	0x0000000C /**< Transmit Data register */
#define XPS2_GIER_OFFSET	0x0000002C /**< Global Interrupt Enable reg */
#define XPS2_IPISR_OFFSET	0x00000030 /**< Interrupt Status register */
#define XPS2_IPIER_OFFSET	0x00000038 /**< Interrupt Enable register */

/* @} */

/** @name Reset Register Bit Definitions
 *
 * @{
 */
#define XPS2_SRST_RESET		0x0000000A /**< Software Reset  */

/* @} */


/** @name Status Register Bit Positions
 *
 * @{
 */
#define XPS2_STATUS_RX_FULL	0x00000001 /**< Receive Full  */
#define XPS2_STATUS_TX_FULL	0x00000002 /**< Transmit Full  */

/* @} */


/** @name PS/2 Device Interrupt Status/Enable Registers
 *
 * <b> Interrupt Status Register (IPISR) </b>
 *
 * This register holds the interrupt status flags for the PS/2 device.
 *
 * <b> Interrupt Enable Register (IPIER) </b>
 *
 * This register is used to enable interrupt sources for the PS/2 device.
 * Writing a '1' to a bit in this register enables the corresponding Interrupt.
 * Writing a '0' to a bit in this register disables the corresponding Interrupt.
 *
 * ISR/IER registers have the same bit definitions and are only defined once.
 * @{
 */
#define XPS2_IPIXR_WDT_TOUT	0x00000001 /**< Watchdog Timeout Interrupt */
#define XPS2_IPIXR_TX_NOACK	0x00000002 /**< Transmit No ACK Interrupt */
#define XPS2_IPIXR_TX_ACK	0x00000004 /**< Transmit ACK (Data) Interrupt */
#define XPS2_IPIXR_RX_OVF	0x00000008 /**< Receive Overflow Interrupt */
#define XPS2_IPIXR_RX_ERR	0x00000010 /**< Receive Error Interrupt */
#define XPS2_IPIXR_RX_FULL	0x00000020 /**< Receive Data Interrupt */

/**
 * Mask for all the Transmit Interrupts
 */
#define XPS2_IPIXR_TX_ALL	(XPS2_IPIXR_TX_NOACK | XPS2_IPIXR_TX_ACK)

/**
 * Mask for all the Receive Interrupts
 */
#define XPS2_IPIXR_RX_ALL	(XPS2_IPIXR_RX_OVF | XPS2_IPIXR_RX_ERR |  \
					XPS2_IPIXR_RX_FULL)

/**
 * Mask for all the Interrupts
 */
#define XPS2_IPIXR_ALL		(XPS2_IPIXR_TX_ALL | XPS2_IPIXR_RX_ALL |  \
					XPS2_IPIXR_WDT_TOUT)
/* @} */


/**
 * @name Global Interrupt Enable Register (GIER) mask(s)
 * @{
 */
#define XPS2_GIER_GIE_MASK	0x80000000 /**< Global interrupt enable */
/*@}*/

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

#define XPs2_In32  Xil_In32
#define XPs2_Out32 Xil_Out32

/****************************************************************************/
/**
* Read from the specified PS/2 device register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the 1st register of the
*		device to select the specific register.
*
* @return	The value read from the register.
*
* @note		C-Style signature:
*		u32 XPs2_ReadReg(u32 BaseAddress, u32 RegOffset);
*
******************************************************************************/
#define XPs2_ReadReg(BaseAddress, RegOffset) \
	XPs2_In32((BaseAddress) + (RegOffset))

/***************************************************************************/
/**
* Write to the specified PS/2 device register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the 1st register of the
*		device to select the specific register.
* @param	RegisterValue is the value to be written to the register.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_WriteReg(u32 BaseAddress, u32 RegOffset,
*				u32 RegisterValue);
******************************************************************************/
#define XPs2_WriteReg(BaseAddress, RegOffset, RegisterValue) \
	XPs2_Out32((BaseAddress) + (RegOffset), (RegisterValue))

/****************************************************************************/
/**
* This macro checks if the receiver is full (There is data in the receive data
* register).
*
* @param	BaseAddress contains the base address of the device.
*
* @return
*		- TRUE if there is receive data.
*		- FALSE if there is no receive data.
*
* @note		C-Style signature:
*		int XPs2_IsRxFull(u32 BaseAddress);
*
******************************************************************************/
#define XPs2_IsRxFull(BaseAddress) 					\
	(((XPs2_ReadReg(BaseAddress, XPS2_STATUS_OFFSET) & 		\
			XPS2_STATUS_RX_FULL)) ? TRUE : FALSE)

/****************************************************************************/
/**
* This macro checks if the transmitter is empty.
*
* @param	BaseAddress contains the base address of the device.
*
* @return
*		- TRUE if the transmitter is not full and data can be sent.
*		- FALSE if the transmitter is full.
*
* @note		C-Style signature:
*		int XPs2_IsTxEmpty(u32 BaseAddress);
*
******************************************************************************/
#define XPs2_IsTxEmpty(BaseAddress) 				     \
	((XPs2_ReadReg(BaseAddress, XPS2_STATUS_OFFSET ) & 		     \
			XPS2_STATUS_TX_FULL) ? FALSE: TRUE)

/************************** Variable Definitions ****************************/

/************************** Function Prototypes *****************************/

void XPs2_SendByte(u32 BaseAddress, u8 Data);
u32 XPs2_RecvByte(u32 BaseAddress);

/****************************************************************************/

#ifdef __cplusplus
}
#endif

#endif

