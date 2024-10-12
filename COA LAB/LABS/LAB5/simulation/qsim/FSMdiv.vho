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

-- DATE "10/10/2024 18:28:57"

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

ENTITY 	FSMdiv IS
    PORT (
	clk : IN std_logic;
	letstart : IN std_logic;
	remaind : OUT std_logic_vector(3 DOWNTO 0);
	quot : OUT std_logic_vector(3 DOWNTO 0)
	);
END FSMdiv;

-- Design Ports Information
-- remaind[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- letstart	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSMdiv IS
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
SIGNAL ww_letstart : std_logic;
SIGNAL ww_remaind : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_quot : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \remaind[0]~output_o\ : std_logic;
SIGNAL \remaind[1]~output_o\ : std_logic;
SIGNAL \remaind[2]~output_o\ : std_logic;
SIGNAL \remaind[3]~output_o\ : std_logic;
SIGNAL \quot[0]~output_o\ : std_logic;
SIGNAL \quot[1]~output_o\ : std_logic;
SIGNAL \quot[2]~output_o\ : std_logic;
SIGNAL \quot[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \letstart~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \x[0]~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \x[0]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \x[3]~2_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \remaind[0]~reg0_q\ : std_logic;
SIGNAL \remaind[1]~reg0feeder_combout\ : std_logic;
SIGNAL \remaind[1]~reg0_q\ : std_logic;
SIGNAL \remaind[2]~reg0feeder_combout\ : std_logic;
SIGNAL \remaind[2]~reg0_q\ : std_logic;
SIGNAL \remaind[3]~0_combout\ : std_logic;
SIGNAL \remaind[3]~reg0_q\ : std_logic;
SIGNAL \quot[0]~reg0feeder_combout\ : std_logic;
SIGNAL \quot[0]~reg0_q\ : std_logic;
SIGNAL \quot[1]~reg0feeder_combout\ : std_logic;
SIGNAL \quot[1]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \quot[2]~reg0feeder_combout\ : std_logic;
SIGNAL \quot[2]~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \quot[3]~reg0feeder_combout\ : std_logic;
SIGNAL \quot[3]~reg0_q\ : std_logic;
SIGNAL x : std_logic_vector(3 DOWNTO 0);
SIGNAL mystate : std_logic_vector(2 DOWNTO 0);
SIGNAL q : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_letstart <= letstart;
remaind <= ww_remaind;
quot <= ww_quot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y5_N16
\remaind[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remaind[0]~reg0_q\,
	devoe => ww_devoe,
	o => \remaind[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\remaind[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remaind[1]~reg0_q\,
	devoe => ww_devoe,
	o => \remaind[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\remaind[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remaind[2]~reg0_q\,
	devoe => ww_devoe,
	o => \remaind[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\remaind[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remaind[3]~reg0_q\,
	devoe => ww_devoe,
	o => \remaind[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\quot[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quot[0]~reg0_q\,
	devoe => ww_devoe,
	o => \quot[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\quot[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quot[1]~reg0_q\,
	devoe => ww_devoe,
	o => \quot[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\quot[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quot[2]~reg0_q\,
	devoe => ww_devoe,
	o => \quot[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\quot[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quot[3]~reg0_q\,
	devoe => ww_devoe,
	o => \quot[3]~output_o\);

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

-- Location: IOIBUF_X0_Y4_N22
\letstart~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_letstart,
	o => \letstart~input_o\);

-- Location: LCCOMB_X2_Y7_N12
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!mystate(2) & ((mystate(1) & (mystate(0))) # (!mystate(1) & (!mystate(0) & \letstart~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(2),
	datab => mystate(1),
	datac => mystate(0),
	datad => \letstart~input_o\,
	combout => \Mux14~0_combout\);

-- Location: FF_X2_Y7_N13
\mystate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(0));

-- Location: LCCOMB_X2_Y7_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (mystate(1) & (x(1) $ (x(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mystate(1),
	datac => x(1),
	datad => x(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y7_N14
\x[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~0_combout\ = (mystate(2)) # (mystate(1) $ (mystate(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(2),
	datac => mystate(1),
	datad => mystate(0),
	combout => \x[0]~0_combout\);

-- Location: LCCOMB_X2_Y7_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (mystate(1) & (!x(2) & ((!x(0)) # (!x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => x(1),
	datac => x(0),
	datad => x(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X2_Y7_N30
\x[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~1_combout\ = (!\x[0]~0_combout\ & ((!\Mux12~0_combout\) # (!x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(3),
	datac => \x[0]~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \x[0]~1_combout\);

-- Location: FF_X2_Y7_N9
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: LCCOMB_X2_Y7_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (mystate(1) & (x(2) $ (((!x(1)) # (!x(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => mystate(1),
	datac => x(2),
	datad => x(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X2_Y7_N19
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: LCCOMB_X2_Y7_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!x(2) & ((!x(0)) # (!x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(2),
	datac => x(1),
	datad => x(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y7_N16
\x[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[3]~2_combout\ = (\Mux13~0_combout\ & (mystate(1) & ((x(3)) # (\LessThan0~0_combout\)))) # (!\Mux13~0_combout\ & (((x(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => \Mux13~0_combout\,
	datac => x(3),
	datad => \LessThan0~0_combout\,
	combout => \x[3]~2_combout\);

-- Location: FF_X2_Y7_N17
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: LCCOMB_X2_Y7_N26
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (mystate(0) & (x(3) & (!mystate(2) & \Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(0),
	datab => x(3),
	datac => mystate(2),
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X2_Y7_N27
\mystate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(2));

-- Location: LCCOMB_X2_Y7_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!mystate(2) & (mystate(0) $ (!mystate(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(2),
	datac => mystate(0),
	datad => mystate(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X2_Y7_N6
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (mystate(1) & ((!x(3)))) # (!mystate(1) & (\letstart~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letstart~input_o\,
	datac => mystate(1),
	datad => x(3),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X2_Y7_N22
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~0_combout\ & ((\Mux13~1_combout\) # ((!\LessThan0~0_combout\ & mystate(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => mystate(1),
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: FF_X2_Y7_N23
\mystate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(1));

-- Location: LCCOMB_X2_Y7_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!x(0) & mystate(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	datad => mystate(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X2_Y7_N5
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: LCCOMB_X1_Y7_N24
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (mystate(0) & (mystate(2) & !mystate(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(0),
	datab => mystate(2),
	datad => mystate(1),
	combout => \Mux18~0_combout\);

-- Location: FF_X1_Y7_N25
\remaind[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x(0),
	sload => VCC,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[0]~reg0_q\);

-- Location: LCCOMB_X1_Y7_N6
\remaind[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[1]~reg0feeder_combout\ = x(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(1),
	combout => \remaind[1]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N7
\remaind[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remaind[1]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[1]~reg0_q\);

-- Location: LCCOMB_X1_Y7_N28
\remaind[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[2]~reg0feeder_combout\ = x(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(2),
	combout => \remaind[2]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N29
\remaind[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remaind[2]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[2]~reg0_q\);

-- Location: LCCOMB_X1_Y7_N14
\remaind[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[3]~0_combout\ = !x(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(3),
	combout => \remaind[3]~0_combout\);

-- Location: FF_X1_Y7_N15
\remaind[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \remaind[3]~0_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[3]~reg0_q\);

-- Location: LCCOMB_X1_Y7_N20
\quot[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[0]~reg0feeder_combout\ = x(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	combout => \quot[0]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N21
\quot[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quot[0]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[0]~reg0_q\);

-- Location: LCCOMB_X1_Y7_N30
\quot[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[1]~reg0feeder_combout\ = x(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(1),
	combout => \quot[1]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N31
\quot[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quot[1]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[1]~reg0_q\);

-- Location: LCCOMB_X2_Y7_N10
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (mystate(1) & (q(2) $ (((x(0) & x(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => mystate(1),
	datac => q(2),
	datad => x(1),
	combout => \Mux9~0_combout\);

-- Location: FF_X2_Y7_N11
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X1_Y7_N12
\quot[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[2]~reg0feeder_combout\ = q(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(2),
	combout => \quot[2]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N13
\quot[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quot[2]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[2]~reg0_q\);

-- Location: LCCOMB_X2_Y7_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = q(3) $ (((x(0) & (q(2) & x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => q(2),
	datac => q(3),
	datad => x(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X2_Y7_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (mystate(1) & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mystate(1),
	datad => \Add1~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X2_Y7_N25
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X1_Y7_N26
\quot[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[3]~reg0feeder_combout\ = q(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(3),
	combout => \quot[3]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N27
\quot[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quot[3]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[3]~reg0_q\);

ww_remaind(0) <= \remaind[0]~output_o\;

ww_remaind(1) <= \remaind[1]~output_o\;

ww_remaind(2) <= \remaind[2]~output_o\;

ww_remaind(3) <= \remaind[3]~output_o\;

ww_quot(0) <= \quot[0]~output_o\;

ww_quot(1) <= \quot[1]~output_o\;

ww_quot(2) <= \quot[2]~output_o\;

ww_quot(3) <= \quot[3]~output_o\;
END structure;


