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
-- Generated on "10/18/2024 20:48:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          WheelOfFortune
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WheelOfFortune_vhd_vec_tst IS
END WheelOfFortune_vhd_vec_tst;
ARCHITECTURE WheelOfFortune_arch OF WheelOfFortune_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL ssd0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT WheelOfFortune
	PORT (
	clk : IN STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	ssd0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : WheelOfFortune
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	led => led,
	opcode => opcode,
	reset => reset,
	ssd0 => ssd0,
	ssd1 => ssd1,
	ssd2 => ssd2,
	ssd3 => ssd3
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 220000 ps;
	reset <= '1';
	WAIT FOR 150000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END WheelOfFortune_arch;
