----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:11 09/03/2012 
-- Design Name: 
-- Module Name:    Output2 - Behavioral 
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

entity Output2 is
    Port ( DATA_IN : in  STD_LOGIC_VECTOR (8 downto 0);
           SPL_O   : out  STD_LOGIC_VECTOR (6 downto 0);
           DAV     : in  STD_LOGIC;
           ACK     : in  STD_LOGIC;
           BSY     : out  STD_LOGIC);
end Output2;


architecture Behavioral of Output2 is

	-- Status signals:
	signal ACK_STATUS : STD_LOGIC;
	signal DAV_STATUS : STD_LOGIC;
	
	-- Clear signals
	signal ACK_CLEAR	: STD_LOGIC;
	signal DAV_CLEAR  : STD_LOGIC;

	--Mux
	signal SEL_STATUS : STD_LOGIC;
	signal SEL_CLEAR  : STD_LOGIC;
	signal SEL_OV		: STD_LOGIC;
	
	signal BSY_STATUS : STD_LOGIC;
	signal BSY_CLEAR  : STD_LOGIC;
	
	signal TRANSMIT_OK : STD_LOGIC;
	signal NIBBLE : STD_LOGIC_VECTOR (6 downto 0);
	
begin

MAIN_OUTPUT : process(TRANSMIT_OK, ACK_STATUS, DAV_STATUS, BSY_STATUS)
	variable NIBBLE_MASK : STD_LOGIC_VECTOR (6 downto 0);
	variable DATA_NIBBLE : STD_LOGIC_VECTOR (4 downto 0);
	
begin


if rising_edge(TRANSMIT_OK) then

	if SEL_STATUS = '0' then
		DATA_NIBBLE(4) := DATA_IN(8);
		DATA_NIBBLE(3) := DATA_IN(3);
		DATA_NIBBLE(2) := DATA_IN(2);
		DATA_NIBBLE(1) := DATA_IN(1);
		DATA_NIBBLE(0) := DATA_IN(0);	
	else --if SEL_STATUS = '1' then
		DATA_NIBBLE(4) := DATA_IN(8);
		DATA_NIBBLE(3) := DATA_IN(7);
		DATA_NIBBLE(2) := DATA_IN(6);
		DATA_NIBBLE(1) := DATA_IN(5);
		DATA_NIBBLE(0) := DATA_IN(4);	
	end if;			
	
	ENCODER : case DATA_NIBBLE is
			when "00000" =>	NIBBLE_MASK := "0010001";  --Symbol 0
			when "00001" => 	NIBBLE_MASK := "0010010";  --Symbol 1
			when "00010" =>	NIBBLE_MASK := "0010100";  --Symbol 2
			when "00011" => 	NIBBLE_MASK := "0011000";  --Symbol 3
			when "00100" =>	NIBBLE_MASK := "0100001";  --Symbol 4
			when "00101" => 	NIBBLE_MASK := "0100010";  --Symbol 5
			when "00110" => 	NIBBLE_MASK := "0100100";  --Symbol 6
			when "00111" =>	NIBBLE_MASK := "0101000";  --Symbol 7
			when "01000" =>	NIBBLE_MASK := "1000001";  --Symbol 8
			when "01001" =>	NIBBLE_MASK := "1000010";  --Symbol 9
			when "01010" => 	NIBBLE_MASK := "1000100";  --Symbol 10
			when "01011" => 	NIBBLE_MASK := "1001000";  --Symbol 11
			when "01100" => 	NIBBLE_MASK := "0000011";  --Symbol 12
			when "01101" => 	NIBBLE_MASK := "0000110";  --Symbol 13
			when "01110" => 	NIBBLE_MASK := "0001100";  --Symbol 14
			when "01111" => 	NIBBLE_MASK := "0001001";  --Symbol 15
			when "10000" => 	NIBBLE_MASK := "1100000";  --Symbol EOP
			when others  =>	NIBBLE_MASK := "1100000";   --Actually error!    
		end case ENCODER;
		
			NIBBLE <= NIBBLE xor NIBBLE_MASK;
			SPL_O  <= NIBBLE;
		
		
		end if;



if DAV_STATUS = '1' then
   DAV_CLEAR <= '1';
else
	DAV_CLEAR <= '0';
end if;

if ACK_STATUS = '1' then
   ACK_CLEAR <= '1';
else
	ACK_CLEAR <= '0';
end if;

if BSY_STATUS = '0' then
	BSY_CLEAR  <= '0';
end if;


end process MAIN_OUTPUT;




ACKNOWLEDGEMENT_STATUS : process(ACK, ACK_CLEAR)
begin

	if ACK'event then
	ACK_STATUS <= '1';
	end if;
	
	
	if ACK_CLEAR = '1' then
	ACK_STATUS <= '0';
	end if;


end process ACKNOWLEDGEMENT_STATUS;



ACK_COUNTER	:process(ACK, BSY_STATUS, SEL_CLEAR)
begin

	if ACK'event then 
		if SEL_STATUS = '0' then
		   SEL_STATUS <= '1';
--			SEL_OV	  <= '0';
				if DATA_IN(8) = '1' then
					SEL_OV 	  <= '1';
				else SEL_OV   <= '0';
				end if;
		elsif SEL_STATUS = '1' then
			SEL_STATUS <= '1';
			SEL_OV 	  <= '1';
		end if;
	end if;
	
	if BSY_STATUS = '0' then
			SEL_STATUS  <= '0';
			SEL_OV 		<= '0';
	end if;

end process ACK_COUNTER;


BSY_GENERATOR : process(SEL_OV, DAV_STATUS, BSY_CLEAR)
begin

	if rising_edge(DAV_STATUS) then
		BSY_STATUS <= '1';
	end if;
	
	if (SEL_OV = '1') or (BSY_CLEAR = '1') then
		BSY_STATUS <= '0';
	--	SEL_CLEAR <= '1';			-- DUBIOUS STUFF
	--else SEL_CLEAR <= '0';     -- DUBIOUS STUFF
	end if;


end process BSY_GENERATOR;





DATA_AVAILABLE_STATUS : process(DAV, DAV_CLEAR)
begin

	if DAV'event then
	DAV_STATUS <= '1';
	end if;
	
	
	if DAV_CLEAR = '1' then
	DAV_STATUS <= '0';
	end if;


end process DATA_AVAILABLE_STATUS;


TRANSMIT_OK_STATUS : process(DAV_STATUS, BSY_STATUS, ACK_STATUS)
begin

if (DAV_STATUS = '1' or ACK_STATUS = '1') and BSY_STATUS = '1' then
	TRANSMIT_OK <= '1';
else
	TRANSMIT_OK <= '0';
end if;




end process TRANSMIT_OK_STATUS;




end Behavioral;

