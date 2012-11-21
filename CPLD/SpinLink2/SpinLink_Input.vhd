----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:08 08/13/2012 
-- Design Name: 
-- Module Name:    SpinLink_Input - Behavioral 
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

entity SpinLink_Input is
    Port ( SPL_IN : in  STD_LOGIC_VECTOR (6 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (8 downto 0);
			  DATA_AV  : out STD_LOGIC;
           SPL_ACK : out  STD_LOGIC;
           DATA_ACK : in  STD_LOGIC);
end SpinLink_Input;

architecture Behavioral of SpinLink_Input is


	
begin

			MAIN_CHECK : process(SPL_IN, DATA_ACK)
			
			variable NIBBLE_BUFFER 		:	STD_LOGIC_VECTOR(6 downto 0);
			variable DATA_OUT_BUFFER	:  STD_LOGIC_VECTOR(8 downto 0);
			variable NIBBLE_TRANSITION :  STD_LOGIC_VECTOR(6 downto 0);
			variable DAV					: 	STD_LOGIC;
			variable SEL					:  STD_LOGIC;
			variable ACK_BUFFER			:	STD_LOGIC;
			variable DACK_STATUS			:  STD_LOGIC;
			variable DACK_BUFFER		   :	STD_LOGIC;
			variable ACK_STATUS			:  STD_LOGIC;
			variable DECODED_NIBBLE		:  STD_LOGIC_VECTOR(3 downto 0);
			variable LOW_NIBBLE			:  STD_LOGIC_VECTOR(3 downto 0);
			variable HIGH_NIBBLE			:  STD_LOGIC_VECTOR(3 downto 0);
			variable EOP					:  STD_LOGIC;
			variable OK_STATUS		   :  STD_LOGIC := '0';
			variable ERROR_STATUS		:  STD_LOGIC := '0';
			
			begin
			
					
			
			
				DACK_STATUS := DATA_ACK xor DACK_BUFFER;
			
				if DAV = '0' then
			
				NIBBLE_TRANSITION := NIBBLE_BUFFER xor SPL_IN;
			
					case NIBBLE_TRANSITION is
						when "0010001" => OK_STATUS := '1';   --Symbol 0
						when "0010010" => OK_STATUS := '1';   --Symbol 1
						when "0010100" => OK_STATUS := '1';   --Symbol 2
						when "0011000" => OK_STATUS := '1';   --Symbol 3
						when "0100001" => OK_STATUS := '1';   --Symbol 4
						when "0100010" => OK_STATUS := '1';   --Symbol 5
						when "0100100" => OK_STATUS := '1';   --Symbol 6
						when "0101000" => OK_STATUS := '1';   --Symbol 7
						when "1000001" => OK_STATUS := '1';   --Symbol 8
						when "1000010" => OK_STATUS := '1';   --Symbol 9
						when "1000100" => OK_STATUS := '1';   --Symbol 10
						when "1001000" => OK_STATUS := '1';   --Symbol 11
						when "0000011" => OK_STATUS := '1';   --Symbol 12
						when "0000110" => OK_STATUS := '1';   --Symbol 13
						when "0001100" => OK_STATUS := '1';   --Symbol 14
						when "0001001" => OK_STATUS := '1';   --Symbol 15
						when "1100000" => OK_STATUS := '1';   --Symbol EOP
						when "1000000" => null; 
						when "0100000" => null; 
						when "0010000" => null; 
						when "0001000" => null; 
						when "0000100" => null;
						when "0000010" => null;
						when "0000001" => null;
						when "0000000" => null;
				when others =>   ERROR_STATUS := '1';
				end case;	

			
			DECODER : if OK_STATUS = '1' and ERROR_STATUS = '0' then
			
				EOP := '0';
		
			case NIBBLE_TRANSITION is
				when "0010001" => DECODED_NIBBLE := "0000";   --Symbol 0
				when "0010010" => DECODED_NIBBLE := "0001";   --Symbol 1
				when "0010100" => DECODED_NIBBLE := "0010";   --Symbol 2
				when "0011000" => DECODED_NIBBLE := "0011";   --Symbol 3
				when "0100001" => DECODED_NIBBLE := "0100";   --Symbol 4
				when "0100010" => DECODED_NIBBLE := "0101";   --Symbol 5
				when "0100100" => DECODED_NIBBLE := "0110";   --Symbol 6
				when "0101000" => DECODED_NIBBLE := "0111";   --Symbol 7
				when "1000001" => DECODED_NIBBLE := "1000";   --Symbol 8
				when "1000010" => DECODED_NIBBLE := "1001";   --Symbol 9
				when "1000100" => DECODED_NIBBLE := "1010";   --Symbol 10
				when "1001000" => DECODED_NIBBLE := "1011";   --Symbol 11
				when "0000011" => DECODED_NIBBLE := "1100";   --Symbol 12
				when "0000110" => DECODED_NIBBLE := "1101";   --Symbol 13
				when "0001100" => DECODED_NIBBLE := "1110";   --Symbol 14
				when "0001001" => DECODED_NIBBLE := "1111";   --Symbol 15
				when "1100000" => EOP := '1';					     --Symbol EOP
				when others 	=> null;   --Actually error!    
			end case;
				
			DEMUX : if EOP = '1' then
							LOW_NIBBLE	:= "0000";
							HIGH_NIBBLE := "0000";
							SEL := '0';
							DAV := '1';
						elsif SEL = '0' then
							LOW_NIBBLE	:= DECODED_NIBBLE;
							--HIGH_NIBBLE := "0000";
							SEL := '1';
							DAV := '0'; -- Not necessary
						elsif SEL = '1' then
							HIGH_NIBBLE	:= DECODED_NIBBLE;
							SEL := '0';
							DAV := '1';
						else null;
			
				
					DATA_OUT_BUFFER(8) := EOP;
					DATA_OUT_BUFFER(7) := HIGH_NIBBLE(3);
					DATA_OUT_BUFFER(6) := HIGH_NIBBLE(2);
					DATA_OUT_BUFFER(5) := HIGH_NIBBLE(1);
					DATA_OUT_BUFFER(4) := HIGH_NIBBLE(0);
					DATA_OUT_BUFFER(3) := LOW_NIBBLE(3);
					DATA_OUT_BUFFER(2) := LOW_NIBBLE(2);
					DATA_OUT_BUFFER(1) := LOW_NIBBLE(1);
					DATA_OUT_BUFFER(0) := LOW_NIBBLE(0);
					
			end if DEMUX;
			end if DECODER;
			else
			

			end if;
			

			ACKNOWLEDGEMENT : if (OK_STATUS = '1' and DAV = '0') or DACK_STATUS = '1' then 
				ACK_STATUS 		:= ACK_STATUS xor '1';
				NIBBLE_BUFFER	:= SPL_IN;
				OK_STATUS    := '0';
				ERROR_STATUS := '0';
			end if ACKNOWLEDGEMENT;
			
			if DACK_STATUS = '1' then
				DAV := '0';
				SEL := '0';
				DACK_BUFFER := DATA_ACK;
				
			end if;
			
							
			
			-- OUTPUT End Declarations
			DATA_OUT <= DATA_OUT_BUFFER;
			DATA_AV  <= DAV;
			SPL_ACK	<= ACK_STATUS;
		
			
			end process MAIN_CHECK;
			





end Behavioral;

