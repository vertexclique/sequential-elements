-------------------------------------------------------------------------------
--
-- Title       : box
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : exercise5.vhd
-- Generated   : Wed Mar  6 11:44:04 2013
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
		 a : in STD_LOGIC_VECTOR(7 downto 0);
		 b : in STD_LOGIC_VECTOR(7 downto 0);
		 sel : in STD_LOGIC_VECTOR(1 downto 0);
		 c : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end box;

--}} End of automatically maintained section

architecture behavior of box is
begin

	PROCESS (a, b, sel)
	BEGIN
		IF(sel = "00") THEN
			c <= "00000000";
		ELSIF(sel = "01") THEN
			c <= a;
		ELSIF(sel = "10") THEN
			c <= b;
		ELSIF(sel = "11") THEN
			c <= "ZZZZZZZZ";
		END IF;
	END PROCESS;

end behavior;
