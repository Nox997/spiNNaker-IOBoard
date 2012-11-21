--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.1
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 09/10/2012 13:52:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Users/jt/Dropbox/D-Thesis/Cpld/SpinLink/main.vhf -w C:/Users/jt/Dropbox/D-Thesis/Cpld/SpinLink/main.sch
--Design Name: main
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

entity main is
   port ( DATA_IN           : in    std_logic_vector (8 downto 0); 
          DATA_IN_AV        : in    std_logic; 
          DATA_O_ACK        : in    std_logic; 
          SPIN_LINK_IN_ACK  : in    std_logic; 
          SPIN_LINK_OUT     : in    std_logic_vector (6 downto 0); 
          DATA_IN_BSY       : out   std_logic; 
          DATA_OUT          : out   std_logic_vector (8 downto 0); 
          DATA_OUT_AV       : out   std_logic; 
          SPIN_LINK_IN      : out   std_logic_vector (6 downto 0); 
          SPIN_LINK_OUT_ACK : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   component Output3
      port ( ACK     : in    std_logic; 
             DAV     : in    std_logic; 
             DATA_IN : in    std_logic_vector (8 downto 0); 
             BSY     : out   std_logic; 
             SPLO    : out   std_logic_vector (6 downto 0));
   end component;
   
   component Input2
      port ( DACK     : in    std_logic; 
             SPLI     : in    std_logic_vector (6 downto 0); 
             DAV      : out   std_logic; 
             ACK      : out   std_logic; 
             DATA_OUT : out   std_logic_vector (8 downto 0));
   end component;
   
begin
   XLXI_20 : Output3
      port map (ACK=>SPIN_LINK_IN_ACK,
                DATA_IN(8 downto 0)=>DATA_IN(8 downto 0),
                DAV=>DATA_IN_AV,
                BSY=>DATA_IN_BSY,
                SPLO(6 downto 0)=>SPIN_LINK_IN(6 downto 0));
   
   XLXI_21 : Input2
      port map (DACK=>DATA_O_ACK,
                SPLI(6 downto 0)=>SPIN_LINK_OUT(6 downto 0),
                ACK=>SPIN_LINK_OUT_ACK,
                DATA_OUT(8 downto 0)=>DATA_OUT(8 downto 0),
                DAV=>DATA_OUT_AV);
   
end BEHAVIORAL;


