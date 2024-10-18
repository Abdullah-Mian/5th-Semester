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

-- DATE "10/18/2024 18:48:28"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	FourBitUpDownCounter IS
    PORT (
	binOut : OUT std_logic_vector(2 DOWNTO 0);
	opcode : IN std_logic;
	clk : IN std_logic
	);
END FourBitUpDownCounter;

-- Design Ports Information
-- binOut[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binOut[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binOut[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FourBitUpDownCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_opcode : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \binOut[0]~output_o\ : std_logic;
SIGNAL \binOut[1]~output_o\ : std_logic;
SIGNAL \binOut[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Q_internal~0_combout\ : std_logic;
SIGNAL \U1|Q_internal~q\ : std_logic;
SIGNAL \opcode~input_o\ : std_logic;
SIGNAL \U2|Q_internal~feeder_combout\ : std_logic;
SIGNAL \U2|Q_internal~q\ : std_logic;
SIGNAL \d1~0_combout\ : std_logic;
SIGNAL \U3|Q_internal~0_combout\ : std_logic;
SIGNAL \U3|Q_internal~q\ : std_logic;
SIGNAL \d2~0_combout\ : std_logic;
SIGNAL \ALT_INV_d2~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Q_internal~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

binOut <= ww_binOut;
ww_opcode <= opcode;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_d2~0_combout\ <= NOT \d2~0_combout\;
\U1|ALT_INV_Q_internal~q\ <= NOT \U1|Q_internal~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\binOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_Q_internal~q\,
	devoe => ww_devoe,
	o => \binOut[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\binOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1~0_combout\,
	devoe => ww_devoe,
	o => \binOut[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\binOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d2~0_combout\,
	devoe => ww_devoe,
	o => \binOut[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: LCCOMB_X1_Y9_N4
\U1|Q_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Q_internal~0_combout\ = !\U1|Q_internal~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Q_internal~q\,
	combout => \U1|Q_internal~0_combout\);

-- Location: FF_X1_Y9_N5
\U1|Q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Q_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Q_internal~q\);

-- Location: IOIBUF_X0_Y11_N15
\opcode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode,
	o => \opcode~input_o\);

-- Location: LCCOMB_X1_Y9_N18
\U2|Q_internal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Q_internal~feeder_combout\ = \d1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d1~0_combout\,
	combout => \U2|Q_internal~feeder_combout\);

-- Location: FF_X1_Y9_N19
\U2|Q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Q_internal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q_internal~q\);

-- Location: LCCOMB_X1_Y9_N16
\d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1~0_combout\ = \opcode~input_o\ $ (\U1|Q_internal~q\ $ (\U2|Q_internal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~input_o\,
	datac => \U1|Q_internal~q\,
	datad => \U2|Q_internal~q\,
	combout => \d1~0_combout\);

-- Location: LCCOMB_X1_Y9_N30
\U3|Q_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Q_internal~0_combout\ = !\d2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d2~0_combout\,
	combout => \U3|Q_internal~0_combout\);

-- Location: FF_X1_Y9_N31
\U3|Q_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|Q_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Q_internal~q\);

-- Location: LCCOMB_X1_Y9_N0
\d2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2~0_combout\ = \U3|Q_internal~q\ $ (((\opcode~input_o\ & ((\U1|Q_internal~q\) # (\U2|Q_internal~q\))) # (!\opcode~input_o\ & ((!\U2|Q_internal~q\) # (!\U1|Q_internal~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Q_internal~q\,
	datab => \opcode~input_o\,
	datac => \U1|Q_internal~q\,
	datad => \U2|Q_internal~q\,
	combout => \d2~0_combout\);

ww_binOut(0) <= \binOut[0]~output_o\;

ww_binOut(1) <= \binOut[1]~output_o\;

ww_binOut(2) <= \binOut[2]~output_o\;
END structure;


