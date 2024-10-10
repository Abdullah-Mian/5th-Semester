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

-- DATE "10/10/2024 11:08:30"

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
	remaind : BUFFER std_logic_vector(3 DOWNTO 0);
	quot : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END FSMdiv;

-- Design Ports Information
-- remaind[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaind[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quot[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- letstart	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \remaind[0]~output_o\ : std_logic;
SIGNAL \remaind[1]~output_o\ : std_logic;
SIGNAL \remaind[2]~output_o\ : std_logic;
SIGNAL \remaind[3]~output_o\ : std_logic;
SIGNAL \quot[0]~output_o\ : std_logic;
SIGNAL \quot[1]~output_o\ : std_logic;
SIGNAL \quot[2]~output_o\ : std_logic;
SIGNAL \quot[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \letstart~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \x[0]~0_combout\ : std_logic;
SIGNAL \x[0]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \x[3]~2_combout\ : std_logic;
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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOIBUF_X115_Y17_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\letstart~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_letstart,
	o => \letstart~input_o\);

-- Location: LCCOMB_X96_Y25_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (mystate(1) & (x(0) $ (x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datac => x(1),
	datad => mystate(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X96_Y25_N8
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!x(2) & (mystate(1) & ((!x(0)) # (!x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datab => x(1),
	datac => mystate(1),
	datad => x(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X96_Y25_N2
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (x(3) & (\Mux12~0_combout\ & (!mystate(2) & mystate(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => \Mux12~0_combout\,
	datac => mystate(2),
	datad => mystate(0),
	combout => \Mux12~1_combout\);

-- Location: FF_X96_Y25_N3
\mystate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(2));

-- Location: LCCOMB_X96_Y25_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!mystate(2) & ((mystate(1) & (mystate(0))) # (!mystate(1) & (!mystate(0) & \letstart~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => mystate(2),
	datac => mystate(0),
	datad => \letstart~input_o\,
	combout => \Mux14~0_combout\);

-- Location: FF_X96_Y25_N5
\mystate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(0));

-- Location: LCCOMB_X96_Y25_N10
\x[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~0_combout\ = (mystate(2)) # (mystate(0) $ (mystate(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mystate(0),
	datac => mystate(1),
	datad => mystate(2),
	combout => \x[0]~0_combout\);

-- Location: LCCOMB_X96_Y25_N18
\x[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~1_combout\ = (!\x[0]~0_combout\ & ((!\Mux12~0_combout\) # (!x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x(3),
	datac => \Mux12~0_combout\,
	datad => \x[0]~0_combout\,
	combout => \x[0]~1_combout\);

-- Location: FF_X96_Y25_N25
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux2~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: LCCOMB_X96_Y25_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (mystate(1) & (x(2) $ (((!x(1)) # (!x(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => x(0),
	datac => x(2),
	datad => x(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X96_Y25_N27
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux1~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: LCCOMB_X96_Y25_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!x(2) & ((!x(1)) # (!x(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datac => x(0),
	datad => x(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y25_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!mystate(2) & (mystate(0) $ (!mystate(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mystate(0),
	datac => mystate(1),
	datad => mystate(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X96_Y25_N0
\x[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[3]~2_combout\ = (\Mux13~0_combout\ & (mystate(1) & ((\LessThan0~0_combout\) # (x(3))))) # (!\Mux13~0_combout\ & (((x(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => \LessThan0~0_combout\,
	datac => x(3),
	datad => \Mux13~0_combout\,
	combout => \x[3]~2_combout\);

-- Location: FF_X96_Y25_N1
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \x[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: LCCOMB_X96_Y25_N6
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

-- Location: LCCOMB_X96_Y25_N30
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~0_combout\ & ((\Mux13~1_combout\) # ((!\LessThan0~0_combout\ & mystate(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => mystate(1),
	datad => \Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: FF_X96_Y25_N31
\mystate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mystate(1));

-- Location: LCCOMB_X96_Y25_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (mystate(1) & !x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datac => x(0),
	combout => \Mux3~0_combout\);

-- Location: FF_X96_Y25_N21
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux3~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: LCCOMB_X95_Y25_N20
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!mystate(1) & (mystate(2) & mystate(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => mystate(2),
	datad => mystate(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X95_Y25_N21
\remaind[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => x(0),
	sload => VCC,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[0]~reg0_q\);

-- Location: LCCOMB_X95_Y25_N26
\remaind[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[1]~reg0feeder_combout\ = x(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(1),
	combout => \remaind[1]~reg0feeder_combout\);

-- Location: FF_X95_Y25_N27
\remaind[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \remaind[1]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[1]~reg0_q\);

-- Location: LCCOMB_X95_Y25_N28
\remaind[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[2]~reg0feeder_combout\ = x(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(2),
	combout => \remaind[2]~reg0feeder_combout\);

-- Location: FF_X95_Y25_N29
\remaind[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \remaind[2]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[2]~reg0_q\);

-- Location: LCCOMB_X95_Y25_N22
\remaind[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \remaind[3]~0_combout\ = !x(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(3),
	combout => \remaind[3]~0_combout\);

-- Location: FF_X95_Y25_N23
\remaind[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \remaind[3]~0_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \remaind[3]~reg0_q\);

-- Location: LCCOMB_X95_Y25_N24
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

-- Location: FF_X95_Y25_N25
\quot[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \quot[0]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[0]~reg0_q\);

-- Location: LCCOMB_X95_Y25_N18
\quot[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[1]~reg0feeder_combout\ = x(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x(1),
	combout => \quot[1]~reg0feeder_combout\);

-- Location: FF_X95_Y25_N19
\quot[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \quot[1]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[1]~reg0_q\);

-- Location: LCCOMB_X96_Y25_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (mystate(1) & (q(2) $ (((x(0) & x(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mystate(1),
	datab => x(0),
	datac => q(2),
	datad => x(1),
	combout => \Mux9~0_combout\);

-- Location: FF_X96_Y25_N23
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux9~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X95_Y25_N16
\quot[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \quot[2]~reg0feeder_combout\ = q(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q(2),
	combout => \quot[2]~reg0feeder_combout\);

-- Location: FF_X95_Y25_N17
\quot[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \quot[2]~reg0feeder_combout\,
	ena => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quot[2]~reg0_q\);

-- Location: LCCOMB_X96_Y25_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = q(3) $ (((q(2) & (x(1) & x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => x(1),
	datac => q(3),
	datad => x(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X96_Y25_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (mystate(1) & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mystate(1),
	datad => \Add1~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X96_Y25_N13
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux8~0_combout\,
	ena => \x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X95_Y25_N10
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

-- Location: FF_X95_Y25_N11
\quot[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
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


