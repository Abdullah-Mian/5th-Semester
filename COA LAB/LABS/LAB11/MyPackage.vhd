library ieee;
use ieee.std_logic_1164.all;

package MyPackage is

    component sevenSegement is
        port (
            bininput : in  std_logic_vector(3 downto 0);
            cathodes : out std_logic_vector(6 downto 0)
        );
    end component;

    component fetch is
        port (
            PC_out             : out STD_LOGIC_VECTOR (31 downto 0);
            instruction        : out STD_LOGIC_VECTOR (31 downto 0);
            branch_addr, 
            jump_addr          : in STD_LOGIC_VECTOR (31 downto 0);
            branch_decision, 
            jump_decision, 
            reset, 
            clock              : in std_logic
        );
    end component;
	 
	 component InstructionFetch is
    port (
		  instructionOut : out std_logic_VECTOR(31 downto 0);
        clk, reset, branch_des, jump_des : in std_logic
    );
	end component;
	
	component InstructionDecode is
    port (
        instruction    : in STD_LOGIC_VECTOR  (31 downto 0);
		  alu_result     : in STD_LOGIC_VECTOR  (31 downto 0);
		  memory_data    : in STD_LOGIC_VECTOR  (31 downto 0);
		  rs				  : out STD_LOGIC_VECTOR (31 downto 0);
		  rt				  : out STD_LOGIC_VECTOR (31 downto 0);
		  rd				  : out STD_LOGIC_VECTOR (31 downto 0);
        immediate      : out STD_LOGIC_VECTOR (31 downto 0);
        jump_addr		  : out STD_LOGIC_VECTOR (31 downto 0);
		  RegDst, RegWrite, MemToReg : in std_logic;
        reset, clock          : in std_logic
    );
	end component;
	
	component executeModule is
    port (
        register_rs, register_rt: in std_logic_vector(31 downto 0);
        PC4, immediate: in std_logic_vector(31 downto 0);
        ALUOp: in std_logic_vector(1 downto 0);
        ALUSrc: in std_logic;
        beq_control, clock: in std_logic;
        alu_result, branch_addr: out std_logic_vector(31 downto 0);
        branch_decision: out std_logic
    );
	end component;
	
	component mydecode is
    port (
        DecodeModuleOut : out STD_LOGIC_VECTOR (31 downto 0);

        clock, reset, branch_decision, jump_decision, RegisterWrite : in std_logic;
		  diplayDecison :in std_LOGIC_VECTOR(2 downto 0)
    );
	end component;

end package MyPackage;
