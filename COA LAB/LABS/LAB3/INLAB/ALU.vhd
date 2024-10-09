LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.components.ALL;

ENTITY ALU IS
    PORT (
        x      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        y      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        carry  : OUT STD_LOGIC;
        opcode : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ALU;

ARCHITECTURE struct OF ALU IS
    SIGNAL ADD       : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL SUBTRACT  : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL ANDD      : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL ORR       : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL XORR      : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL NOTT      : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL C         : STD_LOGIC;
    SIGNAL B         : STD_LOGIC;
BEGIN
    U1: FourBitAdder PORT MAP (
        a => x,
        b => y,
        sum => ADD,
        carryOut => C
    );

    U2: FourBitAND PORT MAP (
        a => x,
        b => y,
        r => ANDD
    );

    U3: FourBitSubtractor PORT MAP (
        a => x,
        b => y,
        Difference => SUBTRACT,
        Borrow => B
    );

    U4: FourBitOR PORT MAP (
        a => x,
        b => y,
        r => ORR
    );

    U5: FourBitXOR PORT MAP (
        a => x,
        b => y,
        r => XORR
    );

    U6: FourBitNOT PORT MAP (
        a => x,
        r => NOTT
    );

    result <= ADD      WHEN opcode = "000" ELSE 
              ANDD     WHEN opcode = "001" ELSE 
              SUBTRACT WHEN opcode = "010" ELSE 
              XORR     WHEN opcode = "011" ELSE 
              ORR      WHEN opcode = "100" ELSE 
              NOTT;

    carry <= C WHEN opcode = "000" ELSE 
              B WHEN opcode = "001" ELSE 
              '0';
END struct;
