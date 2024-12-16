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
				X"ac640000", -- sw $4, 0($3) ; mem[0+$3] <=$4
            X"8c640001", -- lw $4, 1($3) ; $4 <= mem[1+$3] 
            X"00622022", -- sub $4, $3, $2 ; $4 <= $3 - $2
            X"1022fffb", -- beq $1, $2, L ; if ($1=$2), branch_addr<=L 
            X"00822022", -- sub $4, $4, $3   -- Subtract			
            X"ac400000", -- sw $4, 0($3)     -- Store word		
            X"1022fffb", -- beq $1, $2, L    -- Branch if equal
				X"8c220000", --L: lw $2, 0($1) ; $2 <= mem[0+$1]
            X"00612064", -- and $4, $3, $1 ; $4 <= $3 and $4 
            X"08000000", -- j L ; jump_addr <= L 
            others => X"00000000"  -- Initialize remaining locations
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
