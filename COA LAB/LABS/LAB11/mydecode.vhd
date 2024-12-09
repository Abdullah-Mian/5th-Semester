-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity mydecode is
    port (
        DecodeModuleOut : out STD_LOGIC_VECTOR (31 downto 0);

        clock, reset, branch_decision, jump_decision, RegisterWrite : in std_logic;
		  diplayDecison :in std_LOGIC_VECTOR(2 downto 0)
    );
end mydecode;

architecture bhv of mydecode is
    signal instructionWire,rsWire,rtWire,rdWire,immediateWire,jump_addrWire : std_LOGIC_VECTOR(31 downto 0);
	 

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
		  alu_result 	  => X"44444444",
		  memory_data 	  => X"00000000",
		  rs				  =>  rsWire,
		  rt				  =>  rtWire,
		  rd				  => 	rdWire,
        immediate      =>	immediateWire,
        jump_addr		  =>	jump_addrWire,
		  RegDst 		  => '0',
		  RegWrite		  => RegisterWrite,
		  MemToReg		  => '0',
        reset 			  =>	reset,		
		  clock 			  =>  clock
	 );
	 
	 with diplayDecison select 
	DecodeModuleOut <= rsWire when "000",
	rtWire when "001",
	rdWire when "010",
	immediateWire when "011",
	jump_addrWire when "100",
	(others => '0') when others;
	
    -- Instantiate seven-segment displays for each nibble of the instruction
--    u7: sevenSegement port map (
--        bininput => SevenSegementWire(31 downto 28),
--        cathodes => SevenSegement7
--    );
--    u6: sevenSegement port map (
--        bininput => SevenSegementWire(27 downto 24),
--        cathodes => SevenSegement6
--    );
--    u5: sevenSegement port map (
--        bininput => SevenSegementWire(23 downto 20),
--        cathodes => SevenSegement5
--    );
--    u4: sevenSegement port map (
--        bininput => SevenSegementWire(19 downto 16),
--        cathodes => SevenSegement4
--    );
--    u3: sevenSegement port map (
--        bininput => SevenSegementWire(15 downto 12),
--        cathodes => SevenSegement3
--    );
--    u2: sevenSegement port map (
--        bininput => SevenSegementWire(11 downto 8),
--        cathodes => SevenSegement2
--    );
--    u1: sevenSegement port map (
--        bininput => SevenSegementWire(7 downto 4),
--        cathodes => SevenSegement1
--    );
--    u0: sevenSegement port map (
--        bininput => SevenSegementWire(3 downto 0),
--        cathodes => SevenSegement0
--    );

end bhv;
