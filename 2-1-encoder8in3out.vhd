-------------------------------------------------------------------------------
--
-- Title       : encoder8in3out
-- Design      : units
-- Author      : Mahmut Bulut
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : 2-1-encoder8in3out.vhd
-- Generated   : Sat Mar  9 19:28:50 2013
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
--{entity {encoder8in3out} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder8in3out is
	 port(
		 input : in std_logic_vector(7 downto 0);
		 output : out std_logic_vector(2 downto 0)
	     );
end encoder8in3out;

--}} End of automatically maintained section

architecture behavior of encoder8in3out is
begin
									 
	-- Use single fixed values for testing
	output <= "000" when input="00000001" else
			  "001" when input="00000010" else
			  "010" when input="00000100" else
			  "011" when input="00001000" else
			  "100" when input="00010000" else
			  "101" when input="00100000" else
			  "110" when input="01000000" else
			  "111" when input="10000000" else "ZZZ";
				  
end behavior;
