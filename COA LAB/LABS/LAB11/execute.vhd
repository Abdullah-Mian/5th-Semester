library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MyPackage.all;

entity execute is
    port (
        clock            : in  std_logic;
        reset            : in  std_logic;
        PC4              : in  std_logic_vector(31 downto 0);
        alu_op           : in  std_logic_vector(1 downto 0);
        alu_src          : in  std_logic;
        beq_control      : in  std_logic;
        register_rs      : out std_logic_vector(31 downto 0);
        register_rt      : out std_logic_vector(31 downto 0);
        alu_result       : out std_logic_vector(31 downto 0);
        branch_addr      : out std_logic_vector(31 downto 0);
        branch_decision  : out std_logic
    );
end execute;

architecture Behavioral of execute is
    -- Internal signals to connect `mydecode` to `executeModule`
    signal decode_output        : std_logic_vector(31 downto 0);
    signal immediateWire        : std_logic_vector(31 downto 0);
    signal branchDecisionWire,ClockWire   : std_logic;
    signal register_rsWire      : std_logic_vector(31 downto 0);
    signal register_rtWire      : std_logic_vector(31 downto 0);
    signal alu_resultWire       : std_logic_vector(31 downto 0);
    signal branch_addrWire      : std_logic_vector(31 downto 0);

begin
    -- Instantiate the `mydecode` component
    mydecode_inst : mydecode
        port map (
            DecodeModuleOut => decode_output,
            clock           => clock,
            reset           => reset,
            branch_decision => branchDecisionWire,
            jump_decision   => beq_control,  -- Assuming jump decision is related to branch control
            RegisterWrite   => '1',          -- Example: Write enable signal
            diplayDecison   => "000"         -- Example: Decision signal (can be adjusted)
        );

    -- Extract `register_rsWire`, `register_rtWire`, and `immediateWire` from decode output
    register_rsWire <= decode_output(31 downto 16);
    register_rtWire <= decode_output(15 downto 0);
    immediateWire   <= decode_output(15 downto 0); -- Adjust if immediate data differs

    -- Map outputs of executeModule to component's outputs
    branch_decision <= branchDecisionWire;
    register_rs     <= register_rsWire;
    register_rt     <= register_rtWire;
    alu_result      <= alu_resultWire;
    branch_addr     <= branch_addrWire;
	 ClockWire		  <= clock;

    -- Instantiate the `executeModule` component
    execute_module_inst : executeModule
        port map (
            register_rs     => register_rsWire,
            register_rt     => register_rtWire,
            PC4             => PC4,
            immediate       => immediateWire,
            ALUOp           => alu_op,
            ALUSrc          => alu_src,
            beq_control     => beq_control,
				clock				 => clockWire,
            alu_result      => alu_resultWire,
            branch_addr     => branch_addrWire,
            branch_decision => branchDecisionWire
        );
end Behavioral;
