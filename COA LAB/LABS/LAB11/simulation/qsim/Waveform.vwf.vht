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
-- Generated on "12/20/2024 05:04:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          execute
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY execute_vhd_vec_tst IS
END execute_vhd_vec_tst;
ARCHITECTURE execute_arch OF execute_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL DisplayDecision : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outPut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL SevenSegement0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SevenSegement7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT execute
	PORT (
	clock : IN STD_LOGIC;
	DisplayDecision : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outPut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	SevenSegement0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SevenSegement7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : execute
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	DisplayDecision => DisplayDecision,
	outPut => outPut,
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
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 80000 ps;
	clock <= '0';
	WAIT FOR 230000 ps;
	clock <= '1';
	WAIT FOR 140000 ps;
	clock <= '0';
	WAIT FOR 70000 ps;
	clock <= '1';
	WAIT FOR 120000 ps;
	clock <= '0';
	WAIT FOR 250000 ps;
	clock <= '1';
WAIT;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- DisplayDecision[3]
t_prcs_DisplayDecision_3: PROCESS
BEGIN
	DisplayDecision(3) <= '0';
WAIT;
END PROCESS t_prcs_DisplayDecision_3;
-- DisplayDecision[2]
t_prcs_DisplayDecision_2: PROCESS
BEGIN
	DisplayDecision(2) <= '0';
	WAIT FOR 260000 ps;
	DisplayDecision(2) <= '1';
	WAIT FOR 60000 ps;
	DisplayDecision(2) <= '0';
	WAIT FOR 130000 ps;
	DisplayDecision(2) <= '1';
	WAIT FOR 80000 ps;
	DisplayDecision(2) <= '0';
	WAIT FOR 100000 ps;
	DisplayDecision(2) <= '1';
	WAIT FOR 200000 ps;
	DisplayDecision(2) <= '0';
WAIT;
END PROCESS t_prcs_DisplayDecision_2;
-- DisplayDecision[1]
t_prcs_DisplayDecision_1: PROCESS
BEGIN
	DisplayDecision(1) <= '0';
	WAIT FOR 190000 ps;
	DisplayDecision(1) <= '1';
	WAIT FOR 70000 ps;
	DisplayDecision(1) <= '0';
WAIT;
END PROCESS t_prcs_DisplayDecision_1;
-- DisplayDecision[0]
t_prcs_DisplayDecision_0: PROCESS
BEGIN
	DisplayDecision(0) <= '0';
	WAIT FOR 100000 ps;
	DisplayDecision(0) <= '1';
	WAIT FOR 730000 ps;
	DisplayDecision(0) <= '0';
WAIT;
END PROCESS t_prcs_DisplayDecision_0;
END execute_arch;
