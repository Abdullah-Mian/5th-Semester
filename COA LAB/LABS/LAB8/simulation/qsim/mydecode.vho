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

-- DATE "11/26/2024 09:03:44"

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

ENTITY 	mydecode IS
    PORT (
	SevenSegement0 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement1 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement2 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement3 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement4 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement6 : BUFFER std_logic_vector(6 DOWNTO 0);
	SevenSegement7 : BUFFER std_logic_vector(6 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	branch_decision : IN std_logic;
	jump_decision : IN std_logic;
	RegisterWrite : IN std_logic;
	diplayDecison : IN std_logic_vector(2 DOWNTO 0)
	);
END mydecode;

-- Design Ports Information
-- SevenSegement0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSegement7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diplayDecison[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diplayDecison[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- diplayDecison[2]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_decision	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_decision	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegisterWrite	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mydecode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SevenSegement0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevenSegement7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_branch_decision : std_logic;
SIGNAL ww_jump_decision : std_logic;
SIGNAL ww_RegisterWrite : std_logic;
SIGNAL ww_diplayDecison : std_logic_vector(2 DOWNTO 0);
SIGNAL \SevenSegement0[0]~output_o\ : std_logic;
SIGNAL \SevenSegement0[1]~output_o\ : std_logic;
SIGNAL \SevenSegement0[2]~output_o\ : std_logic;
SIGNAL \SevenSegement0[3]~output_o\ : std_logic;
SIGNAL \SevenSegement0[4]~output_o\ : std_logic;
SIGNAL \SevenSegement0[5]~output_o\ : std_logic;
SIGNAL \SevenSegement0[6]~output_o\ : std_logic;
SIGNAL \SevenSegement1[0]~output_o\ : std_logic;
SIGNAL \SevenSegement1[1]~output_o\ : std_logic;
SIGNAL \SevenSegement1[2]~output_o\ : std_logic;
SIGNAL \SevenSegement1[3]~output_o\ : std_logic;
SIGNAL \SevenSegement1[4]~output_o\ : std_logic;
SIGNAL \SevenSegement1[5]~output_o\ : std_logic;
SIGNAL \SevenSegement1[6]~output_o\ : std_logic;
SIGNAL \SevenSegement2[0]~output_o\ : std_logic;
SIGNAL \SevenSegement2[1]~output_o\ : std_logic;
SIGNAL \SevenSegement2[2]~output_o\ : std_logic;
SIGNAL \SevenSegement2[3]~output_o\ : std_logic;
SIGNAL \SevenSegement2[4]~output_o\ : std_logic;
SIGNAL \SevenSegement2[5]~output_o\ : std_logic;
SIGNAL \SevenSegement2[6]~output_o\ : std_logic;
SIGNAL \SevenSegement3[0]~output_o\ : std_logic;
SIGNAL \SevenSegement3[1]~output_o\ : std_logic;
SIGNAL \SevenSegement3[2]~output_o\ : std_logic;
SIGNAL \SevenSegement3[3]~output_o\ : std_logic;
SIGNAL \SevenSegement3[4]~output_o\ : std_logic;
SIGNAL \SevenSegement3[5]~output_o\ : std_logic;
SIGNAL \SevenSegement3[6]~output_o\ : std_logic;
SIGNAL \SevenSegement4[0]~output_o\ : std_logic;
SIGNAL \SevenSegement4[1]~output_o\ : std_logic;
SIGNAL \SevenSegement4[2]~output_o\ : std_logic;
SIGNAL \SevenSegement4[3]~output_o\ : std_logic;
SIGNAL \SevenSegement4[4]~output_o\ : std_logic;
SIGNAL \SevenSegement4[5]~output_o\ : std_logic;
SIGNAL \SevenSegement4[6]~output_o\ : std_logic;
SIGNAL \SevenSegement5[0]~output_o\ : std_logic;
SIGNAL \SevenSegement5[1]~output_o\ : std_logic;
SIGNAL \SevenSegement5[2]~output_o\ : std_logic;
SIGNAL \SevenSegement5[3]~output_o\ : std_logic;
SIGNAL \SevenSegement5[4]~output_o\ : std_logic;
SIGNAL \SevenSegement5[5]~output_o\ : std_logic;
SIGNAL \SevenSegement5[6]~output_o\ : std_logic;
SIGNAL \SevenSegement6[0]~output_o\ : std_logic;
SIGNAL \SevenSegement6[1]~output_o\ : std_logic;
SIGNAL \SevenSegement6[2]~output_o\ : std_logic;
SIGNAL \SevenSegement6[3]~output_o\ : std_logic;
SIGNAL \SevenSegement6[4]~output_o\ : std_logic;
SIGNAL \SevenSegement6[5]~output_o\ : std_logic;
SIGNAL \SevenSegement6[6]~output_o\ : std_logic;
SIGNAL \SevenSegement7[0]~output_o\ : std_logic;
SIGNAL \SevenSegement7[1]~output_o\ : std_logic;
SIGNAL \SevenSegement7[2]~output_o\ : std_logic;
SIGNAL \SevenSegement7[3]~output_o\ : std_logic;
SIGNAL \SevenSegement7[4]~output_o\ : std_logic;
SIGNAL \SevenSegement7[5]~output_o\ : std_logic;
SIGNAL \SevenSegement7[6]~output_o\ : std_logic;
SIGNAL \diplayDecison[2]~input_o\ : std_logic;
SIGNAL \diplayDecison[0]~input_o\ : std_logic;
SIGNAL \diplayDecison[1]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \jump_decision~input_o\ : std_logic;
SIGNAL \branch_decision~input_o\ : std_logic;
SIGNAL \f1|f1|pc~4_combout\ : std_logic;
SIGNAL \f1|f1|pc[0]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \f1|f1|mem.raddr_a[1]~1_combout\ : std_logic;
SIGNAL \f1|f1|pc[0]~6\ : std_logic;
SIGNAL \f1|f1|pc[1]~7_combout\ : std_logic;
SIGNAL \f1|f1|pc[1]~8\ : std_logic;
SIGNAL \f1|f1|pc[2]~9_combout\ : std_logic;
SIGNAL \f1|f1|mem.raddr_a[3]~0_combout\ : std_logic;
SIGNAL \f1|f1|pc[2]~10\ : std_logic;
SIGNAL \f1|f1|pc[3]~11_combout\ : std_logic;
SIGNAL \f1|f1|mem~48_combout\ : std_logic;
SIGNAL \f1|f1|mem~112_combout\ : std_logic;
SIGNAL \RegisterWrite~input_o\ : std_logic;
SIGNAL \f1|f1|mem~27_combout\ : std_logic;
SIGNAL \f1|f1|mem~110_combout\ : std_logic;
SIGNAL \f1|f1|mem~40_combout\ : std_logic;
SIGNAL \f1|f1|mem~111_combout\ : std_logic;
SIGNAL \f1|f1|mem~19_combout\ : std_logic;
SIGNAL \f1|f1|mem~109_combout\ : std_logic;
SIGNAL \d1|Decoder1~4_combout\ : std_logic;
SIGNAL \d1|reg_File[2][10]~7_combout\ : std_logic;
SIGNAL \d1|reg_File[2][10]~q\ : std_logic;
SIGNAL \d1|Decoder1~2_combout\ : std_logic;
SIGNAL \d1|reg_File[1][10]~6_combout\ : std_logic;
SIGNAL \d1|reg_File[1][10]~q\ : std_logic;
SIGNAL \f1|f1|instruction~15_combout\ : std_logic;
SIGNAL \f1|f1|instruction~16_combout\ : std_logic;
SIGNAL \d1|Decoder1~5_combout\ : std_logic;
SIGNAL \d1|reg_File~8_combout\ : std_logic;
SIGNAL \d1|reg_File[0][10]~q\ : std_logic;
SIGNAL \f1|f1|mem~54_combout\ : std_logic;
SIGNAL \f1|f1|mem~113_combout\ : std_logic;
SIGNAL \f1|f1|instruction~3_combout\ : std_logic;
SIGNAL \f1|f1|instruction~17_combout\ : std_logic;
SIGNAL \d1|Mux93~0_combout\ : std_logic;
SIGNAL \d1|Decoder1~3_combout\ : std_logic;
SIGNAL \d1|reg_File[3][10]~9_combout\ : std_logic;
SIGNAL \d1|reg_File[3][10]~q\ : std_logic;
SIGNAL \d1|Mux93~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \f1|f1|mem~3_combout\ : std_logic;
SIGNAL \f1|f1|mem~107_combout\ : std_logic;
SIGNAL \f1|f1|mem~10_combout\ : std_logic;
SIGNAL \f1|f1|mem~108_combout\ : std_logic;
SIGNAL \d1|Mux29~0_combout\ : std_logic;
SIGNAL \d1|Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \f1|f1|mem~105_combout\ : std_logic;
SIGNAL \f1|f1|mem~106_combout\ : std_logic;
SIGNAL \d1|Mux61~0_combout\ : std_logic;
SIGNAL \d1|Mux61~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \f1|f1|mem~75_combout\ : std_logic;
SIGNAL \f1|f1|mem~115_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \d1|reg_File~3_combout\ : std_logic;
SIGNAL \d1|reg_File[3][0]~q\ : std_logic;
SIGNAL \d1|Decoder1~1_combout\ : std_logic;
SIGNAL \d1|reg_File[7][0]~1_combout\ : std_logic;
SIGNAL \d1|reg_File[7][0]~q\ : std_logic;
SIGNAL \d1|Mux95~0_combout\ : std_logic;
SIGNAL \d1|reg_File[6][13]~4_combout\ : std_logic;
SIGNAL \d1|reg_File[6][13]~q\ : std_logic;
SIGNAL \d1|reg_File~5_combout\ : std_logic;
SIGNAL \d1|reg_File[2][13]~q\ : std_logic;
SIGNAL \d1|Mux94~0_combout\ : std_logic;
SIGNAL \d1|Mux94~1_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \d1|reg_File~2_combout\ : std_logic;
SIGNAL \d1|reg_File[1][0]~q\ : std_logic;
SIGNAL \d1|Decoder1~0_combout\ : std_logic;
SIGNAL \d1|reg_File[5][0]~0_combout\ : std_logic;
SIGNAL \d1|reg_File[5][0]~q\ : std_logic;
SIGNAL \d1|Mux95~1_combout\ : std_logic;
SIGNAL \d1|Mux95~2_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \f1|f1|mem~67_combout\ : std_logic;
SIGNAL \f1|f1|mem~114_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \u0|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u0|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u0|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u0|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u0|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u0|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u0|cathodes[6]~6_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \u1|cathodes[0]~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \u1|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u1|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u1|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u1|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u1|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u1|cathodes[6]~6_combout\ : std_logic;
SIGNAL \f1|f1|mem~87_combout\ : std_logic;
SIGNAL \f1|f1|mem~116_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \u2|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u2|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u2|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u2|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u2|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u2|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u2|cathodes[6]~6_combout\ : std_logic;
SIGNAL \u3|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u3|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u3|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u3|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u3|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u3|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u3|cathodes[6]~6_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \u4|cathodes[0]~13_combout\ : std_logic;
SIGNAL \u4|cathodes[1]~8_combout\ : std_logic;
SIGNAL \u4|cathodes[2]~9_combout\ : std_logic;
SIGNAL \u4|cathodes[3]~10_combout\ : std_logic;
SIGNAL \u4|cathodes[4]~11_combout\ : std_logic;
SIGNAL \u4|cathodes[5]~14_combout\ : std_logic;
SIGNAL \u4|cathodes[6]~12_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \u5|cathodes[0]~1_combout\ : std_logic;
SIGNAL \u5|cathodes[0]~9_combout\ : std_logic;
SIGNAL \u5|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u5|cathodes[0]~2_combout\ : std_logic;
SIGNAL \u5|cathodes[0]~10_combout\ : std_logic;
SIGNAL \u5|cathodes[1]~3_combout\ : std_logic;
SIGNAL \u5|cathodes[2]~4_combout\ : std_logic;
SIGNAL \u5|cathodes[3]~5_combout\ : std_logic;
SIGNAL \u5|cathodes[4]~6_combout\ : std_logic;
SIGNAL \u5|cathodes[5]~7_combout\ : std_logic;
SIGNAL \u5|cathodes[6]~8_combout\ : std_logic;
SIGNAL \f1|f1|mem~99_combout\ : std_logic;
SIGNAL \f1|f1|mem~117_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \u6|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u6|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u6|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u6|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u6|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u6|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u6|cathodes[6]~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \u7|cathodes[0]~0_combout\ : std_logic;
SIGNAL \u7|cathodes[1]~1_combout\ : std_logic;
SIGNAL \u7|cathodes[2]~2_combout\ : std_logic;
SIGNAL \u7|cathodes[3]~3_combout\ : std_logic;
SIGNAL \u7|cathodes[4]~4_combout\ : std_logic;
SIGNAL \u7|cathodes[5]~5_combout\ : std_logic;
SIGNAL \u7|cathodes[5]~6_combout\ : std_logic;
SIGNAL \u7|cathodes[6]~7_combout\ : std_logic;
SIGNAL \f1|f1|instruction\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \f1|f1|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u4|ALT_INV_cathodes[0]~13_combout\ : std_logic;
SIGNAL \u7|ALT_INV_cathodes[5]~6_combout\ : std_logic;
SIGNAL \u7|ALT_INV_cathodes[0]~0_combout\ : std_logic;
SIGNAL \u6|ALT_INV_cathodes[5]~5_combout\ : std_logic;
SIGNAL \u6|ALT_INV_cathodes[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

SevenSegement0 <= ww_SevenSegement0;
SevenSegement1 <= ww_SevenSegement1;
SevenSegement2 <= ww_SevenSegement2;
SevenSegement3 <= ww_SevenSegement3;
SevenSegement4 <= ww_SevenSegement4;
SevenSegement5 <= ww_SevenSegement5;
SevenSegement6 <= ww_SevenSegement6;
SevenSegement7 <= ww_SevenSegement7;
ww_clock <= clock;
ww_reset <= reset;
ww_branch_decision <= branch_decision;
ww_jump_decision <= jump_decision;
ww_RegisterWrite <= RegisterWrite;
ww_diplayDecison <= diplayDecison;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u4|ALT_INV_cathodes[0]~13_combout\ <= NOT \u4|cathodes[0]~13_combout\;
\u7|ALT_INV_cathodes[5]~6_combout\ <= NOT \u7|cathodes[5]~6_combout\;
\u7|ALT_INV_cathodes[0]~0_combout\ <= NOT \u7|cathodes[0]~0_combout\;
\u6|ALT_INV_cathodes[5]~5_combout\ <= NOT \u6|cathodes[5]~5_combout\;
\u6|ALT_INV_cathodes[0]~0_combout\ <= NOT \u6|cathodes[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\SevenSegement0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\SevenSegement0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\SevenSegement0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\SevenSegement0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\SevenSegement0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\SevenSegement0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\SevenSegement0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\SevenSegement1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\SevenSegement1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\SevenSegement1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\SevenSegement1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\SevenSegement1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\SevenSegement1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\SevenSegement1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\SevenSegement2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\SevenSegement2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\SevenSegement2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\SevenSegement2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\SevenSegement2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\SevenSegement2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\SevenSegement2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\SevenSegement3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\SevenSegement3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\SevenSegement3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\SevenSegement3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\SevenSegement3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\SevenSegement3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\SevenSegement3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\SevenSegement4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_cathodes[0]~13_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\SevenSegement4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[1]~8_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\SevenSegement4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[2]~9_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\SevenSegement4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[3]~10_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\SevenSegement4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[4]~11_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\SevenSegement4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[5]~14_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\SevenSegement4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cathodes[6]~12_combout\,
	devoe => ww_devoe,
	o => \SevenSegement4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\SevenSegement5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[0]~10_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\SevenSegement5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[1]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\SevenSegement5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[2]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\SevenSegement5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[3]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\SevenSegement5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[4]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\SevenSegement5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[5]~7_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\SevenSegement5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|cathodes[6]~8_combout\,
	devoe => ww_devoe,
	o => \SevenSegement5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\SevenSegement6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|ALT_INV_cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\SevenSegement6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\SevenSegement6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\SevenSegement6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\SevenSegement6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\SevenSegement6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|ALT_INV_cathodes[5]~5_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\SevenSegement6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|cathodes[6]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\SevenSegement7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|ALT_INV_cathodes[0]~0_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\SevenSegement7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|cathodes[1]~1_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\SevenSegement7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|cathodes[2]~2_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\SevenSegement7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|cathodes[3]~3_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\SevenSegement7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|cathodes[4]~4_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\SevenSegement7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|ALT_INV_cathodes[5]~6_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\SevenSegement7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u7|cathodes[6]~7_combout\,
	devoe => ww_devoe,
	o => \SevenSegement7[6]~output_o\);

-- Location: IOIBUF_X115_Y11_N8
\diplayDecison[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_diplayDecison(2),
	o => \diplayDecison[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\diplayDecison[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_diplayDecison(0),
	o => \diplayDecison[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\diplayDecison[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_diplayDecison(1),
	o => \diplayDecison[1]~input_o\);

-- Location: LCCOMB_X110_Y25_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\diplayDecison[2]~input_o\ & ((!\diplayDecison[1]~input_o\) # (!\diplayDecison[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \diplayDecison[2]~input_o\,
	datac => \diplayDecison[0]~input_o\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\jump_decision~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_decision,
	o => \jump_decision~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\branch_decision~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_branch_decision,
	o => \branch_decision~input_o\);

-- Location: LCCOMB_X110_Y29_N14
\f1|f1|pc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|pc~4_combout\ = (\jump_decision~input_o\) # (\branch_decision~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump_decision~input_o\,
	datac => \branch_decision~input_o\,
	combout => \f1|f1|pc~4_combout\);

-- Location: LCCOMB_X109_Y29_N22
\f1|f1|pc[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|pc[0]~5_combout\ = (((\f1|f1|pc\(0)) # (\f1|f1|pc~4_combout\)))
-- \f1|f1|pc[0]~6\ = CARRY((\f1|f1|pc\(0)) # (\f1|f1|pc~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datab => \f1|f1|pc~4_combout\,
	datad => VCC,
	combout => \f1|f1|pc[0]~5_combout\,
	cout => \f1|f1|pc[0]~6\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X109_Y29_N23
\f1|f1|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|pc[0]~5_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|pc\(0));

-- Location: LCCOMB_X109_Y29_N10
\f1|f1|mem.raddr_a[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem.raddr_a[1]~1_combout\ = (!\jump_decision~input_o\ & \f1|f1|pc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_decision~input_o\,
	datad => \f1|f1|pc\(1),
	combout => \f1|f1|mem.raddr_a[1]~1_combout\);

-- Location: LCCOMB_X109_Y29_N24
\f1|f1|pc[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|pc[1]~7_combout\ = (\f1|f1|mem.raddr_a[1]~1_combout\ & (((!\f1|f1|pc[0]~6\)))) # (!\f1|f1|mem.raddr_a[1]~1_combout\ & ((\branch_decision~input_o\ & (!\f1|f1|pc[0]~6\)) # (!\branch_decision~input_o\ & ((\f1|f1|pc[0]~6\) # (GND)))))
-- \f1|f1|pc[1]~8\ = CARRY(((!\f1|f1|mem.raddr_a[1]~1_combout\ & !\branch_decision~input_o\)) # (!\f1|f1|pc[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|mem.raddr_a[1]~1_combout\,
	datab => \branch_decision~input_o\,
	datad => VCC,
	cin => \f1|f1|pc[0]~6\,
	combout => \f1|f1|pc[1]~7_combout\,
	cout => \f1|f1|pc[1]~8\);

-- Location: FF_X109_Y29_N25
\f1|f1|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|pc[1]~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|pc\(1));

-- Location: LCCOMB_X109_Y29_N26
\f1|f1|pc[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|pc[2]~9_combout\ = (\f1|f1|pc[1]~8\ & (\f1|f1|pc\(2) & (!\f1|f1|pc~4_combout\ & VCC))) # (!\f1|f1|pc[1]~8\ & ((((\f1|f1|pc\(2) & !\f1|f1|pc~4_combout\)))))
-- \f1|f1|pc[2]~10\ = CARRY((\f1|f1|pc\(2) & (!\f1|f1|pc~4_combout\ & !\f1|f1|pc[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(2),
	datab => \f1|f1|pc~4_combout\,
	datad => VCC,
	cin => \f1|f1|pc[1]~8\,
	combout => \f1|f1|pc[2]~9_combout\,
	cout => \f1|f1|pc[2]~10\);

-- Location: FF_X109_Y29_N27
\f1|f1|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|pc[2]~9_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|pc\(2));

-- Location: LCCOMB_X109_Y29_N0
\f1|f1|mem.raddr_a[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem.raddr_a[3]~0_combout\ = (!\branch_decision~input_o\ & ((\jump_decision~input_o\) # (\f1|f1|pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_decision~input_o\,
	datac => \jump_decision~input_o\,
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem.raddr_a[3]~0_combout\);

-- Location: LCCOMB_X109_Y29_N28
\f1|f1|pc[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|pc[3]~11_combout\ = \f1|f1|pc[2]~10\ $ (\f1|f1|mem.raddr_a[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \f1|f1|mem.raddr_a[3]~0_combout\,
	cin => \f1|f1|pc[2]~10\,
	combout => \f1|f1|pc[3]~11_combout\);

-- Location: FF_X109_Y29_N29
\f1|f1|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|pc[3]~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|pc\(3));

-- Location: LCCOMB_X109_Y29_N12
\f1|f1|mem~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~48_combout\ = (\f1|f1|pc\(0) & (!\f1|f1|pc\(3) & ((\f1|f1|pc\(1)) # (\f1|f1|pc\(2))))) # (!\f1|f1|pc\(0) & (!\f1|f1|pc\(2) & (\f1|f1|pc\(1) $ (\f1|f1|pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datab => \f1|f1|pc\(1),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~48_combout\);

-- Location: LCCOMB_X112_Y29_N6
\f1|f1|mem~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~112_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & \f1|f1|mem~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~48_combout\,
	combout => \f1|f1|mem~112_combout\);

-- Location: FF_X112_Y29_N7
\f1|f1|instruction[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~112_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(13));

-- Location: IOIBUF_X115_Y10_N1
\RegisterWrite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegisterWrite,
	o => \RegisterWrite~input_o\);

-- Location: LCCOMB_X110_Y29_N16
\f1|f1|mem~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~27_combout\ = (!\f1|f1|pc\(0) & (!\f1|f1|pc\(1) & !\f1|f1|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|pc\(0),
	datac => \f1|f1|pc\(1),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~27_combout\);

-- Location: LCCOMB_X111_Y29_N14
\f1|f1|mem~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~110_combout\ = (!\branch_decision~input_o\ & (\f1|f1|pc\(2) & (\f1|f1|mem~27_combout\ & !\jump_decision~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_decision~input_o\,
	datab => \f1|f1|pc\(2),
	datac => \f1|f1|mem~27_combout\,
	datad => \jump_decision~input_o\,
	combout => \f1|f1|mem~110_combout\);

-- Location: FF_X111_Y29_N15
\f1|f1|instruction[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~110_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(18));

-- Location: LCCOMB_X111_Y29_N0
\f1|f1|mem~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~40_combout\ = (\f1|f1|pc\(2) & (\f1|f1|pc\(0))) # (!\f1|f1|pc\(2) & ((\f1|f1|pc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|pc\(0),
	datac => \f1|f1|pc\(1),
	datad => \f1|f1|pc\(2),
	combout => \f1|f1|mem~40_combout\);

-- Location: LCCOMB_X111_Y29_N4
\f1|f1|mem~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~111_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & (!\f1|f1|pc\(3) & \f1|f1|mem~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datab => \f1|f1|pc\(3),
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~40_combout\,
	combout => \f1|f1|mem~111_combout\);

-- Location: FF_X111_Y29_N5
\f1|f1|instruction[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~111_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(17));

-- Location: LCCOMB_X112_Y29_N18
\f1|f1|mem~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~19_combout\ = (\f1|f1|pc\(0) & ((!\f1|f1|pc\(3)))) # (!\f1|f1|pc\(0) & (!\f1|f1|pc\(1) & \f1|f1|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|pc\(0),
	datac => \f1|f1|pc\(1),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~19_combout\);

-- Location: LCCOMB_X112_Y29_N4
\f1|f1|mem~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~109_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & (!\f1|f1|pc\(2) & \f1|f1|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datab => \f1|f1|pc\(2),
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~19_combout\,
	combout => \f1|f1|mem~109_combout\);

-- Location: FF_X112_Y29_N5
\f1|f1|instruction[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~109_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(16));

-- Location: LCCOMB_X111_Y29_N10
\d1|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~4_combout\ = (\RegisterWrite~input_o\ & (!\f1|f1|instruction\(18) & (\f1|f1|instruction\(17) & !\f1|f1|instruction\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterWrite~input_o\,
	datab => \f1|f1|instruction\(18),
	datac => \f1|f1|instruction\(17),
	datad => \f1|f1|instruction\(16),
	combout => \d1|Decoder1~4_combout\);

-- Location: LCCOMB_X111_Y29_N30
\d1|reg_File[2][10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[2][10]~7_combout\ = (\d1|Decoder1~4_combout\) # ((!\reset~input_o\ & \d1|reg_File[2][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \d1|reg_File[2][10]~q\,
	datad => \d1|Decoder1~4_combout\,
	combout => \d1|reg_File[2][10]~7_combout\);

-- Location: FF_X111_Y29_N31
\d1|reg_File[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[2][10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[2][10]~q\);

-- Location: LCCOMB_X112_Y29_N10
\d1|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~2_combout\ = (\RegisterWrite~input_o\ & (!\f1|f1|instruction\(17) & (\f1|f1|instruction\(16) & !\f1|f1|instruction\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterWrite~input_o\,
	datab => \f1|f1|instruction\(17),
	datac => \f1|f1|instruction\(16),
	datad => \f1|f1|instruction\(18),
	combout => \d1|Decoder1~2_combout\);

-- Location: LCCOMB_X112_Y29_N22
\d1|reg_File[1][10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[1][10]~6_combout\ = (\d1|Decoder1~2_combout\) # ((!\reset~input_o\ & \d1|reg_File[1][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d1|reg_File[1][10]~q\,
	datad => \d1|Decoder1~2_combout\,
	combout => \d1|reg_File[1][10]~6_combout\);

-- Location: FF_X112_Y29_N23
\d1|reg_File[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[1][10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[1][10]~q\);

-- Location: LCCOMB_X110_Y29_N8
\f1|f1|instruction~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|instruction~15_combout\ = (\branch_decision~input_o\) # ((\f1|f1|pc\(0) & (!\jump_decision~input_o\ & !\f1|f1|pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_decision~input_o\,
	datab => \f1|f1|pc\(0),
	datac => \jump_decision~input_o\,
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|instruction~15_combout\);

-- Location: LCCOMB_X111_Y29_N6
\f1|f1|instruction~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|instruction~16_combout\ = (!\reset~input_o\ & (\f1|f1|instruction~15_combout\ & ((\f1|f1|pc~4_combout\) # (!\f1|f1|pc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc~4_combout\,
	datab => \f1|f1|pc\(2),
	datac => \reset~input_o\,
	datad => \f1|f1|instruction~15_combout\,
	combout => \f1|f1|instruction~16_combout\);

-- Location: FF_X111_Y29_N7
\f1|f1|instruction[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|instruction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(20));

-- Location: LCCOMB_X111_Y29_N20
\d1|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~5_combout\ = (\f1|f1|instruction\(20) & (!\f1|f1|instruction\(18) & (\RegisterWrite~input_o\ & !\f1|f1|instruction\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(20),
	datab => \f1|f1|instruction\(18),
	datac => \RegisterWrite~input_o\,
	datad => \f1|f1|instruction\(16),
	combout => \d1|Decoder1~5_combout\);

-- Location: LCCOMB_X111_Y29_N16
\d1|reg_File~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File~8_combout\ = (\f1|f1|instruction\(17) & (!\reset~input_o\ & (\d1|reg_File[0][10]~q\))) # (!\f1|f1|instruction\(17) & ((\d1|Decoder1~5_combout\) # ((!\reset~input_o\ & \d1|reg_File[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(17),
	datab => \reset~input_o\,
	datac => \d1|reg_File[0][10]~q\,
	datad => \d1|Decoder1~5_combout\,
	combout => \d1|reg_File~8_combout\);

-- Location: FF_X111_Y29_N17
\d1|reg_File[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[0][10]~q\);

-- Location: LCCOMB_X109_Y29_N2
\f1|f1|mem~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~54_combout\ = (!\f1|f1|pc\(3) & ((\f1|f1|pc\(1)) # (!\f1|f1|pc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(1),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~54_combout\);

-- Location: LCCOMB_X109_Y29_N8
\f1|f1|mem~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~113_combout\ = (\branch_decision~input_o\) # ((\f1|f1|pc\(0) & (!\jump_decision~input_o\ & \f1|f1|mem~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datab => \branch_decision~input_o\,
	datac => \jump_decision~input_o\,
	datad => \f1|f1|mem~54_combout\,
	combout => \f1|f1|mem~113_combout\);

-- Location: FF_X109_Y29_N9
\f1|f1|instruction[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~113_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(12));

-- Location: LCCOMB_X111_Y29_N22
\f1|f1|instruction~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|instruction~3_combout\ = (\f1|f1|pc\(1) & (!\reset~input_o\ & (\f1|f1|pc\(2) & !\f1|f1|pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(1),
	datab => \reset~input_o\,
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|instruction~3_combout\);

-- Location: LCCOMB_X111_Y29_N26
\f1|f1|instruction~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|instruction~17_combout\ = (!\branch_decision~input_o\ & (\f1|f1|pc\(0) & (\f1|f1|instruction~3_combout\ & !\jump_decision~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_decision~input_o\,
	datab => \f1|f1|pc\(0),
	datac => \f1|f1|instruction~3_combout\,
	datad => \jump_decision~input_o\,
	combout => \f1|f1|instruction~17_combout\);

-- Location: FF_X111_Y29_N27
\f1|f1|instruction[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|instruction~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(10));

-- Location: LCCOMB_X110_Y29_N0
\d1|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux93~0_combout\ = (\f1|f1|instruction\(12) & (((\f1|f1|instruction\(10))))) # (!\f1|f1|instruction\(12) & ((\f1|f1|instruction\(10) & (\d1|reg_File[1][10]~q\)) # (!\f1|f1|instruction\(10) & ((\d1|reg_File[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[1][10]~q\,
	datab => \d1|reg_File[0][10]~q\,
	datac => \f1|f1|instruction\(12),
	datad => \f1|f1|instruction\(10),
	combout => \d1|Mux93~0_combout\);

-- Location: LCCOMB_X112_Y29_N0
\d1|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~3_combout\ = (\RegisterWrite~input_o\ & (\f1|f1|instruction\(17) & (\f1|f1|instruction\(16) & !\f1|f1|instruction\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterWrite~input_o\,
	datab => \f1|f1|instruction\(17),
	datac => \f1|f1|instruction\(16),
	datad => \f1|f1|instruction\(18),
	combout => \d1|Decoder1~3_combout\);

-- Location: LCCOMB_X112_Y29_N8
\d1|reg_File[3][10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[3][10]~9_combout\ = (\d1|Decoder1~3_combout\) # ((!\reset~input_o\ & \d1|reg_File[3][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d1|reg_File[3][10]~q\,
	datad => \d1|Decoder1~3_combout\,
	combout => \d1|reg_File[3][10]~9_combout\);

-- Location: FF_X112_Y29_N9
\d1|reg_File[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[3][10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[3][10]~q\);

-- Location: LCCOMB_X110_Y29_N18
\d1|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux93~1_combout\ = (\d1|Mux93~0_combout\ & (((\d1|reg_File[3][10]~q\) # (!\f1|f1|instruction\(12))))) # (!\d1|Mux93~0_combout\ & (\d1|reg_File[2][10]~q\ & (\f1|f1|instruction\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[2][10]~q\,
	datab => \d1|Mux93~0_combout\,
	datac => \f1|f1|instruction\(12),
	datad => \d1|reg_File[3][10]~q\,
	combout => \d1|Mux93~1_combout\);

-- Location: LCCOMB_X113_Y29_N30
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\diplayDecison[1]~input_o\ & ((\f1|f1|instruction\(13)) # (\d1|Mux93~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|instruction\(13),
	datac => \d1|Mux93~1_combout\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X109_Y29_N4
\f1|f1|mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~3_combout\ = (\f1|f1|pc\(1) & (!\f1|f1|pc\(3) & ((\f1|f1|pc\(0)) # (!\f1|f1|pc\(2))))) # (!\f1|f1|pc\(1) & (!\f1|f1|pc\(0) & (\f1|f1|pc\(2) $ (\f1|f1|pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datab => \f1|f1|pc\(2),
	datac => \f1|f1|pc\(1),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~3_combout\);

-- Location: LCCOMB_X109_Y29_N20
\f1|f1|mem~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~107_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & \f1|f1|mem~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump_decision~input_o\,
	datac => \f1|f1|mem~3_combout\,
	datad => \branch_decision~input_o\,
	combout => \f1|f1|mem~107_combout\);

-- Location: FF_X109_Y29_N21
\f1|f1|instruction[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~107_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(21));

-- Location: LCCOMB_X109_Y29_N6
\f1|f1|mem~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~10_combout\ = (\f1|f1|pc\(2) & ((!\f1|f1|pc\(3)))) # (!\f1|f1|pc\(2) & (!\f1|f1|pc\(1) & \f1|f1|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(1),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~10_combout\);

-- Location: LCCOMB_X109_Y29_N18
\f1|f1|mem~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~108_combout\ = (\f1|f1|mem~10_combout\ & (!\jump_decision~input_o\ & (!\f1|f1|pc\(0) & !\branch_decision~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|mem~10_combout\,
	datab => \jump_decision~input_o\,
	datac => \f1|f1|pc\(0),
	datad => \branch_decision~input_o\,
	combout => \f1|f1|mem~108_combout\);

-- Location: FF_X109_Y29_N19
\f1|f1|instruction[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~108_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(22));

-- Location: LCCOMB_X110_Y29_N24
\d1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux29~0_combout\ = (\f1|f1|instruction\(21) & ((\f1|f1|instruction\(22)) # ((\d1|reg_File[1][10]~q\)))) # (!\f1|f1|instruction\(21) & (!\f1|f1|instruction\(22) & ((\d1|reg_File[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(21),
	datab => \f1|f1|instruction\(22),
	datac => \d1|reg_File[1][10]~q\,
	datad => \d1|reg_File[0][10]~q\,
	combout => \d1|Mux29~0_combout\);

-- Location: LCCOMB_X110_Y29_N6
\d1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux29~1_combout\ = (\d1|Mux29~0_combout\ & ((\d1|reg_File[3][10]~q\) # ((!\f1|f1|instruction\(22))))) # (!\d1|Mux29~0_combout\ & (((\d1|reg_File[2][10]~q\ & \f1|f1|instruction\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[3][10]~q\,
	datab => \d1|Mux29~0_combout\,
	datac => \d1|reg_File[2][10]~q\,
	datad => \f1|f1|instruction\(22),
	combout => \d1|Mux29~1_combout\);

-- Location: LCCOMB_X111_Y25_N8
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (!\diplayDecison[1]~input_o\ & !\diplayDecison[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[1]~input_o\,
	datac => \diplayDecison[0]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X111_Y29_N28
\f1|f1|mem~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~105_combout\ = (!\jump_decision~input_o\ & (!\branch_decision~input_o\ & \f1|f1|pc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datac => \branch_decision~input_o\,
	datad => \f1|f1|pc\(0),
	combout => \f1|f1|mem~105_combout\);

-- Location: LCCOMB_X111_Y29_N12
\f1|f1|mem~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~106_combout\ = (\f1|f1|pc\(2) & (!\f1|f1|pc\(3) & (!\f1|f1|pc\(1) & \f1|f1|mem~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(2),
	datab => \f1|f1|pc\(3),
	datac => \f1|f1|pc\(1),
	datad => \f1|f1|mem~105_combout\,
	combout => \f1|f1|mem~106_combout\);

-- Location: FF_X111_Y29_N13
\f1|f1|instruction[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~106_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(23));

-- Location: LCCOMB_X110_Y29_N28
\d1|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux61~0_combout\ = (\f1|f1|instruction\(16) & (((\f1|f1|instruction\(17))))) # (!\f1|f1|instruction\(16) & ((\f1|f1|instruction\(17) & (\d1|reg_File[2][10]~q\)) # (!\f1|f1|instruction\(17) & ((\d1|reg_File[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[2][10]~q\,
	datab => \d1|reg_File[0][10]~q\,
	datac => \f1|f1|instruction\(16),
	datad => \f1|f1|instruction\(17),
	combout => \d1|Mux61~0_combout\);

-- Location: LCCOMB_X110_Y29_N30
\d1|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux61~1_combout\ = (\d1|Mux61~0_combout\ & (((\d1|reg_File[3][10]~q\) # (!\f1|f1|instruction\(16))))) # (!\d1|Mux61~0_combout\ & (\d1|reg_File[1][10]~q\ & (\f1|f1|instruction\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[1][10]~q\,
	datab => \d1|Mux61~0_combout\,
	datac => \f1|f1|instruction\(16),
	datad => \d1|reg_File[3][10]~q\,
	combout => \d1|Mux61~1_combout\);

-- Location: LCCOMB_X111_Y25_N10
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\diplayDecison[1]~input_o\ & (\diplayDecison[0]~input_o\ & ((\d1|Mux61~1_combout\) # (\f1|f1|instruction\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[1]~input_o\,
	datab => \d1|Mux61~1_combout\,
	datac => \f1|f1|instruction\(18),
	datad => \diplayDecison[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X111_Y25_N18
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux29~0_combout\) # ((\Mux29~1_combout\ & ((\d1|Mux29~1_combout\) # (\f1|f1|instruction\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Mux29~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \f1|f1|instruction\(23),
	datad => \Mux29~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X111_Y25_N4
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux31~0_combout\ & ((\Mux13~0_combout\) # (\Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X111_Y25_N6
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\diplayDecison[0]~input_o\ & ((\diplayDecison[2]~input_o\) # (!\diplayDecison[1]~input_o\))) # (!\diplayDecison[0]~input_o\ & ((\diplayDecison[1]~input_o\) # (!\diplayDecison[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[0]~input_o\,
	datac => \diplayDecison[1]~input_o\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X109_Y29_N16
\f1|f1|mem~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~75_combout\ = (!\f1|f1|pc\(0) & (!\f1|f1|pc\(2) & !\f1|f1|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(1),
	combout => \f1|f1|mem~75_combout\);

-- Location: LCCOMB_X112_Y29_N20
\f1|f1|mem~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~115_combout\ = (!\jump_decision~input_o\ & (\f1|f1|pc\(3) & (!\branch_decision~input_o\ & \f1|f1|mem~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datab => \f1|f1|pc\(3),
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~75_combout\,
	combout => \f1|f1|mem~115_combout\);

-- Location: FF_X112_Y29_N21
\f1|f1|instruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~115_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(2));

-- Location: LCCOMB_X112_Y25_N10
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux29~3_combout\) # ((!\Mux18~0_combout\ & \f1|f1|instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datac => \Mux18~0_combout\,
	datad => \f1|f1|instruction\(2),
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X111_Y25_N20
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\f1|f1|instruction\(10) & ((\diplayDecison[0]~input_o\ & (\diplayDecison[1]~input_o\ & !\diplayDecison[2]~input_o\)) # (!\diplayDecison[0]~input_o\ & (!\diplayDecison[1]~input_o\ & \diplayDecison[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[0]~input_o\,
	datab => \f1|f1|instruction\(10),
	datac => \diplayDecison[1]~input_o\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X112_Y29_N26
\d1|reg_File~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File~3_combout\ = (\d1|Decoder1~3_combout\) # ((!\reset~input_o\ & \d1|reg_File[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d1|reg_File[3][0]~q\,
	datad => \d1|Decoder1~3_combout\,
	combout => \d1|reg_File~3_combout\);

-- Location: FF_X112_Y29_N27
\d1|reg_File[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[3][0]~q\);

-- Location: LCCOMB_X112_Y29_N28
\d1|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~1_combout\ = (\RegisterWrite~input_o\ & (\f1|f1|instruction\(17) & \f1|f1|instruction\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterWrite~input_o\,
	datac => \f1|f1|instruction\(17),
	datad => \f1|f1|instruction\(18),
	combout => \d1|Decoder1~1_combout\);

-- Location: LCCOMB_X112_Y29_N14
\d1|reg_File[7][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[7][0]~1_combout\ = (\reset~input_o\ & (\f1|f1|instruction\(16) & ((\d1|Decoder1~1_combout\)))) # (!\reset~input_o\ & ((\d1|reg_File[7][0]~q\) # ((\f1|f1|instruction\(16) & \d1|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \f1|f1|instruction\(16),
	datac => \d1|reg_File[7][0]~q\,
	datad => \d1|Decoder1~1_combout\,
	combout => \d1|reg_File[7][0]~1_combout\);

-- Location: FF_X112_Y29_N15
\d1|reg_File[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[7][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[7][0]~q\);

-- Location: LCCOMB_X113_Y29_N4
\d1|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux95~0_combout\ = (\f1|f1|instruction\(10) & ((\f1|f1|instruction\(13) & ((!\d1|reg_File[7][0]~q\))) # (!\f1|f1|instruction\(13) & (!\d1|reg_File[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[3][0]~q\,
	datab => \f1|f1|instruction\(10),
	datac => \f1|f1|instruction\(13),
	datad => \d1|reg_File[7][0]~q\,
	combout => \d1|Mux95~0_combout\);

-- Location: LCCOMB_X112_Y29_N16
\d1|reg_File[6][13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[6][13]~4_combout\ = (\reset~input_o\ & (!\f1|f1|instruction\(16) & ((\d1|Decoder1~1_combout\)))) # (!\reset~input_o\ & ((\d1|reg_File[6][13]~q\) # ((!\f1|f1|instruction\(16) & \d1|Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \f1|f1|instruction\(16),
	datac => \d1|reg_File[6][13]~q\,
	datad => \d1|Decoder1~1_combout\,
	combout => \d1|reg_File[6][13]~4_combout\);

-- Location: FF_X112_Y29_N17
\d1|reg_File[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[6][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[6][13]~q\);

-- Location: LCCOMB_X111_Y29_N24
\d1|reg_File~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File~5_combout\ = (\d1|Decoder1~4_combout\) # ((!\reset~input_o\ & \d1|reg_File[2][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \d1|reg_File[2][13]~q\,
	datad => \d1|Decoder1~4_combout\,
	combout => \d1|reg_File~5_combout\);

-- Location: FF_X111_Y29_N25
\d1|reg_File[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[2][13]~q\);

-- Location: LCCOMB_X113_Y29_N28
\d1|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux94~0_combout\ = (!\f1|f1|instruction\(10) & ((\f1|f1|instruction\(13) & (!\d1|reg_File[6][13]~q\)) # (!\f1|f1|instruction\(13) & ((!\d1|reg_File[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[6][13]~q\,
	datab => \f1|f1|instruction\(10),
	datac => \f1|f1|instruction\(13),
	datad => \d1|reg_File[2][13]~q\,
	combout => \d1|Mux94~0_combout\);

-- Location: LCCOMB_X110_Y29_N26
\d1|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux94~1_combout\ = (\f1|f1|instruction\(12) & ((\d1|Mux95~0_combout\) # (\d1|Mux94~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|Mux95~0_combout\,
	datac => \f1|f1|instruction\(12),
	datad => \d1|Mux94~0_combout\,
	combout => \d1|Mux94~1_combout\);

-- Location: LCCOMB_X113_Y29_N0
\Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = (!\f1|f1|instruction\(18) & ((\f1|f1|instruction\(16) & (!\d1|reg_File[3][0]~q\)) # (!\f1|f1|instruction\(16) & ((!\d1|reg_File[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[3][0]~q\,
	datab => \d1|reg_File[2][13]~q\,
	datac => \f1|f1|instruction\(16),
	datad => \f1|f1|instruction\(18),
	combout => \Mux31~14_combout\);

-- Location: LCCOMB_X113_Y29_N6
\Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\f1|f1|instruction\(18) & ((\f1|f1|instruction\(16) & ((!\d1|reg_File[7][0]~q\))) # (!\f1|f1|instruction\(16) & (!\d1|reg_File[6][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[6][13]~q\,
	datab => \f1|f1|instruction\(18),
	datac => \f1|f1|instruction\(16),
	datad => \d1|reg_File[7][0]~q\,
	combout => \Mux31~13_combout\);

-- Location: LCCOMB_X113_Y29_N22
\Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = (\f1|f1|instruction\(17) & (\diplayDecison[0]~input_o\ & ((\Mux31~14_combout\) # (\Mux31~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(17),
	datab => \Mux31~14_combout\,
	datac => \diplayDecison[0]~input_o\,
	datad => \Mux31~13_combout\,
	combout => \Mux31~15_combout\);

-- Location: LCCOMB_X113_Y29_N14
\Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (!\f1|f1|instruction\(23) & ((\f1|f1|instruction\(21) & (!\d1|reg_File[3][0]~q\)) # (!\f1|f1|instruction\(21) & ((!\d1|reg_File[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[3][0]~q\,
	datab => \d1|reg_File[2][13]~q\,
	datac => \f1|f1|instruction\(23),
	datad => \f1|f1|instruction\(21),
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X113_Y29_N20
\Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\f1|f1|instruction\(23) & ((\f1|f1|instruction\(21) & ((!\d1|reg_File[7][0]~q\))) # (!\f1|f1|instruction\(21) & (!\d1|reg_File[6][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[6][13]~q\,
	datab => \f1|f1|instruction\(23),
	datac => \f1|f1|instruction\(21),
	datad => \d1|reg_File[7][0]~q\,
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X113_Y29_N8
\Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\f1|f1|instruction\(22) & (!\diplayDecison[0]~input_o\ & ((\Mux31~11_combout\) # (\Mux31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(22),
	datab => \Mux31~11_combout\,
	datac => \diplayDecison[0]~input_o\,
	datad => \Mux31~10_combout\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X110_Y29_N4
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\diplayDecison[1]~input_o\ & ((\Mux31~15_combout\) # (\Mux31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datac => \diplayDecison[1]~input_o\,
	datad => \Mux31~12_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X110_Y25_N22
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux31~0_combout\ & ((\Mux30~0_combout\) # ((\d1|Mux94~1_combout\ & \diplayDecison[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Mux94~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux30~0_combout\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X112_Y25_N4
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux30~1_combout\) # ((!\Mux18~0_combout\ & \f1|f1|instruction\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Mux18~0_combout\,
	datac => \f1|f1|instruction\(17),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X112_Y29_N12
\d1|reg_File~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File~2_combout\ = (\d1|Decoder1~2_combout\) # ((!\reset~input_o\ & \d1|reg_File[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d1|reg_File[1][0]~q\,
	datad => \d1|Decoder1~2_combout\,
	combout => \d1|reg_File~2_combout\);

-- Location: FF_X112_Y29_N13
\d1|reg_File[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[1][0]~q\);

-- Location: LCCOMB_X112_Y29_N2
\d1|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder1~0_combout\ = (\RegisterWrite~input_o\ & (!\f1|f1|instruction\(17) & (\f1|f1|instruction\(16) & \f1|f1|instruction\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterWrite~input_o\,
	datab => \f1|f1|instruction\(17),
	datac => \f1|f1|instruction\(16),
	datad => \f1|f1|instruction\(18),
	combout => \d1|Decoder1~0_combout\);

-- Location: LCCOMB_X112_Y29_N24
\d1|reg_File[5][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|reg_File[5][0]~0_combout\ = (\d1|Decoder1~0_combout\) # ((!\reset~input_o\ & \d1|reg_File[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \d1|reg_File[5][0]~q\,
	datad => \d1|Decoder1~0_combout\,
	combout => \d1|reg_File[5][0]~0_combout\);

-- Location: FF_X112_Y29_N25
\d1|reg_File[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \d1|reg_File[5][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|reg_File[5][0]~q\);

-- Location: LCCOMB_X113_Y29_N2
\d1|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux95~1_combout\ = (\f1|f1|instruction\(10) & ((\f1|f1|instruction\(13) & ((!\d1|reg_File[5][0]~q\))) # (!\f1|f1|instruction\(13) & (!\d1|reg_File[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[1][0]~q\,
	datab => \f1|f1|instruction\(10),
	datac => \f1|f1|instruction\(13),
	datad => \d1|reg_File[5][0]~q\,
	combout => \d1|Mux95~1_combout\);

-- Location: LCCOMB_X109_Y29_N14
\d1|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Mux95~2_combout\ = (\f1|f1|instruction\(12) & (\d1|Mux95~0_combout\)) # (!\f1|f1|instruction\(12) & ((\d1|Mux95~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|instruction\(12),
	datac => \d1|Mux95~0_combout\,
	datad => \d1|Mux95~1_combout\,
	combout => \d1|Mux95~2_combout\);

-- Location: LCCOMB_X113_Y29_N18
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (!\f1|f1|instruction\(23) & ((\f1|f1|instruction\(22) & (!\d1|reg_File[3][0]~q\)) # (!\f1|f1|instruction\(22) & ((!\d1|reg_File[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[3][0]~q\,
	datab => \f1|f1|instruction\(23),
	datac => \f1|f1|instruction\(22),
	datad => \d1|reg_File[1][0]~q\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X113_Y29_N16
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\f1|f1|instruction\(23) & ((\f1|f1|instruction\(22) & (!\d1|reg_File[7][0]~q\)) # (!\f1|f1|instruction\(22) & ((!\d1|reg_File[5][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|reg_File[7][0]~q\,
	datab => \f1|f1|instruction\(23),
	datac => \f1|f1|instruction\(22),
	datad => \d1|reg_File[5][0]~q\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X113_Y29_N24
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\f1|f1|instruction\(21) & (!\diplayDecison[0]~input_o\ & ((\Mux31~2_combout\) # (\Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(21),
	datab => \Mux31~2_combout\,
	datac => \diplayDecison[0]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X113_Y29_N12
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (!\f1|f1|instruction\(18) & ((\f1|f1|instruction\(17) & (!\d1|reg_File[3][0]~q\)) # (!\f1|f1|instruction\(17) & ((!\d1|reg_File[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(17),
	datab => \f1|f1|instruction\(18),
	datac => \d1|reg_File[3][0]~q\,
	datad => \d1|reg_File[1][0]~q\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X113_Y29_N10
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\f1|f1|instruction\(18) & ((\f1|f1|instruction\(17) & ((!\d1|reg_File[7][0]~q\))) # (!\f1|f1|instruction\(17) & (!\d1|reg_File[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|instruction\(18),
	datab => \d1|reg_File[5][0]~q\,
	datac => \f1|f1|instruction\(17),
	datad => \d1|reg_File[7][0]~q\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X113_Y29_N26
\Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\f1|f1|instruction\(16) & (\diplayDecison[0]~input_o\ & ((\Mux31~5_combout\) # (\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \f1|f1|instruction\(16),
	datac => \diplayDecison[0]~input_o\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X110_Y25_N26
\Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (!\diplayDecison[1]~input_o\ & ((\Mux31~3_combout\) # (\Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datac => \Mux31~6_combout\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X110_Y25_N20
\Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\Mux31~0_combout\ & ((\Mux31~7_combout\) # ((\d1|Mux95~2_combout\ & \diplayDecison[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Mux95~2_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~7_combout\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X110_Y29_N10
\f1|f1|mem~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~67_combout\ = (\f1|f1|pc\(2) & (!\f1|f1|pc\(1) & !\f1|f1|pc\(0))) # (!\f1|f1|pc\(2) & ((\f1|f1|pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|f1|pc\(1),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(0),
	combout => \f1|f1|mem~67_combout\);

-- Location: LCCOMB_X111_Y29_N2
\f1|f1|mem~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~114_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & (!\f1|f1|pc\(3) & \f1|f1|mem~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datab => \f1|f1|pc\(3),
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~67_combout\,
	combout => \f1|f1|mem~114_combout\);

-- Location: FF_X111_Y29_N3
\f1|f1|instruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~114_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(0));

-- Location: LCCOMB_X111_Y25_N24
\Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux31~8_combout\) # ((!\Mux18~0_combout\ & \f1|f1|instruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux31~8_combout\,
	datac => \f1|f1|instruction\(0),
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X112_Y25_N8
\u0|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[0]~0_combout\ = (\Mux29~4_combout\ & (!\Mux30~2_combout\ & (\Mux28~0_combout\ $ (!\Mux31~9_combout\)))) # (!\Mux29~4_combout\ & (\Mux31~9_combout\ & (\Mux28~0_combout\ $ (!\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[0]~0_combout\);

-- Location: LCCOMB_X112_Y25_N26
\u0|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[1]~1_combout\ = (\Mux28~0_combout\ & ((\Mux31~9_combout\ & ((\Mux30~2_combout\))) # (!\Mux31~9_combout\ & (\Mux29~4_combout\)))) # (!\Mux28~0_combout\ & (\Mux29~4_combout\ & (\Mux30~2_combout\ $ (\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[1]~1_combout\);

-- Location: LCCOMB_X112_Y25_N28
\u0|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[2]~2_combout\ = (\Mux29~4_combout\ & (\Mux28~0_combout\ & ((\Mux30~2_combout\) # (!\Mux31~9_combout\)))) # (!\Mux29~4_combout\ & (!\Mux28~0_combout\ & (\Mux30~2_combout\ & !\Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[2]~2_combout\);

-- Location: LCCOMB_X112_Y25_N14
\u0|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[3]~3_combout\ = (\Mux30~2_combout\ & ((\Mux29~4_combout\ & ((\Mux31~9_combout\))) # (!\Mux29~4_combout\ & (\Mux28~0_combout\ & !\Mux31~9_combout\)))) # (!\Mux30~2_combout\ & (!\Mux28~0_combout\ & (\Mux29~4_combout\ $ (\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[3]~3_combout\);

-- Location: LCCOMB_X112_Y25_N16
\u0|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[4]~4_combout\ = (\Mux30~2_combout\ & (((!\Mux28~0_combout\ & \Mux31~9_combout\)))) # (!\Mux30~2_combout\ & ((\Mux29~4_combout\ & (!\Mux28~0_combout\)) # (!\Mux29~4_combout\ & ((\Mux31~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[4]~4_combout\);

-- Location: LCCOMB_X112_Y25_N22
\u0|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[5]~5_combout\ = (\Mux29~4_combout\ & (\Mux31~9_combout\ & (\Mux28~0_combout\ $ (\Mux30~2_combout\)))) # (!\Mux29~4_combout\ & (!\Mux28~0_combout\ & ((\Mux30~2_combout\) # (\Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[5]~5_combout\);

-- Location: LCCOMB_X112_Y25_N24
\u0|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|cathodes[6]~6_combout\ = (\Mux31~9_combout\ & (!\Mux28~0_combout\ & (\Mux29~4_combout\ $ (!\Mux30~2_combout\)))) # (!\Mux31~9_combout\ & (!\Mux30~2_combout\ & (\Mux29~4_combout\ $ (!\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux31~9_combout\,
	combout => \u0|cathodes[6]~6_combout\);

-- Location: LCCOMB_X111_Y25_N2
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux31~8_combout\) # ((\f1|f1|instruction\(12) & !\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~8_combout\,
	datac => \f1|f1|instruction\(12),
	datad => \Mux18~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X112_Y25_N6
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux30~1_combout\) # ((!\Mux18~0_combout\ & \f1|f1|instruction\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~0_combout\,
	datac => \Mux30~1_combout\,
	datad => \f1|f1|instruction\(13),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X114_Y25_N8
\u1|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[0]~0_combout\ = (!\Mux26~0_combout\ & (\Mux27~0_combout\ $ (((!\Mux28~0_combout\ & \Mux29~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux26~0_combout\,
	combout => \u1|cathodes[0]~0_combout\);

-- Location: LCCOMB_X111_Y25_N0
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux28~0_combout\) # ((\Mux31~0_combout\ & ((\Mux29~2_combout\) # (\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux29~2_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X114_Y25_N2
\u1|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[1]~1_combout\ = (\Mux28~0_combout\ & ((\Mux26~0_combout\) # ((!\Mux27~0_combout\)))) # (!\Mux28~0_combout\ & (\Mux25~0_combout\ & (\Mux26~0_combout\ $ (\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \u1|cathodes[1]~1_combout\);

-- Location: LCCOMB_X114_Y25_N28
\u1|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[2]~2_combout\ = (\Mux28~0_combout\ & (\Mux25~0_combout\ & ((\Mux26~0_combout\) # (!\Mux27~0_combout\)))) # (!\Mux28~0_combout\ & (\Mux26~0_combout\ & (!\Mux27~0_combout\ & !\Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \u1|cathodes[2]~2_combout\);

-- Location: LCCOMB_X114_Y25_N18
\u1|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[3]~3_combout\ = (\Mux27~0_combout\ & (\Mux26~0_combout\ $ (((!\Mux28~0_combout\ & !\Mux29~3_combout\))))) # (!\Mux27~0_combout\ & (!\Mux28~0_combout\ & (\Mux29~3_combout\ & !\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux26~0_combout\,
	combout => \u1|cathodes[3]~3_combout\);

-- Location: LCCOMB_X114_Y25_N4
\u1|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[4]~4_combout\ = (!\Mux28~0_combout\ & ((\Mux27~0_combout\) # ((\Mux29~3_combout\ & !\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux26~0_combout\,
	combout => \u1|cathodes[4]~4_combout\);

-- Location: LCCOMB_X114_Y25_N14
\u1|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[5]~5_combout\ = (\Mux26~0_combout\ & (!\Mux28~0_combout\ & ((\Mux27~0_combout\) # (!\Mux25~0_combout\)))) # (!\Mux26~0_combout\ & (\Mux27~0_combout\ & ((\Mux28~0_combout\) # (!\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \u1|cathodes[5]~5_combout\);

-- Location: LCCOMB_X114_Y25_N0
\u1|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cathodes[6]~6_combout\ = (\Mux28~0_combout\ & (!\Mux27~0_combout\ & ((!\Mux26~0_combout\)))) # (!\Mux28~0_combout\ & ((\Mux29~3_combout\ & (\Mux27~0_combout\ & \Mux26~0_combout\)) # (!\Mux29~3_combout\ & ((!\Mux26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux26~0_combout\,
	combout => \u1|cathodes[6]~6_combout\);

-- Location: LCCOMB_X109_Y29_N30
\f1|f1|mem~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~87_combout\ = (!\f1|f1|pc\(3) & ((\f1|f1|pc\(0)) # (!\f1|f1|pc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(0),
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~87_combout\);

-- Location: LCCOMB_X112_Y29_N30
\f1|f1|mem~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~116_combout\ = (\branch_decision~input_o\) # ((\f1|f1|pc\(1) & (!\jump_decision~input_o\ & \f1|f1|mem~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|f1|pc\(1),
	datab => \jump_decision~input_o\,
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~87_combout\,
	combout => \f1|f1|mem~116_combout\);

-- Location: FF_X112_Y29_N31
\f1|f1|instruction[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~116_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(9));

-- Location: LCCOMB_X112_Y25_N20
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux30~1_combout\) # ((!\Mux18~0_combout\ & \f1|f1|instruction\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~0_combout\,
	datac => \Mux30~1_combout\,
	datad => \f1|f1|instruction\(9),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X114_Y25_N6
\u2|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[0]~0_combout\ = (!\Mux22~0_combout\ & (\Mux27~0_combout\ $ (((!\Mux28~0_combout\ & \Mux29~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[0]~0_combout\);

-- Location: LCCOMB_X114_Y25_N16
\u2|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[1]~1_combout\ = (\Mux28~0_combout\ & (((\Mux22~0_combout\)) # (!\Mux27~0_combout\))) # (!\Mux28~0_combout\ & (\Mux25~0_combout\ & (\Mux27~0_combout\ $ (\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[1]~1_combout\);

-- Location: LCCOMB_X114_Y25_N22
\u2|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[2]~2_combout\ = (\Mux28~0_combout\ & (\Mux25~0_combout\ & ((\Mux22~0_combout\) # (!\Mux27~0_combout\)))) # (!\Mux28~0_combout\ & (!\Mux27~0_combout\ & (!\Mux25~0_combout\ & \Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[2]~2_combout\);

-- Location: LCCOMB_X114_Y25_N24
\u2|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[3]~3_combout\ = (\Mux27~0_combout\ & (\Mux22~0_combout\ $ (((!\Mux28~0_combout\ & !\Mux29~3_combout\))))) # (!\Mux27~0_combout\ & (!\Mux28~0_combout\ & (\Mux29~3_combout\ & !\Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[3]~3_combout\);

-- Location: LCCOMB_X114_Y25_N26
\u2|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[4]~4_combout\ = (!\Mux28~0_combout\ & ((\Mux27~0_combout\) # ((\Mux29~3_combout\ & !\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[4]~4_combout\);

-- Location: LCCOMB_X114_Y25_N20
\u2|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[5]~5_combout\ = (\Mux25~0_combout\ & (\Mux27~0_combout\ & (\Mux28~0_combout\ $ (\Mux22~0_combout\)))) # (!\Mux25~0_combout\ & ((\Mux22~0_combout\ & (!\Mux28~0_combout\)) # (!\Mux22~0_combout\ & ((\Mux27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[5]~5_combout\);

-- Location: LCCOMB_X114_Y25_N30
\u2|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cathodes[6]~6_combout\ = (\Mux28~0_combout\ & (!\Mux27~0_combout\ & ((!\Mux22~0_combout\)))) # (!\Mux28~0_combout\ & ((\Mux29~3_combout\ & (\Mux27~0_combout\ & \Mux22~0_combout\)) # (!\Mux29~3_combout\ & ((!\Mux22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \Mux22~0_combout\,
	combout => \u2|cathodes[6]~6_combout\);

-- Location: LCCOMB_X114_Y25_N12
\u3|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[0]~0_combout\ = (\Mux28~0_combout\ & (\Mux27~0_combout\ & (\Mux26~0_combout\ $ (\Mux25~0_combout\)))) # (!\Mux28~0_combout\ & (!\Mux26~0_combout\ & (\Mux27~0_combout\ $ (\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \u3|cathodes[0]~0_combout\);

-- Location: LCCOMB_X114_Y25_N10
\u3|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[1]~1_combout\ = (\Mux26~0_combout\ & ((\Mux27~0_combout\ & (\Mux28~0_combout\)) # (!\Mux27~0_combout\ & ((\Mux25~0_combout\))))) # (!\Mux26~0_combout\ & (\Mux25~0_combout\ & (\Mux27~0_combout\ $ (\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \u3|cathodes[1]~1_combout\);

-- Location: LCCOMB_X112_Y25_N2
\u3|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[2]~2_combout\ = (\Mux25~0_combout\ & (\Mux28~0_combout\ & ((\Mux26~0_combout\) # (!\Mux27~0_combout\)))) # (!\Mux25~0_combout\ & (!\Mux28~0_combout\ & (!\Mux27~0_combout\ & \Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \u3|cathodes[2]~2_combout\);

-- Location: LCCOMB_X112_Y25_N12
\u3|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[3]~3_combout\ = (\Mux26~0_combout\ & ((\Mux25~0_combout\ & ((\Mux27~0_combout\))) # (!\Mux25~0_combout\ & (\Mux28~0_combout\ & !\Mux27~0_combout\)))) # (!\Mux26~0_combout\ & (!\Mux28~0_combout\ & (\Mux25~0_combout\ $ (\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \u3|cathodes[3]~3_combout\);

-- Location: LCCOMB_X112_Y25_N18
\u3|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[4]~4_combout\ = (\Mux26~0_combout\ & (((!\Mux28~0_combout\ & \Mux27~0_combout\)))) # (!\Mux26~0_combout\ & ((\Mux25~0_combout\ & (!\Mux28~0_combout\)) # (!\Mux25~0_combout\ & ((\Mux27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \u3|cathodes[4]~4_combout\);

-- Location: LCCOMB_X112_Y25_N0
\u3|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[5]~5_combout\ = (\Mux25~0_combout\ & (\Mux27~0_combout\ & (\Mux28~0_combout\ $ (\Mux26~0_combout\)))) # (!\Mux25~0_combout\ & (!\Mux28~0_combout\ & ((\Mux27~0_combout\) # (\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \u3|cathodes[5]~5_combout\);

-- Location: LCCOMB_X112_Y25_N30
\u3|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|cathodes[6]~6_combout\ = (\Mux27~0_combout\ & (!\Mux28~0_combout\ & (\Mux25~0_combout\ $ (!\Mux26~0_combout\)))) # (!\Mux27~0_combout\ & (!\Mux26~0_combout\ & (\Mux25~0_combout\ $ (!\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \u3|cathodes[6]~6_combout\);

-- Location: LCCOMB_X110_Y25_N4
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\diplayDecison[1]~input_o\ & (!\diplayDecison[2]~input_o\ & (\diplayDecison[0]~input_o\ & \f1|f1|instruction\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[1]~input_o\,
	datab => \diplayDecison[2]~input_o\,
	datac => \diplayDecison[0]~input_o\,
	datad => \f1|f1|instruction\(10),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X110_Y25_N16
\Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = (\diplayDecison[1]~input_o\ & ((\diplayDecison[0]~input_o\ & ((\f1|f1|instruction\(10)))) # (!\diplayDecison[0]~input_o\ & (\d1|Mux95~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Mux95~2_combout\,
	datab => \f1|f1|instruction\(10),
	datac => \diplayDecison[0]~input_o\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux31~16_combout\);

-- Location: LCCOMB_X110_Y25_N2
\Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = (\Mux31~16_combout\) # ((!\diplayDecison[1]~input_o\ & ((\Mux31~3_combout\) # (\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~16_combout\,
	datac => \Mux31~6_combout\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux31~17_combout\);

-- Location: LCCOMB_X110_Y29_N2
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\diplayDecison[2]~input_o\ & (((\Mux29~1_combout\ & \f1|f1|instruction\(16))))) # (!\diplayDecison[2]~input_o\ & (\Mux31~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~17_combout\,
	datab => \Mux29~1_combout\,
	datac => \f1|f1|instruction\(16),
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X110_Y25_N12
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\diplayDecison[1]~input_o\ & ((\diplayDecison[0]~input_o\ & ((\f1|f1|instruction\(10)))) # (!\diplayDecison[0]~input_o\ & (\d1|Mux94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d1|Mux94~1_combout\,
	datab => \f1|f1|instruction\(10),
	datac => \diplayDecison[0]~input_o\,
	datad => \diplayDecison[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X110_Y29_N12
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\) # ((!\diplayDecison[1]~input_o\ & ((\Mux31~15_combout\) # (\Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~15_combout\,
	datab => \Mux14~0_combout\,
	datac => \diplayDecison[1]~input_o\,
	datad => \Mux31~12_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X110_Y25_N10
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\diplayDecison[2]~input_o\ & (((\Mux29~1_combout\ & \f1|f1|instruction\(17))))) # (!\diplayDecison[2]~input_o\ & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \f1|f1|instruction\(17),
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X111_Y25_N12
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\diplayDecison[0]~input_o\ & (((\f1|f1|instruction\(10) & \diplayDecison[1]~input_o\)))) # (!\diplayDecison[0]~input_o\ & (\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \f1|f1|instruction\(10),
	datac => \diplayDecison[1]~input_o\,
	datad => \diplayDecison[0]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X111_Y25_N14
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\diplayDecison[0]~input_o\ & (\f1|f1|instruction\(18) & (!\diplayDecison[1]~input_o\ & \diplayDecison[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[0]~input_o\,
	datab => \f1|f1|instruction\(18),
	datac => \diplayDecison[1]~input_o\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X111_Y25_N22
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~1_combout\) # ((!\diplayDecison[2]~input_o\ & ((\Mux13~2_combout\) # (\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux29~2_combout\,
	datac => \Mux13~1_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X83_Y2_N14
\u4|cathodes[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[0]~13_combout\ = (\Mux14~2_combout\) # ((\Mux15~0_combout\ & ((\Mux13~3_combout\))) # (!\Mux15~0_combout\ & ((\Mux12~0_combout\) # (!\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[0]~13_combout\);

-- Location: LCCOMB_X83_Y2_N16
\u4|cathodes[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[1]~8_combout\ = (\Mux13~3_combout\ & ((\Mux12~0_combout\) # (\Mux15~0_combout\ $ (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[1]~8_combout\);

-- Location: LCCOMB_X83_Y2_N2
\u4|cathodes[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[2]~9_combout\ = (\Mux13~3_combout\ & (\Mux12~0_combout\)) # (!\Mux13~3_combout\ & (((!\Mux15~0_combout\ & \Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[2]~9_combout\);

-- Location: LCCOMB_X83_Y2_N4
\u4|cathodes[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[3]~10_combout\ = (\Mux15~0_combout\ & (\Mux14~2_combout\ $ (!\Mux13~3_combout\))) # (!\Mux15~0_combout\ & (!\Mux14~2_combout\ & \Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[3]~10_combout\);

-- Location: LCCOMB_X83_Y2_N22
\u4|cathodes[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[4]~11_combout\ = (\Mux15~0_combout\ & (((!\Mux14~2_combout\)) # (!\Mux12~0_combout\))) # (!\Mux15~0_combout\ & (((!\Mux14~2_combout\ & \Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[4]~11_combout\);

-- Location: LCCOMB_X83_Y2_N28
\u4|cathodes[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[5]~14_combout\ = (\Mux15~0_combout\ & (((!\Mux12~0_combout\ & \Mux14~2_combout\)) # (!\Mux13~3_combout\))) # (!\Mux15~0_combout\ & (((\Mux14~2_combout\ & !\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[5]~14_combout\);

-- Location: LCCOMB_X83_Y2_N24
\u4|cathodes[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|cathodes[6]~12_combout\ = (\Mux14~2_combout\ & (!\Mux12~0_combout\ & (\Mux15~0_combout\ & \Mux13~3_combout\))) # (!\Mux14~2_combout\ & (((!\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \u4|cathodes[6]~12_combout\);

-- Location: LCCOMB_X111_Y25_N26
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\diplayDecison[2]~input_o\ & (((\f1|f1|instruction\(20) & \Mux29~1_combout\)))) # (!\diplayDecison[2]~input_o\ & (\Mux31~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~17_combout\,
	datab => \f1|f1|instruction\(20),
	datac => \Mux29~1_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X110_Y29_N20
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\diplayDecison[2]~input_o\ & (((\f1|f1|instruction\(21) & \Mux29~1_combout\)))) # (!\diplayDecison[2]~input_o\ & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \f1|f1|instruction\(21),
	datac => \Mux29~1_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X110_Y25_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\diplayDecison[2]~input_o\ & ((\Mux29~2_combout\) # (\Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~2_combout\,
	datac => \Mux13~2_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X110_Y25_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux5~0_combout\) # ((\Mux29~1_combout\ & (\f1|f1|instruction\(22) & \diplayDecison[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux29~1_combout\,
	datac => \f1|f1|instruction\(22),
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X111_Y25_N30
\u5|cathodes[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[0]~1_combout\ = (!\Mux18~0_combout\ & ((\diplayDecison[2]~input_o\ & ((\f1|f1|instruction\(23)))) # (!\diplayDecison[2]~input_o\ & (\f1|f1|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \f1|f1|instruction\(10),
	datac => \f1|f1|instruction\(23),
	datad => \diplayDecison[2]~input_o\,
	combout => \u5|cathodes[0]~1_combout\);

-- Location: LCCOMB_X82_Y4_N12
\u5|cathodes[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[0]~9_combout\ = (\Mux11~0_combout\ & ((\Mux10~0_combout\ & (!\Mux9~0_combout\ & \u5|cathodes[0]~1_combout\)) # (!\Mux10~0_combout\ & (\Mux9~0_combout\ $ (!\u5|cathodes[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[0]~9_combout\);

-- Location: LCCOMB_X111_Y25_N16
\u5|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[0]~0_combout\ = (\diplayDecison[2]~input_o\ & ((\diplayDecison[0]~input_o\) # ((\diplayDecison[1]~input_o\) # (!\f1|f1|instruction\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diplayDecison[0]~input_o\,
	datab => \f1|f1|instruction\(20),
	datac => \diplayDecison[1]~input_o\,
	datad => \diplayDecison[2]~input_o\,
	combout => \u5|cathodes[0]~0_combout\);

-- Location: LCCOMB_X111_Y25_N28
\u5|cathodes[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[0]~2_combout\ = (!\u5|cathodes[0]~1_combout\ & ((\u5|cathodes[0]~0_combout\) # ((!\Mux31~17_combout\ & !\diplayDecison[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~17_combout\,
	datab => \u5|cathodes[0]~0_combout\,
	datac => \u5|cathodes[0]~1_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \u5|cathodes[0]~2_combout\);

-- Location: LCCOMB_X82_Y4_N22
\u5|cathodes[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[0]~10_combout\ = (\Mux9~0_combout\ & (!\Mux10~0_combout\ & ((\u5|cathodes[0]~9_combout\) # (\u5|cathodes[0]~2_combout\)))) # (!\Mux9~0_combout\ & (\u5|cathodes[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|cathodes[0]~9_combout\,
	datab => \u5|cathodes[0]~2_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \u5|cathodes[0]~10_combout\);

-- Location: LCCOMB_X82_Y4_N16
\u5|cathodes[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[1]~3_combout\ = (\Mux10~0_combout\ & ((\Mux11~0_combout\ & ((\u5|cathodes[0]~1_combout\))) # (!\Mux11~0_combout\ & (\Mux9~0_combout\)))) # (!\Mux10~0_combout\ & (\Mux9~0_combout\ & (\Mux11~0_combout\ $ (\u5|cathodes[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[1]~3_combout\);

-- Location: LCCOMB_X99_Y4_N28
\u5|cathodes[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[2]~4_combout\ = (\u5|cathodes[0]~1_combout\ & (\Mux9~0_combout\ & ((\Mux10~0_combout\) # (!\Mux11~0_combout\)))) # (!\u5|cathodes[0]~1_combout\ & (\Mux10~0_combout\ & (!\Mux11~0_combout\ & !\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \u5|cathodes[0]~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \u5|cathodes[2]~4_combout\);

-- Location: LCCOMB_X82_Y4_N2
\u5|cathodes[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[3]~5_combout\ = (\Mux10~0_combout\ & ((\Mux11~0_combout\ & (\Mux9~0_combout\)) # (!\Mux11~0_combout\ & (!\Mux9~0_combout\ & \u5|cathodes[0]~1_combout\)))) # (!\Mux10~0_combout\ & (!\u5|cathodes[0]~1_combout\ & (\Mux11~0_combout\ $ 
-- (\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[3]~5_combout\);

-- Location: LCCOMB_X82_Y4_N8
\u5|cathodes[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[4]~6_combout\ = (\Mux10~0_combout\ & (\Mux11~0_combout\ & ((!\u5|cathodes[0]~1_combout\)))) # (!\Mux10~0_combout\ & ((\Mux9~0_combout\ & ((!\u5|cathodes[0]~1_combout\))) # (!\Mux9~0_combout\ & (\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[4]~6_combout\);

-- Location: LCCOMB_X82_Y4_N26
\u5|cathodes[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[5]~7_combout\ = (\Mux11~0_combout\ & (\u5|cathodes[0]~1_combout\ $ (((\Mux10~0_combout\) # (!\Mux9~0_combout\))))) # (!\Mux11~0_combout\ & (\Mux10~0_combout\ & (!\Mux9~0_combout\ & !\u5|cathodes[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[5]~7_combout\);

-- Location: LCCOMB_X82_Y4_N20
\u5|cathodes[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|cathodes[6]~8_combout\ = (\Mux11~0_combout\ & (!\u5|cathodes[0]~1_combout\ & (\Mux10~0_combout\ $ (!\Mux9~0_combout\)))) # (!\Mux11~0_combout\ & (!\Mux10~0_combout\ & (\Mux9~0_combout\ $ (!\u5|cathodes[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \u5|cathodes[0]~1_combout\,
	combout => \u5|cathodes[6]~8_combout\);

-- Location: LCCOMB_X111_Y29_N18
\f1|f1|mem~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~99_combout\ = (!\f1|f1|pc\(2) & !\f1|f1|pc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|f1|pc\(2),
	datad => \f1|f1|pc\(3),
	combout => \f1|f1|mem~99_combout\);

-- Location: LCCOMB_X111_Y29_N8
\f1|f1|mem~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f1|mem~117_combout\ = (\branch_decision~input_o\) # ((!\jump_decision~input_o\ & (\f1|f1|pc\(1) & \f1|f1|mem~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_decision~input_o\,
	datab => \f1|f1|pc\(1),
	datac => \branch_decision~input_o\,
	datad => \f1|f1|mem~99_combout\,
	combout => \f1|f1|mem~117_combout\);

-- Location: FF_X111_Y29_N9
\f1|f1|instruction[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \f1|f1|mem~117_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|f1|instruction\(25));

-- Location: LCCOMB_X110_Y29_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\diplayDecison[2]~input_o\ & (((\f1|f1|instruction\(25) & \Mux29~1_combout\)))) # (!\diplayDecison[2]~input_o\ & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \f1|f1|instruction\(25),
	datac => \Mux29~1_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X82_Y4_N6
\u6|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[0]~0_combout\ = (\Mux6~0_combout\) # (\Mux5~0_combout\ $ (!\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux11~0_combout\,
	combout => \u6|cathodes[0]~0_combout\);

-- Location: LCCOMB_X82_Y4_N4
\u6|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[1]~1_combout\ = (\Mux11~0_combout\ & ((\Mux12~0_combout\) # ((\Mux5~0_combout\ & !\Mux6~0_combout\)))) # (!\Mux11~0_combout\ & (((\Mux5~0_combout\ & \Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \u6|cathodes[1]~1_combout\);

-- Location: LCCOMB_X82_Y4_N10
\u6|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[2]~2_combout\ = (\Mux12~0_combout\ & (((\Mux5~0_combout\)))) # (!\Mux12~0_combout\ & (!\Mux11~0_combout\ & (!\Mux5~0_combout\ & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \u6|cathodes[2]~2_combout\);

-- Location: LCCOMB_X82_Y4_N28
\u6|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[3]~3_combout\ = (\Mux6~0_combout\ & (\Mux5~0_combout\ & \Mux11~0_combout\)) # (!\Mux6~0_combout\ & (\Mux5~0_combout\ $ (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux11~0_combout\,
	combout => \u6|cathodes[3]~3_combout\);

-- Location: LCCOMB_X82_Y4_N30
\u6|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[4]~4_combout\ = (!\Mux12~0_combout\ & ((\Mux11~0_combout\) # ((\Mux5~0_combout\ & !\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \u6|cathodes[4]~4_combout\);

-- Location: LCCOMB_X82_Y4_N24
\u6|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[5]~5_combout\ = (\Mux12~0_combout\) # ((\Mux11~0_combout\ & (\Mux5~0_combout\ & !\Mux6~0_combout\)) # (!\Mux11~0_combout\ & ((\Mux5~0_combout\) # (!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \u6|cathodes[5]~5_combout\);

-- Location: LCCOMB_X82_Y4_N14
\u6|cathodes[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|cathodes[6]~6_combout\ = (\Mux5~0_combout\ & ((\Mux11~0_combout\ & (!\Mux12~0_combout\ & \Mux6~0_combout\)) # (!\Mux11~0_combout\ & (\Mux12~0_combout\ & !\Mux6~0_combout\)))) # (!\Mux5~0_combout\ & (((!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \u6|cathodes[6]~6_combout\);

-- Location: LCCOMB_X110_Y25_N30
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\diplayDecison[2]~input_o\ & ((\Mux14~0_combout\) # (\Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datac => \Mux30~0_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X110_Y25_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\diplayDecison[2]~input_o\ & ((\Mux31~16_combout\) # (\Mux31~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~16_combout\,
	datac => \Mux31~7_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X82_Y4_N0
\u7|cathodes[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[0]~0_combout\ = (\Mux2~0_combout\ & ((\Mux5~0_combout\) # ((!\Mux12~0_combout\) # (!\Mux3~0_combout\)))) # (!\Mux2~0_combout\ & (\Mux5~0_combout\ $ ((!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \u7|cathodes[0]~0_combout\);

-- Location: LCCOMB_X82_Y4_N18
\u7|cathodes[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[1]~1_combout\ = (\Mux3~0_combout\ & ((\Mux12~0_combout\) # ((!\Mux2~0_combout\ & \Mux5~0_combout\)))) # (!\Mux3~0_combout\ & (\Mux2~0_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \u7|cathodes[1]~1_combout\);

-- Location: LCCOMB_X84_Y11_N8
\u7|cathodes[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[2]~2_combout\ = (\Mux5~0_combout\ & (((\Mux12~0_combout\)))) # (!\Mux5~0_combout\ & (\Mux2~0_combout\ & (!\Mux3~0_combout\ & !\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \u7|cathodes[2]~2_combout\);

-- Location: LCCOMB_X110_Y25_N14
\u7|cathodes[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[3]~3_combout\ = (\Mux2~0_combout\ & (\Mux5~0_combout\ & ((\Mux31~17_combout\)))) # (!\Mux2~0_combout\ & (\Mux5~0_combout\ $ ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux31~17_combout\,
	combout => \u7|cathodes[3]~3_combout\);

-- Location: LCCOMB_X84_Y11_N2
\u7|cathodes[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[4]~4_combout\ = (!\Mux12~0_combout\ & ((\Mux3~0_combout\) # ((!\Mux2~0_combout\ & \Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \u7|cathodes[4]~4_combout\);

-- Location: LCCOMB_X110_Y25_N8
\u7|cathodes[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[5]~5_combout\ = (\Mux12~0_combout\) # ((\diplayDecison[2]~input_o\) # ((\Mux5~0_combout\ & !\Mux31~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux31~17_combout\,
	datac => \Mux12~0_combout\,
	datad => \diplayDecison[2]~input_o\,
	combout => \u7|cathodes[5]~5_combout\);

-- Location: LCCOMB_X110_Y25_N18
\u7|cathodes[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[5]~6_combout\ = (\u7|cathodes[5]~5_combout\) # ((!\Mux14~1_combout\ & (\Mux5~0_combout\ $ (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \u7|cathodes[5]~5_combout\,
	datad => \Mux14~1_combout\,
	combout => \u7|cathodes[5]~6_combout\);

-- Location: LCCOMB_X84_Y11_N4
\u7|cathodes[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|cathodes[6]~7_combout\ = (\Mux2~0_combout\ & (\Mux3~0_combout\ & (\Mux5~0_combout\ & !\Mux12~0_combout\))) # (!\Mux2~0_combout\ & (((!\Mux3~0_combout\ & \Mux12~0_combout\)) # (!\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \u7|cathodes[6]~7_combout\);

ww_SevenSegement0(0) <= \SevenSegement0[0]~output_o\;

ww_SevenSegement0(1) <= \SevenSegement0[1]~output_o\;

ww_SevenSegement0(2) <= \SevenSegement0[2]~output_o\;

ww_SevenSegement0(3) <= \SevenSegement0[3]~output_o\;

ww_SevenSegement0(4) <= \SevenSegement0[4]~output_o\;

ww_SevenSegement0(5) <= \SevenSegement0[5]~output_o\;

ww_SevenSegement0(6) <= \SevenSegement0[6]~output_o\;

ww_SevenSegement1(0) <= \SevenSegement1[0]~output_o\;

ww_SevenSegement1(1) <= \SevenSegement1[1]~output_o\;

ww_SevenSegement1(2) <= \SevenSegement1[2]~output_o\;

ww_SevenSegement1(3) <= \SevenSegement1[3]~output_o\;

ww_SevenSegement1(4) <= \SevenSegement1[4]~output_o\;

ww_SevenSegement1(5) <= \SevenSegement1[5]~output_o\;

ww_SevenSegement1(6) <= \SevenSegement1[6]~output_o\;

ww_SevenSegement2(0) <= \SevenSegement2[0]~output_o\;

ww_SevenSegement2(1) <= \SevenSegement2[1]~output_o\;

ww_SevenSegement2(2) <= \SevenSegement2[2]~output_o\;

ww_SevenSegement2(3) <= \SevenSegement2[3]~output_o\;

ww_SevenSegement2(4) <= \SevenSegement2[4]~output_o\;

ww_SevenSegement2(5) <= \SevenSegement2[5]~output_o\;

ww_SevenSegement2(6) <= \SevenSegement2[6]~output_o\;

ww_SevenSegement3(0) <= \SevenSegement3[0]~output_o\;

ww_SevenSegement3(1) <= \SevenSegement3[1]~output_o\;

ww_SevenSegement3(2) <= \SevenSegement3[2]~output_o\;

ww_SevenSegement3(3) <= \SevenSegement3[3]~output_o\;

ww_SevenSegement3(4) <= \SevenSegement3[4]~output_o\;

ww_SevenSegement3(5) <= \SevenSegement3[5]~output_o\;

ww_SevenSegement3(6) <= \SevenSegement3[6]~output_o\;

ww_SevenSegement4(0) <= \SevenSegement4[0]~output_o\;

ww_SevenSegement4(1) <= \SevenSegement4[1]~output_o\;

ww_SevenSegement4(2) <= \SevenSegement4[2]~output_o\;

ww_SevenSegement4(3) <= \SevenSegement4[3]~output_o\;

ww_SevenSegement4(4) <= \SevenSegement4[4]~output_o\;

ww_SevenSegement4(5) <= \SevenSegement4[5]~output_o\;

ww_SevenSegement4(6) <= \SevenSegement4[6]~output_o\;

ww_SevenSegement5(0) <= \SevenSegement5[0]~output_o\;

ww_SevenSegement5(1) <= \SevenSegement5[1]~output_o\;

ww_SevenSegement5(2) <= \SevenSegement5[2]~output_o\;

ww_SevenSegement5(3) <= \SevenSegement5[3]~output_o\;

ww_SevenSegement5(4) <= \SevenSegement5[4]~output_o\;

ww_SevenSegement5(5) <= \SevenSegement5[5]~output_o\;

ww_SevenSegement5(6) <= \SevenSegement5[6]~output_o\;

ww_SevenSegement6(0) <= \SevenSegement6[0]~output_o\;

ww_SevenSegement6(1) <= \SevenSegement6[1]~output_o\;

ww_SevenSegement6(2) <= \SevenSegement6[2]~output_o\;

ww_SevenSegement6(3) <= \SevenSegement6[3]~output_o\;

ww_SevenSegement6(4) <= \SevenSegement6[4]~output_o\;

ww_SevenSegement6(5) <= \SevenSegement6[5]~output_o\;

ww_SevenSegement6(6) <= \SevenSegement6[6]~output_o\;

ww_SevenSegement7(0) <= \SevenSegement7[0]~output_o\;

ww_SevenSegement7(1) <= \SevenSegement7[1]~output_o\;

ww_SevenSegement7(2) <= \SevenSegement7[2]~output_o\;

ww_SevenSegement7(3) <= \SevenSegement7[3]~output_o\;

ww_SevenSegement7(4) <= \SevenSegement7[4]~output_o\;

ww_SevenSegement7(5) <= \SevenSegement7[5]~output_o\;

ww_SevenSegement7(6) <= \SevenSegement7[6]~output_o\;
END structure;


