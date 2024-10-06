LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.components.ALL;

ENTITY FourBitAdder IS
    PORT (
        a        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        sum      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        carryOut : OUT STD_LOGIC
    );
END FourBitAdder;

ARCHITECTURE struct OF FourBitAdder IS
    SIGNAL c : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    U1: HalfAdder PORT MAP (
        a => a(0),
        b => b(0),
        s => sum(0),
        c => c(0)
    );

    U2: FullAdder PORT MAP (
        a => a(1),
        b => b(1),
        c => c(0),
        sum => sum(1),
        carry => c(1)
    );

    U3: FullAdder PORT MAP (
        a => a(2),
        b => b(2),
        c => c(1),
        sum => sum(2),
        carry => c(2)
    );

    U4: FullAdder PORT MAP (
        a => a(3),
        b => b(3),
        c => c(2),
        sum => sum(3),
        carry => carryOut
    );
END struct;
