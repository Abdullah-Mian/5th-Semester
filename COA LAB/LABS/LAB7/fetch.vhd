-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion

-- Entity Declaration
entity fetch is
    port (
        PC_out             : out STD_LOGIC_VECTOR (31 downto 0);
        instruction        : out STD_LOGIC_VECTOR (31 downto 0);
        branch_addr, jump_addr : in STD_LOGIC_VECTOR (31 downto 0);
        branch_decision, jump_decision, reset, clock : in std_logic
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
        variable pc : std_logic_vector(31 downto 0) := (others => '0');
        variable index : integer range 0 to 15 := 0;
        -- Initialize the instruction memory with machine code
        variable mem : mem_array := (
            X"8c220000", -- lw $2, 0($1)     -- Load word
            X"8c640001", -- lw $4, 1($3)     -- Load word
            X"00822022", -- sub $4, $4, $3   -- Subtract
            X"ac400000", -- sw $4, 0($3)     -- Store word
            X"1022fffa", -- beq $1, $2, L    -- Branch if equal
            X"00612024", -- and $4, $3, $1   -- AND operation
            X"08000000", -- j L              -- Jump
            X"00000000", -- NOP              -- No operation
            others => X"00000000"  -- Initialize remaining locations
        );
    begin
        -- Wait for clock edge
        wait until rising_edge(clock); --Have a sensitivity list (like we added), OR Have at least one wait statement
        --if(clock'event and clock = '1') then
            -- Handle reset
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
                index := to_integer(unsigned(pc(5 downto 2)));
                
                -- Fetch instruction from memory
                instruction <= mem(index);
                
                -- Increment PC by 4 (after fetching)
                pc := std_logic_vector(unsigned(pc) + 4);
            end if;
            
            -- Update PC output
            PC_out <= pc;
       -- end if;
    end process;
end bhv;