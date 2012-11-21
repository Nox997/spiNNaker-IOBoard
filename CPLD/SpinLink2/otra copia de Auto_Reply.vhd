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

entity Auto_Reply is
		    Port (ACK		: out STD_LOGIC;
			  DACK		: in  STD_LOGIC;
			  DAV 		: out STD_LOGIC;
			  NIBBLE_IN	: in  STD_LOGIC_VECTOR  (6 downto 0);
			  DATA_OUT	: out  STD_LOGIC_VECTOR (8 downto 0));
end Auto_Reply;

architecture Behavioral of Auto_Reply is

begin

NIBBLE_CHECK : process(NIBBLE_IN, DACK)
	variable NIBBLE_BUFFER : STD_LOGIC_VECTOR(6 downto 0);
	variable TRANSITION_BUFFER : STD_LOGIC_VECTOR(6 downto 0);
	variable DACK_BUFFER	: STD_LOGIC;
	variable DACK_STATUS	: STD_LOGIC;
	variable ERROR_STAT	: STD_LOGIC;
	variable WAIT_STAT	: STD_LOGIC;
	variable OK_STAT	: STD_LOGIC;
	variable DECODED_STAT	: STD_LOGIC;
	variable CLEAR_STATUS	: STD_LOGIC;
	variable SEL_STATUS	: STD_LOGIC;
	variable DAV_STATUS	: STD_LOGIC;
	variable BUFFERED_STAT	: STD_LOGIC;
	variable ACK_OUT	: STD_LOGIC;
	-- Data vectors
	variable DECODED_BUFF	: STD_LOGIC_VECTOR (4 downto 0);
	variable OUT_BUFFER	: STD_LOGIC_VECTOR (8 downto 0);
	
begin 

		--Reset stats
		ERROR_STAT 	:= '0';
		WAIT_STAT  	:= '0';
		OK_STAT	  	:= '0';
		DECODED_STAT 	:= '0';
		BUFFERED_STAT 	:= '0';
	
		DACK_STATUS 	:= DACK xor DACK_BUFFER;
	

	
		if DAV_STATUS = '1' then	--Make data available
					DATA_OUT  <= OUT_BUFFER;					
		elsif DAV_STATUS = '0' then
		
		TRANSITION_BUFFER := NIBBLE_BUFFER xor NIBBLE_IN;
				
		case TRANSITION_BUFFER is
			when "0010001" => OK_STAT := '1';   --Symbol 0
			when "0010010" => OK_STAT := '1';   --Symbol 1
			when "0010100" => OK_STAT := '1';   --Symbol 2
			when "0011000" => OK_STAT := '1';   --Symbol 3
			when "0100001" => OK_STAT := '1';   --Symbol 4
			when "0100010" => OK_STAT := '1';   --Symbol 5
			when "0100100" => OK_STAT := '1';   --Symbol 6
			when "0101000" => OK_STAT := '1';   --Symbol 7
			when "1000001" => OK_STAT := '1';   --Symbol 8
			when "1000010" => OK_STAT := '1';   --Symbol 9
			when "1000100" => OK_STAT := '1';   --Symbol 10
			when "1001000" => OK_STAT := '1';   --Symbol 11
			when "0000011" => OK_STAT := '1';   --Symbol 12
			when "0000110" => OK_STAT := '1';   --Symbol 13
			when "0001100" => OK_STAT := '1';   --Symbol 14
			when "0001001" => OK_STAT := '1';   --Symbol 15
			when "1100000" => OK_STAT := '1';   --Symbol EOP
			when "1000000" => WAIT_STAT := '1'; 
			when "0100000" => WAIT_STAT := '1'; 
			when "0010000" => WAIT_STAT := '1'; 
			when "0001000" => WAIT_STAT := '1'; 
			when "0000100" => WAIT_STAT := '1';
			when "0000010" => WAIT_STAT := '1';
			when "0000001" => WAIT_STAT := '1';
			when "0000000" => WAIT_STAT := '1';
			when others =>   ERROR_STAT := '1';
		end case;	

		DECODER : if OK_STAT = '1' then
		case TRANSITION_BUFFER is
			when "0010001" => DECODED_BUFF := "00000";   --Symbol 0
			when "0010010" => DECODED_BUFF := "00001";   --Symbol 1
			when "0010100" => DECODED_BUFF := "00010";   --Symbol 2
			when "0011000" => DECODED_BUFF := "00011";   --Symbol 3
			when "0100001" => DECODED_BUFF := "00100";   --Symbol 4
			when "0100010" => DECODED_BUFF := "00101";   --Symbol 5
			when "0100100" => DECODED_BUFF := "00110";   --Symbol 6
			when "0101000" => DECODED_BUFF := "00111";   --Symbol 7
			when "1000001" => DECODED_BUFF := "01000";   --Symbol 8
			when "1000010" => DECODED_BUFF := "01001";   --Symbol 9
			when "1000100" => DECODED_BUFF := "01010";   --Symbol 10
			when "1001000" => DECODED_BUFF := "01011";   --Symbol 11
			when "0000011" => DECODED_BUFF := "01100";   --Symbol 12
			when "0000110" => DECODED_BUFF := "01101";   --Symbol 13
			when "0001100" => DECODED_BUFF := "01110";   --Symbol 14
			when "0001001" => DECODED_BUFF := "01111";   --Symbol 15
			when "1100000" => DECODED_BUFF := "10000";   --Symbol EOP
			when others 	=> DECODED_BUFF := "10000";   --Actually error!    
		end case;

			DECODED_STAT := '1';

		else DECODED_STAT := '0';
		end if DECODER;

		DEMUX : if DECODED_STAT = '1' then
		
				OUT_BUFFER(8) := DECODED_BUFF(4);
		
			if DECODED_BUFF(4) = '1' then
				SEL_STATUS	  := '0';
				DAV_STATUS	  := '1';
				BUFFERED_STAT := '1';
			elsif SEL_STATUS = '0' then
				OUT_BUFFER(3) := DECODED_BUFF(3);
				OUT_BUFFER(2) := DECODED_BUFF(2);
				OUT_BUFFER(1) := DECODED_BUFF(1);
				OUT_BUFFER(0) := DECODED_BUFF(0);
				SEL_STATUS 	  := '1';
				DAV_STATUS	  := '0';
				BUFFERED_STAT := '1';
			elsif SEL_STATUS = '1' then
				OUT_BUFFER(7) := DECODED_BUFF(3);
				OUT_BUFFER(6) := DECODED_BUFF(2);
				OUT_BUFFER(5) := DECODED_BUFF(1);
				OUT_BUFFER(4) := DECODED_BUFF(0);
				BUFFERED_STAT := '1';
				SEL_STATUS 	  := '0';
				DAV_STATUS    := '1';
			else 
				BUFFERED_STAT := '0';
			end if;
		else  BUFFERED_STAT := '0';	
		end if DEMUX;
end if;


		ACKNOWLEDGEMENT : if (BUFFERED_STAT = '1' and DAV_STATUS = '0') or (ERROR_STAT = '1') or (DACK_STATUS = '1') then
				ACK_OUT := ACK_OUT xor '1';
		end if ACKNOWLEDGEMENT;
		
		if DACK_STATUS = '1' then 
			DACK_BUFFER := DACK;		
		end if;
		
		if ERROR_STAT = '1' or BUFFERED_STAT = '1' then 
			NIBBLE_BUFFER := NIBBLE_IN;
		end if;
		
			DAV_STATUS := DAV_STATUS and (not(DACK_STATUS));
			DAV	<= DAV_STATUS;	
			ACK 	<= ACK_OUT;
	
end process NIBBLE_CHECK;

end Behavioral;

