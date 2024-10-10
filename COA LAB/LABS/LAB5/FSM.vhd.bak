library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM is
    port (
        clk      : in std_logic;
        x : in std_logic;
        result  : out std_logic;
    );
end FSM;

architecture behav of FSMd is

    constant one : std_logic_vector(4 downto 0) := "00001";
    constant two : std_logic_vector(4 downto 0) 	 := "00010";
    constant three : std_logic_vector(4 downto 0) 	 := "00100";
	 constant four : std_logic_vector(4 downto 0) 	 := "01000";
	 constant five : std_logic_vector(4 downto 0) 	 := "10000";

    -- State Memory
    signal mystate : std_logic_vector(4 downto 0) := one;
begin
    process (clk)
    begin
        if (clk'event and clk = '1') then
            case mystate is
                when one =>
                    -- Initialization of signals
                    x <= "1000"; -- 8
                    y <= "0011"; -- 3
                    q <= "0000"; -- Reset quotient

                    if (x = '1') then
                        mystate <= two;
                    else
                        mystate <= one;
                    end if;

                when two =>
                    -- Perform subtraction and increment quotient
                    if (x = '1') then
                       mystate <= three;
                    else
                        mystate <= two;
                    end if;
					
					when three =>
                    -- Perform subtraction and increment quotient
                    if (x = '0') then
                       mystate <= four;
                    else
                        mystate <= one;
                    end if;

                when four =>
                    if (x = '1') then
                       mystate <= five;
                    else
                        mystate <= two;
                    end if;

                when others =>
                    mystate <= one;
            end case;
        end if;
    end process;
end behav;
