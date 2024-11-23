-------------------------------------------------------------------------------
-- $Id: ps2_sie.vhd,v 1.1.2.2 2009/12/21 12:23:40 prakash Exp $
-------------------------------------------------------------------------------
-- PS2_SIE - entity/architecture pair 
-------------------------------------------------------------------------------
--  ***************************************************************************
--  **  Copyright(c)2008 Xilinx, Inc. All rights reserved.                   **
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
-- Filename:     ps2_sie.vhd
-- Version:      v1.01b
-- Description:  
-- ----------------------------------------------------------------------------
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

library unisim;
use unisim.vcomponents.FDR;
use unisim.vcomponents.FDRE;

library proc_common_v3_00_a;

library xps_ps2_v1_01_b;
use xps_ps2_v1_01_b.all;

-------------------------------------------------------------------------------
--                     Definition of Generics :                              --
-------------------------------------------------------------------------------
-- C_SPLB_AWIDTH           -- Wdith of the PLB Address Bus
-- C_SPLB_DWIDTH           -- Width of the PLB Data Bus
-- C_FAMILY                -- XILINX FPGA family
-- C_SPLB_CLK_FREQ_HZ      -- Operating Clock Frequency
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
--                  Definition of Ports                                      --
-------------------------------------------------------------------------------
 
-- Clk                --  Clock
-- Rst                --  Reset
-- TX_Full            --  Transmit Register Full
-- TX_Full_Clr        --  Transmit Full Clear
-- TX_ACKF_set        --  Set Transmit Ack Interrupt
-- TX_NOACK_set       --  Set Transmit No Ack Interrupt
-- RX_Full            --  Receive Register Full 
-- RX_FULL_set        --  Set Receive Full Interrupt
-- RX_ERR_set         --  Set Receive Error Interrupt
-- RX_OVF_set         --  Set Receive OverFlow Interrupt
-- WDT_TOUT_set       --  Set Watch Dog Timer Interrupt
-- TX_DATA            --  Transmit Data
-- RX_DATA            --  Receive Data
-- PS2_DATA_I         --  PS/2 Data Input 
-- PS2_DATA_O         --  PS/2 Data Output
-- PS2_DATA_T         --  PS/2 Data Tristate Enable
-- PS2_CLK_I          --  PS/2 Clock Input
-- PS2_CLK_O          --  PS/2 Clock Output
-- PS2_CLK_T          --  PS/2 Clock Tristate Enable
-------------------------------------------------------------------------------


entity ps2_sie is
  generic
  (
    C_SPLB_AWIDTH      : integer  := 32;
    C_SPLB_DWIDTH      : integer  := 32;
    C_FAMILY           : string   := "virtex5";
    C_SPLB_CLK_FREQ_HZ : integer  := 100_000_000
  );
  port
  (
    Clk                : in  std_logic;
    Rst                : in  std_logic;
    TX_Full            : in  std_logic;       
    TX_Full_Clr        : out std_logic;     
    TX_ACKF_set        : out std_logic;     
    TX_NOACK_set       : out std_logic;     
    RX_Full            : in  std_logic;     
    RX_FULL_set        : out std_logic;     
    RX_ERR_set         : out std_logic;     
    RX_OVF_set         : out std_logic;     
    WDT_TOUT_set       : out std_logic;     
    TX_DATA            : in  std_logic_vector(0 to 7);    
    RX_DATA            : out std_logic_vector(0 to 7);     
    PS2_DATA_I         : in  std_logic;
    PS2_DATA_O         : out std_logic;
    PS2_DATA_T         : out std_logic;
    PS2_CLK_I          : in  std_logic;
    PS2_CLK_O          : out std_logic;
    PS2_CLK_T          : out std_logic   
  );
end entity ps2_sie;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture IMP of ps2_sie is

-------------------------------------------------------------------------------
-- Functions and Constant Declarations
-------------------------------------------------------------------------------
constant COUNT_100us  : integer := (C_SPLB_CLK_FREQ_HZ/10000);
constant COUNT_50us   : integer := (C_SPLB_CLK_FREQ_HZ/20000);
constant COUNT_15ms   : integer := ((C_SPLB_CLK_FREQ_HZ*15)/1000);
constant COUNT_wdt    : integer := ((C_SPLB_CLK_FREQ_HZ*2)/10000);

-------------------------------------------------------------------------------
-- XOR REDUCE Function to implement bit-wise xor
-------------------------------------------------------------------------------
function xor_reduce (v : std_logic_vector) return std_logic is
  variable r : std_logic := '0';
  begin
    for i in v'range loop
      r := r xor v(i);
    end loop;
    return r;
  end;

-------------------------------------------------------------------------------
-- End Functions 
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Signals and Type Declarations
-------------------------------------------------------------------------------

type tx_state_machine_type is (
       IDLE,
       CLK_DOWN_100us,
       REQ_TO_SEND,
       SEND7,
       SEND6,
       SEND5,
       SEND4,
       SEND3,
       SEND2,
       SEND1,
       SEND0,
       SEND_PARITY,
       SEND_STOP,
       WAIT_FOR_ACK,
       DONE
                              );
                              
signal tx_state_machine_cs : tx_state_machine_type;
signal tx_state_machine_ns : tx_state_machine_type;

type clk_cntrl_sm_type is (
                           CLK_PULL_UP,
                           CLK_HIGH,
                           CLK_LOW,
                           CLK_INHIBIT
                          );
signal clk_cntrl_sm_cs : clk_cntrl_sm_type;
signal clk_cntrl_sm_ns : clk_cntrl_sm_type;

type rx_state_machine_type is (
       IDLE,
       WAITING_TO_BE_READ,
       RX_0,
       RX_1,
       RX_2,
       RX_3,
       RX_4,
       RX_5,
       RX_6,
       RX_7,
       RX_PARITY,
       RX_CHK,
       RX_ERR_INHIBIT,
       RX_STOP,
       DONE
      );
                              
signal rx_state_machine_cs : rx_state_machine_type;
signal rx_state_machine_ns : rx_state_machine_type;

signal ps2_clk_t_tx_cs     : std_logic;
signal ps2_clk_t_tx_ns     : std_logic;
signal ps2_clk_o_tx_cs     : std_logic;
signal ps2_clk_o_tx_ns     : std_logic;
signal ps2_data_t_tx_cs    : std_logic;
signal ps2_data_t_tx_ns    : std_logic;
signal ps2_data_o_tx_cs    : std_logic;
signal ps2_data_o_tx_ns    : std_logic;

signal ps2_clk_t_rx_cs     : std_logic;
signal ps2_clk_o_rx_cs     : std_logic;
signal ps2_clk_t_rx_ns     : std_logic;
signal ps2_clk_o_rx_ns     : std_logic;

signal ps2_data_i_int      : std_logic;
signal ps2_data_o_int      : std_logic;
signal ps2_data_t_int      : std_logic;
signal ps2_data_i_d1       : std_logic;
signal ps2_data_o_d1       : std_logic;
signal ps2_data_t_d1       : std_logic;

signal tx_full_i           : std_logic;
signal tx_ackf             : std_logic;
signal tx_noack            : std_logic;
signal wdt_tout            : std_logic;
signal rx_full_cs          : std_logic;
signal rx_full_ns          : std_logic;
signal rx_err              : std_logic;
signal rx_ovf              : std_logic;
signal rx_cs               : std_logic_vector(0 to 10);
signal rx_ns               : std_logic_vector(0 to 10);
signal stop_rx             : std_logic;
signal done_rx             : std_logic;

signal tx_parity_bit       : std_logic;
signal rx_parity_odd       : std_logic;

signal ps2_clk_i_int       : std_logic;
signal ps2_clk_o_int       : std_logic;
signal ps2_clk_t_int       : std_logic;
signal ps2_clk_i_d1        : std_logic;
signal ps2_clk_o_d1        : std_logic;
signal ps2_clk_t_d1        : std_logic;

signal clk_rise            : std_logic;
signal clk_is_high         : std_logic;
signal clk_fall            : std_logic;
signal clk_is_low          : std_logic;

signal start_100us_cntr    : std_logic;
signal start_100us_cntr_rx : std_logic;
signal start_50us_cntr     : std_logic;
signal start_15ms_cntr     : std_logic;
signal start_15ms_cntr_ns  : std_logic;
signal start_15ms_cntr_cs  : std_logic;
signal start_wdt_cntr      : std_logic;

signal done_100us          : std_logic;
signal done_50us           : std_logic;
signal done_15ms           : std_logic;
signal wdt_done            : std_logic;

signal clr_100us_cntr      : std_logic;
signal clr_50us_cntr       : std_logic;
signal clr_15ms_cntr       : std_logic;
signal clr_wdt_cntr        : std_logic;

signal almost_done_100us   : std_logic;
signal almost_done_50us    : std_logic;
signal almost_done_15ms    : std_logic;
signal almost_done_wdt     : std_logic;


-------------------------------------------------------------------------------
-- End of Signal Declarations
-------------------------------------------------------------------------------

begin -- architecture IMP

  -----------------------------------------------------------------------------
  -- TRANSMIT STATE MACHINE
  -----------------------------------------------------------------------------
  TX_STATE_MACHINE: process(
        tx_state_machine_cs,
        ps2_clk_t_tx_cs,
        ps2_clk_o_tx_cs,
        ps2_data_t_tx_cs,
        ps2_data_o_tx_cs,
        start_15ms_cntr_cs,
        TX_Full,
        Rst,
        ps2_data_i_int,
       -- ps2_clk_i_int,
        clk_fall,
        clk_rise,
        done_100us,
        almost_done_100us,
        TX_DATA,
        done_15ms,
        stop_rx,
        done_rx,tx_parity_bit
     ) is
  begin
    tx_state_machine_ns <= tx_state_machine_cs;
    ps2_clk_t_tx_ns     <= ps2_clk_t_tx_cs;
    ps2_clk_o_tx_ns     <= ps2_clk_o_tx_cs;
    ps2_data_t_tx_ns    <= ps2_data_t_tx_cs;
    ps2_data_o_tx_ns    <= ps2_data_o_tx_cs;
    start_15ms_cntr_ns  <= start_15ms_cntr_cs;
    start_100us_cntr    <= '0';
    tx_ackf             <= '0';
    tx_noack            <= '0'; 
    tx_full_i           <= '0';
    start_wdt_cntr      <= '0';


    case tx_state_machine_cs is
      
      when IDLE =>
        ps2_clk_t_tx_ns  <= '1';
        ps2_clk_o_tx_ns  <= '1';
        ps2_data_t_tx_ns <= '1';
        ps2_data_o_tx_ns <= '1';
        if Rst = '1' then
          tx_state_machine_ns <= IDLE;
        elsif ((TX_Full = '1') and (stop_rx = '0') and (done_rx = '0')) then
          tx_state_machine_ns <= CLK_DOWN_100us;
        else 
          start_100us_cntr    <= '0';
          tx_state_machine_ns <= IDLE;
        end if;
        
      when CLK_DOWN_100us =>
        ps2_clk_t_tx_ns       <= '0';
        ps2_clk_o_tx_ns       <= '0';
        start_100us_cntr      <= '1';
        start_15ms_cntr_ns    <= '1';
        if done_100us = '1'then
          start_100us_cntr    <= '0';
          ps2_clk_t_tx_ns     <= '1';
          ps2_clk_o_tx_ns     <= '1';
          tx_state_machine_ns <= REQ_TO_SEND;
        elsif almost_done_100us = '1' then
          ps2_data_t_tx_ns    <= '0';
          ps2_data_o_tx_ns    <= '0';
          tx_state_machine_ns <= CLK_DOWN_100us;
        else
          tx_state_machine_ns <= CLK_DOWN_100us;
        end if;
        
      when REQ_TO_SEND => 
        ps2_clk_t_tx_ns       <= '1';
        ps2_clk_o_tx_ns       <= '1';
        ps2_data_t_tx_ns      <= '0';
        ps2_data_o_tx_ns      <= '0';
        if clk_fall = '1' then
          start_15ms_cntr_ns  <= '0';
          tx_state_machine_ns <= SEND7;
        elsif done_15ms = '1' then
          start_15ms_cntr_ns  <= '0';
          tx_state_machine_ns <= DONE;
        else
          tx_state_machine_ns <= REQ_TO_SEND;
        end if;
        
      when SEND7 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(7);
        if clk_fall = '1' then  
          start_wdt_cntr      <= '0';
          tx_state_machine_ns <= SEND6;
        else
          tx_state_machine_ns <= SEND7;
        end if;
        
      when SEND6 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(6);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND5;
        else
           tx_state_machine_ns <= SEND6;
        end if;
        
      when SEND5 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(5);
        if clk_fall = '1' then  
          start_wdt_cntr      <= '0';
          tx_state_machine_ns <= SEND4;
        else
          tx_state_machine_ns <= SEND5;
        end if;
        
      when SEND4 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(4);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND3;
        else
           tx_state_machine_ns <= SEND4;
        end if;
        
      when SEND3 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(3);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND2;
        else
           tx_state_machine_ns <= SEND3;
        end if;  
      
      when SEND2 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(2);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND1;
        else
           tx_state_machine_ns <= SEND2;
        end if;  
      
      when SEND1 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(1);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND0;
        else
           tx_state_machine_ns <= SEND1;
        end if;  
      
      when SEND0 =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= TX_DATA(0);
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND_PARITY;
        else
           tx_state_machine_ns <= SEND0;
        end if;  
      
      when SEND_PARITY =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= tx_parity_bit;
        if clk_fall = '1' then  
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= SEND_STOP;
        else
           tx_state_machine_ns <= SEND_PARITY;
        end if;  
      
      when SEND_STOP =>
        start_wdt_cntr        <= '1';
        ps2_data_o_tx_ns      <= '1';
        if clk_rise = '1' then  
           ps2_data_t_tx_ns    <= '1';
           start_wdt_cntr      <= '0';
           tx_state_machine_ns <= WAIT_FOR_ACK;
        else
           tx_state_machine_ns <= SEND_STOP;
        end if;  
      
      when WAIT_FOR_ACK =>
        start_wdt_cntr        <= '1';
        if ((clk_fall = '1') and (ps2_data_i_int = '0')) then
          tx_ackf             <= '1';
          tx_full_i           <= '1';
          start_wdt_cntr      <= '0';
          tx_state_machine_ns <= DONE;
        elsif ((clk_fall = '1') and (ps2_data_i_int = '1')) then
          tx_noack            <= '1';
          tx_full_i           <= '1';
          start_wdt_cntr      <= '0';
          tx_state_machine_ns <= IDLE;
        else
          tx_state_machine_ns <= WAIT_FOR_ACK;
        end if;
      
      when DONE =>
        tx_full_i             <= '1';
        tx_state_machine_ns   <= IDLE;
        
      end case;        
  end process TX_STATE_MACHINE;
  -----------------------------------------------------------------------------
  -- PARITY BIT WHILE TRANSMISSION --------------------------------------------
  -----------------------------------------------------------------------------
  tx_parity_bit <= not(xor_reduce(TX_DATA));
  rx_parity_odd <= xor_reduce(rx_cs(1 to 9));
  -----------------------------------------------------------------------------
  -- Sequential Process block for Transmit State Machine ----------------------
  -----------------------------------------------------------------------------

  TX_STATE_MACHINE_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        tx_state_machine_cs <= IDLE;
        ps2_clk_t_tx_cs     <= '1';
        ps2_clk_o_tx_cs     <= '1';
        ps2_data_t_tx_cs    <= '1';
        ps2_data_o_tx_cs    <= '1';
        TX_Full_Clr         <= '0';
        TX_ACKF_set         <= '0'; 
        TX_NOACK_set        <= '0'; 
        WDT_TOUT_set        <= '0';
        start_15ms_cntr_cs  <= '0';
      elsif (wdt_done = '1' or done_15ms = '1') then
        tx_state_machine_cs <= DONE;
        start_15ms_cntr_cs  <= '0';
        TX_Full_Clr         <= '1';
        TX_ACKF_set         <= '0'; 
        TX_NOACK_set        <= '0';
        WDT_TOUT_set        <= '1';
      else
        tx_state_machine_cs <= tx_state_machine_ns;
        ps2_clk_t_tx_cs     <= ps2_clk_t_tx_ns;
        ps2_clk_o_tx_cs     <= ps2_clk_o_tx_ns;
        ps2_data_t_tx_cs    <= ps2_data_t_tx_ns;
        ps2_data_o_tx_cs    <= ps2_data_o_tx_ns;
        start_15ms_cntr_cs  <= start_15ms_cntr_ns;
        TX_Full_Clr         <= tx_full_i;
        TX_ACKF_set         <= tx_ackf; 
        TX_NOACK_set        <= tx_noack;
        WDT_TOUT_set        <= '0';
      end if;
    end if;
  end process TX_STATE_MACHINE_SEQ;                         

  ps2_clk_t_int   <= ps2_clk_t_tx_cs and ps2_clk_t_rx_cs;
  ps2_clk_o_int   <= ps2_clk_o_rx_cs when (ps2_clk_t_rx_cs = '0') else 
                     ps2_clk_o_tx_cs;
  ps2_data_t_int  <= ps2_data_t_tx_cs;
  ps2_data_o_int  <= ps2_data_o_tx_cs;
  start_15ms_cntr <= start_15ms_cntr_cs;  
  -----------------------------------------------------------------------------
  -- Two Stage Sequential Process block for PS2 Input Signals -----------------
  -----------------------------------------------------------------------------

  PS2_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        ps2_clk_i_d1   <= '1';
        ps2_clk_i_int  <= '1';
        PS2_CLK_O      <= '1';
        PS2_CLK_T      <= '1';
        ps2_data_i_d1  <= '1';
        ps2_data_i_int <= '1';
        PS2_DATA_O     <= '1';
        PS2_DATA_T     <= '1';
      else
        ps2_clk_i_d1   <= PS2_CLK_I;
        ps2_clk_i_int  <= ps2_clk_i_d1;
        PS2_CLK_O      <= ps2_clk_o_int;
        PS2_CLK_T      <= ps2_clk_t_int;
        ps2_data_i_d1  <= PS2_DATA_I;
        ps2_data_i_int <= ps2_data_i_d1;
        PS2_DATA_O     <= ps2_data_o_int;
        PS2_DATA_T     <= ps2_data_t_int;
      end if;
    end if;
  end process PS2_SEQ;                         
  
    
  -----------------------------------------------------------------------------
  -- Clock Control State Machine ----------------------------------------------
  -----------------------------------------------------------------------------
  CLK_CONTROL_STATE_MACHINE: process(
                                     clk_cntrl_sm_cs,
                                     ps2_clk_i_int,
                                     ps2_clk_t_int,
                                     ps2_clk_o_int,
                                     done_50us
                                    ) is
  begin
    clk_cntrl_sm_ns <= clk_cntrl_sm_cs;
    
    case clk_cntrl_sm_cs is
      when CLK_PULL_UP =>
        clk_is_low        <= '0';
        clk_is_high       <= '0';
        clk_fall          <= '0';
        clk_rise          <= '0';
        start_50us_cntr   <= '0';
        if ps2_clk_t_int = '0' then
          clk_cntrl_sm_ns <= CLK_INHIBIT;
        elsif ps2_clk_i_int = '1' then
          clk_cntrl_sm_ns <= CLK_PULL_UP;
        elsif ps2_clk_i_int = '0' then
          clk_fall        <= '1';
          clk_is_low      <= '1';
          clk_cntrl_sm_ns <= CLK_LOW;
        else
          clk_rise        <= '0';
          clk_fall        <= '0';
          start_50us_cntr <= '0';
          clk_cntrl_sm_ns <= CLK_PULL_UP;
        end if;
        
      when CLK_LOW =>
        clk_fall          <= '0';
        clk_is_low        <= '1';
        clk_rise          <= '0';
        clk_is_high       <= '0';
        start_50us_cntr   <= '0';
        if ((ps2_clk_t_int = '0') and (ps2_clk_o_int = '0')) then
          clk_cntrl_sm_ns <= CLK_INHIBIT;
        elsif ps2_clk_i_int = '1' then
          clk_rise        <= '1';
          clk_is_high     <= '1';
          clk_is_low      <= '0';
          clk_cntrl_sm_ns <= CLK_HIGH;
        else 
          clk_cntrl_sm_ns <= CLK_LOW;
        end if;
        
      when CLK_HIGH =>
        clk_rise          <= '0';
        clk_is_high       <= '1';
        clk_fall          <= '0';
        clk_is_low        <= '0';
        start_50us_cntr   <= '1';
        if ps2_clk_i_int = '0' then
          clk_is_high     <= '0';
          clk_fall        <= '1';
          clk_is_low      <= '1';
          start_50us_cntr <= '0';
          clk_cntrl_sm_ns <= CLK_LOW;
        elsif (done_50us = '1') then
          start_50us_cntr <= '0';
          clk_cntrl_sm_ns <= CLK_PULL_UP;
        elsif ((ps2_clk_t_int = '0') and (ps2_clk_o_int = '0')) then
          clk_cntrl_sm_ns <= CLK_INHIBIT;
        else
          clk_cntrl_sm_ns <= CLK_HIGH;
        end if;
        
      when CLK_INHIBIT =>
        clk_rise          <= '0';
        clk_is_high       <= '0';
        clk_fall          <= '0';
        clk_is_low        <= '0';
        start_50us_cntr   <= '0';
        if ((ps2_clk_t_int = '1') and (ps2_clk_i_int = '1')) then
          clk_rise        <= '1';
          clk_is_high     <= '1';
          clk_cntrl_sm_ns <= CLK_HIGH;
        else
          clk_cntrl_sm_ns <= CLK_INHIBIT;
        end if;
        
      end case;
  end process CLK_CONTROL_STATE_MACHINE;

  -----------------------------------------------------------------------------
  -- Sequential Process block for Clock Control State Machine -----------------
  -----------------------------------------------------------------------------

  CLK_CNTRL_STATE_MACHINE_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        clk_cntrl_sm_cs <= CLK_PULL_UP;
      else
        clk_cntrl_sm_cs <= clk_cntrl_sm_ns;
      end if;
    end if;
  end process CLK_CNTRL_STATE_MACHINE_SEQ;                         

  -----------------------------------------------------------------------------
  -- RECEIVE STATE MACHINE
  -----------------------------------------------------------------------------
  RX_STATE_MACHINE: process(
                     rx_state_machine_cs,
                     rx_cs,
                     rx_full_cs,
                     Rst,
                     TX_Full,
                     RX_Full,
                     ps2_data_i_int,
                     clk_fall,
                     clk_rise,
                    -- start_100us_cntr_rx,
                     done_100us,ps2_clk_t_rx_cs,ps2_clk_o_rx_cs,rx_parity_odd
                           ) is
  begin
    rx_state_machine_ns  <= rx_state_machine_cs;
    rx_full_ns           <= rx_full_cs;
    rx_ns                <= rx_cs;
    ps2_clk_t_rx_ns      <= ps2_clk_t_rx_cs;
    ps2_clk_o_rx_ns      <= ps2_clk_o_rx_cs;
    rx_ovf               <= '0';
    rx_err               <= '0';
    start_100us_cntr_rx  <= '0';
    stop_rx              <= '0';
    done_rx              <= '0';

    case rx_state_machine_cs is
      when IDLE =>
        rx_ovf                <= '0';
        rx_err                <= '0';
        rx_full_ns            <= '0';
        ps2_clk_t_rx_ns       <= '1';
        ps2_clk_o_rx_ns       <= '1';
        if Rst = '1' then
          rx_state_machine_ns <= IDLE;
        elsif TX_Full = '1' then
          rx_ns               <= (others => '0');
          rx_ovf              <= '0';
          rx_state_machine_ns <= IDLE;
        elsif ((ps2_data_i_int = '0') and (clk_fall = '1')
                                      and (RX_Full = '1')) then
          rx_ovf              <= '1';
          rx_ns               <= (others => '0');
          rx_state_machine_ns <= WAITING_TO_BE_READ;
        elsif ((ps2_data_i_int = '0') and (clk_fall = '1')) then
          rx_ns(10)           <= '0';
          rx_state_machine_ns <= RX_0;
        else
          rx_ns               <= (others => '0');
          rx_state_machine_ns <= IDLE;
        end if;
        
      when WAITING_TO_BE_READ =>
        if ((RX_Full = '1') and (clk_rise = '1')) then
          rx_ovf              <= '0';
          rx_state_machine_ns <= IDLE;
        elsif ((ps2_data_i_int = '0') and (RX_Full = '0')) then
          rx_ns(10)           <= '0';
          rx_state_machine_ns <= RX_0;
        else
          rx_state_machine_ns <= WAITING_TO_BE_READ;
        end if;
          
      when RX_0 =>
        if clk_fall = '1' then
          rx_ns(9)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_1;
        else
          rx_state_machine_ns <= RX_0;
        end if;
        
      when RX_1 =>
        if clk_fall = '1' then
          rx_ns(8)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_2;
        else
          rx_state_machine_ns <= RX_1;
        end if;
        
      when RX_2 =>
        if clk_fall = '1' then
          rx_ns(7)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_3;
        else
          rx_state_machine_ns <= RX_2;
        end if;
        
      when RX_3 =>
        if clk_fall = '1' then
          rx_ns(6)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_4;
        else
          rx_state_machine_ns <= RX_3;
        end if;
          
      when RX_4 =>
        if clk_fall = '1' then
          rx_ns(5)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_5;
        else
          rx_state_machine_ns <= RX_4;
        end if;
          
      when RX_5 =>
        if clk_fall = '1' then
          rx_ns(4)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_6;
        else
          rx_state_machine_ns <= RX_5;
        end if;
          
      when RX_6 =>
        if clk_fall = '1' then
          rx_ns(3)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_7;
        else
          rx_state_machine_ns <= RX_6;
        end if;
          
      when RX_7 =>
        if clk_fall = '1' then
          rx_ns(2)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_PARITY;
        else
          rx_state_machine_ns <= RX_7;
        end if;
          
      when RX_PARITY =>
        if clk_fall = '1' then
          rx_ns(1)            <= ps2_data_i_int;
          rx_state_machine_ns <= RX_CHK;
        else
          rx_state_machine_ns <= RX_PARITY;
        end if;
          
      when RX_CHK =>
        if ((rx_parity_odd = '1')) then
          rx_state_machine_ns <= RX_STOP;
        else
          rx_err              <= '1';
          rx_ns               <= (others => '0');
          rx_state_machine_ns <= RX_ERR_INHIBIT;
        end if;
      
      when RX_ERR_INHIBIT =>
        ps2_clk_t_rx_ns       <= '0';
        ps2_clk_o_rx_ns       <= '0';
        start_100us_cntr_rx   <= '1';
        if (done_100us = '1') then
          start_100us_cntr_rx <= '0';
          rx_state_machine_ns <= IDLE;
        else
          rx_state_machine_ns <= RX_ERR_INHIBIT;
        end if;
        
      when RX_STOP =>
        stop_rx               <= '1';
        if clk_fall = '1' then
          rx_full_ns          <= '1';
          rx_ns(0)            <= ps2_data_i_int;
          rx_state_machine_ns <= DONE;
        else
          rx_state_machine_ns <= RX_STOP;
        end if;
        
      when DONE =>
        done_rx               <= '1';
        rx_full_ns            <= '0';
        rx_state_machine_ns   <= IDLE;
        
          
    end case;  
  end process RX_STATE_MACHINE ;
  -----------------------------------------------------------------------------
  -- Sequential Process block for Receive State Machine -----------------------
  -----------------------------------------------------------------------------
  
  RX_STATE_MACHINE_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        rx_state_machine_cs <= IDLE;
        rx_full_cs          <= '0';
        rx_cs               <= (others => '0');
        ps2_clk_t_rx_cs     <= '1';
        ps2_clk_o_rx_cs     <= '1';
        RX_ERR_set          <= '0';
        RX_OVF_set          <= '0';
        RX_FULL_set         <= '0';
      elsif ((TX_Full = '1') and (stop_rx = '0') and (done_rx = '0')) then
        rx_state_machine_cs <= IDLE;
      else
        rx_state_machine_cs <= rx_state_machine_ns;
        rx_full_cs          <= rx_full_ns;
        ps2_clk_t_rx_cs     <= ps2_clk_t_rx_ns;
        ps2_clk_o_rx_cs     <= ps2_clk_o_rx_ns;
        rx_cs               <= rx_ns;
        RX_ERR_set          <= rx_err;
        RX_OVF_set          <= rx_ovf;
        RX_FULL_set         <= rx_full_ns;
      end if;
    end if;
  end process RX_STATE_MACHINE_SEQ;                         
  
  -----------------------------------------------------------------------------
  -- Sequential Process block for RX Data -------------------------------------
  -----------------------------------------------------------------------------
  
  RX_DATA_SEQ: process (Clk) is
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        RX_DATA <= (others => '0');
      else
        RX_DATA <= rx_cs(2 to 9); 
      end if;
    end if;
  end process RX_DATA_SEQ;  
  
  -----------------------------------------------------------------------------
  -- 100 us Counter Instantiation ---------------------------------------------
  -----------------------------------------------------------------------------
  
  COUNTER_100us_I : entity xps_ps2_v1_01_b.ps2_counter
    generic map
    (
      C_COUNT    => COUNT_100us
    )
    port map
    (
      Clk               => Clk,
      Clr               => clr_100us_cntr,
      Count_Almost_Done => almost_done_100us,
      Count_Done        => done_100us
    );
  clr_100us_cntr <= Rst or (not(start_100us_cntr or start_100us_cntr_rx));
  -----------------------------------------------------------------------------
  -- 50 us Counter Instantiation ---------------------------------------------
  -----------------------------------------------------------------------------
  
  COUNTER_50us_I : entity xps_ps2_v1_01_b.ps2_counter
    generic map
    (
      C_COUNT    => COUNT_50us
    )
    port map
    (
      Clk               => Clk,
      Clr               => clr_50us_cntr,
      Count_Almost_Done => almost_done_50us,
      Count_Done        => done_50us
    );

  clr_50us_cntr <= Rst or (not(start_50us_cntr));
  
  -----------------------------------------------------------------------------
  -- 15 ms Counter Instantiation ---------------------------------------------
  -----------------------------------------------------------------------------
    
  COUNTER_15ms_I : entity xps_ps2_v1_01_b.ps2_counter
    generic map
    (
      C_COUNT    => COUNT_15ms
    )
    port map
    (
      Clk               => Clk,
      Clr               => clr_15ms_cntr,
      Count_Almost_Done => almost_done_15ms,
      Count_Done        => done_15ms
    );
  
  clr_15ms_cntr <= Rst or (not(start_15ms_cntr));
  -----------------------------------------------------------------------------
  -- WDT Counter Instantiation ------------------------------------------------
  -----------------------------------------------------------------------------
    
  COUNTER_WDT_I : entity xps_ps2_v1_01_b.ps2_counter
    generic map
    (
      C_COUNT    => COUNT_wdt
    )
    port map
    (
      Clk               => Clk,
      Clr               => clr_wdt_cntr,
      Count_Almost_Done => almost_done_wdt,
      Count_Done        => wdt_done
    );

  clr_wdt_cntr <= Rst or (not(start_wdt_cntr));
    
end architecture IMP;