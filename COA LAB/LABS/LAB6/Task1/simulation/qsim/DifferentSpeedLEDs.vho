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

-- DATE "10/18/2024 22:02:31"

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

ENTITY 	DifferentSpeedLEDs IS
    PORT (
	clk : IN std_logic;
	led : BUFFER std_logic_vector(3 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic
	);
END DifferentSpeedLEDs;

-- Design Ports Information
-- led[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DifferentSpeedLEDs IS
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
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~75_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count[1]~25_combout\ : std_logic;
SIGNAL \count[1]~26\ : std_logic;
SIGNAL \count[2]~27_combout\ : std_logic;
SIGNAL \count[2]~28\ : std_logic;
SIGNAL \count[3]~29_combout\ : std_logic;
SIGNAL \count[3]~30\ : std_logic;
SIGNAL \count[4]~31_combout\ : std_logic;
SIGNAL \count[4]~32\ : std_logic;
SIGNAL \count[5]~33_combout\ : std_logic;
SIGNAL \count[5]~34\ : std_logic;
SIGNAL \count[6]~35_combout\ : std_logic;
SIGNAL \count[6]~36\ : std_logic;
SIGNAL \count[7]~37_combout\ : std_logic;
SIGNAL \count[7]~38\ : std_logic;
SIGNAL \count[8]~39_combout\ : std_logic;
SIGNAL \count[8]~40\ : std_logic;
SIGNAL \count[9]~41_combout\ : std_logic;
SIGNAL \count[9]~42\ : std_logic;
SIGNAL \count[10]~43_combout\ : std_logic;
SIGNAL \count[10]~44\ : std_logic;
SIGNAL \count[11]~45_combout\ : std_logic;
SIGNAL \count[11]~46\ : std_logic;
SIGNAL \count[12]~47_combout\ : std_logic;
SIGNAL \count[12]~48\ : std_logic;
SIGNAL \count[13]~49_combout\ : std_logic;
SIGNAL \count[13]~50\ : std_logic;
SIGNAL \count[14]~51_combout\ : std_logic;
SIGNAL \count[14]~52\ : std_logic;
SIGNAL \count[15]~53_combout\ : std_logic;
SIGNAL \count[15]~54\ : std_logic;
SIGNAL \count[16]~55_combout\ : std_logic;
SIGNAL \count[16]~56\ : std_logic;
SIGNAL \count[17]~57_combout\ : std_logic;
SIGNAL \count[17]~58\ : std_logic;
SIGNAL \count[18]~59_combout\ : std_logic;
SIGNAL \count[18]~60\ : std_logic;
SIGNAL \count[19]~61_combout\ : std_logic;
SIGNAL \count[19]~62\ : std_logic;
SIGNAL \count[20]~63_combout\ : std_logic;
SIGNAL \count[20]~64\ : std_logic;
SIGNAL \count[21]~65_combout\ : std_logic;
SIGNAL \count[21]~66\ : std_logic;
SIGNAL \count[22]~67_combout\ : std_logic;
SIGNAL \count[22]~68\ : std_logic;
SIGNAL \count[23]~69_combout\ : std_logic;
SIGNAL \count[23]~70\ : std_logic;
SIGNAL \count[24]~71_combout\ : std_logic;
SIGNAL \count[24]~72\ : std_logic;
SIGNAL \count[25]~73_combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \ledout[0]~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL ledout : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_opcode <= opcode;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledout(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledout(0),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledout(0),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledout(0),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X23_Y29_N6
\count[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~75_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~75_combout\);

-- Location: IOIBUF_X115_Y13_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X23_Y29_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X23_Y29_N8
\count[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~25_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~26\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~25_combout\,
	cout => \count[1]~26\);

-- Location: FF_X23_Y29_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X23_Y29_N10
\count[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~27_combout\ = (count(2) & (!\count[1]~26\)) # (!count(2) & ((\count[1]~26\) # (GND)))
-- \count[2]~28\ = CARRY((!\count[1]~26\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~26\,
	combout => \count[2]~27_combout\,
	cout => \count[2]~28\);

-- Location: FF_X23_Y29_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[2]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X23_Y29_N12
\count[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~29_combout\ = (count(3) & (\count[2]~28\ $ (GND))) # (!count(3) & (!\count[2]~28\ & VCC))
-- \count[3]~30\ = CARRY((count(3) & !\count[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~28\,
	combout => \count[3]~29_combout\,
	cout => \count[3]~30\);

-- Location: FF_X23_Y29_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X23_Y29_N14
\count[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~31_combout\ = (count(4) & (!\count[3]~30\)) # (!count(4) & ((\count[3]~30\) # (GND)))
-- \count[4]~32\ = CARRY((!\count[3]~30\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~30\,
	combout => \count[4]~31_combout\,
	cout => \count[4]~32\);

-- Location: FF_X23_Y29_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X23_Y29_N16
\count[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~33_combout\ = (count(5) & (\count[4]~32\ $ (GND))) # (!count(5) & (!\count[4]~32\ & VCC))
-- \count[5]~34\ = CARRY((count(5) & !\count[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~32\,
	combout => \count[5]~33_combout\,
	cout => \count[5]~34\);

-- Location: FF_X23_Y29_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X23_Y29_N18
\count[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~35_combout\ = (count(6) & (!\count[5]~34\)) # (!count(6) & ((\count[5]~34\) # (GND)))
-- \count[6]~36\ = CARRY((!\count[5]~34\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~34\,
	combout => \count[6]~35_combout\,
	cout => \count[6]~36\);

-- Location: FF_X23_Y29_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X23_Y29_N20
\count[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~37_combout\ = (count(7) & (\count[6]~36\ $ (GND))) # (!count(7) & (!\count[6]~36\ & VCC))
-- \count[7]~38\ = CARRY((count(7) & !\count[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~36\,
	combout => \count[7]~37_combout\,
	cout => \count[7]~38\);

-- Location: FF_X23_Y29_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X23_Y29_N22
\count[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~39_combout\ = (count(8) & (!\count[7]~38\)) # (!count(8) & ((\count[7]~38\) # (GND)))
-- \count[8]~40\ = CARRY((!\count[7]~38\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~38\,
	combout => \count[8]~39_combout\,
	cout => \count[8]~40\);

-- Location: FF_X23_Y29_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X23_Y29_N24
\count[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~41_combout\ = (count(9) & (\count[8]~40\ $ (GND))) # (!count(9) & (!\count[8]~40\ & VCC))
-- \count[9]~42\ = CARRY((count(9) & !\count[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~40\,
	combout => \count[9]~41_combout\,
	cout => \count[9]~42\);

-- Location: FF_X23_Y29_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X23_Y29_N26
\count[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~43_combout\ = (count(10) & (!\count[9]~42\)) # (!count(10) & ((\count[9]~42\) # (GND)))
-- \count[10]~44\ = CARRY((!\count[9]~42\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~42\,
	combout => \count[10]~43_combout\,
	cout => \count[10]~44\);

-- Location: FF_X23_Y29_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X23_Y29_N28
\count[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~45_combout\ = (count(11) & (\count[10]~44\ $ (GND))) # (!count(11) & (!\count[10]~44\ & VCC))
-- \count[11]~46\ = CARRY((count(11) & !\count[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~44\,
	combout => \count[11]~45_combout\,
	cout => \count[11]~46\);

-- Location: FF_X23_Y29_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X23_Y29_N30
\count[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~47_combout\ = (count(12) & (!\count[11]~46\)) # (!count(12) & ((\count[11]~46\) # (GND)))
-- \count[12]~48\ = CARRY((!\count[11]~46\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~46\,
	combout => \count[12]~47_combout\,
	cout => \count[12]~48\);

-- Location: FF_X23_Y29_N31
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X23_Y28_N0
\count[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~49_combout\ = (count(13) & (\count[12]~48\ $ (GND))) # (!count(13) & (!\count[12]~48\ & VCC))
-- \count[13]~50\ = CARRY((count(13) & !\count[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~48\,
	combout => \count[13]~49_combout\,
	cout => \count[13]~50\);

-- Location: FF_X23_Y28_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X23_Y28_N2
\count[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~51_combout\ = (count(14) & (!\count[13]~50\)) # (!count(14) & ((\count[13]~50\) # (GND)))
-- \count[14]~52\ = CARRY((!\count[13]~50\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~50\,
	combout => \count[14]~51_combout\,
	cout => \count[14]~52\);

-- Location: FF_X23_Y28_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X23_Y28_N4
\count[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~53_combout\ = (count(15) & (\count[14]~52\ $ (GND))) # (!count(15) & (!\count[14]~52\ & VCC))
-- \count[15]~54\ = CARRY((count(15) & !\count[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~52\,
	combout => \count[15]~53_combout\,
	cout => \count[15]~54\);

-- Location: FF_X23_Y28_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[15]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X23_Y28_N6
\count[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~55_combout\ = (count(16) & (!\count[15]~54\)) # (!count(16) & ((\count[15]~54\) # (GND)))
-- \count[16]~56\ = CARRY((!\count[15]~54\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~54\,
	combout => \count[16]~55_combout\,
	cout => \count[16]~56\);

-- Location: FF_X23_Y28_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X23_Y28_N8
\count[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~57_combout\ = (count(17) & (\count[16]~56\ $ (GND))) # (!count(17) & (!\count[16]~56\ & VCC))
-- \count[17]~58\ = CARRY((count(17) & !\count[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~56\,
	combout => \count[17]~57_combout\,
	cout => \count[17]~58\);

-- Location: FF_X23_Y28_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X23_Y28_N10
\count[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~59_combout\ = (count(18) & (!\count[17]~58\)) # (!count(18) & ((\count[17]~58\) # (GND)))
-- \count[18]~60\ = CARRY((!\count[17]~58\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~58\,
	combout => \count[18]~59_combout\,
	cout => \count[18]~60\);

-- Location: FF_X23_Y28_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X23_Y28_N12
\count[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~61_combout\ = (count(19) & (\count[18]~60\ $ (GND))) # (!count(19) & (!\count[18]~60\ & VCC))
-- \count[19]~62\ = CARRY((count(19) & !\count[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~60\,
	combout => \count[19]~61_combout\,
	cout => \count[19]~62\);

-- Location: FF_X23_Y28_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X23_Y28_N14
\count[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~63_combout\ = (count(20) & (!\count[19]~62\)) # (!count(20) & ((\count[19]~62\) # (GND)))
-- \count[20]~64\ = CARRY((!\count[19]~62\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~62\,
	combout => \count[20]~63_combout\,
	cout => \count[20]~64\);

-- Location: FF_X23_Y28_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X23_Y28_N16
\count[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~65_combout\ = (count(21) & (\count[20]~64\ $ (GND))) # (!count(21) & (!\count[20]~64\ & VCC))
-- \count[21]~66\ = CARRY((count(21) & !\count[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~64\,
	combout => \count[21]~65_combout\,
	cout => \count[21]~66\);

-- Location: FF_X23_Y28_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X23_Y28_N18
\count[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~67_combout\ = (count(22) & (!\count[21]~66\)) # (!count(22) & ((\count[21]~66\) # (GND)))
-- \count[22]~68\ = CARRY((!\count[21]~66\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~66\,
	combout => \count[22]~67_combout\,
	cout => \count[22]~68\);

-- Location: FF_X23_Y28_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[22]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X23_Y28_N20
\count[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~69_combout\ = (count(23) & (\count[22]~68\ $ (GND))) # (!count(23) & (!\count[22]~68\ & VCC))
-- \count[23]~70\ = CARRY((count(23) & !\count[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~68\,
	combout => \count[23]~69_combout\,
	cout => \count[23]~70\);

-- Location: FF_X23_Y28_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X23_Y28_N22
\count[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~71_combout\ = (count(24) & (!\count[23]~70\)) # (!count(24) & ((\count[23]~70\) # (GND)))
-- \count[24]~72\ = CARRY((!\count[23]~70\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \count[23]~70\,
	combout => \count[24]~71_combout\,
	cout => \count[24]~72\);

-- Location: FF_X23_Y28_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X23_Y28_N24
\count[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~73_combout\ = count(25) $ (!\count[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	cin => \count[24]~72\,
	combout => \count[25]~73_combout\);

-- Location: FF_X23_Y28_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count[25]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: IOIBUF_X115_Y17_N1
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LCCOMB_X23_Y28_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\opcode[0]~input_o\ & ((!count(22)))) # (!\opcode[0]~input_o\ & (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datac => \opcode[0]~input_o\,
	datad => count(22),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y28_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\opcode[0]~input_o\ & (!count(15))) # (!\opcode[0]~input_o\ & ((!count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datac => \opcode[0]~input_o\,
	datad => count(22),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N26
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\opcode[1]~input_o\ & (\Mux0~1_combout\)) # (!\opcode[1]~input_o\ & ((\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X24_Y28_N4
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\opcode[0]~input_o\ & ((!count(22)))) # (!\opcode[0]~input_o\ & (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => \opcode[0]~input_o\,
	datad => count(22),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y28_N12
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\opcode[1]~input_o\ & ((!count(22)))) # (!\opcode[1]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \Mux0~3_combout\,
	datad => count(22),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X24_Y28_N20
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\opcode[2]~input_o\ & ((!\Mux0~4_combout\))) # (!\opcode[2]~input_o\ & (!\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~4_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\ledout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledout[0]~0_combout\ = !ledout(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ledout(0),
	combout => \ledout[0]~0_combout\);

-- Location: FF_X24_Y28_N1
\ledout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \ledout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledout(0));

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


