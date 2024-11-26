library ieee;
use ieee.std_logic_1164.all;

package MyPackage is
	 
	 component controlUnit is
    port (
       instruction : in std_logic_vector(31 downto 0);
       reset       : in std_logic;
       RegDst, RegWrite, MemToReg, AluSrc,
       MemRead, MemWrite, Jump, beq_control : out std_logic;
       AluOp      : out std_logic_vector(1 downto 0)
    );
	end component;
	 
	 
	component memory is
    generic (module_delay: time := 10 ns);
    Port (
        address    : in STD_LOGIC_VECTOR (31 downto 0);
        write_data : in STD_LOGIC_VECTOR (31 downto 0);
        MemWrite, MemRead : in std_logic;
        read_data  : out STD_LOGIC_VECTOR (31 downto 0)
    );
	end component;

end package MyPackage;
