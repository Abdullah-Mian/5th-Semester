library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.my_components.all;

entity ALU4b is 
    port(
        x: in std_logic_vector(3 downto 0);
        y: in std_logic_vector(3 downto 0);
        z: out std_logic_vector(3 downto 0);
        opcode: in std_logic_vector(2 downto 0)
    );
end ALU4b;

architecture struct of ALU4b is
    signal add, andd, sub, orr, nott, xorr: std_logic_vector(3 downto 0);
    signal carry_out: std_logic;   -- Signal for carry out from add4b
    signal borrow_out: std_logic;   -- Signal for borrow out from sub4b
begin
    -- Add4b component (including carry out)
    INST1: add4b port map(
        a => x,          -- Direct vector mapping
        b => y,          -- Direct vector mapping
        s => add,        -- Direct vector mapping
        c => carry_out   -- Mapping carry out to a signal
    );

    -- Sub4b component (including borrow out)
    INST2: sub4b port map(
        a => x,              -- Direct vector mapping
        b => y,              -- Direct vector mapping
        d => sub,            -- Direct vector mapping
        boutt => borrow_out   -- Mapping borrow out to a signal
    );

    -- AND component
    INST3: and_4 port map(
        a => x,      -- Direct vector mapping
        b => y,      -- Direct vector mapping
        c => andd    -- Direct vector mapping
    );

    -- OR component
    INST4: or_4 port map(
        a => x,      -- Direct vector mapping
        b => y,      -- Direct vector mapping
        c => orr     -- Direct vector mapping
    );

    -- XOR component
    INST5: xor_4 port map(
        a => x,      -- Direct vector mapping
        b => y,      -- Direct vector mapping
        c => xorr    -- Direct vector mapping
    );

    -- NOT component
    INST6: not_4 port map(
        a => x,      -- Direct vector mapping
        c => nott    -- Direct vector mapping
    );

    -- Opcode selection for ALU operation
    with opcode select
        z <= add    when "000",  -- ADD
             sub    when "001",  -- SUB
             andd   when "010",  -- AND
             orr    when "011",  -- OR
             xorr   when "100",  -- XOR
             nott   when "101",  -- NOT
             "0000" when others; -- Default case
    
end struct;
