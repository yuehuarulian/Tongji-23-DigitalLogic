/* $Id: xps2_selftest.c,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
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
* @file xps2_selftest.c
*
* This file contains a diagnostic self test function for the XPs2 driver.
*
* See xps2.h for more information.
*
* @note	None.
*
* <pre>
*
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- ------   -------- -----------------------------------------------
* 1.00a sv/sdm   01/25/08 First release
* 2.00a ktn      10/22/09 Updated to use the HAL Processor APIs.
*
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xps2.h"

/************************** Constant Definitions ****************************/

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/************************** Variable Definitions ****************************/

/************************** Function Prototypes *****************************/

/*****************************************************************************/
/**
*
* Run a self-test on the driver/device. The test
*	- Writes a value into the Interrupt Enable register and reads it back
*	for comparison.
*
* @param	InstancePtr is a pointer to the XPs2 instance.
*
* @return
*		- XST_SUCCESS if the value read from the Interrupt Enable
*		register is the same as the value written.
*		- XST_FAILURE otherwise
*
* @note		None.
*
******************************************************************************/
int XPs2_SelfTest(XPs2 *InstancePtr)
{
	int Status = XST_SUCCESS;
	u32 IeRegister;
	u32 GieRegister;

	/*
	 * Assert the argument
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);


	/*
	 * Save a copy of the Global Interrupt Enable register
	 * and Interrupt Enable register before writing them so
	 * that they can be restored.
	 */
	GieRegister = XPs2_ReadReg(InstancePtr->Ps2Config.BaseAddress,
					XPS2_GIER_OFFSET);
	IeRegister = XPs2_IntrGetEnabled(InstancePtr);

	/*
	 * Disable the Global Interrupt so that enabling the interrupts
	 * won't affect the user.
	 */
	XPs2_IntrGlobalDisable(InstancePtr);

	/*
	 * Enable the Transmit interrupts and then verify that the
	 * register reads back correctly.
	 */
	XPs2_WriteReg(InstancePtr->Ps2Config.BaseAddress,
				XPS2_IPIER_OFFSET, XPS2_IPIXR_TX_ALL);
	if (XPs2_ReadReg(InstancePtr->Ps2Config.BaseAddress,
					XPS2_IPIER_OFFSET) !=
			   		XPS2_IPIXR_TX_ALL) {
		Status = XST_FAILURE;
	}

	/*
	 * Restore the IP Interrupt Enable Register to the value before
	 * the test.
	 */
	XPs2_WriteReg(InstancePtr->Ps2Config.BaseAddress,
			XPS2_IPIER_OFFSET, IeRegister);

	/*
	 * Restore the Global Interrupt Register to the value before the
	 * test.
	 */
	XPs2_WriteReg(InstancePtr->Ps2Config.BaseAddress,
				XPS2_GIER_OFFSET, GieRegister);

	/*
	 * Return the test result.
	 */
	return Status;
}
