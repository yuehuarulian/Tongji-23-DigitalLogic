/* $Id: xps2_intr.c,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
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
* @file xps2_intr.c
*
* This file contains the functions that are related to interrupt processing
* for the PS/2 driver.
*
* <pre>
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

extern u32 XPs2_SendBuffer(XPs2 *InstancePtr);
extern u32 XPs2_ReceiveBuffer(XPs2 *InstancePtr);

/****************************************************************************/
/**
*
* This function sets the handler that will be called when an interrupt
* occurs in the driver. The purpose of the handler is to allow application
* specific processing to be performed.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	FuncPtr is the pointer to the callback function.
* @param	CallBackRef is the upper layer callback reference passed back
*		when the callback function is invoked.
*
* @return	None.
*
* @note
*
* There is no assert on the CallBackRef since the driver doesn't know what it
* is (nor should it)
*
*****************************************************************************/
void XPs2_SetHandler(XPs2 *InstancePtr, XPs2_Handler FuncPtr,
					 void *CallBackRef)
{
	/*
	 * Assert validates the input arguments
	 * CallBackRef not checked, no way to know what is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(FuncPtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	InstancePtr->Handler = FuncPtr;
	InstancePtr->CallBackRef = CallBackRef;
}

/****************************************************************************/
/**
*
* This function is the interrupt handler for the PS/2 driver.
* It must be connected to an interrupt system by the user such that it is
* called when an interrupt for any PS/2 port occurs. This function does
* not save or restore the processor context such that the user must
* ensure this occurs.
*
* @param	InstancePtr contains a pointer to the instance of the PS/2 port
*		that the interrupt is for.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void XPs2_IntrHandler(XPs2 *InstancePtr)
{
	u32 IntrStatus;

	Xil_AssertVoid(InstancePtr != NULL);

	/*
	 * Read the interrupt status register to determine which
	 * interrupt is active.
	 */
	IntrStatus = XPs2_IntrGetStatus(InstancePtr);

	if (IntrStatus & (XPS2_IPIXR_RX_ERR | XPS2_IPIXR_RX_OVF)) {

		/*
		 * Call the application handler with the error code
		 */
		InstancePtr->Handler(InstancePtr->CallBackRef,
			IntrStatus & (XPS2_IPIXR_RX_ERR | XPS2_IPIXR_RX_OVF),
			InstancePtr->ReceiveBuffer.RequestedBytes -
			InstancePtr->ReceiveBuffer.RemainingBytes);
	}


	if (IntrStatus & (XPS2_IPIXR_TX_NOACK | XPS2_IPIXR_WDT_TOUT)) {

		/*
		 * Call the application handler with the error code
		 */
		InstancePtr->Handler(InstancePtr->CallBackRef,
			IntrStatus & (XPS2_IPIXR_TX_NOACK |
					XPS2_IPIXR_WDT_TOUT),
			InstancePtr->SendBuffer.RequestedBytes -
			InstancePtr->SendBuffer.RemainingBytes);
	}

	if (IntrStatus & XPS2_IPIXR_RX_FULL) {

		/*
		 * If there are bytes still to be received in the specified
		 * buffer go ahead and receive them
		 */
		if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
				XPs2_ReceiveBuffer(InstancePtr);
		}

		/*
		 * If the last byte of a message was received then call the
		 * application handler, this code should not use an else from
		 * the previous check of the number of bytes to receive because
		 * the call to receive the buffer updates the bytes to receive
		 */
		if (InstancePtr->ReceiveBuffer.RemainingBytes == 0) {
				InstancePtr->Handler(InstancePtr->CallBackRef,
				    XPS2_IPIXR_RX_FULL,
				    InstancePtr->ReceiveBuffer.RequestedBytes -
				    InstancePtr->ReceiveBuffer.RemainingBytes);
		}
	}

	if (IntrStatus & XPS2_IPIXR_TX_ACK) {

		/*
		 * If there are no bytes to be sent from the specified buffer
		 * then disable the transmit interrupt
		 */
		if (InstancePtr->SendBuffer.RemainingBytes == 0) {
			XPs2_IntrDisable(InstancePtr, XPS2_IPIXR_TX_ACK);

		/*
		 * Call the application handler to indicate the data has been
		 * sent
		 */
		InstancePtr->Handler(InstancePtr->CallBackRef,
					XPS2_IPIXR_TX_ACK,
					InstancePtr->SendBuffer.RequestedBytes -
					InstancePtr->SendBuffer.RemainingBytes);
		}

		/*
		 * Otherwise there is still more data to send in the specified
		 * buffer so go ahead and send it
		 */
		else {
			XPs2_SendBuffer(InstancePtr);
		}

	}

	/*
	 * Clear the Interrupt Status Register
	 */
	XPs2_IntrClear(InstancePtr, IntrStatus);

}

