----------------------------------------------------------------------------------
-- Company: Neurowissenschaftliche Systemtheorie
--				Lehrstuhl fuer Steuerungs- und Regelungstechnik
--				Technische Universitaet Muenchen
--
-- Engineer:	Francisco J. Llobet Blandino
-- Supervisor: Indar Sugiarto
-- 
-- 
-- Module Name:    Input2 - Behavioral 
-- Project Name: 	SpiNNaker SpinLink Hardware Interface.
-- Target Devices: Xc2c128 CoolRunner II
-- Description: 	This is the cleaned-up version of the receiving interface.
--
--
-- Revision: 1.00
-- Additional Comments: First Working on 10.9.2012 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Input2 is
    Port ( SPLI : in  STD_LOGIC_VECTOR (6 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (8 downto 0);
           DAV : out  STD_LOGIC;
           DACK : in  STD_LOGIC;
           ACK : out  STD_LOGIC);
end Input2;

architecture Behavioral of Input2 is
			
			signal ACK_BUFFER			: STD_LOGIC;
			signal ACK_OK			   : STD_LOGIC;
			signal DECODED_STAT  	: STD_LOGIC;
			signal DECODED_NIBBLE	: STD_LOGIC_VECTOR(4 downto 0);
			signal NIBBLE_BUFFER		: STD_LOGIC_VECTOR(6 downto 0);
			signal DAV_BUFFER		   : STD_LOGIC;
			signal DATA_BUFFER 	   : STD_LOGIC_VECTOR(8 downto 0);
			signal CLEAR_BUFFER		: STD_LOGIC;
			signal BUFFERED_SET		: STD_LOGIC;
			signal BUFFERED_RESET	: STD_LOGIC;
			signal SEL					: STD_LOGIC;

begin

process(DECODED_STAT, DACK, DECODED_NIBBLE, ACK_OK, BUFFERED_SET, SEL, BUFFERED_RESET)
			variable ACK_STATUS1		: STD_LOGIC;
			variable ACK_STATUS2		: STD_LOGIC;
			variable DAV_STAT   		: STD_LOGIC;
			variable DAV_SET			: STD_LOGIC;
			variable DAV_CLEAR		: STD_LOGIC;
		
begin	

	if falling_edge(DACK) then --'event then
			-- Resets DAV and SEL signals to 0
			-- Set ACK 
			DAV_CLEAR			:= '1';
			--DAV_SET			<= '0';
			
			ACK_STATUS1 := '1';
	end if;
	
	if falling_edge(BUFFERED_RESET) then	--Ahora funciona!! 
	BUFFERED_SET 		<= '0';
	end if;
	
	if DECODED_STAT = '1' and BUFFERED_SET = '0' then -- Decoded nibble --and CLEAR_BUFFER = '0' 
		-- Shift out-buffer register
		-- Set DAV and SEL signals
		-- Set new nibble buffer
		DATA_BUFFER(3) <= DATA_BUFFER(7);
		DATA_BUFFER(2) <= DATA_BUFFER(6);
		DATA_BUFFER(1) <= DATA_BUFFER(5);
		DATA_BUFFER(0) <= DATA_BUFFER(4);

		DATA_BUFFER(8) <= DECODED_NIBBLE(4);
		DATA_BUFFER(7) <= DECODED_NIBBLE(3);
		DATA_BUFFER(6) <= DECODED_NIBBLE(2);
		DATA_BUFFER(5) <= DECODED_NIBBLE(1);
		DATA_BUFFER(4) <= DECODED_NIBBLE(0);
		
		-- The Autoreply!
		if DECODED_NIBBLE(4) = '1' then -- EoP or Error was received
			--DATA_BUFFER <= "100000000";
			SEL 			<= '0';
			DAV_SET		:= '1';
			ACK_STATUS2 := '0';
			BUFFERED_SET <= '1';
		elsif SEL = '0' then 
			SEL 			<= '1';
			ACK_STATUS2 := '1';	-- The actual Autoreply
			DAV_SET 		:= '0';
			BUFFERED_SET <= '1';
		else
			SEL 			<= '0';
			ACK_STATUS2 := '0';
			DAV_SET		:= '1';
			BUFFERED_SET <= '1';
		end if;
		
		--DAV_SET			:= '1';

		CLEAR_BUFFER		<= '1';
	else
		CLEAR_BUFFER		<= '0';
	end if;

		

	if 	ACK_STATUS1 = '1' or ACK_STATUS2 = '1' then	--Toggler
			ACK_OK 		<= '1';
			ACK_STATUS1 := '0';
			ACK_STATUS2 := '0';
	else
			ACK_OK <= '0';
	end if;

	
	if DAV_SET = '1' then
		DAV_BUFFER <= '1';
		DAV_SET := '0';
	end if;
	
	if DAV_CLEAR = '1' then
	   DAV_BUFFER <= '0';
		DAV_CLEAR := '0';
	end if;	
	

		
end process;

ACK_SIGNAL : process(ACK_OK)
begin
	
	if rising_edge(ACK_OK) then	
		if ACK_BUFFER = '1' then 
			ACK_BUFFER <= '0';
		else ACK_BUFFER <= '1';
		end if;
	end if;

	if ACK_OK = '1' then 
		BUFFERED_RESET <= '1';
	else 
		BUFFERED_RESET <= '0';
	end if;


end process ACK_SIGNAL;

ACK_SIGNAL2 : process(ACK_BUFFER)
begin
	
	ACK <= ACK_BUFFER;

end process ACK_SIGNAL2;




DAV_SIGNAL : process(DAV_BUFFER, DACK, DATA_BUFFER)
begin


	DAV		<= DAV_BUFFER;
	
	if DAV_BUFFER = '1' then
	DATA_OUT <= DATA_BUFFER;
	end if;
	

end process DAV_SIGNAL;


NIBBLE_DECODER : process(SPLI, NIBBLE_BUFFER, CLEAR_BUFFER)
		variable TRANSITION	  : STD_LOGIC_VECTOR(6 downto 0);
begin

--	if rising_edge(CLEAR_BUFFER) then
--		null;
--	end if;


	if CLEAR_BUFFER = '1' then
		NIBBLE_BUFFER     <= SPLI;
		DECODED_STAT		<= '0';
	else

		TRANSITION := SPLI xor NIBBLE_BUFFER;
		
			case TRANSITION  is
				when "0010001" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00000";   --Symbol 0
				when "0010010" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00001";   --Symbol 1
				when "0010100" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00010";   --Symbol 2
				when "0011000" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00011";   --Symbol 3
				when "0100001" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00100";   --Symbol 4
				when "0100010" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00101";   --Symbol 5
				when "0100100" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00110";   --Symbol 6
				when "0101000" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "00111";   --Symbol 7
				when "1000001" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01000";   --Symbol 8
				when "1000010" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01001";   --Symbol 9
				when "1000100" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01010";   --Symbol 10
				when "1001000" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01011";   --Symbol 11
				when "0000011" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01100";   --Symbol 12
				when "0000110" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01101";   --Symbol 13
				when "0001100" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01110";   --Symbol 14
				when "0001001" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "01111";   --Symbol 15
				when "1100000" => DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "10000";   --Symbol EoP
				when "1000000" => DECODED_STAT	<= '0';  
				when "0100000" => DECODED_STAT	<= '0';  
				when "0010000" => DECODED_STAT	<= '0';  
				when "0001000" => DECODED_STAT	<= '0';  
				when "0000100" => DECODED_STAT	<= '0';  
				when "0000010" => DECODED_STAT	<= '0';  
				when "0000001" => DECODED_STAT	<= '0';  
				when "0000000" => DECODED_STAT	<= '0';  
				when others =>    DECODED_STAT	<= '1';  
										DECODED_NIBBLE <= "10000";   --Symbol EoP (Actually Error)
			end case;
	end if;

end process NIBBLE_DECODER;











end Behavioral;