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
-- Description: 	This is the cleaned-up version of the transmitting interface.
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
	-- New signals
	signal DATA_BUFFER  	: STD_LOGIC_VECTOR(8 downto 0);  
	signal SEL				: STD_LOGIC;				-- Selector
	signal SEND1 			: STD_LOGIC;
	signal SEND2			: STD_LOGIC;
	signal SEND_CLEAR		: STD_LOGIC;
	signal SEND_EN			: STD_LOGIC;
	
begin


EVENT_CATCHER : process(DAV, ACK, SEND_CLEAR, SEL)
		variable BSY_SET			: STD_LOGIC;
		variable BSY_CLEAR		: STD_LOGIC;
begin



	if DAV'event then
		DATA_BUFFER 	<= DATA_IN; 			--Buffering data vector
		BSY_SET		 	:= '1';	
		
		
	--	if SEND2 = '0' then
			--SEND1 			<= '1';
			SEND1				<= not SEND2;
	--	end if;
		
		
	end if;


	if ACK'event then
		if SEL = '1' then
			--SEND2 <= not SEND1;
			SEND2 				<= '1';
		else 
			BSY_CLEAR			:= '1';	-- BSY_STATUS is only cleared by receiving ack
		end if;
	end if;

	if SEND_CLEAR = '1' then
		SEND1 <= '0';
		SEND2 <= '0';
	end if;


	if BSY_CLEAR = '1' then
		BSY		 <= '0';
		BSY_CLEAR := '0';
	end if;

	if BSY_SET   = '1' then
		BSY		<= '1';
		BSY_SET	:= '0';
	end if;
	

	

end process EVENT_CATCHER;





SEND_NIBBLE : process(SEND1, SEND2, SEND_CLEAR, SEND_EN)
		variable EOP				: STD_LOGIC;
		variable DATA_NIBBLE		: STD_LOGIC_VECTOR(4 downto 0);
		variable SEND_EN1			: STD_LOGIC;
		variable SEND_EN2			: STD_LOGIC;

begin


		EOP				:= DATA_IN(8);


	if SEND1 = '1' then
						--Set BSY_STATUS
		if EOP = '1' then 
			SEL <= '0';
			DATA_NIBBLE := "10000";
		else
			DATA_NIBBLE(4) := DATA_BUFFER(8);
			DATA_NIBBLE(3) := DATA_BUFFER(3);
			DATA_NIBBLE(2) := DATA_BUFFER(2);
			DATA_NIBBLE(1) := DATA_BUFFER(1);
			DATA_NIBBLE(0) := DATA_BUFFER(0);
			SEL <= '1';
		end if;
			
		
	elsif SEND2 = '1' then
		--BSY_CLEAR	 	:= '1';
			DATA_NIBBLE(4) := DATA_BUFFER(8);
			DATA_NIBBLE(3) := DATA_BUFFER(7);
			DATA_NIBBLE(2) := DATA_BUFFER(6);
			DATA_NIBBLE(1) := DATA_BUFFER(5);
			DATA_NIBBLE(0) := DATA_BUFFER(4);
			SEL <= '0';
	end if;
	
	

	if rising_edge(SEND_EN) then -- Sending was enabled
	
		ENCODER : case DATA_NIBBLE is
			when "00000" =>	 --Symbol 0
									NIBBLE(0) <= not NIBBLE(0);
									NIBBLE(4) <= not NIBBLE(4);
			when "00001" => 	--Symbol 1
									NIBBLE(1) <= not NIBBLE(1);
									NIBBLE(4) <= not NIBBLE(4);
			when "00010" =>	 --Symbol 2
									NIBBLE(2) <= not NIBBLE(2);
									NIBBLE(4) <= not NIBBLE(4);
			when "00011" => 	 --Symbol 3
									NIBBLE(3) <= not NIBBLE(3);
									NIBBLE(4) <= not NIBBLE(4);
			when "00100" =>	 --Symbol 4
									NIBBLE(0) <= not NIBBLE(0);
									NIBBLE(5) <= not NIBBLE(5);
			when "00101" => 	  --Symbol 5
									NIBBLE(1) <= not NIBBLE(1);
									NIBBLE(5) <= not NIBBLE(5);
			when "00110" => 	 --Symbol 6
									NIBBLE(2) <= not NIBBLE(2);
									NIBBLE(5) <= not NIBBLE(5);
			when "00111" =>	 --Symbol 7
									NIBBLE(3) <= not NIBBLE(3);
									NIBBLE(5) <= not NIBBLE(5);
			when "01000" =>	  --Symbol 8
									NIBBLE(0) <= not NIBBLE(0);
									NIBBLE(6) <= not NIBBLE(6);
			when "01001" =>	 --Symbol 9
									NIBBLE(1) <= not NIBBLE(1);
									NIBBLE(6) <= not NIBBLE(6);
			when "01010" =>  --Symbol 10
									NIBBLE(2) <= not NIBBLE(2);
									NIBBLE(6) <= not NIBBLE(6);
			when "01011" => 	--Symbol 11
									NIBBLE(3) <= not NIBBLE(3);
									NIBBLE(6) <= not NIBBLE(6);
			when "01100" => 	--Symbol 12
									NIBBLE(0) <= not NIBBLE(0);
									NIBBLE(1) <= not NIBBLE(1);
			when "01101" => 	--Symbol 13
									NIBBLE(1) <= not NIBBLE(1);
									NIBBLE(2) <= not NIBBLE(2);
			when "01110" => 	--Symbol 14
									NIBBLE(2) <= not NIBBLE(2);
									NIBBLE(3) <= not NIBBLE(3);
			when "01111" => 	 --Symbol 15
									NIBBLE(0) <= not NIBBLE(0);
									NIBBLE(3) <= not NIBBLE(3);
			when "10000" => 	--Symbol EOP
									NIBBLE(5) <= not NIBBLE(5);
									NIBBLE(6) <= not NIBBLE(6);
			when others  =>	--Actually error!    
									NIBBLE(5) <= not NIBBLE(5);
									NIBBLE(6) <= not NIBBLE(6);
		end case ENCODER;
		

		
		SEND_CLEAR <= '1';
		
end if; 

		if SEND_CLEAR = '1' then 
			SEND_CLEAR <= '0';	
		end if;


end process SEND_NIBBLE;










SEND_ENABLER	: process(SEND1, SEND2, SEND_CLEAR)
begin

 --  if SEND_CLEAR = '1' then 
--		SEND_EN <= '0';
--	else
 	SEND_EN <= SEND1 xor SEND2; -- Critical
 --end if;

end process SEND_ENABLER;




NIBBLE_OUT : process(NIBBLE)
begin
	--	if SPLO_RESET

		SPLO <= NIBBLE;
		
end process NIBBLE_OUT;

--
--
--ACK_INVERTER : process(ACK, NACK, DAV, NDAV, NIBBLE)
--begin
--
-- NACK <= not ACK;
-- NDAV <= not DAV;
--
--end process ACK_INVERTER;

end Behavioral;

