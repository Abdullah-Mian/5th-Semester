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
-- Generated on "10/22/2024 11:19:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MotionDetector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MotionDetector_vhd_vec_tst IS
END MotionDetector_vhd_vec_tst;
ARCHITECTURE MotionDetector_arch OF MotionDetector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL entered : STD_LOGIC;
SIGNAL exited : STD_LOGIC;
SIGNAL sensor : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT MotionDetector
	PORT (
	clk : IN STD_LOGIC;
	entered : OUT STD_LOGIC;
	exited : OUT STD_LOGIC;
	sensor : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MotionDetector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	entered => entered,
	exited => exited,
	sensor => sensor
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
-- sensor[1]
t_prcs_sensor_1: PROCESS
BEGIN
	sensor(1) <= '0';
	WAIT FOR 190000 ps;
	sensor(1) <= '1';
	WAIT FOR 110000 ps;
	sensor(1) <= '0';
WAIT;
END PROCESS t_prcs_sensor_1;
-- sensor[0]
t_prcs_sensor_0: PROCESS
BEGIN
	sensor(0) <= '0';
	WAIT FOR 110000 ps;
	sensor(0) <= '1';
	WAIT FOR 30000 ps;
	sensor(0) <= '0';
	WAIT FOR 50000 ps;
	sensor(0) <= '1';
	WAIT FOR 80000 ps;
	sensor(0) <= '0';
WAIT;
END PROCESS t_prcs_sensor_0;
END MotionDetector_arch;
