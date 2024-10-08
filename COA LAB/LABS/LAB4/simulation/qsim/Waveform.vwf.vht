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
-- Generated on "10/08/2024 10:51:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dFlipFlop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dFlipFlop_vhd_vec_tst IS
END dFlipFlop_vhd_vec_tst;
ARCHITECTURE dFlipFlop_arch OF dFlipFlop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Qnot : STD_LOGIC;
COMPONENT dFlipFlop
	PORT (
	clk : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC;
	Qnot : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : dFlipFlop
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D => D,
	Q => Q,
	Qnot => Qnot
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 320000 ps;
	clk <= '0';
	WAIT FOR 60000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
	WAIT FOR 60000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
	WAIT FOR 140000 ps;
	D <= '1';
	WAIT FOR 200000 ps;
	D <= '0';
	WAIT FOR 60000 ps;
	D <= '1';
	WAIT FOR 80000 ps;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;
END dFlipFlop_arch;
