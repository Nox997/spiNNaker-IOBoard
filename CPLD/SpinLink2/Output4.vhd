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
	signal DATA_BUFFER   : STD_LOGIC_VECTOR(8 downto 0);

	-- BSY stuff
	signal BSY_SET			: STD_LOGIC; --Setting Signal
	signal BSY_CLEAR		: STD_LOGIC; --Clearing signal
	signal BSY_INT			: STD_LOGIC; --Internal BSY signal

   signal SEL				: STD_LOGIC;
	signal SEND1			: STD_LOGIC;
	signal SEND2			: STD_LOGIC;
	signal SEND_CLEAR		: STD_LOGIC;
	signal EOP				: STD_LOGIC;
begin


NDAV_STUFF : process(NDAV, BSY_INT, SEND_CLEAR)

begin

	if NDAV'event then
		SEND1 		<= '1';
		EOP			<= DATA_IN(8); 
		DATA_BUFFER <= DATA_IN;
		BSY_SET		<= '1';
	end if;
	
	if BSY_INT = '1' then
		BSY_SET <= '0';
	end if;
	
	if SEND_CLEAR = '1' then
		SEND1 	<= '0';
	end if;

end process NDAV_STUFF;



BSY_STUFF : process(BSY_SET, BSY_CLEAR)
begin

	if BSY_SET  = '1' then
		BSY_INT <= '1';
		BSY	  <= '1';
	end if;

	if BSY_CLEAR = '1' then
		BSY_INT <= '0';
		BSY	  <= '0';
	end if;

end process BSY_STUFF;


NACK_STUFF : process(NACK, BSY_INT, SEND_CLEAR)
begin

	if NACK'event then
		case SEL is
			when '1'    => SEND2 	 <= '1';
			when others => BSY_CLEAR <= '1';
		end case;
	end if;
	
	
	if BSY_INT    = '0' then
		BSY_CLEAR <= '0';
	end if;

	if SEND_CLEAR = '1' then
		SEND2 	 <= '0';
	end if;
	
end process NACK_STUFF;





SEND_NIBBLE : process(SEND1, SEND2, SEND_CLEAR, DATA_BUFFER)
		variable NIBBLE_MASK		: STD_LOGIC_VECTOR(6 downto 0); 
		variable DATA_NIBBLE		: STD_LOGIC_VECTOR(4 downto 0);
begin

		if SEND1 = '1' then
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
		else if SEND2 = '1' then
				DATA_NIBBLE(4) := DATA_BUFFER(8);
				DATA_NIBBLE(3) := DATA_BUFFER(7);
				DATA_NIBBLE(2) := DATA_BUFFER(6);
				DATA_NIBBLE(1) := DATA_BUFFER(5);
				DATA_NIBBLE(0) := DATA_BUFFER(4);
				SEL <= '0';
		end if;


		if rising_edge(SEND1) or rising_edge(SEND2) then -- Sending was enabled

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
		
			NIBBLE 		 <= NIBBLE_MASK; --xor NIBBLE_MASK;
			SEND_CLEAR   <= '1';
		end if;
	
		if SEND1 = '0' and SEND2 = '0' then
			SEND_CLEAR 	<= '0';
		end if;
	
			
end if; 


end process SEND_NIBBLE;




NIBBLE0_UPDATE : process(NIBBLE(0))
begin
			if rising_edge(NIBBLE(0)) then
				NIBBLE2(0) <= not NIBBLE2(0);
			end if;
			
end process NIBBLE0_UPDATE ;

NIBBLE1_UPDATE : process(NIBBLE(1))
begin
			if rising_edge(NIBBLE(1)) then
				NIBBLE2(1) <= not NIBBLE2(1);
			end if;
			
end process NIBBLE1_UPDATE ;

NIBBLE2_UPDATE : process(NIBBLE(2))
begin
			if rising_edge(NIBBLE(2)) then
				NIBBLE2(2) <= not NIBBLE2(2);
			end if;
			
end process NIBBLE2_UPDATE ;

NIBBLE3_UPDATE : process(NIBBLE(3))
begin
			if rising_edge(NIBBLE(3)) then
				NIBBLE2(3) <= not NIBBLE2(3);
			end if;
			
end process NIBBLE3_UPDATE ;
NIBBLE4_UPDATE : process(NIBBLE(4))
begin
			if rising_edge(NIBBLE(4)) then
				NIBBLE2(4) <= not NIBBLE2(4);
			end if;
			
end process NIBBLE4_UPDATE ;

NIBBLE5_UPDATE : process(NIBBLE(5))
begin
			if rising_edge(NIBBLE(5)) then
				NIBBLE2(5) <= not NIBBLE2(5);
			end if;
			
end process NIBBLE5_UPDATE ;

NIBBLE6_UPDATE : process(NIBBLE(6))
begin
			if rising_edge(NIBBLE(6)) then
				NIBBLE2(6) <= not NIBBLE2(6);
			end if;
			
end process NIBBLE6_UPDATE ;







NIBBLE_OUT : process(NIBBLE)
begin

		SPLO <= NIBBLE;
		
end process NIBBLE_OUT;



ACK_INVERTER : process(ACK, NACK, DAV, NDAV)
begin

 NACK <= not ACK;
 NDAV <= not DAV;

end process ACK_INVERTER;

end Behavioral;

