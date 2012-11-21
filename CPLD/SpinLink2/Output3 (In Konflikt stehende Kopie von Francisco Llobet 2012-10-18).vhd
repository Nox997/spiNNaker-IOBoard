----------------------------------------------------------------------------------
-- Company: Neurowissenschaftliche Systemtheorie
--				Lehrstuhl fuer Steuerungs- und Regelungstechnik
--				Technische Universitaet Muenchen
--
-- Engineer:	Francisco J. Llobet Blandino
-- Supervisor: Indar Sugiarto
-- 
-- 
-- Module Name:    Output3 - Behavioral  
-- Project Name: 	SpiNNaker SpinLink Hardware Interface.
-- Target Devices: Xc2c128 CoolRunner II
-- Description: 	This is the cleaned-up version of the receiving interface.
--
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Output3 is
    Port ( DATA_IN : in   STD_LOGIC_VECTOR (8 downto 0);
           ACK  : 	in   STD_LOGIC;
           DAV  : 	in   STD_LOGIC;
           BSY  : 	out  STD_LOGIC;
           SPLO :		out  STD_LOGIC_VECTOR (6 downto 0));
end Output3;

architecture Behavioral of Output3 is
	signal NIBBLE			: STD_LOGIC_VECTOR(6 downto 0); 
	signal NIBBLE2			: STD_LOGIC_VECTOR(6 downto 0); 
	signal NACK 			: STD_LOGIC;
	signal NDAV 			: STD_LOGIC;
begin

SEND_NIBBLE : process(NDAV, NACK)
		variable SEND1 			: STD_LOGIC 						 := '0';
		variable SEND2				: STD_LOGIC 						 := '0';
		variable DATA_BUFFER  	: STD_LOGIC_VECTOR(8 downto 0); 
		variable NIBBLE_MASK		: STD_LOGIC_VECTOR(6 downto 0); 
	--	variable NIBBLE			: STD_LOGIC_0ECTOR(6 downto 0); 
		variable EOP				: STD_LOGIC;
		variable SEL				: STD_LOGIC;				-- Selector
		variable BSY_SET			: STD_LOGIC;
		variable BSY_CLEAR		: STD_LOGIC;
		variable DATA_NIBBLE		: STD_LOGIC_VECTOR(4 downto 0);
begin

--	BSY_SET		 := '0';
	--BSY_CLEAR	 := '0';


if NDAV'event then
	DATA_BUFFER 	:= DATA_IN; 			--Buffering data vector
	EOP				:= DATA_IN(8);
	BSY_SET		 	:= '1';	
	SEND1 			:= '1';
end if;


	if NACK'event then
	if SEL = '1' then
		SEND2 				:= '1';
		--BSY_CLEAR			:= '1';	
	else -- SEL = '0'
		BSY_CLEAR			:= '1';	-- BSY_STATUS is only cleared by receiving ack
	end if;
	end if;


	if BSY_CLEAR = '1' then
	BSY		 <= '0';
	BSY_CLEAR := '0';
	end if;

	if BSY_SET   = '1' then
	BSY		<= '1';
	BSY_SET	:= '0';
	end if;
	
	
	
	
	


if SEND1 = '1' or SEND2 = '1' then -- Sending was enabled

	if SEND1 = '1' then
						--Set BSY_STATUS
		if EOP = '1' then 
			SEL := '0';
			DATA_NIBBLE := "10000";
		else
			DATA_NIBBLE(4) := DATA_BUFFER(8);
			DATA_NIBBLE(3) := DATA_BUFFER(3);
			DATA_NIBBLE(2) := DATA_BUFFER(2);
			DATA_NIBBLE(1) := DATA_BUFFER(1);
			DATA_NIBBLE(0) := DATA_BUFFER(0);
			SEL := '1';
		end if;
			
			
		
	else --if SEND2 = '1' then
		--BSY_CLEAR	 	:= '1';
		DATA_NIBBLE(4) := DATA_BUFFER(8);
		DATA_NIBBLE(3) := DATA_BUFFER(7);
		DATA_NIBBLE(2) := DATA_BUFFER(6);
		DATA_NIBBLE(1) := DATA_BUFFER(5);
		DATA_NIBBLE(0) := DATA_BUFFER(4);
		SEL := '0';
		
					  
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
		
	--		NIBBLE_MASK := "1100000"; 
			SEND1	 := '0';
			SEND2	 := '0';
			NIBBLE <= NIBBLE xor NIBBLE_MASK;
	
			
end if; 





end process SEND_NIBBLE;


NIBBLE_UPDATE : process(NIBBLE)
begin
			
			if rising_edge(NIBBLE(0)) then
				if NIBBLE2(0) = '1' then NIBBLE2(0) <= '0';
				else NIBBLE2(0) <= '1';			
			end if;
			end if;
			
			if rising_edge(NIBBLE(1)) then
				if NIBBLE2(1) = '1' then NIBBLE2(1) <= '0';
				else NIBBLE2(1) <= '1';		
			end if;
			end if;	
			
			if rising_edge(NIBBLE(2)) then
				if NIBBLE2(2) = '1' then NIBBLE2(2) <= '0';
				else NIBBLE2(2) <= '1';		
			end if;
			end if;	
			
			if rising_edge(NIBBLE(3)) then
				if NIBBLE2(3) = '1' then NIBBLE2(3) <= '0';
				else NIBBLE2(3) <= '1';		
			end if;
			end if;	
			
			if rising_edge(NIBBLE(4)) then
				if NIBBLE2(4) = '1' then NIBBLE2(4) <= '0';
				else NIBBLE2(4) <= '1';		
			end if;
			end if;		
			
			if rising_edge(NIBBLE(5)) then
				if NIBBLE2(5) = '1' then NIBBLE2(5)  <= '0';
				else NIBBLE2(5)  <= '1';		
			end if;
			end if;		
			
			if rising_edge(NIBBLE(6)) then
				if NIBBLE2(6) = '1' then NIBBLE2(6) <= '0';
				else NIBBLE2(6) <= '1';		
			end if;		
			end if;		

end process NIBBLE_UPDATE;

process(NIBBLE2)
begin

		SPLO <= NIBBLE2;
		
end process;



ACK_INVERTER : process(ACK, NACK, DAV, NDAV, NIBBLE)
begin

 NACK <= not ACK;
 NDAV <= not DAV;

end process ACK_INVERTER;

end Behavioral;

