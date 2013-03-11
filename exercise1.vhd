-------------------------------------------------------------------------------
--
-- Title       : box
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : exercise1.vhd
-- Generated   : Wed Mar  6 10:01:59 2013
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
--{entity {box} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity box is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : out STD_LOGIC
	     );
end box;

--}} End of automatically maintained section

architecture behavior of box is
begin

	-- enter your statements here --  
	d <= a NAND ( (NOT c) OR (a AND b) );

end behavior;
