library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use work.MyPackage.all;

entity CU is
    port (
       resett : in std_logic;
       
       address : in std_logic_vector(31 downto 0);
       write_data : in std_logic_vector(31 downto 0);
       RegDstt, RegWritee, MemToRegg, AluSrcc,
       MemReadd, MemWritee, Jumpp, beq_controll : out std_logic;
       AluOpp : out std_logic_vector(1 downto 0);
       read_data : out std_logic_vector(31 downto 0)
    );
end CU;

architecture bhv of CU is

    -- Signals for internal connections
    signal RegDst, RegWrite, MemToReg, AluSrc : std_logic;
    signal MemRead, MemWrite, Jump, beq_control : std_logic;
    signal AluOp : std_logic_vector(1 downto 0);
    signal mem_read_data : std_logic_vector(31 downto 0);

begin

    -- Instantiate the control unit
    u_controlUnit: controlUnit
        port map (
            instruction => X"00000000",
            reset => resett,
            RegDst => RegDst,
            RegWrite => RegWrite,
            MemToReg => MemToReg,
            AluSrc => AluSrc,
            MemRead => MemRead,
            MemWrite => MemWrite,
            Jump => Jump,
            beq_control => beq_control,
            AluOp => AluOp
        );

    -- Instantiate the memory
    u_memory: memory
        port map (
            address => address,
            write_data => write_data,
            MemWrite => MemWrite,
            MemRead => MemRead,
            read_data => mem_read_data
        );

    -- Map outputs
    RegDstt <= RegDst;
    RegWritee <= RegWrite;
    MemToRegg <= MemToReg;
    AluSrcc <= AluSrc;
    MemReadd <= MemRead;
    MemWritee <= MemWrite;
    Jumpp <= Jump;
    beq_controll <= beq_control;
    AluOpp <= AluOp;
    read_data <= mem_read_data;

end bhv;
