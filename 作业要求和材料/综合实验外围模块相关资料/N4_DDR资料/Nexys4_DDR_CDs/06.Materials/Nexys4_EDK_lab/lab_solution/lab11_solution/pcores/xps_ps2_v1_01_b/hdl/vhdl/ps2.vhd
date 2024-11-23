-------------------------------------------------------------------------------
-- $Id: ps2.vhd,v 1.1.2.1 2009/12/11 05:48:32 bommanas Exp $
-------------------------------------------------------------------------------
-- PS2 - entity/architecture pair 
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
-- Filename:     ps2.vhd
-- Version:      v1.01b
-- Description:  
-------------------------------------------------------------------------------
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
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_cmb" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.FDR;
use unisim.vcomponents.FDRE;

library proc_common_v3_00_a;
use proc_common_v3_00_a.ipif_pkg.calc_num_ce;
use proc_common_v3_00_a.ipif_pkg.INTEGER_ARRAY_TYPE;
use proc_common_v3_00_a.ipif_pkg.SLV64_ARRAY_TYPE;

library interrupt_control_v2_01_a;
use interrupt_control_v2_01_a.all;

library xps_ps2_v1_01_b;
use xps_ps2_v1_01_b.all;

-------------------------------------------------------------------------------
--                     Definition of Generics :                              --
-------------------------------------------------------------------------------
-- C_SPLB_AWIDTH       -- Wdith of the PLB Address Bus
-- C_SPLB_DWIDTH       -- Width of the PLB Data Bus
-- C_FAMILY            -- XILINX FPGA family
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
--                  Definition of Ports                                      --
-------------------------------------------------------------------------------
-- Bus2IP_Clk          -- Bus to IP Clock 
-- Bus2IP_Rst          -- Bus to IP Reset 
-- Bus2IP_Addr         -- Bus to IP Address
-- Bus2IP_Data         -- Bus to IP Data
-- Bus2IP_RNW          -- Bus to IP Read not Write
-- Bus2IP_BE           -- Bus to IP Byte Enables
-- Bus2IP_RdCE         -- Bus to IP Read Chip Enable
-- Bus2IP_WrCE         -- Bus to IP Write Chip Enable
-- IP2Bus_Data         -- IP to Bus Data
-- IP2Bus_WrAck        -- IP to Bus Write Acknowledge
-- IP2Bus_RdAck        -- IP to Bus Read Acknowledge 
-- IP2Bus_Error        -- IP to Bus Error
-- PS2_DATA_I          -- PS/2 Data Input 
-- PS2_DATA_O          -- PS/2 Data Output
-- PS2_DATA_T          -- PS/2 Data Tristate Enable
-- PS2_CLK_I           -- PS/2 Clock Input
-- PS2_CLK_O           -- PS/2 Clock Output
-- PS2_CLK_T           -- PS/2 Clock Tristate Enable
-------------------------------------------------------------------------------

entity ps2 is
  generic
  (
    C_SPLB_AWIDTH      : integer  := 32;
    C_SPLB_DWIDTH      : integer  := 32;
    C_FAMILY           : string   := "virtex5";
    C_SPLB_CLK_FREQ_HZ : integer  := 100_000_000
  );
  port
  (
    Bus2IP_Clk    : in  std_logic;
    Bus2IP_Rst    : in  std_logic;
    Bus2IP_Addr   : in  std_logic_vector(0 to C_SPLB_AWIDTH - 1);
    Bus2IP_Data   : in  std_logic_vector(0 to C_SPLB_DWIDTH - 1);
    Bus2IP_BE     : in  std_logic_vector(0 to (C_SPLB_DWIDTH / 8) - 1);
    Bus2IP_RNW    : in  std_logic;
    Bus2IP_RdCE   : in  std_logic_vector(0 to 19);
    Bus2IP_WrCE   : in  std_logic_vector(0 to 19);
    IP2Bus_Data   : out std_logic_vector(0 to C_SPLB_DWIDTH - 1);
    IP2Bus_WrAck  : out std_logic;
    IP2Bus_RdAck  : out std_logic;
    IP2Bus_Error  : out std_logic;
    IP2Bus_Intr   : out std_logic;
    PS2_DATA_I    : in  std_logic;
    PS2_DATA_O    : out std_logic;
    PS2_DATA_T    : out std_logic;
    PS2_CLK_I     : in  std_logic;
    PS2_CLK_O     : out std_logic;
    PS2_CLK_T     : out std_logic   
  );
end entity ps2;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture IMP of ps2 is

-------------------------------------------------------------------------------
-- Function Declarations
-------------------------------------------------------------------------------

constant IP_INTR_MODE_ARRAY : INTEGER_ARRAY_TYPE(0 to 5)
                            := (others => 5);
constant NUM_IPIF_IRPT_SRC     : natural := 1;
constant NUM_CE                : integer := 16;

-------------------------------------------------------------------------------
-- End Functions 
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------
signal srst                  : std_logic; 
signal tx_full               : std_logic;
signal tx_full_clr           : std_logic;
signal tx_ackf_set           : std_logic;
signal tx_noack_set          : std_logic;
signal rx_full               : std_logic;
signal rx_full_set           : std_logic;
signal rx_err_set            : std_logic;
signal rx_ovf_set            : std_logic;
signal wdt_tout_set          : std_logic;
signal tx_data               : std_logic_vector(0 to 7);
signal rx_data               : std_logic_vector(0 to 7);

signal ip2bus_data_i         : std_logic_vector(0 to C_SPLB_DWIDTH-1);
signal ip2bus_wrack_i        : std_logic;
signal ip2bus_rdack_i        : std_logic;
signal ip2bus_error_i        : std_logic;

signal intr2bus_data         : std_logic_vector(0 to C_SPLB_DWIDTH-1);
signal intr2bus_wrack        : std_logic;
signal intr2bus_rdack        : std_logic;
signal intr2bus_error        : std_logic;

signal errack_reserved       : std_logic_vector(0 to 1);
signal ipif_lvl_interrupts   : std_logic_vector(0 to NUM_IPIF_IRPT_SRC-1);
signal ip2bus_intrevent      : std_logic_vector(0 to 5);
signal intr_or_rdce          : std_logic;

-------------------------------------------------------------------------------
-- End of Signal Declarations
-------------------------------------------------------------------------------

begin -- architecture IMP

  PS2_REG_I: entity xps_ps2_v1_01_b.ps2_reg
    generic map
    (
      C_SPLB_AWIDTH      => C_SPLB_AWIDTH,
      C_SPLB_DWIDTH      => C_SPLB_DWIDTH,
      C_FAMILY           => C_FAMILY
    )
    port map
    (
      Clk          => Bus2IP_Clk,             -- I
      Rst          => Bus2IP_Rst,          -- I
      Bus2IP_Addr      => Bus2IP_Addr,           -- I
      Bus2IP_Data      => Bus2IP_Data,          -- I
      Bus2IP_RNW       => Bus2IP_RNW,            -- I
      Bus2IP_RdCE      => Bus2IP_RdCE(0 to 3),    -- I
      Bus2IP_WrCE      => Bus2IP_WrCE(0 to 3),    -- I
      IP2Bus_Data      => ip2bus_data_i,          -- O
      IP2Bus_WrAck     => ip2bus_wrack_i,         -- O
      IP2Bus_RdAck     => ip2bus_rdack_i,         -- O
      IP2Bus_Error     => ip2bus_error_i,         -- O
      IP2Bus_Intr      => ip2bus_intrevent,       -- O
      SRST             => srst,          -- O
      TX_Full       => tx_full,                -- O
      TX_Full_Clr      => tx_full_clr,            -- I
      TX_ACKF_set      => tx_ackf_set,            -- I
      TX_NOACK_set     => tx_noack_set,           -- I
      RX_Full          => rx_full,                -- O
      RX_FULL_set      => rx_full_set,            -- I
      RX_ERR_set       => rx_err_set,             -- I
      RX_OVF_set       => rx_ovf_set,             -- I
      WDT_TOUT_set     => wdt_tout_set,           -- I
      TX_DATA          => tx_data,                -- O
      RX_DATA          => rx_data                 -- I
  
    );

  PS2_SIE_I: entity xps_ps2_v1_01_b.ps2_sie
    generic map
    (
      C_SPLB_AWIDTH      => C_SPLB_AWIDTH,
      C_SPLB_DWIDTH      => C_SPLB_DWIDTH,
      C_FAMILY           => C_FAMILY,
      C_SPLB_CLK_FREQ_HZ => C_SPLB_CLK_FREQ_HZ
 
    )
    port map
    (
      Clk              => Bus2IP_Clk,      -- I
      Rst       => srst,    -- I
      PS2_CLK_I        => PS2_CLK_I,   -- I
      PS2_CLK_O       => PS2_CLK_O,   -- O
      PS2_CLK_T       => PS2_CLK_T,   -- O
      PS2_DATA_I       => PS2_DATA_I,   -- I
      PS2_DATA_O       => PS2_DATA_O,   -- O
      PS2_DATA_T       => PS2_DATA_T,   -- O
      TX_Full       => tx_full,         -- I
      TX_Full_Clr      => tx_full_clr,     -- O
      TX_ACKF_set      => tx_ackf_set,     -- O
      TX_NOACK_set     => tx_noack_set,    -- O
      RX_Full          => rx_full,         -- I
      RX_FULL_set      => rx_full_set,     -- O
      RX_ERR_set       => rx_err_set,      -- O
      RX_OVF_set       => rx_ovf_set,      -- O
      WDT_TOUT_set     => wdt_tout_set,    -- O
      TX_DATA          => tx_data,         -- I
      RX_DATA          => rx_data          -- O
    );
  
    ipif_lvl_interrupts  <= (others => '0');  
    errack_reserved      <= (others => '0');
    intr_or_rdce         <= or_reduce(bus2ip_rdce(4 to 19));
    IP2Bus_Data          <= intr2bus_data when (intr_or_rdce = '1') else 
                            (ip2bus_data_i);
    IP2Bus_WrAck         <= intr2bus_wrack or ip2bus_wrack_i;
    IP2Bus_RdAck         <= intr2bus_rdack or ip2bus_rdack_i;
    IP2Bus_Error         <= intr2bus_error or ip2bus_error_i;
    
    INTERRUPT_CONTROL_I : entity interrupt_control_v2_01_a.interrupt_control
      generic map
      (
        C_NUM_CE                => NUM_CE,
        C_NUM_IPIF_IRPT_SRC     => NUM_IPIF_IRPT_SRC,   
        C_IP_INTR_MODE_ARRAY    => IP_INTR_MODE_ARRAY,
        C_INCLUDE_DEV_PENCODER  => false,
        C_INCLUDE_DEV_ISC       => false,
        C_IPIF_DWIDTH           => C_SPLB_DWIDTH
      )
      port map
      (
        -- Inputs From the IPIF Bus 
        Bus2IP_Clk           => Bus2IP_Clk,                                 --I
        Bus2IP_Reset         => srst,                                       --I
        Bus2IP_Data          => Bus2IP_Data,                                --I
        Bus2IP_BE            => Bus2IP_BE,                                  --I
        Interrupt_RdCE       => Bus2IP_RdCE(4 to 19),                       --I
        Interrupt_WrCE       => Bus2IP_WrCE(4 to 19),                       --I
        IPIF_Reg_Interrupts  => errack_reserved,                            --I
        IPIF_Lvl_Interrupts  => ipif_lvl_interrupts,                        --I
        IP2Bus_IntrEvent     => ip2bus_intrevent(IP_INTR_MODE_ARRAY'range), --I       
        Intr2Bus_DevIntr     => IP2Bus_Intr,                                --O
        Intr2Bus_DBus        => intr2bus_data,                              --O           
        Intr2Bus_WrAck       => intr2bus_wrack,                             --O   
        Intr2Bus_RdAck       => intr2bus_rdack,                             --O    
        Intr2Bus_Error       => intr2bus_error,                             --O
        Intr2Bus_Retry       => open,          
        Intr2Bus_ToutSup     => open      
      );
      
end architecture IMP;