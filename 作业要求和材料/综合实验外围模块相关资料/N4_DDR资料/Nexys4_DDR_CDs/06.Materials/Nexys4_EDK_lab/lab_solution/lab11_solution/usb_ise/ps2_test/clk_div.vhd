----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:17 11/15/2013 
-- Design Name: 
-- Module Name:    clk_div - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div is
    Port ( clkin : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk_50MHz : out  STD_LOGIC;
			  clk_2M : out  STD_LOGIC
           );
end clk_div;

architecture Behavioral of clk_div is

signal cnt : std_logic_vector(9 downto 0);

begin

process(clkin)
begin
  if clkin'event and clkin = '1' then
     if rst = '1' then
	     cnt <= (others =>'0');
	  else
	     cnt <= cnt + "0001";
	  end if;
  end if;
end process;

clk_50MHz <= cnt(0);
clk_2M <= cnt(5);

end Behavioral;

