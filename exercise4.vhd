-------------------------------------------------------------------------------
--
-- Title       : box
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : exercise4.vhd
-- Generated   : Wed Mar  6 11:28:20 2013
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
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 d : in STD_LOGIC;
		 sel1 : in STD_LOGIC_VECTOR(1 downto 0);
		 y : out STD_LOGIC
	     );
end box;

--}} End of automatically maintained section

architecture behavior of box is
begin

	PROCESS (a, b, c, d, sel1)
	BEGIN
		IF(sel1 = "00") THEN
			y <= a;
		ELSIF(sel1 = "01") THEN
			y <= b;
		ELSIF(sel1 = "10") THEN
			y <= c;
		ELSIF(sel1 = "11") THEN
			y <= d;
		END IF;
	END PROCESS;
end behavior;
