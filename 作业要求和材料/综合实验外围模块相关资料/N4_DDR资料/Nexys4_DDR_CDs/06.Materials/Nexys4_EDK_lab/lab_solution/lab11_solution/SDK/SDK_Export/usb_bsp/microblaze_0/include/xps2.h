/* $Id: xps2.h,v 1.1.2.1 2010/01/21 03:36:17 svemula Exp $ */
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
* @file xps2.h
*
* The Xilinx XPs2 driver supports the Xilinx PS/2 device which has a Processor
* Local Bus Interface (PLB).
*
* <b> Driver Description</b>
*
* The device driver enables higher layer software (e.g., an application) to
* communicate to the PS/2 device. Apart from transmission and reception of data
* the driver also handles configuration of the device. A single device driver
* can support multiple PS/2 devices.
*
* This driver supports the following features:
* 	- Polled mode
* 	- Interrupt mode
*
* The driver defaults to polled mode at initialization such that interrupts
* must be enabled if desired by the user.
*
* The XPs2_Send() and XPs2_Recv() APIs, are provided in the driver to
* allow data to be sent and received respectively. They are designed to be used
* in polled or interrupt modes.
*
* <b>Initialization & Configuration</b>
*
* To Initialize the PS/2 device using the driver, the user needs to first call
* the XPs2_LookupConfig() API, followed by the XPs2_CfgInitialize() API.
* XPs2_LookupConfig API returns the Configuration structure pointer which
* is passed as a parameter to the XPs2_CfgInitialize function.
* XPs2_CfgInitialize does the initialization of the PS/2 device.
*
* The PS2 device is reset when the driver is initialized.
*
* <b>Interrupts</b>
*
* An interrupt is generated for any of the following conditions :
* 	- Data in the receiver
* 	- Any receive status error detected
* 	- Data byte transmitted
* 	- Any transmit status error detected
*
* In order to use interrupts, it is necessary for the user to connect the
* driver interrupt handler, XPs2_IntrHandler(), to the interrupt system of
* the application. This function does not save and restore the processor
* context such that the user must provide it. A handler must be set for the
* driver such that the handler is called when the interrupts occur. The
* handler is called from interrupt context and is designed to allow application
* specific processing to be performed.
*
* The interrupts are enabled by calling the XPs2_IntrEnable() API.
*
* <b> Threads</b>
*
* This driver is not thread safe. Any needs for threads or thread mutual
* exclusion must be satisfied by the layer above this driver.
*
* <b> Asserts</b>
*
* Asserts are used within all Xilinx drivers to enforce constraints on argument
* values. Asserts can be turned off on a system-wide basis by defining, at
* compile time, the NDEBUG identifier. By default, asserts are turned on and it
* is recommended that users leave asserts on during development.
*
* <b> Building the driver</b>
*
* The XPs2 driver is composed of several source files. This allows the user
* to build and link only those parts of the driver that are necessary.
* <br><br>
*
* @note		None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who      Date     Changes
* ----- ------   -------- -----------------------------------------------
* 1.00a sv/sdm   01/25/08 First release
* 1.01a sdm      08/22/08 Removed support for static interrupt handlers from the
*		          MDD file
* 2.00a ktn      10/22/09 Updated driver to use the HAL Processor APIs.
*
* </pre>
*
******************************************************************************/
#ifndef XPS2_H /* prevent circular inclusions */
#define XPS2_H /* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files ********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xps2_l.h"

/************************** Constant Definitions ****************************/


/**************************** Type Definitions ******************************/

/**
 * This typedef contains configuration information for the device
 */
typedef struct {
	u16 DeviceId;		/**< Unique ID of device */
	u32 BaseAddress;	/**< Base address of device */
} XPs2_Config;

/**
 * The following data type is used to manage the buffers that are handled
 * when sending and receiving data in the interrupt mode
 */
typedef struct {
	u8 *NextBytePtr;	/**< Pointer to the Transmit/Receive Buffer */
	u32 RequestedBytes; 	/**< Total Number of Bytes to be
					Transmitted/Received */
	u32 RemainingBytes; 	/**< Remaining Bytes to be
					Transmitted/Received */
} XPs2Buffer;

/*****************************************************************************/
/**
 * This data type defines a handler which the application must define
 * when using interrupt mode. The handler will be called from the driver in an
 * interrupt context to handle application specific processing.
 *
 * @param 	CallBackRef is a callback reference passed in by the upper layer
 *		when setting the handler, and is passed back to the upper layer
 * 		when the handler is called.
 * @param 	IntrMask is a bit mask of the interrupt status indicating why
 *		the handler is being called.
 * @param 	NumBytes contains the number of bytes sent or received at the
 * 		time of the call.
 *
 *****************************************************************************/
typedef void (*XPs2_Handler)(void *CallBackRef, u32 IntrMask, u32 NumBytes);

/**
 * The PS/2 driver instance data. The user is required to allocate a
 * variable of this type for every PS/2 device in the system.
 * If the last byte of a message was received then call the application
 * handler, this code should not use an else from the previous check of
 * the number of bytes to receive because the call to receive the buffer
 * updates the bytes to receive.
 * A pointer to a variable of this type is then passed to the driver API
 * functions
 */
typedef struct {

	XPs2_Config Ps2Config;   /**< Instance of the config structure */
	u32 IsReady;		 /**< Device is initialized and ready */

	XPs2Buffer SendBuffer;   /**< Buffer for sending data */
	XPs2Buffer ReceiveBuffer;/**< Buffer for receiving data */

	XPs2_Handler Handler;	 /**< Interrupt handler callback */
	void *CallBackRef;	/**< Callback reference for interrupt handler */
} XPs2;

/***************** Macros (Inline Functions) Definitions ********************/

/****************************************************************************/
/**
* Reset the PS/2 port.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_Reset(XPs2 *InstancePtr);
*
******************************************************************************/
#define XPs2_Reset(InstancePtr) 					\
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress, 		\
			XPS2_SRST_OFFSET, XPS2_SRST_RESET);

/****************************************************************************/
/**
* Read the PS/2 status register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	The value read from the register.
*
* @note		C-Style signature:
*		u32 XPs2_GetStatus(XPs2 *InstancePtr);
*
******************************************************************************/
#define XPs2_GetStatus(InstancePtr) \
	XPs2_ReadReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_STATUS_OFFSET)

/****************************************************************************/
/**
*
* Enable the global Interrupt in the Global Interrupt Enable Register.
* Interrupts enabled using XPs2_IntrEnable() will not occur until the global
* interrupt enable bit is set by using this function.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_IntrGlobalEnable(XPs2 *InstancePtr);
*
******************************************************************************/
#define XPs2_IntrGlobalEnable(InstancePtr) 				\
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress,		\
				XPS2_GIER_OFFSET, XPS2_GIER_GIE_MASK)


/****************************************************************************/
/**
*
* Disable the global Interrupt in the Global Interrupt Enable Register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_IntrGlobalDisable(XPs2 *InstancePtr);
*
******************************************************************************/
#define XPs2_IntrGlobalDisable(InstancePtr) 				\
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress, 		\
				XPS2_GIER_OFFSET, 0x0)


/****************************************************************************/
/**
*
* Enable the specified Interrupts in the IP Interrupt Enable Register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	EnableMask is the bitmask of the interrupts to be enabled.
*		Bit positions of 1 will be enabled. Bit positions of 0 will
*		keep the previous setting. This mask is formed by OR'ing
*		XPS2_IPIXR_* bits defined in xps2_l.h.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_IntrEnable(XPs2 *InstancePtr, u32 EnableMask);
*
******************************************************************************/
#define XPs2_IntrEnable(InstancePtr, EnableMask) 			       \
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_IPIER_OFFSET, \
		XPs2_ReadReg((InstancePtr)->Ps2Config.BaseAddress, 	       \
			XPS2_IPIER_OFFSET) | (EnableMask & XPS2_IPIXR_ALL ))

/****************************************************************************/
/**
*
* Disable the specified Interrupts in the IP Interrupt Enable Register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	DisableMask is the bitmask of the interrupts to be disabled.
*		Bit positions of 1 will be disabled. Bit positions of 0 will
*		keep the previous setting. This mask is formed by OR'ing
*		XPS2_IPIXR_* bits defined in xps2_l.h.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_IntrDisable(XPs2 *InstancePtr, u32 DisableMask);
*
******************************************************************************/
#define XPs2_IntrDisable(InstancePtr, DisableMask) 			      \
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_IPIER_OFFSET,\
		XPs2_ReadReg((InstancePtr)->Ps2Config.BaseAddress, 	      \
		   XPS2_IPIER_OFFSET) & (~ (DisableMask & XPS2_IPIXR_ALL )))

/****************************************************************************/
/**
*
* This function returns the enabled interrupts. Use the XPS2_IPIXR_*_MASK
* constants defined in xps2_l.h to interpret the returned value.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return 	Enabled interrupts in a 32-bit format.
*
* @note		C-Style signature:
*		u32 XPs2_IntrGetEnabled(InstancePtr);
*
******************************************************************************/
#define XPs2_IntrGetEnabled(InstancePtr) 				\
	(XPs2_ReadReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_IPIER_OFFSET))


/****************************************************************************/
/**
*
* Read the interrupt status register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
*
* @return	The value read from the register.
*
* @note		C-Style signature:
*		u32 XPs2_IntrGetStatus(XPs2 *InstancePtr);
*
******************************************************************************/
#define XPs2_IntrGetStatus(InstancePtr) \
	XPs2_ReadReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_IPISR_OFFSET)


/****************************************************************************/
/**
*
* Clear the pending interrupts in the Interrupt Status Register.
*
* @param	InstancePtr is a pointer to the XPs2 instance to be worked on.
* @param	ClearMask is the Bitmask for interrupts to be cleared.
*		A "1" clears the interrupt.
*
* @return	None.
*
* @note		C-Style signature:
*		void XPs2_IntrClear(XPs2 *InstancePtr, u32 ClearMask);
*
******************************************************************************/
#define XPs2_IntrClear(InstancePtr, ClearMask) \
	XPs2_WriteReg((InstancePtr)->Ps2Config.BaseAddress, XPS2_IPISR_OFFSET,\
		XPs2_IntrGetStatus(InstancePtr) | (ClearMask & XPS2_IPIXR_ALL ))


/************************** Function Prototypes *****************************/

/*
 * Initialization functions in xps2_sinit.c
 */
XPs2_Config *XPs2_LookupConfig(u16 DeviceId);

/*
 * Functions is xps2.c
 */
int XPs2_CfgInitialize(XPs2 *InstancePtr, XPs2_Config *Config,
				u32 EffectiveAddr);
u32 XPs2_Send(XPs2 *InstancePtr, u8 *BufferPtr, u32 NumBytes);
u32 XPs2_Recv(XPs2 *InstancePtr, u8 *BufferPtr, u32 NumBytes);

/*
 * Functions in xps2_intr.c
 */
void XPs2_SetHandler(XPs2 *InstancePtr, XPs2_Handler FuncPtr,
				void *CallBackRef);
void XPs2_IntrHandler(XPs2 *InstancePtr);

/*
 * Functions in xps2_selftest.c
 */
int XPs2_SelfTest(XPs2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif			/* end of protection macro */

