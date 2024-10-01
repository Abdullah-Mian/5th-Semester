library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_2 is
    port (
        nand2_in1 : in  STD_LOGIC;
        nand2_in2 : in  STD_LOGIC;
        nand2_out : out STD_LOGIC
    );
end nand_2;

architecture bhv of nand_2 is
begin
    nand2_out <= NOT (nand2_in1 AND nand2_in2);
end bhv;
