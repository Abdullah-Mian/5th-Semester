LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FourBitXOR IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END FourBitXOR;

ARCHITECTURE struct OF FourBitXOR IS
BEGIN
    r(0) <= a(0) XOR b(0);
    r(1) <= a(1) XOR b(1);
    r(2) <= a(2) XOR b(2);
    r(3) <= a(3) XOR b(3);
END struct;
