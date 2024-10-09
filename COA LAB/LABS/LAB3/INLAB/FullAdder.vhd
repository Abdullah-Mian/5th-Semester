LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FullAdder IS
    PORT (
        a     : IN  STD_LOGIC;
        b     : IN  STD_LOGIC;
        c     : IN  STD_LOGIC;
        sum   : OUT STD_LOGIC;
        carry  : OUT STD_LOGIC
    );
END FullAdder;

ARCHITECTURE df OF FullAdder IS
BEGIN
    sum <= (a XOR b) XOR c;
    carry <= (a AND b) OR (c AND (a XOR b));
END df;
