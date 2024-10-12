LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FullSubractor is 
	Port(
		a : in std_logic;
		b : in std_logic;
		bin : in std_logic;
		diff : out std_logic;
		borr : out std_logic
	);
	END FullSubractor;
	
Architecture Struct of FullSubractor is 
	Begin 
		diff <= (a xor b) xor bin;
		borr <= (((NOT a) and b) OR ((NOT a) and bin)) OR ( b and bin);
	End Struct;