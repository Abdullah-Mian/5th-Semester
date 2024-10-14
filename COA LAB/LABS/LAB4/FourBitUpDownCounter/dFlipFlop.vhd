library ieee;
use ieee.std_logic_1164.all;

entity dFlipFlop is
    port (
        clk   : in std_logic;
        D     : in std_logic;
        Q     : out std_logic;
        Qnot  : out std_logic
    );
end dFlipFlop;

architecture DFF of dFlipFlop is
    signal Q_internal : std_logic;  -- Internal signal for Q
begin
    process (clk)
    begin
        if rising_edge(clk) then   -- Use rising_edge(clk) for proper edge detection
            Q_internal <= D;       -- Q is updated on the rising edge
        end if;
    end process;

    Q <= Q_internal;               -- Assign internal signal to output
    Qnot <= not Q_internal;         -- Qnot is always the inverse of Q
end DFF;
