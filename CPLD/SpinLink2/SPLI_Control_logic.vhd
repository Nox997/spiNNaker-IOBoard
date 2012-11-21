----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:55:52 08/08/2012 
-- Design Name: 
-- Module Name:    SPLI_Control_logic - Behavioral 
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

entity SPLI_Control_logic is
    Port ( SEL : in  STD_LOGIC;
           DAV : in  STD_LOGIC;
           ERR : in  STD_LOGIC;
           OK : in  STD_LOGIC;
           DACK : in  STD_LOGIC;
           CLR : out  STD_LOGIC;
           SPIN_IN_ACK : out  STD_LOGIC;
           CLR_IN : in  STD_LOGIC);
end SPLI_Control_logic;

architecture Behavioral of SPLI_Control_logic is

	signal TOGGLE : STD_LOGIC;
	shared variable CLEAR : STD_LOGIC := '1';

begin


ACKNOWLEDGEMENT : process(DACK, TOGGLE, DAV)
begin
if (CLEAR = '1') then
	if(DACK = '1') then
		TOGGLE <= '1';
	 elsif(DAV = '1') then
	   TOGGLE <= '0';
	 else
		TOGGLE <= '1';
	  end if;
else
	TOGGLE <= '0';
end if;

end process ACKNOWLEDGEMENT;


SP_ACK_TOGGLE : process(TOGGLE) --Toggle process for ACK out
	
	variable SPIN_ACK : STD_LOGIC := '0';
	
begin

	if TOGGLE = '1' then
		case SPIN_ACK is
			when '1' => SPIN_ACK := '0';
			when others => SPIN_ACK := '1';
		end case;	
	end if;
	
	SPIN_IN_ACK <= SPIN_ACK;
	
end process SP_ACK_TOGGLE;



CLEAR_IN_BUFFER: process(SEL, DAV, OK, CLR_IN, ERR, DACK) --Clear input buffer
begin 

if CLR_IN = '1' then --Basic reset
	CLEAR := '0';
end if;

if (ERR = '1' or OK ='1') or (DACK = '1') then	-- CLEAR if data or DACK was received
	CLEAR  := '1';
else
    CLEAR := '0';	
end if;

	CLR <= CLEAR;

end process CLEAR_IN_BUFFER; 



end Behavioral;

