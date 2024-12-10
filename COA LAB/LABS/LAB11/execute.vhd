library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MyPackage.all;

entity execute is
    port (
        clock            : in  std_logic;
        reset            : in  std_logic;
        DisplayDecision  : in  std_logic_vector(3 downto 0);
        Output           : out std_logic_vector(6 downto 0)
    );
end execute;

architecture Behavioral of execute is
    signal PC_outWire, instructionWire, branch_addrWire, jump_addrWire, rsWire, rtWire, rdWire, immediateWire, alu_resultWire, memory_dataWire : std_logic_vector(31 downto 0);
    signal branch_decisionWire, jump_decisionWire, resetWire, ClockWire, RegDstWire, RegWriteWire, MemToRegWire, ALUSrcWire, MemReadWire, MemWriteWire, Jump, beq_controlWire : std_logic;
    signal ALUOpWire : std_logic_vector(1 downto 0);
    signal zero_flagWire : std_logic;
begin
    -- Fetch
    fetch_unit : fetch
        port map (
            PC_out           => PC_outWire,
            instruction      => instructionWire,
            branch_addr      => branch_addrWire,
            jump_addr        => jump_addrWire,
            branch_decision  => branch_decisionWire,
            jump_decision    => jump_decisionWire,
            reset            => resetWire,
            clock            => ClockWire
        );

    -- Instruction Decode
    decode_unit : InstructionDecode
        port map (
            instruction    => instructionWire,
            alu_result     => alu_resultWire,
            memory_data    => memory_dataWire,
            rs             => rsWire,
            rt             => rtWire,
            rd             => rdWire,
            immediate      => immediateWire,
            jump_addr      => jump_addrWire,
            RegDst         => RegDstWire,
            RegWrite       => RegWriteWire,
            MemToReg       => MemToRegWire,
            reset          => resetWire,
            clock          => ClockWire
        );

    -- Control Unit
    control_unit : controlUnit
        port map (
            instruction => instructionWire,
            reset       => resetWire,
            RegDst      => RegDstWire,
            RegWrite    => RegWriteWire,
            MemToReg    => MemToRegWire,
            ALUSrc      => ALUSrcWire,
            MemRead     => MemReadWire,
            MemWrite    => MemWriteWire,
            Jump        => jump_decisionWire,
            beq_control => beq_controlWire,
            ALUOp       => ALUOpWire
        );

    -- Execute Module
    execute_unit : executeModule
        port map (
            register_rs   => rsWire,
            register_rt   => rtWire,
            PC4           => PC_outWire,
            immediate     => immediateWire,
            ALUOp         => ALUOpWire,
            ALUSrc        => ALUSrcWire,
            beq_control   => beq_controlWire,
            alu_result    => alu_resultWire,
            branch_addr   => branch_addrWire,
            branch_decision => branch_decisionWire,
            zero_flag     => zero_flagWire
        );

    -- Memory
    memory_unit : memory
        port map (
            address     => alu_resultWire,
            write_data  => rtWire,
            MemWrite    => MemWriteWire,
            MemRead     => MemReadWire,
            read_data   => memory_dataWire
        );

    -- 7-Segment Display
    display_unit : sevenSegement
        port map (
            bininput => DisplayDecision,
            cathodes => Output
        );

    resetWire <= reset;
    ClockWire <= Clock;
end Behavioral;