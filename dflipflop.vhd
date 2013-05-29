-------------------------------------------------------------------------------
--
-- Title       : dff
-- Design      : examples
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : dflipflop.vhd
-- Generated   : Wed May 22 10:16:00 2013
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {dff} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dff is
	 port(
		 d : in std_logic_vector(7 downto 0);
		 clk : in STD_LOGIC;
		 reset : in STD_LOGIC;
		 set : in STD_LOGIC;
		 q : out std_logic_vector(7 downto 0)
	     );
end dff;

--}} End of automatically maintained section

architecture behavior of dff is

begin 

process(clk,reset,d,set)

begin 
	
if clk'event and clk='1' then
if reset='1' then
q <= "00000000";
elsif set='1' then
q <= d;
else
q <= d;
end if;
end if;
end process;	
end behavior;
