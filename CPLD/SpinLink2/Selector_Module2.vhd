----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:41 08/08/2012 
-- Design Name: 
-- Module Name:    Selector_Module2 - Behavioral 
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

entity Selector_Module2 is
    Port ( OK : in  STD_LOGIC;
           EOP : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           SEL : out  STD_LOGIC;
           DAV : out  STD_LOGIC);
end Selector_Module2;

architecture Behavioral of Selector_Module2 is
	

begin



SELECTOR : process(OK, CLR, EOP)
	variable SEL_STATE	: STD_LOGIC := '0';
	variable DAV_STATE	: STD_LOGIC := '0';
	
begin

	if (OK = '0') and falling_edge(OK) then
		if (SEL_STATE = '1') or (EOP = '1') then
			DAV_STATE := '1';
		end if;
		
		if (DAV_STATE = '0') and (SEL_STATE = '0') then
			SEL_STATE := '1';
		end if;
			
	end if;
		
	if(CLR = '1')	then
		SEL_STATE := '0';
		DAV_STATE := '0';
	end if;	
	
	
	-- Output signals
	SEL <= SEL_STATE;
	DAV <= DAV_STATE;
		
	
	
end process SELECTOR;







end Behavioral;

