-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity InstructionDecode is
    port (
        instruction    : in STD_LOGIC_VECTOR (31 downto 0);
        immediate      : out STD_LOGIC_VECTOR (31 downto 0);
        jump_decision, 
		  branch_decision, RegDst, RegWrite, MemToReg : in std_logic;
        reset, clock          : in std_logic
    );
end InstructionDecode;

architecture Behavioral of InstructionDecode is
    signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(31 downto 0);
begin

	d1: InstructionDecode port map (
        instructionOut 		=> instruction,
        branch_des   		=> branch_decision,
        jump_des      		=> jump_decision, 
        reset              => reset, 
        clk              	=> clock
    );
    -------------------------------------------------------------------
    -- Process to write the register file when required
    -------------------------------------------------------------------
    reg_write: process(reset, memory_data, alu_result, clock)
        variable write_value : std_logic_vector(31 downto 0);
        variable addr1, addr2, addr3 : std_logic_vector(2 downto 0);
    begin
        -- on reset initialize the registers
        if reset = '1' then
            reg0 <= x"00000000";
            reg1 <= x"11111111";
            reg2 <= x"22222222";
            reg3 <= x"33333333";
            reg4 <= x"44444444";
            reg5 <= x"55555555";
            reg6 <= x"66666666";
            reg7 <= x"77777777";
        else
            -- Determine the address of the register to be written
            addr2 := instruction(20 downto 16);
            addr3 := instruction(15 downto 11);
            -- if RegDst = '0' then
            -- ...
        end if;

        -- Determine the source operand to be written, i.e., memory or alu result
        if RegWrite = '1' then
            if MemToReg = '1' then
                write_value := memory_data;
            else
                write_value := alu_result;
            end if;
            -- store write_value to the destination register (need to disable this when you test other functions)
            -- if register(0) is selected as the destination, simply write 0 to reg0
            -- case addr3 is
            -- when "000" => reg0 <= to_stdlogicvector(x"00000000");
            -- when "001" => reg1 <= write_value;
            -- end case;
        end if;
        -- for testing, you may add register_rd in the port and assign rd signal (see the reg_read process for this).
        -- However, it should be removed after testing because rd signal does not exist and it is the register itself.
        register_rd <= rd;
    end process reg_write;

    --------------------------------------------------------------
    -- Process to read register file and pass the operands to the execute module
    --------------------------------------------------------------
    reg_read: process(instruction)
        variable rt, rs, imm : std_logic_vector(31 downto 0);
        variable addr1, addr2 : std_logic_vector(2 downto 0);
    begin
        -- register addresses for reading the registers
        addr1 := instruction(25 downto 21);
        addr2 := instruction(20 downto 16);
        -- read the register
        -- case addr1 is
        -- when "000" => rs := reg0;
        -- ...
        -- end case;
        case addr2 is
            when "000" => rt := reg0;
            -- ...
        end case;
        -- access immediate from instruction and perform sign extension
        imm(15 downto 0) := instruction(15 downto 0);
        if instruction(15) = '1' then
            imm(31 downto 16) := x"ffff";
        else
            imm(31 downto 16) := x"0000";
        end if;
        -- compute the jump address..
        jump_addr(31 downto 0) <= ....;
        -- Bring out signals to the ports of the module
        -- register_rs <= rs;
        -- register_rt <= rt;
        -- immediate <= imm;
        -- you may add rd as well for testing
    end process reg_read;
end Behavioral;
