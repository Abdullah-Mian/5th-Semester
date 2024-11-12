-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity mydecode is
    port (
        SevenSegement0, SevenSegement1, SevenSegement2, SevenSegement3, 
        SevenSegement4, SevenSegement5, SevenSegement6, SevenSegement7 : out STD_LOGIC_VECTOR (6 downto 0);

        clock, reset, branch_decision, jump_decision : in std_logic;
		  diplayDecison :in std_LOGIC_VECTOR(2 downto 0)
    );
end mydecode;

architecture bhv of mydecode is
    signal sevenSegementWire,instructionWire,rsWire,rtWire,rdWire,immediateWire,jump_addrWire : std_LOGIC_VECTOR(31 downto 0);
	 

begin

    f1: InstructionFetch port map (
        instructionOut 		=> instructionWire,
        branch_des   		=> branch_decision,
        jump_des      		=> jump_decision, 
        reset              => reset, 
        clk              	=> clock
    );
	 
	 d1 : InstructionDecode port map (
		  instruction    => instructionWire,
		  rs				  =>  rsWire,
		  rt				  =>  rtWire,
		  rd				  => 	rdWire,
        immediate      =>	immediateWire,
        jump_addr		  =>	jump_addrWire,
		  --RegDst, RegWrite, MemToReg : in std_logic;
        reset 			  =>	reset,		
		  clock 			  =>  clock
	 );
	 
	 
	
    -- Instantiate seven-segment displays for each nibble of the instruction
    u7: sevenSegement port map (
        bininput => SevenSegementWire(31 downto 28),
        cathodes => SevenSegement7
    );
    u6: sevenSegement port map (
        bininput => SevenSegementWire(27 downto 24),
        cathodes => SevenSegement6
    );
    u5: sevenSegement port map (
        bininput => SevenSegementWire(23 downto 20),
        cathodes => SevenSegement5
    );
    u4: sevenSegement port map (
        bininput => SevenSegementWire(19 downto 16),
        cathodes => SevenSegement4
    );
    u3: sevenSegement port map (
        bininput => SevenSegementWire(15 downto 12),
        cathodes => SevenSegement3
    );
    u2: sevenSegement port map (
        bininput => SevenSegementWire(11 downto 8),
        cathodes => SevenSegement2
    );
    u1: sevenSegement port map (
        bininput => SevenSegementWire(7 downto 4),
        cathodes => SevenSegement1
    );
    u0: sevenSegement port map (
        bininput => SevenSegementWire(3 downto 0),
        cathodes => SevenSegement0
    );

end bhv;
