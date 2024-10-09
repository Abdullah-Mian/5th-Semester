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
-- Generated on "10/08/2024 11:28:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fourBitCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fourBitCounter_vhd_vec_tst IS
END fourBitCounter_vhd_vec_tst;
ARCHITECTURE fourBitCounter_arch OF fourBitCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
COMPONENT fourBitCounter
	PORT (
	binOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fourBitCounter
	PORT MAP (
-- list connections between master ports and signals
	binOut => binOut,
	clk => clk
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END fourBitCounter_arch;