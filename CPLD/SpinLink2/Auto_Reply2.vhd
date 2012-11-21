----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Francisco Llobet B.
-- 
-- Create Date:    17:48:58 08/08/2012 
-- Design Name: 	Control Logic for the SpiNNaker SpinLink receiver module
-- Module Name:    Auto_Reply - Behavioral 
-- Project Name: 
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
    Port ( ACK			: out STD_LOGIC;
           CLR			: out STD_LOGIC;
			  CLR_IN		: in	STD_LOGIC;
			  DAV			: out STD_LOGIC;
			  DACK		: in  STD_LOGIC;
			  NIBBLE_IN : in  STD_LOGIC_VECTOR  (6 downto 0);
			  DATA_OUT  : out  STD_LOGIC_VECTOR (8 downto 0));
end Auto_Reply;

architecture Behavioral of Auto_Reply is
		signal BUFFERING_SIGNAL : STD_LOGIC;
		signal DAV_SIGNAL : STD_LOGIC;
		signal DACK_SIGNAL : STD_LOGIC;
		signal CLEAR_DACK	: STD_LOGIC;
		signal OUT_BUFFER   : STD_LOGIC_VECTOR (8 downto 0);
		signal ACK_SIGNAL : STD_LOGIC;
		signal CLEAR_NIBBLE : STD_LOGIC;
		signal TRANSITION_BUFFER : STD_LOGIC_VECTOR(6 downto 0);

		--signal 

begin

NIBBLE_CHECK : process(TRANSITION_BUFFER, DACK)
	variable NIBBLE_BUFFER : STD_LOGIC_VECTOR(6 downto 0);
	--variable TRANSITION_BUFFER : STD_LOGIC_VECTOR(6 downto 0);
	variable DACK_BUFFER : STD_LOGIC;
	variable DACK_STATUS : STD_LOGIC;
	variable ERROR_STAT : STD_LOGIC;
	variable WAIT_STAT  : STD_LOGIC;
	variable OK_STAT    : STD_LOGIC;
	variable DECODED_STAT : STD_LOGIC;
	variable CLEAR_STATUS : STD_LOGIC;
	variable SEL_STATUS 	 : STD_LOGIC;
	variable DAV_STATUS   : STD_LOGIC;
	variable BUFFERED_STAT : STD_LOGIC;
	variable ACK_OUT  	  : STD_LOGIC;
	-- Data vectors
	variable DECODED_BUFF : STD_LOGIC_VECTOR (4 downto 0);
	--variable OUT_BUFFER   : STD_LOGIC_VECTOR (8 downto 0);
	
begin 

		--Reset stats
		ERROR_STAT 		:= '0';
		OK_STAT	  		:= '0';
		DECODED_STAT 	:= '0';
		BUFFERED_STAT 	:= '0';
	
		DACK_STATUS 		:= DACK xor DACK_BUFFER;
	

	
		if DAV_STATUS = '1' then	--Make data available
				
		elsif DAV_STATUS = '0' then
		
								
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
			when "1000000" => null; 
			when "0100000" => null; 
			when "0010000" => null; 
			when "0001000" => null; 
			when "0000100" => null;
			when "0000010" => null;
			when "0000001" => null;
			when "0000000" => null;
			when others =>   ERROR_STAT := '1';
		end case;	

		DECODER : if OK_STAT = '1' then						-- Decoder and Demuxer
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
		
				OUT_BUFFER(8) <= DECODED_BUFF(4);
		
			if DECODED_BUFF(4) = '1' then
				OUT_BUFFER	  <= "100000000";
				SEL_STATUS    := '0';
				DAV_STATUS 	  := '1';
				BUFFERED_STAT := '1';
			elsif SEL_STATUS = '0' then
				OUT_BUFFER(3) <= DECODED_BUFF(3);
				OUT_BUFFER(2) <= DECODED_BUFF(2);
				OUT_BUFFER(1) <= DECODED_BUFF(1);
				OUT_BUFFER(0) <= DECODED_BUFF(0);
				SEL_STATUS 	  := '1';
				DAV_STATUS	  := '0';
				BUFFERED_STAT := '1';
			elsif SEL_STATUS = '1' then
			   OUT_BUFFER(8) <= '0';
				OUT_BUFFER(7) <= DECODED_BUFF(3);
				OUT_BUFFER(6) <= DECODED_BUFF(2);
				OUT_BUFFER(5) <= DECODED_BUFF(1);
				OUT_BUFFER(4) <= DECODED_BUFF(0);
				BUFFERED_STAT := '1';
				SEL_STATUS 	  := '0';
				DAV_STATUS    := '1';
			else 
				BUFFERED_STAT := '0';
			end if;
		else  BUFFERED_STAT := '0';	
		end if DECODER;
		end if;


		ACKNOWLEDGEMENT : if (BUFFERED_STAT = '1' and DAV_STATUS = '0') or (DACK_STATUS = '1') then
				ACK_OUT := '1';
				else
				ACK_OUT := '0';
		end if ACKNOWLEDGEMENT;
		
		if DACK_STATUS = '1' then 
			DAV_STATUS  := '0';
			DACK_BUFFER := DACK;
		end if;
		
		if ACK_OUT = '1' then 
			CLEAR_NIBBLE <= '1';
		else
		   CLEAR_NIBBLE <= '0';
		end if;
		
		--	DAV_STATUS := DAV_STATUS and (not(DACK_SIGNAL));
			BUFFERING_SIGNAL <= BUFFERED_STAT;			
			DAV_SIGNAL		  <= DAV_STATUS; --DAV_STATUS;	
			ACK_SIGNAL		  <= ACK_OUT;
	
end process NIBBLE_CHECK;


DATA_OUT_BUFFER : process(BUFFERING_SIGNAL, DAV_SIGNAL)

begin
		if BUFFERING_SIGNAL = '1' and DAV_SIGNAL = '1' then
		
			DATA_OUT <= OUT_BUFFER;
			
		end if;

	
		DAV <= DAV_SIGNAL;

end process DATA_OUT_BUFFER;


ACKNOWLEDGEMENT: process(ACK_SIGNAL)
	variable ACK_STATUS : STD_LOGIC;

begin

if rising_edge(ACK_SIGNAL) then
	ACK_STATUS := ACK_STATUS xor '1';
end if;

	ACK <= ACK_STATUS;

end process ACKNOWLEDGEMENT;

--process(DACK, CLEAR_DACK)
--	variable DACK_STATUS : STD_LOGIC;
--begin

--	DACK_STATUS := '0';

--if CLEAR_DACK = '1' then
--	DACK_STATUS := '0';
--if DACK'event then
--	DACK_STATUS := '1';
--end if;
	

--	DACK_SIGNAL <= DACK_STATUS;
--end process;
process(CLEAR_NIBBLE, NIBBLE_IN)
	variable NIBBLE_BUFFER : STD_LOGIC_VECTOR(6 downto 0);

begin

	if rising_edge(CLEAR_NIBBLE) then
		NIBBLE_BUFFER := NIBBLE_IN;
	end if;
	
	
	TRANSITION_BUFFER <= NIBBLE_BUFFER xor NIBBLE_IN;

end process;



end Behavioral;

