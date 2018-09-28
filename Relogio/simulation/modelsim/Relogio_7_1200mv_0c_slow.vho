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

-- DATE "09/27/2018 19:47:35"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
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
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_4_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador[7]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador[11]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador[12]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador[5]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador[6]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|contador~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_1_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_2_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~_Duplicate_3_q\ : std_logic;
SIGNAL \fazDivisaoInteiro|tick~clkctrl_outclk\ : std_logic;
SIGNAL \F0|U|Add0~34_combout\ : std_logic;
SIGNAL \S0|reg_fstate~7_combout\ : std_logic;
SIGNAL \S0|fstate.state14~q\ : std_logic;
SIGNAL \S0|reg_fstate~10_combout\ : std_logic;
SIGNAL \S0|fstate.state4~q\ : std_logic;
SIGNAL \S0|reg_fstate~9_combout\ : std_logic;
SIGNAL \S0|fstate.state8~q\ : std_logic;
SIGNAL \S0|WideOr13~1_combout\ : std_logic;
SIGNAL \S0|WideOr13~combout\ : std_logic;
SIGNAL \S0|WideOr15~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~28_combout\ : std_logic;
SIGNAL \F0|U|Add0~27_combout\ : std_logic;
SIGNAL \F0|U|Add0~30_combout\ : std_logic;
SIGNAL \S0|reg_fstate~11_combout\ : std_logic;
SIGNAL \S0|fstate.state6~q\ : std_logic;
SIGNAL \S0|WideOr23~0_combout\ : std_logic;
SIGNAL \F0|Rg3|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \S0|WideOr27~0_combout\ : std_logic;
SIGNAL \S0|WideOr11~combout\ : std_logic;
SIGNAL \S0|WideOr23~combout\ : std_logic;
SIGNAL \S0|reg_fstate~12_combout\ : std_logic;
SIGNAL \S0|fstate.state2~q\ : std_logic;
SIGNAL \F0|U|Add0~31_combout\ : std_logic;
SIGNAL \F0|U|Add0~32_combout\ : std_logic;
SIGNAL \F0|U|Add0~33_combout\ : std_logic;
SIGNAL \F0|U|Add0~35_combout\ : std_logic;
SIGNAL \F0|U|Add0~36_combout\ : std_logic;
SIGNAL \F0|M1|Mux2~0_combout\ : std_logic;
SIGNAL \F0|M1|Mux1~0_combout\ : std_logic;
SIGNAL \F0|M1|Mux3~3_combout\ : std_logic;
SIGNAL \F0|U|Add0~44_cout\ : std_logic;
SIGNAL \F0|U|Add0~46\ : std_logic;
SIGNAL \F0|U|Add0~47_combout\ : std_logic;
SIGNAL \S0|Selector0~1_combout\ : std_logic;
SIGNAL \S0|flag4~combout\ : std_logic;
SIGNAL \S0|Selector0~0_combout\ : std_logic;
SIGNAL \S0|Selector0~2_combout\ : std_logic;
SIGNAL \S0|fstate.state11~q\ : std_logic;
SIGNAL \S0|WideOr9~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~29_combout\ : std_logic;
SIGNAL \F0|Rg4|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \F0|U|Add0~56_combout\ : std_logic;
SIGNAL \F0|U|Add0~57_combout\ : std_logic;
SIGNAL \F0|U|Add0~58_combout\ : std_logic;
SIGNAL \F0|U|Add0~59_combout\ : std_logic;
SIGNAL \F0|U|Add0~55_combout\ : std_logic;
SIGNAL \F0|U|Add0~60_combout\ : std_logic;
SIGNAL \F0|M1|Mux1~1_combout\ : std_logic;
SIGNAL \F0|U|Add0~48\ : std_logic;
SIGNAL \F0|U|Add0~61_combout\ : std_logic;
SIGNAL \F0|U|Flag~1_combout\ : std_logic;
SIGNAL \S0|reg_fstate~8_combout\ : std_logic;
SIGNAL \S0|fstate.state13~q\ : std_logic;
SIGNAL \S0|WideOr13~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~37_combout\ : std_logic;
SIGNAL \F0|U|Add0~38_combout\ : std_logic;
SIGNAL \F0|U|Add0~39_combout\ : std_logic;
SIGNAL \F0|U|Add0~40_combout\ : std_logic;
SIGNAL \F0|U|Add0~41_combout\ : std_logic;
SIGNAL \F0|U|Add0~42_combout\ : std_logic;
SIGNAL \F0|U|Add0~45_combout\ : std_logic;
SIGNAL \F0|U|Flag~0_combout\ : std_logic;
SIGNAL \S0|reg_fstate~5_combout\ : std_logic;
SIGNAL \S0|fstate.state12~q\ : std_logic;
SIGNAL \S0|WideOr15~1_combout\ : std_logic;
SIGNAL \S0|WideOr1~combout\ : std_logic;
SIGNAL \S0|fstate.state0~q\ : std_logic;
SIGNAL \S0|fstate.state1~0_combout\ : std_logic;
SIGNAL \S0|fstate.state1~q\ : std_logic;
SIGNAL \S0|reg_fstate~6_combout\ : std_logic;
SIGNAL \S0|fstate.state3~q\ : std_logic;
SIGNAL \S0|reg_fstate~1_combout\ : std_logic;
SIGNAL \S0|fstate.state5~q\ : std_logic;
SIGNAL \S0|reg_fstate~0_combout\ : std_logic;
SIGNAL \S0|fstate.state7~q\ : std_logic;
SIGNAL \S0|reg_fstate~4_combout\ : std_logic;
SIGNAL \S0|fstate.state9~q\ : std_logic;
SIGNAL \S0|reg_fstate~2_combout\ : std_logic;
SIGNAL \S0|reg_fstate~3_combout\ : std_logic;
SIGNAL \S0|fstate.state10~q\ : std_logic;
SIGNAL \S0|WideOr9~combout\ : std_logic;
SIGNAL \F0|U|Add0~50_combout\ : std_logic;
SIGNAL \F0|U|Add0~51_combout\ : std_logic;
SIGNAL \F0|U|Add0~52_combout\ : std_logic;
SIGNAL \F0|U|Add0~49_combout\ : std_logic;
SIGNAL \F0|U|Add0~53_combout\ : std_logic;
SIGNAL \F0|U|Add0~54_combout\ : std_logic;
SIGNAL \F0|M1|Mux0~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~62\ : std_logic;
SIGNAL \F0|U|Add0~63_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~6_combout\ : std_logic;
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
SIGNAL \F0|Rg1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg6|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fazDivisaoInteiro|contador\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \S0|ALT_INV_WideOr27~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr23~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr23~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_fstate.state14~q\ : std_logic;

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
\S0|ALT_INV_WideOr27~0_combout\ <= NOT \S0|WideOr27~0_combout\;
\S0|ALT_INV_WideOr23~0_combout\ <= NOT \S0|WideOr23~0_combout\;
\S0|ALT_INV_WideOr23~combout\ <= NOT \S0|WideOr23~combout\;
\S0|ALT_INV_WideOr13~0_combout\ <= NOT \S0|WideOr13~0_combout\;
\S0|ALT_INV_WideOr9~0_combout\ <= NOT \S0|WideOr9~0_combout\;
\S0|ALT_INV_fstate.state14~q\ <= NOT \S0|fstate.state14~q\;
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
	i => \fazDivisaoInteiro|tick~q\,
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
	i => GND,
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
	i => GND,
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
	i => \fazDivisaoInteiro|tick~_Duplicate_1_q\,
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
	i => \fazDivisaoInteiro|tick~_Duplicate_2_q\,
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
	i => \fazDivisaoInteiro|tick~_Duplicate_3_q\,
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
	i => \display0|rascSaida7seg[0]~0_combout\,
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
	i => \display0|rascSaida7seg[1]~1_combout\,
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
	i => \display0|rascSaida7seg[2]~2_combout\,
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
	i => \display0|rascSaida7seg[3]~3_combout\,
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
	i => \display0|rascSaida7seg[4]~4_combout\,
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
	i => \display0|rascSaida7seg[5]~5_combout\,
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
	i => \display0|rascSaida7seg[6]~6_combout\,
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

-- Location: LCCOMB_X98_Y56_N24
\fazDivisaoInteiro|tick~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\ = \fazDivisaoInteiro|tick~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|tick~0_combout\,
	combout => \fazDivisaoInteiro|tick~_Duplicate_4feeder_combout\);

-- Location: FF_X98_Y56_N25
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

-- Location: LCCOMB_X97_Y56_N2
\fazDivisaoInteiro|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~0_combout\ = \fazDivisaoInteiro|contador\(0) $ (VCC)
-- \fazDivisaoInteiro|Add0~1\ = CARRY(\fazDivisaoInteiro|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro|Add0~0_combout\,
	cout => \fazDivisaoInteiro|Add0~1\);

-- Location: LCCOMB_X97_Y56_N14
\fazDivisaoInteiro|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~12_combout\ = (\fazDivisaoInteiro|contador\(6) & (\fazDivisaoInteiro|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro|contador\(6) & (!\fazDivisaoInteiro|Add0~11\ & VCC))
-- \fazDivisaoInteiro|Add0~13\ = CARRY((\fazDivisaoInteiro|contador\(6) & !\fazDivisaoInteiro|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~11\,
	combout => \fazDivisaoInteiro|Add0~12_combout\,
	cout => \fazDivisaoInteiro|Add0~13\);

-- Location: LCCOMB_X97_Y56_N16
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

-- Location: LCCOMB_X98_Y56_N10
\fazDivisaoInteiro|contador[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador[7]~feeder_combout\ = \fazDivisaoInteiro|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro|Add0~14_combout\,
	combout => \fazDivisaoInteiro|contador[7]~feeder_combout\);

-- Location: FF_X98_Y56_N11
\fazDivisaoInteiro|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(7));

-- Location: LCCOMB_X97_Y56_N18
\fazDivisaoInteiro|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~16_combout\ = (\fazDivisaoInteiro|contador\(8) & (\fazDivisaoInteiro|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro|contador\(8) & (!\fazDivisaoInteiro|Add0~15\ & VCC))
-- \fazDivisaoInteiro|Add0~17\ = CARRY((\fazDivisaoInteiro|contador\(8) & !\fazDivisaoInteiro|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~15\,
	combout => \fazDivisaoInteiro|Add0~16_combout\,
	cout => \fazDivisaoInteiro|Add0~17\);

-- Location: LCCOMB_X98_Y56_N26
\fazDivisaoInteiro|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~2_combout\ = (\fazDivisaoInteiro|Add0~16_combout\ & (((!\fazDivisaoInteiro|Equal0~1_combout\) # (!\fazDivisaoInteiro|Equal0~0_combout\)) # (!\fazDivisaoInteiro|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Add0~16_combout\,
	combout => \fazDivisaoInteiro|contador~2_combout\);

-- Location: FF_X98_Y56_N27
\fazDivisaoInteiro|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(8));

-- Location: LCCOMB_X97_Y56_N20
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

-- Location: LCCOMB_X98_Y56_N22
\fazDivisaoInteiro|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~3_combout\ = (\fazDivisaoInteiro|Add0~18_combout\ & (((!\fazDivisaoInteiro|Equal0~1_combout\) # (!\fazDivisaoInteiro|Equal0~0_combout\)) # (!\fazDivisaoInteiro|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Add0~18_combout\,
	combout => \fazDivisaoInteiro|contador~3_combout\);

-- Location: FF_X98_Y56_N23
\fazDivisaoInteiro|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(9));

-- Location: LCCOMB_X97_Y56_N22
\fazDivisaoInteiro|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~20_combout\ = (\fazDivisaoInteiro|contador\(10) & (\fazDivisaoInteiro|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro|contador\(10) & (!\fazDivisaoInteiro|Add0~19\ & VCC))
-- \fazDivisaoInteiro|Add0~21\ = CARRY((\fazDivisaoInteiro|contador\(10) & !\fazDivisaoInteiro|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~19\,
	combout => \fazDivisaoInteiro|Add0~20_combout\,
	cout => \fazDivisaoInteiro|Add0~21\);

-- Location: LCCOMB_X98_Y56_N0
\fazDivisaoInteiro|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~4_combout\ = (\fazDivisaoInteiro|Add0~20_combout\ & (((!\fazDivisaoInteiro|Equal0~1_combout\) # (!\fazDivisaoInteiro|Equal0~0_combout\)) # (!\fazDivisaoInteiro|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Add0~20_combout\,
	combout => \fazDivisaoInteiro|contador~4_combout\);

-- Location: FF_X98_Y56_N1
\fazDivisaoInteiro|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(10));

-- Location: LCCOMB_X97_Y56_N24
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

-- Location: LCCOMB_X98_Y56_N28
\fazDivisaoInteiro|contador[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador[11]~feeder_combout\ = \fazDivisaoInteiro|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro|Add0~22_combout\,
	combout => \fazDivisaoInteiro|contador[11]~feeder_combout\);

-- Location: FF_X98_Y56_N29
\fazDivisaoInteiro|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(11));

-- Location: LCCOMB_X97_Y56_N26
\fazDivisaoInteiro|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~24_combout\ = (\fazDivisaoInteiro|contador\(12) & (\fazDivisaoInteiro|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro|contador\(12) & (!\fazDivisaoInteiro|Add0~23\ & VCC))
-- \fazDivisaoInteiro|Add0~25\ = CARRY((\fazDivisaoInteiro|contador\(12) & !\fazDivisaoInteiro|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~23\,
	combout => \fazDivisaoInteiro|Add0~24_combout\,
	cout => \fazDivisaoInteiro|Add0~25\);

-- Location: LCCOMB_X98_Y56_N16
\fazDivisaoInteiro|contador[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador[12]~feeder_combout\ = \fazDivisaoInteiro|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro|Add0~24_combout\,
	combout => \fazDivisaoInteiro|contador[12]~feeder_combout\);

-- Location: FF_X98_Y56_N17
\fazDivisaoInteiro|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(12));

-- Location: LCCOMB_X97_Y56_N28
\fazDivisaoInteiro|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~26_combout\ = \fazDivisaoInteiro|Add0~25\ $ (\fazDivisaoInteiro|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro|contador\(13),
	cin => \fazDivisaoInteiro|Add0~25\,
	combout => \fazDivisaoInteiro|Add0~26_combout\);

-- Location: LCCOMB_X98_Y56_N8
\fazDivisaoInteiro|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~5_combout\ = (\fazDivisaoInteiro|Add0~26_combout\ & (((!\fazDivisaoInteiro|Equal0~1_combout\) # (!\fazDivisaoInteiro|Equal0~0_combout\)) # (!\fazDivisaoInteiro|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Add0~26_combout\,
	combout => \fazDivisaoInteiro|contador~5_combout\);

-- Location: FF_X98_Y56_N9
\fazDivisaoInteiro|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(13));

-- Location: LCCOMB_X98_Y56_N18
\fazDivisaoInteiro|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~2_combout\ = (\fazDivisaoInteiro|contador\(9) & (!\fazDivisaoInteiro|contador\(11) & (\fazDivisaoInteiro|contador\(8) & \fazDivisaoInteiro|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(9),
	datab => \fazDivisaoInteiro|contador\(11),
	datac => \fazDivisaoInteiro|contador\(8),
	datad => \fazDivisaoInteiro|contador\(10),
	combout => \fazDivisaoInteiro|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y56_N2
\fazDivisaoInteiro|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~3_combout\ = (!\fazDivisaoInteiro|contador\(12) & (\fazDivisaoInteiro|contador\(13) & \fazDivisaoInteiro|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(12),
	datac => \fazDivisaoInteiro|contador\(13),
	datad => \fazDivisaoInteiro|Equal0~2_combout\,
	combout => \fazDivisaoInteiro|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y56_N6
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

-- Location: LCCOMB_X97_Y56_N8
\fazDivisaoInteiro|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~6_combout\ = (\fazDivisaoInteiro|contador\(3) & (!\fazDivisaoInteiro|Add0~5\)) # (!\fazDivisaoInteiro|contador\(3) & ((\fazDivisaoInteiro|Add0~5\) # (GND)))
-- \fazDivisaoInteiro|Add0~7\ = CARRY((!\fazDivisaoInteiro|Add0~5\) # (!\fazDivisaoInteiro|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~5\,
	combout => \fazDivisaoInteiro|Add0~6_combout\,
	cout => \fazDivisaoInteiro|Add0~7\);

-- Location: FF_X97_Y56_N9
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

-- Location: LCCOMB_X97_Y56_N10
\fazDivisaoInteiro|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~8_combout\ = (\fazDivisaoInteiro|contador\(4) & (\fazDivisaoInteiro|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro|contador\(4) & (!\fazDivisaoInteiro|Add0~7\ & VCC))
-- \fazDivisaoInteiro|Add0~9\ = CARRY((\fazDivisaoInteiro|contador\(4) & !\fazDivisaoInteiro|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~7\,
	combout => \fazDivisaoInteiro|Add0~8_combout\,
	cout => \fazDivisaoInteiro|Add0~9\);

-- Location: LCCOMB_X98_Y56_N4
\fazDivisaoInteiro|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~1_combout\ = (\fazDivisaoInteiro|Add0~8_combout\ & (((!\fazDivisaoInteiro|Equal0~1_combout\) # (!\fazDivisaoInteiro|Equal0~0_combout\)) # (!\fazDivisaoInteiro|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~3_combout\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Add0~8_combout\,
	combout => \fazDivisaoInteiro|contador~1_combout\);

-- Location: FF_X98_Y56_N5
\fazDivisaoInteiro|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(4));

-- Location: LCCOMB_X97_Y56_N12
\fazDivisaoInteiro|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Add0~10_combout\ = (\fazDivisaoInteiro|contador\(5) & (!\fazDivisaoInteiro|Add0~9\)) # (!\fazDivisaoInteiro|contador\(5) & ((\fazDivisaoInteiro|Add0~9\) # (GND)))
-- \fazDivisaoInteiro|Add0~11\ = CARRY((!\fazDivisaoInteiro|Add0~9\) # (!\fazDivisaoInteiro|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro|Add0~9\,
	combout => \fazDivisaoInteiro|Add0~10_combout\,
	cout => \fazDivisaoInteiro|Add0~11\);

-- Location: LCCOMB_X98_Y56_N20
\fazDivisaoInteiro|contador[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador[5]~feeder_combout\ = \fazDivisaoInteiro|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro|Add0~10_combout\,
	combout => \fazDivisaoInteiro|contador[5]~feeder_combout\);

-- Location: FF_X98_Y56_N21
\fazDivisaoInteiro|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(5));

-- Location: LCCOMB_X98_Y56_N30
\fazDivisaoInteiro|contador[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador[6]~feeder_combout\ = \fazDivisaoInteiro|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro|Add0~12_combout\,
	combout => \fazDivisaoInteiro|contador[6]~feeder_combout\);

-- Location: FF_X98_Y56_N31
\fazDivisaoInteiro|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(6));

-- Location: LCCOMB_X98_Y56_N14
\fazDivisaoInteiro|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~1_combout\ = (!\fazDivisaoInteiro|contador\(6) & (!\fazDivisaoInteiro|contador\(5) & (\fazDivisaoInteiro|contador\(4) & !\fazDivisaoInteiro|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(6),
	datab => \fazDivisaoInteiro|contador\(5),
	datac => \fazDivisaoInteiro|contador\(4),
	datad => \fazDivisaoInteiro|contador\(7),
	combout => \fazDivisaoInteiro|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y56_N0
\fazDivisaoInteiro|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|contador~0_combout\ = (\fazDivisaoInteiro|Add0~0_combout\ & (((!\fazDivisaoInteiro|Equal0~3_combout\) # (!\fazDivisaoInteiro|Equal0~1_combout\)) # (!\fazDivisaoInteiro|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|Equal0~0_combout\,
	datab => \fazDivisaoInteiro|Add0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Equal0~3_combout\,
	combout => \fazDivisaoInteiro|contador~0_combout\);

-- Location: FF_X97_Y56_N1
\fazDivisaoInteiro|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro|contador\(0));

-- Location: LCCOMB_X97_Y56_N4
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

-- Location: FF_X97_Y56_N5
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

-- Location: FF_X97_Y56_N7
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

-- Location: LCCOMB_X97_Y56_N30
\fazDivisaoInteiro|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|Equal0~0_combout\ = (!\fazDivisaoInteiro|contador\(2) & (!\fazDivisaoInteiro|contador\(1) & (!\fazDivisaoInteiro|contador\(3) & !\fazDivisaoInteiro|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|contador\(2),
	datab => \fazDivisaoInteiro|contador\(1),
	datac => \fazDivisaoInteiro|contador\(3),
	datad => \fazDivisaoInteiro|contador\(0),
	combout => \fazDivisaoInteiro|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y56_N6
\fazDivisaoInteiro|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro|tick~0_combout\ = \fazDivisaoInteiro|tick~_Duplicate_4_q\ $ (((\fazDivisaoInteiro|Equal0~0_combout\ & (\fazDivisaoInteiro|Equal0~1_combout\ & \fazDivisaoInteiro|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro|tick~_Duplicate_4_q\,
	datab => \fazDivisaoInteiro|Equal0~0_combout\,
	datac => \fazDivisaoInteiro|Equal0~1_combout\,
	datad => \fazDivisaoInteiro|Equal0~3_combout\,
	combout => \fazDivisaoInteiro|tick~0_combout\);

-- Location: DDIOOUTCELL_X69_Y73_N25
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

-- Location: DDIOOUTCELL_X115_Y50_N4
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

-- Location: DDIOOUTCELL_X115_Y54_N18
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

-- Location: DDIOOUTCELL_X115_Y67_N18
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X74_Y3_N6
\F0|U|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~34_combout\ = (\S0|WideOr9~combout\ & !\S0|WideOr15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~combout\,
	datad => \S0|WideOr15~1_combout\,
	combout => \F0|U|Add0~34_combout\);

-- Location: LCCOMB_X74_Y3_N10
\S0|reg_fstate~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~7_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state12~q\,
	combout => \S0|reg_fstate~7_combout\);

-- Location: FF_X74_Y3_N11
\S0|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state14~q\);

-- Location: FF_X75_Y3_N25
\F0|Rg6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_fstate.state14~q\,
	ena => \S0|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(3));

-- Location: LCCOMB_X74_Y3_N30
\S0|reg_fstate~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~10_combout\ = (\S0|fstate.state3~q\ & !\F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state3~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~10_combout\);

-- Location: FF_X74_Y3_N31
\S0|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state4~q\);

-- Location: LCCOMB_X74_Y3_N28
\S0|reg_fstate~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~9_combout\ = (\S0|fstate.state7~q\ & !\F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state7~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~9_combout\);

-- Location: FF_X74_Y3_N29
\S0|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state8~q\);

-- Location: LCCOMB_X72_Y3_N6
\S0|WideOr13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~1_combout\ = (!\S0|fstate.state12~q\ & (!\S0|fstate.state7~q\ & !\S0|fstate.state3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state12~q\,
	datac => \S0|fstate.state7~q\,
	datad => \S0|fstate.state3~q\,
	combout => \S0|WideOr13~1_combout\);

-- Location: LCCOMB_X73_Y3_N6
\S0|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~combout\ = (\S0|fstate.state4~q\) # ((\S0|fstate.state8~q\) # ((\S0|WideOr13~0_combout\) # (!\S0|WideOr13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state4~q\,
	datab => \S0|fstate.state8~q\,
	datac => \S0|WideOr13~1_combout\,
	datad => \S0|WideOr13~0_combout\,
	combout => \S0|WideOr13~combout\);

-- Location: LCCOMB_X72_Y3_N28
\S0|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr15~0_combout\ = (!\S0|fstate.state5~q\ & (!\S0|fstate.state1~q\ & (!\S0|fstate.state7~q\ & !\S0|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state5~q\,
	datab => \S0|fstate.state1~q\,
	datac => \S0|fstate.state7~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr15~0_combout\);

-- Location: LCCOMB_X75_Y3_N26
\F0|U|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~28_combout\ = (!\S0|fstate.state9~q\ & (!\S0|fstate.state3~q\ & (!\S0|fstate.state12~q\ & \S0|WideOr15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state9~q\,
	datab => \S0|fstate.state3~q\,
	datac => \S0|fstate.state12~q\,
	datad => \S0|WideOr15~0_combout\,
	combout => \F0|U|Add0~28_combout\);

-- Location: FF_X75_Y3_N11
\F0|Rg5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~61_combout\,
	clrn => \S0|ALT_INV_WideOr13~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(2));

-- Location: FF_X75_Y3_N17
\F0|Rg5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_WideOr13~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(3));

-- Location: FF_X75_Y3_N1
\F0|Rg5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_WideOr13~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(0));

-- Location: FF_X75_Y3_N5
\F0|Rg6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~47_combout\,
	clrn => \S0|ALT_INV_fstate.state14~q\,
	sload => VCC,
	ena => \S0|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(1));

-- Location: LCCOMB_X73_Y3_N0
\F0|U|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~27_combout\ = (\S0|WideOr15~1_combout\ & \S0|WideOr9~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|WideOr15~1_combout\,
	datac => \S0|WideOr9~combout\,
	combout => \F0|U|Add0~27_combout\);

-- Location: LCCOMB_X76_Y3_N22
\F0|U|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~30_combout\ = (\F0|U|Add0~27_combout\ & ((\F0|U|Add0~29_combout\ & (\F0|Rg6|DOUT\(1))) # (!\F0|U|Add0~29_combout\ & ((\F0|Rg5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|U|Add0~29_combout\,
	datad => \F0|U|Add0~27_combout\,
	combout => \F0|U|Add0~30_combout\);

-- Location: FF_X76_Y3_N13
\F0|Rg4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~47_combout\,
	clrn => \S0|ALT_INV_WideOr9~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(1));

-- Location: LCCOMB_X74_Y3_N12
\S0|reg_fstate~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~11_combout\ = (\S0|fstate.state5~q\ & !\F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state5~q\,
	datac => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~11_combout\);

-- Location: FF_X74_Y3_N13
\S0|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state6~q\);

-- Location: LCCOMB_X74_Y3_N8
\S0|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr23~0_combout\ = (\S0|fstate.state6~q\) # ((\S0|fstate.state8~q\) # (\S0|WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state6~q\,
	datab => \S0|fstate.state8~q\,
	datad => \S0|WideOr9~0_combout\,
	combout => \S0|WideOr23~0_combout\);

-- Location: FF_X74_Y3_N25
\F0|Rg2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~47_combout\,
	clrn => \S0|ALT_INV_WideOr23~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(1));

-- Location: LCCOMB_X73_Y3_N8
\F0|Rg3|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg3|DOUT[1]~feeder_combout\ = \F0|U|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Add0~47_combout\,
	combout => \F0|Rg3|DOUT[1]~feeder_combout\);

-- Location: LCCOMB_X74_Y3_N4
\S0|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr27~0_combout\ = (\S0|fstate.state14~q\) # ((\S0|fstate.state13~q\) # ((\S0|fstate.state11~q\) # (\S0|fstate.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state14~q\,
	datab => \S0|fstate.state13~q\,
	datac => \S0|fstate.state11~q\,
	datad => \S0|fstate.state8~q\,
	combout => \S0|WideOr27~0_combout\);

-- Location: FF_X73_Y3_N9
\F0|Rg3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|Rg3|DOUT[1]~feeder_combout\,
	clrn => \S0|ALT_INV_WideOr27~0_combout\,
	ena => \S0|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(1));

-- Location: LCCOMB_X73_Y3_N20
\S0|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr11~combout\ = (\S0|fstate.state5~q\) # ((\S0|fstate.state6~q\) # ((\S0|fstate.state7~q\) # (\S0|fstate.state8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state5~q\,
	datab => \S0|fstate.state6~q\,
	datac => \S0|fstate.state7~q\,
	datad => \S0|fstate.state8~q\,
	combout => \S0|WideOr11~combout\);

-- Location: LCCOMB_X73_Y3_N28
\S0|WideOr23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr23~combout\ = (\S0|fstate.state4~q\) # ((\S0|fstate.state8~q\) # ((\S0|fstate.state6~q\) # (\S0|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state4~q\,
	datab => \S0|fstate.state8~q\,
	datac => \S0|fstate.state6~q\,
	datad => \S0|WideOr9~0_combout\,
	combout => \S0|WideOr23~combout\);

-- Location: LCCOMB_X74_Y3_N22
\S0|reg_fstate~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~12_combout\ = (!\F0|U|Flag~0_combout\ & \S0|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state1~q\,
	combout => \S0|reg_fstate~12_combout\);

-- Location: FF_X74_Y3_N23
\S0|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state2~q\);

-- Location: FF_X73_Y3_N25
\F0|Rg1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~47_combout\,
	clrn => \S0|ALT_INV_WideOr23~combout\,
	sload => VCC,
	ena => \S0|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(1));

-- Location: LCCOMB_X73_Y3_N24
\F0|U|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~31_combout\ = (\S0|WideOr11~combout\ & ((\F0|Rg3|DOUT\(1)) # ((\S0|WideOr13~combout\)))) # (!\S0|WideOr11~combout\ & (((\F0|Rg1|DOUT\(1) & !\S0|WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg1|DOUT\(1),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~31_combout\);

-- Location: LCCOMB_X74_Y3_N24
\F0|U|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~32_combout\ = (\S0|WideOr13~combout\ & ((\F0|U|Add0~31_combout\ & (\F0|Rg4|DOUT\(1))) # (!\F0|U|Add0~31_combout\ & ((\F0|Rg2|DOUT\(1)))))) # (!\S0|WideOr13~combout\ & (((\F0|U|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(1),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg2|DOUT\(1),
	datad => \F0|U|Add0~31_combout\,
	combout => \F0|U|Add0~32_combout\);

-- Location: LCCOMB_X75_Y3_N6
\F0|U|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~33_combout\ = (!\S0|WideOr9~combout\ & (\F0|U|Add0~29_combout\ $ (!\F0|U|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~combout\,
	datab => \F0|U|Add0~29_combout\,
	datad => \F0|U|Add0~32_combout\,
	combout => \F0|U|Add0~33_combout\);

-- Location: LCCOMB_X76_Y3_N4
\F0|U|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~35_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(1))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg5|DOUT\(1),
	datac => \S0|WideOr11~combout\,
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~35_combout\);

-- Location: LCCOMB_X75_Y3_N30
\F0|U|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~36_combout\ = (\F0|U|Add0~30_combout\) # ((\F0|U|Add0~33_combout\) # ((\F0|U|Add0~34_combout\ & \F0|U|Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~34_combout\,
	datab => \F0|U|Add0~30_combout\,
	datac => \F0|U|Add0~33_combout\,
	datad => \F0|U|Add0~35_combout\,
	combout => \F0|U|Add0~36_combout\);

-- Location: LCCOMB_X72_Y3_N26
\F0|M1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux2~0_combout\ = (\S0|WideOr15~0_combout\ & (!\S0|fstate.state3~q\ & ((\S0|fstate.state12~q\) # (\S0|fstate.state9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr15~0_combout\,
	datab => \S0|fstate.state3~q\,
	datac => \S0|fstate.state12~q\,
	datad => \S0|fstate.state9~q\,
	combout => \F0|M1|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y3_N16
\F0|M1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux1~0_combout\ = (!\S0|fstate.state12~q\ & (!\S0|fstate.state9~q\ & ((\S0|fstate.state3~q\) # (!\S0|WideOr15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state12~q\,
	datab => \S0|fstate.state9~q\,
	datac => \S0|fstate.state3~q\,
	datad => \S0|WideOr15~0_combout\,
	combout => \F0|M1|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y3_N4
\F0|M1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux3~3_combout\ = (\F0|M1|Mux1~0_combout\) # ((\S0|WideOr13~1_combout\ & \S0|fstate.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~1_combout\,
	datab => \F0|M1|Mux1~0_combout\,
	datad => \S0|fstate.state0~q\,
	combout => \F0|M1|Mux3~3_combout\);

-- Location: LCCOMB_X75_Y3_N16
\F0|U|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~44_cout\ = CARRY(!\S0|WideOr15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr15~1_combout\,
	datad => VCC,
	cout => \F0|U|Add0~44_cout\);

-- Location: LCCOMB_X75_Y3_N18
\F0|U|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~45_combout\ = (\F0|U|Add0~42_combout\ & ((\F0|M1|Mux3~3_combout\ & (\F0|U|Add0~44_cout\ & VCC)) # (!\F0|M1|Mux3~3_combout\ & (!\F0|U|Add0~44_cout\)))) # (!\F0|U|Add0~42_combout\ & ((\F0|M1|Mux3~3_combout\ & (!\F0|U|Add0~44_cout\)) # 
-- (!\F0|M1|Mux3~3_combout\ & ((\F0|U|Add0~44_cout\) # (GND)))))
-- \F0|U|Add0~46\ = CARRY((\F0|U|Add0~42_combout\ & (!\F0|M1|Mux3~3_combout\ & !\F0|U|Add0~44_cout\)) # (!\F0|U|Add0~42_combout\ & ((!\F0|U|Add0~44_cout\) # (!\F0|M1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~42_combout\,
	datab => \F0|M1|Mux3~3_combout\,
	datad => VCC,
	cin => \F0|U|Add0~44_cout\,
	combout => \F0|U|Add0~45_combout\,
	cout => \F0|U|Add0~46\);

-- Location: LCCOMB_X75_Y3_N20
\F0|U|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~47_combout\ = ((\F0|U|Add0~36_combout\ $ (\F0|M1|Mux2~0_combout\ $ (!\F0|U|Add0~46\)))) # (GND)
-- \F0|U|Add0~48\ = CARRY((\F0|U|Add0~36_combout\ & ((\F0|M1|Mux2~0_combout\) # (!\F0|U|Add0~46\))) # (!\F0|U|Add0~36_combout\ & (\F0|M1|Mux2~0_combout\ & !\F0|U|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~36_combout\,
	datab => \F0|M1|Mux2~0_combout\,
	datad => VCC,
	cin => \F0|U|Add0~46\,
	combout => \F0|U|Add0~47_combout\,
	cout => \F0|U|Add0~48\);

-- Location: FF_X76_Y3_N19
\F0|Rg5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~47_combout\,
	clrn => \S0|ALT_INV_WideOr13~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(1));

-- Location: LCCOMB_X77_Y3_N16
\S0|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~1_combout\ = (\F0|Rg5|DOUT\(2)) # (((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(0))) # (!\F0|Rg5|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(2),
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(1),
	combout => \S0|Selector0~1_combout\);

-- Location: LCCOMB_X75_Y3_N2
\S0|flag4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|flag4~combout\ = (\S0|fstate.state9~q\ & ((\F0|U|Flag~0_combout\))) # (!\S0|fstate.state9~q\ & (\S0|flag4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|flag4~combout\,
	datac => \S0|fstate.state9~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|flag4~combout\);

-- Location: LCCOMB_X73_Y3_N12
\S0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~0_combout\ = (\S0|fstate.state12~q\ & !\F0|U|Flag~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state12~q\,
	datad => \F0|U|Flag~1_combout\,
	combout => \S0|Selector0~0_combout\);

-- Location: LCCOMB_X73_Y3_N30
\S0|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~2_combout\ = (\S0|fstate.state10~q\ & ((\S0|Selector0~1_combout\) # ((\S0|flag4~combout\ & \S0|Selector0~0_combout\)))) # (!\S0|fstate.state10~q\ & (((\S0|flag4~combout\ & \S0|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state10~q\,
	datab => \S0|Selector0~1_combout\,
	datac => \S0|flag4~combout\,
	datad => \S0|Selector0~0_combout\,
	combout => \S0|Selector0~2_combout\);

-- Location: FF_X74_Y3_N5
\S0|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|Selector0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state11~q\);

-- Location: LCCOMB_X74_Y3_N2
\S0|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~0_combout\ = (\S0|fstate.state11~q\) # ((\S0|fstate.state13~q\) # (\S0|fstate.state14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state11~q\,
	datac => \S0|fstate.state13~q\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|WideOr9~0_combout\);

-- Location: LCCOMB_X75_Y3_N8
\F0|U|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~29_combout\ = (\F0|U|Add0~28_combout\ & ((\S0|WideOr13~combout\) # ((!\S0|fstate.state10~q\ & !\S0|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~combout\,
	datab => \S0|fstate.state10~q\,
	datac => \F0|U|Add0~28_combout\,
	datad => \S0|WideOr9~0_combout\,
	combout => \F0|U|Add0~29_combout\);

-- Location: LCCOMB_X76_Y3_N24
\F0|Rg4|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg4|DOUT[2]~feeder_combout\ = \F0|U|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Add0~61_combout\,
	combout => \F0|Rg4|DOUT[2]~feeder_combout\);

-- Location: FF_X76_Y3_N25
\F0|Rg4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \F0|Rg4|DOUT[2]~feeder_combout\,
	clrn => \S0|ALT_INV_WideOr9~0_combout\,
	ena => \S0|fstate.state8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(2));

-- Location: FF_X74_Y3_N15
\F0|Rg2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~61_combout\,
	clrn => \S0|ALT_INV_WideOr23~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(2));

-- Location: FF_X73_Y3_N23
\F0|Rg1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~61_combout\,
	clrn => \S0|ALT_INV_WideOr23~combout\,
	sload => VCC,
	ena => \S0|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(2));

-- Location: FF_X73_Y3_N11
\F0|Rg3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~61_combout\,
	clrn => \S0|ALT_INV_WideOr27~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(2));

-- Location: LCCOMB_X73_Y3_N10
\F0|U|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~56_combout\ = (\S0|WideOr11~combout\ & (((\S0|WideOr13~combout\) # (!\F0|Rg3|DOUT\(2))))) # (!\S0|WideOr11~combout\ & (!\F0|Rg1|DOUT\(2) & ((!\S0|WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(2),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg3|DOUT\(2),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~56_combout\);

-- Location: LCCOMB_X74_Y3_N14
\F0|U|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~57_combout\ = (\S0|WideOr13~combout\ & ((\F0|U|Add0~56_combout\ & (!\F0|Rg4|DOUT\(2))) # (!\F0|U|Add0~56_combout\ & ((!\F0|Rg2|DOUT\(2)))))) # (!\S0|WideOr13~combout\ & (((\F0|U|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg2|DOUT\(2),
	datad => \F0|U|Add0~56_combout\,
	combout => \F0|U|Add0~57_combout\);

-- Location: LCCOMB_X75_Y3_N4
\F0|U|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~58_combout\ = (!\S0|WideOr9~combout\ & (\F0|U|Add0~29_combout\ $ (\F0|U|Add0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~combout\,
	datab => \F0|U|Add0~29_combout\,
	datad => \F0|U|Add0~57_combout\,
	combout => \F0|U|Add0~58_combout\);

-- Location: LCCOMB_X74_Y3_N26
\F0|U|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~59_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(2))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg5|DOUT\(2),
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~59_combout\);

-- Location: LCCOMB_X74_Y3_N16
\F0|U|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~55_combout\ = (\F0|U|Add0~27_combout\ & ((\F0|U|Add0~29_combout\ & ((\F0|Rg6|DOUT\(2)))) # (!\F0|U|Add0~29_combout\ & (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~29_combout\,
	datab => \F0|Rg5|DOUT\(2),
	datac => \F0|U|Add0~27_combout\,
	datad => \F0|Rg6|DOUT\(2),
	combout => \F0|U|Add0~55_combout\);

-- Location: LCCOMB_X75_Y3_N12
\F0|U|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~60_combout\ = (\F0|U|Add0~58_combout\) # ((\F0|U|Add0~55_combout\) # ((\F0|U|Add0~34_combout\ & \F0|U|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~34_combout\,
	datab => \F0|U|Add0~58_combout\,
	datac => \F0|U|Add0~59_combout\,
	datad => \F0|U|Add0~55_combout\,
	combout => \F0|U|Add0~60_combout\);

-- Location: LCCOMB_X72_Y3_N24
\F0|M1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux1~1_combout\ = (\F0|M1|Mux1~0_combout\ & ((!\S0|fstate.state0~q\) # (!\S0|WideOr13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~1_combout\,
	datac => \F0|M1|Mux1~0_combout\,
	datad => \S0|fstate.state0~q\,
	combout => \F0|M1|Mux1~1_combout\);

-- Location: LCCOMB_X75_Y3_N22
\F0|U|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~61_combout\ = (\F0|U|Add0~60_combout\ & ((\F0|M1|Mux1~1_combout\ & (\F0|U|Add0~48\ & VCC)) # (!\F0|M1|Mux1~1_combout\ & (!\F0|U|Add0~48\)))) # (!\F0|U|Add0~60_combout\ & ((\F0|M1|Mux1~1_combout\ & (!\F0|U|Add0~48\)) # (!\F0|M1|Mux1~1_combout\ & 
-- ((\F0|U|Add0~48\) # (GND)))))
-- \F0|U|Add0~62\ = CARRY((\F0|U|Add0~60_combout\ & (!\F0|M1|Mux1~1_combout\ & !\F0|U|Add0~48\)) # (!\F0|U|Add0~60_combout\ & ((!\F0|U|Add0~48\) # (!\F0|M1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~60_combout\,
	datab => \F0|M1|Mux1~1_combout\,
	datad => VCC,
	cin => \F0|U|Add0~48\,
	combout => \F0|U|Add0~61_combout\,
	cout => \F0|U|Add0~62\);

-- Location: FF_X75_Y3_N29
\F0|Rg6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~61_combout\,
	clrn => \S0|ALT_INV_fstate.state14~q\,
	sload => VCC,
	ena => \S0|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(2));

-- Location: LCCOMB_X70_Y3_N30
\F0|U|Flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Flag~1_combout\ = (!\F0|Rg6|DOUT\(3) & (!\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(2) & \F0|Rg6|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(3),
	datab => \F0|Rg6|DOUT\(0),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(1),
	combout => \F0|U|Flag~1_combout\);

-- Location: LCCOMB_X73_Y3_N18
\S0|reg_fstate~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~8_combout\ = (!\F0|U|Flag~1_combout\ & (!\S0|flag4~combout\ & \S0|fstate.state12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Flag~1_combout\,
	datab => \S0|flag4~combout\,
	datad => \S0|fstate.state12~q\,
	combout => \S0|reg_fstate~8_combout\);

-- Location: FF_X74_Y3_N9
\S0|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \S0|reg_fstate~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state13~q\);

-- Location: LCCOMB_X74_Y3_N18
\S0|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~0_combout\ = (\S0|fstate.state13~q\) # (\S0|fstate.state14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state13~q\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|WideOr13~0_combout\);

-- Location: FF_X75_Y3_N7
\F0|Rg6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_fstate.state14~q\,
	sload => VCC,
	ena => \S0|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(0));

-- Location: LCCOMB_X75_Y3_N0
\F0|U|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~37_combout\ = (\F0|U|Add0~27_combout\ & ((\F0|U|Add0~29_combout\ & (\F0|Rg6|DOUT\(0))) # (!\F0|U|Add0~29_combout\ & ((\F0|Rg5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(0),
	datab => \F0|U|Add0~29_combout\,
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|U|Add0~27_combout\,
	combout => \F0|U|Add0~37_combout\);

-- Location: FF_X72_Y3_N3
\F0|Rg4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_WideOr9~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(0));

-- Location: FF_X73_Y3_N17
\F0|Rg3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_WideOr27~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(0));

-- Location: FF_X74_Y3_N21
\F0|Rg2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_WideOr23~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(0));

-- Location: FF_X73_Y3_N13
\F0|Rg1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~45_combout\,
	clrn => \S0|ALT_INV_WideOr23~combout\,
	sload => VCC,
	ena => \S0|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(0));

-- Location: LCCOMB_X73_Y3_N2
\F0|U|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~38_combout\ = (\S0|WideOr11~combout\ & (((\S0|WideOr13~combout\)))) # (!\S0|WideOr11~combout\ & ((\S0|WideOr13~combout\ & (!\F0|Rg2|DOUT\(0))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(0),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg1|DOUT\(0),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~38_combout\);

-- Location: LCCOMB_X73_Y3_N16
\F0|U|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~39_combout\ = (\S0|WideOr11~combout\ & ((\F0|U|Add0~38_combout\ & (!\F0|Rg4|DOUT\(0))) # (!\F0|U|Add0~38_combout\ & ((!\F0|Rg3|DOUT\(0)))))) # (!\S0|WideOr11~combout\ & (((\F0|U|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg3|DOUT\(0),
	datad => \F0|U|Add0~38_combout\,
	combout => \F0|U|Add0~39_combout\);

-- Location: LCCOMB_X75_Y3_N10
\F0|U|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~40_combout\ = (!\S0|WideOr9~combout\ & (\F0|U|Add0~29_combout\ $ (\F0|U|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~combout\,
	datab => \F0|U|Add0~29_combout\,
	datad => \F0|U|Add0~39_combout\,
	combout => \F0|U|Add0~40_combout\);

-- Location: LCCOMB_X74_Y3_N0
\F0|U|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~41_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(0))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(0),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg5|DOUT\(0),
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~41_combout\);

-- Location: LCCOMB_X75_Y3_N14
\F0|U|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~42_combout\ = (\F0|U|Add0~37_combout\) # ((\F0|U|Add0~40_combout\) # ((\F0|U|Add0~34_combout\ & \F0|U|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~34_combout\,
	datab => \F0|U|Add0~37_combout\,
	datac => \F0|U|Add0~40_combout\,
	datad => \F0|U|Add0~41_combout\,
	combout => \F0|U|Add0~42_combout\);

-- Location: LCCOMB_X75_Y3_N28
\F0|U|Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Flag~0_combout\ = (!\F0|U|Add0~45_combout\ & (!\F0|U|Add0~47_combout\ & (!\F0|U|Add0~61_combout\ & !\F0|U|Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~45_combout\,
	datab => \F0|U|Add0~47_combout\,
	datac => \F0|U|Add0~61_combout\,
	datad => \F0|U|Add0~63_combout\,
	combout => \F0|U|Flag~0_combout\);

-- Location: LCCOMB_X72_Y3_N30
\S0|reg_fstate~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~5_combout\ = (\F0|U|Flag~0_combout\ & ((\S0|fstate.state10~q\) # (\S0|fstate.state9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state10~q\,
	datac => \S0|fstate.state9~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~5_combout\);

-- Location: FF_X72_Y3_N31
\S0|fstate.state12\ : dffeas
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
	q => \S0|fstate.state12~q\);

-- Location: LCCOMB_X73_Y3_N4
\S0|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr15~1_combout\ = (!\S0|fstate.state3~q\ & (!\S0|fstate.state12~q\ & (!\S0|fstate.state9~q\ & \S0|WideOr15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state3~q\,
	datab => \S0|fstate.state12~q\,
	datac => \S0|fstate.state9~q\,
	datad => \S0|WideOr15~0_combout\,
	combout => \S0|WideOr15~1_combout\);

-- Location: LCCOMB_X72_Y3_N0
\S0|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr1~combout\ = (!\S0|fstate.state0~q\) # (!\S0|WideOr15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|WideOr15~1_combout\,
	datac => \S0|fstate.state0~q\,
	combout => \S0|WideOr1~combout\);

-- Location: FF_X72_Y3_N1
\S0|fstate.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state0~q\);

-- Location: LCCOMB_X72_Y3_N14
\S0|fstate.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|fstate.state1~0_combout\ = !\S0|fstate.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S0|fstate.state0~q\,
	combout => \S0|fstate.state1~0_combout\);

-- Location: FF_X72_Y3_N15
\S0|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state1~q\);

-- Location: LCCOMB_X72_Y3_N18
\S0|reg_fstate~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~6_combout\ = (\S0|fstate.state1~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0|fstate.state1~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~6_combout\);

-- Location: FF_X72_Y3_N19
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

-- Location: LCCOMB_X72_Y3_N12
\S0|reg_fstate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~1_combout\ = (\S0|fstate.state3~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|fstate.state3~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~1_combout\);

-- Location: FF_X72_Y3_N13
\S0|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	d => \S0|reg_fstate~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state5~q\);

-- Location: LCCOMB_X72_Y3_N8
\S0|reg_fstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~0_combout\ = (\S0|fstate.state5~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0|fstate.state5~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~0_combout\);

-- Location: FF_X72_Y3_N9
\S0|fstate.state7\ : dffeas
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
	q => \S0|fstate.state7~q\);

-- Location: LCCOMB_X72_Y3_N20
\S0|reg_fstate~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~4_combout\ = (\S0|fstate.state7~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0|fstate.state7~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~4_combout\);

-- Location: FF_X72_Y3_N21
\S0|fstate.state9\ : dffeas
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
	q => \S0|fstate.state9~q\);

-- Location: LCCOMB_X72_Y3_N22
\S0|reg_fstate~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~2_combout\ = (!\F0|U|Add0~45_combout\ & !\F0|U|Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Add0~45_combout\,
	datad => \F0|U|Add0~47_combout\,
	combout => \S0|reg_fstate~2_combout\);

-- Location: LCCOMB_X72_Y3_N10
\S0|reg_fstate~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~3_combout\ = (\S0|fstate.state9~q\ & ((\F0|U|Add0~63_combout\) # ((\F0|U|Add0~61_combout\) # (!\S0|reg_fstate~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state9~q\,
	datab => \F0|U|Add0~63_combout\,
	datac => \S0|reg_fstate~2_combout\,
	datad => \F0|U|Add0~61_combout\,
	combout => \S0|reg_fstate~3_combout\);

-- Location: FF_X72_Y3_N11
\S0|fstate.state10\ : dffeas
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
	q => \S0|fstate.state10~q\);

-- Location: LCCOMB_X73_Y3_N14
\S0|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~combout\ = (\S0|fstate.state10~q\) # ((\S0|fstate.state12~q\) # ((\S0|fstate.state9~q\) # (\S0|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state10~q\,
	datab => \S0|fstate.state12~q\,
	datac => \S0|fstate.state9~q\,
	datad => \S0|WideOr9~0_combout\,
	combout => \S0|WideOr9~combout\);

-- Location: FF_X73_Y3_N19
\F0|Rg3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_WideOr27~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(3));

-- Location: FF_X76_Y3_N3
\F0|Rg4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_WideOr9~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(3));

-- Location: FF_X74_Y3_N19
\F0|Rg2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_WideOr23~0_combout\,
	sload => VCC,
	ena => \S0|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(3));

-- Location: LCCOMB_X73_Y3_N26
\F0|U|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~50_combout\ = (\S0|WideOr11~combout\ & (((\S0|WideOr13~combout\)))) # (!\S0|WideOr11~combout\ & ((\S0|WideOr13~combout\ & (!\F0|Rg2|DOUT\(3))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg1|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg1|DOUT\(3),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~50_combout\);

-- Location: LCCOMB_X76_Y3_N2
\F0|U|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~51_combout\ = (\S0|WideOr11~combout\ & ((\F0|U|Add0~50_combout\ & ((!\F0|Rg4|DOUT\(3)))) # (!\F0|U|Add0~50_combout\ & (!\F0|Rg3|DOUT\(3))))) # (!\S0|WideOr11~combout\ & (((\F0|U|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr11~combout\,
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg4|DOUT\(3),
	datad => \F0|U|Add0~50_combout\,
	combout => \F0|U|Add0~51_combout\);

-- Location: LCCOMB_X76_Y3_N12
\F0|U|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~52_combout\ = (!\S0|WideOr9~combout\ & (\F0|U|Add0~29_combout\ $ (\F0|U|Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~combout\,
	datab => \F0|U|Add0~29_combout\,
	datad => \F0|U|Add0~51_combout\,
	combout => \F0|U|Add0~52_combout\);

-- Location: LCCOMB_X76_Y3_N6
\F0|U|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~49_combout\ = (\F0|U|Add0~27_combout\ & ((\F0|U|Add0~29_combout\ & ((\F0|Rg6|DOUT\(3)))) # (!\F0|U|Add0~29_combout\ & (\F0|Rg5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~27_combout\,
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|U|Add0~29_combout\,
	datad => \F0|Rg6|DOUT\(3),
	combout => \F0|U|Add0~49_combout\);

-- Location: LCCOMB_X76_Y3_N20
\F0|U|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~53_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & ((!\F0|Rg6|DOUT\(3)))) # (!\S0|WideOr13~combout\ & (!\F0|Rg5|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr11~combout\,
	datab => \F0|Rg5|DOUT\(3),
	datac => \F0|Rg6|DOUT\(3),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~53_combout\);

-- Location: LCCOMB_X76_Y3_N26
\F0|U|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~54_combout\ = (\F0|U|Add0~52_combout\) # ((\F0|U|Add0~49_combout\) # ((\F0|U|Add0~34_combout\ & \F0|U|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~52_combout\,
	datab => \F0|U|Add0~34_combout\,
	datac => \F0|U|Add0~49_combout\,
	datad => \F0|U|Add0~53_combout\,
	combout => \F0|U|Add0~54_combout\);

-- Location: LCCOMB_X72_Y3_N2
\F0|M1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux0~0_combout\ = (\S0|WideOr13~1_combout\ & (\S0|fstate.state0~q\ & \F0|M1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~1_combout\,
	datab => \S0|fstate.state0~q\,
	datad => \F0|M1|Mux1~0_combout\,
	combout => \F0|M1|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y3_N24
\F0|U|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~63_combout\ = \F0|U|Add0~54_combout\ $ (\F0|U|Add0~62\ $ (!\F0|M1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Add0~54_combout\,
	datad => \F0|M1|Mux0~0_combout\,
	cin => \F0|U|Add0~62\,
	combout => \F0|U|Add0~63_combout\);

-- Location: FF_X73_Y3_N27
\F0|Rg1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fazDivisaoInteiro|tick~clkctrl_outclk\,
	asdata => \F0|U|Add0~63_combout\,
	clrn => \S0|ALT_INV_WideOr23~combout\,
	sload => VCC,
	ena => \S0|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(3));

-- Location: LCCOMB_X114_Y17_N4
\display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(1) $ (\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(3) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(0) $ (\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\display0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = (\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0) $ (((\F0|Rg1|DOUT\(3)) # (\F0|Rg1|DOUT\(1)))))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) & \F0|Rg1|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y17_N0
\display0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~2_combout\ = (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(2) & ((\F0|Rg1|DOUT\(1)) # (!\F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(3) & (!\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(1) & !\F0|Rg1|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y17_N26
\display0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = (\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(0) & ((\F0|Rg1|DOUT\(2)))) # (!\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) & !\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) $ (\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y17_N12
\display0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = (\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0)))) # (!\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(2) & (!\F0|Rg1|DOUT\(3))) # (!\F0|Rg1|DOUT\(2) & ((\F0|Rg1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y17_N22
\display0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) $ (((\F0|Rg1|DOUT\(1)) # (!\F0|Rg1|DOUT\(2)))))) # (!\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(1) & !\F0|Rg1|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y17_N8
\display0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = (\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(1) $ (!\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(3) $ (!\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(3),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(1),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X76_Y3_N0
\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(3) $ (!\F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(1) $ (!\F0|Rg2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X74_Y3_N20
\display1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) $ (((\F0|Rg2|DOUT\(3)) # (\F0|Rg2|DOUT\(1)))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(0) & \F0|Rg2|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(2),
	datac => \F0|Rg2|DOUT\(0),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X76_Y3_N30
\display1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(3) & ((\F0|Rg2|DOUT\(1)) # (!\F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & !\F0|Rg2|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X76_Y3_N28
\display1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(2) & ((\F0|Rg2|DOUT\(0)))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(3) & !\F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(2) $ (\F0|Rg2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y3_N14
\display1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = (\F0|Rg2|DOUT\(1) & (((!\F0|Rg2|DOUT\(3) & \F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(3))) # (!\F0|Rg2|DOUT\(2) & ((\F0|Rg2|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X76_Y3_N8
\display1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(1) $ (\F0|Rg2|DOUT\(3))))) # (!\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(3) & ((\F0|Rg2|DOUT\(1)) # (\F0|Rg2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X76_Y3_N10
\display1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = (\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(1))))) # (!\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X79_Y3_N8
\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(0) $ (!\F0|Rg3|DOUT\(3))))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(3) $ (!\F0|Rg3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X79_Y3_N6
\display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) $ (((\F0|Rg3|DOUT\(3)) # (\F0|Rg3|DOUT\(1)))))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(3) & \F0|Rg3|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X79_Y3_N4
\display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(3) & ((\F0|Rg3|DOUT\(1)) # (!\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(3) & \F0|Rg3|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X79_Y3_N10
\display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0))) # (!\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(0) & \F0|Rg3|DOUT\(3))))) # (!\F0|Rg3|DOUT\(1) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) $ (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X79_Y3_N28
\display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (\F0|Rg3|DOUT\(1) & (((\F0|Rg3|DOUT\(0) & !\F0|Rg3|DOUT\(3))))) # (!\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & ((!\F0|Rg3|DOUT\(3)))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X79_Y3_N14
\display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(3) $ (\F0|Rg3|DOUT\(1))))) # (!\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(3) & ((\F0|Rg3|DOUT\(0)) # (\F0|Rg3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X79_Y3_N12
\display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) $ (!\F0|Rg3|DOUT\(1))))) # (!\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(2) $ (!\F0|Rg3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(1),
	combout => \display2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X77_Y3_N20
\display3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(2) $ (\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(3) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(0) $ (\F0|Rg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X77_Y3_N2
\display3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~1_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) $ (((\F0|Rg4|DOUT\(3)) # (\F0|Rg4|DOUT\(1)))))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(3) & \F0|Rg4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X77_Y3_N4
\display3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~2_combout\ = (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) & ((\F0|Rg4|DOUT\(1)) # (!\F0|Rg4|DOUT\(0))))) # (!\F0|Rg4|DOUT\(3) & (!\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(2) & \F0|Rg4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y3_N18
\display3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~3_combout\ = (\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(0) & ((\F0|Rg4|DOUT\(2)))) # (!\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(3) & !\F0|Rg4|DOUT\(2))))) # (!\F0|Rg4|DOUT\(1) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(0) $ (\F0|Rg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X77_Y3_N0
\display3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~4_combout\ = (\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(3)))) # (!\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(2) & ((!\F0|Rg4|DOUT\(3)))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X77_Y3_N6
\display3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~5_combout\ = (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(3) $ (((\F0|Rg4|DOUT\(1)) # (!\F0|Rg4|DOUT\(2)))))) # (!\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(3) & (!\F0|Rg4|DOUT\(2) & \F0|Rg4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X77_Y3_N12
\display3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~6_combout\ = (\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) $ (!\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(3) $ (!\F0|Rg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(0),
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X77_Y3_N10
\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(1) $ (\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(3) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(0) $ (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X77_Y3_N28
\display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0) $ (((\F0|Rg5|DOUT\(3)) # (\F0|Rg5|DOUT\(1)))))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & \F0|Rg5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X77_Y3_N22
\display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(2) & ((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(0))))) # (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(0) & !\F0|Rg5|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y3_N24
\display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(0) & ((\F0|Rg5|DOUT\(2)))) # (!\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) & !\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(0) $ (\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y3_N16
\display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(0) & ((!\F0|Rg5|DOUT\(3))))) # (!\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(2) & ((!\F0|Rg5|DOUT\(3)))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(0),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(3),
	combout => \display4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X76_Y3_N18
\display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) $ (((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(2)))))) # (!\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & !\F0|Rg5|DOUT\(2))))

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
	combout => \display4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X77_Y3_N30
\display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) $ (!\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(3) $ (!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(0),
	datad => \F0|Rg5|DOUT\(2),
	combout => \display4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X70_Y3_N16
\display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = (\F0|Rg6|DOUT\(2) & (!\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(0) $ (!\F0|Rg6|DOUT\(3))))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0) & (\F0|Rg6|DOUT\(1) $ (!\F0|Rg6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X70_Y3_N10
\display5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = (\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0) $ (((\F0|Rg6|DOUT\(1)) # (\F0|Rg6|DOUT\(3)))))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(0) & \F0|Rg6|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X70_Y3_N12
\display5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = (\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(3) & ((\F0|Rg6|DOUT\(1)) # (!\F0|Rg6|DOUT\(0))))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(0) & !\F0|Rg6|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X70_Y3_N26
\display5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = (\F0|Rg6|DOUT\(1) & ((\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0))) # (!\F0|Rg6|DOUT\(2) & (!\F0|Rg6|DOUT\(0) & \F0|Rg6|DOUT\(3))))) # (!\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(2) $ (\F0|Rg6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X70_Y3_N8
\display5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = (\F0|Rg6|DOUT\(1) & (((\F0|Rg6|DOUT\(0) & !\F0|Rg6|DOUT\(3))))) # (!\F0|Rg6|DOUT\(1) & ((\F0|Rg6|DOUT\(2) & ((!\F0|Rg6|DOUT\(3)))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X70_Y3_N18
\display5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = (\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0) & (\F0|Rg6|DOUT\(1) $ (\F0|Rg6|DOUT\(3))))) # (!\F0|Rg6|DOUT\(2) & (!\F0|Rg6|DOUT\(3) & ((\F0|Rg6|DOUT\(1)) # (\F0|Rg6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
	combout => \display5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X70_Y3_N28
\display5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = (\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(2) $ (!\F0|Rg6|DOUT\(1))))) # (!\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(2) $ (!\F0|Rg6|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(2),
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg6|DOUT\(0),
	datad => \F0|Rg6|DOUT\(3),
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


