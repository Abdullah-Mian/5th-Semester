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

-- DATE "10/08/2024 11:29:33"

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

ENTITY 	fourBitCounter IS
    PORT (
	binOut : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic
	);
END fourBitCounter;

-- Design Ports Information
-- binOut[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binOut[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binOut[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binOut[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \binOut[0]~output_o\ : std_logic;
SIGNAL \binOut[1]~output_o\ : std_logic;
SIGNAL \binOut[2]~output_o\ : std_logic;
SIGNAL \binOut[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Qnot~0_combout\ : std_logic;
SIGNAL \U1|Qnot~q\ : std_logic;
SIGNAL \U1|Q~feeder_combout\ : std_logic;
SIGNAL \U1|Q~q\ : std_logic;
SIGNAL \U2|Q~0_combout\ : std_logic;
SIGNAL \U2|Q~q\ : std_logic;
SIGNAL \U3|Q~0_combout\ : std_logic;
SIGNAL \U3|Q~q\ : std_logic;
SIGNAL \U4|Q~0_combout\ : std_logic;
SIGNAL \U4|Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

binOut <= ww_binOut;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y73_N9
\binOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Q~q\,
	devoe => ww_devoe,
	o => \binOut[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\binOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Q~q\,
	devoe => ww_devoe,
	o => \binOut[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\binOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Q~q\,
	devoe => ww_devoe,
	o => \binOut[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\binOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Q~q\,
	devoe => ww_devoe,
	o => \binOut[3]~output_o\);

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

-- Location: LCCOMB_X42_Y72_N16
\U1|Qnot~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Qnot~0_combout\ = !\U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Q~q\,
	combout => \U1|Qnot~0_combout\);

-- Location: FF_X42_Y72_N17
\U1|Qnot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Qnot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qnot~q\);

-- Location: LCCOMB_X42_Y72_N24
\U1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Q~feeder_combout\ = \U1|Qnot~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Qnot~q\,
	combout => \U1|Q~feeder_combout\);

-- Location: FF_X42_Y72_N25
\U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Q~q\);

-- Location: LCCOMB_X42_Y72_N18
\U2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Q~0_combout\ = \U2|Q~q\ $ (\U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Q~q\,
	datad => \U1|Q~q\,
	combout => \U2|Q~0_combout\);

-- Location: FF_X42_Y72_N19
\U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q~q\);

-- Location: LCCOMB_X42_Y72_N20
\U3|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Q~0_combout\ = \U3|Q~q\ $ (((\U2|Q~q\ & \U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Q~q\,
	datac => \U3|Q~q\,
	datad => \U1|Q~q\,
	combout => \U3|Q~0_combout\);

-- Location: FF_X42_Y72_N21
\U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Q~q\);

-- Location: LCCOMB_X42_Y72_N26
\U4|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Q~0_combout\ = \U4|Q~q\ $ (((\U1|Q~q\ & (\U3|Q~q\ & \U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q~q\,
	datab => \U3|Q~q\,
	datac => \U4|Q~q\,
	datad => \U2|Q~q\,
	combout => \U4|Q~0_combout\);

-- Location: FF_X42_Y72_N27
\U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Q~q\);

ww_binOut(0) <= \binOut[0]~output_o\;

ww_binOut(1) <= \binOut[1]~output_o\;

ww_binOut(2) <= \binOut[2]~output_o\;

ww_binOut(3) <= \binOut[3]~output_o\;
END structure;

