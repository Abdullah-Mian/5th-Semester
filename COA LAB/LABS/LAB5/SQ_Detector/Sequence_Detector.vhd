library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;  -- Use this library for numeric operations

entity Sequence_Detector is
    port (
        clk      : in std_logic;
        x        : in std_logic;
        result   : out std_logic
    );
end Sequence_Detector;

architecture behav of Sequence_Detector is

    -- Define states using std_logic_vector
    constant one   : std_logic_vector(4 downto 0) := "00001";
    constant two   : std_logic_vector(4 downto 0) := "00010";
    constant three : std_logic_vector(4 downto 0) := "00100";
    constant four  : std_logic_vector(4 downto 0) := "01000";
    constant five  : std_logic_vector(4 downto 0) := "10000";

    -- State memory
    signal mystate : std_logic_vector(4 downto 0) := one;

begin
    process (clk)
    begin
        if rising_edge(clk) then  -- Use the rising_edge function for clock events
            case mystate is
                when one =>
                    -- Assuming 'result' output is controlled in some way
                    result <= '0';

                    -- Transition condition for state 'two'
                    if (x = '1') then
                        mystate <= two;
                    else
                        mystate <= one;
                    end if;

                when two =>
                    result <= '0';  -- Assign default value for result

                    -- Transition condition for state 'three'
                    if (x = '1') then
                       mystate <= three;
                    else
                        mystate <= one;
                    end if;

                when three =>
                    result <= '0';  -- Assign default value for result

                    -- Transition condition for state 'four'
                    if (x = '0') then
                       mystate <= four;
                    else
                        mystate <= three;
                    end if;

                when four =>
                    result <= '1';  -- Assign result in state 'four'

                    -- Transition condition for state 'five'
                    if (x = '1') then
                       mystate <= five;
                    else
                        mystate <= one; 
                    end if;

                when five =>
                    result <= '1';  -- Assign result in state 'five'

                    -- Transition condition for returning to state 'one'
                    if (x = '0') then
                       mystate <= one;
                    else
                        mystate <= two; -- Non-overlapping transition back to state 'two'
                    end if;

                when others =>
                    mystate <= one;  -- Default state
            end case;
        end if;
    end process;
end behav;