LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.components.ALL;

ENTITY FourBitSubtractor is
	Port (
		  a        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        Difference      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Borrow : OUT STD_LOGIC
	);
END FourBitSubtractor;

ARCHITECTURE struct OF FourBitSubtractor IS
    SIGNAL bb : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    U1: HalfSubractor PORT MAP (
        a => a(0),
        b => b(0),
        diff => Difference(0),
        borr => bb(0)
    );

    U2: FullSubractor PORT MAP (
        a => a(1),
        b => b(1),
        bin => bb(0),
        diff => Difference(1),
        borr => bb(1)
    );

    U3: FullSubractor PORT MAP (
        a => a(2),
        b => b(2),
        bin => bb(1),
        diff => Difference(2),
        borr => bb(2)
    );

    U4: FullSubractor PORT MAP (
        a => a(3),
        b => b(3),
        bin => bb(2),
        diff => Difference(3),
        borr => Borrow
    );
END struct;
