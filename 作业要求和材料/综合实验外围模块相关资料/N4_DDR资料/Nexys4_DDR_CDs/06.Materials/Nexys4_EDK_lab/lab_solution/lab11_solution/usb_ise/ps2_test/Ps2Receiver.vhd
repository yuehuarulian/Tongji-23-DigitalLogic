----------------------------------------------------------------------------------
-- Company: Digilent RO
-- Engineer: Mircea DAbacan
-- 
-- Create Date:    13:13:49 12/16/2010 
-- Design Name: 
-- Module Name:    Ps2Receiver - Behavioral 
-- Project Name: Piano
-- Target Devices: Basys 2
-- Tool versions: ISE 12.3
-- Description: 
-- Receives the key codes from a PS2 keyboard. 
-- Keeps the last two bytes in a two bytes FIFO.
-- Resets the receiver and FIFO after 50M clock periods of no 
-- Dependencies: ck frequency 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Receives the serial code of the pressed key 

library IEEE;
use IEEE.std_logic_1164.all;

entity Ps2Receiver is
	port (
		ck: in std_logic;  -- system clock for watch dog
		kclk,kdata: in std_logic;		
			-- KDATA - PS2 serial data 
			-- KCLK - PS2 serial clock used as clock
			-- ucf directive needed for a non clock pin
		key_codeOut: out std_logic_vector (15 downto 0)	-- the received code (2 bytes FIFO)
	);
end Ps2Receiver;

architecture Behavioral of Ps2Receiver is

	signal s_buf:std_logic_vector (9 downto 0);  -- receiver shift register
	signal par:std_logic;                        -- computed receiver parity bit
	signal wdg:std_logic;                        -- watchdog output
	signal key_code: std_logic_vector (15 downto 0);	-- internal received code (2 bytes FIFO)
	signal count: integer range 0 to 50000000-1;	-- watchdog counter

begin

	key_codeOut <= key_code;  -- assigning the output signal

	receiver:process (wdg,kclk)
	begin
		if  wdg='1' then 									-- kclk inactive for the last 1 sec. 
			s_buf<="1111111111";                   -- receiver shift register reset
			par<='0';                              -- parity bit reset
			key_code<=x"0000";						   -- FIFO reset
		elsif kclk'event and kclk='1' then
			if s_buf(0)='0' then							-- 11 bits received ("start bit" reached S_buf(0))
				if (par='1' and kdata='1') then		-- correct byte: parity OK, stop bit OK.
					key_code(15 downto 8) <= key_code(7 downto 0);	-- FIFO shifting
					key_code(7 downto 0) <= s_buf(8 downto 1);		-- the received byte shifted into FIFO
					s_buf<="1111111111";					-- a new reception is prepared
					par<='0';
				else 											-- incorrect byte
					s_buf<="1111111111";
					par<='0';
--					key_code<="00000000";				-- no valid byte available 
				end if;
			else 												-- not yet 11 bits
				s_buf<=kdata&s_buf(9 downto 1);		-- shift bits to right, adding the new received one
				par<=par xor kdata;						-- parity check. Includes the received parity bit.
															-- the result should be '1' for correct reception
			end if;
		end if;
	end process;

	wd: process (ck,kclk)
	begin
		if  kclk = '0' then   -- there is activity on the kclk
			count<=0;          -- reset the watch dog counter
			wdg<='0';          -- reset the watch dog output
		else
			if ck'event and ck='1' then
				if count = 50000000-1 then	-- no activity on kclk for last 50M ck periods
					wdg<='1';					-- wdg active
				else 
					count <= count + 1;		--increment counter
					wdg<='0';					-- wdg inactive
				end if;
			end if;
		end if;
	end process;


end Behavioral;

