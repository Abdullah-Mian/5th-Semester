library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package counter_components is
    -- Function to convert 4-bit binary to 7-segment display
    function bin_to_7seg(bin : std_logic_vector(3 downto 0)) return std_logic_vector;
    
    -- Procedure to increment counter
    procedure increment_counter(signal counter : inout unsigned(3 downto 0));
end package counter_components;

package body counter_components is
    function bin_to_7seg(bin : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case bin is
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0010000"; -- 9
            when others => seg := "1111111"; -- off
        end case;
        return seg;
    end function;

    procedure increment_counter(signal counter : inout unsigned(3 downto 0)) is
    begin
        if counter = "1111" then
            counter <= "0000";
        else
            counter <= counter + 1;
        end if;
    end procedure;
end package body counter_components;