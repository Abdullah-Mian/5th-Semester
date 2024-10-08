library IEEE;

--Code for FA.vhd

use ieee.std_logic_1164.all;

entity FA is
    Port (
        a : in  STD_LOGIC;    -- First input
        b : in  STD_LOGIC;    -- Second input
        cin : in  STD_LOGIC;  -- Carry input
        s : out  STD_LOGIC; -- Sum output
        cout : out  STD_LOGIC -- Carry output
    );
end FA;

architecture Behavioral of FA is
begin
    -- Full adder logic
    s <= a xor b xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);
end Behavioral;