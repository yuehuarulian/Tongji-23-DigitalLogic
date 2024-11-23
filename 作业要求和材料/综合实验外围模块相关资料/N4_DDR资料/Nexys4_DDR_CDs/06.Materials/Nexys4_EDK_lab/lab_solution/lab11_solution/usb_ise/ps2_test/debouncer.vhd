----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:55 12/16/2010 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- the sistem clock frequency is very high (50 MHz) so
-- inputs (I0, I1) are validated only if stable for 10 clock periods

library IEEE;
use IEEE.std_logic_1164.all;
library unisim;
use unisim.vcomponents.all;

entity debouncer is
    port (
        CK: in std_logic;
        I0, I1: in std_logic;
		  O0,O1: out std_logic
    );
end debouncer;

architecture debouncer_arch of debouncer is
signal cnt0, cnt1 : integer range 0 to 19; -- counters
signal Iv0, Iv1: std_logic;					-- previous input values

begin

debouncer1: process (CK) 
begin
if CK'event and CK='1' then
	if I0=Iv0 then
		if cnt0=9 then		-- O0 follows I0 only if stable for 10 CK periods
			O0<=I0;
		else 
			cnt0<=cnt0+1;
		end if;
	else 
		cnt0<=0;				-- I0 changed, counter restart, O0 unchanged
		Iv0<=I0;
	end if;

	if I1=Iv1 then
		if cnt1=9 then		-- O1 follows I1 only if stable for 10 CK periods
			O1<=I1;
		else 
			cnt1<=cnt1+1;
		end if;
	else 
		cnt1<=0;				-- I1 changed, counter restart, O1 unchanged
		Iv1<=I1;
	end if;

end if;
end process debouncer1;
end debouncer_arch;



