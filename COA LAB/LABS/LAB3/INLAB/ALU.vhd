LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.components.ALL;

ENTITY ALU IS
    PORT (
        x      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        y      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        result  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        carry   : OUT STD_LOGIC;
        opcode  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ALU;

ARCHITECTURE struct OF ALU IS
    SIGNAL add      : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL andd     : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL c        : STD_LOGIC;
BEGIN
    U1: FourBitAdder PORT MAP (
        a => x,
        b => y,
        sum => add,
        carryOut => c
    );

    U2: FourBitAND PORT MAP (
        a => x,
        b => y,
        r => andd
    );

    result <= ADD WHEN opcode = "000" ELSE andd;
    carry <= c WHEN opcode = "000" ELSE '0';
END struct;
