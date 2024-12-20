library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity controlUnit is
    port (
       instruction : in std_logic_vector(31 downto 0);
       reset       : in std_logic;
       RegDst, RegWrite, MemToReg, AluSrc,
       MemRead, MemWrite, Jump, beq_control : out std_logic;
       AluOp      : out std_logic_vector(1 downto 0)
    );
end controlUnit;

architecture bhv of controlUnit is
begin
	 
   ControlUnitProcess : process(instruction,reset)
	variable opcode : std_logic_vector(5 downto 0);
begin
		
	 opcode := instruction(31 downto 26);
	if reset='1' then
				RegDst      <= '0';
            RegWrite    <= '0';
            MemToReg    <= '0';
            AluSrc      <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Jump        <= '0';
            beq_control <= '0';
            AluOp      <= "00";

	else 
	 
	 
    case opcode is
        when "000000" => -- R type instruction
            RegDst      <= '1';
            RegWrite    <= '1';
            MemToReg    <= '0';
            AluSrc      <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Jump        <= '0';
            beq_control <= '0';
            AluOp       <= "10";

        when "101011" => -- Store instruction
            RegDst      <= '0';
            RegWrite    <= '1';
            MemToReg    <= '1';
            AluSrc      <= '1';
            MemRead     <= '1';
            MemWrite    <= '0';
            Jump        <= '0';
            beq_control <= '0';
            AluOp       <= "00";
					
        when "100011" => -- Load instruction
            RegDst      <= '0';
            RegWrite    <= '0';
            MemToReg    <= '0';
            AluSrc      <= '1';
            MemRead     <= '0';
            MemWrite    <= '1';
            Jump        <= '0';
            beq_control <= '0';
            AluOp       <= "00";
				
		  when "000010" => -- Jump instruction
            RegDst      <= '0';
            RegWrite    <= '0';
            MemToReg    <= '0';
            AluSrc      <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Jump        <= '1';
            beq_control <= '0';
            AluOp       <= "00";
				
			when "000100" => -- branch instruction
            RegDst      <= '0';
            RegWrite    <= '0';
            MemToReg    <= '0';
            AluSrc      <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Jump        <= '0';
            beq_control <= '1';
            AluOp       <= "01";
				
        when others => 
				RegDst      <= '0';
            RegWrite    <= '0';
            MemToReg    <= '0';
            AluSrc      <= '0';
            MemRead     <= '0';
            MemWrite    <= '0';
            Jump        <= '0';
            beq_control <= '0';
            AluOp       <= "00";
		   
    end case;
	 end if;

	 
end process;

end bhv;
