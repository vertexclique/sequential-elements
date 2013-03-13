-------------------------------------------------------------------------------
--
-- Title       : rom
-- Design      : exercise1
-- Author      : UM FERI
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : 2-4-rom.vhd
-- Generated   : Wed Mar 13 10:22:02 2013
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
--{entity {rom} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity rom is
   port(
		 address : in INTEGER range 0 to 7;
		 dataout : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end rom;

--}} End of automatically maintained section

architecture behavior of rom is	 

-- 8x8 array
TYPE array64 IS ARRAY (0 TO 7) OF std_logic_vector (7 DOWNTO 0);

-- array fill
CONSTANT memory: array64 := (
"00000000",
"00000010",
"00000100",
"00001000",
"00010000",
"00100000",
"01000000",
"10000000");

begin

	-- rom behavior
	dataout <= memory(address);
	

end behavior;
