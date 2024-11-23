-------------------------------------------------------------------------------
-- $Id: ps2_reg.vhd,v 1.1.2.1 2009/12/11 05:48:33 bommanas Exp $
-------------------------------------------------------------------------------
-- PS2_REG - entity/architecture pair 
-------------------------------------------------------------------------------
--  ***************************************************************************
--  **  Copyright(c) 2008 Xilinx, Inc. All rights reserved.                  **
--  **                                                                       **
--  **  This text contains proprietary, confidential                         **
--  **  information of Xilinx, Inc. , is distributed by                      **
--  **  under license from Xilinx, Inc., and may be used,                    **
--  **  copied and/or disclosed only pursuant to the terms                   **
--  **  of a valid license agreement with Xilinx, Inc.                       **
--  **                                                                       **
--  **  Unmodified source code is guaranteed to place and route,             **
--  **  function and run at speed according to the datasheet                 **
--  **  specification. Source code is provided "as-is", with no              **
--  **  obligation on the part of Xilinx to provide support.                 **
--  **                                                                       **
--  **  Xilinx Hotline support of source code IP shall only include          **
--  **  standard level Xilinx Hotline support, and will only address         **
--  **  issues and questions related to the standard released Netlist        **
--  **  version of the core (and thus indirectly, the original core source). **
--  **                                                                       **
--  **  The Xilinx Support Hotline does not have access to source            **
--  **  code and therefore cannot answer specific questions related          **
--  **  to source HDL. The Xilinx Support Hotline will only be able          **
--  **  to confirm the problem in the Netlist version of the core.           **
--  **                                                                       **
--  **  This copyright and support notice must be retained as part           **
--  **  of this text at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:     ps2_reg.vhd
-- Version:      v1.01b
-- Description:  
-- ----------------------------------------------------------------------------
------------------------------------------------------------------------------
-- Structure:   
--                  --xps_ps2.vhd
--                        -- plbv46_slave_single.vhd
--                        -- ps2.vhd
--                           -- ps2_reg.vhd
--                           -- ps2_sie.vhd
--                              -- ps2_counter.vhd
--                           -- interrupt_control.vhd
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div--", "clk_--x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_cmb" 
--      pipelined or register delay signals:    "*_d--" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<--|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.ipif_pkg.calc_num_ce;
use proc_common_v3_00_a.ipif_pkg.INTEGER_ARRAY_TYPE;
use proc_common_v3_00_a.ipif_pkg.SLV64_ARRAY_TYPE;

library xps_ps2_v1_01_b;
use xps_ps2_v1_01_b.all;

-------------------------------------------------------------------------------
--                     Definition of Generics :                              --
-------------------------------------------------------------------------------
-- C_SPLB_AWIDTH -- Wdith of the PLB Address Bus
-- C_SPLB_DWIDTH -- Width of the PLB Data Bus
-- C_FAMILY      -- XILINX FPGA family
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
--                  Definition of Ports                                      --
-------------------------------------------------------------------------------

-- Clk           -- Clock
-- Rst   	 -- Reset
-- Bus2IP_Addr   -- Bus to IP Address
-- Bus2IP_Data   -- Bus to IP Data
-- Bus2IP_BE     -- Bus to IP Byte Enables
-- Bus2IP_RdCE   -- Bus to IP Read Chip Enable
-- Bus2IP_WrCE   -- Bus to IP Write Chip Enable
-- IP2Bus_Data   -- IP to Bus Data
-- IP2Bus_WrAck  -- IP to Bus Write Acknowledge
-- IP2Bus_RdAck  -- IP to Bus Read Acknowledge 
-- IP2Bus_Error  -- IP to Bus Error
-- IP2Bus_Intr 	 -- IP to Bus Interrupt
-- SRST        	 -- Soft Reset or Reset
-- TX_Full  	 -- Transmit Register Full
-- TX_Full_Clr 	 -- Transmit Full Clear
-- TX_ACKF_set 	 -- Set Transmit Ack Interrupt
-- TX_NOACK_set	 -- Set Transmit No Ack Interrupt
-- RX_Full     	 -- Receive Register Full 
-- RX_FULL_set 	 -- Set Receive Full Interrupt
-- RX_ERR_set  	 -- Set Receive Error Interrupt
-- RX_OVF_set  	 -- Set Receive OverFlow Interrupt
-- WDT_TOUT_set	 -- Set Watch Dog Timer Interrupt
-- TX_DATA     	 -- Transmit Data
-- RX_DATA     	 -- Receive Data
-------------------------------------------------------------------------------


entity ps2_reg is
  generic
  (
    C_SPLB_AWIDTH   : integer := 32;
    C_SPLB_DWIDTH   : integer := 32;
    C_FAMILY        : string  := "virtex5"
  );
  port
  (
    Clk   	     : in  std_logic;
    Rst   	     : in  std_logic;
    Bus2IP_Addr      : in  std_logic_vector(0 to C_SPLB_AWIDTH - 1);
    Bus2IP_Data      : in  std_logic_vector(0 to C_SPLB_DWIDTH - 1);
    Bus2IP_RNW       : in  std_logic;
    Bus2IP_RdCE      : in  std_logic_vector(0 to 3);
    Bus2IP_WrCE      : in  std_logic_vector(0 to 3);
    IP2Bus_Data      : out std_logic_vector(0 to C_SPLB_DWIDTH - 1);
    IP2Bus_WrAck     : out std_logic;
    IP2Bus_RdAck     : out std_logic;
    IP2Bus_Error     : out std_logic;
    IP2Bus_Intr      : out std_logic_vector(0 to 5);
    SRST             : out std_logic;
    TX_Full  	     : out std_logic; 
    TX_Full_Clr      : in  std_logic;
    TX_ACKF_set      : in  std_logic;
    TX_NOACK_set     : in  std_logic;
    RX_Full          : out std_logic;
    RX_FULL_set      : in  std_logic;
    RX_ERR_set       : in  std_logic;
    RX_OVF_set       : in  std_logic;
    WDT_TOUT_set     : in  std_logic;
    TX_DATA          : out std_logic_vector(0 to 7);
    RX_DATA          : in  std_logic_vector(0 to 7)
  );
end entity ps2_reg;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture imp of ps2_reg is

-------------------------------------------------------------------------------
-- Function Declarations
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- End Functions 
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Signals and Type Declarations
-------------------------------------------------------------------------------
signal sta_reg           : std_logic_vector(0 to 31);
signal tx_reg            : std_logic_vector(0 to 31);
signal rx_reg            : std_logic_vector(0 to 31);
signal srst_i            : std_logic;
signal rx_full_i         : std_logic;
signal tx_full_i         : std_logic;
signal rx_full_int       : std_logic;
signal rx_err	         : std_logic;
signal rx_ovf	         : std_logic;
signal tx_ackf	         : std_logic;
signal tx_noack	         : std_logic;
signal wdt_tout	         : std_logic;
signal ip2bus_err_i      : std_logic_vector(0 to 3);
signal ip2bus_wrack_i    : std_logic_vector(0 to 3);
signal ip2bus_rdack_i    : std_logic_vector(0 to 3);
signal ip2bus_err_i_d1   : std_logic_vector(0 to 3);
signal ip2bus_wrack_i_d1 : std_logic_vector(0 to 3);
signal ip2bus_rdack_i_d1 : std_logic_vector(0 to 3);
signal bus2ip_rdce_d1    : std_logic_vector(0 to 3);
signal bus2ip_wrce_d1    : std_logic_vector(0 to 3);
signal bus2ip_rdce_i     : std_logic_vector(0 to 3);
signal bus2ip_wrce_i     : std_logic_vector(0 to 3);
-------------------------------------------------------------------------------
-- End of Signal Declarations
-------------------------------------------------------------------------------
begin -- architecture IMP

IP2Bus_Intr(5) <= rx_full_int;
IP2Bus_Intr(4) <= rx_err;
IP2Bus_Intr(3) <= rx_ovf;
IP2Bus_Intr(2) <= tx_ackf;
IP2Bus_Intr(1) <= tx_noack;
IP2Bus_Intr(0) <= wdt_tout;

IP2Bus_WrAck <= (ip2bus_wrack_i(0)) 
             or (ip2bus_wrack_i(1)) 
             or (ip2bus_wrack_i(2)) 
             or (ip2bus_wrack_i(3));
                                
IP2Bus_RdAck <= (ip2bus_rdack_i(0)) 
             or (ip2bus_rdack_i(1)) 
             or (ip2bus_rdack_i(2)) 
             or (ip2bus_rdack_i(3));
                                  
IP2Bus_Error <= (ip2bus_err_i(0)) 
             or (ip2bus_err_i(1)) 
             or (ip2bus_err_i(2)) 
             or (ip2bus_err_i(3));                             

rx_full_int    <= RX_Full_set;
rx_err	       <= RX_ERR_set;
rx_ovf	       <= RX_OVF_set;
tx_ackf	       <= TX_ACKF_set;
tx_noack       <= TX_NOACK_set; 
wdt_tout       <= WDT_TOUT_set; 


-------------------------------------------------------------------------------
-- Generating Pulses from Bus2IP_RdCE and Bus2IP_WrCE -------------------------
-------------------------------------------------------------------------------
  
  CE_REG: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if (Rst ='1') then
        bus2ip_rdce_d1   <= (others => '0');
        bus2ip_wrce_d1	 <= (others => '0');
      else  
        bus2ip_rdce_d1   <= Bus2IP_RdCE;
	bus2ip_wrce_d1	 <= Bus2IP_WrCE;
      end if;
    end if;
  end process CE_REG;

  bus2ip_rdce_i    <= Bus2IP_RdCE and (not(bus2ip_rdce_d1));
  bus2ip_wrce_i    <= Bus2IP_WrCE and (not(bus2ip_wrce_d1));  

-------------------------------------------------------------------------------
-- Software Register Reset Process --------------------------------------------
-------------------------------------------------------------------------------
  
  RESET_REG: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if (Rst ='1') then
        srst_i               <= '1';
        ip2bus_wrack_i(0)    <= '0';
        ip2bus_rdack_i(0)    <= '0';
        ip2bus_err_i(0)      <= '0';
      elsif (bus2ip_wrce_i(0)='1' and                        
                       Bus2IP_Data="00000000000000000000000000001010") then
        srst_i               <= '1';
	ip2bus_wrack_i(0)    <= '1';
	ip2bus_err_i(0)      <= '0';
      elsif (bus2ip_rdce_i(0) = '1') then
        ip2bus_err_i(0)      <= '1';
        ip2bus_rdack_i(0)    <= '1';
      else  
        srst_i <= '0';
        ip2bus_wrack_i(0)    <= '0';
        ip2bus_err_i(0)      <= '0';
        ip2bus_rdack_i(0)    <= '0';
      end if;
    end if;
  end process RESET_REG;
  
  SRST <= srst_i;
-------------------------------------------------------------------------------
-- Transmit Data Register Process ---------------------------------------------
-------------------------------------------------------------------------------
  
  TX_REG_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if (Rst = '1' or srst_i= '1') then
        tx_reg               <= (others => '0');
        tx_full_i            <= '0';
        ip2bus_wrack_i(3)    <= '0';
        ip2bus_rdack_i(3)    <= '0';
        ip2bus_err_i(3)      <= '0';
      elsif (bus2ip_wrce_i(3) = '1') then
        tx_reg               <= Bus2IP_Data;
        tx_full_i            <= '1';
        ip2bus_wrack_i(3)    <= '1';
      elsif (TX_Full_Clr = '1') then
        tx_full_i         <= '0';
      elsif (bus2ip_rdce_i(3) = '1') then
        ip2bus_err_i(3)      <= '1';
        ip2bus_rdack_i(3)    <= '1';
      else
        ip2bus_wrack_i(3)    <= '0';
        ip2bus_err_i(3)      <= '0';
        ip2bus_rdack_i(3)    <= '0';
        tx_full_i            <= tx_full_i;
      end if;
    end if;
  end process TX_REG_SEQ;

  TX_DATA    <= tx_reg(24 to 31);
  TX_Full    <= tx_full_i;

-------------------------------------------------------------------------------
-- Receive and Status Register Process ----------------------------------------
-------------------------------------------------------------------------------
    
  STA_RX_REG_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if (Rst = '1' or srst_i= '1') then
	ip2bus_rdack_i(2)    <= '0';
	ip2bus_wrack_i(2)    <= '0';
	ip2bus_err_i(2)      <= '0';
        ip2bus_rdack_i(1)    <= '0';
        ip2bus_wrack_i(1)    <= '0';
        ip2bus_err_i(1)      <= '0';
        IP2Bus_Data          <= (others => '0');
      elsif (bus2ip_rdce_i(1) = '1') then
        IP2Bus_Data          <= sta_reg;
        ip2bus_rdack_i(1)    <= '1';
      elsif (bus2ip_wrce_i(1) = '1') then
        ip2bus_err_i(1)      <= '1';
        ip2bus_wrack_i(1)    <= '1';
      elsif (bus2ip_rdce_i(2) = '1') then
        IP2Bus_Data          <= rx_reg;
        ip2bus_rdack_i(2)    <= '1';
      elsif (bus2ip_wrce_i(2) = '1') then
        ip2bus_err_i(2)      <= '1';
        ip2bus_wrack_i(2)    <= '1';
      else 
        IP2Bus_Data          <= (others => '0');
        ip2bus_err_i(1)      <= '0';
        ip2bus_rdack_i(1)    <= '0';
        ip2bus_rdack_i(2)    <= '0';
        ip2bus_wrack_i(1)    <= '0';
        ip2bus_wrack_i(2)    <= '0';
	ip2bus_err_i(2)      <= '0';
      end if;
    end if;
  end process STA_RX_REG_SEQ;

  RX_Full_REG_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if (Rst = '1' or srst_i= '1') then
        rx_reg               <= (others => '0');
	rx_full_i            <= '0';
      elsif (RX_Full_set = '1') then  
        rx_reg(0 to 7)       <= (others => '0');
        rx_reg(24 to 31)     <= RX_DATA;
        rx_full_i            <= '1';
      elsif (bus2ip_rdce_i(2) = '1') then
        rx_full_i            <= '0';
      else 
        rx_full_i            <= rx_full_i;
        rx_reg               <= rx_reg;
      end if;
    end if;
  end process RX_Full_REG_SEQ;
  
  sta_reg(0 to 29)     <= (others => '0');
  sta_reg(30)          <= tx_full_i;
  sta_reg(31)          <= rx_full_i;  
  RX_Full              <= rx_full_i;
  
end architecture imp;
