library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity executeModule is
    port (
        register_rs, register_rt: in std_logic_vector(31 downto 0);
        PC4, immediate: in std_logic_vector(31 downto 0);
        ALUOp: in std_logic_vector(1 downto 0);
        ALUSrc: in std_logic;
        beq_control, clock: in std_logic;
        alu_result, branch_addr: out std_logic_vector(31 downto 0);
        branch_decision: out std_logic
    );
end executeModule;

architecture Behavioral of executeModule is
    signal alu_output: std_logic_vector(31 downto 0);
    signal zero: std_logic;
    signal branch_offset, temp_branch_addr: std_logic_vector(31 downto 0);
begin
    process (clock)
    begin
        if rising_edge(clock) then
            case ALUOp is
                when "00" =>
                    -- Logic for operation 00
                    alu_output <= register_rs + register_rt; -- Example: addition
                when "01" =>
                    -- Logic for operation 01
                    alu_output <= register_rs - register_rt; -- Example: subtraction
                when "10" =>
                    -- Logic for operation 10
                    alu_output <= register_rs and register_rt; -- Example: AND operation
                when others =>
                    alu_output <= (others => '0');
            end case;

            branch_offset <= immediate;
            temp_branch_addr <= PC4 + branch_offset;
            branch_decision <= beq_control and zero;
            branch_addr <= temp_branch_addr;
            alu_result <= alu_output;
        end if;
    end process;
end Behavioral;
