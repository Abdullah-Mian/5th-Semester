library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components.all;

entity FourBitAdder is
    port (
        a        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        sum      : out STD_LOGIC_VECTOR(3 DOWNTO 0);
        carryOut : out STD_LOGIC
    );
end FourBitAdder;

architecture struct of FourBitAdder is
    signal c : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin 
    U1: HalfAdder 
        port map (
            a => a(0),
            b => b(0),
            s => sum(0),
            c => c(0)
        );

    U2: FullAdder 
        port map (
            a     => a(1),
            b     => b(1),
            c     => c(0),
            sum   => sum(1),
            carry => c(1)
        );

    U3: FullAdder 
        port map (
            a     => a(2),
            b     => b(2),
            c     => c(1),
            sum   => sum(2),
            carry => c(2)
        );

    U4: FullAdder 
        port map (
            a     => a(3),
            b     => b(3),
            c     => c(2),
            sum   => sum(3),
            carry => carryOut
        );

end struct;
