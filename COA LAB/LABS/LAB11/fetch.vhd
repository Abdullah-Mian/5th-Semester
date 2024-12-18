-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity fetch is
    port (
        PC_out         : out STD_LOGIC_VECTOR (31 downto 0);
        instruction    : out STD_LOGIC_VECTOR (31 downto 0);
        branch_addr, 
        jump_addr      : in STD_LOGIC_VECTOR (31 downto 0);
        branch_decision, 
        jump_decision, 
        reset, 
        clock          : in std_logic
    );
end fetch;

-- Architecture Definition
architecture bhv of fetch is
    -- Define instruction memory array type
    type mem_array is array(0 to 15) of std_logic_vector(31 downto 0);

begin
    -- Process for handling the fetch operation
    process
        -- Define variables inside the process
        variable pc     : std_logic_vector(31 downto 0) := (others => '0');
        variable index  : integer range 0 to 15 := 0;
        
        -- Initialize the instruction memory with machine code
        variable mem    : mem_array := (
				X"8C221234", -- lw $v0, 0x1234($a0)      # Load word from address in $a0 + 0x1234 to $v0
				X"AC220000", -- sw $v0, 0($a0)            # Store word from $v0 to address in $a0
				X"00A12300", -- and $v0, $a1, $a2        # Bitwise AND of $a1 and $a2, result in $v0
				X"10220002", -- beq $v0, $v0, 0x2        # Branch if $v0 == $v0 (infinite loop)
				X"00821020", -- add $v0, $a0, $v0        # Add $a0 and $v0, result in $v0
				X"8C220000", -- lw $v0, 0($a0)           # Load word from address in $a0 to $v0
				X"AC220000", -- sw $v0, 0($a0)           # Store word from $v0 to address in $a0
				X"10220002", -- beq $v0, $v0, 0x2        # Branch if $v0 == $v0 (infinite loop)
				X"10020000", -- beq $zero, $v0, 0        # Branch if $v0 == $zero (conditional branch)
				X"20220000", -- addi $v0, $v0, 0         # Add immediate value 0 to $v0, result in $v0
            others => X"00000000"  -- 
        );
    begin
        
        wait until rising_edge(clock);

        -- Check if reset signal is active
        if reset = '1' then
            pc := (others => '0');
            instruction <= (others => '0');
        else
            -- Handle branch and jump
            if branch_decision = '1' then
                pc := branch_addr;
            elsif jump_decision = '1' then
                pc := jump_addr;
            end if;
            
            -- Calculate memory index from PC (using word alignment)
            index := to_integer(unsigned(pc(3 downto 0)));

            -- Fetch instruction from memory
            instruction <= mem(index);

            -- Increment PC by 4 (after fetching)
            -- pc := std_logic_vector(unsigned(pc) + 4);
            pc := std_logic_vector(unsigned(pc) + 1);
            PC_out <= pc;
        end if;
    end process;

end bhv;
