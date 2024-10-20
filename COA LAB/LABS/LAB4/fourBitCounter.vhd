library ieee;
use ieee.std_logic_1164.all;
use work.MyPackage.all;

entity fourBitCounter is
    port (
        binOut : out std_logic_vector(3 downto 0); 
        clk : in std_logic
    );
end fourBitCounter;

architecture Behavioral of fourBitCounter is
    -- Signals for Q outputs and D inputs
    signal q0, q1, q2, q3 : std_logic;
    signal qnot0, qnot1, qnot2, qnot3 : std_logic;
    signal d1, d2, d3 : std_logic;

begin
    -- First flip-flop (least significant bit)
    U1 : dFlipFlop 
        port map (
            clk => clk,
            D => qnot0,
            Q => q0,
            Qnot => qnot0
        );

    -- Second flip-flop
    U2 : dFlipFlop
        port map (
            clk => clk,
            D => d1,
            Q => q1,
            Qnot => qnot1
        );

    -- Third flip-flop
    U3 : dFlipFlop
        port map (
            clk => clk,
            D => d2,
            Q => q2,
            Qnot => qnot2
        );

    -- Fourth flip-flop (most significant bit)
    U4 : dFlipFlop
        port map (
            clk => clk,
            D => d3,
            Q => q3,
            Qnot => qnot3
        );

    -- Counter logic
    d1 <= q1 xor q0;
    d2 <= q2 xor (q1 and q0);
    d3 <= q3 xor (q2 and (q1 and q0));

    -- Output assignment
    binOut <= q3 & q2 & q1 & q0;

end Behavioral;