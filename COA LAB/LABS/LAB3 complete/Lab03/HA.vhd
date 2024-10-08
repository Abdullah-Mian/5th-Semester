library IEEE;

--Code for HA.vhd

use ieee.std_logic_1164.all;

entity HA is
    Port (
        a : in  STD_LOGIC;    -- First input
        b : in  STD_LOGIC;    -- Second input
        s : out  STD_LOGIC; -- Sum output
        cout : out  STD_LOGIC -- Carry output
    );
end HA;

architecture Behavioral of HA is
begin
    -- Full adder logic
    s <= a xor b;
    cout <= a and b;
end Behavioral;