LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    port (
        a : in  STD_LOGIC;
        b : out STD_LOGIC;
		  s : out STD_LOGIC;
		  c : out STD_LOGIC
    );
end HalfAdder;

architecture df of HalfAdder is 
begin 
	s <= a xor b;
	c <= a and b;
end HalfAdder;