-- TASK 2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity executeModule is
    port (
        register_rs, register_rt: in std_logic_vector(31 downto 0);
        PC4, immediate: in std_logic_vector(31 downto 0);
        ALUOp: in std_logic_vector(1 downto 0);
        ALUSrc: in std_logic;
        beq_control: in std_logic;
        alu_result, branch_addr: out std_logic_vector(31 downto 0);
        branch_decision, zero_flag: out std_logic
    );
end executeModule;

architecture Behavioral of executeModule is

begin
    process (ALUOp, ALUSrc, beq_control)
	     variable alu_output: std_logic_vector(31 downto 0);
		  variable zero: std_logic;
		  variable branch_offset, temp_branch_addr: std_logic_vector(31 downto 0);
    begin
        case ALUOp is
            when "00" =>
                if ALUSrc = '0' then
                    alu_output := std_logic_vector(unsigned(register_rs) + unsigned(register_rt)); -- Addition operation
                else
                    alu_output := std_logic_vector(unsigned(register_rs) + unsigned(immediate)); -- Add with immediate
                end if;
            when "01" =>
                alu_output := std_logic_vector(unsigned(register_rs) - unsigned(register_rt)); -- Subtraction operation
                zero := '0';
                if alu_output = (alu_output'range => '0') then
                    zero := '1';
                end if;
            when "10" =>
                alu_output := register_rs and register_rt; -- AND operation
            when others =>
                alu_output := (others => '0');
        end case;

        branch_offset := immediate;
        temp_branch_addr := std_logic_vector(unsigned(PC4) + unsigned(branch_offset)); -- Calculate the branch address

        branch_decision <= beq_control and zero;
        branch_addr <= temp_branch_addr;
        alu_result <= alu_output;
        zero_flag <= zero;
    end process;
end Behavioral;