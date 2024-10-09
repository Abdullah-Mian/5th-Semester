LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FourBitOR IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END FourBitOR;

ARCHITECTURE struct OF FourBitOR IS
BEGIN
    r(0) <= a(0) OR b(0);
    r(1) <= a(1) OR b(1);
    r(2) <= a(2) OR b(2);
    r(3) <= a(3) OR b(3);
END struct;
