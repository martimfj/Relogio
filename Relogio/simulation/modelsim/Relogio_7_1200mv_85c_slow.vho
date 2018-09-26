-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "09/26/2018 11:31:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fazDivisaoInteiro|tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~11_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~13_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~27\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~28_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~29\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~30_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~15_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~31\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~32_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~33\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~34_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~35\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~36_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~37\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~38_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~17_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~39\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~40_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~41\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~42_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~19_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~43\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~44_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~45\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~46_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~21_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~47\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~48_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~49\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~50_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~7_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_4_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_1_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_2_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_3_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~clkctrl_outclk\ : std_logic;
SIGNAL \S0|fstate.state2~q\ : std_logic;
SIGNAL \S0|reg_fstate~6_combout\ : std_logic;
SIGNAL \S0|fstate.state3~q\ : std_logic;
SIGNAL \S0|fstate.state4~q\ : std_logic;
SIGNAL \S0|fstate.state5~q\ : std_logic;
SIGNAL \S0|reg_fstate~0_combout\ : std_logic;
SIGNAL \S0|fstate.state6~q\ : std_logic;
SIGNAL \S0|fstate.state7~q\ : std_logic;
SIGNAL \S0|fstate.state11~q\ : std_logic;
SIGNAL \S0|reg_fstate~3_combout\ : std_logic;
SIGNAL \S0|fstate.state12~q\ : std_logic;
SIGNAL \S0|fstate.state13~q\ : std_logic;
SIGNAL \S0|fstate.state14~q\ : std_logic;
SIGNAL \S0|WideOr4~0_combout\ : std_logic;
SIGNAL \S0|WideOr4~1_combout\ : std_logic;
SIGNAL \S0|WideOr4~combout\ : std_logic;
SIGNAL \S0|output1~0_combout\ : std_logic;
SIGNAL \S0|WideOr5~0_combout\ : std_logic;
SIGNAL \S0|WideOr5~combout\ : std_logic;
SIGNAL \F0|U|Add0~20_combout\ : std_logic;
SIGNAL \S0|WideOr6~2_combout\ : std_logic;
SIGNAL \S0|fstate.state8~q\ : std_logic;
SIGNAL \S0|WideOr3~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~2_combout\ : std_logic;
SIGNAL \F0|U|Add0~3_combout\ : std_logic;
SIGNAL \F0|U|Add0~16_combout\ : std_logic;
SIGNAL \S0|output1~1_combout\ : std_logic;
SIGNAL \S0|output1~3_combout\ : std_logic;
SIGNAL \S0|output1~2_combout\ : std_logic;
SIGNAL \S0|output1~4_combout\ : std_logic;
SIGNAL \F0|U|Add0~17_combout\ : std_logic;
SIGNAL \F0|U|Add0~18_combout\ : std_logic;
SIGNAL \F0|U|Add0~19_combout\ : std_logic;
SIGNAL \F0|U|Add0~21_combout\ : std_logic;
SIGNAL \S0|WideOr2~0_combout\ : std_logic;
SIGNAL \S0|WideOr2~combout\ : std_logic;
SIGNAL \F0|M1|Mux2~2_combout\ : std_logic;
SIGNAL \F0|M1|Mux3~2_combout\ : std_logic;
SIGNAL \S0|WideOr6~combout\ : std_logic;
SIGNAL \F0|U|Add0~29_cout\ : std_logic;
SIGNAL \F0|U|Add0~31\ : std_logic;
SIGNAL \F0|U|Add0~32_combout\ : std_logic;
SIGNAL \S0|reg_fstate~1_combout\ : std_logic;
SIGNAL \F0|M1|Mux0~2_combout\ : std_logic;
SIGNAL \F0|U|Add0~8_combout\ : std_logic;
SIGNAL \F0|U|Add0~4_combout\ : std_logic;
SIGNAL \F0|Rg3|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \F0|U|Add0~5_combout\ : std_logic;
SIGNAL \F0|U|Add0~6_combout\ : std_logic;
SIGNAL \F0|U|Add0~7_combout\ : std_logic;
SIGNAL \F0|U|Add0~9_combout\ : std_logic;
SIGNAL \F0|M1|Mux1~2_combout\ : std_logic;
SIGNAL \F0|U|Add0~33\ : std_logic;
SIGNAL \F0|U|Add0~35\ : std_logic;
SIGNAL \F0|U|Add0~36_combout\ : std_logic;
SIGNAL \S0|reg_fstate~2_combout\ : std_logic;
SIGNAL \S0|fstate.state9~q\ : std_logic;
SIGNAL \S0|fstate.state10~q\ : std_logic;
SIGNAL \S0|WideOr3~1_combout\ : std_logic;
SIGNAL \F0|U|Add0~1_combout\ : std_logic;
SIGNAL \F0|U|Add0~14_combout\ : std_logic;
SIGNAL \F0|U|Add0~10_combout\ : std_logic;
SIGNAL \F0|U|Add0~11_combout\ : std_logic;
SIGNAL \F0|U|Add0~12_combout\ : std_logic;
SIGNAL \F0|U|Add0~13_combout\ : std_logic;
SIGNAL \F0|U|Add0~15_combout\ : std_logic;
SIGNAL \F0|U|Add0~34_combout\ : std_logic;
SIGNAL \F0|U|Flag~0_combout\ : std_logic;
SIGNAL \S0|reg_fstate~4_combout\ : std_logic;
SIGNAL \S0|fstate.state15~q\ : std_logic;
SIGNAL \S0|fstate.state16~q\ : std_logic;
SIGNAL \S0|fstate.state17~q\ : std_logic;
SIGNAL \S0|reg_fstate~5_combout\ : std_logic;
SIGNAL \S0|fstate.state18~q\ : std_logic;
SIGNAL \S0|Selector0~0_combout\ : std_logic;
SIGNAL \S0|fstate.state0~q\ : std_logic;
SIGNAL \S0|fstate.state1~0_combout\ : std_logic;
SIGNAL \S0|fstate.state1~q\ : std_logic;
SIGNAL \S0|output1~5_combout\ : std_logic;
SIGNAL \F0|U|Add0~26_combout\ : std_logic;
SIGNAL \F0|U|Add0~22_combout\ : std_logic;
SIGNAL \F0|Rg4|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \F0|U|Add0~23_combout\ : std_logic;
SIGNAL \F0|U|Add0~24_combout\ : std_logic;
SIGNAL \F0|U|Add0~25_combout\ : std_logic;
SIGNAL \F0|U|Add0~27_combout\ : std_logic;
SIGNAL \F0|U|Add0~30_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \F0|Rg5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fazDivisaoInteiro|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \F0|Rg4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg6|DOUT\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\fazDivisaoInteiro|tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fazDivisaoInteiro|tick~_Duplicate_4_q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fazDivisaoInteiro|tick~q\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fazDivisaoInteiro|tick~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fazDivisaoInteiro|tick~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fazDivisaoInteiro|tick~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y19_N6
\fazDivisaoInteiro|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~0_combout\ = \fazDivisaoInteiro|contador\(0) $ (VCC)
-- \fazDivisaoInteiro|Add0~1\ = CARRY(\fazDivisaoInteiro|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro|Add0~0_combout\,
	cout => \fazDivisaoInteiro|Add0~1\);

-- Location: LCCOMB_X114_Y18_N0
\fazDivisaoInteiro|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~11_combout\ = (\fazDivisaoInteiro|Add0~0_combout\ & ((!\fazDivisaoInteiro|Equal0~4_combout\) # (!\fazDivisaoInteiro|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|Add0~0_combout\,
	datad => \fazDivisaoInteiro|Equal0~4_combout\,
	combout => \fazDivisaoInteiro|contador~11_combout\);

-- Location: FF_X113_Y19_N7
\fazDivisaoInteiro|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fazDivisaoInteiro|contador~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(0));

-- Location: LCCOMB_X113_Y19_N8
\fazDivisaoInteiro|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~2_combout\ = (\fazDivisaoInteiro|contador\(1) & (!\fazDivisaoInteiro|Add0~1\)) # (!\fazDivisaoInteiro|contador\(1) & ((\fazDivisaoInteiro|Add0~1\) # (GND)))
-- \fazDivisaoInteiro|Add0~3\ = CARRY((!\fazDivisaoInteiro|Add0~1\) # (!\fazDivisaoInteiro|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(1),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~1\,
	combout => \fazDivisaoInteiro|Add0~2_combout\,
	cout => \fazDivisaoInteiro|Add0~3\);

-- Location: FF_X113_Y19_N9
\fazDivisaoInteiro|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(1));

-- Location: LCCOMB_X113_Y19_N10
\fazDivisaoInteiro|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~4_combout\ = (\fazDivisaoInteiro|contador\(2) & (\fazDivisaoInteiro|Add0~3\ $ (GND))) # (!\fazDivisaoInteiro|contador\(2) & (!\fazDivisaoInteiro|Add0~3\ & VCC))
-- \fazDivisaoInteiro|Add0~5\ = CARRY((\fazDivisaoInteiro|contador\(2) & !\fazDivisaoInteiro|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(2),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~3\,
	combout => \fazDivisaoInteiro|Add0~4_combout\,
	cout => \fazDivisaoInteiro|Add0~5\);

-- Location: FF_X113_Y19_N11
\fazDivisaoInteiro|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(2));

-- Location: LCCOMB_X113_Y19_N12
\fazDivisaoInteiro|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~6_combout\ = (\fazDivisaoInteiro|contador\(3) & (!\fazDivisaoInteiro|Add0~5\)) # (!\fazDivisaoInteiro|contador\(3) & ((\fazDivisaoInteiro|Add0~5\) # (GND)))
-- \fazDivisaoInteiro|Add0~7\ = CARRY((!\fazDivisaoInteiro|Add0~5\) # (!\fazDivisaoInteiro|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~5\,
	combout => \fazDivisaoInteiro|Add0~6_combout\,
	cout => \fazDivisaoInteiro|Add0~7\);

-- Location: FF_X113_Y19_N13
\fazDivisaoInteiro|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(3));

-- Location: LCCOMB_X113_Y19_N14
\fazDivisaoInteiro|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~8_combout\ = (\fazDivisaoInteiro|contador\(4) & (\fazDivisaoInteiro|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro|contador\(4) & (!\fazDivisaoInteiro|Add0~7\ & VCC))
-- \fazDivisaoInteiro|Add0~9\ = CARRY((\fazDivisaoInteiro|contador\(4) & !\fazDivisaoInteiro|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~7\,
	combout => \fazDivisaoInteiro|Add0~8_combout\,
	cout => \fazDivisaoInteiro|Add0~9\);

-- Location: FF_X113_Y19_N15
\fazDivisaoInteiro|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(4));

-- Location: LCCOMB_X113_Y19_N16
\fazDivisaoInteiro|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~10_combout\ = (\fazDivisaoInteiro|contador\(5) & (!\fazDivisaoInteiro|Add0~9\)) # (!\fazDivisaoInteiro|contador\(5) & ((\fazDivisaoInteiro|Add0~9\) # (GND)))
-- \fazDivisaoInteiro|Add0~11\ = CARRY((!\fazDivisaoInteiro|Add0~9\) # (!\fazDivisaoInteiro|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~9\,
	combout => \fazDivisaoInteiro|Add0~10_combout\,
	cout => \fazDivisaoInteiro|Add0~11\);

-- Location: FF_X113_Y19_N17
\fazDivisaoInteiro|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(5));

-- Location: LCCOMB_X113_Y19_N18
\fazDivisaoInteiro|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~12_combout\ = (\fazDivisaoInteiro|contador\(6) & (\fazDivisaoInteiro|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro|contador\(6) & (!\fazDivisaoInteiro|Add0~11\ & VCC))
-- \fazDivisaoInteiro|Add0~13\ = CARRY((\fazDivisaoInteiro|contador\(6) & !\fazDivisaoInteiro|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~11\,
	combout => \fazDivisaoInteiro|Add0~12_combout\,
	cout => \fazDivisaoInteiro|Add0~13\);

-- Location: FF_X113_Y19_N19
\fazDivisaoInteiro|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(6));

-- Location: LCCOMB_X113_Y19_N20
\fazDivisaoInteiro|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~14_combout\ = (\fazDivisaoInteiro|contador\(7) & (!\fazDivisaoInteiro|Add0~13\)) # (!\fazDivisaoInteiro|contador\(7) & ((\fazDivisaoInteiro|Add0~13\) # (GND)))
-- \fazDivisaoInteiro|Add0~15\ = CARRY((!\fazDivisaoInteiro|Add0~13\) # (!\fazDivisaoInteiro|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(7),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~13\,
	combout => \fazDivisaoInteiro|Add0~14_combout\,
	cout => \fazDivisaoInteiro|Add0~15\);

-- Location: LCCOMB_X113_Y19_N0
\fazDivisaoInteiro|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~10_combout\ = (\fazDivisaoInteiro|Add0~14_combout\ & ((!\fazDivisaoInteiro|Equal0~4_combout\) # (!\fazDivisaoInteiro|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|Equal0~4_combout\,
	datad => \fazDivisaoInteiro|Add0~14_combout\,
	combout => \fazDivisaoInteiro|contador~10_combout\);

-- Location: FF_X113_Y19_N1
\fazDivisaoInteiro|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(7));

-- Location: LCCOMB_X113_Y19_N22
\fazDivisaoInteiro|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~16_combout\ = (\fazDivisaoInteiro|contador\(8) & (\fazDivisaoInteiro|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro|contador\(8) & (!\fazDivisaoInteiro|Add0~15\ & VCC))
-- \fazDivisaoInteiro|Add0~17\ = CARRY((\fazDivisaoInteiro|contador\(8) & !\fazDivisaoInteiro|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~15\,
	combout => \fazDivisaoInteiro|Add0~16_combout\,
	cout => \fazDivisaoInteiro|Add0~17\);

-- Location: FF_X113_Y19_N23
\fazDivisaoInteiro|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(8));

-- Location: LCCOMB_X113_Y19_N24
\fazDivisaoInteiro|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~18_combout\ = (\fazDivisaoInteiro|contador\(9) & (!\fazDivisaoInteiro|Add0~17\)) # (!\fazDivisaoInteiro|contador\(9) & ((\fazDivisaoInteiro|Add0~17\) # (GND)))
-- \fazDivisaoInteiro|Add0~19\ = CARRY((!\fazDivisaoInteiro|Add0~17\) # (!\fazDivisaoInteiro|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(9),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~17\,
	combout => \fazDivisaoInteiro|Add0~18_combout\,
	cout => \fazDivisaoInteiro|Add0~19\);

-- Location: FF_X113_Y19_N25
\fazDivisaoInteiro|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(9));

-- Location: LCCOMB_X113_Y19_N26
\fazDivisaoInteiro|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~20_combout\ = (\fazDivisaoInteiro|contador\(10) & (\fazDivisaoInteiro|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro|contador\(10) & (!\fazDivisaoInteiro|Add0~19\ & VCC))
-- \fazDivisaoInteiro|Add0~21\ = CARRY((\fazDivisaoInteiro|contador\(10) & !\fazDivisaoInteiro|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~19\,
	combout => \fazDivisaoInteiro|Add0~20_combout\,
	cout => \fazDivisaoInteiro|Add0~21\);

-- Location: FF_X113_Y19_N27
\fazDivisaoInteiro|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(10));

-- Location: LCCOMB_X113_Y19_N28
\fazDivisaoInteiro|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~22_combout\ = (\fazDivisaoInteiro|contador\(11) & (!\fazDivisaoInteiro|Add0~21\)) # (!\fazDivisaoInteiro|contador\(11) & ((\fazDivisaoInteiro|Add0~21\) # (GND)))
-- \fazDivisaoInteiro|Add0~23\ = CARRY((!\fazDivisaoInteiro|Add0~21\) # (!\fazDivisaoInteiro|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(11),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~21\,
	combout => \fazDivisaoInteiro|Add0~22_combout\,
	cout => \fazDivisaoInteiro|Add0~23\);

-- Location: FF_X113_Y19_N29
\fazDivisaoInteiro|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(11));

-- Location: LCCOMB_X113_Y19_N30
\fazDivisaoInteiro|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~24_combout\ = (\fazDivisaoInteiro|contador\(12) & (\fazDivisaoInteiro|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro|contador\(12) & (!\fazDivisaoInteiro|Add0~23\ & VCC))
-- \fazDivisaoInteiro|Add0~25\ = CARRY((\fazDivisaoInteiro|contador\(12) & !\fazDivisaoInteiro|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~23\,
	combout => \fazDivisaoInteiro|Add0~24_combout\,
	cout => \fazDivisaoInteiro|Add0~25\);

-- Location: LCCOMB_X113_Y19_N4
\fazDivisaoInteiro|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~12_combout\ = (\fazDivisaoInteiro|Add0~24_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Add0~24_combout\,
	datab => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	combout => \fazDivisaoInteiro|contador~12_combout\);

-- Location: FF_X113_Y19_N5
\fazDivisaoInteiro|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(12));

-- Location: LCCOMB_X113_Y18_N0
\fazDivisaoInteiro|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~26_combout\ = (\fazDivisaoInteiro|contador\(13) & (!\fazDivisaoInteiro|Add0~25\)) # (!\fazDivisaoInteiro|contador\(13) & ((\fazDivisaoInteiro|Add0~25\) # (GND)))
-- \fazDivisaoInteiro|Add0~27\ = CARRY((!\fazDivisaoInteiro|Add0~25\) # (!\fazDivisaoInteiro|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(13),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~25\,
	combout => \fazDivisaoInteiro|Add0~26_combout\,
	cout => \fazDivisaoInteiro|Add0~27\);

-- Location: LCCOMB_X114_Y18_N4
\fazDivisaoInteiro|contador~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~13_combout\ = (\fazDivisaoInteiro|Add0~26_combout\ & ((!\fazDivisaoInteiro|Equal0~4_combout\) # (!\fazDivisaoInteiro|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|Add0~26_combout\,
	datad => \fazDivisaoInteiro|Equal0~4_combout\,
	combout => \fazDivisaoInteiro|contador~13_combout\);

-- Location: FF_X114_Y18_N5
\fazDivisaoInteiro|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(13));

-- Location: LCCOMB_X113_Y18_N2
\fazDivisaoInteiro|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~28_combout\ = (\fazDivisaoInteiro|contador\(14) & (\fazDivisaoInteiro|Add0~27\ $ (GND))) # (!\fazDivisaoInteiro|contador\(14) & (!\fazDivisaoInteiro|Add0~27\ & VCC))
-- \fazDivisaoInteiro|Add0~29\ = CARRY((\fazDivisaoInteiro|contador\(14) & !\fazDivisaoInteiro|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(14),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~27\,
	combout => \fazDivisaoInteiro|Add0~28_combout\,
	cout => \fazDivisaoInteiro|Add0~29\);

-- Location: LCCOMB_X114_Y18_N2
\fazDivisaoInteiro|contador~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~14_combout\ = (\fazDivisaoInteiro|Add0~28_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~28_combout\,
	combout => \fazDivisaoInteiro|contador~14_combout\);

-- Location: FF_X114_Y18_N3
\fazDivisaoInteiro|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(14));

-- Location: LCCOMB_X113_Y18_N4
\fazDivisaoInteiro|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~30_combout\ = (\fazDivisaoInteiro|contador\(15) & (!\fazDivisaoInteiro|Add0~29\)) # (!\fazDivisaoInteiro|contador\(15) & ((\fazDivisaoInteiro|Add0~29\) # (GND)))
-- \fazDivisaoInteiro|Add0~31\ = CARRY((!\fazDivisaoInteiro|Add0~29\) # (!\fazDivisaoInteiro|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(15),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~29\,
	combout => \fazDivisaoInteiro|Add0~30_combout\,
	cout => \fazDivisaoInteiro|Add0~31\);

-- Location: LCCOMB_X114_Y18_N26
\fazDivisaoInteiro|contador~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~15_combout\ = (\fazDivisaoInteiro|Add0~30_combout\ & ((!\fazDivisaoInteiro|Equal0~4_combout\) # (!\fazDivisaoInteiro|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|Add0~30_combout\,
	datad => \fazDivisaoInteiro|Equal0~4_combout\,
	combout => \fazDivisaoInteiro|contador~15_combout\);

-- Location: FF_X114_Y18_N27
\fazDivisaoInteiro|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(15));

-- Location: LCCOMB_X114_Y18_N30
\fazDivisaoInteiro|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~3_combout\ = (\fazDivisaoInteiro|contador\(15) & (\fazDivisaoInteiro|contador\(14) & (\fazDivisaoInteiro|contador\(13) & \fazDivisaoInteiro|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(15),
	datab => \fazDivisaoInteiro|contador\(14),
	datac => \fazDivisaoInteiro|contador\(13),
	datad => \fazDivisaoInteiro|contador\(12),
	combout => \fazDivisaoInteiro|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y18_N16
\fazDivisaoInteiro|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~1_combout\ = (!\fazDivisaoInteiro|contador\(2) & (!\fazDivisaoInteiro|contador\(3) & (!\fazDivisaoInteiro|contador\(1) & !\fazDivisaoInteiro|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(2),
	datab => \fazDivisaoInteiro|contador\(3),
	datac => \fazDivisaoInteiro|contador\(1),
	datad => \fazDivisaoInteiro|contador\(0),
	combout => \fazDivisaoInteiro|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y19_N2
\fazDivisaoInteiro|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~0_combout\ = (!\fazDivisaoInteiro|contador\(5) & (\fazDivisaoInteiro|contador\(7) & (!\fazDivisaoInteiro|contador\(4) & !\fazDivisaoInteiro|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(5),
	datab => \fazDivisaoInteiro|contador\(7),
	datac => \fazDivisaoInteiro|contador\(4),
	datad => \fazDivisaoInteiro|contador\(6),
	combout => \fazDivisaoInteiro|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y19_N8
\fazDivisaoInteiro|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~2_combout\ = (!\fazDivisaoInteiro|contador\(10) & (!\fazDivisaoInteiro|contador\(11) & (!\fazDivisaoInteiro|contador\(9) & !\fazDivisaoInteiro|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(10),
	datab => \fazDivisaoInteiro|contador\(11),
	datac => \fazDivisaoInteiro|contador\(9),
	datad => \fazDivisaoInteiro|contador\(8),
	combout => \fazDivisaoInteiro|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y18_N6
\fazDivisaoInteiro|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~4_combout\ = (\fazDivisaoInteiro|Equal0~3_combout\ & (\fazDivisaoInteiro|Equal0~1_combout\ & (\fazDivisaoInteiro|Equal0~0_combout\ & \fazDivisaoInteiro|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~1_combout\,
	datac => \fazDivisaoInteiro|Equal0~0_combout\,
	datad => \fazDivisaoInteiro|Equal0~2_combout\,
	combout => \fazDivisaoInteiro|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y18_N6
\fazDivisaoInteiro|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~32_combout\ = (\fazDivisaoInteiro|contador\(16) & (\fazDivisaoInteiro|Add0~31\ $ (GND))) # (!\fazDivisaoInteiro|contador\(16) & (!\fazDivisaoInteiro|Add0~31\ & VCC))
-- \fazDivisaoInteiro|Add0~33\ = CARRY((\fazDivisaoInteiro|contador\(16) & !\fazDivisaoInteiro|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(16),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~31\,
	combout => \fazDivisaoInteiro|Add0~32_combout\,
	cout => \fazDivisaoInteiro|Add0~33\);

-- Location: FF_X113_Y18_N7
\fazDivisaoInteiro|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(16));

-- Location: LCCOMB_X113_Y18_N8
\fazDivisaoInteiro|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~34_combout\ = (\fazDivisaoInteiro|contador\(17) & (!\fazDivisaoInteiro|Add0~33\)) # (!\fazDivisaoInteiro|contador\(17) & ((\fazDivisaoInteiro|Add0~33\) # (GND)))
-- \fazDivisaoInteiro|Add0~35\ = CARRY((!\fazDivisaoInteiro|Add0~33\) # (!\fazDivisaoInteiro|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(17),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~33\,
	combout => \fazDivisaoInteiro|Add0~34_combout\,
	cout => \fazDivisaoInteiro|Add0~35\);

-- Location: LCCOMB_X114_Y18_N24
\fazDivisaoInteiro|contador~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~16_combout\ = (\fazDivisaoInteiro|Add0~34_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~34_combout\,
	combout => \fazDivisaoInteiro|contador~16_combout\);

-- Location: FF_X114_Y18_N25
\fazDivisaoInteiro|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(17));

-- Location: LCCOMB_X113_Y18_N10
\fazDivisaoInteiro|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~36_combout\ = (\fazDivisaoInteiro|contador\(18) & (\fazDivisaoInteiro|Add0~35\ $ (GND))) # (!\fazDivisaoInteiro|contador\(18) & (!\fazDivisaoInteiro|Add0~35\ & VCC))
-- \fazDivisaoInteiro|Add0~37\ = CARRY((\fazDivisaoInteiro|contador\(18) & !\fazDivisaoInteiro|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(18),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~35\,
	combout => \fazDivisaoInteiro|Add0~36_combout\,
	cout => \fazDivisaoInteiro|Add0~37\);

-- Location: FF_X113_Y18_N11
\fazDivisaoInteiro|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(18));

-- Location: LCCOMB_X113_Y18_N12
\fazDivisaoInteiro|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~38_combout\ = (\fazDivisaoInteiro|contador\(19) & (!\fazDivisaoInteiro|Add0~37\)) # (!\fazDivisaoInteiro|contador\(19) & ((\fazDivisaoInteiro|Add0~37\) # (GND)))
-- \fazDivisaoInteiro|Add0~39\ = CARRY((!\fazDivisaoInteiro|Add0~37\) # (!\fazDivisaoInteiro|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(19),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~37\,
	combout => \fazDivisaoInteiro|Add0~38_combout\,
	cout => \fazDivisaoInteiro|Add0~39\);

-- Location: LCCOMB_X114_Y18_N10
\fazDivisaoInteiro|contador~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~17_combout\ = (\fazDivisaoInteiro|Add0~38_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~38_combout\,
	combout => \fazDivisaoInteiro|contador~17_combout\);

-- Location: FF_X114_Y18_N11
\fazDivisaoInteiro|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(19));

-- Location: LCCOMB_X113_Y18_N14
\fazDivisaoInteiro|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~40_combout\ = (\fazDivisaoInteiro|contador\(20) & (\fazDivisaoInteiro|Add0~39\ $ (GND))) # (!\fazDivisaoInteiro|contador\(20) & (!\fazDivisaoInteiro|Add0~39\ & VCC))
-- \fazDivisaoInteiro|Add0~41\ = CARRY((\fazDivisaoInteiro|contador\(20) & !\fazDivisaoInteiro|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(20),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~39\,
	combout => \fazDivisaoInteiro|Add0~40_combout\,
	cout => \fazDivisaoInteiro|Add0~41\);

-- Location: LCCOMB_X113_Y18_N30
\fazDivisaoInteiro|contador~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~18_combout\ = (\fazDivisaoInteiro|Add0~40_combout\ & ((!\fazDivisaoInteiro|Equal0~4_combout\) # (!\fazDivisaoInteiro|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|Add0~40_combout\,
	datad => \fazDivisaoInteiro|Equal0~4_combout\,
	combout => \fazDivisaoInteiro|contador~18_combout\);

-- Location: FF_X113_Y18_N31
\fazDivisaoInteiro|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(20));

-- Location: LCCOMB_X113_Y18_N16
\fazDivisaoInteiro|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~42_combout\ = (\fazDivisaoInteiro|contador\(21) & (!\fazDivisaoInteiro|Add0~41\)) # (!\fazDivisaoInteiro|contador\(21) & ((\fazDivisaoInteiro|Add0~41\) # (GND)))
-- \fazDivisaoInteiro|Add0~43\ = CARRY((!\fazDivisaoInteiro|Add0~41\) # (!\fazDivisaoInteiro|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(21),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~41\,
	combout => \fazDivisaoInteiro|Add0~42_combout\,
	cout => \fazDivisaoInteiro|Add0~43\);

-- Location: LCCOMB_X113_Y18_N28
\fazDivisaoInteiro|contador~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~19_combout\ = (\fazDivisaoInteiro|Add0~42_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~42_combout\,
	combout => \fazDivisaoInteiro|contador~19_combout\);

-- Location: FF_X113_Y18_N29
\fazDivisaoInteiro|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(21));

-- Location: LCCOMB_X113_Y18_N18
\fazDivisaoInteiro|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~44_combout\ = (\fazDivisaoInteiro|contador\(22) & (\fazDivisaoInteiro|Add0~43\ $ (GND))) # (!\fazDivisaoInteiro|contador\(22) & (!\fazDivisaoInteiro|Add0~43\ & VCC))
-- \fazDivisaoInteiro|Add0~45\ = CARRY((\fazDivisaoInteiro|contador\(22) & !\fazDivisaoInteiro|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(22),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~43\,
	combout => \fazDivisaoInteiro|Add0~44_combout\,
	cout => \fazDivisaoInteiro|Add0~45\);

-- Location: LCCOMB_X113_Y18_N26
\fazDivisaoInteiro|contador~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~20_combout\ = (\fazDivisaoInteiro|Add0~44_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~44_combout\,
	combout => \fazDivisaoInteiro|contador~20_combout\);

-- Location: FF_X113_Y18_N27
\fazDivisaoInteiro|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(22));

-- Location: LCCOMB_X113_Y18_N20
\fazDivisaoInteiro|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~46_combout\ = (\fazDivisaoInteiro|contador\(23) & (!\fazDivisaoInteiro|Add0~45\)) # (!\fazDivisaoInteiro|contador\(23) & ((\fazDivisaoInteiro|Add0~45\) # (GND)))
-- \fazDivisaoInteiro|Add0~47\ = CARRY((!\fazDivisaoInteiro|Add0~45\) # (!\fazDivisaoInteiro|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(23),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~45\,
	combout => \fazDivisaoInteiro|Add0~46_combout\,
	cout => \fazDivisaoInteiro|Add0~47\);

-- Location: LCCOMB_X114_Y18_N22
\fazDivisaoInteiro|contador~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~21_combout\ = (\fazDivisaoInteiro|Add0~46_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~46_combout\,
	combout => \fazDivisaoInteiro|contador~21_combout\);

-- Location: FF_X114_Y18_N23
\fazDivisaoInteiro|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(23));

-- Location: LCCOMB_X113_Y18_N22
\fazDivisaoInteiro|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~48_combout\ = (\fazDivisaoInteiro|contador\(24) & (\fazDivisaoInteiro|Add0~47\ $ (GND))) # (!\fazDivisaoInteiro|contador\(24) & (!\fazDivisaoInteiro|Add0~47\ & VCC))
-- \fazDivisaoInteiro|Add0~49\ = CARRY((\fazDivisaoInteiro|contador\(24) & !\fazDivisaoInteiro|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(24),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~47\,
	combout => \fazDivisaoInteiro|Add0~48_combout\,
	cout => \fazDivisaoInteiro|Add0~49\);

-- Location: FF_X113_Y18_N23
\fazDivisaoInteiro|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(24));

-- Location: LCCOMB_X113_Y18_N24
\fazDivisaoInteiro|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~50_combout\ = \fazDivisaoInteiro|Add0~49\ $ (\fazDivisaoInteiro|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro|contador\(25),
	cin => \fazDivisaoInteiro|Add0~49\,
	combout => \fazDivisaoInteiro|Add0~50_combout\);

-- Location: LCCOMB_X114_Y18_N18
\fazDivisaoInteiro|contador~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~22_combout\ = (\fazDivisaoInteiro|Add0~50_combout\ & ((!\fazDivisaoInteiro|Equal0~7_combout\) # (!\fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~4_combout\,
	datac => \fazDivisaoInteiro|Equal0~7_combout\,
	datad => \fazDivisaoInteiro|Add0~50_combout\,
	combout => \fazDivisaoInteiro|contador~22_combout\);

-- Location: FF_X114_Y18_N19
\fazDivisaoInteiro|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(25));

-- Location: LCCOMB_X114_Y18_N14
\fazDivisaoInteiro|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~6_combout\ = (\fazDivisaoInteiro|contador\(23) & (\fazDivisaoInteiro|contador\(20) & (\fazDivisaoInteiro|contador\(22) & \fazDivisaoInteiro|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(23),
	datab => \fazDivisaoInteiro|contador\(20),
	datac => \fazDivisaoInteiro|contador\(22),
	datad => \fazDivisaoInteiro|contador\(21),
	combout => \fazDivisaoInteiro|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y18_N20
\fazDivisaoInteiro|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~5_combout\ = (\fazDivisaoInteiro|contador\(19) & (\fazDivisaoInteiro|contador\(17) & (!\fazDivisaoInteiro|contador\(16) & !\fazDivisaoInteiro|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(19),
	datab => \fazDivisaoInteiro|contador\(17),
	datac => \fazDivisaoInteiro|contador\(16),
	datad => \fazDivisaoInteiro|contador\(18),
	combout => \fazDivisaoInteiro|Equal0~5_combout\);

-- Location: LCCOMB_X114_Y18_N8
\fazDivisaoInteiro|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~7_combout\ = (!\fazDivisaoInteiro|contador\(24) & (\fazDivisaoInteiro|contador\(25) & (\fazDivisaoInteiro|Equal0~6_combout\ & \fazDivisaoInteiro|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(24),
	datab => \fazDivisaoInteiro|contador\(25),
	datac => \fazDivisaoInteiro|Equal0~6_combout\,
	datad => \fazDivisaoInteiro|Equal0~5_combout\,
	combout => \fazDivisaoInteiro|Equal0~7_combout\);

-- Location: LCCOMB_X114_Y18_N12
\fazDivisaoInteiro|tick~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\ = \fazDivisaoInteiro|tick~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|tick~0_combout\,
	combout => \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\);

-- Location: FF_X114_Y18_N13
\fazDivisaoInteiro|tick~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|tick~_Duplicate_4_q\);

-- Location: LCCOMB_X114_Y18_N28
\fazDivisaoInteiro|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|tick~0_combout\ = \fazDivisaoInteiro|tick~_Duplicate_4_q\ $ (((\fazDivisaoInteiro|Equal0~7_combout\ & \fazDivisaoInteiro|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|Equal0~7_combout\,
	datac => \fazDivisaoInteiro|tick~_Duplicate_4_q\,
	datad => \fazDivisaoInteiro|Equal0~4_combout\,
	combout => \fazDivisaoInteiro|tick~0_combout\);

-- Location: DDIOOUTCELL_X115_Y17_N11
\fazDivisaoInteiro|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|tick~q\);

-- Location: DDIOOUTCELL_X115_Y19_N4
\fazDivisaoInteiro|tick~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|tick~_Duplicate_1_q\);

-- Location: DDIOOUTCELL_X115_Y18_N4
\fazDivisaoInteiro|tick~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|tick~_Duplicate_2_q\);

-- Location: DDIOOUTCELL_X115_Y20_N4
\fazDivisaoInteiro|tick~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|tick~_Duplicate_3_q\);

-- Location: CLKCTRL_G6
\fazDivisaoInteiro|tick~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fazDivisaoInteiro|tick~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fazDivisaoInteiro|tick~clkctrl_outclk\);

-- Location: FF_X73_Y2_N17
\S0|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state2~q\);

-- Location: LCCOMB_X72_Y2_N10
\S0|reg_fstate~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~6_combout\ = (\S0|fstate.state2~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state2~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~6_combout\);

-- Location: FF_X72_Y2_N11
\S0|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state3~q\);

-- Location: FF_X73_Y2_N15
\S0|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state4~q\);

-- Location: FF_X73_Y2_N29
\S0|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state5~q\);

-- Location: LCCOMB_X72_Y2_N30
\S0|reg_fstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~0_combout\ = (\S0|fstate.state5~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state5~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~0_combout\);

-- Location: FF_X72_Y2_N31
\S0|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state6~q\);

-- Location: FF_X73_Y2_N31
\S0|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state7~q\);

-- Location: FF_X74_Y2_N23
\F0|Rg6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(1));

-- Location: FF_X73_Y2_N7
\S0|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state11~q\);

-- Location: LCCOMB_X73_Y2_N0
\S0|reg_fstate~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~3_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state11~q\,
	combout => \S0|reg_fstate~3_combout\);

-- Location: FF_X73_Y2_N1
\S0|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state12~q\);

-- Location: FF_X73_Y2_N27
\S0|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state13~q\);

-- Location: FF_X73_Y2_N19
\S0|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state13~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state14~q\);

-- Location: LCCOMB_X73_Y2_N4
\S0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr4~0_combout\ = (!\S0|fstate.state2~q\ & (!\S0|fstate.state4~q\ & (!\S0|fstate.state1~q\ & !\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state2~q\,
	datab => \S0|fstate.state4~q\,
	datac => \S0|fstate.state1~q\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|WideOr4~0_combout\);

-- Location: LCCOMB_X73_Y2_N2
\S0|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr4~1_combout\ = (!\S0|fstate.state17~q\ & (!\S0|fstate.state5~q\ & \S0|fstate.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state5~q\,
	datad => \S0|fstate.state0~q\,
	combout => \S0|WideOr4~1_combout\);

-- Location: LCCOMB_X73_Y2_N26
\S0|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr4~combout\ = (!\S0|fstate.state16~q\ & (\S0|WideOr4~0_combout\ & (!\S0|fstate.state13~q\ & \S0|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state16~q\,
	datab => \S0|WideOr4~0_combout\,
	datac => \S0|fstate.state13~q\,
	datad => \S0|WideOr4~1_combout\,
	combout => \S0|WideOr4~combout\);

-- Location: LCCOMB_X72_Y2_N4
\S0|output1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~0_combout\ = (\S0|fstate.state6~q\) # (\S0|fstate.state4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state6~q\,
	datad => \S0|fstate.state4~q\,
	combout => \S0|output1~0_combout\);

-- Location: FF_X72_Y2_N15
\F0|Rg5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(1));

-- Location: LCCOMB_X73_Y2_N28
\S0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr5~0_combout\ = (\S0|fstate.state17~q\) # ((\S0|fstate.state4~q\) # ((\S0|fstate.state5~q\) # (\S0|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state4~q\,
	datac => \S0|fstate.state5~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr5~0_combout\);

-- Location: LCCOMB_X74_Y2_N28
\S0|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr5~combout\ = (\S0|fstate.state16~q\) # ((\S0|fstate.state11~q\) # (\S0|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state16~q\,
	datab => \S0|fstate.state11~q\,
	datad => \S0|WideOr5~0_combout\,
	combout => \S0|WideOr5~combout\);

-- Location: LCCOMB_X75_Y2_N14
\F0|U|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~20_combout\ = (\S0|WideOr4~combout\) # ((\S0|WideOr5~combout\ & (!\F0|Rg6|DOUT\(1))) # (!\S0|WideOr5~combout\ & ((!\F0|Rg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \S0|WideOr4~combout\,
	datac => \F0|Rg5|DOUT\(1),
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~20_combout\);

-- Location: LCCOMB_X73_Y2_N22
\S0|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr6~2_combout\ = (!\S0|fstate.state17~q\ & !\S0|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|WideOr6~2_combout\);

-- Location: FF_X73_Y2_N3
\S0|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state8~q\);

-- Location: LCCOMB_X73_Y2_N6
\S0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr3~0_combout\ = (!\S0|fstate.state8~q\ & (!\S0|fstate.state2~q\ & (!\S0|fstate.state11~q\ & !\S0|fstate.state5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state8~q\,
	datab => \S0|fstate.state2~q\,
	datac => \S0|fstate.state11~q\,
	datad => \S0|fstate.state5~q\,
	combout => \S0|WideOr3~0_combout\);

-- Location: LCCOMB_X73_Y2_N30
\F0|U|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~0_combout\ = (\S0|WideOr6~2_combout\ & (\S0|WideOr3~1_combout\ & (!\S0|fstate.state7~q\ & \S0|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr6~2_combout\,
	datab => \S0|WideOr3~1_combout\,
	datac => \S0|fstate.state7~q\,
	datad => \S0|WideOr3~0_combout\,
	combout => \F0|U|Add0~0_combout\);

-- Location: LCCOMB_X73_Y2_N16
\F0|U|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~2_combout\ = (!\S0|WideOr4~combout\ & (!\F0|U|Add0~1_combout\ & \F0|U|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr4~combout\,
	datab => \F0|U|Add0~1_combout\,
	datad => \F0|U|Add0~0_combout\,
	combout => \F0|U|Add0~2_combout\);

-- Location: LCCOMB_X74_Y2_N10
\F0|U|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~3_combout\ = (\F0|U|Add0~0_combout\ & (((\S0|WideOr5~combout\)))) # (!\F0|U|Add0~0_combout\ & (\S0|WideOr6~2_combout\ & ((\S0|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr6~2_combout\,
	datab => \S0|WideOr5~combout\,
	datac => \S0|WideOr3~0_combout\,
	datad => \F0|U|Add0~0_combout\,
	combout => \F0|U|Add0~3_combout\);

-- Location: LCCOMB_X75_Y2_N30
\F0|U|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~16_combout\ = (\F0|U|Add0~2_combout\ & ((\F0|U|Add0~3_combout\ & ((\F0|Rg6|DOUT\(1)))) # (!\F0|U|Add0~3_combout\ & (\F0|Rg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(1),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|U|Add0~2_combout\,
	datad => \F0|U|Add0~3_combout\,
	combout => \F0|U|Add0~16_combout\);

-- Location: LCCOMB_X72_Y2_N14
\S0|output1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~1_combout\ = (\S0|fstate.state7~q\) # (\S0|fstate.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state7~q\,
	datad => \S0|fstate.state9~q\,
	combout => \S0|output1~1_combout\);

-- Location: FF_X75_Y2_N3
\F0|Rg4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(1));

-- Location: LCCOMB_X72_Y2_N18
\S0|output1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~3_combout\ = (\S0|fstate.state15~q\) # (\S0|fstate.state13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state15~q\,
	datab => \S0|fstate.state13~q\,
	combout => \S0|output1~3_combout\);

-- Location: FF_X76_Y2_N1
\F0|Rg2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(1));

-- Location: LCCOMB_X76_Y2_N0
\S0|output1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~2_combout\ = (\S0|fstate.state12~q\) # (\S0|fstate.state10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state12~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|output1~2_combout\);

-- Location: FF_X76_Y2_N11
\F0|Rg3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(1));

-- Location: LCCOMB_X75_Y2_N0
\S0|output1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~4_combout\ = (\S0|fstate.state16~q\) # (\S0|fstate.state18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state16~q\,
	datad => \S0|fstate.state18~q\,
	combout => \S0|output1~4_combout\);

-- Location: FF_X75_Y2_N19
\F0|Rg1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~32_combout\,
	sload => VCC,
	ena => \S0|output1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(1));

-- Location: LCCOMB_X75_Y2_N18
\F0|U|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~17_combout\ = (\S0|WideOr5~combout\ & (((\S0|WideOr4~combout\)))) # (!\S0|WideOr5~combout\ & ((\S0|WideOr4~combout\ & (!\F0|Rg3|DOUT\(1))) # (!\S0|WideOr4~combout\ & ((!\F0|Rg1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \S0|WideOr5~combout\,
	datac => \F0|Rg1|DOUT\(1),
	datad => \S0|WideOr4~combout\,
	combout => \F0|U|Add0~17_combout\);

-- Location: LCCOMB_X75_Y2_N4
\F0|U|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~18_combout\ = (\S0|WideOr5~combout\ & ((\F0|U|Add0~17_combout\ & (!\F0|Rg4|DOUT\(1))) # (!\F0|U|Add0~17_combout\ & ((!\F0|Rg2|DOUT\(1)))))) # (!\S0|WideOr5~combout\ & (((\F0|U|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(1),
	datab => \S0|WideOr5~combout\,
	datac => \F0|Rg2|DOUT\(1),
	datad => \F0|U|Add0~17_combout\,
	combout => \F0|U|Add0~18_combout\);

-- Location: LCCOMB_X74_Y2_N12
\F0|U|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~19_combout\ = (!\F0|U|Add0~0_combout\ & (!\F0|U|Add0~1_combout\ & (\F0|U|Add0~3_combout\ $ (\F0|U|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~3_combout\,
	datab => \F0|U|Add0~0_combout\,
	datac => \F0|U|Add0~1_combout\,
	datad => \F0|U|Add0~18_combout\,
	combout => \F0|U|Add0~19_combout\);

-- Location: LCCOMB_X74_Y2_N6
\F0|U|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~21_combout\ = (\F0|U|Add0~16_combout\) # ((\F0|U|Add0~19_combout\) # ((\F0|U|Add0~1_combout\ & \F0|U|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~1_combout\,
	datab => \F0|U|Add0~20_combout\,
	datac => \F0|U|Add0~16_combout\,
	datad => \F0|U|Add0~19_combout\,
	combout => \F0|U|Add0~21_combout\);

-- Location: LCCOMB_X73_Y2_N10
\S0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr2~0_combout\ = (\S0|fstate.state7~q\) # ((\S0|fstate.state8~q\) # (\S0|fstate.state10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state7~q\,
	datab => \S0|fstate.state8~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr2~0_combout\);

-- Location: LCCOMB_X72_Y2_N0
\S0|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr2~combout\ = (\S0|fstate.state16~q\) # (((\S0|fstate.state13~q\) # (\S0|WideOr2~0_combout\)) # (!\S0|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state16~q\,
	datab => \S0|WideOr4~0_combout\,
	datac => \S0|fstate.state13~q\,
	datad => \S0|WideOr2~0_combout\,
	combout => \S0|WideOr2~combout\);

-- Location: LCCOMB_X72_Y2_N8
\F0|M1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux2~2_combout\ = (\S0|WideOr3~0_combout\ & (!\S0|WideOr2~combout\ & ((\S0|fstate.state17~q\) # (\S0|fstate.state14~q\)))) # (!\S0|WideOr3~0_combout\ & (!\S0|fstate.state17~q\ & (!\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr3~0_combout\,
	datab => \S0|fstate.state17~q\,
	datac => \S0|fstate.state14~q\,
	datad => \S0|WideOr2~combout\,
	combout => \F0|M1|Mux2~2_combout\);

-- Location: LCCOMB_X72_Y2_N2
\F0|M1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux3~2_combout\ = (\S0|WideOr3~0_combout\ & (!\S0|fstate.state17~q\ & (!\S0|fstate.state14~q\ & \S0|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr3~0_combout\,
	datab => \S0|fstate.state17~q\,
	datac => \S0|fstate.state14~q\,
	datad => \S0|WideOr2~combout\,
	combout => \F0|M1|Mux3~2_combout\);

-- Location: LCCOMB_X73_Y2_N14
\S0|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr6~combout\ = (!\S0|fstate.state17~q\ & (!\S0|fstate.state14~q\ & \S0|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state14~q\,
	datad => \S0|WideOr3~0_combout\,
	combout => \S0|WideOr6~combout\);

-- Location: LCCOMB_X74_Y2_N16
\F0|U|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~29_cout\ = CARRY(!\S0|WideOr6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr6~combout\,
	datad => VCC,
	cout => \F0|U|Add0~29_cout\);

-- Location: LCCOMB_X74_Y2_N18
\F0|U|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~30_combout\ = (\F0|U|Add0~27_combout\ & ((\F0|M1|Mux3~2_combout\ & (\F0|U|Add0~29_cout\ & VCC)) # (!\F0|M1|Mux3~2_combout\ & (!\F0|U|Add0~29_cout\)))) # (!\F0|U|Add0~27_combout\ & ((\F0|M1|Mux3~2_combout\ & (!\F0|U|Add0~29_cout\)) # 
-- (!\F0|M1|Mux3~2_combout\ & ((\F0|U|Add0~29_cout\) # (GND)))))
-- \F0|U|Add0~31\ = CARRY((\F0|U|Add0~27_combout\ & (!\F0|M1|Mux3~2_combout\ & !\F0|U|Add0~29_cout\)) # (!\F0|U|Add0~27_combout\ & ((!\F0|U|Add0~29_cout\) # (!\F0|M1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~27_combout\,
	datab => \F0|M1|Mux3~2_combout\,
	datad => VCC,
	cin => \F0|U|Add0~29_cout\,
	combout => \F0|U|Add0~30_combout\,
	cout => \F0|U|Add0~31\);

-- Location: LCCOMB_X74_Y2_N20
\F0|U|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~32_combout\ = ((\F0|U|Add0~21_combout\ $ (\F0|M1|Mux2~2_combout\ $ (!\F0|U|Add0~31\)))) # (GND)
-- \F0|U|Add0~33\ = CARRY((\F0|U|Add0~21_combout\ & ((\F0|M1|Mux2~2_combout\) # (!\F0|U|Add0~31\))) # (!\F0|U|Add0~21_combout\ & (\F0|M1|Mux2~2_combout\ & !\F0|U|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~21_combout\,
	datab => \F0|M1|Mux2~2_combout\,
	datad => VCC,
	cin => \F0|U|Add0~31\,
	combout => \F0|U|Add0~32_combout\,
	cout => \F0|U|Add0~33\);

-- Location: LCCOMB_X72_Y2_N16
\S0|reg_fstate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~1_combout\ = (\S0|fstate.state8~q\ & !\F0|U|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state8~q\,
	datad => \F0|U|Add0~30_combout\,
	combout => \S0|reg_fstate~1_combout\);

-- Location: LCCOMB_X72_Y2_N20
\F0|M1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux0~2_combout\ = (!\S0|WideOr3~0_combout\ & (\S0|WideOr2~combout\ & (!\S0|fstate.state17~q\ & !\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr3~0_combout\,
	datab => \S0|WideOr2~combout\,
	datac => \S0|fstate.state17~q\,
	datad => \S0|fstate.state14~q\,
	combout => \F0|M1|Mux0~2_combout\);

-- Location: FF_X74_Y2_N25
\F0|Rg6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|U|Add0~36_combout\,
	ena => \S0|output1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(3));

-- Location: FF_X72_Y2_N17
\F0|Rg5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~36_combout\,
	sload => VCC,
	ena => \S0|output1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(3));

-- Location: LCCOMB_X70_Y2_N12
\F0|U|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~8_combout\ = (\S0|WideOr4~combout\) # ((\S0|WideOr5~combout\ & (!\F0|Rg6|DOUT\(3))) # (!\S0|WideOr5~combout\ & ((!\F0|Rg5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(3),
	datab => \F0|Rg5|DOUT\(3),
	datac => \S0|WideOr4~combout\,
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~8_combout\);

-- Location: LCCOMB_X70_Y2_N4
\F0|U|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~4_combout\ = (\F0|U|Add0~2_combout\ & ((\F0|U|Add0~3_combout\ & ((\F0|Rg6|DOUT\(3)))) # (!\F0|U|Add0~3_combout\ & (\F0|Rg5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~2_combout\,
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg6|DOUT\(3),
	datad => \F0|U|Add0~3_combout\,
	combout => \F0|U|Add0~4_combout\);

-- Location: FF_X75_Y2_N1
\F0|Rg4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~36_combout\,
	sload => VCC,
	ena => \S0|output1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(3));

-- Location: FF_X70_Y2_N15
\F0|Rg2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~36_combout\,
	sload => VCC,
	ena => \S0|output1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(3));

-- Location: LCCOMB_X70_Y2_N24
\F0|Rg3|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg3|DOUT[3]~feeder_combout\ = \F0|U|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|U|Add0~36_combout\,
	combout => \F0|Rg3|DOUT[3]~feeder_combout\);

-- Location: FF_X70_Y2_N25
\F0|Rg3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|Rg3|DOUT[3]~feeder_combout\,
	ena => \S0|output1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(3));

-- Location: FF_X74_Y2_N9
\F0|Rg1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~36_combout\,
	sload => VCC,
	ena => \S0|output1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(3));

-- Location: LCCOMB_X70_Y2_N22
\F0|U|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~5_combout\ = (\S0|WideOr4~combout\ & (((\S0|WideOr5~combout\)) # (!\F0|Rg3|DOUT\(3)))) # (!\S0|WideOr4~combout\ & (((!\F0|Rg1|DOUT\(3) & !\S0|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg1|DOUT\(3),
	datac => \S0|WideOr4~combout\,
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~5_combout\);

-- Location: LCCOMB_X70_Y2_N20
\F0|U|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~6_combout\ = (\F0|U|Add0~5_combout\ & (((!\S0|WideOr5~combout\)) # (!\F0|Rg4|DOUT\(3)))) # (!\F0|U|Add0~5_combout\ & (((!\F0|Rg2|DOUT\(3) & \S0|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(3),
	datab => \F0|Rg2|DOUT\(3),
	datac => \F0|U|Add0~5_combout\,
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~6_combout\);

-- Location: LCCOMB_X70_Y2_N6
\F0|U|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~7_combout\ = (!\F0|U|Add0~0_combout\ & (!\F0|U|Add0~1_combout\ & (\F0|U|Add0~3_combout\ $ (\F0|U|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~0_combout\,
	datab => \F0|U|Add0~3_combout\,
	datac => \F0|U|Add0~1_combout\,
	datad => \F0|U|Add0~6_combout\,
	combout => \F0|U|Add0~7_combout\);

-- Location: LCCOMB_X70_Y2_N10
\F0|U|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~9_combout\ = (\F0|U|Add0~4_combout\) # ((\F0|U|Add0~7_combout\) # ((\F0|U|Add0~1_combout\ & \F0|U|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~1_combout\,
	datab => \F0|U|Add0~8_combout\,
	datac => \F0|U|Add0~4_combout\,
	datad => \F0|U|Add0~7_combout\,
	combout => \F0|U|Add0~9_combout\);

-- Location: LCCOMB_X72_Y2_N6
\F0|M1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux1~2_combout\ = (\S0|WideOr3~0_combout\ & (((!\S0|fstate.state17~q\ & !\S0|fstate.state14~q\)) # (!\S0|WideOr2~combout\))) # (!\S0|WideOr3~0_combout\ & ((\S0|fstate.state17~q\) # ((\S0|fstate.state14~q\) # (\S0|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr3~0_combout\,
	datab => \S0|fstate.state17~q\,
	datac => \S0|fstate.state14~q\,
	datad => \S0|WideOr2~combout\,
	combout => \F0|M1|Mux1~2_combout\);

-- Location: LCCOMB_X74_Y2_N22
\F0|U|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~34_combout\ = (\F0|U|Add0~15_combout\ & ((\F0|M1|Mux1~2_combout\ & (!\F0|U|Add0~33\)) # (!\F0|M1|Mux1~2_combout\ & (\F0|U|Add0~33\ & VCC)))) # (!\F0|U|Add0~15_combout\ & ((\F0|M1|Mux1~2_combout\ & ((\F0|U|Add0~33\) # (GND))) # 
-- (!\F0|M1|Mux1~2_combout\ & (!\F0|U|Add0~33\))))
-- \F0|U|Add0~35\ = CARRY((\F0|U|Add0~15_combout\ & (\F0|M1|Mux1~2_combout\ & !\F0|U|Add0~33\)) # (!\F0|U|Add0~15_combout\ & ((\F0|M1|Mux1~2_combout\) # (!\F0|U|Add0~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~15_combout\,
	datab => \F0|M1|Mux1~2_combout\,
	datad => VCC,
	cin => \F0|U|Add0~33\,
	combout => \F0|U|Add0~34_combout\,
	cout => \F0|U|Add0~35\);

-- Location: LCCOMB_X74_Y2_N24
\F0|U|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~36_combout\ = \F0|M1|Mux0~2_combout\ $ (\F0|U|Add0~35\ $ (!\F0|U|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M1|Mux0~2_combout\,
	datad => \F0|U|Add0~9_combout\,
	cin => \F0|U|Add0~35\,
	combout => \F0|U|Add0~36_combout\);

-- Location: LCCOMB_X72_Y2_N28
\S0|reg_fstate~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~2_combout\ = (!\F0|U|Add0~32_combout\ & (\S0|reg_fstate~1_combout\ & (!\F0|U|Add0~36_combout\ & !\F0|U|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~32_combout\,
	datab => \S0|reg_fstate~1_combout\,
	datac => \F0|U|Add0~36_combout\,
	datad => \F0|U|Add0~34_combout\,
	combout => \S0|reg_fstate~2_combout\);

-- Location: FF_X72_Y2_N29
\S0|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state9~q\);

-- Location: FF_X73_Y2_N9
\S0|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state10~q\);

-- Location: LCCOMB_X73_Y2_N8
\S0|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr3~1_combout\ = (\S0|fstate.state0~q\ & (!\S0|fstate.state4~q\ & (!\S0|fstate.state10~q\ & !\S0|fstate.state1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state0~q\,
	datab => \S0|fstate.state4~q\,
	datac => \S0|fstate.state10~q\,
	datad => \S0|fstate.state1~q\,
	combout => \S0|WideOr3~1_combout\);

-- Location: LCCOMB_X73_Y2_N20
\F0|U|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~1_combout\ = (!\S0|fstate.state7~q\ & (\S0|WideOr3~1_combout\ & (!\S0|WideOr6~2_combout\ & \S0|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state7~q\,
	datab => \S0|WideOr3~1_combout\,
	datac => \S0|WideOr6~2_combout\,
	datad => \S0|WideOr3~0_combout\,
	combout => \F0|U|Add0~1_combout\);

-- Location: FF_X72_Y2_N19
\F0|Rg5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(2));

-- Location: FF_X74_Y2_N29
\F0|Rg6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(2));

-- Location: LCCOMB_X72_Y2_N22
\F0|U|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~14_combout\ = (\S0|WideOr4~combout\) # ((\S0|WideOr5~combout\ & ((!\F0|Rg6|DOUT\(2)))) # (!\S0|WideOr5~combout\ & (!\F0|Rg5|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(2),
	datab => \S0|WideOr4~combout\,
	datac => \F0|Rg6|DOUT\(2),
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~14_combout\);

-- Location: LCCOMB_X75_Y2_N10
\F0|U|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~10_combout\ = (\F0|U|Add0~2_combout\ & ((\F0|U|Add0~3_combout\ & ((\F0|Rg6|DOUT\(2)))) # (!\F0|U|Add0~3_combout\ & (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(2),
	datab => \F0|Rg6|DOUT\(2),
	datac => \F0|U|Add0~2_combout\,
	datad => \F0|U|Add0~3_combout\,
	combout => \F0|U|Add0~10_combout\);

-- Location: FF_X75_Y2_N23
\F0|Rg4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(2));

-- Location: FF_X76_Y2_N27
\F0|Rg3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(2));

-- Location: FF_X76_Y2_N3
\F0|Rg2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(2));

-- Location: FF_X75_Y2_N13
\F0|Rg1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~34_combout\,
	sload => VCC,
	ena => \S0|output1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(2));

-- Location: LCCOMB_X75_Y2_N12
\F0|U|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~11_combout\ = (\S0|WideOr4~combout\ & (((\S0|WideOr5~combout\)))) # (!\S0|WideOr4~combout\ & ((\S0|WideOr5~combout\ & (!\F0|Rg2|DOUT\(2))) # (!\S0|WideOr5~combout\ & ((!\F0|Rg1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \S0|WideOr4~combout\,
	datac => \F0|Rg1|DOUT\(2),
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~11_combout\);

-- Location: LCCOMB_X75_Y2_N28
\F0|U|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~12_combout\ = (\S0|WideOr4~combout\ & ((\F0|U|Add0~11_combout\ & (!\F0|Rg4|DOUT\(2))) # (!\F0|U|Add0~11_combout\ & ((!\F0|Rg3|DOUT\(2)))))) # (!\S0|WideOr4~combout\ & (((\F0|U|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \S0|WideOr4~combout\,
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|U|Add0~11_combout\,
	combout => \F0|U|Add0~12_combout\);

-- Location: LCCOMB_X74_Y2_N4
\F0|U|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~13_combout\ = (!\F0|U|Add0~0_combout\ & (!\F0|U|Add0~1_combout\ & (\F0|U|Add0~3_combout\ $ (\F0|U|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~3_combout\,
	datab => \F0|U|Add0~0_combout\,
	datac => \F0|U|Add0~1_combout\,
	datad => \F0|U|Add0~12_combout\,
	combout => \F0|U|Add0~13_combout\);

-- Location: LCCOMB_X74_Y2_N30
\F0|U|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~15_combout\ = (\F0|U|Add0~10_combout\) # ((\F0|U|Add0~13_combout\) # ((\F0|U|Add0~1_combout\ & \F0|U|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~1_combout\,
	datab => \F0|U|Add0~14_combout\,
	datac => \F0|U|Add0~10_combout\,
	datad => \F0|U|Add0~13_combout\,
	combout => \F0|U|Add0~15_combout\);

-- Location: LCCOMB_X74_Y2_N8
\F0|U|Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Flag~0_combout\ = (!\F0|U|Add0~34_combout\ & (!\F0|U|Add0~30_combout\ & (!\F0|U|Add0~36_combout\ & !\F0|U|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~34_combout\,
	datab => \F0|U|Add0~30_combout\,
	datac => \F0|U|Add0~36_combout\,
	datad => \F0|U|Add0~32_combout\,
	combout => \F0|U|Flag~0_combout\);

-- Location: LCCOMB_X72_Y2_N26
\S0|reg_fstate~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~4_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|reg_fstate~4_combout\);

-- Location: FF_X72_Y2_N27
\S0|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state15~q\);

-- Location: FF_X73_Y2_N23
\S0|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state15~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state16~q\);

-- Location: FF_X73_Y2_N11
\S0|fstate.state17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state17~q\);

-- Location: LCCOMB_X72_Y2_N12
\S0|reg_fstate~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~5_combout\ = (\S0|fstate.state17~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state17~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~5_combout\);

-- Location: FF_X72_Y2_N13
\S0|fstate.state18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state18~q\);

-- Location: LCCOMB_X73_Y2_N12
\S0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~0_combout\ = (!\S0|fstate.state18~q\ & ((\F0|U|Flag~0_combout\) # (\S0|WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state18~q\,
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|WideOr6~combout\,
	combout => \S0|Selector0~0_combout\);

-- Location: FF_X73_Y2_N13
\S0|fstate.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state0~q\);

-- Location: LCCOMB_X76_Y2_N2
\S0|fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|fstate.state1~0_combout\ = !\S0|fstate.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state0~q\,
	combout => \S0|fstate.state1~0_combout\);

-- Location: FF_X73_Y2_N5
\S0|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|fstate.state1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state1~q\);

-- Location: LCCOMB_X73_Y2_N18
\S0|output1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|output1~5_combout\ = (\S0|fstate.state1~q\) # (\S0|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state1~q\,
	datad => \S0|fstate.state3~q\,
	combout => \S0|output1~5_combout\);

-- Location: FF_X74_Y2_N15
\F0|Rg6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~30_combout\,
	sload => VCC,
	ena => \S0|output1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(0));

-- Location: LCCOMB_X72_Y2_N24
\F0|U|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~26_combout\ = (\S0|WideOr4~combout\) # ((\S0|WideOr5~combout\ & ((!\F0|Rg6|DOUT\(0)))) # (!\S0|WideOr5~combout\ & (!\F0|Rg5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg6|DOUT\(0),
	datac => \S0|WideOr4~combout\,
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~26_combout\);

-- Location: LCCOMB_X74_Y2_N14
\F0|U|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~22_combout\ = (\F0|U|Add0~2_combout\ & ((\F0|U|Add0~3_combout\ & ((\F0|Rg6|DOUT\(0)))) # (!\F0|U|Add0~3_combout\ & (\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~3_combout\,
	datab => \F0|Rg5|DOUT\(0),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|U|Add0~2_combout\,
	combout => \F0|U|Add0~22_combout\);

-- Location: FF_X76_Y2_N25
\F0|Rg3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~30_combout\,
	sload => VCC,
	ena => \S0|output1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(0));

-- Location: FF_X74_Y2_N3
\F0|Rg1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~30_combout\,
	sload => VCC,
	ena => \S0|output1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(0));

-- Location: LCCOMB_X75_Y2_N16
\F0|Rg4|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg4|DOUT[0]~feeder_combout\ = \F0|U|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F0|U|Add0~30_combout\,
	combout => \F0|Rg4|DOUT[0]~feeder_combout\);

-- Location: FF_X75_Y2_N17
\F0|Rg4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|Rg4|DOUT[0]~feeder_combout\,
	ena => \S0|output1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(0));

-- Location: FF_X73_Y2_N25
\F0|Rg2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~30_combout\,
	sload => VCC,
	ena => \S0|output1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(0));

-- Location: LCCOMB_X73_Y2_N24
\F0|U|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~23_combout\ = (\S0|WideOr4~combout\ & ((\F0|Rg4|DOUT\(0)) # ((!\S0|WideOr5~combout\)))) # (!\S0|WideOr4~combout\ & (((\F0|Rg2|DOUT\(0) & \S0|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr4~combout\,
	datab => \F0|Rg4|DOUT\(0),
	datac => \F0|Rg2|DOUT\(0),
	datad => \S0|WideOr5~combout\,
	combout => \F0|U|Add0~23_combout\);

-- Location: LCCOMB_X74_Y2_N2
\F0|U|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~24_combout\ = (\S0|WideOr5~combout\ & (((!\F0|U|Add0~23_combout\)))) # (!\S0|WideOr5~combout\ & ((\F0|U|Add0~23_combout\ & (!\F0|Rg3|DOUT\(0))) # (!\F0|U|Add0~23_combout\ & ((!\F0|Rg1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(0),
	datab => \S0|WideOr5~combout\,
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|U|Add0~23_combout\,
	combout => \F0|U|Add0~24_combout\);

-- Location: LCCOMB_X74_Y2_N0
\F0|U|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~25_combout\ = (!\F0|U|Add0~0_combout\ & (!\F0|U|Add0~1_combout\ & (\F0|U|Add0~3_combout\ $ (\F0|U|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~3_combout\,
	datab => \F0|U|Add0~0_combout\,
	datac => \F0|U|Add0~1_combout\,
	datad => \F0|U|Add0~24_combout\,
	combout => \F0|U|Add0~25_combout\);

-- Location: LCCOMB_X74_Y2_N26
\F0|U|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~27_combout\ = (\F0|U|Add0~22_combout\) # ((\F0|U|Add0~25_combout\) # ((\F0|U|Add0~26_combout\ & \F0|U|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~26_combout\,
	datab => \F0|U|Add0~1_combout\,
	datac => \F0|U|Add0~22_combout\,
	datad => \F0|U|Add0~25_combout\,
	combout => \F0|U|Add0~27_combout\);

-- Location: FF_X72_Y2_N5
\F0|Rg5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~30_combout\,
	sload => VCC,
	ena => \S0|output1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(0));

-- Location: LCCOMB_X76_Y2_N28
\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(1) $ (\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(3) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(0) $ (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X76_Y2_N22
\display1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = (\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0) $ (((\F0|Rg5|DOUT\(3)) # (\F0|Rg5|DOUT\(1)))))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) & \F0|Rg5|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X76_Y2_N4
\display1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(2) & ((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(0))))) # (!\F0|Rg5|DOUT\(3) & (!\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(1) & !\F0|Rg5|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X76_Y2_N6
\display1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(0) & ((\F0|Rg5|DOUT\(2)))) # (!\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) & !\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(0) $ (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y2_N16
\display1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = (\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3)))) # (!\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(2) & ((!\F0|Rg5|DOUT\(3)))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X76_Y2_N18
\display1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) $ (((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(2)))))) # (!\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & !\F0|Rg5|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X76_Y2_N12
\display1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = (\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) $ (!\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(3) $ (!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X75_Y2_N22
\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(0) $ (!\F0|Rg4|DOUT\(3))))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(1) $ (!\F0|Rg4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(1),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(3),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y2_N20
\display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) $ (((\F0|Rg4|DOUT\(3)) # (\F0|Rg4|DOUT\(1)))))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(1) & \F0|Rg4|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y2_N2
\display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(3) & ((\F0|Rg4|DOUT\(1)) # (!\F0|Rg4|DOUT\(0))))) # (!\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(1) & !\F0|Rg4|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X75_Y2_N26
\display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(2) & ((\F0|Rg4|DOUT\(0)))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(3) & !\F0|Rg4|DOUT\(0))))) # (!\F0|Rg4|DOUT\(1) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) $ (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y2_N24
\display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (\F0|Rg4|DOUT\(1) & (((!\F0|Rg4|DOUT\(3) & \F0|Rg4|DOUT\(0))))) # (!\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(3))) # (!\F0|Rg4|DOUT\(2) & ((\F0|Rg4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y2_N6
\display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(3) $ (\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(3) & ((\F0|Rg4|DOUT\(1)) # (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y2_N8
\display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) $ (!\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(2) $ (!\F0|Rg4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(1),
	datad => \F0|Rg4|DOUT\(0),
	combout => \display2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X76_Y2_N20
\display3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = (\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(1) $ (\F0|Rg3|DOUT\(2))))) # (!\F0|Rg3|DOUT\(3) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(2) $ (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X76_Y2_N30
\display3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~1_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) $ (((\F0|Rg3|DOUT\(1)) # (\F0|Rg3|DOUT\(3)))))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(3) & \F0|Rg3|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X76_Y2_N8
\display3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~2_combout\ = (\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(1)) # (!\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(1) & (!\F0|Rg3|DOUT\(2) & !\F0|Rg3|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X76_Y2_N14
\display3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~3_combout\ = (\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(0)))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(3) & !\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(1) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) $ (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y2_N10
\display3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~4_combout\ = (\F0|Rg3|DOUT\(1) & (((!\F0|Rg3|DOUT\(3) & \F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(3))) # (!\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X76_Y2_N24
\display3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~5_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(3) $ (\F0|Rg3|DOUT\(1))))) # (!\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(3) & ((\F0|Rg3|DOUT\(0)) # (\F0|Rg3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(0),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X76_Y2_N26
\display3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~6_combout\ = (\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(1) $ (!\F0|Rg3|DOUT\(2))))) # (!\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(3) $ (!\F0|Rg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display3|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X70_Y2_N14
\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(0) $ (!\F0|Rg2|DOUT\(3))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(3) $ (!\F0|Rg2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X70_Y2_N0
\display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) $ (((\F0|Rg2|DOUT\(3)) # (\F0|Rg2|DOUT\(1)))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(3) & \F0|Rg2|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X70_Y2_N26
\display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(3) & ((\F0|Rg2|DOUT\(1)) # (!\F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(3) & \F0|Rg2|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X70_Y2_N16
\display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0))) # (!\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(0) & \F0|Rg2|DOUT\(3))))) # (!\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(2) $ (\F0|Rg2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X70_Y2_N30
\display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (\F0|Rg2|DOUT\(1) & (((\F0|Rg2|DOUT\(0) & !\F0|Rg2|DOUT\(3))))) # (!\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(2) & ((!\F0|Rg2|DOUT\(3)))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X70_Y2_N28
\display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(3) $ (\F0|Rg2|DOUT\(1))))) # (!\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(3) & ((\F0|Rg2|DOUT\(0)) # (\F0|Rg2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X70_Y2_N18
\display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(1))))) # (!\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X69_Y2_N24
\display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = (\F0|Rg1|DOUT\(2) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(3) $ (!\F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) $ (!\F0|Rg1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X69_Y2_N18
\display5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = (\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0) $ (((\F0|Rg1|DOUT\(3)) # (\F0|Rg1|DOUT\(1)))))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) & \F0|Rg1|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X69_Y2_N16
\display5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = (\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(3) & ((\F0|Rg1|DOUT\(1)) # (!\F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(2) & (!\F0|Rg1|DOUT\(3) & (!\F0|Rg1|DOUT\(0) & \F0|Rg1|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X69_Y2_N2
\display5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = (\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(2) & ((\F0|Rg1|DOUT\(0)))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(3) & !\F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(2) $ (\F0|Rg1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X69_Y2_N4
\display5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = (\F0|Rg1|DOUT\(1) & (((!\F0|Rg1|DOUT\(3) & \F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(2) & (!\F0|Rg1|DOUT\(3))) # (!\F0|Rg1|DOUT\(2) & ((\F0|Rg1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X69_Y2_N26
\display5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = (\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) $ (\F0|Rg1|DOUT\(1))))) # (!\F0|Rg1|DOUT\(2) & (!\F0|Rg1|DOUT\(3) & ((\F0|Rg1|DOUT\(0)) # (\F0|Rg1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X69_Y2_N28
\display5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = (\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(2) $ (!\F0|Rg1|DOUT\(1))))) # (!\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(2) $ (!\F0|Rg1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \F0|Rg1|DOUT\(3),
	datac => \F0|Rg1|DOUT\(0),
	datad => \F0|Rg1|DOUT\(1),
	combout => \display5|rascSaida7seg[6]~6_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


