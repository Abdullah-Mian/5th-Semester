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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/17/2024 02:12:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(3 DOWNTO 0);
	carry : BUFFER std_logic;
	opcode : IN std_logic_vector(2 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- result[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carry : std_logic;
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \carry~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \result~13_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \U3|U2|borr~0_combout\ : std_logic;
SIGNAL \U1|U2|carry~0_combout\ : std_logic;
SIGNAL \result~11_combout\ : std_logic;
SIGNAL \result~12_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \U3|U3|borr~0_combout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \result~9_combout\ : std_logic;
SIGNAL \result~10_combout\ : std_logic;
SIGNAL \result~8_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_y <= y;
result <= ww_result;
carry <= ww_carry;
ww_opcode <= opcode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~1_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~3_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~5_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~8_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\carry~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry~2_combout\,
	devoe => ww_devoe,
	o => \carry~output_o\);

-- Location: IOIBUF_X115_Y11_N8
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X109_Y10_N24
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (!\opcode[1]~input_o\ & (\opcode[2]~input_o\ $ (\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \result~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X109_Y10_N26
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\x[0]~input_o\ & (\result~0_combout\ $ (((!\opcode[2]~input_o\ & !\y[0]~input_o\))))) # (!\x[0]~input_o\ & ((\result~0_combout\ & (\opcode[2]~input_o\ & \y[0]~input_o\)) # (!\result~0_combout\ & ((\opcode[2]~input_o\) # 
-- (\y[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \result~0_combout\,
	datac => \opcode[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \result~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X109_Y10_N12
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\opcode[2]~input_o\ & (((\x[1]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & (\y[1]~input_o\ $ (\x[1]~input_o\))) # (!\opcode[1]~input_o\ & (\y[1]~input_o\ & \x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \y[1]~input_o\,
	datad => \x[1]~input_o\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X109_Y10_N28
\result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~13_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & (\y[0]~input_o\ & (\x[0]~input_o\ $ (\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \y[0]~input_o\,
	combout => \result~13_combout\);

-- Location: LCCOMB_X109_Y10_N6
\result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~14_combout\ = (\opcode[2]~input_o\ & ((\result~13_combout\) # ((\y[1]~input_o\ & !\x[1]~input_o\)))) # (!\opcode[2]~input_o\ & (\result~13_combout\ $ (\y[1]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \result~13_combout\,
	datac => \y[1]~input_o\,
	datad => \x[1]~input_o\,
	combout => \result~14_combout\);

-- Location: LCCOMB_X109_Y10_N14
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\opcode[0]~input_o\ & (\result~2_combout\ $ (((\opcode[2]~input_o\))))) # (!\opcode[0]~input_o\ & (\result~14_combout\ $ (((\result~2_combout\ & \opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~2_combout\,
	datab => \opcode[0]~input_o\,
	datac => \result~14_combout\,
	datad => \opcode[2]~input_o\,
	combout => \result~3_combout\);

-- Location: IOIBUF_X115_Y15_N8
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X109_Y10_N0
\U3|U2|borr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|borr~0_combout\ = (\x[1]~input_o\ & (!\x[0]~input_o\ & (\y[1]~input_o\ & \y[0]~input_o\))) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # ((!\x[0]~input_o\ & \y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[1]~input_o\,
	datac => \y[1]~input_o\,
	datad => \y[0]~input_o\,
	combout => \U3|U2|borr~0_combout\);

-- Location: LCCOMB_X109_Y10_N2
\U1|U2|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|U2|carry~0_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\) # ((\x[0]~input_o\ & \y[0]~input_o\)))) # (!\x[1]~input_o\ & (\x[0]~input_o\ & (\y[1]~input_o\ & \y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[1]~input_o\,
	datac => \y[1]~input_o\,
	datad => \y[0]~input_o\,
	combout => \U1|U2|carry~0_combout\);

-- Location: LCCOMB_X109_Y11_N6
\result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~11_combout\ = (\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & (\U3|U2|borr~0_combout\)) # (!\opcode[1]~input_o\ & ((\U1|U2|carry~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \U3|U2|borr~0_combout\,
	datac => \opcode[1]~input_o\,
	datad => \U1|U2|carry~0_combout\,
	combout => \result~11_combout\);

-- Location: LCCOMB_X109_Y11_N24
\result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~12_combout\ = (\opcode[2]~input_o\ & ((\result~11_combout\) # ((\y[2]~input_o\ & !\x[2]~input_o\)))) # (!\opcode[2]~input_o\ & (\y[2]~input_o\ $ (\x[2]~input_o\ $ (\result~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \x[2]~input_o\,
	datad => \result~11_combout\,
	combout => \result~12_combout\);

-- Location: LCCOMB_X109_Y11_N0
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\opcode[2]~input_o\ & (\x[2]~input_o\)) # (!\opcode[2]~input_o\ & ((\x[2]~input_o\ & (\opcode[1]~input_o\ $ (\y[2]~input_o\))) # (!\x[2]~input_o\ & (\opcode[1]~input_o\ & \y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \x[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \y[2]~input_o\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X109_Y11_N2
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\opcode[0]~input_o\ & (\opcode[2]~input_o\ $ (((\result~4_combout\))))) # (!\opcode[0]~input_o\ & (\result~12_combout\ $ (((\opcode[2]~input_o\ & \result~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \result~12_combout\,
	datac => \opcode[0]~input_o\,
	datad => \result~4_combout\,
	combout => \result~5_combout\);

-- Location: IOIBUF_X115_Y4_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X109_Y11_N28
\result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\opcode[2]~input_o\ & (((\x[3]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & (\x[3]~input_o\ $ (\y[3]~input_o\))) # (!\opcode[1]~input_o\ & (\x[3]~input_o\ & \y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	combout => \result~6_combout\);

-- Location: LCCOMB_X109_Y11_N22
\U3|U3|borr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U3|borr~0_combout\ = (\U3|U2|borr~0_combout\ & ((\y[2]~input_o\) # (!\x[2]~input_o\))) # (!\U3|U2|borr~0_combout\ & (!\x[2]~input_o\ & \y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U2|borr~0_combout\,
	datac => \x[2]~input_o\,
	datad => \y[2]~input_o\,
	combout => \U3|U3|borr~0_combout\);

-- Location: LCCOMB_X109_Y11_N16
\result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\U1|U2|carry~0_combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\))) # (!\U1|U2|carry~0_combout\ & (\x[2]~input_o\ & \y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|carry~0_combout\,
	datac => \x[2]~input_o\,
	datad => \y[2]~input_o\,
	combout => \result~7_combout\);

-- Location: LCCOMB_X109_Y11_N10
\result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~9_combout\ = (\opcode[1]~input_o\ & ((\U3|U3|borr~0_combout\) # ((\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & (((\result~7_combout\ & !\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U3|borr~0_combout\,
	datab => \result~7_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \result~9_combout\);

-- Location: LCCOMB_X109_Y11_N20
\result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~10_combout\ = (\opcode[2]~input_o\ & ((\result~9_combout\) # ((!\x[3]~input_o\ & \y[3]~input_o\)))) # (!\opcode[2]~input_o\ & (\result~9_combout\ $ (\x[3]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \result~9_combout\,
	datac => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	combout => \result~10_combout\);

-- Location: LCCOMB_X109_Y11_N18
\result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~8_combout\ = (\opcode[0]~input_o\ & (\opcode[2]~input_o\ $ ((\result~6_combout\)))) # (!\opcode[0]~input_o\ & (\result~10_combout\ $ (((\opcode[2]~input_o\ & \result~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \result~6_combout\,
	datac => \opcode[0]~input_o\,
	datad => \result~10_combout\,
	combout => \result~8_combout\);

-- Location: LCCOMB_X109_Y11_N12
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\opcode[0]~input_o\ & ((\x[3]~input_o\ & (\U3|U3|borr~0_combout\ & \y[3]~input_o\)) # (!\x[3]~input_o\ & ((\U3|U3|borr~0_combout\) # (\y[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \U3|U3|borr~0_combout\,
	datad => \y[3]~input_o\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X109_Y11_N14
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (!\opcode[0]~input_o\ & ((\x[3]~input_o\ & ((\result~7_combout\) # (\y[3]~input_o\))) # (!\x[3]~input_o\ & (\result~7_combout\ & \y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \result~7_combout\,
	datac => \opcode[0]~input_o\,
	datad => \y[3]~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X109_Y11_N8
\carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = (!\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & ((\carry~0_combout\) # (\carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~0_combout\,
	datab => \carry~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \carry~2_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_carry <= \carry~output_o\;
END structure;


