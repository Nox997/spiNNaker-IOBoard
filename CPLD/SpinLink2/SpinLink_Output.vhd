----------------------------------------------------------------------------------
-- Company:  Neurowissenschaftliche Sytemtheorie
-- Engineer: Francisco Llobet B.
-- 
-- Create Date:    17:48:58 08/08/2012 
-- Design Name: 	Control Logic for the SpiNNaker SpinLink receiver module
-- Module Name:    	Auto_Reply - Behavioral 
-- Project Name: 	SpiNNaker SpinLink Interface
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 1. Seems to be working
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

entity SpinLink_Output is
		    Port (ACK		: in STD_LOGIC;
			  DAV				: in  STD_LOGIC;
			  BSY				: out STD_LOGIC;
			  SPL_OUT	   : out  STD_LOGIC_VECTOR  (6 downto 0);
			  DATA_IN		: in  STD_LOGIC_VECTOR (8 downto 0));
end SpinLink_Output;

architecture Behavioral of SpinLink_Output is

	signal NIBBLE_OUT		 :  STD_LOGIC_VECTOR(6 downto 0);
	signal DATA_BUFFER	 :  STD_LOGIC_VECTOR(11 downto 0);
--	signal DATA_RING  	 :  STD_LOGIC_VECTOR(11 downto 0);
--	signal ACK_BUFFER		 :  STD_LOGIC;
--	signal DAV_BUFFER		 :  STD_LOGIC;
	signal SEL         	 :  STD_LOGIC;	--MUX Selector
	signal SEL_CLEAR		 :  STD_LOGIC;
	signal ACK_STATUS		 :  STD_LOGIC;
	signal ACK_CLEAR		 :  STD_LOGIC;	
	signal DAV_STATUS		 :  STD_LOGIC;
	signal DAV_CLEAR		 :  STD_LOGIC;	
	signal TRANSMIT_OK	 :  STD_LOGIC;
	signal TRANSMISSION	 :  STD_LOGIC;
	signal BSY_STATUS     :  STD_LOGIC;
	signal BSY_CLEAR		 :  STD_LOGIC;
	signal TRANSMIT_FIRST :  STD_LOGIC;
	signal TRANSMIT_SECOND :  STD_LOGIC;
	signal COUNTER_RESET  : STD_LOGIC;

begin

OUTPUT_MASCHINE : process(TRANSMIT_OK, SEL_CLEAR)

	variable NIBBLE_MASK	: STD_LOGIC_VECTOR(6 downto 0);
	variable DATA_SMALL	: STD_LOGIC_VECTOR(4 downto 0);
	variable OUT_BUFFER	: STD_LOGIC_VECTOR(5 downto 0);
	variable SEL_STATUS	: STD_LOGIC;
	variable DAV_BUFFER  : STD_LOGIC;
	variable BSY_BUFFER  : STD_LOGIC;
	variable ACK_BUFFER  : STD_LOGIC;



begin	
			DAV_BUFFER := DAV_STATUS;
			ACK_BUFFER := ACK_STATUS;
			BSY_BUFFER := BSY_STATUS;
		
		if DAV_STATUS = '1' then SEL_STATUS := '0';
		end if;

			
		if rising_edge(TRANSMIT_OK) then
		
			if SEL_STATUS = '0' then	
				DATA_SMALL(4) := DATA_BUFFER(4);
				DATA_SMALL(3) := DATA_BUFFER(3);
				DATA_SMALL(2) := DATA_BUFFER(2);
				DATA_SMALL(1) := DATA_BUFFER(1);
				DATA_SMALL(0) := DATA_BUFFER(0);		
			else
				DATA_SMALL(4) := DATA_BUFFER(10);
				DATA_SMALL(3) := DATA_BUFFER(9);
				DATA_SMALL(2) := DATA_BUFFER(8);
				DATA_SMALL(1) := DATA_BUFFER(7);
				DATA_SMALL(0) := DATA_BUFFER(6);	
			end if; 
			
			ENCODER : case DATA_SMALL is
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
	--	NIBBLE_MASK := "1100000";  --Symbol EOP
		
		
		NIBBLE_OUT	<= NIBBLE_MASK xor NIBBLE_OUT; -- Transmission
		SPL_OUT		<= NIBBLE_OUT; 
		TRANSMIT_OK <= '1';
	
		end if;
	
		if SEL_STATUS = '0' then SEL_STATUS := '1';
		end if;
		
	

		if ACK_BUFFER = '1' then
					ACK_CLEAR  <= '1';		-- Reset the DAV Buffer
				
				--if DATA_BUFFER(5) = '1' then 
				--	BSY_CLEAR <= '1';
				--end if;
				
		else  
			--		BSY_CLEAR	<= '0';
					ACK_CLEAR	<= '0';
		end if;



		if DAV_BUFFER = '1' then 	-- Begin transmission
			DAV_CLEAR  <= '1';		-- Reset the DAV Buffer
		else DAV_CLEAR <= '0';
		end if;
		
	
	--	DATA_BUFFER(5) <= DATA_BUFFER(11);
	--	DATA_BUFFER(4) <= DATA_BUFFER(10);
	--	DATA_BUFFER(3) <= DATA_BUFFER(9);
	--	DATA_BUFFER(2) <= DATA_BUFFER(8);
	--	DATA_BUFFER(1) <= DATA_BUFFER(7);
	--	DATA_BUFFER(0) <= DATA_BUFFER(6);
	SEL <= SEL_STATUS;

end process OUTPUT_MASCHINE;



ACKNOWLEDGEMENT_SIGNAL :process(ACK, ACK_CLEAR)
begin
		
	if ACK'EVENT 		 then ACK_STATUS <= '1';
		if SEL = '1' or DATA_BUFFER(5) = '1' then
			BSY_CLEAR <= '1';
			else BSY_CLEAR <= '0';
		end if;
	end if;

	if ACK_CLEAR = '1' then ACK_STATUS <= '0';
	end if;

end process ACKNOWLEDGEMENT_SIGNAL;


DATA_AV_SIGNAL :process(DAV, DAV_CLEAR)
begin
		
	if DAV'EVENT 		 then --Buffering
	
		DAV_STATUS <= '1';
		DATA_BUFFER(11)<= '1';
		DATA_BUFFER(10)<= DATA_IN(8);
		DATA_BUFFER(9) <= DATA_IN(7);
		DATA_BUFFER(8) <= DATA_IN(6);
		DATA_BUFFER(7) <= DATA_IN(5);
		DATA_BUFFER(6) <= DATA_IN(4);
	
		DATA_BUFFER(5) <= DATA_IN(8);
		DATA_BUFFER(4) <= DATA_IN(8);
		DATA_BUFFER(3) <= DATA_IN(3);
		DATA_BUFFER(2) <= DATA_IN(2);
		DATA_BUFFER(1) <= DATA_IN(1);
		DATA_BUFFER(0) <= DATA_IN(0);
		SEL_CLEAR		<= '1';
	end if;

	if DAV_CLEAR = '1' then 
		SEL_CLEAR	<= '0';
		DAV_STATUS  <= '0';
	end if;

end process DATA_AV_SIGNAL;

TRANSMIT_OK_SIGNAL : process(DAV_STATUS, ACK_STATUS, BSY_STATUS)
begin
		
	if BSY_STATUS = '1' and (DAV_STATUS = '1' or ACK_STATUS = '1') then
			TRANSMIT_OK <= '1';
	else	TRANSMIT_OK <= '0';
	end if;

end process TRANSMIT_OK_SIGNAL;

TRANSMIT_FIRST_SIGNAL : process(DAV_STATUS, BSY_STATUS)
begin

	if BSY_STATUS = '1' and DAV_STATUS = '1' then
	TRANSMIT_FIRST <= '1';
	else TRANSMIT_FIRST <= '0';
	end if;

end process TRANSMIT_FIRST_SIGNAL;

TRANSMIT_SECOND_SIGNAL : process(ACK_STATUS, BSY_STATUS)
begin
	if BSY_STATUS = '1' and ACK_STATUS = '1' then 
	TRANSMIT_SECOND <= '1';
	else TRANSMIT_SECOND <= '0';
	end if;

end process TRANSMIT_SECOND_SIGNAL;



BUSY_SIGNAL : process(DAV_STATUS, BSY_CLEAR)
begin
		
	if rising_edge(DAV_STATUS) then
			BSY_STATUS <= '1';
	end if;

	if BSY_CLEAR = '1' then
			BSY_STATUS <= '0';
	end if;
				
	BSY <= BSY_STATUS;		
		
end process BUSY_SIGNAL;



ACK_COUNTER : process(ACK, COUNTER_RESET)
	variable SEL  : STD_LOGIC;
	variable OVER : STD_LOGIC;

begin

	if ACK'event then
		if SEL = '1' then
			OVER := '1';
			SEL  := '1';
		else
			SEL  := '1';
			OVER := '0';
		end if;
	end if;
	
	if COUNTER_RESET = '1' then
			SEL  := '0';
			OVER := '0';
	end if;




end process ACK_COUNTER;


end Behavioral;

