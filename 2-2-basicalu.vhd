-------------------------------------------------------------------------------
--
-- Title       : basicalu
-- Design      : units
-- Author      : Mahmut Bulut
-- Company     : UM FERI
--
-------------------------------------------------------------------------------
--
-- File        : 2-2-basicalu.vhd
-- Generated   : Mon Mar 11 04:19:32 2013
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
--{entity {basicalu} architecture {behavior}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
-- for use of operands
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

entity basicalu is
	 port(
		 cin : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(7 downto 0);
		 B : in STD_LOGIC_VECTOR(7 downto 0);
		 sel : in STD_LOGIC_VECTOR(3 downto 0);
		 y : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end basicalu;

--}} End of automatically maintained section

architecture behavior of basicalu is   

signal ao, lo : STD_LOGIC_VECTOR(7 downto 0);

begin

	-- cin: clock in
	-- A, B: data in vector
	-- sel: operator selection
	-- y: basic output 
	
	-- ao: arithmetic unit output for mux
	-- lo: logical unit output for mux
	
	-- arithmetic unit signal behavior	
	with sel(2 downto 0) select
		ao <= A when "000" ,
			A+1 when "001" ,
			A-1 when "010" ,
			b when "011" ,
			b+1 when "100" ,
			b-1 when "101" ,
			A+b when "110" ,
			A+b+cin when others;
				
	-- logical unit signal behavior
	with sel(2 downto 0) select
		lo <= not A when "000" ,
			not b when "001" ,
			A and b when "010" ,
			A or b when "011" ,
			A nor b when "100" ,
			A nand b when "101" ,
			A xor b when "110" ,
			A xnor b when others;
	 
	-- mux signal behavior
	with sel(3) select
		y <= ao when '0' ,
			 lo when others;

end behavior;
