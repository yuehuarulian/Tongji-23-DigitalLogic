/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */


#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "intc_header.h"
#include "xtmrctr.h"
#include "tmrctr_header.h"
#include "tmrctr_intr_header.h"
#include "uartlite_header.h"
#include "xemaclite.h"
#include "xemaclite_example.h"
#include "emaclite_header.h"


int main() 
{

   static XIntc intc;
   static XTmrCtr axi_timer_0_Timer;

   Xil_ICacheEnable();
   Xil_DCacheEnable();

   print("---Entering main---\n\r");

   

   {
      int status;
      
      print("\r\n Running IntcSelfTestExample() for axi_intc_0...\r\n");
      
      status = IntcSelfTestExample(XPAR_AXI_INTC_0_DEVICE_ID);
      
      if (status == 0) {
         print("IntcSelfTestExample PASSED\r\n");
      }
      else {
         print("IntcSelfTestExample FAILED\r\n");
      }
   } 

   {
       int Status;

       Status = IntcInterruptSetup(&intc, XPAR_AXI_INTC_0_DEVICE_ID);
       if (Status == 0) {
          print("Intc Interrupt Setup PASSED\r\n");
       } 
       else {
         print("Intc Interrupt Setup FAILED\r\n");
      } 
   }
   

   {
      int status;
      
      print("\r\n Running TmrCtrSelfTestExample() for axi_timer_0...\r\n");
      
      status = TmrCtrSelfTestExample(XPAR_AXI_TIMER_0_DEVICE_ID, 0x0);
      
      if (status == 0) {
         print("TmrCtrSelfTestExample PASSED\r\n");
      }
      else {
         print("TmrCtrSelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for axi_timer_0...\r\n");
      
      Status = TmrCtrIntrExample(&intc, &axi_timer_0_Timer, \
                                 XPAR_AXI_TIMER_0_DEVICE_ID, \
                                 XPAR_AXI_INTC_0_AXI_TIMER_0_INTERRUPT_INTR, 0);
	
      if (Status == 0) {
         print("Timer Interrupt Test PASSED\r\n");
      } 
      else {
         print("Timer Interrupt Test FAILED\r\n");
      }

   }
   

   {
      int status;
      
      print("\r\nRunning UartLiteSelfTestExample() for debug_module...\r\n");
      status = UartLiteSelfTestExample(XPAR_DEBUG_MODULE_DEVICE_ID);
      if (status == 0) {
         print("UartLiteSelfTestExample PASSED\r\n");
      }
      else {
         print("UartLiteSelfTestExample FAILED\r\n");
      }
   }
   
   /*
    * Peripheral SelfTest will not be run for rs232
    * because it has been selected as the STDOUT device
    */



   {
      int status;
      
      print("\r\nRunning EmacLitePolledExample() for generic_ethernet_10_100...\r\n");
      status = EmacLitePolledExample(XPAR_GENERIC_ETHERNET_10_100_DEVICE_ID);
      if (status == 0) {
         print("EmacLite Polled Example PASSED\r\n");
      }
      else {
         print("EmacLite Polled Example FAILED\r\n");
      }
   }

   print("---Exiting main---\n\r");

   Xil_DCacheDisable();
   Xil_ICacheDisable();

   return 0;
}

