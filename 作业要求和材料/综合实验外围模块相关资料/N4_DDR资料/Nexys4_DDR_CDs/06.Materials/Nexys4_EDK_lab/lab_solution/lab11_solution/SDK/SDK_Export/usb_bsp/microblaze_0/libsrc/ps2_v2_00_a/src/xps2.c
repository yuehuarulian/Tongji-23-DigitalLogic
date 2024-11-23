/* $Id: xps2.c,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
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
* @file xps2.c
*
* This file contains the functions for the PS/2 driver.
* Refer to the header file xps2.h for more detailed information.
*
* @note
*
* None.
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

static void XPs2_StubHandler(void *CallBackRef, u32 IntrMask, u32 ByteCount);

u32 XPs2_SendBuffer(XPs2 *InstancePtr);

u32 XPs2_ReceiveBuffer(XPs2 *InstancePtr);

/****************************************************************************/
/**
*
* Initializes a specific PS/2 instance such that it is ready to be used.
* The default operating mode of the driver is polled mode.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	ConfigPtr is a reference to a structure containing information
*		about a specific PS/2 device.
* @param	EffectiveAddr is the device base address in the virtual memory
*		address space. If address translation is not used then the
*		physical address is passed. Unexpected errors may occur if the
*		address mapping is changed after this function is invoked.
*
* @return
*		- XST_SUCCESS if initialization is successful
*
* @note		The PS/2 device will be reset and all the interrupts
*		are disabled as a part of the initialization.
*
*****************************************************************************/
int XPs2_CfgInitialize(XPs2 *InstancePtr, XPs2_Config *ConfigPtr,
						u32 EffectiveAddr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(ConfigPtr != NULL);

	/*
	 * Setup the data that is from the configuration information
	 */
	InstancePtr->Ps2Config.BaseAddress = EffectiveAddr;

	/*
	 * Initialize the instance data to some default values and setup a
	 * default handler
	 */
	InstancePtr->Handler = XPs2_StubHandler;

	InstancePtr->SendBuffer.NextBytePtr = NULL;
	InstancePtr->SendBuffer.RemainingBytes = 0;
	InstancePtr->SendBuffer.RequestedBytes = 0;

	InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
	InstancePtr->ReceiveBuffer.RemainingBytes = 0;
	InstancePtr->ReceiveBuffer.RequestedBytes = 0;

	/*
	 * Reset the PS/2 Hardware
	 */
	XPs2_Reset(InstancePtr);

	/*
	 * Indicate the instance is now ready to use, initialized without error
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
}

/****************************************************************************/
/**
*
* This functions sends the specified buffer of data to the PS/2 port in either
* polled or interrupt driven modes. This function is non-blocking such that it
* will return before the data has been sent through PS/2. If the port is busy
* sending data, it will return and indicate that zero bytes were sent.
*
* In polled mode, this function will only send 1 byte which is as much data
* as the transmitter can buffer. The application may need to call it
* repeatedly to send a buffer.
*
* In interrupt mode, this function will start sending the specified buffer and
* then the interrupt handler of the driver will continue sending data until the
* buffer has been sent. A callback function, as specified by the application,
* will be called to indicate the completion of sending the buffer.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	BufferPtr is pointer to a buffer of data to be sent.
* @param	NumBytes contains the number of bytes to be sent. A value of
*		zero will stop a previous send operation that is in progress in
*		interrupt mode.
*
* @return	The number of bytes actually sent.
*
* @note
*
* The number of bytes is not asserted so that this function may be called with
* a value of zero to stop an operation that is already in progress.
* <br><br>
* This function modifies shared data such that there may be a need for mutual
* exclusion in a multithreaded environment
*
*****************************************************************************/
u32 XPs2_Send(XPs2 *InstancePtr, u8 *BufferPtr, u32 NumBytes)
{
	u32 BytesSent;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(BufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	/*
	 * Enter a critical region by disabling the PS/2 transmit interrupts to
	 * allow this call to stop a previous operation that may be interrupt
	 * driven, only stop the transmit interrupt since this critical region
	 * is not really exited in the normal manner
	 */
	XPs2_IntrDisable(InstancePtr, XPS2_IPIXR_TX_ALL);

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
	InstancePtr->SendBuffer.NextBytePtr = BufferPtr;

	/*
	 * Send the buffer and return the number of bytes sent
	 */
	BytesSent = XPs2_SendBuffer(InstancePtr);

	/*
	 * The critical region is not exited in this function because of the way
	 * the transmit interrupts work. The other function called enables the
	 * transmit interrupt such that this function can't restore a value to
	 * the interrupt enable register and does not need to exit the critical
	 * region
	 */
	return BytesSent;
}


/****************************************************************************/
/**
*
* This function will attempt to receive a specified number of bytes of data
* from PS/2 and store it into the specified buffer. This function is
* designed for either polled or interrupt driven modes. It is non-blocking
* such that it will return if no data was received by the PS/2 port.
*
* In polled mode, this function will only receive 1 byte which is as much
* data as the receiver can buffer. The application may need to call it
* repeatedly to receive a buffer. Polled mode is the default mode of operation
* for the driver.
*
* In interrupt mode, this function will start receiving and then the interrupt
* handler of the driver will continue receiving data until the buffer has been
* received. A callback function, as specified by the application, will be called
* to indicate the completion of receiving the buffer or when any receive errors
* or timeouts occur. Interrupt mode must be enabled.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	BufferPtr is pointer to buffer for data to be received into.
* @param	NumBytes is the number of bytes to be received. A value of zero
*		will stop a previous receive operation that is in progress in
*		interrupt mode.
*
* @return	The number of bytes received.
*
* @note
*
* The number of bytes is not asserted so that this function may be called with
* a value of zero to stop an operation that is already in progress.
*
*****************************************************************************/
u32 XPs2_Recv(XPs2 *InstancePtr, u8 *BufferPtr, u32 NumBytes)
{
	u32 ReceivedCount;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(BufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
	InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
	InstancePtr->ReceiveBuffer.NextBytePtr = BufferPtr;

	/*
	 * Receive the data from PS/2 and return the number of bytes
	 * received
	 */
	ReceivedCount = XPs2_ReceiveBuffer(InstancePtr);

	return ReceivedCount;
}

/****************************************************************************/
/**
*
* This function sends a buffer that has been previously specified by setting
* up the instance variables of the instance. This function is designed to be
* an internal function for the XPs2 component such that it may be called
* from a shell function that sets up the buffer or from an interrupt handler.
*
* This function sends the specified buffer of data to the PS/2 port in either
* polled or interrupt driven modes. This function is non-blocking such that
* it will return before the data has been sent.
*
* In a polled mode, this function will only send 1 byte which is as much data
* transmitter can buffer. The application may need to call it repeatedly to
* send a buffer.
*
* In interrupt mode, this function will start sending the specified buffer and
* then the interrupt handler of the driver will continue until the buffer
* has been sent. A callback function, as specified by the application, will
* be called to indicate the completion of sending the buffer.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	NumBytes is the number of bytes actually sent.
*
* @note		None.
*
*****************************************************************************/
u32 XPs2_SendBuffer(XPs2 *InstancePtr)
{
	u32 SentCount = 0;

	/*
	 * If the transmitter is empty send one byte of data
	 */
	if (XPs2_IsTxEmpty(InstancePtr->Ps2Config.BaseAddress)) {
		XPs2_SendByte(InstancePtr->Ps2Config.BaseAddress,
		  		InstancePtr->SendBuffer.NextBytePtr[SentCount]);

		SentCount = 1;
	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;

	/*
	 * If interrupts are enabled as indicated by the receive interrupt, then
	 * enable the transmit interrupt
	 */
	if (XPs2_IntrGetEnabled(InstancePtr) & XPS2_IPIXR_RX_FULL) {
		XPs2_IntrEnable(InstancePtr,
				(XPS2_IPIXR_TX_ALL | XPS2_IPIXR_WDT_TOUT));
	}

	return SentCount;
}

/****************************************************************************/
/**
*
* This function receives a buffer that has been previously specified by setting
* up the instance variables of the instance. This function is designed to be
* an internal function for the XPs2 component such that it may be called
* from a shell function that sets up the buffer or from an interrupt handler.
*
* This function will attempt to receive a specified number of bytes of data
* from PS/2 and store it into the specified buffer. This function is
* designed for either polled or interrupt driven modes. It is non-blocking
* such that it will return if there is no data received.
*
* In polled mode, this function will only receive 1 byte which is as much
* data as the receiver can buffer. The application may need to call it
* repeatedly to receive a buffer. Polled mode is the default mode of operation
* for the driver.
*
* In interrupt mode, this function will start receiving and then the interrupt
* handler of the driver will continue until the buffer has been received. A
* callback function, as specified by the application, will be called to indicate
* the completion of receiving the buffer or when any receive errors or timeouts
* occur. Interrupt mode must be enabled by enabling the interrupts using the
* XPs2_IntrEnable() and XPs2_IntrGlobalEnable() API's.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	The number of bytes received.
*
* @note		None.
*
*****************************************************************************/
u32 XPs2_ReceiveBuffer(XPs2 *InstancePtr)
{
	u32 ReceivedCount = 0;

	/*
	 * Loop until there is no more data buffered by the PS/2 receiver or the
	 * specified number of bytes has been received
	 */
	while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
		/*
		 * If there is data ready to be read , then put the next byte
		 * read into the specified buffer
		 */
		if (XPs2_IsRxFull(InstancePtr->Ps2Config.BaseAddress)) {
		       InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++] =
			XPs2_RecvByte(InstancePtr->Ps2Config.BaseAddress);
		}

		/*
		 * There is no more data buffered, so exit such that this
		 * function does not block waiting for data
		 */
		else {
			break;
		}
	}

	/*
	 * Update the receive buffer to reflect the number of bytes that were
	 * received
	 */
	InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
	InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;

	return ReceivedCount;
}

/****************************************************************************/
/**
*
* This function is a stub handler that is the default handler such that if the
* application has not set the handler when interrupts are enabled, this
* function will be called. The function interface has to match the interface
* specified for a handler even though none of the arguments are used.
*
* @param	CallBackRef is unused by this function.
* @param	IntrMask is unused by this function.
* @param	ByteCount is unused by this function.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
static void XPs2_StubHandler(void *CallBackRef, u32 IntrMask, u32 ByteCount)
{
	/*
	 * Assert always occurs since this is a stub and should never be called
	 */
	Xil_AssertVoidAlways();
}

