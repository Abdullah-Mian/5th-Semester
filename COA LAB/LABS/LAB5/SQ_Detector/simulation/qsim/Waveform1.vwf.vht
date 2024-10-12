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
-- Generated on "10/10/2024 19:49:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Sequence_Detector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Sequence_Detector_vhd_vec_tst IS
END Sequence_Detector_vhd_vec_tst;
ARCHITECTURE Sequence_Detector_arch OF Sequence_Detector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL result : STD_LOGIC;
SIGNAL x : STD_LOGIC;
COMPONENT Sequence_Detector
	PORT (
	clk : IN STD_LOGIC;
	result : BUFFER STD_LOGIC;
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Sequence_Detector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	result => result,
	x => x
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
	WAIT FOR 80000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 120000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
WAIT;
END PROCESS t_prcs_x;
END Sequence_Detector_arch;
