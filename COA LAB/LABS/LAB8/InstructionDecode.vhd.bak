library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MyPackage.all;

entity InstructionDecode is
    port (
        instruction    : in STD_LOGIC_VECTOR  (31 downto 0);
		  rs				  : out STD_LOGIC_VECTOR (31 downto 0);
		  rt				  : out STD_LOGIC_VECTOR (31 downto 0);
		  rd				  : out STD_LOGIC_VECTOR (31 downto 0);
        immediate      : out STD_LOGIC_VECTOR (31 downto 0);
        jump_addr		  : out STD_LOGIC_VECTOR (31 downto 0);
		  --RegDst, RegWrite, MemToReg : in std_logic;
        reset, clock          : in std_logic
		  
    );
end InstructionDecode;

architecture Behavioral of InstructionDecode is
   -- signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(31 downto 0);
	 type mem_array is array(0 to 7) of std_logic_vector(31 downto 0);
	 --signal inst : std_LOGIC_VECTOR(31 downto 0);
	-- signal SevenSegementWire: std_LOGIC_VECTOR(31 downto 0);
	 
	shared variable reg_File    : mem_array := (
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
	
begin


	 --------------------------------------------------------------
    -- Process to read register file and pass the operands to the execute module
    --------------------------------------------------------------
    reg_read: process(instruction)
		  
        variable add_rs, add_rt, add_rd : std_logic_vector(4 downto 0); 
		  variable imm : std_logic_vector(15 downto 0); 
		 
		  
    begin
      
		  if reset = '1' then
				
		  end if;
			
		  add_rt := instruction(25 downto 21);
        add_rs := instruction(20 downto 16);
		  add_rd := instruction(15 downto 11);
			
		  rs <= reg_File(to_integer(unsigned(add_rs)));
		  rt <= reg_File(to_integer(unsigned(add_rt)));
		  rd <= reg_File(to_integer(unsigned(add_rd)));
			
        imm := instruction(15 downto 0);
        if instruction(15) = '1' then
            immediate <= x"1111" & imm;
        else
            immediate <= x"0000" & imm;
        end if;
		  
        
        jump_addr <= "000000" & instruction(25 downto 0);
        
    end process reg_read;
		  
		  
    -------------------------------------------------------------------
    -- Process to write the register file when required
    -------------------------------------------------------------------
--    reg_write: process(reset, memory_data, alu_result, clock)
--        variable write_value : std_logic_vector(31 downto 0);
--        variable addr1, addr2, addr3 : std_logic_vector(2 downto 0);
--    begin
--	 
--			
--        
--            -- Determine the address of the register to be written
--            addr2 := instruction(20 downto 16);
--            addr3 := instruction(15 downto 11);
--            -- if RegDst = '0' then
--            -- ...
--        end if;
--
--        -- Determine the source operand to be written, i.e., memory or alu result
--       if RegWrite = '1' then
--				if reset = '1' then
--            reg0 <= x"00000000";
--            reg1 <= x"11111111";
--            reg2 <= x"22222222";
--            reg3 <= x"33333333";
--            reg4 <= x"44444444";
--            reg5 <= x"55555555";
--            reg6 <= x"66666666";
--            reg7 <= x"77777777";
--        
--            if MemToReg = '1' then
--                write_value := memory_data;
--            else
--                write_value := alu_result;
--            end if;
--            -- store write_value to the destination register (need to disable this when you test other functions)
--            -- if register(0) is selected as the destination, simply write 0 to reg0
--            -- case addr3 is
--            -- when "000" => reg0 <= to_stdlogicvector(x"00000000");
--            -- when "001" => reg1 <= write_value;
--            -- end case;
--        end if;
--        -- for testing, you may add register_rd in the port and assign rd signal (see the reg_read process for this).
--        -- However, it should be removed after testing because rd signal does not exist and it is the register itself.
--        register_rd <= rd;
--    end process reg_write;



end Behavioral;
