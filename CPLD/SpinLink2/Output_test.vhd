----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:40 10/25/2012 
-- Design Name: 
-- Module Name:    Output_test - Behavioral 
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

entity Output_test is
    Port ( DAV : in  STD_LOGIC;
           SPLO : out  STD_LOGIC_VECTOR (6 downto 0));
end Output_test;

architecture Behavioral of Output_test is
	signal NIBBLE_BUFFER :  STD_LOGIC_VECTOR (6 downto 0);
begin

TEST: process(DAV)

begin

if falling_edge(DAV) then

	NIBBLE_BUFFER(0) <= not NIBBLE_BUFFER(0);
	NIBBLE_BUFFER(2) <= not NIBBLE_BUFFER(2);
	NIBBLE_BUFFER(4) <= not NIBBLE_BUFFER(4);
	
end if;

if DAV'event then
	NIBBLE_BUFFER(6) <= not NIBBLE_BUFFER(6);
end if;

if rising_edge(DAV) then
	NIBBLE_BUFFER(1) <= not NIBBLE_BUFFER(1);
	NIBBLE_BUFFER(3) <= not NIBBLE_BUFFER(3);
	NIBBLE_BUFFER(5) <= not NIBBLE_BUFFER(4);
end if;



end process TEST;



TEST2: process(NIBBLE_BUFFER)

begin

	SPLO <= NIBBLE_BUFFER;

end process TEST2;


end Behavioral;

