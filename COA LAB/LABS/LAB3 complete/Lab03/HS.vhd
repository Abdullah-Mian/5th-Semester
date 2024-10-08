library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HS is
    Port (
        a : in  STD_LOGIC;     -- Minuend
        b : in  STD_LOGIC;     -- Subtrahend
        d : out  STD_LOGIC; -- Difference output
        bout : out  STD_LOGIC -- Borrow output
    );
end HS;

architecture Behavioral of HS is
begin
    -- Half subtractor logic
    d <= a xor b;
    bout <= not a and b;
end Behavioral;
