library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MyPackage.all;

entity InstructionDecode is
    port (
        instruction       : in STD_LOGIC_VECTOR (31 downto 0);
        alu_result        : in STD_LOGIC_VECTOR (31 downto 0);
        memory_data       : in STD_LOGIC_VECTOR (31 downto 0);
        rs                : out STD_LOGIC_VECTOR (31 downto 0);
        rt                : out STD_LOGIC_VECTOR (31 downto 0);
        rd                : out STD_LOGIC_VECTOR (31 downto 0);
        immediate         : out STD_LOGIC_VECTOR (31 downto 0);
        jump_addr         : out STD_LOGIC_VECTOR (31 downto 0);
        RegDst, RegWrite, MemToReg : in std_logic;
        reset, clock      : in std_logic
    );
end InstructionDecode;

architecture Behavioral of InstructionDecode is
    -- signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(31 downto 0);
    type mem_array is array(0 to 7) of std_logic_vector(31 downto 0);
    -- signal inst : std_LOGIC_VECTOR(31 downto 0);
    -- signal SevenSegementWire: std_LOGIC_VECTOR(31 downto 0);
    
    shared variable reg_File : mem_array := (
        X"00000000", -- 0 
        X"11111111", -- 1 
        X"22222222", -- 2 
        X"33333333", -- 3
        X"44444444", -- 4
        X"55555555", -- 5
        X"66666666", -- 6
        X"77777777", -- 7
        others => X"00000000"
    );
    
    -- Reset procedure to restore initial register values
    procedure reset_registers is
    begin
        reg_File := (
            X"00000000", -- 0
            X"11111111", -- 1
            X"22222222", -- 2
            X"33333333", -- 3
            X"44444444", -- 4
            X"55555555", -- 5
            X"66666666", -- 6
            X"77777777"  -- 7
        );
    end procedure reset_registers;

begin
    --------------------------------------------------------------
    -- Process to read register file and pass the operands to the execute module
    --------------------------------------------------------------
    reg_read: process(instruction)
        variable add_rs, add_rt, add_rd : std_logic_vector(4 downto 0);
        variable imm : std_logic_vector(15 downto 0);
    begin
        add_rs := instruction(25 downto 21);
        add_rt := instruction(20 downto 16);
        add_rd := instruction(15 downto 11);
        
        rs <= reg_File(to_integer(unsigned(add_rs)));
        rt <= reg_File(to_integer(unsigned(add_rt)));
        rd <= reg_File(to_integer(unsigned(add_rd)));
        
        imm := instruction(15 downto 0);
        if instruction(15) = '1' then
            immediate <= x"FFFF" & imm;
        else
            immediate <= x"0000" & imm;
        end if;
        
        jump_addr <= "000000" & instruction(25 downto 0);
    end process reg_read;

    -------------------------------------------------------------------
    -- Process to write the register file when required
    -------------------------------------------------------------------
    reg_write: process(reset, memory_data, alu_result, clock)
        variable write_value : std_logic_vector(31 downto 0);
        variable addrt, addrd : std_logic_vector(4 downto 0);
    begin
        if falling_edge(clock) then
            if reset = '1' then
                reset_registers;
            end if;
				
            addrt := instruction(20 downto 16);
            addrd := instruction(15 downto 11);

            if MemToReg = '1' then
                write_value := memory_data;
            else
                write_value := alu_result;
            end if;

            if RegWrite = '1' then
                if RegDst = '1' then
                    if to_integer(unsigned(addrd)) /= 0 then -- Skip reg0 (read-only)
                        reg_File(to_integer(unsigned(addrd))) := write_value;
                    end if;
                else
                    if to_integer(unsigned(addrt)) /= 0 then -- Skip reg0 (read-only)
                        reg_File(to_integer(unsigned(addrt))) := write_value;
                    end if;
                end if;
            end if;
        end if;    
    end process reg_write;
end Behavioral;
