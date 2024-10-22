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

-- DATE "10/22/2024 11:19:53"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MotionDetector IS
    PORT (
	clk : IN std_logic;
	sensor : IN std_logic_vector(1 DOWNTO 0);
	entered : OUT std_logic;
	exited : OUT std_logic
	);
END MotionDetector;

-- Design Ports Information
-- entered	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exited	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MotionDetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sensor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_entered : std_logic;
SIGNAL ww_exited : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entered~output_o\ : std_logic;
SIGNAL \exited~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \sensor[0]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \prevState[1]~0_combout\ : std_logic;
SIGNAL \prevState[1]~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \prevState[0]~4_combout\ : std_logic;
SIGNAL \enter~4_combout\ : std_logic;
SIGNAL \prevState[0]~5_combout\ : std_logic;
SIGNAL \prevState[0]~2_combout\ : std_logic;
SIGNAL \prevState[0]~3_combout\ : std_logic;
SIGNAL \prevState[0]~6_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \enter~5_combout\ : std_logic;
SIGNAL \enter~6_combout\ : std_logic;
SIGNAL \enter~11_combout\ : std_logic;
SIGNAL \enter~7_combout\ : std_logic;
SIGNAL \enter~8_combout\ : std_logic;
SIGNAL \enter~9_combout\ : std_logic;
SIGNAL \enter~10_combout\ : std_logic;
SIGNAL \enter~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \exitt~q\ : std_logic;
SIGNAL prevState : std_logic_vector(4 DOWNTO 0);
SIGNAL logicState : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_sensor <= sensor;
entered <= ww_entered;
exited <= ww_exited;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y73_N16
\entered~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enter~q\,
	devoe => ww_devoe,
	o => \entered~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\exited~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exitt~q\,
	devoe => ww_devoe,
	o => \exited~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y73_N22
\sensor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(1),
	o => \sensor[1]~input_o\);

-- Location: LCCOMB_X12_Y71_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!logicState(1) & (!logicState(3) & (logicState(2) $ (!logicState(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(1),
	datab => logicState(2),
	datac => logicState(0),
	datad => logicState(3),
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X13_Y73_N8
\sensor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor(0),
	o => \sensor[0]~input_o\);

-- Location: LCCOMB_X12_Y71_N4
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!logicState(4) & (\Mux2~0_combout\ & (!\sensor[0]~input_o\ & \sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => \Mux2~0_combout\,
	datac => \sensor[0]~input_o\,
	datad => \sensor[1]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: FF_X12_Y71_N5
\logicState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => logicState(2));

-- Location: LCCOMB_X11_Y71_N26
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (logicState(0) & (!logicState(3) & (logicState(2) $ (logicState(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(2),
	datab => logicState(0),
	datac => logicState(3),
	datad => logicState(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X11_Y71_N14
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (!logicState(4) & (\sensor[1]~input_o\ & \sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => logicState(4),
	datac => \sensor[1]~input_o\,
	datad => \sensor[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: FF_X11_Y71_N15
\logicState[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => logicState(3));

-- Location: LCCOMB_X11_Y71_N16
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (logicState(0) & (!logicState(1) & ((!logicState(2)) # (!\sensor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datab => logicState(0),
	datac => logicState(2),
	datad => logicState(1),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X12_Y71_N0
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (logicState(1) & ((logicState(2)) # ((!\sensor[0]~input_o\)))) # (!logicState(1) & (((!\sensor[1]~input_o\ & !\sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(2),
	datab => \sensor[1]~input_o\,
	datac => logicState(1),
	datad => \sensor[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X12_Y71_N26
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (logicState(4)) # ((\Mux4~1_combout\) # ((!logicState(0) & logicState(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => \Mux4~1_combout\,
	datac => logicState(0),
	datad => logicState(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X12_Y72_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\sensor[0]~input_o\ & \sensor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor[0]~input_o\,
	datad => \sensor[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X11_Y71_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!logicState(1) & !logicState(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => logicState(1),
	datad => logicState(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X12_Y71_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (logicState(3) & (((\Equal1~0_combout\) # (!\Mux0~0_combout\)))) # (!logicState(3) & (!logicState(0) & ((\Equal1~0_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(3),
	datab => logicState(0),
	datac => \Equal1~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X12_Y71_N22
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\Mux4~2_combout\ & (!\Mux4~0_combout\ & ((logicState(3)) # (!\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(3),
	datab => \Mux4~3_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: FF_X12_Y71_N23
\logicState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => logicState(0));

-- Location: LCCOMB_X12_Y71_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!logicState(1) & (!logicState(2) & (\sensor[1]~input_o\ $ (\sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datab => logicState(1),
	datac => logicState(2),
	datad => \sensor[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X11_Y71_N8
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (logicState(0) & (logicState(3) & (!logicState(4) & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(0),
	datab => logicState(3),
	datac => logicState(4),
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X11_Y71_N9
\logicState[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => logicState(4));

-- Location: LCCOMB_X11_Y71_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!logicState(3) & (!logicState(2) & (logicState(0) $ (!logicState(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(3),
	datab => logicState(0),
	datac => logicState(2),
	datad => logicState(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X12_Y71_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!logicState(4) & (\sensor[0]~input_o\ & (\Mux3~0_combout\ & !\sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => \sensor[0]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \sensor[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: FF_X12_Y71_N15
\logicState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => logicState(1));

-- Location: LCCOMB_X12_Y71_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (logicState(2)) # ((\sensor[1]~input_o\ & !logicState(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor[1]~input_o\,
	datac => logicState(1),
	datad => logicState(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X12_Y71_N8
\prevState[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[1]~0_combout\ = (logicState(0) & ((logicState(2) $ (!logicState(1))) # (!\Equal1~0_combout\))) # (!logicState(0) & ((logicState(2)) # ((logicState(1)) # (\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(2),
	datab => logicState(1),
	datac => logicState(0),
	datad => \Equal1~0_combout\,
	combout => \prevState[1]~0_combout\);

-- Location: LCCOMB_X12_Y71_N10
\prevState[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[1]~1_combout\ = (!logicState(4) & (!\prevState[1]~0_combout\ & !logicState(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datac => \prevState[1]~0_combout\,
	datad => logicState(3),
	combout => \prevState[1]~1_combout\);

-- Location: FF_X12_Y71_N3
\prevState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \prevState[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prevState(2));

-- Location: LCCOMB_X12_Y71_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (logicState(1)) # ((\sensor[0]~input_o\ & !\sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor[0]~input_o\,
	datac => logicState(1),
	datad => \sensor[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X12_Y71_N29
\prevState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	sclr => logicState(2),
	ena => \prevState[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prevState(1));

-- Location: LCCOMB_X13_Y71_N20
\prevState[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[0]~4_combout\ = (\sensor[1]~input_o\ & (\sensor[0]~input_o\ $ (!logicState(0)))) # (!\sensor[1]~input_o\ & (\sensor[0]~input_o\ & !logicState(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datac => \sensor[0]~input_o\,
	datad => logicState(0),
	combout => \prevState[0]~4_combout\);

-- Location: LCCOMB_X11_Y71_N12
\enter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~4_combout\ = (!\sensor[1]~input_o\ & (!logicState(3) & (!logicState(1) & !logicState(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datab => logicState(3),
	datac => logicState(1),
	datad => logicState(2),
	combout => \enter~4_combout\);

-- Location: LCCOMB_X12_Y71_N18
\prevState[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[0]~5_combout\ = (!\prevState[0]~4_combout\ & ((logicState(0) & (!prevState(0))) # (!logicState(0) & ((\enter~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(0),
	datab => prevState(0),
	datac => \prevState[0]~4_combout\,
	datad => \enter~4_combout\,
	combout => \prevState[0]~5_combout\);

-- Location: LCCOMB_X12_Y71_N6
\prevState[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[0]~2_combout\ = (logicState(1) & (logicState(0) $ (logicState(2)))) # (!logicState(1) & (logicState(0) & logicState(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => logicState(1),
	datac => logicState(0),
	datad => logicState(2),
	combout => \prevState[0]~2_combout\);

-- Location: LCCOMB_X12_Y71_N24
\prevState[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[0]~3_combout\ = (!logicState(3) & ((logicState(0) & (\prevState[0]~2_combout\)) # (!logicState(0) & (!\prevState[0]~2_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(0),
	datab => logicState(3),
	datac => \prevState[0]~2_combout\,
	datad => \Mux0~1_combout\,
	combout => \prevState[0]~3_combout\);

-- Location: LCCOMB_X12_Y71_N16
\prevState[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \prevState[0]~6_combout\ = (logicState(4) & (((prevState(0))))) # (!logicState(4) & (!\prevState[0]~5_combout\ & ((prevState(0)) # (\prevState[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => \prevState[0]~5_combout\,
	datac => prevState(0),
	datad => \prevState[0]~3_combout\,
	combout => \prevState[0]~6_combout\);

-- Location: FF_X12_Y71_N17
\prevState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prevState[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prevState(0));

-- Location: LCCOMB_X11_Y71_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!prevState(2) & (prevState(1) & (logicState(4) & prevState(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prevState(2),
	datab => prevState(1),
	datac => logicState(4),
	datad => prevState(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X11_Y71_N30
\enter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~5_combout\ = (\sensor[0]~input_o\ & (((logicState(4))) # (!logicState(0)))) # (!\sensor[0]~input_o\ & (!\enter~4_combout\ & ((logicState(4)) # (!logicState(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[0]~input_o\,
	datab => logicState(0),
	datac => logicState(4),
	datad => \enter~4_combout\,
	combout => \enter~5_combout\);

-- Location: LCCOMB_X11_Y71_N20
\enter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~6_combout\ = (logicState(4) & (((logicState(2) & logicState(1))) # (!logicState(0)))) # (!logicState(4) & (logicState(2) & (logicState(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => logicState(2),
	datac => logicState(1),
	datad => logicState(0),
	combout => \enter~6_combout\);

-- Location: LCCOMB_X11_Y71_N22
\enter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~11_combout\ = (!\Mux0~0_combout\ & (((logicState(3)) # (!\sensor[0]~input_o\)) # (!\sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datab => logicState(3),
	datac => \sensor[0]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \enter~11_combout\);

-- Location: LCCOMB_X11_Y71_N4
\enter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~7_combout\ = (!logicState(1) & (logicState(0) & (\sensor[1]~input_o\ $ (!\sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor[1]~input_o\,
	datab => \sensor[0]~input_o\,
	datac => logicState(1),
	datad => logicState(0),
	combout => \enter~7_combout\);

-- Location: LCCOMB_X11_Y71_N6
\enter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~8_combout\ = (!logicState(3) & (logicState(1) $ (logicState(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => logicState(3),
	datac => logicState(1),
	datad => logicState(0),
	combout => \enter~8_combout\);

-- Location: LCCOMB_X11_Y71_N24
\enter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~9_combout\ = (!logicState(4) & (!logicState(2) & ((\enter~7_combout\) # (\enter~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => logicState(4),
	datab => logicState(2),
	datac => \enter~7_combout\,
	datad => \enter~8_combout\,
	combout => \enter~9_combout\);

-- Location: LCCOMB_X11_Y71_N2
\enter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \enter~10_combout\ = (!\enter~5_combout\ & (!\enter~6_combout\ & (!\enter~11_combout\ & !\enter~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enter~5_combout\,
	datab => \enter~6_combout\,
	datac => \enter~11_combout\,
	datad => \enter~9_combout\,
	combout => \enter~10_combout\);

-- Location: FF_X11_Y71_N29
enter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \enter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter~q\);

-- Location: LCCOMB_X11_Y71_N18
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (logicState(4) & ((prevState(2)) # ((!prevState(0)) # (!prevState(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prevState(2),
	datab => prevState(1),
	datac => logicState(4),
	datad => prevState(0),
	combout => \Mux11~0_combout\);

-- Location: FF_X11_Y71_N19
exitt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \enter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exitt~q\);

ww_entered <= \entered~output_o\;

ww_exited <= \exited~output_o\;
END structure;


