LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HalfSubractor IS
	PORT(
		a : in std_logic;
		b : in std_logic;
		diff : out std_logic;
		borr : out std_logic
	);
END HalfSubractor;

Architecture Struct of HalfSubractor is 
	Begin 
		diff <= a xor b;
		borr <= (NOT a) and b ;
	End Struct;