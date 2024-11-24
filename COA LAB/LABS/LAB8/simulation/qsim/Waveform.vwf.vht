-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2024 23:37:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mydecode
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mydecode_vhd_vec_tst IS
END mydecode_vhd_vec_tst;
ARCHITECTURE mydecode_arch OF mydecode_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL branch_decision : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL diplayDecison : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL jump_decision : STD_LOGIC;
SIGNAL RegisterWrite : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL SevenSegement0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT mydecode
	PORT (
	branch_decision : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	diplayDecison : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	jump_decision : IN STD_LOGIC;
	RegisterWrite : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	SevenSegement0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement6 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement7 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mydecode
	PORT MAP (
-- list connections between master ports and signals
	branch_decision => branch_decision,
	clock => clock,
	diplayDecison => diplayDecison,
	jump_decision => jump_decision,
	RegisterWrite => RegisterWrite,
	reset => reset,
	SevenSegement0 => SevenSegement0,
	SevenSegement1 => SevenSegement1,
	SevenSegement2 => SevenSegement2,
	SevenSegement3 => SevenSegement3,
	SevenSegement4 => SevenSegement4,
	SevenSegement5 => SevenSegement5,
	SevenSegement6 => SevenSegement6,
	SevenSegement7 => SevenSegement7
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 40000 ps;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- branch_decision
t_prcs_branch_decision: PROCESS
BEGIN
	branch_decision <= '0';
	WAIT FOR 30000 ps;
	branch_decision <= '1';
	WAIT FOR 140000 ps;
	branch_decision <= '0';
WAIT;
END PROCESS t_prcs_branch_decision;

-- jump_decision
t_prcs_jump_decision: PROCESS
BEGIN
	jump_decision <= '0';
WAIT;
END PROCESS t_prcs_jump_decision;

-- RegisterWrite
t_prcs_RegisterWrite: PROCESS
BEGIN
	RegisterWrite <= '0';
	WAIT FOR 130000 ps;
	RegisterWrite <= '1';
	WAIT FOR 40000 ps;
	RegisterWrite <= '0';
WAIT;
END PROCESS t_prcs_RegisterWrite;
-- diplayDecison[2]
t_prcs_diplayDecison_2: PROCESS
BEGIN
	diplayDecison(2) <= '0';
WAIT;
END PROCESS t_prcs_diplayDecison_2;
-- diplayDecison[1]
t_prcs_diplayDecison_1: PROCESS
BEGIN
	diplayDecison(1) <= '0';
WAIT;
END PROCESS t_prcs_diplayDecison_1;
-- diplayDecison[0]
t_prcs_diplayDecison_0: PROCESS
BEGIN
	diplayDecison(0) <= '1';
WAIT;
END PROCESS t_prcs_diplayDecison_0;
END mydecode_arch;
