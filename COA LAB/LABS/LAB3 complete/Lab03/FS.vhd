library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FS is
    Port (
        a : in  STD_LOGIC;       -- Minuend
        b : in  STD_LOGIC;       -- Subtrahend
        bin : in  STD_LOGIC;     -- Borrow input
        d : out  STD_LOGIC;   -- Difference output
        bout : out  STD_LOGIC    -- Borrow output
    );
end FS;

architecture Behavioral of FS is
begin
    -- Full subtractor logic
    d <= a xor b xor bin;
    bout <= (not a and b) or (not(a xor b) and bin);
end Behavioral;
