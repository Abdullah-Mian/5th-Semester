library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_3 is
    port (
        nand3_in1 : in  STD_LOGIC;
        nand3_in2 : in  STD_LOGIC;
        nand3_in3 : in  STD_LOGIC;
        nand3_out : out STD_LOGIC
    );
end nand_3;

architecture bhv of nand_3 is
begin
    nand3_out <= NOT (nand3_in1 AND nand3_in2 AND nand3_in3);
end bhv;
