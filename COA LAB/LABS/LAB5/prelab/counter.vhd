library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.counter_components.all;

entity counter_4bit is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           segment : out STD_LOGIC_VECTOR (6 downto 0));
end counter_4bit;

architecture Behavioral of counter_4bit is
    signal counter : unsigned(3 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            increment_counter(counter);
        end if;
    end process;

    segment <= bin_to_7seg(std_logic_vector(counter));
end Behavioral;