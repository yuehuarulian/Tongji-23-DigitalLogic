-------------------------------------------------------------------------------
-- $Id: xps_ps2.vhd,v 1.1.2.1 2009/12/11 05:48:33 bommanas Exp $
-------------------------------------------------------------------------------
-- XPS_PS2 - entity/architecture pair 
-------------------------------------------------------------------------------
--
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
-- Filename:        xps_ps2.vhd
-- Version:         v1.01b
-- Description:     PS2 Controller for PLBV46 bus
--
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
-- Author:          VKN
-- History:   
-- ~~~~~~~~~~~~~~
--   VKN                02/21/08                  -- First Version
-- ^^^^^^^^^^^^^^
--   BSB     		09/24/08	
--   ^^^^^^
-- 1. Modified the version from xps_ps2_v1_00_a to xps_ps2_v1_01_b.
-- 2. Changed the library proc_common_v2_00_a to proc_common_v3_00_a, 
--    plbv46_slave_single_v1_00_a to plbv46_slave_single_v1_01_a and 
--    the library interrupt_control_v2_00_a to interrupt_control_v2_01_a 	
-- 3. Modified to fix linting errors.
-- 4. Modified logic for ip2bus_error generation 
-- 
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.ipif_pkg.calc_num_ce;
use proc_common_v3_00_a.ipif_pkg.INTEGER_ARRAY_TYPE;
use proc_common_v3_00_a.ipif_pkg.SLV64_ARRAY_TYPE;

library plbv46_slave_single_v1_01_a; 

library interrupt_control_v2_01_a; 

library xps_ps2_v1_01_b; 

-------------------------------------------------------------------------------
--                     Defination of Generics :                              --
-------------------------------------------------------------------------------
-- C_BASEADDR            -- XPS PS2 Base Address
-- C_HIGHADDR            -- XPS PS2 High Address
-- C_SPLB_AWIDTH         -- Width of the PLB address bus
-- C_SPLB_DWIDTH         -- width of the PLB data bus
-- C_SPLB_P2P            -- Selects point to point or shared topology
-- C_SPLB_MID_WIDTH      -- PLB Master ID bus width
-- C_SPLB_NUM_MASTERS    -- Number of PLB masters 
-- C_SPLB_NATIVE_DWIDTH  -- Slave bus data width
-- C_SPLB_SUPPORT_BURSTS -- Burst/no burst support
-- C_FAMILY              -- XILINX FPGA family
-- C_IS_DUAL             -- Dual Port PS2 Controller.
-- C_SPLB_CLK_FREQ_HZ    -- Clock Frequency the XPS PS2 Controller operates on 
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
--                  Definition of Ports                                      --
-------------------------------------------------------------------------------

--   PLB Slave Signals 
--      PLB_ABus                -- PLB address bus          
--      PLB_UABus               -- PLB upper address bus
--      PLB_PAValid             -- PLB primary address valid
--      PLB_SAValid             -- PLB secondary address valid
--      PLB_rdPrim              -- PLB secondary to primary read request
--      PLB_wrPrim              -- PLB secondary to primary write request
--      PLB_masterID            -- PLB current master identifier
--      PLB_abort               -- PLB abort request
--      PLB_busLock             -- PLB bus lock
--      PLB_RNW                 -- PLB read not write
--      PLB_BE                  -- PLB byte enable
--      PLB_MSize               -- PLB data bus width indicator
--      PLB_size                -- PLB transfer size
--      PLB_type                -- PLB transfer type
--      PLB_lockErr             -- PLB lock error
--      PLB_wrDBus              -- PLB write data bus
--      PLB_wrBurst             -- PLB burst write transfer
--      PLB_rdBurst             -- PLB burst read transfer
--      PLB_wrPendReq           -- PLB pending bus write request
--      PLB_rdPendReq           -- PLB pending bus read request
--      PLB_wrPendPri           -- PLB pending bus write request priority
--      PLB_rdPendPri           -- PLB pending bus read request priority
--      PLB_reqPri              -- PLB current request 
--      PLB_TAttribute          -- PLB transfer attribute
--   Slave Responce Signal
--      Sl_addrAck              -- Slave address ack
--      Sl_SSize                -- Slave data bus size
--      Sl_wait                 -- Slave wait indicator
--      Sl_rearbitrate          -- Slave rearbitrate
--      Sl_wrDAck               -- Slave write data ack
--      Sl_wrComp               -- Slave write complete
--      Sl_wrBTerm              -- Slave terminate write burst transfer
--      Sl_rdDBus               -- Slave read data bus
--      Sl_rdWdAddr             -- Slave read word address
--      Sl_rdDAck               -- Slave read data ack
--      Sl_rdComp               -- Slave read complete
--      Sl_rdBTerm              -- Slave terminate read burst transfer
--      Sl_MBusy                -- Slave busy
--      Sl_MWrErr               -- Slave write error
--      Sl_MRdErr               -- Slave read error
--      Sl_MIRQ                 -- Master interrput 
--    PS2 Signals
--      PS2_1_DATA_I            -- Port 1 Data in port
--      PS2_1_DATA_O            -- Port 1 Data out port
--      PS2_1_DATA_T            -- Port 1 Data TRI-STATE control port
--      PS2_1_CLK_I             -- Port 1 Clock in port
--      PS2_1_CLK_O             -- Port 1 Clock out port
--      PS2_1_CLK_T             -- Port 1 Clock TRI-STATE control port
--      PS2_2_DATA_I            -- Port 2 Data in port
--      PS2_2_DATA_O            -- Port 2 Data out port
--      PS2_2_DATA_T            -- Port 2 Data TRI-STATE control port
--      PS2_2_CLK_I             -- Port 2 Clock in port
--      PS2_2_CLK_O             -- Port 2 Clock out port
--      PS2_2_CLK_T             -- Port 2 Clock TRI-STATE control port
--    System Signals
--      SPLB_Clk                -- System clock
--      SPLB_Rst                -- System Reset (active high)
--      IP2INTC_Irpt_1          -- XPS PS2 Port1 Interrupt
--      IP2INTC_Irpt_2          -- XPS PS2 Port2 Interrupt

-------------------------------------------------------------------------------

entity xps_ps2 is  
  generic
  (
    C_BASEADDR           : std_logic_vector(0 to 31) := X"FFFFFFFF";
    C_HIGHADDR           : std_logic_vector(0 to 31) := X"00000000";
    C_SPLB_AWIDTH        : integer range 32 to 36    := 32;
    C_SPLB_DWIDTH        : integer range 32 to 128   := 32;
    C_SPLB_P2P           : integer range 0 to 1      := 0;
    C_SPLB_MID_WIDTH     : integer range 1 to 4      := 1;
    C_SPLB_NUM_MASTERS   : integer range 1 to 16     := 1;
    C_SPLB_NATIVE_DWIDTH : integer range 32 to 128   := 32;    
    C_SPLB_SUPPORT_BURSTS: integer range 0 to 1      := 0;    
    C_FAMILY             : string                    := "virtex5";
    C_IS_DUAL            : integer range 0 to 1      := 0;
    C_SPLB_CLK_FREQ_HZ   : integer                   := 100_000_000
      );
  port
  (
    -- System signals ---------------------------------------------------------
    SPLB_Clk             : in std_logic;
    SPLB_Rst             : in std_logic;
    -- Bus Slave signals ------------------------------------------------------  
    PLB_ABus             : in  std_logic_vector(0 to 31);
    PLB_UABus            : in  std_logic_vector(0 to 31);
    PLB_PAValid          : in  std_logic;
    PLB_SAValid          : in  std_logic;
    PLB_rdPrim           : in  std_logic;
    PLB_wrPrim           : in  std_logic;
    PLB_masterID         : in  std_logic_vector(0 to C_SPLB_MID_WIDTH-1);
    PLB_abort            : in  std_logic;
    PLB_busLock          : in  std_logic;
    PLB_RNW              : in  std_logic;
    PLB_BE               : in  std_logic_vector(0 to (C_SPLB_DWIDTH/8)-1);
    PLB_MSize            : in  std_logic_vector(0 to 1);
    PLB_size             : in  std_logic_vector(0 to 3);
    PLB_type             : in  std_logic_vector(0 to 2);
    PLB_lockErr          : in  std_logic;
    PLB_wrDBus           : in  std_logic_vector(0 to C_SPLB_DWIDTH-1);
    PLB_wrBurst          : in  std_logic;
    PLB_rdBurst          : in  std_logic;   
    PLB_wrPendReq        : in  std_logic; 
    PLB_rdPendReq        : in  std_logic; 
    PLB_wrPendPri        : in  std_logic_vector(0 to 1); 
    PLB_rdPendPri        : in  std_logic_vector(0 to 1); 
    PLB_reqPri           : in  std_logic_vector(0 to 1);
    PLB_TAttribute       : in  std_logic_vector(0 to 15); 

    -- Slave Responce Signals--------------------------------------------------
    Sl_addrAck           : out std_logic;
    Sl_SSize             : out std_logic_vector(0 to 1);
    Sl_wait              : out std_logic;
    Sl_rearbitrate       : out std_logic;
    Sl_wrDAck            : out std_logic;
    Sl_wrComp            : out std_logic;
    Sl_wrBTerm           : out std_logic;
    Sl_rdDBus            : out std_logic_vector(0 to C_SPLB_DWIDTH-1);
    Sl_rdWdAddr          : out std_logic_vector(0 to 3);
    Sl_rdDAck            : out std_logic;
    Sl_rdComp            : out std_logic;
    Sl_rdBTerm           : out std_logic;
    Sl_MBusy             : out std_logic_vector(0 to C_SPLB_NUM_MASTERS-1);
    Sl_MWrErr            : out std_logic_vector(0 to C_SPLB_NUM_MASTERS-1);                     
    Sl_MRdErr            : out std_logic_vector(0 to C_SPLB_NUM_MASTERS-1);                     
    Sl_MIRQ              : out std_logic_vector(0 to C_SPLB_NUM_MASTERS-1);                     
    -- Interrupt---------------------------------------------------------------
    IP2INTC_Irpt_1       : out std_logic;
    IP2INTC_Irpt_2       : out std_logic;

    -- PS2 Signals------------------------------------------------------------
    PS2_1_DATA_I          : in  std_logic;
    PS2_1_DATA_O          : out std_logic;
    PS2_1_DATA_T          : out std_logic;
    PS2_1_CLK_I           : in  std_logic;
    PS2_1_CLK_O           : out std_logic;
    PS2_1_CLK_T           : out std_logic;
    PS2_2_DATA_I          : in  std_logic;
    PS2_2_DATA_O          : out std_logic;
    PS2_2_DATA_T          : out std_logic;
    PS2_2_CLK_I           : in  std_logic;
    PS2_2_CLK_O           : out std_logic;
    PS2_2_CLK_T           : out std_logic
  );

-------------------------------------------------------------------------------
-- fan-out attributes for XST
-------------------------------------------------------------------------------

  attribute MAX_FANOUT                   : string;
  attribute MAX_FANOUT   of SPLB_Clk     : signal is "10000";
  attribute MAX_FANOUT   of SPLB_Rst     : signal is "10000";
-------------------------------------------------------------------------------
-- Attributes for MPD file
-------------------------------------------------------------------------------
  attribute IP_GROUP             : string ;
  attribute IP_GROUP of xps_ps2 : entity is "LOGICORE";
  attribute MIN_SIZE             : string ;


  attribute MIN_SIZE of C_BASEADDR : constant is "0x100"; 
  attribute SIGIS                  : string ;
  attribute SIGIS of SPLB_Clk      : signal is "Clk";
  attribute SIGIS of SPLB_Rst      : signal is "Rst";
  attribute SIGIS of IP2INTC_Irpt_1: signal is "INTR_LEVEL_HIGH";
  attribute SIGIS of IP2INTC_Irpt_2: signal is "INTR_LEVEL_HIGH";

  attribute XRANGE                        : string;
  attribute XRANGE of C_IS_DUAL           : constant is "(0,1)";  

end entity xps_ps2; 
-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------

architecture imp of xps_ps2 is 

type     bo2na_type is array (boolean) of natural; -- boolean to natural conversion
constant bo2na      :  bo2na_type := (false => 0, true => 1);

-------------------------------------------------------------------------------
-- Function Declarations
-------------------------------------------------------------------------------
type BOOLEAN_ARRAY_TYPE is array(natural range <>) of boolean;

----------------------------------------------------------------------------
-- This function returns the number of elements that are true in
-- a boolean array.
----------------------------------------------------------------------------
function num_set( ba : BOOLEAN_ARRAY_TYPE ) return natural is
    variable n : natural := 0;
begin
    for i in ba'range loop
        n := n + bo2na(ba(i));
    end loop;
    return n;
end;

----------------------------------------------------------------------------
-- This function returns a num_ce integer array that is constructed by
-- taking only those elements of superset num_ce integer array
-- that will be defined by the current case.
-- The superset num_ce array is given by parameter num_ce_by_ard.
-- The current case the ard elements that will be used is given
-- by parameter defined_ards.
----------------------------------------------------------------------------
function qual_ard_num_ce_array( defined_ards  : BOOLEAN_ARRAY_TYPE;
                                num_ce_by_ard : INTEGER_ARRAY_TYPE
                              ) return INTEGER_ARRAY_TYPE is
    variable res : INTEGER_ARRAY_TYPE(0 to num_set(defined_ards)-1);
    variable i : natural := 0;
    variable j : natural := defined_ards'left;
begin
    while i /= res'length loop
        while defined_ards(j) = false loop
          j := j+1;
        end loop;
        res(i) := num_ce_by_ard(j);
        i := i+1;
        j := j+1;
    end loop;
    return res;
end;


----------------------------------------------------------------------------
-- This function returns a addr_range array that is constructed by
-- taking only those elements of superset addr_range array
-- that will be defined by the current case.
-- The superset addr_range array is given by parameter addr_range_by_ard.
-- The current case the ard elements that will be used is given
-- by parameter defined_ards.
----------------------------------------------------------------------------
function qual_ard_addr_range_array( defined_ards      : BOOLEAN_ARRAY_TYPE;
                                    addr_range_by_ard : SLV64_ARRAY_TYPE
                                  ) return SLV64_ARRAY_TYPE is
    variable res : SLV64_ARRAY_TYPE(0 to 2*num_set(defined_ards)-1);
    variable i : natural := 0;
    variable j : natural := defined_ards'left;
begin
    while i /= res'length loop
        while defined_ards(j) = false loop
          j := j+1;
        end loop;
        res(i)   := addr_range_by_ard(2*j);
        res(i+1) := addr_range_by_ard((2*j)+1);
        i := i+2;
        j := j+1;
    end loop;
    return res;
end;


-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------
constant ZERO_ADDR_PAD : std_logic_vector(0 to 64-C_SPLB_AWIDTH-1) := 
                                                          (others => '0');

constant INTR_TYPE      : integer   := 5;

constant PORT1_BASEADDR     : std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"00000000";
constant PORT1_HIGHADDR     : std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"0000000F";
constant PORT1_INTR_BASEADDR: std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"00000010";
constant PORT1_INTR_HIGHADDR: std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"0000004F";     
constant PORT2_BASEADDR     : std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"00001000";
constant PORT2_HIGHADDR     : std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"0000100F";
constant PORT2_INTR_BASEADDR: std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"00001010";
constant PORT2_INTR_HIGHADDR: std_logic_vector(0 to 31)  := 
                                                   C_BASEADDR or X"0000104F";


constant ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
    qual_ard_addr_range_array(
        (true,C_IS_DUAL=1),
        (ZERO_ADDR_PAD & PORT1_BASEADDR,
         ZERO_ADDR_PAD & PORT1_INTR_HIGHADDR,
         ZERO_ADDR_PAD & PORT2_BASEADDR,
         ZERO_ADDR_PAD & PORT2_INTR_HIGHADDR
        )
    );

constant ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE :=
    qual_ard_num_ce_array(
                (true,C_IS_DUAL=1),
                (20,20)
    );  

-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------


signal Bus2IP_Data_i  : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);

-- IPIC Used Signals

signal bus2ip_addr    : std_logic_vector(0 to C_SPLB_AWIDTH-1);
signal bus2ip_data    : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
signal bus2ip_rnw     : std_logic;
signal bus2ip_be      : std_logic_vector(0 to (C_SPLB_NATIVE_DWIDTH / 8) - 1);
signal bus2ip_rdce    : std_logic_vector(0 to calc_num_ce(ARD_NUM_CE_ARRAY)-1);
signal bus2ip_wrce    : std_logic_vector(0 to calc_num_ce(ARD_NUM_CE_ARRAY)-1);
signal bus2ip_clk     : std_logic;
signal bus2ip_reset   : std_logic;
signal intr2bus_data  : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
signal intr2bus_wrack : std_logic;
signal intr2bus_rdack : std_logic;
signal intr2bus_error : std_logic;

signal ip2bus_data    : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
signal ip2bus_wrack   : std_logic;
signal ip2bus_rdack   : std_logic;
signal ip2bus_error   : std_logic;
signal ip2bus_data_1  : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
signal ip2bus_wrack_1 : std_logic;
signal ip2bus_rdack_1 : std_logic;
signal ip2bus_error_1 : std_logic;
signal ip2bus_data_2  : std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
signal ip2bus_wrack_2 : std_logic;
signal ip2bus_rdack_2 : std_logic;
signal ip2bus_error_2 : std_logic;
signal bus2ip_cs      : std_logic_vector
                          (0 to ((ARD_ADDR_RANGE_ARRAY'LENGTH)/2)-1);

signal intr_or_rdce   : std_logic;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------

begin -- architecture IMP


  PLBV46_I : entity plbv46_slave_single_v1_01_a.plbv46_slave_single
    generic map
    (
      C_ARD_ADDR_RANGE_ARRAY      => ARD_ADDR_RANGE_ARRAY,
      C_ARD_NUM_CE_ARRAY          => ARD_NUM_CE_ARRAY,
      C_SPLB_P2P                  => C_SPLB_P2P,
      C_SPLB_MID_WIDTH            => C_SPLB_MID_WIDTH,
      C_SPLB_NUM_MASTERS          => C_SPLB_NUM_MASTERS,
      C_SPLB_AWIDTH               => C_SPLB_AWIDTH,
      C_SPLB_DWIDTH               => C_SPLB_DWIDTH, 
      C_SIPIF_DWIDTH              => C_SPLB_NATIVE_DWIDTH,
      C_FAMILY                    => C_FAMILY
    )
    port map
    (
      -- System signals -------------------------------------------------------
      SPLB_Clk             => SPLB_Clk,
      SPLB_Rst             => SPLB_Rst,
      -- Bus Slave signals ----------------------------------------------------
      PLB_ABus             => PLB_ABus,      
      PLB_UABus            => PLB_UABus,     
      PLB_PAValid          => PLB_PAValid, 
      PLB_SAValid          => PLB_SAValid,
      PLB_rdPrim           => PLB_rdPrim, 
      PLB_wrPrim           => PLB_wrPrim,
      PLB_masterID         => PLB_masterID, 
      PLB_abort            => PLB_abort,
      PLB_busLock          => PLB_busLock, 
      PLB_RNW              => PLB_RNW,
      PLB_BE               => PLB_BE, 
      PLB_MSize            => PLB_MSize,
      PLB_size             => PLB_size, 
      PLB_type             => PLB_type,
      PLB_lockErr          => PLB_lockErr, 
      PLB_wrDBus           => PLB_wrDBus,
      PLB_wrBurst          => PLB_wrBurst, 
      PLB_rdBurst          => PLB_rdBurst,
      PLB_wrPendReq        => PLB_wrPendReq, 
      PLB_rdPendReq        => PLB_rdPendReq,
      PLB_wrPendPri        => PLB_wrPendPri, 
      PLB_rdPendPri        => PLB_rdPendPri,
      PLB_reqPri           => PLB_reqPri, 
      PLB_TAttribute       => PLB_TAttribute,
      -- Slave Response Signals -----------------------------------------------
      Sl_addrAck           => Sl_addrAck,   
      Sl_SSize             => Sl_SSize,  
      Sl_wait              => Sl_wait,
      Sl_rearbitrate       => Sl_rearbitrate,
      Sl_wrDAck            => Sl_wrDAck, 
      Sl_wrComp            => Sl_wrComp,
      Sl_wrBTerm           => Sl_wrBTerm,
      Sl_rdDBus            => Sl_rdDBus,
      Sl_rdWdAddr          => Sl_rdWdAddr,
      Sl_rdDAck            => Sl_rdDAck,
      Sl_rdComp            => Sl_rdComp, 
      Sl_rdBTerm           => Sl_rdBTerm,
      Sl_MBusy             => Sl_MBusy,
      Sl_MWrErr            => Sl_MWrErr,
      Sl_MRdErr            => Sl_MRdErr, 
      Sl_MIRQ              => Sl_MIRQ,
      -- IP Interconnect (IPIC) port signals ----------------------------------
      Bus2IP_Clk           => Bus2IP_Clk,   
      Bus2IP_Reset         => bus2ip_reset, 
      IP2Bus_Data          => ip2bus_data,       
      IP2Bus_WrAck         => ip2bus_wrack,
      IP2Bus_RdAck         => ip2bus_rdack,
      IP2Bus_Error         => ip2bus_error,
      Bus2IP_Addr          => bus2ip_addr,   
      Bus2IP_Data          => bus2ip_data,
      Bus2IP_RNW           => bus2ip_rnw,      
      Bus2IP_BE            => bus2ip_be,    
      Bus2IP_CS            => bus2ip_cs,
      Bus2IP_RdCE          => bus2ip_rdce, 
      Bus2IP_WrCE          => bus2ip_wrce    
    );

  PS2_1_I: entity xps_ps2_v1_01_b.ps2
    generic map
    (
      C_SPLB_AWIDTH        => C_SPLB_AWIDTH,
      C_SPLB_DWIDTH        => C_SPLB_NATIVE_DWIDTH,
      C_FAMILY             => C_FAMILY,
      C_SPLB_CLK_FREQ_HZ   => C_SPLB_CLK_FREQ_HZ
    )
    port map
    (
      Bus2IP_Clk           => Bus2IP_Clk,              -- I  
      Bus2IP_Rst           => bus2ip_reset,            -- I
      Bus2IP_Addr          => bus2ip_addr,             -- I
      Bus2IP_Data          => bus2ip_data,             -- I
      Bus2IP_BE            => bus2ip_be,               -- I    
      Bus2IP_RNW           => bus2ip_rnw,              -- I
      Bus2IP_RdCE          => bus2ip_rdce(0 to 19),    -- I
      Bus2IP_WrCE          => bus2ip_wrce(0 to 19),    -- I
      IP2Bus_Data          => ip2bus_data_1,           -- O
      IP2Bus_WrAck         => ip2bus_wrack_1,          -- O
      IP2Bus_RdAck         => ip2bus_rdack_1,          -- O
      IP2Bus_Error         => ip2bus_error_1,          -- O
      IP2Bus_Intr          => IP2INTC_Irpt_1,          -- O
      PS2_DATA_I           => PS2_1_DATA_I,            -- I
      PS2_DATA_O           => PS2_1_DATA_O,            -- O
      PS2_DATA_T           => PS2_1_DATA_T,            -- O
      PS2_CLK_I            => PS2_1_CLK_I,             -- I
      PS2_CLK_O            => PS2_1_CLK_O,             -- O
      PS2_CLK_T            => PS2_1_CLK_T              -- O
    );
  
-------------------------------------------------------------------------------
-- Passing the IPIC signal from channel 1 only when a single channel is
-- operating
-------------------------------------------------------------------------------
  DUAL_0_GEN : if (C_IS_DUAL = 0) generate
  begin
    ip2bus_data     <= ip2bus_data_1;
    ip2bus_wrack    <= ip2bus_wrack_1;
    ip2bus_rdack    <= ip2bus_rdack_1;
    ip2bus_error    <= ip2bus_error_1 or 
    		       (bus2ip_cs(0) and not (bus2ip_be(0) and 
                                         bus2ip_be(1) and 
                                         bus2ip_be(2) and 
                                         bus2ip_be(3)));
    IP2INTC_Irpt_2  <= '0';
  end generate DUAL_0_GEN;

-------------------------------------------------------------------------------
-- Passing the IPIC signal from both the channels dual channel mode 
-- Second PS2 is also instantiated based on the dual mode
-------------------------------------------------------------------------------
  
  PORT_2_GEN : if (C_IS_DUAL = 1) generate
  begin
    ip2bus_data     <= ip2bus_data_1 or ip2bus_data_2;
    ip2bus_wrack    <= ip2bus_wrack_1 or ip2bus_wrack_2;
    ip2bus_rdack    <= ip2bus_rdack_1 or ip2bus_rdack_2;
    ip2bus_error    <= ip2bus_error_1 or ip2bus_error_2 or 
                       ((bus2ip_cs(0) or bus2ip_cs(1)) and 
                        not (bus2ip_be(0) and  bus2ip_be(1) and 
                        bus2ip_be(2) and  bus2ip_be(3)));

    
    PS2_2_I: entity xps_ps2_v1_01_b.ps2
      generic map
      (
        C_SPLB_AWIDTH        => C_SPLB_AWIDTH,
	C_SPLB_DWIDTH        => C_SPLB_NATIVE_DWIDTH,
	C_FAMILY             => C_FAMILY,
        C_SPLB_CLK_FREQ_HZ   => C_SPLB_CLK_FREQ_HZ
      )
      port map
      (
        Bus2IP_Clk           => Bus2IP_Clk,              -- I  
        Bus2IP_Rst           => bus2ip_reset,            -- I
        Bus2IP_Addr          => bus2ip_addr,             -- I
        Bus2IP_Data          => bus2ip_data,             -- I
        Bus2IP_BE            => bus2ip_be,               -- I    
        Bus2IP_RNW           => bus2ip_rnw,              -- I
        Bus2IP_RdCE          => bus2ip_rdce(20 to 39),   -- I
        Bus2IP_WrCE          => bus2ip_wrce(20 to 39),   -- I
        IP2Bus_Data          => ip2bus_data_2,           -- O
        IP2Bus_WrAck         => ip2bus_wrack_2,          -- O
        IP2Bus_RdAck         => ip2bus_rdack_2,          -- O
        IP2Bus_Error         => ip2bus_error_2,          -- O
        IP2Bus_Intr          => IP2INTC_Irpt_2,          -- O
        PS2_DATA_I           => PS2_2_DATA_I,            -- I
        PS2_DATA_O           => PS2_2_DATA_O,            -- O
        PS2_DATA_T           => PS2_2_DATA_T,            -- O
        PS2_CLK_I            => PS2_2_CLK_I,             -- I
        PS2_CLK_O            => PS2_2_CLK_O,             -- O
        PS2_CLK_T            => PS2_2_CLK_T              -- O      
      );
    
  end generate PORT_2_GEN;
	

end architecture imp;
