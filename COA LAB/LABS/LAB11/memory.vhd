library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity memory is
    generic (module_delay: time := 10 ns);
    Port (
        address    : in STD_LOGIC_VECTOR (31 downto 0);
        write_data : in STD_LOGIC_VECTOR (31 downto 0);
        MemWrite, MemRead : in std_logic;
        read_data  : out STD_LOGIC_VECTOR (31 downto 0);
		  tempout 	 : out STD_LOGIC_VECTOR (31 downto 0)
    );
end memory;

architecture Behavioral of memory is
    type mem_array is array (0 to 7) of std_logic_vector(31 downto 0);
begin
    ReadWrite1: process (address, write_data)
        variable data_mem : mem_array ;
        variable addr : integer;
        variable mem_content : std_logic_vector(31 downto 0);
    begin
        addr := to_integer(unsigned(address(2 downto 0))); -- since there are only 8 words
        mem_content := write_data;
        if MemWrite = '1' then
            data_mem(addr) := mem_content;
				tempout <= data_mem(addr) after module_delay;
        elsif MemRead = '1' then
            mem_content := data_mem(addr);
            read_data <= mem_content after module_delay;
        end if;
    end process ReadWrite1;
end Behavioral;
