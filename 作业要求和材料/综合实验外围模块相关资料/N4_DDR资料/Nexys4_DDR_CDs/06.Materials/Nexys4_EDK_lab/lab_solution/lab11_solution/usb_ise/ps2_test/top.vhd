----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:42 11/25/2013 
-- Design Name: 
-- Module Name:    top - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk : in  STD_LOGIC;
	        -- PS2 keyboard signals
			  KClk     : in  std_logic;
			  KData    : in  std_logic;
			  rst : in   std_logic;
			  led16 : out std_logic;
           led : out  STD_LOGIC_VECTOR (15 downto 0));
end top;

architecture Behavioral of top is

COMPONENT debouncer
	PORT(
		CK : IN std_logic;
		I0 : IN std_logic;
		I1 : IN std_logic;          
		O0 : OUT std_logic;
		O1 : OUT std_logic
		);
	END COMPONENT;

COMPONENT Ps2Receiver
	PORT(
		ck : IN std_logic;
		kclk : IN std_logic;
		kdata : IN std_logic;          
		key_codeOut : OUT std_logic_vector(15 downto 0)
		);
END COMPONENT;

COMPONENT clk_div
PORT(
	clkin : IN std_logic;
	rst : IN std_logic;          
	clk_50MHz : OUT std_logic;
	clk_2M : out  STD_LOGIC
	);
END COMPONENT;

signal clk_50M : std_logic;
signal clk_2M : std_logic;

signal DClk, DData : std_logic := '0';

signal KeyCode : std_logic_vector (15 downto 0);

begin

   Inst_clk_div: clk_div PORT MAP(
		clkin => clk,
		rst => rst,
		clk_50MHz => clk_50M
	);

	Inst_debouncer: debouncer PORT MAP(
		CK => clk_50M,
		I0 => KClk,
		I1 => KData,
		O0 => DClk,
		O1 => DData
	);

	Inst_Ps2Receiver: Ps2Receiver PORT MAP(
		ck    => clk_50M,
		kclk  => DClk,
		kdata => DData,
		key_codeOut => KeyCode
	);
	
	led <= KeyCode;
	led16 <= clk_2M;
	
end Behavioral;

