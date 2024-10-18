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
-- Generated on "10/18/2024 18:48:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FourBitUpDownCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FourBitUpDownCounter_vhd_vec_tst IS
END FourBitUpDownCounter_vhd_vec_tst;
ARCHITECTURE FourBitUpDownCounter_arch OF FourBitUpDownCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binOut : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL opcode : STD_LOGIC;
COMPONENT FourBitUpDownCounter
	PORT (
	binOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	opcode : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FourBitUpDownCounter
	PORT MAP (
-- list connections between master ports and signals
	binOut => binOut,
	clk => clk,
	opcode => opcode
	);

-- opcode
t_prcs_opcode: PROCESS
BEGIN
	opcode <= '1';
WAIT;
END PROCESS t_prcs_opcode;

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
END FourBitUpDownCounter_arch;
