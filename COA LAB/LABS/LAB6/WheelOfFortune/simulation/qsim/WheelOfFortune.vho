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

-- DATE "10/18/2024 20:48:24"

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

ENTITY 	WheelOfFortune IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic_vector(3 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	ssd0 : OUT std_logic_vector(6 DOWNTO 0);
	ssd1 : OUT std_logic_vector(6 DOWNTO 0);
	ssd2 : OUT std_logic_vector(6 DOWNTO 0);
	ssd3 : OUT std_logic_vector(6 DOWNTO 0);
	reset : IN std_logic
	);
END WheelOfFortune;

-- Design Ports Information
-- led[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[0]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[2]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[6]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[1]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[3]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[6]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[6]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[2]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WheelOfFortune IS
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
SIGNAL ww_ssd0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \ssd0[0]~output_o\ : std_logic;
SIGNAL \ssd0[1]~output_o\ : std_logic;
SIGNAL \ssd0[2]~output_o\ : std_logic;
SIGNAL \ssd0[3]~output_o\ : std_logic;
SIGNAL \ssd0[4]~output_o\ : std_logic;
SIGNAL \ssd0[5]~output_o\ : std_logic;
SIGNAL \ssd0[6]~output_o\ : std_logic;
SIGNAL \ssd1[0]~output_o\ : std_logic;
SIGNAL \ssd1[1]~output_o\ : std_logic;
SIGNAL \ssd1[2]~output_o\ : std_logic;
SIGNAL \ssd1[3]~output_o\ : std_logic;
SIGNAL \ssd1[4]~output_o\ : std_logic;
SIGNAL \ssd1[5]~output_o\ : std_logic;
SIGNAL \ssd1[6]~output_o\ : std_logic;
SIGNAL \ssd2[0]~output_o\ : std_logic;
SIGNAL \ssd2[1]~output_o\ : std_logic;
SIGNAL \ssd2[2]~output_o\ : std_logic;
SIGNAL \ssd2[3]~output_o\ : std_logic;
SIGNAL \ssd2[4]~output_o\ : std_logic;
SIGNAL \ssd2[5]~output_o\ : std_logic;
SIGNAL \ssd2[6]~output_o\ : std_logic;
SIGNAL \ssd3[0]~output_o\ : std_logic;
SIGNAL \ssd3[1]~output_o\ : std_logic;
SIGNAL \ssd3[2]~output_o\ : std_logic;
SIGNAL \ssd3[3]~output_o\ : std_logic;
SIGNAL \ssd3[4]~output_o\ : std_logic;
SIGNAL \ssd3[5]~output_o\ : std_logic;
SIGNAL \ssd3[6]~output_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~75_combout\ : std_logic;
SIGNAL \count[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count[1]~25_combout\ : std_logic;
SIGNAL \count[1]~feeder_combout\ : std_logic;
SIGNAL \count[1]~26\ : std_logic;
SIGNAL \count[2]~27_combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
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
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \count[22]~68\ : std_logic;
SIGNAL \count[23]~69_combout\ : std_logic;
SIGNAL \count[23]~70\ : std_logic;
SIGNAL \count[24]~71_combout\ : std_logic;
SIGNAL \count[24]~72\ : std_logic;
SIGNAL \count[25]~73_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \ledout[1]~1_combout\ : std_logic;
SIGNAL \ledout[2]~feeder_combout\ : std_logic;
SIGNAL \ledout[3]~feeder_combout\ : std_logic;
SIGNAL \ledout[0]~0_combout\ : std_logic;
SIGNAL \count[0]~clkctrl_outclk\ : std_logic;
SIGNAL \fcount[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \u0|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u0|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u0|cathodes[1]~2_combout\ : std_logic;
SIGNAL \u0|cathodes[2]~3_combout\ : std_logic;
SIGNAL \u0|cathodes[3]~4_combout\ : std_logic;
SIGNAL \u0|cathodes[4]~5_combout\ : std_logic;
SIGNAL \u0|cathodes[5]~6_combout\ : std_logic;
SIGNAL \u0|cathodes[6]~7_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \u2|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u2|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u2|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u2|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u2|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u2|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u2|cathodes[6]~6_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \u3|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u3|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u3|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u3|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u3|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u3|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u3|cathodes[6]~6_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL ledout : std_logic_vector(3 DOWNTO 0);
SIGNAL fcount : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \u3|ALT_INV_cathodes[2]~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_cathodes[2]~2_combout\ : std_logic;
SIGNAL \u0|ALT_INV_cathodes[2]~3_combout\ : std_logic;
SIGNAL ALT_INV_ledout : std_logic_vector(0 DOWNTO 0);

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
ssd0 <= ww_ssd0;
ssd1 <= ww_ssd1;
ssd2 <= ww_ssd2;
ssd3 <= ww_ssd3;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\count[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & count(0));

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\u3|ALT_INV_cathodes[2]~2_combout\ <= NOT \u3|cathodes[2]~2_combout\;
\u2|ALT_INV_cathodes[2]~2_combout\ <= NOT \u2|cathodes[2]~2_combout\;
\u0|ALT_INV_cathodes[2]~3_combout\ <= NOT \u0|cathodes[2]~3_combout\;
ALT_INV_ledout(0) <= NOT ledout(0);
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
	i => ALT_INV_ledout(0),
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
	i => ledout(1),
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
	i => ledout(2),
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
	i => ledout(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ssd0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd0[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ssd0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[1]~2_combout\,
	devoe => ww_devoe,
	o => \ssd0[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ssd0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|ALT_INV_cathodes[2]~3_combout\,
	devoe => ww_devoe,
	o => \ssd0[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ssd0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[3]~4_combout\,
	devoe => ww_devoe,
	o => \ssd0[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ssd0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[4]~5_combout\,
	devoe => ww_devoe,
	o => \ssd0[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\ssd0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[5]~6_combout\,
	devoe => ww_devoe,
	o => \ssd0[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ssd0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[6]~7_combout\,
	devoe => ww_devoe,
	o => \ssd0[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ssd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd1[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\ssd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[1]~2_combout\,
	devoe => ww_devoe,
	o => \ssd1[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ssd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|ALT_INV_cathodes[2]~3_combout\,
	devoe => ww_devoe,
	o => \ssd1[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ssd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[3]~4_combout\,
	devoe => ww_devoe,
	o => \ssd1[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ssd1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[4]~5_combout\,
	devoe => ww_devoe,
	o => \ssd1[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\ssd1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[5]~6_combout\,
	devoe => ww_devoe,
	o => \ssd1[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ssd1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[6]~7_combout\,
	devoe => ww_devoe,
	o => \ssd1[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ssd2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd2[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\ssd2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \ssd2[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\ssd2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \ssd2[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\ssd2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \ssd2[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ssd2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \ssd2[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ssd2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \ssd2[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\ssd2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \ssd2[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\ssd3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd3[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\ssd3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \ssd3[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\ssd3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \ssd3[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\ssd3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \ssd3[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ssd3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \ssd3[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\ssd3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \ssd3[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ssd3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \ssd3[6]~output_o\);

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

-- Location: LCCOMB_X53_Y18_N6
\count[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~75_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(0),
	combout => \count[0]~75_combout\);

-- Location: LCCOMB_X53_Y18_N4
\count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~feeder_combout\ = \count[0]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[0]~75_combout\,
	combout => \count[0]~feeder_combout\);

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

-- Location: FF_X53_Y18_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X53_Y18_N8
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

-- Location: LCCOMB_X53_Y18_N2
\count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~feeder_combout\ = \count[1]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[1]~25_combout\,
	combout => \count[1]~feeder_combout\);

-- Location: FF_X53_Y18_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X53_Y18_N10
\count[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~27_combout\ = (count(2) & (!\count[1]~26\)) # (!count(2) & ((\count[1]~26\) # (GND)))
-- \count[2]~28\ = CARRY((!\count[1]~26\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~26\,
	combout => \count[2]~27_combout\,
	cout => \count[2]~28\);

-- Location: FF_X53_Y18_N11
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

-- Location: LCCOMB_X53_Y18_N12
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

-- Location: FF_X53_Y18_N13
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

-- Location: LCCOMB_X53_Y18_N14
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

-- Location: FF_X53_Y18_N15
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

-- Location: LCCOMB_X53_Y18_N16
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

-- Location: FF_X53_Y18_N17
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

-- Location: LCCOMB_X53_Y18_N18
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

-- Location: FF_X53_Y18_N19
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

-- Location: LCCOMB_X53_Y18_N20
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

-- Location: FF_X53_Y18_N21
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

-- Location: LCCOMB_X53_Y18_N22
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

-- Location: FF_X53_Y18_N23
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

-- Location: LCCOMB_X53_Y18_N24
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

-- Location: FF_X53_Y18_N25
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

-- Location: LCCOMB_X53_Y18_N26
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

-- Location: FF_X53_Y18_N27
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

-- Location: LCCOMB_X53_Y18_N28
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

-- Location: FF_X53_Y18_N29
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

-- Location: LCCOMB_X53_Y18_N30
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

-- Location: FF_X53_Y18_N31
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

-- Location: LCCOMB_X53_Y17_N0
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

-- Location: FF_X53_Y17_N1
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

-- Location: LCCOMB_X53_Y17_N2
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

-- Location: FF_X53_Y17_N3
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

-- Location: LCCOMB_X53_Y17_N4
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

-- Location: FF_X53_Y17_N5
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

-- Location: LCCOMB_X53_Y17_N6
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

-- Location: FF_X53_Y17_N7
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

-- Location: LCCOMB_X53_Y17_N8
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

-- Location: FF_X53_Y17_N9
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

-- Location: LCCOMB_X53_Y17_N10
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

-- Location: FF_X53_Y17_N11
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

-- Location: LCCOMB_X53_Y17_N12
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

-- Location: FF_X53_Y17_N13
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

-- Location: LCCOMB_X53_Y17_N14
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

-- Location: FF_X53_Y17_N15
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

-- Location: LCCOMB_X53_Y17_N16
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

-- Location: FF_X53_Y17_N17
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

-- Location: LCCOMB_X53_Y17_N18
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

-- Location: FF_X53_Y17_N19
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

-- Location: LCCOMB_X54_Y17_N4
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\opcode[0]~input_o\ & ((!count(22)))) # (!\opcode[0]~input_o\ & (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datac => \opcode[0]~input_o\,
	datad => count(22),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X54_Y17_N22
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

-- Location: LCCOMB_X53_Y17_N20
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

-- Location: FF_X53_Y17_N21
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

-- Location: LCCOMB_X53_Y17_N22
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

-- Location: FF_X53_Y17_N23
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

-- Location: LCCOMB_X53_Y17_N24
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

-- Location: FF_X53_Y17_N25
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

-- Location: LCCOMB_X53_Y17_N26
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

-- Location: LCCOMB_X53_Y17_N28
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

-- Location: LCCOMB_X53_Y17_N30
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\opcode[1]~input_o\ & (\Mux0~1_combout\)) # (!\opcode[1]~input_o\ & ((\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X54_Y17_N16
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\opcode[2]~input_o\ & (!\Mux0~4_combout\)) # (!\opcode[2]~input_o\ & ((!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \Mux0~4_combout\,
	datad => \Mux0~2_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G17
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X95_Y72_N2
\ledout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledout[1]~1_combout\ = !ledout(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ledout(0),
	combout => \ledout[1]~1_combout\);

-- Location: FF_X95_Y72_N3
\ledout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \ledout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledout(1));

-- Location: LCCOMB_X95_Y72_N0
\ledout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledout[2]~feeder_combout\ = ledout(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ledout(1),
	combout => \ledout[2]~feeder_combout\);

-- Location: FF_X95_Y72_N1
\ledout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \ledout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledout(2));

-- Location: LCCOMB_X95_Y72_N6
\ledout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledout[3]~feeder_combout\ = ledout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ledout(2),
	combout => \ledout[3]~feeder_combout\);

-- Location: FF_X95_Y72_N7
\ledout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \ledout[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledout(3));

-- Location: LCCOMB_X95_Y72_N24
\ledout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledout[0]~0_combout\ = !ledout(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ledout(3),
	combout => \ledout[0]~0_combout\);

-- Location: FF_X95_Y72_N25
\ledout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \ledout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledout(0));

-- Location: CLKCTRL_G18
\count[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count[0]~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y3_N6
\fcount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fcount[0]~0_combout\ = !fcount(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcount(0),
	combout => \fcount[0]~0_combout\);

-- Location: FF_X7_Y3_N31
\fcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	asdata => \fcount[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(0));

-- Location: LCCOMB_X7_Y3_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (fcount(0) & (fcount(1) $ (VCC))) # (!fcount(0) & (fcount(1) & VCC))
-- \Add1~1\ = CARRY((fcount(0) & fcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(0),
	datab => fcount(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X7_Y3_N1
\fcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(1));

-- Location: LCCOMB_X7_Y3_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (fcount(2) & (!\Add1~1\)) # (!fcount(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!fcount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X7_Y3_N3
\fcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(2));

-- Location: LCCOMB_X7_Y3_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (fcount(3) & (\Add1~3\ $ (GND))) # (!fcount(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((fcount(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X7_Y3_N5
\fcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(3));

-- Location: LCCOMB_X6_Y3_N24
\u0|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[0]~0_combout\ = (fcount(2) & (!fcount(1) & (fcount(0) $ (!fcount(3))))) # (!fcount(2) & (fcount(0) & (fcount(1) $ (!fcount(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	datad => fcount(3),
	combout => \u0|cathodes[0]~0_combout\);

-- Location: LCCOMB_X6_Y3_N18
\u0|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[1]~1_combout\ = (fcount(0) & (fcount(2) $ (fcount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	combout => \u0|cathodes[1]~1_combout\);

-- Location: LCCOMB_X6_Y3_N12
\u0|cathodes[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[1]~2_combout\ = (fcount(3) & (fcount(2) $ ((\u0|cathodes[1]~1_combout\)))) # (!fcount(3) & (fcount(2) & ((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => \u0|cathodes[1]~1_combout\,
	datac => \Add1~0_combout\,
	datad => fcount(3),
	combout => \u0|cathodes[1]~2_combout\);

-- Location: LCCOMB_X6_Y3_N26
\u0|cathodes[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[2]~3_combout\ = (fcount(2) & (((!fcount(1) & fcount(0))) # (!fcount(3)))) # (!fcount(2) & (((fcount(0)) # (fcount(3))) # (!fcount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	datad => fcount(3),
	combout => \u0|cathodes[2]~3_combout\);

-- Location: LCCOMB_X7_Y3_N30
\u0|cathodes[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[3]~4_combout\ = (fcount(1) & ((fcount(2) & ((fcount(0)))) # (!fcount(2) & (fcount(3) & !fcount(0))))) # (!fcount(1) & (!fcount(3) & (fcount(2) $ (fcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(3),
	datac => fcount(0),
	datad => fcount(1),
	combout => \u0|cathodes[3]~4_combout\);

-- Location: LCCOMB_X6_Y3_N0
\u0|cathodes[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[4]~5_combout\ = (fcount(1) & (((fcount(0) & !fcount(3))))) # (!fcount(1) & ((fcount(2) & ((!fcount(3)))) # (!fcount(2) & (fcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	datad => fcount(3),
	combout => \u0|cathodes[4]~5_combout\);

-- Location: LCCOMB_X6_Y3_N10
\u0|cathodes[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[5]~6_combout\ = (fcount(2) & (fcount(0) & (fcount(1) $ (fcount(3))))) # (!fcount(2) & (!fcount(3) & ((fcount(1)) # (fcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	datad => fcount(3),
	combout => \u0|cathodes[5]~6_combout\);

-- Location: LCCOMB_X6_Y3_N8
\u0|cathodes[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[6]~7_combout\ = (fcount(0) & (!fcount(3) & (fcount(2) $ (!fcount(1))))) # (!fcount(0) & (!fcount(1) & (fcount(2) $ (!fcount(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(2),
	datab => fcount(1),
	datac => fcount(0),
	datad => fcount(3),
	combout => \u0|cathodes[6]~7_combout\);

-- Location: LCCOMB_X7_Y3_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (fcount(4) & (!\Add1~5\)) # (!fcount(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!fcount(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fcount(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X7_Y3_N7
\fcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(4));

-- Location: LCCOMB_X7_Y3_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (fcount(5) & (\Add1~7\ $ (GND))) # (!fcount(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((fcount(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X7_Y3_N9
\fcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(5));

-- Location: LCCOMB_X7_Y3_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (fcount(6) & (!\Add1~9\)) # (!fcount(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!fcount(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fcount(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X7_Y3_N11
\fcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(6));

-- Location: LCCOMB_X7_Y3_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (fcount(7) & (\Add1~11\ $ (GND))) # (!fcount(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((fcount(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fcount(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X7_Y3_N13
\fcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(7));

-- Location: LCCOMB_X7_Y3_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (fcount(8) & (!\Add1~13\)) # (!fcount(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!fcount(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X7_Y3_N15
\fcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(8));

-- Location: LCCOMB_X7_Y3_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (fcount(9) & (\Add1~15\ $ (GND))) # (!fcount(9) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((fcount(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X7_Y3_N17
\fcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(9));

-- Location: LCCOMB_X7_Y3_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (fcount(10) & (!\Add1~17\)) # (!fcount(10) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!fcount(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X7_Y3_N19
\fcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(10));

-- Location: LCCOMB_X7_Y3_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (fcount(11) & (\Add1~19\ $ (GND))) # (!fcount(11) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((fcount(11) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(11),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X7_Y3_N21
\fcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(11));

-- Location: LCCOMB_X10_Y3_N24
\u2|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[0]~0_combout\ = (fcount(10) & (!fcount(9) & (fcount(8) $ (!fcount(11))))) # (!fcount(10) & (fcount(8) & (fcount(9) $ (!fcount(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[0]~0_combout\);

-- Location: LCCOMB_X10_Y3_N30
\u2|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[1]~1_combout\ = (fcount(9) & ((fcount(8) & ((fcount(11)))) # (!fcount(8) & (fcount(10))))) # (!fcount(9) & (fcount(10) & (fcount(8) $ (fcount(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[1]~1_combout\);

-- Location: LCCOMB_X10_Y3_N4
\u2|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[2]~2_combout\ = (fcount(10) & (((!fcount(9) & fcount(8))) # (!fcount(11)))) # (!fcount(10) & (((fcount(8)) # (fcount(11))) # (!fcount(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[2]~2_combout\);

-- Location: LCCOMB_X10_Y3_N10
\u2|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[3]~3_combout\ = (fcount(9) & ((fcount(10) & (fcount(8))) # (!fcount(10) & (!fcount(8) & fcount(11))))) # (!fcount(9) & (!fcount(11) & (fcount(10) $ (fcount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[3]~3_combout\);

-- Location: LCCOMB_X10_Y3_N16
\u2|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[4]~4_combout\ = (fcount(9) & (((fcount(8) & !fcount(11))))) # (!fcount(9) & ((fcount(10) & ((!fcount(11)))) # (!fcount(10) & (fcount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[4]~4_combout\);

-- Location: LCCOMB_X10_Y3_N6
\u2|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[5]~5_combout\ = (fcount(9) & (!fcount(11) & ((fcount(8)) # (!fcount(10))))) # (!fcount(9) & (fcount(8) & (fcount(10) $ (!fcount(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[5]~5_combout\);

-- Location: LCCOMB_X10_Y3_N12
\u2|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[6]~6_combout\ = (fcount(8) & (!fcount(11) & (fcount(9) $ (!fcount(10))))) # (!fcount(8) & (!fcount(9) & (fcount(10) $ (!fcount(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(9),
	datab => fcount(10),
	datac => fcount(8),
	datad => fcount(11),
	combout => \u2|cathodes[6]~6_combout\);

-- Location: LCCOMB_X7_Y3_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (fcount(12) & (!\Add1~21\)) # (!fcount(12) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!fcount(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fcount(12),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X7_Y3_N23
\fcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(12));

-- Location: LCCOMB_X7_Y3_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (fcount(13) & (\Add1~23\ $ (GND))) # (!fcount(13) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((fcount(13) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fcount(13),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X7_Y3_N25
\fcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(13));

-- Location: LCCOMB_X7_Y3_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (fcount(14) & (!\Add1~25\)) # (!fcount(14) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!fcount(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fcount(14),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X7_Y3_N27
\fcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(14));

-- Location: LCCOMB_X7_Y3_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = \Add1~27\ $ (!fcount(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => fcount(15),
	cin => \Add1~27\,
	combout => \Add1~28_combout\);

-- Location: FF_X7_Y3_N29
\fcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[0]~clkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcount(15));

-- Location: LCCOMB_X7_Y1_N28
\u3|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[0]~0_combout\ = (fcount(15) & (fcount(12) & (fcount(14) $ (fcount(13))))) # (!fcount(15) & (!fcount(13) & (fcount(14) $ (fcount(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[0]~0_combout\);

-- Location: LCCOMB_X7_Y1_N22
\u3|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[1]~1_combout\ = (fcount(15) & ((fcount(12) & ((fcount(13)))) # (!fcount(12) & (fcount(14))))) # (!fcount(15) & (fcount(14) & (fcount(13) $ (fcount(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[1]~1_combout\);

-- Location: LCCOMB_X7_Y1_N12
\u3|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[2]~2_combout\ = (fcount(15) & (((!fcount(13) & fcount(12))) # (!fcount(14)))) # (!fcount(15) & ((fcount(14)) # ((fcount(12)) # (!fcount(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[2]~2_combout\);

-- Location: LCCOMB_X7_Y1_N26
\u3|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[3]~3_combout\ = (fcount(13) & ((fcount(14) & ((fcount(12)))) # (!fcount(14) & (fcount(15) & !fcount(12))))) # (!fcount(13) & (!fcount(15) & (fcount(14) $ (fcount(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[3]~3_combout\);

-- Location: LCCOMB_X7_Y1_N4
\u3|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[4]~4_combout\ = (fcount(13) & (!fcount(15) & ((fcount(12))))) # (!fcount(13) & ((fcount(14) & (!fcount(15))) # (!fcount(14) & ((fcount(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[4]~4_combout\);

-- Location: LCCOMB_X7_Y1_N30
\u3|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[5]~5_combout\ = (fcount(14) & (fcount(12) & (fcount(15) $ (fcount(13))))) # (!fcount(14) & (!fcount(15) & ((fcount(13)) # (fcount(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[5]~5_combout\);

-- Location: LCCOMB_X7_Y1_N24
\u3|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[6]~6_combout\ = (fcount(12) & (!fcount(15) & (fcount(14) $ (!fcount(13))))) # (!fcount(12) & (!fcount(13) & (fcount(15) $ (!fcount(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcount(15),
	datab => fcount(14),
	datac => fcount(13),
	datad => fcount(12),
	combout => \u3|cathodes[6]~6_combout\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_ssd0(0) <= \ssd0[0]~output_o\;

ww_ssd0(1) <= \ssd0[1]~output_o\;

ww_ssd0(2) <= \ssd0[2]~output_o\;

ww_ssd0(3) <= \ssd0[3]~output_o\;

ww_ssd0(4) <= \ssd0[4]~output_o\;

ww_ssd0(5) <= \ssd0[5]~output_o\;

ww_ssd0(6) <= \ssd0[6]~output_o\;

ww_ssd1(0) <= \ssd1[0]~output_o\;

ww_ssd1(1) <= \ssd1[1]~output_o\;

ww_ssd1(2) <= \ssd1[2]~output_o\;

ww_ssd1(3) <= \ssd1[3]~output_o\;

ww_ssd1(4) <= \ssd1[4]~output_o\;

ww_ssd1(5) <= \ssd1[5]~output_o\;

ww_ssd1(6) <= \ssd1[6]~output_o\;

ww_ssd2(0) <= \ssd2[0]~output_o\;

ww_ssd2(1) <= \ssd2[1]~output_o\;

ww_ssd2(2) <= \ssd2[2]~output_o\;

ww_ssd2(3) <= \ssd2[3]~output_o\;

ww_ssd2(4) <= \ssd2[4]~output_o\;

ww_ssd2(5) <= \ssd2[5]~output_o\;

ww_ssd2(6) <= \ssd2[6]~output_o\;

ww_ssd3(0) <= \ssd3[0]~output_o\;

ww_ssd3(1) <= \ssd3[1]~output_o\;

ww_ssd3(2) <= \ssd3[2]~output_o\;

ww_ssd3(3) <= \ssd3[3]~output_o\;

ww_ssd3(4) <= \ssd3[4]~output_o\;

ww_ssd3(5) <= \ssd3[5]~output_o\;

ww_ssd3(6) <= \ssd3[6]~output_o\;
END structure;


