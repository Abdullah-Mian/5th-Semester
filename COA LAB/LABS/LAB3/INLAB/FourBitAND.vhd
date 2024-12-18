LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FourBitAND IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END FourBitAND;

ARCHITECTURE struct OF FourBitAND IS
BEGIN
    r(0) <= a(0) AND b(0);
    r(1) <= a(1) AND b(1);
    r(2) <= a(2) AND b(2);
    r(3) <= a(3) AND b(3);
END struct;
