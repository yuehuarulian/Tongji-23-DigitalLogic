/* $Id: xps2_l.c,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
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
* @file xps2_l.c
*
* This file contains low-level driver functions that can be used to access the
* device.  The user should refer to the hardware device specification for more
* details of the device operation.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- ------   -------- -----------------------------------------------
* 1.00a sv/sdm   01/25/08 First release
*
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xps2_l.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/****************************************************************************/
/**
*
* This function sends a data byte to PS/2. This function operates in the
* polling mode and blocks until the data has been put into the Transmit
* Data register.
*
* @param	BaseAddress contains the base address of the PS/2 port.
* @param	Data contains the data byte to be sent.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void XPs2_SendByte(u32 BaseAddress, u8 Data) {

	while (!XPs2_IsTxEmpty(BaseAddress)) {
	}

	XPs2_WriteReg(BaseAddress, XPS2_TX_DATA_OFFSET, Data);
}

/****************************************************************************/
/**
*
* This function receives a byte from PS/2. It operates in the polling mode
* and blocks until a byte of data is received.
*
* @param	BaseAddress contains the base address of the PS/2 port.
*
* @return	The data byte received by PS/2.
*
* @note		None.
*
*****************************************************************************/
u32 XPs2_RecvByte(u32 BaseAddress)
{
	while (!XPs2_IsRxFull(BaseAddress)) {
	}

	return XPs2_ReadReg(BaseAddress, XPS2_RX_DATA_OFFSET);

}
