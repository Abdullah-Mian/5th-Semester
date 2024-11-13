-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity InstructionFetch is
    port (
       
        instructionOut : out std_logic_VECTOR(31 downto 0);
        clk, reset, branch_des, jump_des : in std_logic
    );
end InstructionFetch;

architecture bhv of InstructionFetch is
    signal  top_pcout : std_LOGIC_VECTOR(31 downto 0);

begin

    -- Instantiate fetch component
    f1: fetch port map (
        PC_out             => top_pcout,
        instruction        => instructionOut,
        branch_addr        => X"00000003",
        jump_addr          => X"00000009",
        branch_decision    => branch_des,
        jump_decision      => jump_des, 
        reset              => reset, 
        clock              => clk
    );
	 

 

end bhv;
