-------------------------------------------------------------------------------
-- $Id: ps2_counter.vhd,v 1.1.2.1 2009/12/11 05:48:32 bommanas Exp $
-------------------------------------------------------------------------------
-- PS2_COUNTER - entity/architecture pair 
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
-- Filename:     ps2_counter.vhd
-- Version:      v1.01b
-- Description:  
-------------------------------------------------------------------------------
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


-------------------------------------------------------------------------------
--                     Definition of Generics :                              --
-------------------------------------------------------------------------------
-- C_COUNT  -- Count Value the counter counts and sets the Done signal
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
--                  Definition of Ports                                      --
-------------------------------------------------------------------------------
 
-- Clk                -- Operating Clock of the counter
-- Clr                -- Synchronous Clear Input to stop/start the counter
-- Count_Almost_Done  -- Almost Done signal generated 20 clock cycles before
--                       the actual count done happens
-- Count_Done         -- Count Done happens when the counter has counted upto
--                       C_COUNT
-------------------------------------------------------------------------------


entity ps2_counter is
  generic
  (
    C_COUNT : integer  := 10000
  );
  port
  (
    Clk           : in  std_logic;
    Clr            : in  std_logic;
    Count_Almost_Done      : out std_logic;
    Count_Done             : out std_logic
  );
end entity ps2_counter;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture IMP of ps2_counter is

-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------

constant C_COUNT_ALMOST_DONE      : integer   := C_COUNT-20;
-------------------------------------------------------------------------------
-- Function Declarations
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Function calculates how many bits are required to count the  C_COUNT value
-- Based on the last hex digit and the total number of hex digits, the 
-- function calculated asto how many bits would be required
-------------------------------------------------------------------------------
function counter_length ( C_COUNT : integer) return integer is
  variable temp : integer := 0;
  variable last_digit : integer := 0;
  variable hex_digits : integer := 0;
  variable no_of_digits : integer := 0;
  variable hex : integer := 16;
  variable count : integer := C_COUNT;
  variable length :integer := 0;
begin
  while count /= 0 loop
    temp := count MOD hex;
    hex_digits := temp/(hex/16);
    count := count - temp;
    hex := hex*16;
    no_of_digits := no_of_digits + 1;
  end loop;
  last_digit := hex_digits; 
  case last_digit is
    when 1 => length := 4*(no_of_digits - 1) + 1;
    when 2 => length := 4*(no_of_digits - 1) + 2;
    when 3 => length := 4*(no_of_digits - 1) + 2;
    when 4 => length := 4*(no_of_digits - 1) + 3;
    when 5 => length := 4*(no_of_digits - 1) + 3;
    when 6 => length := 4*(no_of_digits - 1) + 3;
    when 7 => length := 4*(no_of_digits - 1) + 3;
    when 8 => length := 4*(no_of_digits - 1) + 4;
    when 9 => length := 4*(no_of_digits - 1) + 4;
    when 10 => length := 4*(no_of_digits - 1) + 4;
    when 11 => length := 4*(no_of_digits - 1) + 4;
    when 12 => length := 4*(no_of_digits - 1) + 4;
    when 13 => length := 4*(no_of_digits - 1) + 4;
    when 14 => length := 4*(no_of_digits - 1) + 4;
    when 15 => length := 4*(no_of_digits - 1) + 4;
    when others => length := 4*(no_of_digits - 1) + 4;
  end case;
  return length;  
end;
-------------------------------------------------------------------------------
-- End Functions 
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Signals and Type Declarations
-------------------------------------------------------------------------------
signal tmp : std_logic_vector( 0 to counter_length(C_COUNT));
-------------------------------------------------------------------------------
-- End of Signal Declarations
-------------------------------------------------------------------------------
begin -- architecture IMP
  COUNTER_PROCESS: process(Clk)
  begin
    if Clk'event and Clk = '1' then
      if Clr = '1' then 
        tmp <= (others => '0');
      else
        tmp <= tmp + 1;
      end if;  
    end if;
  end process COUNTER_PROCESS;

  COUNT_DONE_PROCESS: process(Clk)
  begin
    if Clk'event and Clk = '1' then
      if (tmp = conv_std_logic_vector(C_COUNT_ALMOST_DONE, counter_length(C_COUNT_ALMOST_DONE))) then
        Count_Almost_Done <= '1';
      elsif (tmp = conv_std_logic_vector(C_COUNT, counter_length(C_COUNT))) then
        Count_Done <= '1';
      else
        Count_Done        <= '0';
        Count_Almost_Done <= '0';
      end if;
    end if;
  end process COUNT_DONE_PROCESS;

end architecture IMP;
