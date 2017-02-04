LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY bin_7seg IS
	PORT		
	(
		d_bin	: IN  STD_LOGIC_VECTOR( 3 downto 0);
		pnt	: IN  STD_LOGIC;
		ss	: OUT STD_LOGIC_VECTOR( 7 downto 0)
	);
END bin_7seg;
ARCHITECTURE RTL OF bin_7seg IS
BEGIN

WITH d_bin SELECT 
ss(6 downto 0)<= 	
	"0111111" WHEN "0000", -- 0
	"0000110" WHEN "0001", -- 1
	"1011011" WHEN "0010", -- 2
	"1001111" WHEN "0011", -- 3
	"1100110" WHEN "0100", -- 4
	"1101101" WHEN "0101", -- 5
	"1111101" WHEN "0110", -- 6
	"0000111" WHEN "0111", -- 7
	"1111111" WHEN "1000", -- 8 
	"1101111" WHEN "1001", -- 9
	"1110111" WHEN "1010", -- A
	"1111100" WHEN "1011", -- B
	"0111001" WHEN "1100", -- C
	"1011110" WHEN "1101", -- D
	"1111001" WHEN "1110", -- E
	"1110001" WHEN OTHERS; -- F
ss(7)<=pnt;
END;