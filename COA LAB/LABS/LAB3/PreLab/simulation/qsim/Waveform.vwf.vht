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
-- Generated on "10/01/2024 09:43:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          circuit1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY circuit1_vhd_vec_tst IS
END circuit1_vhd_vec_tst;
ARCHITECTURE circuit1_arch OF circuit1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT circuit1
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	x : OUT STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : circuit1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	x => x,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 80000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 160000 ps;
	b <= '1';
	WAIT FOR 120000 ps;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '0';
	WAIT FOR 20000 ps;
	c <= '1';
	WAIT FOR 60000 ps;
	c <= '0';
	WAIT FOR 140000 ps;
	c <= '1';
	WAIT FOR 120000 ps;
	c <= '0';
WAIT;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
	WAIT FOR 220000 ps;
	d <= '1';
	WAIT FOR 120000 ps;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;
END circuit1_arch;
