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
       	  DAV			: out STD_LOGIC;
			  DACK		: in  STD_LOGIC;
			  NIBBLE_IN : in  STD_LOGIC_VECTOR (6 downto 0);
			  DATA_OUT  : out STD_LOGIC_VECTOR (8 downto 0);
			  NIBBLE_CLEAR :out STD_LOGIC;
			  DACK_CLEAR : out STD_LOGIC);
end Auto_Reply;

architecture Behavioral of Auto_Reply is
	
	signal NIBBLE_BUFFER		 : STD_LOGIC_VECTOR(6 downto 0);
	signal DACK_BUFFER   	 : STD_LOGIC;
	signal DAV_INT		 		 : STD_LOGIC;
	signal ACK_INT		  		 : STD_LOGIC;
	signal ACK_BUFF 	  		 : STD_LOGIC;
	signal DATA_BUFFER   	 : STD_LOGIC_VECTOR(8 downto 0);
	signal DECODED_BUFFER 	 : STD_LOGIC_VECTOR(4 downto 0);
	signal NIBBLE_OK     	 : STD_LOGIC;
	signal DECODED_OK			 : STD_LOGIC;
	signal NIBBLE_ERROR		 : STD_LOGIC;
	signal DACK_CLEAR_INT 	 : STD_LOGIC;
	signal NIBBLE_CLEAR_INT  : STD_LOGIC; -- Internal nibble clear
	signal BUFFER_OK			 : STD_LOGIC;
	signal DATA_OUT_OK		 : STD_LOGIC;
	signal ACK_OK				 : STD_LOGIC;
	signal SEL_OK				 : STD_LOGIC;
	--signal DA

begin

NIBBLE_CHECK : process(DACK, DAV_INT, BUFFER_OK, NIBBLE_ERROR)


	
	--	variable TRANSITION_BUFFER : STD_LOGIC_VECTOR(6 downto 0);
	--	variable DACK_BUFFER : STD_LOGIC;
		variable DACK_STATUS : STD_LOGIC;
		variable ERROR_STAT : STD_LOGIC;
	--	variable WAIT_STAT  : STD_LOGIC;
		variable OK_STAT    : STD_LOGIC;
	--	variable DECODED_STAT : STD_LOGIC;
		variable CLEAR_STATUS : STD_LOGIC;
		variable SEL_STATUS 	 : STD_LOGIC;
		variable DAV_STATUS   : STD_LOGIC;
		variable BUFFERED_STAT : STD_LOGIC := '0';
		variable ACK_STAT 	  : STD_LOGIC;

	-- Data vectors
		variable DECODED_BUFF : STD_LOGIC_VECTOR (4 downto 0);
		variable OUT_BUFFER   : STD_LOGIC_VECTOR (8 downto 0);
	
begin 

		DACK_STATUS := DACK;
		OK_STAT		:= NIBBLE_OK;
		ERROR_STAT	:= NIBBLE_ERROR;
		DAV_STATUS 	:= DAV_INT;
		SEL_STATUS  := SEL_OK;
	--	BUFFERED_STAT := '0';
	
		ACKNOWLEDGEMENT : if (DACK_STATUS = '1' and DAV_STATUS = '1') then
				ACK_STAT := '1';
		else										
				ACK_STAT := '0';			
		end if ACKNOWLEDGEMENT;			
		
		
		if rising_edge(BUFFER_OK) then
		-- if DAV_STATUS = '0' and DACK_STATUS = '0' and (OK_STAT = '1') then
		-- DEMUX : if (OK_STAT = '1') then 

			if DECODED_BUFFER(4) = '1' then -- or ERROR_STAT = '1' then 
				OUT_BUFFER    := "100000000";
				SEL_STATUS 	  := '0';
				DAV_STATUS    := '1';
			else	
				OUT_BUFFER(8) := '0';
				OUT_BUFFER(7) := DATA_BUFFER(3);
				OUT_BUFFER(6) := DATA_BUFFER(2);
				OUT_BUFFER(5) := DATA_BUFFER(1);
				OUT_BUFFER(4) := DATA_BUFFER(0);
				OUT_BUFFER(3) := DECODED_BUFFER(3);
				OUT_BUFFER(2) := DECODED_BUFFER(2);
				OUT_BUFFER(1) := DECODED_BUFFER(1);
				OUT_BUFFER(0) := DECODED_BUFFER(0);	
				
				if SEL_STATUS = '0' then
						SEL_STATUS := '1';
						DAV_STATUS := '1';
				else -- SEL_STATUS = '1' then
						SEL_STATUS := '0';
						DAV_STATUS := '1';
				end if;
				--DAV_STATUS 	  := '1';
			end if;
			
				
				BUFFERED_STAT := '1';

	end if;
		
	
	
		
		
		if DACK_STATUS = '1' then
				DACK_CLEAR_INT		<= '1';
				DAV_STATUS			:= '0';
			else DACK_CLEAR_INT	<= '0';
		end if;		
	
			DATA_OUT_OK <= BUFFERED_STAT;
			
			if BUFFERED_STAT = '1' then BUFFERED_STAT := '0';  end if;
		
		   
			SEL_OK				<= SEL_STATUS;
		 	ACK_INT 				<= ACK_STAT;
			DATA_BUFFER 		<= OUT_BUFFER;
			DAV_INT				<= DAV_STATUS;


	
end process NIBBLE_CHECK;






INTERNAL_ACK_BUFFER : process(ACK_OK, ACK_BUFF) --Actually the ack-system
	
	variable ACK_BUFFER : STD_LOGIC := '0';
	variable ACK_STATUS : STD_LOGIC;
	variable NIBBLE_CLEAR_STATUS : STD_LOGIC;
	
begin
		ACK_STATUS := '0';
		ACK_BUFFER := ACK_BUFF;
		
				
		if rising_edge(ACK_OK) then 
			
			if ACK_BUFFER = '1' then
				ACK_BUFFER   := '0';
			else 
				ACK_BUFFER   := '1';
			end if;
		end if;

		ACK_BUFF 	 <= ACK_BUFFER;
		ACK	  	    <= ACK_BUFFER;

end process INTERNAL_ACK_BUFFER;



INTERNAL_STATE_BUFFER : process(DAV_INT)
begin
		
		if DAV_INT = '1' then	--no rising edge!

		DATA_OUT <= DATA_BUFFER;
		
		end if;
		
		DAV 		<= DAV_INT;
	
		
end process INTERNAL_STATE_BUFFER;


DACK_STATUS_MANAGER : process(DACK, DACK_CLEAR_INT)

	variable DACK_CLEAR_STATUS : STD_LOGIC;

begin
		DACK_CLEAR_STATUS := DACK_CLEAR_INT;

		if DACK = '0' then 
			DACK_CLEAR_STATUS := '0';
		elsif DACK_CLEAR_INT = '1' and DACK = '1' then
			DACK_CLEAR_STATUS := '1';
		end if;	
			
		DACK_CLEAR <= DACK_CLEAR_STATUS;

end process DACK_STATUS_MANAGER;

-- NIBBBLE_VALIDATOR process. 
-- Proceeds to decode the nibble_in signal
NIBBLE_VALIDATOR : process(NIBBLE_IN)	--NIBBLE VALIDATOR AND DECODER LOGIC

	variable DECODED_STAT	: STD_LOGIC := '0';
--	variable NIBBLE_VAR 		: STD_LOGIC_VECTOR(6 downto 0);
	variable DECODED_NIBBLE : STD_LOGIC_VECTOR(4 downto 0);
	
begin

	--	DECODED_NIBBLE := DECODED_BUFFER;

	if NIBBLE_IN'event then

		case NIBBLE_IN  is
			when "0010001" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00000";   --Symbol 0
			when "0010010" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00001";   --Symbol 1
			when "0010100" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00010";   --Symbol 2
			when "0011000" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00011";   --Symbol 3
			when "0100001" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00100";   --Symbol 4
			when "0100010" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00101";   --Symbol 5
			when "0100100" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00110";   --Symbol 6
			when "0101000" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "00111";   --Symbol 7
			when "1000001" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01000";   --Symbol 8
			when "1000010" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01001";   --Symbol 9
			when "1000100" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01010";   --Symbol 10
			when "1001000" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01011";   --Symbol 11
			when "0000011" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01100";   --Symbol 12
			when "0000110" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01101";   --Symbol 13
			when "0001100" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01110";   --Symbol 14
			when "0001001" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "01111";   --Symbol 15
			when "1100000" => DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "10000";   --Symbol EoP
			when "1000000" => DECODED_STAT	:= '0';  
			when "0100000" => DECODED_STAT	:= '0';  
			when "0010000" => DECODED_STAT	:= '0';  
			when "0001000" => DECODED_STAT	:= '0';  
			when "0000100" => DECODED_STAT	:= '0';  
			when "0000010" => DECODED_STAT	:= '0';  
			when "0000001" => DECODED_STAT	:= '0';  
			when "0000000" => DECODED_STAT	:= '0';  
			when others =>    DECODED_STAT	:= '1';  
									DECODED_NIBBLE := "10000";   --Symbol EoP
		end case;	

		DECODED_BUFFER <= DECODED_NIBBLE;
		DECODED_OK	   <= DECODED_STAT;
	end if;


end process;

--Signal generators

BUFFER_OK_SIGNAL : process(DAV_INT, DACK, DECODED_OK)

begin

if (DAV_INT = '0') and (DACK = '0') and (DECODED_OK = '1') and (NIBBLE_CLEAR_INT = '0') then
	BUFFER_OK <= '1';
else BUFFER_OK <= '0';
end if;

end process BUFFER_OK_SIGNAL;

ACK_OK_SIGNAL : process(ACK_INT, NIBBLE_ERROR, DATA_OUT_OK, DAV_INT)
begin

if (ACK_INT = '1') or (NIBBLE_ERROR = '1') then
	  ACK_OK <= '1';
else ACK_OK <= '0';
end if;	

NIBBLE_CLEAR 		<= ACK_OK;
NIBBLE_CLEAR_INT  <= ACK_OK;

end process ACK_OK_SIGNAL;


end Behavioral;

