library ieee;
use ieee.std_logic_1164.all;

entity Dflipflop is
    port (
        clk   : in std_logic;
        D     : in std_logic;
        Q     : buffer std_logic;
        Qnot  : out std_logic
    );
end Dflipflop;

architecture DFF of Dflipflop is
	--signal temp : std_logic;
begin
    process (clk)
    begin
        if clk = '1' then
            Q     <= D;
				--temp <= not Q;
            Qnot  <= not Q;
        end if;
    end process;
end DFF;
