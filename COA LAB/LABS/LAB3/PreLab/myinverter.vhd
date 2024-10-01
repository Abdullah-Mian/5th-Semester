library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity myinverter is
    port (
        inv_in  : in  STD_LOGIC;
        inv_out : out STD_LOGIC
    );
end myinverter;

architecture bhv of myinverter is
begin
    inv_out <= not inv_in;
end bhv;
