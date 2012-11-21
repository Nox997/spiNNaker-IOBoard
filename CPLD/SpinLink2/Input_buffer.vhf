--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : Input_buffer.vhf
-- /___/   /\     Timestamp : 09/07/2012 15:59:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Users/jt/Dropbox/D-Thesis/Cpld/SpinLink/Input_buffer.vhf -w C:/Users/jt/Dropbox/D-Thesis/Cpld/SpinLink/Input_buffer.sch
--Design Name: Input_buffer
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity XOR7_MXILINX_Input_buffer is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end XOR7_MXILINX_Input_buffer;

architecture BEHAVIORAL of XOR7_MXILINX_Input_buffer is
   attribute BOX_TYPE   : string ;
   signal I36 : std_logic;
   component XOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR4 : component is "BLACK_BOX";
   
begin
   I_36_89 : XOR4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_90 : XOR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR7_MXILINX_Input_buffer is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end OR7_MXILINX_Input_buffer;

architecture BEHAVIORAL of OR7_MXILINX_Input_buffer is
   attribute BOX_TYPE   : string ;
   signal I36 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   I_36_89 : OR4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_90 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD_MXILINX_Input_buffer is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end FD_MXILINX_Input_buffer;

architecture BEHAVIORAL of FD_MXILINX_Input_buffer is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_43 : GND
      port map (G=>XLXN_4);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>XLXN_4,
                D=>D,
                PRE=>XLXN_4,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Input_buffer is
   port ( DACK        : in    std_logic; 
          DACK_CLR    : in    std_logic; 
          LOAD        : in    std_logic; 
          SPIN_LINK_O : in    std_logic_vector (6 downto 0); 
          DACK_OUT    : out   std_logic; 
          NIBBLE_OR   : out   std_logic; 
          NIBBLE_OUT  : out   std_logic_vector (6 downto 0); 
          NIBBLE_XOR  : out   std_logic; 
          OK          : out   std_logic);
end Input_buffer;

architecture BEHAVIORAL of Input_buffer is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_6           : std_logic;
   signal XLXN_9           : std_logic;
   signal XLXN_23          : std_logic;
   signal XLXN_24          : std_logic;
   signal XLXN_25          : std_logic;
   signal XLXN_26          : std_logic;
   signal XLXN_28          : std_logic;
   signal XLXN_29          : std_logic;
   signal NIBBLE_XOR_DUMMY : std_logic;
   signal NIBBLE_OR_DUMMY  : std_logic;
   signal NIBBLE_OUT_DUMMY : std_logic_vector (6 downto 0);
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FD_MXILINX_Input_buffer
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component OR7_MXILINX_Input_buffer
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component XOR7_MXILINX_Input_buffer
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_64 : label is "XLXI_64_0";
   attribute HU_SET of XLXI_66 : label is "XLXI_66_1";
   attribute HU_SET of XLXI_67 : label is "XLXI_67_2";
   attribute HU_SET of XLXI_68 : label is "XLXI_68_3";
   attribute HU_SET of XLXI_69 : label is "XLXI_69_4";
   attribute HU_SET of XLXI_70 : label is "XLXI_70_5";
   attribute HU_SET of XLXI_71 : label is "XLXI_71_6";
   attribute HU_SET of XLXI_72 : label is "XLXI_72_7";
   attribute HU_SET of XLXI_77 : label is "XLXI_77_8";
   attribute HU_SET of XLXI_78 : label is "XLXI_78_9";
begin
   NIBBLE_OR <= NIBBLE_OR_DUMMY;
   NIBBLE_OUT(6 downto 0) <= NIBBLE_OUT_DUMMY(6 downto 0);
   NIBBLE_XOR <= NIBBLE_XOR_DUMMY;
   XLXI_20 : XOR2
      port map (I0=>XLXN_6,
                I1=>SPIN_LINK_O(0),
                O=>NIBBLE_OUT_DUMMY(0));
   
   XLXI_27 : XOR2
      port map (I0=>XLXN_9,
                I1=>SPIN_LINK_O(1),
                O=>NIBBLE_OUT_DUMMY(1));
   
   XLXI_28 : XOR2
      port map (I0=>XLXN_23,
                I1=>SPIN_LINK_O(2),
                O=>NIBBLE_OUT_DUMMY(2));
   
   XLXI_29 : XOR2
      port map (I0=>XLXN_24,
                I1=>SPIN_LINK_O(3),
                O=>NIBBLE_OUT_DUMMY(3));
   
   XLXI_30 : XOR2
      port map (I0=>XLXN_25,
                I1=>SPIN_LINK_O(4),
                O=>NIBBLE_OUT_DUMMY(4));
   
   XLXI_31 : XOR2
      port map (I0=>XLXN_26,
                I1=>SPIN_LINK_O(5),
                O=>NIBBLE_OUT_DUMMY(5));
   
   XLXI_32 : XOR2
      port map (I0=>XLXN_28,
                I1=>SPIN_LINK_O(6),
                O=>NIBBLE_OUT_DUMMY(6));
   
   XLXI_55 : XOR2
      port map (I0=>XLXN_29,
                I1=>DACK,
                O=>DACK_OUT);
   
   XLXI_64 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(0),
                Q=>XLXN_6);
   
   XLXI_66 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(2),
                Q=>XLXN_23);
   
   XLXI_67 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(3),
                Q=>XLXN_24);
   
   XLXI_68 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(4),
                Q=>XLXN_25);
   
   XLXI_69 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(5),
                Q=>XLXN_26);
   
   XLXI_70 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(6),
                Q=>XLXN_28);
   
   XLXI_71 : FD_MXILINX_Input_buffer
      port map (C=>LOAD,
                D=>SPIN_LINK_O(1),
                Q=>XLXN_9);
   
   XLXI_72 : FD_MXILINX_Input_buffer
      port map (C=>DACK_CLR,
                D=>DACK,
                Q=>XLXN_29);
   
   XLXI_77 : OR7_MXILINX_Input_buffer
      port map (I0=>NIBBLE_OUT_DUMMY(6),
                I1=>NIBBLE_OUT_DUMMY(5),
                I2=>NIBBLE_OUT_DUMMY(4),
                I3=>NIBBLE_OUT_DUMMY(3),
                I4=>NIBBLE_OUT_DUMMY(2),
                I5=>NIBBLE_OUT_DUMMY(1),
                I6=>NIBBLE_OUT_DUMMY(0),
                O=>NIBBLE_OR_DUMMY);
   
   XLXI_78 : XOR7_MXILINX_Input_buffer
      port map (I0=>NIBBLE_OUT_DUMMY(6),
                I1=>NIBBLE_OUT_DUMMY(5),
                I2=>NIBBLE_OUT_DUMMY(4),
                I3=>NIBBLE_OUT_DUMMY(3),
                I4=>NIBBLE_OUT_DUMMY(2),
                I5=>NIBBLE_OUT_DUMMY(1),
                I6=>NIBBLE_OUT_DUMMY(0),
                O=>NIBBLE_XOR_DUMMY);
   
   XLXI_80 : AND2B1
      port map (I0=>NIBBLE_XOR_DUMMY,
                I1=>NIBBLE_OR_DUMMY,
                O=>OK);
   
end BEHAVIORAL;


