library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package my_components is

    -- Component declaration for myinverter
    component myinverter is
        port (
            inv_in  : in  STD_LOGIC;
            inv_out : out STD_LOGIC
        );
    end component;

    -- Component declaration for nand_2
    component nand_2 is
        port (
            nand2_in1  : in  STD_LOGIC;
            nand2_in2  : in  STD_LOGIC;
            nand2_out  : out STD_LOGIC
        );
    end component;

    -- Component declaration for nand_3
    component nand_3 is
        port (
            nand3_in1  : in  STD_LOGIC;
            nand3_in2  : in  STD_LOGIC;
            nand3_in3  : in  STD_LOGIC;
            nand3_out  : out STD_LOGIC
        );
    end component;

end package my_components;
