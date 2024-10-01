library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.my_components.all; -- Declaring our library

entity circuit1 is
    port (
        a, b, c, d : in  STD_LOGIC;
        x, y       : out STD_LOGIC
    );
end circuit1;

architecture struct of circuit1 is
    signal w : STD_LOGIC;
begin

    -- Calling the components
    U1: myinverter
        port map (
            inv_in  => b,
            inv_out => w
        );

    U2: nand_2
        port map (
            nand2_in1  => a,
            nand2_in2  => b,
            nand2_out  => x
        );

    U3: nand_3
        port map (
            nand3_in1 => w,
            nand3_in2 => c,
            nand3_in3 => d,
            nand3_out => y
        );

end architecture struct;
