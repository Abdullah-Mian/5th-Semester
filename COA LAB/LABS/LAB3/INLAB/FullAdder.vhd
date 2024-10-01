LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    port (
        a : in  STD_LOGIC;
        b : out STD_LOGIC;
		  c : out STD_LOGIC;
		  sum : out STD_LOGIC;
		  carry : out STD_LOGIC
    );
end FullAdder;

architecture df of FullAdder is 
begin 
	sum <= a xor b xor c;
	carry <= (a and b) or (c and (a xor b) );
end FullAdder;