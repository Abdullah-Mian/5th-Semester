LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FourBitNOT IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END FourBitNOT;

ARCHITECTURE struct OF FourBitNOT IS
BEGIN
    r(0) <= NOT a(0);
    r(1) <= NOT a(1);
    r(2) <= NOT a(2);
    r(3) <= NOT a(3);
END struct;
