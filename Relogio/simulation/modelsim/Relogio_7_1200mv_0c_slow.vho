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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "09/27/2018 16:36:33"

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
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
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
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \valor_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
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
SIGNAL \fazDivisaoInteiro1|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador[11]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador[12]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~27\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~28_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador[14]~feeder_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~29\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~30_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~31\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~32_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~33\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~34_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~35\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~36_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~7_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~37\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~38_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~39\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~40_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~41\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Add0~42_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|contador~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|Equal0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro1|tick~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~27\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~28_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~29\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~30_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~7_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~31\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~32_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~33\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~34_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~9_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~35\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~36_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~37\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~38_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Equal0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~39\ : std_logic;
SIGNAL \fazDivisaoInteiro2|Add0~40_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|contador~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro2|tick~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~27\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~28_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~29\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~30_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~31\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~32_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~33\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~34_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~35\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~36_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~37\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Add0~38_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|contador~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro3|tick~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~1\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~3\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~5\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~7\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~8_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~9\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~10_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~11\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~12_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~13\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~14_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~15\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~16_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~17\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~18_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~19\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~20_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~5_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~21\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~22_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~6_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~23\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~24_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~25\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~26_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~27\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~28_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~29\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~30_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~31\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~33\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~34_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Equal0~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Equal0~3_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Equal0~1_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Equal0~2_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Equal0~4_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|Add0~32_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|contador~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|tick~0_combout\ : std_logic;
SIGNAL \fazDivisaoInteiro4|tick~q\ : std_logic;
SIGNAL \valor_clock~2_combout\ : std_logic;
SIGNAL \valor_clock~1_combout\ : std_logic;
SIGNAL \valor_clock~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \valor_clock~combout\ : std_logic;
SIGNAL \valor_clock~clkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \F0|M3|Mux2~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \F0|M3|Mux2~1_combout\ : std_logic;
SIGNAL \F0|M3|Mux2~2_combout\ : std_logic;
SIGNAL \F0|M3|Mux0~0_combout\ : std_logic;
SIGNAL \F0|M3|Mux0~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \F0|M3|Mux0~2_combout\ : std_logic;
SIGNAL \F0|M3|Mux0~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \F0|Rg6|process_0~0_combout\ : std_logic;
SIGNAL \F0|M3|Mux3~0_combout\ : std_logic;
SIGNAL \F0|M3|Mux3~1_combout\ : std_logic;
SIGNAL \F0|M3|Mux3~2_combout\ : std_logic;
SIGNAL \S0|flag4~combout\ : std_logic;
SIGNAL \S0|Selector0~0_combout\ : std_logic;
SIGNAL \S0|reg_fstate~6_combout\ : std_logic;
SIGNAL \S0|fstate.state6~q\ : std_logic;
SIGNAL \S0|fstate.state7~q\ : std_logic;
SIGNAL \S0|fstate.state8~q\ : std_logic;
SIGNAL \S0|WideOr7~0_combout\ : std_logic;
SIGNAL \S0|WideOr15~4_combout\ : std_logic;
SIGNAL \S0|Selector0~1_combout\ : std_logic;
SIGNAL \S0|fstate.state0~q\ : std_logic;
SIGNAL \S0|fstate.state1~0_combout\ : std_logic;
SIGNAL \S0|fstate.state1~q\ : std_logic;
SIGNAL \S0|fstate.state2~q\ : std_logic;
SIGNAL \S0|reg_fstate~3_combout\ : std_logic;
SIGNAL \S0|fstate.state3~q\ : std_logic;
SIGNAL \S0|fstate.state4~q\ : std_logic;
SIGNAL \S0|fstate.state5~q\ : std_logic;
SIGNAL \S0|WideOr13~0_combout\ : std_logic;
SIGNAL \S0|WideOr15~combout\ : std_logic;
SIGNAL \S0|WideOr9~0_combout\ : std_logic;
SIGNAL \S0|WideOr9~1_combout\ : std_logic;
SIGNAL \S0|WideOr9~2_combout\ : std_logic;
SIGNAL \S0|WideOr9~3_combout\ : std_logic;
SIGNAL \F0|U|Add0~23_combout\ : std_logic;
SIGNAL \F0|U|Add0~24_combout\ : std_logic;
SIGNAL \S0|WideOr11~0_combout\ : std_logic;
SIGNAL \S0|WideOr11~combout\ : std_logic;
SIGNAL \S0|WideOr13~1_combout\ : std_logic;
SIGNAL \S0|WideOr13~combout\ : std_logic;
SIGNAL \F0|U|Add0~44_combout\ : std_logic;
SIGNAL \F0|U|Add0~45_combout\ : std_logic;
SIGNAL \S0|WideOr19~0_combout\ : std_logic;
SIGNAL \S0|WideOr17~combout\ : std_logic;
SIGNAL \F0|U|Add0~42_combout\ : std_logic;
SIGNAL \F0|U|Add0~19_combout\ : std_logic;
SIGNAL \F0|Rg3|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \F0|Rg3|process_0~0_combout\ : std_logic;
SIGNAL \F0|Rg3|process_0~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \F0|Rg4|process_0~0_combout\ : std_logic;
SIGNAL \F0|Rg4|process_0~1_combout\ : std_logic;
SIGNAL \F0|U|Add0~41_combout\ : std_logic;
SIGNAL \F0|U|Add0~43_combout\ : std_logic;
SIGNAL \F0|U|Add0~18_combout\ : std_logic;
SIGNAL \F0|U|Add0~40_combout\ : std_logic;
SIGNAL \F0|U|Add0~46_combout\ : std_logic;
SIGNAL \F0|M1|Mux3~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~48_cout\ : std_logic;
SIGNAL \F0|U|Add0~49_combout\ : std_logic;
SIGNAL \F0|M3|Mux3~3_combout\ : std_logic;
SIGNAL \S0|reg_fstate~4_combout\ : std_logic;
SIGNAL \F0|M3|Mux1~0_combout\ : std_logic;
SIGNAL \S0|reg_fstate~5_combout\ : std_logic;
SIGNAL \S0|fstate.state19~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \F0|Rg5|process_0~0_combout\ : std_logic;
SIGNAL \F0|Rg5|process_0~1_combout\ : std_logic;
SIGNAL \S0|Selector1~0_combout\ : std_logic;
SIGNAL \S0|Selector1~1_combout\ : std_logic;
SIGNAL \S0|fstate.state18~q\ : std_logic;
SIGNAL \F0|M1|Mux0~0_combout\ : std_logic;
SIGNAL \F0|U|Add0~21_combout\ : std_logic;
SIGNAL \F0|U|Add0~22_combout\ : std_logic;
SIGNAL \F0|U|Add0~25_combout\ : std_logic;
SIGNAL \F0|U|Add0~26_combout\ : std_logic;
SIGNAL \F0|U|Add0~20_combout\ : std_logic;
SIGNAL \F0|U|Add0~27_combout\ : std_logic;
SIGNAL \F0|U|Add0~28_combout\ : std_logic;
SIGNAL \F0|U|Add0~32_combout\ : std_logic;
SIGNAL \F0|U|Add0~29_combout\ : std_logic;
SIGNAL \F0|U|Add0~30_combout\ : std_logic;
SIGNAL \F0|U|Add0~31_combout\ : std_logic;
SIGNAL \F0|U|Add0~33_combout\ : std_logic;
SIGNAL \F0|U|Add0~34_combout\ : std_logic;
SIGNAL \F0|U|Add0~35_combout\ : std_logic;
SIGNAL \F0|U|Add0~36_combout\ : std_logic;
SIGNAL \F0|U|Add0~37_combout\ : std_logic;
SIGNAL \F0|U|Add0~38_combout\ : std_logic;
SIGNAL \F0|U|Add0~39_combout\ : std_logic;
SIGNAL \F0|U|Add0~50\ : std_logic;
SIGNAL \F0|U|Add0~52\ : std_logic;
SIGNAL \F0|U|Add0~54\ : std_logic;
SIGNAL \F0|U|Add0~55_combout\ : std_logic;
SIGNAL \S0|reg_fstate~1_combout\ : std_logic;
SIGNAL \S0|reg_fstate~2_combout\ : std_logic;
SIGNAL \S0|fstate.state15~q\ : std_logic;
SIGNAL \S0|reg_fstate~9_combout\ : std_logic;
SIGNAL \S0|fstate.state16~q\ : std_logic;
SIGNAL \S0|fstate.state17~q\ : std_logic;
SIGNAL \S0|WideOr7~1_combout\ : std_logic;
SIGNAL \S0|WideOr7~2_combout\ : std_logic;
SIGNAL \S0|WideOr7~3_combout\ : std_logic;
SIGNAL \F0|M1|Mux1~2_combout\ : std_logic;
SIGNAL \F0|U|Add0~53_combout\ : std_logic;
SIGNAL \F0|U|Flag~0_combout\ : std_logic;
SIGNAL \S0|reg_fstate~7_combout\ : std_logic;
SIGNAL \S0|fstate.state9~q\ : std_logic;
SIGNAL \S0|fstate.state10~q\ : std_logic;
SIGNAL \S0|fstate.state11~q\ : std_logic;
SIGNAL \S0|reg_fstate~8_combout\ : std_logic;
SIGNAL \S0|fstate.state12~q\ : std_logic;
SIGNAL \S0|fstate.state13~q\ : std_logic;
SIGNAL \S0|fstate.state14~q\ : std_logic;
SIGNAL \F0|M1|Mux2~2_combout\ : std_logic;
SIGNAL \F0|U|Add0~51_combout\ : std_logic;
SIGNAL \F0|M3|Mux2~3_combout\ : std_logic;
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
SIGNAL \fazDivisaoInteiro2|contador\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \fazDivisaoInteiro3|contador\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fazDivisaoInteiro4|contador\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \F0|Rg6|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fazDivisaoInteiro1|contador\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \F0|Rg2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \F0|Rg1|DOUT\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
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

\valor_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \valor_clock~combout\);
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

-- Location: LCCOMB_X2_Y35_N10
\fazDivisaoInteiro1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~0_combout\ = \fazDivisaoInteiro1|contador\(0) $ (VCC)
-- \fazDivisaoInteiro1|Add0~1\ = CARRY(\fazDivisaoInteiro1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro1|Add0~0_combout\,
	cout => \fazDivisaoInteiro1|Add0~1\);

-- Location: LCCOMB_X2_Y35_N4
\fazDivisaoInteiro1|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~0_combout\ = (\fazDivisaoInteiro1|Add0~0_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|Add0~0_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~0_combout\);

-- Location: FF_X2_Y35_N5
\fazDivisaoInteiro1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(0));

-- Location: LCCOMB_X2_Y35_N12
\fazDivisaoInteiro1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~2_combout\ = (\fazDivisaoInteiro1|contador\(1) & (!\fazDivisaoInteiro1|Add0~1\)) # (!\fazDivisaoInteiro1|contador\(1) & ((\fazDivisaoInteiro1|Add0~1\) # (GND)))
-- \fazDivisaoInteiro1|Add0~3\ = CARRY((!\fazDivisaoInteiro1|Add0~1\) # (!\fazDivisaoInteiro1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(1),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~1\,
	combout => \fazDivisaoInteiro1|Add0~2_combout\,
	cout => \fazDivisaoInteiro1|Add0~3\);

-- Location: FF_X2_Y35_N13
\fazDivisaoInteiro1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(1));

-- Location: LCCOMB_X2_Y35_N14
\fazDivisaoInteiro1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~4_combout\ = (\fazDivisaoInteiro1|contador\(2) & (\fazDivisaoInteiro1|Add0~3\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(2) & (!\fazDivisaoInteiro1|Add0~3\ & VCC))
-- \fazDivisaoInteiro1|Add0~5\ = CARRY((\fazDivisaoInteiro1|contador\(2) & !\fazDivisaoInteiro1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(2),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~3\,
	combout => \fazDivisaoInteiro1|Add0~4_combout\,
	cout => \fazDivisaoInteiro1|Add0~5\);

-- Location: FF_X2_Y35_N15
\fazDivisaoInteiro1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(2));

-- Location: LCCOMB_X2_Y35_N16
\fazDivisaoInteiro1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~6_combout\ = (\fazDivisaoInteiro1|contador\(3) & (!\fazDivisaoInteiro1|Add0~5\)) # (!\fazDivisaoInteiro1|contador\(3) & ((\fazDivisaoInteiro1|Add0~5\) # (GND)))
-- \fazDivisaoInteiro1|Add0~7\ = CARRY((!\fazDivisaoInteiro1|Add0~5\) # (!\fazDivisaoInteiro1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~5\,
	combout => \fazDivisaoInteiro1|Add0~6_combout\,
	cout => \fazDivisaoInteiro1|Add0~7\);

-- Location: FF_X2_Y35_N17
\fazDivisaoInteiro1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(3));

-- Location: LCCOMB_X2_Y35_N18
\fazDivisaoInteiro1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~8_combout\ = (\fazDivisaoInteiro1|contador\(4) & (\fazDivisaoInteiro1|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(4) & (!\fazDivisaoInteiro1|Add0~7\ & VCC))
-- \fazDivisaoInteiro1|Add0~9\ = CARRY((\fazDivisaoInteiro1|contador\(4) & !\fazDivisaoInteiro1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~7\,
	combout => \fazDivisaoInteiro1|Add0~8_combout\,
	cout => \fazDivisaoInteiro1|Add0~9\);

-- Location: FF_X2_Y35_N19
\fazDivisaoInteiro1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(4));

-- Location: LCCOMB_X2_Y35_N20
\fazDivisaoInteiro1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~10_combout\ = (\fazDivisaoInteiro1|contador\(5) & (!\fazDivisaoInteiro1|Add0~9\)) # (!\fazDivisaoInteiro1|contador\(5) & ((\fazDivisaoInteiro1|Add0~9\) # (GND)))
-- \fazDivisaoInteiro1|Add0~11\ = CARRY((!\fazDivisaoInteiro1|Add0~9\) # (!\fazDivisaoInteiro1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~9\,
	combout => \fazDivisaoInteiro1|Add0~10_combout\,
	cout => \fazDivisaoInteiro1|Add0~11\);

-- Location: LCCOMB_X2_Y35_N8
\fazDivisaoInteiro1|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~1_combout\ = (\fazDivisaoInteiro1|Add0~10_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|Add0~10_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~1_combout\);

-- Location: FF_X2_Y35_N9
\fazDivisaoInteiro1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(5));

-- Location: LCCOMB_X2_Y35_N22
\fazDivisaoInteiro1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~12_combout\ = (\fazDivisaoInteiro1|contador\(6) & (\fazDivisaoInteiro1|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(6) & (!\fazDivisaoInteiro1|Add0~11\ & VCC))
-- \fazDivisaoInteiro1|Add0~13\ = CARRY((\fazDivisaoInteiro1|contador\(6) & !\fazDivisaoInteiro1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~11\,
	combout => \fazDivisaoInteiro1|Add0~12_combout\,
	cout => \fazDivisaoInteiro1|Add0~13\);

-- Location: FF_X2_Y35_N23
\fazDivisaoInteiro1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(6));

-- Location: LCCOMB_X2_Y35_N24
\fazDivisaoInteiro1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~14_combout\ = (\fazDivisaoInteiro1|contador\(7) & (!\fazDivisaoInteiro1|Add0~13\)) # (!\fazDivisaoInteiro1|contador\(7) & ((\fazDivisaoInteiro1|Add0~13\) # (GND)))
-- \fazDivisaoInteiro1|Add0~15\ = CARRY((!\fazDivisaoInteiro1|Add0~13\) # (!\fazDivisaoInteiro1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(7),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~13\,
	combout => \fazDivisaoInteiro1|Add0~14_combout\,
	cout => \fazDivisaoInteiro1|Add0~15\);

-- Location: LCCOMB_X2_Y35_N6
\fazDivisaoInteiro1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~2_combout\ = (\fazDivisaoInteiro1|Add0~14_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|Add0~14_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~2_combout\);

-- Location: FF_X2_Y35_N7
\fazDivisaoInteiro1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(7));

-- Location: LCCOMB_X2_Y35_N26
\fazDivisaoInteiro1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~16_combout\ = (\fazDivisaoInteiro1|contador\(8) & (\fazDivisaoInteiro1|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(8) & (!\fazDivisaoInteiro1|Add0~15\ & VCC))
-- \fazDivisaoInteiro1|Add0~17\ = CARRY((\fazDivisaoInteiro1|contador\(8) & !\fazDivisaoInteiro1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~15\,
	combout => \fazDivisaoInteiro1|Add0~16_combout\,
	cout => \fazDivisaoInteiro1|Add0~17\);

-- Location: LCCOMB_X1_Y35_N16
\fazDivisaoInteiro1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~3_combout\ = (!\fazDivisaoInteiro1|Equal0~6_combout\ & \fazDivisaoInteiro1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|Equal0~6_combout\,
	datac => \fazDivisaoInteiro1|Add0~16_combout\,
	combout => \fazDivisaoInteiro1|contador~3_combout\);

-- Location: FF_X1_Y35_N17
\fazDivisaoInteiro1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(8));

-- Location: LCCOMB_X2_Y35_N28
\fazDivisaoInteiro1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~18_combout\ = (\fazDivisaoInteiro1|contador\(9) & (!\fazDivisaoInteiro1|Add0~17\)) # (!\fazDivisaoInteiro1|contador\(9) & ((\fazDivisaoInteiro1|Add0~17\) # (GND)))
-- \fazDivisaoInteiro1|Add0~19\ = CARRY((!\fazDivisaoInteiro1|Add0~17\) # (!\fazDivisaoInteiro1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(9),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~17\,
	combout => \fazDivisaoInteiro1|Add0~18_combout\,
	cout => \fazDivisaoInteiro1|Add0~19\);

-- Location: FF_X2_Y35_N29
\fazDivisaoInteiro1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(9));

-- Location: LCCOMB_X2_Y35_N30
\fazDivisaoInteiro1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~20_combout\ = (\fazDivisaoInteiro1|contador\(10) & (\fazDivisaoInteiro1|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(10) & (!\fazDivisaoInteiro1|Add0~19\ & VCC))
-- \fazDivisaoInteiro1|Add0~21\ = CARRY((\fazDivisaoInteiro1|contador\(10) & !\fazDivisaoInteiro1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~19\,
	combout => \fazDivisaoInteiro1|Add0~20_combout\,
	cout => \fazDivisaoInteiro1|Add0~21\);

-- Location: LCCOMB_X1_Y35_N6
\fazDivisaoInteiro1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~4_combout\ = (\fazDivisaoInteiro1|Add0~20_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Add0~20_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~4_combout\);

-- Location: FF_X1_Y35_N7
\fazDivisaoInteiro1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(10));

-- Location: LCCOMB_X2_Y34_N0
\fazDivisaoInteiro1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~22_combout\ = (\fazDivisaoInteiro1|contador\(11) & (!\fazDivisaoInteiro1|Add0~21\)) # (!\fazDivisaoInteiro1|contador\(11) & ((\fazDivisaoInteiro1|Add0~21\) # (GND)))
-- \fazDivisaoInteiro1|Add0~23\ = CARRY((!\fazDivisaoInteiro1|Add0~21\) # (!\fazDivisaoInteiro1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(11),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~21\,
	combout => \fazDivisaoInteiro1|Add0~22_combout\,
	cout => \fazDivisaoInteiro1|Add0~23\);

-- Location: LCCOMB_X1_Y35_N14
\fazDivisaoInteiro1|contador[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador[11]~feeder_combout\ = \fazDivisaoInteiro1|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro1|Add0~22_combout\,
	combout => \fazDivisaoInteiro1|contador[11]~feeder_combout\);

-- Location: FF_X1_Y35_N15
\fazDivisaoInteiro1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(11));

-- Location: LCCOMB_X2_Y34_N2
\fazDivisaoInteiro1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~24_combout\ = (\fazDivisaoInteiro1|contador\(12) & (\fazDivisaoInteiro1|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(12) & (!\fazDivisaoInteiro1|Add0~23\ & VCC))
-- \fazDivisaoInteiro1|Add0~25\ = CARRY((\fazDivisaoInteiro1|contador\(12) & !\fazDivisaoInteiro1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~23\,
	combout => \fazDivisaoInteiro1|Add0~24_combout\,
	cout => \fazDivisaoInteiro1|Add0~25\);

-- Location: LCCOMB_X1_Y35_N22
\fazDivisaoInteiro1|contador[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador[12]~feeder_combout\ = \fazDivisaoInteiro1|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Add0~24_combout\,
	combout => \fazDivisaoInteiro1|contador[12]~feeder_combout\);

-- Location: FF_X1_Y35_N23
\fazDivisaoInteiro1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(12));

-- Location: LCCOMB_X2_Y34_N4
\fazDivisaoInteiro1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~26_combout\ = (\fazDivisaoInteiro1|contador\(13) & (!\fazDivisaoInteiro1|Add0~25\)) # (!\fazDivisaoInteiro1|contador\(13) & ((\fazDivisaoInteiro1|Add0~25\) # (GND)))
-- \fazDivisaoInteiro1|Add0~27\ = CARRY((!\fazDivisaoInteiro1|Add0~25\) # (!\fazDivisaoInteiro1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(13),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~25\,
	combout => \fazDivisaoInteiro1|Add0~26_combout\,
	cout => \fazDivisaoInteiro1|Add0~27\);

-- Location: LCCOMB_X2_Y34_N22
\fazDivisaoInteiro1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~5_combout\ = (\fazDivisaoInteiro1|Add0~26_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|Add0~26_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~5_combout\);

-- Location: FF_X2_Y34_N23
\fazDivisaoInteiro1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(13));

-- Location: LCCOMB_X2_Y34_N6
\fazDivisaoInteiro1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~28_combout\ = (\fazDivisaoInteiro1|contador\(14) & (\fazDivisaoInteiro1|Add0~27\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(14) & (!\fazDivisaoInteiro1|Add0~27\ & VCC))
-- \fazDivisaoInteiro1|Add0~29\ = CARRY((\fazDivisaoInteiro1|contador\(14) & !\fazDivisaoInteiro1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(14),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~27\,
	combout => \fazDivisaoInteiro1|Add0~28_combout\,
	cout => \fazDivisaoInteiro1|Add0~29\);

-- Location: LCCOMB_X1_Y35_N20
\fazDivisaoInteiro1|contador[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador[14]~feeder_combout\ = \fazDivisaoInteiro1|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Add0~28_combout\,
	combout => \fazDivisaoInteiro1|contador[14]~feeder_combout\);

-- Location: FF_X1_Y35_N21
\fazDivisaoInteiro1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(14));

-- Location: LCCOMB_X2_Y34_N8
\fazDivisaoInteiro1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~30_combout\ = (\fazDivisaoInteiro1|contador\(15) & (!\fazDivisaoInteiro1|Add0~29\)) # (!\fazDivisaoInteiro1|contador\(15) & ((\fazDivisaoInteiro1|Add0~29\) # (GND)))
-- \fazDivisaoInteiro1|Add0~31\ = CARRY((!\fazDivisaoInteiro1|Add0~29\) # (!\fazDivisaoInteiro1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(15),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~29\,
	combout => \fazDivisaoInteiro1|Add0~30_combout\,
	cout => \fazDivisaoInteiro1|Add0~31\);

-- Location: FF_X2_Y34_N9
\fazDivisaoInteiro1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(15));

-- Location: LCCOMB_X2_Y34_N10
\fazDivisaoInteiro1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~32_combout\ = (\fazDivisaoInteiro1|contador\(16) & (\fazDivisaoInteiro1|Add0~31\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(16) & (!\fazDivisaoInteiro1|Add0~31\ & VCC))
-- \fazDivisaoInteiro1|Add0~33\ = CARRY((\fazDivisaoInteiro1|contador\(16) & !\fazDivisaoInteiro1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(16),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~31\,
	combout => \fazDivisaoInteiro1|Add0~32_combout\,
	cout => \fazDivisaoInteiro1|Add0~33\);

-- Location: FF_X2_Y34_N11
\fazDivisaoInteiro1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(16));

-- Location: LCCOMB_X2_Y34_N12
\fazDivisaoInteiro1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~34_combout\ = (\fazDivisaoInteiro1|contador\(17) & (!\fazDivisaoInteiro1|Add0~33\)) # (!\fazDivisaoInteiro1|contador\(17) & ((\fazDivisaoInteiro1|Add0~33\) # (GND)))
-- \fazDivisaoInteiro1|Add0~35\ = CARRY((!\fazDivisaoInteiro1|Add0~33\) # (!\fazDivisaoInteiro1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(17),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~33\,
	combout => \fazDivisaoInteiro1|Add0~34_combout\,
	cout => \fazDivisaoInteiro1|Add0~35\);

-- Location: LCCOMB_X2_Y34_N28
\fazDivisaoInteiro1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~6_combout\ = (!\fazDivisaoInteiro1|Equal0~6_combout\ & \fazDivisaoInteiro1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Equal0~6_combout\,
	datad => \fazDivisaoInteiro1|Add0~34_combout\,
	combout => \fazDivisaoInteiro1|contador~6_combout\);

-- Location: FF_X2_Y34_N29
\fazDivisaoInteiro1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(17));

-- Location: LCCOMB_X2_Y34_N14
\fazDivisaoInteiro1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~36_combout\ = (\fazDivisaoInteiro1|contador\(18) & (\fazDivisaoInteiro1|Add0~35\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(18) & (!\fazDivisaoInteiro1|Add0~35\ & VCC))
-- \fazDivisaoInteiro1|Add0~37\ = CARRY((\fazDivisaoInteiro1|contador\(18) & !\fazDivisaoInteiro1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(18),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~35\,
	combout => \fazDivisaoInteiro1|Add0~36_combout\,
	cout => \fazDivisaoInteiro1|Add0~37\);

-- Location: LCCOMB_X2_Y34_N30
\fazDivisaoInteiro1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~7_combout\ = (\fazDivisaoInteiro1|Add0~36_combout\ & !\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Add0~36_combout\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|contador~7_combout\);

-- Location: FF_X2_Y34_N31
\fazDivisaoInteiro1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(18));

-- Location: LCCOMB_X2_Y34_N16
\fazDivisaoInteiro1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~38_combout\ = (\fazDivisaoInteiro1|contador\(19) & (!\fazDivisaoInteiro1|Add0~37\)) # (!\fazDivisaoInteiro1|contador\(19) & ((\fazDivisaoInteiro1|Add0~37\) # (GND)))
-- \fazDivisaoInteiro1|Add0~39\ = CARRY((!\fazDivisaoInteiro1|Add0~37\) # (!\fazDivisaoInteiro1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(19),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~37\,
	combout => \fazDivisaoInteiro1|Add0~38_combout\,
	cout => \fazDivisaoInteiro1|Add0~39\);

-- Location: FF_X2_Y34_N17
\fazDivisaoInteiro1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(19));

-- Location: LCCOMB_X2_Y34_N18
\fazDivisaoInteiro1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~40_combout\ = (\fazDivisaoInteiro1|contador\(20) & (\fazDivisaoInteiro1|Add0~39\ $ (GND))) # (!\fazDivisaoInteiro1|contador\(20) & (!\fazDivisaoInteiro1|Add0~39\ & VCC))
-- \fazDivisaoInteiro1|Add0~41\ = CARRY((\fazDivisaoInteiro1|contador\(20) & !\fazDivisaoInteiro1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro1|contador\(20),
	datad => VCC,
	cin => \fazDivisaoInteiro1|Add0~39\,
	combout => \fazDivisaoInteiro1|Add0~40_combout\,
	cout => \fazDivisaoInteiro1|Add0~41\);

-- Location: FF_X2_Y34_N19
\fazDivisaoInteiro1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(20));

-- Location: LCCOMB_X2_Y34_N20
\fazDivisaoInteiro1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Add0~42_combout\ = \fazDivisaoInteiro1|Add0~41\ $ (\fazDivisaoInteiro1|contador\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro1|contador\(21),
	cin => \fazDivisaoInteiro1|Add0~41\,
	combout => \fazDivisaoInteiro1|Add0~42_combout\);

-- Location: LCCOMB_X2_Y34_N26
\fazDivisaoInteiro1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|contador~8_combout\ = (!\fazDivisaoInteiro1|Equal0~6_combout\ & \fazDivisaoInteiro1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|Equal0~6_combout\,
	datad => \fazDivisaoInteiro1|Add0~42_combout\,
	combout => \fazDivisaoInteiro1|contador~8_combout\);

-- Location: FF_X2_Y34_N27
\fazDivisaoInteiro1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|contador\(21));

-- Location: LCCOMB_X2_Y34_N24
\fazDivisaoInteiro1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~5_combout\ = (!\fazDivisaoInteiro1|contador\(16) & (\fazDivisaoInteiro1|contador\(17) & (\fazDivisaoInteiro1|contador\(18) & !\fazDivisaoInteiro1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(16),
	datab => \fazDivisaoInteiro1|contador\(17),
	datac => \fazDivisaoInteiro1|contador\(18),
	datad => \fazDivisaoInteiro1|contador\(19),
	combout => \fazDivisaoInteiro1|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y35_N2
\fazDivisaoInteiro1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~0_combout\ = (!\fazDivisaoInteiro1|contador\(1) & (!\fazDivisaoInteiro1|contador\(0) & (!\fazDivisaoInteiro1|contador\(2) & !\fazDivisaoInteiro1|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(1),
	datab => \fazDivisaoInteiro1|contador\(0),
	datac => \fazDivisaoInteiro1|contador\(2),
	datad => \fazDivisaoInteiro1|contador\(3),
	combout => \fazDivisaoInteiro1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y35_N0
\fazDivisaoInteiro1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~1_combout\ = (!\fazDivisaoInteiro1|contador\(6) & (!\fazDivisaoInteiro1|contador\(4) & (\fazDivisaoInteiro1|contador\(5) & \fazDivisaoInteiro1|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(6),
	datab => \fazDivisaoInteiro1|contador\(4),
	datac => \fazDivisaoInteiro1|contador\(5),
	datad => \fazDivisaoInteiro1|contador\(7),
	combout => \fazDivisaoInteiro1|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y35_N26
\fazDivisaoInteiro1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~2_combout\ = (\fazDivisaoInteiro1|contador\(10) & (\fazDivisaoInteiro1|contador\(8) & (!\fazDivisaoInteiro1|contador\(11) & !\fazDivisaoInteiro1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(10),
	datab => \fazDivisaoInteiro1|contador\(8),
	datac => \fazDivisaoInteiro1|contador\(11),
	datad => \fazDivisaoInteiro1|contador\(9),
	combout => \fazDivisaoInteiro1|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y35_N12
\fazDivisaoInteiro1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~3_combout\ = (!\fazDivisaoInteiro1|contador\(12) & (!\fazDivisaoInteiro1|contador\(14) & (!\fazDivisaoInteiro1|contador\(15) & \fazDivisaoInteiro1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(12),
	datab => \fazDivisaoInteiro1|contador\(14),
	datac => \fazDivisaoInteiro1|contador\(15),
	datad => \fazDivisaoInteiro1|contador\(13),
	combout => \fazDivisaoInteiro1|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y35_N24
\fazDivisaoInteiro1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~4_combout\ = (\fazDivisaoInteiro1|Equal0~0_combout\ & (\fazDivisaoInteiro1|Equal0~1_combout\ & (\fazDivisaoInteiro1|Equal0~2_combout\ & \fazDivisaoInteiro1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|Equal0~0_combout\,
	datab => \fazDivisaoInteiro1|Equal0~1_combout\,
	datac => \fazDivisaoInteiro1|Equal0~2_combout\,
	datad => \fazDivisaoInteiro1|Equal0~3_combout\,
	combout => \fazDivisaoInteiro1|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y35_N28
\fazDivisaoInteiro1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|Equal0~6_combout\ = (!\fazDivisaoInteiro1|contador\(20) & (\fazDivisaoInteiro1|contador\(21) & (\fazDivisaoInteiro1|Equal0~5_combout\ & \fazDivisaoInteiro1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|contador\(20),
	datab => \fazDivisaoInteiro1|contador\(21),
	datac => \fazDivisaoInteiro1|Equal0~5_combout\,
	datad => \fazDivisaoInteiro1|Equal0~4_combout\,
	combout => \fazDivisaoInteiro1|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y35_N30
\fazDivisaoInteiro1|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro1|tick~0_combout\ = \fazDivisaoInteiro1|tick~q\ $ (\fazDivisaoInteiro1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fazDivisaoInteiro1|tick~q\,
	datad => \fazDivisaoInteiro1|Equal0~6_combout\,
	combout => \fazDivisaoInteiro1|tick~0_combout\);

-- Location: FF_X1_Y35_N31
\fazDivisaoInteiro1|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fazDivisaoInteiro1|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro1|tick~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X6_Y35_N12
\fazDivisaoInteiro2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~0_combout\ = \fazDivisaoInteiro2|contador\(0) $ (VCC)
-- \fazDivisaoInteiro2|Add0~1\ = CARRY(\fazDivisaoInteiro2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro2|Add0~0_combout\,
	cout => \fazDivisaoInteiro2|Add0~1\);

-- Location: LCCOMB_X6_Y35_N2
\fazDivisaoInteiro2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~2_combout\ = (\fazDivisaoInteiro2|Add0~0_combout\ & (((!\fazDivisaoInteiro2|Equal0~4_combout\) # (!\fazDivisaoInteiro2|contador\(20))) # (!\fazDivisaoInteiro2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Add0~0_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Equal0~4_combout\,
	combout => \fazDivisaoInteiro2|contador~2_combout\);

-- Location: FF_X6_Y35_N3
\fazDivisaoInteiro2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(0));

-- Location: LCCOMB_X6_Y35_N14
\fazDivisaoInteiro2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~2_combout\ = (\fazDivisaoInteiro2|contador\(1) & (!\fazDivisaoInteiro2|Add0~1\)) # (!\fazDivisaoInteiro2|contador\(1) & ((\fazDivisaoInteiro2|Add0~1\) # (GND)))
-- \fazDivisaoInteiro2|Add0~3\ = CARRY((!\fazDivisaoInteiro2|Add0~1\) # (!\fazDivisaoInteiro2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(1),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~1\,
	combout => \fazDivisaoInteiro2|Add0~2_combout\,
	cout => \fazDivisaoInteiro2|Add0~3\);

-- Location: FF_X6_Y35_N15
\fazDivisaoInteiro2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(1));

-- Location: LCCOMB_X6_Y35_N16
\fazDivisaoInteiro2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~4_combout\ = (\fazDivisaoInteiro2|contador\(2) & (\fazDivisaoInteiro2|Add0~3\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(2) & (!\fazDivisaoInteiro2|Add0~3\ & VCC))
-- \fazDivisaoInteiro2|Add0~5\ = CARRY((\fazDivisaoInteiro2|contador\(2) & !\fazDivisaoInteiro2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(2),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~3\,
	combout => \fazDivisaoInteiro2|Add0~4_combout\,
	cout => \fazDivisaoInteiro2|Add0~5\);

-- Location: FF_X6_Y35_N17
\fazDivisaoInteiro2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(2));

-- Location: LCCOMB_X6_Y35_N18
\fazDivisaoInteiro2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~6_combout\ = (\fazDivisaoInteiro2|contador\(3) & (!\fazDivisaoInteiro2|Add0~5\)) # (!\fazDivisaoInteiro2|contador\(3) & ((\fazDivisaoInteiro2|Add0~5\) # (GND)))
-- \fazDivisaoInteiro2|Add0~7\ = CARRY((!\fazDivisaoInteiro2|Add0~5\) # (!\fazDivisaoInteiro2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~5\,
	combout => \fazDivisaoInteiro2|Add0~6_combout\,
	cout => \fazDivisaoInteiro2|Add0~7\);

-- Location: FF_X6_Y35_N19
\fazDivisaoInteiro2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(3));

-- Location: LCCOMB_X6_Y35_N20
\fazDivisaoInteiro2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~8_combout\ = (\fazDivisaoInteiro2|contador\(4) & (\fazDivisaoInteiro2|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(4) & (!\fazDivisaoInteiro2|Add0~7\ & VCC))
-- \fazDivisaoInteiro2|Add0~9\ = CARRY((\fazDivisaoInteiro2|contador\(4) & !\fazDivisaoInteiro2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~7\,
	combout => \fazDivisaoInteiro2|Add0~8_combout\,
	cout => \fazDivisaoInteiro2|Add0~9\);

-- Location: FF_X6_Y35_N21
\fazDivisaoInteiro2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(4));

-- Location: LCCOMB_X6_Y35_N22
\fazDivisaoInteiro2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~10_combout\ = (\fazDivisaoInteiro2|contador\(5) & (!\fazDivisaoInteiro2|Add0~9\)) # (!\fazDivisaoInteiro2|contador\(5) & ((\fazDivisaoInteiro2|Add0~9\) # (GND)))
-- \fazDivisaoInteiro2|Add0~11\ = CARRY((!\fazDivisaoInteiro2|Add0~9\) # (!\fazDivisaoInteiro2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~9\,
	combout => \fazDivisaoInteiro2|Add0~10_combout\,
	cout => \fazDivisaoInteiro2|Add0~11\);

-- Location: LCCOMB_X6_Y35_N8
\fazDivisaoInteiro2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~0_combout\ = (\fazDivisaoInteiro2|Add0~10_combout\ & (((!\fazDivisaoInteiro2|Equal0~4_combout\) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(20),
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|Add0~10_combout\,
	datad => \fazDivisaoInteiro2|Equal0~4_combout\,
	combout => \fazDivisaoInteiro2|contador~0_combout\);

-- Location: FF_X6_Y35_N9
\fazDivisaoInteiro2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(5));

-- Location: LCCOMB_X6_Y35_N24
\fazDivisaoInteiro2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~12_combout\ = (\fazDivisaoInteiro2|contador\(6) & (\fazDivisaoInteiro2|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(6) & (!\fazDivisaoInteiro2|Add0~11\ & VCC))
-- \fazDivisaoInteiro2|Add0~13\ = CARRY((\fazDivisaoInteiro2|contador\(6) & !\fazDivisaoInteiro2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~11\,
	combout => \fazDivisaoInteiro2|Add0~12_combout\,
	cout => \fazDivisaoInteiro2|Add0~13\);

-- Location: LCCOMB_X6_Y35_N0
\fazDivisaoInteiro2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~1_combout\ = (\fazDivisaoInteiro2|Add0~12_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~12_combout\,
	combout => \fazDivisaoInteiro2|contador~1_combout\);

-- Location: FF_X6_Y35_N1
\fazDivisaoInteiro2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(6));

-- Location: LCCOMB_X6_Y35_N26
\fazDivisaoInteiro2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~14_combout\ = (\fazDivisaoInteiro2|contador\(7) & (!\fazDivisaoInteiro2|Add0~13\)) # (!\fazDivisaoInteiro2|contador\(7) & ((\fazDivisaoInteiro2|Add0~13\) # (GND)))
-- \fazDivisaoInteiro2|Add0~15\ = CARRY((!\fazDivisaoInteiro2|Add0~13\) # (!\fazDivisaoInteiro2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(7),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~13\,
	combout => \fazDivisaoInteiro2|Add0~14_combout\,
	cout => \fazDivisaoInteiro2|Add0~15\);

-- Location: FF_X6_Y35_N27
\fazDivisaoInteiro2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(7));

-- Location: LCCOMB_X6_Y35_N28
\fazDivisaoInteiro2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~16_combout\ = (\fazDivisaoInteiro2|contador\(8) & (\fazDivisaoInteiro2|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(8) & (!\fazDivisaoInteiro2|Add0~15\ & VCC))
-- \fazDivisaoInteiro2|Add0~17\ = CARRY((\fazDivisaoInteiro2|contador\(8) & !\fazDivisaoInteiro2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~15\,
	combout => \fazDivisaoInteiro2|Add0~16_combout\,
	cout => \fazDivisaoInteiro2|Add0~17\);

-- Location: LCCOMB_X6_Y35_N30
\fazDivisaoInteiro2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~18_combout\ = (\fazDivisaoInteiro2|contador\(9) & (!\fazDivisaoInteiro2|Add0~17\)) # (!\fazDivisaoInteiro2|contador\(9) & ((\fazDivisaoInteiro2|Add0~17\) # (GND)))
-- \fazDivisaoInteiro2|Add0~19\ = CARRY((!\fazDivisaoInteiro2|Add0~17\) # (!\fazDivisaoInteiro2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(9),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~17\,
	combout => \fazDivisaoInteiro2|Add0~18_combout\,
	cout => \fazDivisaoInteiro2|Add0~19\);

-- Location: LCCOMB_X6_Y35_N10
\fazDivisaoInteiro2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~4_combout\ = (\fazDivisaoInteiro2|Add0~18_combout\ & (((!\fazDivisaoInteiro2|Equal0~4_combout\) # (!\fazDivisaoInteiro2|contador\(20))) # (!\fazDivisaoInteiro2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Add0~18_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Equal0~4_combout\,
	combout => \fazDivisaoInteiro2|contador~4_combout\);

-- Location: FF_X6_Y35_N11
\fazDivisaoInteiro2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(9));

-- Location: LCCOMB_X6_Y34_N0
\fazDivisaoInteiro2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~20_combout\ = (\fazDivisaoInteiro2|contador\(10) & (\fazDivisaoInteiro2|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(10) & (!\fazDivisaoInteiro2|Add0~19\ & VCC))
-- \fazDivisaoInteiro2|Add0~21\ = CARRY((\fazDivisaoInteiro2|contador\(10) & !\fazDivisaoInteiro2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~19\,
	combout => \fazDivisaoInteiro2|Add0~20_combout\,
	cout => \fazDivisaoInteiro2|Add0~21\);

-- Location: FF_X6_Y34_N1
\fazDivisaoInteiro2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(10));

-- Location: LCCOMB_X6_Y34_N2
\fazDivisaoInteiro2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~22_combout\ = (\fazDivisaoInteiro2|contador\(11) & (!\fazDivisaoInteiro2|Add0~21\)) # (!\fazDivisaoInteiro2|contador\(11) & ((\fazDivisaoInteiro2|Add0~21\) # (GND)))
-- \fazDivisaoInteiro2|Add0~23\ = CARRY((!\fazDivisaoInteiro2|Add0~21\) # (!\fazDivisaoInteiro2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(11),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~21\,
	combout => \fazDivisaoInteiro2|Add0~22_combout\,
	cout => \fazDivisaoInteiro2|Add0~23\);

-- Location: FF_X6_Y34_N3
\fazDivisaoInteiro2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(11));

-- Location: LCCOMB_X6_Y34_N4
\fazDivisaoInteiro2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~24_combout\ = (\fazDivisaoInteiro2|contador\(12) & (\fazDivisaoInteiro2|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(12) & (!\fazDivisaoInteiro2|Add0~23\ & VCC))
-- \fazDivisaoInteiro2|Add0~25\ = CARRY((\fazDivisaoInteiro2|contador\(12) & !\fazDivisaoInteiro2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~23\,
	combout => \fazDivisaoInteiro2|Add0~24_combout\,
	cout => \fazDivisaoInteiro2|Add0~25\);

-- Location: FF_X6_Y34_N5
\fazDivisaoInteiro2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(12));

-- Location: LCCOMB_X6_Y34_N6
\fazDivisaoInteiro2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~26_combout\ = (\fazDivisaoInteiro2|contador\(13) & (!\fazDivisaoInteiro2|Add0~25\)) # (!\fazDivisaoInteiro2|contador\(13) & ((\fazDivisaoInteiro2|Add0~25\) # (GND)))
-- \fazDivisaoInteiro2|Add0~27\ = CARRY((!\fazDivisaoInteiro2|Add0~25\) # (!\fazDivisaoInteiro2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(13),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~25\,
	combout => \fazDivisaoInteiro2|Add0~26_combout\,
	cout => \fazDivisaoInteiro2|Add0~27\);

-- Location: LCCOMB_X6_Y34_N22
\fazDivisaoInteiro2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~5_combout\ = (\fazDivisaoInteiro2|Add0~26_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~26_combout\,
	combout => \fazDivisaoInteiro2|contador~5_combout\);

-- Location: FF_X6_Y34_N23
\fazDivisaoInteiro2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(13));

-- Location: LCCOMB_X6_Y34_N8
\fazDivisaoInteiro2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~28_combout\ = (\fazDivisaoInteiro2|contador\(14) & (\fazDivisaoInteiro2|Add0~27\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(14) & (!\fazDivisaoInteiro2|Add0~27\ & VCC))
-- \fazDivisaoInteiro2|Add0~29\ = CARRY((\fazDivisaoInteiro2|contador\(14) & !\fazDivisaoInteiro2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(14),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~27\,
	combout => \fazDivisaoInteiro2|Add0~28_combout\,
	cout => \fazDivisaoInteiro2|Add0~29\);

-- Location: LCCOMB_X7_Y34_N2
\fazDivisaoInteiro2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~6_combout\ = (\fazDivisaoInteiro2|Add0~28_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~28_combout\,
	combout => \fazDivisaoInteiro2|contador~6_combout\);

-- Location: FF_X7_Y34_N3
\fazDivisaoInteiro2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(14));

-- Location: LCCOMB_X6_Y34_N10
\fazDivisaoInteiro2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~30_combout\ = (\fazDivisaoInteiro2|contador\(15) & (!\fazDivisaoInteiro2|Add0~29\)) # (!\fazDivisaoInteiro2|contador\(15) & ((\fazDivisaoInteiro2|Add0~29\) # (GND)))
-- \fazDivisaoInteiro2|Add0~31\ = CARRY((!\fazDivisaoInteiro2|Add0~29\) # (!\fazDivisaoInteiro2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(15),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~29\,
	combout => \fazDivisaoInteiro2|Add0~30_combout\,
	cout => \fazDivisaoInteiro2|Add0~31\);

-- Location: LCCOMB_X6_Y34_N24
\fazDivisaoInteiro2|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~7_combout\ = (\fazDivisaoInteiro2|Add0~30_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~30_combout\,
	combout => \fazDivisaoInteiro2|contador~7_combout\);

-- Location: FF_X6_Y34_N25
\fazDivisaoInteiro2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(15));

-- Location: LCCOMB_X6_Y34_N12
\fazDivisaoInteiro2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~32_combout\ = (\fazDivisaoInteiro2|contador\(16) & (\fazDivisaoInteiro2|Add0~31\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(16) & (!\fazDivisaoInteiro2|Add0~31\ & VCC))
-- \fazDivisaoInteiro2|Add0~33\ = CARRY((\fazDivisaoInteiro2|contador\(16) & !\fazDivisaoInteiro2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(16),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~31\,
	combout => \fazDivisaoInteiro2|Add0~32_combout\,
	cout => \fazDivisaoInteiro2|Add0~33\);

-- Location: FF_X6_Y34_N13
\fazDivisaoInteiro2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(16));

-- Location: LCCOMB_X6_Y34_N14
\fazDivisaoInteiro2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~34_combout\ = (\fazDivisaoInteiro2|contador\(17) & (!\fazDivisaoInteiro2|Add0~33\)) # (!\fazDivisaoInteiro2|contador\(17) & ((\fazDivisaoInteiro2|Add0~33\) # (GND)))
-- \fazDivisaoInteiro2|Add0~35\ = CARRY((!\fazDivisaoInteiro2|Add0~33\) # (!\fazDivisaoInteiro2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(17),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~33\,
	combout => \fazDivisaoInteiro2|Add0~34_combout\,
	cout => \fazDivisaoInteiro2|Add0~35\);

-- Location: LCCOMB_X6_Y34_N28
\fazDivisaoInteiro2|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~9_combout\ = (\fazDivisaoInteiro2|Add0~34_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|Add0~34_combout\,
	datad => \fazDivisaoInteiro2|contador\(20),
	combout => \fazDivisaoInteiro2|contador~9_combout\);

-- Location: FF_X6_Y34_N29
\fazDivisaoInteiro2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(17));

-- Location: LCCOMB_X6_Y34_N16
\fazDivisaoInteiro2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~36_combout\ = (\fazDivisaoInteiro2|contador\(18) & (\fazDivisaoInteiro2|Add0~35\ $ (GND))) # (!\fazDivisaoInteiro2|contador\(18) & (!\fazDivisaoInteiro2|Add0~35\ & VCC))
-- \fazDivisaoInteiro2|Add0~37\ = CARRY((\fazDivisaoInteiro2|contador\(18) & !\fazDivisaoInteiro2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(18),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~35\,
	combout => \fazDivisaoInteiro2|Add0~36_combout\,
	cout => \fazDivisaoInteiro2|Add0~37\);

-- Location: LCCOMB_X6_Y34_N26
\fazDivisaoInteiro2|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~10_combout\ = (\fazDivisaoInteiro2|Add0~36_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~36_combout\,
	combout => \fazDivisaoInteiro2|contador~10_combout\);

-- Location: FF_X6_Y34_N27
\fazDivisaoInteiro2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(18));

-- Location: LCCOMB_X6_Y34_N18
\fazDivisaoInteiro2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~38_combout\ = (\fazDivisaoInteiro2|contador\(19) & (!\fazDivisaoInteiro2|Add0~37\)) # (!\fazDivisaoInteiro2|contador\(19) & ((\fazDivisaoInteiro2|Add0~37\) # (GND)))
-- \fazDivisaoInteiro2|Add0~39\ = CARRY((!\fazDivisaoInteiro2|Add0~37\) # (!\fazDivisaoInteiro2|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro2|contador\(19),
	datad => VCC,
	cin => \fazDivisaoInteiro2|Add0~37\,
	combout => \fazDivisaoInteiro2|Add0~38_combout\,
	cout => \fazDivisaoInteiro2|Add0~39\);

-- Location: FF_X6_Y34_N19
\fazDivisaoInteiro2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(19));

-- Location: LCCOMB_X7_Y34_N0
\fazDivisaoInteiro2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~5_combout\ = (!\fazDivisaoInteiro2|contador\(16) & (\fazDivisaoInteiro2|contador\(17) & (\fazDivisaoInteiro2|contador\(18) & !\fazDivisaoInteiro2|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(16),
	datab => \fazDivisaoInteiro2|contador\(17),
	datac => \fazDivisaoInteiro2|contador\(18),
	datad => \fazDivisaoInteiro2|contador\(19),
	combout => \fazDivisaoInteiro2|Equal0~5_combout\);

-- Location: LCCOMB_X7_Y34_N12
\fazDivisaoInteiro2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~3_combout\ = (\fazDivisaoInteiro2|Add0~16_combout\ & (((!\fazDivisaoInteiro2|Equal0~4_combout\) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(20),
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|Add0~16_combout\,
	datad => \fazDivisaoInteiro2|Equal0~4_combout\,
	combout => \fazDivisaoInteiro2|contador~3_combout\);

-- Location: FF_X7_Y34_N13
\fazDivisaoInteiro2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(8));

-- Location: LCCOMB_X7_Y34_N22
\fazDivisaoInteiro2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~2_combout\ = (\fazDivisaoInteiro2|contador\(8) & (\fazDivisaoInteiro2|contador\(9) & (!\fazDivisaoInteiro2|contador\(10) & !\fazDivisaoInteiro2|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(8),
	datab => \fazDivisaoInteiro2|contador\(9),
	datac => \fazDivisaoInteiro2|contador\(10),
	datad => \fazDivisaoInteiro2|contador\(11),
	combout => \fazDivisaoInteiro2|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y34_N18
\fazDivisaoInteiro2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~3_combout\ = (\fazDivisaoInteiro2|contador\(14) & (\fazDivisaoInteiro2|contador\(15) & (!\fazDivisaoInteiro2|contador\(12) & \fazDivisaoInteiro2|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(14),
	datab => \fazDivisaoInteiro2|contador\(15),
	datac => \fazDivisaoInteiro2|contador\(12),
	datad => \fazDivisaoInteiro2|contador\(13),
	combout => \fazDivisaoInteiro2|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y35_N6
\fazDivisaoInteiro2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~0_combout\ = (!\fazDivisaoInteiro2|contador\(3) & (!\fazDivisaoInteiro2|contador\(2) & (\fazDivisaoInteiro2|contador\(5) & !\fazDivisaoInteiro2|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(3),
	datab => \fazDivisaoInteiro2|contador\(2),
	datac => \fazDivisaoInteiro2|contador\(5),
	datad => \fazDivisaoInteiro2|contador\(4),
	combout => \fazDivisaoInteiro2|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y35_N4
\fazDivisaoInteiro2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~1_combout\ = (!\fazDivisaoInteiro2|contador\(7) & (!\fazDivisaoInteiro2|contador\(0) & (!\fazDivisaoInteiro2|contador\(1) & \fazDivisaoInteiro2|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(7),
	datab => \fazDivisaoInteiro2|contador\(0),
	datac => \fazDivisaoInteiro2|contador\(1),
	datad => \fazDivisaoInteiro2|contador\(6),
	combout => \fazDivisaoInteiro2|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y34_N20
\fazDivisaoInteiro2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Equal0~4_combout\ = (\fazDivisaoInteiro2|Equal0~2_combout\ & (\fazDivisaoInteiro2|Equal0~3_combout\ & (\fazDivisaoInteiro2|Equal0~0_combout\ & \fazDivisaoInteiro2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~2_combout\,
	datab => \fazDivisaoInteiro2|Equal0~3_combout\,
	datac => \fazDivisaoInteiro2|Equal0~0_combout\,
	datad => \fazDivisaoInteiro2|Equal0~1_combout\,
	combout => \fazDivisaoInteiro2|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y34_N20
\fazDivisaoInteiro2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|Add0~40_combout\ = \fazDivisaoInteiro2|contador\(20) $ (!\fazDivisaoInteiro2|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(20),
	cin => \fazDivisaoInteiro2|Add0~39\,
	combout => \fazDivisaoInteiro2|Add0~40_combout\);

-- Location: LCCOMB_X6_Y34_N30
\fazDivisaoInteiro2|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|contador~8_combout\ = (\fazDivisaoInteiro2|Add0~40_combout\ & (((!\fazDivisaoInteiro2|contador\(20)) # (!\fazDivisaoInteiro2|Equal0~5_combout\)) # (!\fazDivisaoInteiro2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|Equal0~4_combout\,
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|contador\(20),
	datad => \fazDivisaoInteiro2|Add0~40_combout\,
	combout => \fazDivisaoInteiro2|contador~8_combout\);

-- Location: FF_X6_Y34_N31
\fazDivisaoInteiro2|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro2|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|contador\(20));

-- Location: LCCOMB_X7_Y34_N16
\fazDivisaoInteiro2|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro2|tick~0_combout\ = \fazDivisaoInteiro2|tick~q\ $ (((\fazDivisaoInteiro2|contador\(20) & (\fazDivisaoInteiro2|Equal0~5_combout\ & \fazDivisaoInteiro2|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro2|contador\(20),
	datab => \fazDivisaoInteiro2|Equal0~5_combout\,
	datac => \fazDivisaoInteiro2|tick~q\,
	datad => \fazDivisaoInteiro2|Equal0~4_combout\,
	combout => \fazDivisaoInteiro2|tick~0_combout\);

-- Location: FF_X7_Y34_N17
\fazDivisaoInteiro2|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fazDivisaoInteiro2|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro2|tick~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X4_Y34_N12
\fazDivisaoInteiro3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~0_combout\ = \fazDivisaoInteiro3|contador\(0) $ (VCC)
-- \fazDivisaoInteiro3|Add0~1\ = CARRY(\fazDivisaoInteiro3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro3|Add0~0_combout\,
	cout => \fazDivisaoInteiro3|Add0~1\);

-- Location: LCCOMB_X4_Y34_N6
\fazDivisaoInteiro3|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~2_combout\ = (\fazDivisaoInteiro3|Add0~0_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Equal0~5_combout\,
	datad => \fazDivisaoInteiro3|Add0~0_combout\,
	combout => \fazDivisaoInteiro3|contador~2_combout\);

-- Location: FF_X4_Y34_N7
\fazDivisaoInteiro3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(0));

-- Location: LCCOMB_X4_Y34_N14
\fazDivisaoInteiro3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~2_combout\ = (\fazDivisaoInteiro3|contador\(1) & (!\fazDivisaoInteiro3|Add0~1\)) # (!\fazDivisaoInteiro3|contador\(1) & ((\fazDivisaoInteiro3|Add0~1\) # (GND)))
-- \fazDivisaoInteiro3|Add0~3\ = CARRY((!\fazDivisaoInteiro3|Add0~1\) # (!\fazDivisaoInteiro3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(1),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~1\,
	combout => \fazDivisaoInteiro3|Add0~2_combout\,
	cout => \fazDivisaoInteiro3|Add0~3\);

-- Location: FF_X4_Y34_N15
\fazDivisaoInteiro3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(1));

-- Location: LCCOMB_X4_Y34_N16
\fazDivisaoInteiro3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~4_combout\ = (\fazDivisaoInteiro3|contador\(2) & (\fazDivisaoInteiro3|Add0~3\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(2) & (!\fazDivisaoInteiro3|Add0~3\ & VCC))
-- \fazDivisaoInteiro3|Add0~5\ = CARRY((\fazDivisaoInteiro3|contador\(2) & !\fazDivisaoInteiro3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(2),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~3\,
	combout => \fazDivisaoInteiro3|Add0~4_combout\,
	cout => \fazDivisaoInteiro3|Add0~5\);

-- Location: FF_X4_Y34_N17
\fazDivisaoInteiro3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(2));

-- Location: LCCOMB_X4_Y34_N18
\fazDivisaoInteiro3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~6_combout\ = (\fazDivisaoInteiro3|contador\(3) & (!\fazDivisaoInteiro3|Add0~5\)) # (!\fazDivisaoInteiro3|contador\(3) & ((\fazDivisaoInteiro3|Add0~5\) # (GND)))
-- \fazDivisaoInteiro3|Add0~7\ = CARRY((!\fazDivisaoInteiro3|Add0~5\) # (!\fazDivisaoInteiro3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~5\,
	combout => \fazDivisaoInteiro3|Add0~6_combout\,
	cout => \fazDivisaoInteiro3|Add0~7\);

-- Location: FF_X4_Y34_N19
\fazDivisaoInteiro3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(3));

-- Location: LCCOMB_X4_Y34_N20
\fazDivisaoInteiro3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~8_combout\ = (\fazDivisaoInteiro3|contador\(4) & (\fazDivisaoInteiro3|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(4) & (!\fazDivisaoInteiro3|Add0~7\ & VCC))
-- \fazDivisaoInteiro3|Add0~9\ = CARRY((\fazDivisaoInteiro3|contador\(4) & !\fazDivisaoInteiro3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~7\,
	combout => \fazDivisaoInteiro3|Add0~8_combout\,
	cout => \fazDivisaoInteiro3|Add0~9\);

-- Location: FF_X4_Y34_N21
\fazDivisaoInteiro3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(4));

-- Location: LCCOMB_X4_Y34_N22
\fazDivisaoInteiro3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~10_combout\ = (\fazDivisaoInteiro3|contador\(5) & (!\fazDivisaoInteiro3|Add0~9\)) # (!\fazDivisaoInteiro3|contador\(5) & ((\fazDivisaoInteiro3|Add0~9\) # (GND)))
-- \fazDivisaoInteiro3|Add0~11\ = CARRY((!\fazDivisaoInteiro3|Add0~9\) # (!\fazDivisaoInteiro3|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~9\,
	combout => \fazDivisaoInteiro3|Add0~10_combout\,
	cout => \fazDivisaoInteiro3|Add0~11\);

-- Location: FF_X4_Y34_N23
\fazDivisaoInteiro3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(5));

-- Location: LCCOMB_X4_Y34_N24
\fazDivisaoInteiro3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~12_combout\ = (\fazDivisaoInteiro3|contador\(6) & (\fazDivisaoInteiro3|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(6) & (!\fazDivisaoInteiro3|Add0~11\ & VCC))
-- \fazDivisaoInteiro3|Add0~13\ = CARRY((\fazDivisaoInteiro3|contador\(6) & !\fazDivisaoInteiro3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~11\,
	combout => \fazDivisaoInteiro3|Add0~12_combout\,
	cout => \fazDivisaoInteiro3|Add0~13\);

-- Location: FF_X4_Y34_N25
\fazDivisaoInteiro3|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(6));

-- Location: LCCOMB_X4_Y34_N26
\fazDivisaoInteiro3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~14_combout\ = (\fazDivisaoInteiro3|contador\(7) & (!\fazDivisaoInteiro3|Add0~13\)) # (!\fazDivisaoInteiro3|contador\(7) & ((\fazDivisaoInteiro3|Add0~13\) # (GND)))
-- \fazDivisaoInteiro3|Add0~15\ = CARRY((!\fazDivisaoInteiro3|Add0~13\) # (!\fazDivisaoInteiro3|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(7),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~13\,
	combout => \fazDivisaoInteiro3|Add0~14_combout\,
	cout => \fazDivisaoInteiro3|Add0~15\);

-- Location: FF_X4_Y34_N27
\fazDivisaoInteiro3|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(7));

-- Location: LCCOMB_X3_Y34_N16
\fazDivisaoInteiro3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~2_combout\ = (!\fazDivisaoInteiro3|contador\(6) & (!\fazDivisaoInteiro3|contador\(5) & (!\fazDivisaoInteiro3|contador\(4) & !\fazDivisaoInteiro3|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(6),
	datab => \fazDivisaoInteiro3|contador\(5),
	datac => \fazDivisaoInteiro3|contador\(4),
	datad => \fazDivisaoInteiro3|contador\(7),
	combout => \fazDivisaoInteiro3|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y34_N28
\fazDivisaoInteiro3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~16_combout\ = (\fazDivisaoInteiro3|contador\(8) & (\fazDivisaoInteiro3|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(8) & (!\fazDivisaoInteiro3|Add0~15\ & VCC))
-- \fazDivisaoInteiro3|Add0~17\ = CARRY((\fazDivisaoInteiro3|contador\(8) & !\fazDivisaoInteiro3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~15\,
	combout => \fazDivisaoInteiro3|Add0~16_combout\,
	cout => \fazDivisaoInteiro3|Add0~17\);

-- Location: LCCOMB_X4_Y34_N10
\fazDivisaoInteiro3|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~3_combout\ = (\fazDivisaoInteiro3|Add0~16_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Equal0~5_combout\,
	datad => \fazDivisaoInteiro3|Add0~16_combout\,
	combout => \fazDivisaoInteiro3|contador~3_combout\);

-- Location: FF_X4_Y34_N11
\fazDivisaoInteiro3|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(8));

-- Location: LCCOMB_X4_Y34_N30
\fazDivisaoInteiro3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~18_combout\ = (\fazDivisaoInteiro3|contador\(9) & (!\fazDivisaoInteiro3|Add0~17\)) # (!\fazDivisaoInteiro3|contador\(9) & ((\fazDivisaoInteiro3|Add0~17\) # (GND)))
-- \fazDivisaoInteiro3|Add0~19\ = CARRY((!\fazDivisaoInteiro3|Add0~17\) # (!\fazDivisaoInteiro3|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(9),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~17\,
	combout => \fazDivisaoInteiro3|Add0~18_combout\,
	cout => \fazDivisaoInteiro3|Add0~19\);

-- Location: FF_X4_Y34_N31
\fazDivisaoInteiro3|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(9));

-- Location: LCCOMB_X4_Y33_N0
\fazDivisaoInteiro3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~20_combout\ = (\fazDivisaoInteiro3|contador\(10) & (\fazDivisaoInteiro3|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(10) & (!\fazDivisaoInteiro3|Add0~19\ & VCC))
-- \fazDivisaoInteiro3|Add0~21\ = CARRY((\fazDivisaoInteiro3|contador\(10) & !\fazDivisaoInteiro3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~19\,
	combout => \fazDivisaoInteiro3|Add0~20_combout\,
	cout => \fazDivisaoInteiro3|Add0~21\);

-- Location: LCCOMB_X3_Y33_N0
\fazDivisaoInteiro3|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~4_combout\ = (\fazDivisaoInteiro3|Add0~20_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Add0~20_combout\,
	datad => \fazDivisaoInteiro3|Equal0~5_combout\,
	combout => \fazDivisaoInteiro3|contador~4_combout\);

-- Location: FF_X3_Y33_N1
\fazDivisaoInteiro3|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(10));

-- Location: LCCOMB_X4_Y33_N2
\fazDivisaoInteiro3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~22_combout\ = (\fazDivisaoInteiro3|contador\(11) & (!\fazDivisaoInteiro3|Add0~21\)) # (!\fazDivisaoInteiro3|contador\(11) & ((\fazDivisaoInteiro3|Add0~21\) # (GND)))
-- \fazDivisaoInteiro3|Add0~23\ = CARRY((!\fazDivisaoInteiro3|Add0~21\) # (!\fazDivisaoInteiro3|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(11),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~21\,
	combout => \fazDivisaoInteiro3|Add0~22_combout\,
	cout => \fazDivisaoInteiro3|Add0~23\);

-- Location: FF_X4_Y33_N3
\fazDivisaoInteiro3|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(11));

-- Location: LCCOMB_X4_Y34_N2
\fazDivisaoInteiro3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~3_combout\ = (!\fazDivisaoInteiro3|contador\(9) & (\fazDivisaoInteiro3|contador\(8) & (\fazDivisaoInteiro3|contador\(10) & !\fazDivisaoInteiro3|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(9),
	datab => \fazDivisaoInteiro3|contador\(8),
	datac => \fazDivisaoInteiro3|contador\(10),
	datad => \fazDivisaoInteiro3|contador\(11),
	combout => \fazDivisaoInteiro3|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y34_N8
\fazDivisaoInteiro3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~1_combout\ = (!\fazDivisaoInteiro3|contador\(0) & (!\fazDivisaoInteiro3|contador\(2) & (!\fazDivisaoInteiro3|contador\(1) & !\fazDivisaoInteiro3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(0),
	datab => \fazDivisaoInteiro3|contador\(2),
	datac => \fazDivisaoInteiro3|contador\(1),
	datad => \fazDivisaoInteiro3|contador\(3),
	combout => \fazDivisaoInteiro3|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y33_N4
\fazDivisaoInteiro3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~24_combout\ = (\fazDivisaoInteiro3|contador\(12) & (\fazDivisaoInteiro3|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(12) & (!\fazDivisaoInteiro3|Add0~23\ & VCC))
-- \fazDivisaoInteiro3|Add0~25\ = CARRY((\fazDivisaoInteiro3|contador\(12) & !\fazDivisaoInteiro3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~23\,
	combout => \fazDivisaoInteiro3|Add0~24_combout\,
	cout => \fazDivisaoInteiro3|Add0~25\);

-- Location: LCCOMB_X4_Y33_N22
\fazDivisaoInteiro3|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~5_combout\ = (\fazDivisaoInteiro3|Add0~24_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Add0~24_combout\,
	datad => \fazDivisaoInteiro3|Equal0~5_combout\,
	combout => \fazDivisaoInteiro3|contador~5_combout\);

-- Location: FF_X4_Y33_N23
\fazDivisaoInteiro3|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(12));

-- Location: LCCOMB_X4_Y33_N6
\fazDivisaoInteiro3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~26_combout\ = (\fazDivisaoInteiro3|contador\(13) & (!\fazDivisaoInteiro3|Add0~25\)) # (!\fazDivisaoInteiro3|contador\(13) & ((\fazDivisaoInteiro3|Add0~25\) # (GND)))
-- \fazDivisaoInteiro3|Add0~27\ = CARRY((!\fazDivisaoInteiro3|Add0~25\) # (!\fazDivisaoInteiro3|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(13),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~25\,
	combout => \fazDivisaoInteiro3|Add0~26_combout\,
	cout => \fazDivisaoInteiro3|Add0~27\);

-- Location: LCCOMB_X4_Y33_N28
\fazDivisaoInteiro3|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~6_combout\ = (\fazDivisaoInteiro3|Add0~26_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Equal0~5_combout\,
	datad => \fazDivisaoInteiro3|Add0~26_combout\,
	combout => \fazDivisaoInteiro3|contador~6_combout\);

-- Location: FF_X4_Y33_N29
\fazDivisaoInteiro3|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(13));

-- Location: LCCOMB_X4_Y33_N8
\fazDivisaoInteiro3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~28_combout\ = (\fazDivisaoInteiro3|contador\(14) & (\fazDivisaoInteiro3|Add0~27\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(14) & (!\fazDivisaoInteiro3|Add0~27\ & VCC))
-- \fazDivisaoInteiro3|Add0~29\ = CARRY((\fazDivisaoInteiro3|contador\(14) & !\fazDivisaoInteiro3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(14),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~27\,
	combout => \fazDivisaoInteiro3|Add0~28_combout\,
	cout => \fazDivisaoInteiro3|Add0~29\);

-- Location: FF_X4_Y33_N9
\fazDivisaoInteiro3|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(14));

-- Location: LCCOMB_X4_Y33_N10
\fazDivisaoInteiro3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~30_combout\ = (\fazDivisaoInteiro3|contador\(15) & (!\fazDivisaoInteiro3|Add0~29\)) # (!\fazDivisaoInteiro3|contador\(15) & ((\fazDivisaoInteiro3|Add0~29\) # (GND)))
-- \fazDivisaoInteiro3|Add0~31\ = CARRY((!\fazDivisaoInteiro3|Add0~29\) # (!\fazDivisaoInteiro3|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(15),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~29\,
	combout => \fazDivisaoInteiro3|Add0~30_combout\,
	cout => \fazDivisaoInteiro3|Add0~31\);

-- Location: FF_X4_Y33_N11
\fazDivisaoInteiro3|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(15));

-- Location: LCCOMB_X4_Y33_N30
\fazDivisaoInteiro3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~4_combout\ = (\fazDivisaoInteiro3|contador\(12) & (\fazDivisaoInteiro3|contador\(13) & (!\fazDivisaoInteiro3|contador\(14) & !\fazDivisaoInteiro3|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(12),
	datab => \fazDivisaoInteiro3|contador\(13),
	datac => \fazDivisaoInteiro3|contador\(14),
	datad => \fazDivisaoInteiro3|contador\(15),
	combout => \fazDivisaoInteiro3|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y34_N0
\fazDivisaoInteiro3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~5_combout\ = (\fazDivisaoInteiro3|Equal0~2_combout\ & (\fazDivisaoInteiro3|Equal0~3_combout\ & (\fazDivisaoInteiro3|Equal0~1_combout\ & \fazDivisaoInteiro3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|Equal0~2_combout\,
	datab => \fazDivisaoInteiro3|Equal0~3_combout\,
	datac => \fazDivisaoInteiro3|Equal0~1_combout\,
	datad => \fazDivisaoInteiro3|Equal0~4_combout\,
	combout => \fazDivisaoInteiro3|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y33_N12
\fazDivisaoInteiro3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~32_combout\ = (\fazDivisaoInteiro3|contador\(16) & (\fazDivisaoInteiro3|Add0~31\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(16) & (!\fazDivisaoInteiro3|Add0~31\ & VCC))
-- \fazDivisaoInteiro3|Add0~33\ = CARRY((\fazDivisaoInteiro3|contador\(16) & !\fazDivisaoInteiro3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(16),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~31\,
	combout => \fazDivisaoInteiro3|Add0~32_combout\,
	cout => \fazDivisaoInteiro3|Add0~33\);

-- Location: FF_X4_Y33_N13
\fazDivisaoInteiro3|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(16));

-- Location: LCCOMB_X4_Y33_N14
\fazDivisaoInteiro3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~34_combout\ = (\fazDivisaoInteiro3|contador\(17) & (!\fazDivisaoInteiro3|Add0~33\)) # (!\fazDivisaoInteiro3|contador\(17) & ((\fazDivisaoInteiro3|Add0~33\) # (GND)))
-- \fazDivisaoInteiro3|Add0~35\ = CARRY((!\fazDivisaoInteiro3|Add0~33\) # (!\fazDivisaoInteiro3|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(17),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~33\,
	combout => \fazDivisaoInteiro3|Add0~34_combout\,
	cout => \fazDivisaoInteiro3|Add0~35\);

-- Location: FF_X4_Y33_N15
\fazDivisaoInteiro3|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(17));

-- Location: LCCOMB_X4_Y33_N16
\fazDivisaoInteiro3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~36_combout\ = (\fazDivisaoInteiro3|contador\(18) & (\fazDivisaoInteiro3|Add0~35\ $ (GND))) # (!\fazDivisaoInteiro3|contador\(18) & (!\fazDivisaoInteiro3|Add0~35\ & VCC))
-- \fazDivisaoInteiro3|Add0~37\ = CARRY((\fazDivisaoInteiro3|contador\(18) & !\fazDivisaoInteiro3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|contador\(18),
	datad => VCC,
	cin => \fazDivisaoInteiro3|Add0~35\,
	combout => \fazDivisaoInteiro3|Add0~36_combout\,
	cout => \fazDivisaoInteiro3|Add0~37\);

-- Location: LCCOMB_X4_Y33_N24
\fazDivisaoInteiro3|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~0_combout\ = (\fazDivisaoInteiro3|Add0~36_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Equal0~5_combout\,
	datad => \fazDivisaoInteiro3|Add0~36_combout\,
	combout => \fazDivisaoInteiro3|contador~0_combout\);

-- Location: FF_X4_Y33_N25
\fazDivisaoInteiro3|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(18));

-- Location: LCCOMB_X4_Y33_N18
\fazDivisaoInteiro3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Add0~38_combout\ = \fazDivisaoInteiro3|contador\(19) $ (\fazDivisaoInteiro3|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(19),
	cin => \fazDivisaoInteiro3|Add0~37\,
	combout => \fazDivisaoInteiro3|Add0~38_combout\);

-- Location: LCCOMB_X4_Y33_N26
\fazDivisaoInteiro3|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|contador~1_combout\ = (\fazDivisaoInteiro3|Add0~38_combout\ & ((!\fazDivisaoInteiro3|Equal0~5_combout\) # (!\fazDivisaoInteiro3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|Equal0~5_combout\,
	datad => \fazDivisaoInteiro3|Add0~38_combout\,
	combout => \fazDivisaoInteiro3|contador~1_combout\);

-- Location: FF_X4_Y33_N27
\fazDivisaoInteiro3|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro3|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|contador\(19));

-- Location: LCCOMB_X4_Y33_N20
\fazDivisaoInteiro3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|Equal0~0_combout\ = (\fazDivisaoInteiro3|contador\(19) & (\fazDivisaoInteiro3|contador\(18) & (!\fazDivisaoInteiro3|contador\(17) & !\fazDivisaoInteiro3|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro3|contador\(19),
	datab => \fazDivisaoInteiro3|contador\(18),
	datac => \fazDivisaoInteiro3|contador\(17),
	datad => \fazDivisaoInteiro3|contador\(16),
	combout => \fazDivisaoInteiro3|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y34_N4
\fazDivisaoInteiro3|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro3|tick~0_combout\ = \fazDivisaoInteiro3|tick~q\ $ (((\fazDivisaoInteiro3|Equal0~0_combout\ & \fazDivisaoInteiro3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro3|Equal0~0_combout\,
	datac => \fazDivisaoInteiro3|tick~q\,
	datad => \fazDivisaoInteiro3|Equal0~5_combout\,
	combout => \fazDivisaoInteiro3|tick~0_combout\);

-- Location: FF_X4_Y34_N5
\fazDivisaoInteiro3|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fazDivisaoInteiro3|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro3|tick~q\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X9_Y35_N14
\fazDivisaoInteiro4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~0_combout\ = \fazDivisaoInteiro4|contador\(0) $ (VCC)
-- \fazDivisaoInteiro4|Add0~1\ = CARRY(\fazDivisaoInteiro4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(0),
	datad => VCC,
	combout => \fazDivisaoInteiro4|Add0~0_combout\,
	cout => \fazDivisaoInteiro4|Add0~1\);

-- Location: LCCOMB_X9_Y35_N16
\fazDivisaoInteiro4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~2_combout\ = (\fazDivisaoInteiro4|contador\(1) & (!\fazDivisaoInteiro4|Add0~1\)) # (!\fazDivisaoInteiro4|contador\(1) & ((\fazDivisaoInteiro4|Add0~1\) # (GND)))
-- \fazDivisaoInteiro4|Add0~3\ = CARRY((!\fazDivisaoInteiro4|Add0~1\) # (!\fazDivisaoInteiro4|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(1),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~1\,
	combout => \fazDivisaoInteiro4|Add0~2_combout\,
	cout => \fazDivisaoInteiro4|Add0~3\);

-- Location: FF_X9_Y35_N17
\fazDivisaoInteiro4|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(1));

-- Location: LCCOMB_X9_Y35_N18
\fazDivisaoInteiro4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~4_combout\ = (\fazDivisaoInteiro4|contador\(2) & (\fazDivisaoInteiro4|Add0~3\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(2) & (!\fazDivisaoInteiro4|Add0~3\ & VCC))
-- \fazDivisaoInteiro4|Add0~5\ = CARRY((\fazDivisaoInteiro4|contador\(2) & !\fazDivisaoInteiro4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(2),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~3\,
	combout => \fazDivisaoInteiro4|Add0~4_combout\,
	cout => \fazDivisaoInteiro4|Add0~5\);

-- Location: FF_X9_Y35_N19
\fazDivisaoInteiro4|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(2));

-- Location: LCCOMB_X9_Y35_N20
\fazDivisaoInteiro4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~6_combout\ = (\fazDivisaoInteiro4|contador\(3) & (!\fazDivisaoInteiro4|Add0~5\)) # (!\fazDivisaoInteiro4|contador\(3) & ((\fazDivisaoInteiro4|Add0~5\) # (GND)))
-- \fazDivisaoInteiro4|Add0~7\ = CARRY((!\fazDivisaoInteiro4|Add0~5\) # (!\fazDivisaoInteiro4|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(3),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~5\,
	combout => \fazDivisaoInteiro4|Add0~6_combout\,
	cout => \fazDivisaoInteiro4|Add0~7\);

-- Location: FF_X9_Y35_N21
\fazDivisaoInteiro4|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(3));

-- Location: LCCOMB_X9_Y35_N22
\fazDivisaoInteiro4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~8_combout\ = (\fazDivisaoInteiro4|contador\(4) & (\fazDivisaoInteiro4|Add0~7\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(4) & (!\fazDivisaoInteiro4|Add0~7\ & VCC))
-- \fazDivisaoInteiro4|Add0~9\ = CARRY((\fazDivisaoInteiro4|contador\(4) & !\fazDivisaoInteiro4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(4),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~7\,
	combout => \fazDivisaoInteiro4|Add0~8_combout\,
	cout => \fazDivisaoInteiro4|Add0~9\);

-- Location: FF_X9_Y35_N23
\fazDivisaoInteiro4|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(4));

-- Location: LCCOMB_X9_Y35_N24
\fazDivisaoInteiro4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~10_combout\ = (\fazDivisaoInteiro4|contador\(5) & (!\fazDivisaoInteiro4|Add0~9\)) # (!\fazDivisaoInteiro4|contador\(5) & ((\fazDivisaoInteiro4|Add0~9\) # (GND)))
-- \fazDivisaoInteiro4|Add0~11\ = CARRY((!\fazDivisaoInteiro4|Add0~9\) # (!\fazDivisaoInteiro4|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(5),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~9\,
	combout => \fazDivisaoInteiro4|Add0~10_combout\,
	cout => \fazDivisaoInteiro4|Add0~11\);

-- Location: FF_X9_Y35_N25
\fazDivisaoInteiro4|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(5));

-- Location: LCCOMB_X9_Y35_N26
\fazDivisaoInteiro4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~12_combout\ = (\fazDivisaoInteiro4|contador\(6) & (\fazDivisaoInteiro4|Add0~11\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(6) & (!\fazDivisaoInteiro4|Add0~11\ & VCC))
-- \fazDivisaoInteiro4|Add0~13\ = CARRY((\fazDivisaoInteiro4|contador\(6) & !\fazDivisaoInteiro4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(6),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~11\,
	combout => \fazDivisaoInteiro4|Add0~12_combout\,
	cout => \fazDivisaoInteiro4|Add0~13\);

-- Location: LCCOMB_X9_Y35_N8
\fazDivisaoInteiro4|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~3_combout\ = (\fazDivisaoInteiro4|Add0~12_combout\ & (((!\fazDivisaoInteiro4|Equal0~4_combout\) # (!\fazDivisaoInteiro4|contador\(17))) # (!\fazDivisaoInteiro4|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(16),
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|Add0~12_combout\,
	datad => \fazDivisaoInteiro4|Equal0~4_combout\,
	combout => \fazDivisaoInteiro4|contador~3_combout\);

-- Location: FF_X9_Y35_N9
\fazDivisaoInteiro4|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(6));

-- Location: LCCOMB_X9_Y35_N28
\fazDivisaoInteiro4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~14_combout\ = (\fazDivisaoInteiro4|contador\(7) & (!\fazDivisaoInteiro4|Add0~13\)) # (!\fazDivisaoInteiro4|contador\(7) & ((\fazDivisaoInteiro4|Add0~13\) # (GND)))
-- \fazDivisaoInteiro4|Add0~15\ = CARRY((!\fazDivisaoInteiro4|Add0~13\) # (!\fazDivisaoInteiro4|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(7),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~13\,
	combout => \fazDivisaoInteiro4|Add0~14_combout\,
	cout => \fazDivisaoInteiro4|Add0~15\);

-- Location: FF_X9_Y35_N29
\fazDivisaoInteiro4|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(7));

-- Location: LCCOMB_X9_Y35_N30
\fazDivisaoInteiro4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~16_combout\ = (\fazDivisaoInteiro4|contador\(8) & (\fazDivisaoInteiro4|Add0~15\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(8) & (!\fazDivisaoInteiro4|Add0~15\ & VCC))
-- \fazDivisaoInteiro4|Add0~17\ = CARRY((\fazDivisaoInteiro4|contador\(8) & !\fazDivisaoInteiro4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(8),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~15\,
	combout => \fazDivisaoInteiro4|Add0~16_combout\,
	cout => \fazDivisaoInteiro4|Add0~17\);

-- Location: LCCOMB_X9_Y35_N4
\fazDivisaoInteiro4|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~4_combout\ = (\fazDivisaoInteiro4|Add0~16_combout\ & (((!\fazDivisaoInteiro4|Equal0~4_combout\) # (!\fazDivisaoInteiro4|contador\(17))) # (!\fazDivisaoInteiro4|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(16),
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|Add0~16_combout\,
	datad => \fazDivisaoInteiro4|Equal0~4_combout\,
	combout => \fazDivisaoInteiro4|contador~4_combout\);

-- Location: FF_X9_Y35_N5
\fazDivisaoInteiro4|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(8));

-- Location: LCCOMB_X9_Y34_N0
\fazDivisaoInteiro4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~18_combout\ = (\fazDivisaoInteiro4|contador\(9) & (!\fazDivisaoInteiro4|Add0~17\)) # (!\fazDivisaoInteiro4|contador\(9) & ((\fazDivisaoInteiro4|Add0~17\) # (GND)))
-- \fazDivisaoInteiro4|Add0~19\ = CARRY((!\fazDivisaoInteiro4|Add0~17\) # (!\fazDivisaoInteiro4|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(9),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~17\,
	combout => \fazDivisaoInteiro4|Add0~18_combout\,
	cout => \fazDivisaoInteiro4|Add0~19\);

-- Location: FF_X9_Y34_N1
\fazDivisaoInteiro4|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(9));

-- Location: LCCOMB_X9_Y34_N2
\fazDivisaoInteiro4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~20_combout\ = (\fazDivisaoInteiro4|contador\(10) & (\fazDivisaoInteiro4|Add0~19\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(10) & (!\fazDivisaoInteiro4|Add0~19\ & VCC))
-- \fazDivisaoInteiro4|Add0~21\ = CARRY((\fazDivisaoInteiro4|contador\(10) & !\fazDivisaoInteiro4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(10),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~19\,
	combout => \fazDivisaoInteiro4|Add0~20_combout\,
	cout => \fazDivisaoInteiro4|Add0~21\);

-- Location: LCCOMB_X9_Y34_N30
\fazDivisaoInteiro4|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~5_combout\ = (\fazDivisaoInteiro4|Add0~20_combout\ & (((!\fazDivisaoInteiro4|Equal0~4_combout\) # (!\fazDivisaoInteiro4|contador\(17))) # (!\fazDivisaoInteiro4|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(16),
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|Equal0~4_combout\,
	datad => \fazDivisaoInteiro4|Add0~20_combout\,
	combout => \fazDivisaoInteiro4|contador~5_combout\);

-- Location: FF_X9_Y34_N31
\fazDivisaoInteiro4|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(10));

-- Location: LCCOMB_X9_Y34_N4
\fazDivisaoInteiro4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~22_combout\ = (\fazDivisaoInteiro4|contador\(11) & (!\fazDivisaoInteiro4|Add0~21\)) # (!\fazDivisaoInteiro4|contador\(11) & ((\fazDivisaoInteiro4|Add0~21\) # (GND)))
-- \fazDivisaoInteiro4|Add0~23\ = CARRY((!\fazDivisaoInteiro4|Add0~21\) # (!\fazDivisaoInteiro4|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(11),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~21\,
	combout => \fazDivisaoInteiro4|Add0~22_combout\,
	cout => \fazDivisaoInteiro4|Add0~23\);

-- Location: LCCOMB_X9_Y34_N24
\fazDivisaoInteiro4|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~6_combout\ = (\fazDivisaoInteiro4|Add0~22_combout\ & (((!\fazDivisaoInteiro4|contador\(16)) # (!\fazDivisaoInteiro4|contador\(17))) # (!\fazDivisaoInteiro4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|Equal0~4_combout\,
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|Add0~22_combout\,
	datad => \fazDivisaoInteiro4|contador\(16),
	combout => \fazDivisaoInteiro4|contador~6_combout\);

-- Location: FF_X9_Y34_N25
\fazDivisaoInteiro4|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(11));

-- Location: LCCOMB_X9_Y34_N6
\fazDivisaoInteiro4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~24_combout\ = (\fazDivisaoInteiro4|contador\(12) & (\fazDivisaoInteiro4|Add0~23\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(12) & (!\fazDivisaoInteiro4|Add0~23\ & VCC))
-- \fazDivisaoInteiro4|Add0~25\ = CARRY((\fazDivisaoInteiro4|contador\(12) & !\fazDivisaoInteiro4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(12),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~23\,
	combout => \fazDivisaoInteiro4|Add0~24_combout\,
	cout => \fazDivisaoInteiro4|Add0~25\);

-- Location: FF_X9_Y34_N7
\fazDivisaoInteiro4|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(12));

-- Location: LCCOMB_X9_Y34_N8
\fazDivisaoInteiro4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~26_combout\ = (\fazDivisaoInteiro4|contador\(13) & (!\fazDivisaoInteiro4|Add0~25\)) # (!\fazDivisaoInteiro4|contador\(13) & ((\fazDivisaoInteiro4|Add0~25\) # (GND)))
-- \fazDivisaoInteiro4|Add0~27\ = CARRY((!\fazDivisaoInteiro4|Add0~25\) # (!\fazDivisaoInteiro4|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fazDivisaoInteiro4|contador\(13),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~25\,
	combout => \fazDivisaoInteiro4|Add0~26_combout\,
	cout => \fazDivisaoInteiro4|Add0~27\);

-- Location: FF_X9_Y34_N9
\fazDivisaoInteiro4|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(13));

-- Location: LCCOMB_X9_Y34_N10
\fazDivisaoInteiro4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~28_combout\ = (\fazDivisaoInteiro4|contador\(14) & (\fazDivisaoInteiro4|Add0~27\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(14) & (!\fazDivisaoInteiro4|Add0~27\ & VCC))
-- \fazDivisaoInteiro4|Add0~29\ = CARRY((\fazDivisaoInteiro4|contador\(14) & !\fazDivisaoInteiro4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(14),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~27\,
	combout => \fazDivisaoInteiro4|Add0~28_combout\,
	cout => \fazDivisaoInteiro4|Add0~29\);

-- Location: FF_X9_Y34_N11
\fazDivisaoInteiro4|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(14));

-- Location: LCCOMB_X9_Y34_N12
\fazDivisaoInteiro4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~30_combout\ = (\fazDivisaoInteiro4|contador\(15) & (!\fazDivisaoInteiro4|Add0~29\)) # (!\fazDivisaoInteiro4|contador\(15) & ((\fazDivisaoInteiro4|Add0~29\) # (GND)))
-- \fazDivisaoInteiro4|Add0~31\ = CARRY((!\fazDivisaoInteiro4|Add0~29\) # (!\fazDivisaoInteiro4|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(15),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~29\,
	combout => \fazDivisaoInteiro4|Add0~30_combout\,
	cout => \fazDivisaoInteiro4|Add0~31\);

-- Location: FF_X9_Y34_N13
\fazDivisaoInteiro4|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(15));

-- Location: LCCOMB_X9_Y34_N14
\fazDivisaoInteiro4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~32_combout\ = (\fazDivisaoInteiro4|contador\(16) & (\fazDivisaoInteiro4|Add0~31\ $ (GND))) # (!\fazDivisaoInteiro4|contador\(16) & (!\fazDivisaoInteiro4|Add0~31\ & VCC))
-- \fazDivisaoInteiro4|Add0~33\ = CARRY((\fazDivisaoInteiro4|contador\(16) & !\fazDivisaoInteiro4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(16),
	datad => VCC,
	cin => \fazDivisaoInteiro4|Add0~31\,
	combout => \fazDivisaoInteiro4|Add0~32_combout\,
	cout => \fazDivisaoInteiro4|Add0~33\);

-- Location: LCCOMB_X9_Y34_N16
\fazDivisaoInteiro4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Add0~34_combout\ = \fazDivisaoInteiro4|Add0~33\ $ (\fazDivisaoInteiro4|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fazDivisaoInteiro4|contador\(17),
	cin => \fazDivisaoInteiro4|Add0~33\,
	combout => \fazDivisaoInteiro4|Add0~34_combout\);

-- Location: LCCOMB_X9_Y34_N28
\fazDivisaoInteiro4|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~1_combout\ = (\fazDivisaoInteiro4|Add0~34_combout\ & (((!\fazDivisaoInteiro4|contador\(17)) # (!\fazDivisaoInteiro4|contador\(16))) # (!\fazDivisaoInteiro4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|Equal0~4_combout\,
	datab => \fazDivisaoInteiro4|contador\(16),
	datac => \fazDivisaoInteiro4|contador\(17),
	datad => \fazDivisaoInteiro4|Add0~34_combout\,
	combout => \fazDivisaoInteiro4|contador~1_combout\);

-- Location: FF_X9_Y34_N29
\fazDivisaoInteiro4|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(17));

-- Location: LCCOMB_X9_Y35_N12
\fazDivisaoInteiro4|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~2_combout\ = (\fazDivisaoInteiro4|Add0~0_combout\ & (((!\fazDivisaoInteiro4|Equal0~4_combout\) # (!\fazDivisaoInteiro4|contador\(16))) # (!\fazDivisaoInteiro4|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(17),
	datab => \fazDivisaoInteiro4|Add0~0_combout\,
	datac => \fazDivisaoInteiro4|contador\(16),
	datad => \fazDivisaoInteiro4|Equal0~4_combout\,
	combout => \fazDivisaoInteiro4|contador~2_combout\);

-- Location: FF_X9_Y35_N13
\fazDivisaoInteiro4|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(0));

-- Location: LCCOMB_X9_Y35_N2
\fazDivisaoInteiro4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Equal0~0_combout\ = (!\fazDivisaoInteiro4|contador\(0) & (!\fazDivisaoInteiro4|contador\(3) & (!\fazDivisaoInteiro4|contador\(1) & !\fazDivisaoInteiro4|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(0),
	datab => \fazDivisaoInteiro4|contador\(3),
	datac => \fazDivisaoInteiro4|contador\(1),
	datad => \fazDivisaoInteiro4|contador\(2),
	combout => \fazDivisaoInteiro4|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y34_N20
\fazDivisaoInteiro4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Equal0~3_combout\ = (!\fazDivisaoInteiro4|contador\(15) & (!\fazDivisaoInteiro4|contador\(13) & (!\fazDivisaoInteiro4|contador\(12) & !\fazDivisaoInteiro4|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(15),
	datab => \fazDivisaoInteiro4|contador\(13),
	datac => \fazDivisaoInteiro4|contador\(12),
	datad => \fazDivisaoInteiro4|contador\(14),
	combout => \fazDivisaoInteiro4|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y35_N10
\fazDivisaoInteiro4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Equal0~1_combout\ = (!\fazDivisaoInteiro4|contador\(4) & (!\fazDivisaoInteiro4|contador\(5) & (\fazDivisaoInteiro4|contador\(6) & !\fazDivisaoInteiro4|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(4),
	datab => \fazDivisaoInteiro4|contador\(5),
	datac => \fazDivisaoInteiro4|contador\(6),
	datad => \fazDivisaoInteiro4|contador\(7),
	combout => \fazDivisaoInteiro4|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y34_N18
\fazDivisaoInteiro4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Equal0~2_combout\ = (\fazDivisaoInteiro4|contador\(10) & (!\fazDivisaoInteiro4|contador\(9) & (\fazDivisaoInteiro4|contador\(11) & \fazDivisaoInteiro4|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(10),
	datab => \fazDivisaoInteiro4|contador\(9),
	datac => \fazDivisaoInteiro4|contador\(11),
	datad => \fazDivisaoInteiro4|contador\(8),
	combout => \fazDivisaoInteiro4|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y34_N26
\fazDivisaoInteiro4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|Equal0~4_combout\ = (\fazDivisaoInteiro4|Equal0~0_combout\ & (\fazDivisaoInteiro4|Equal0~3_combout\ & (\fazDivisaoInteiro4|Equal0~1_combout\ & \fazDivisaoInteiro4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|Equal0~0_combout\,
	datab => \fazDivisaoInteiro4|Equal0~3_combout\,
	datac => \fazDivisaoInteiro4|Equal0~1_combout\,
	datad => \fazDivisaoInteiro4|Equal0~2_combout\,
	combout => \fazDivisaoInteiro4|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y34_N22
\fazDivisaoInteiro4|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|contador~0_combout\ = (\fazDivisaoInteiro4|Add0~32_combout\ & (((!\fazDivisaoInteiro4|contador\(16)) # (!\fazDivisaoInteiro4|contador\(17))) # (!\fazDivisaoInteiro4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|Equal0~4_combout\,
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|contador\(16),
	datad => \fazDivisaoInteiro4|Add0~32_combout\,
	combout => \fazDivisaoInteiro4|contador~0_combout\);

-- Location: FF_X9_Y34_N23
\fazDivisaoInteiro4|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fazDivisaoInteiro4|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|contador\(16));

-- Location: LCCOMB_X8_Y34_N20
\fazDivisaoInteiro4|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fazDivisaoInteiro4|tick~0_combout\ = \fazDivisaoInteiro4|tick~q\ $ (((\fazDivisaoInteiro4|contador\(16) & (\fazDivisaoInteiro4|contador\(17) & \fazDivisaoInteiro4|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro4|contador\(16),
	datab => \fazDivisaoInteiro4|contador\(17),
	datac => \fazDivisaoInteiro4|tick~q\,
	datad => \fazDivisaoInteiro4|Equal0~4_combout\,
	combout => \fazDivisaoInteiro4|tick~0_combout\);

-- Location: FF_X8_Y34_N21
\fazDivisaoInteiro4|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fazDivisaoInteiro4|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fazDivisaoInteiro4|tick~q\);

-- Location: LCCOMB_X8_Y34_N10
\valor_clock~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor_clock~2_combout\ = (\SW[4]~input_o\ & ((\fazDivisaoInteiro4|tick~q\))) # (!\SW[4]~input_o\ & (\fazDivisaoInteiro1|tick~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \fazDivisaoInteiro1|tick~q\,
	datad => \fazDivisaoInteiro4|tick~q\,
	combout => \valor_clock~2_combout\);

-- Location: LCCOMB_X8_Y34_N18
\valor_clock~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor_clock~1_combout\ = (\SW[3]~input_o\ & (!\fazDivisaoInteiro3|tick~q\)) # (!\SW[3]~input_o\ & ((!\valor_clock~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \fazDivisaoInteiro3|tick~q\,
	datad => \valor_clock~2_combout\,
	combout => \valor_clock~1_combout\);

-- Location: LCCOMB_X8_Y34_N24
\valor_clock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \valor_clock~0_combout\ = (\SW[2]~input_o\ & (!\fazDivisaoInteiro2|tick~q\)) # (!\SW[2]~input_o\ & ((\valor_clock~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \fazDivisaoInteiro2|tick~q\,
	datad => \valor_clock~1_combout\,
	combout => \valor_clock~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X1_Y34_N0
valor_clock : cycloneive_lcell_comb
-- Equation(s):
-- \valor_clock~combout\ = LCELL((\SW[1]~input_o\ & (\fazDivisaoInteiro1|tick~q\)) # (!\SW[1]~input_o\ & ((!\valor_clock~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazDivisaoInteiro1|tick~q\,
	datac => \valor_clock~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \valor_clock~combout\);

-- Location: CLKCTRL_G2
\valor_clock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \valor_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \valor_clock~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y7_N12
\F0|M3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux2~0_combout\ = (!\SW[17]~input_o\ & (!\SW[16]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \F0|M3|Mux2~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y7_N28
\F0|M3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux2~1_combout\ = (!\SW[13]~input_o\ & (!\SW[12]~input_o\ & ((\SW[11]~input_o\) # (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \F0|M3|Mux2~1_combout\);

-- Location: LCCOMB_X114_Y7_N6
\F0|M3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux2~2_combout\ = (\F0|M3|Mux2~0_combout\ & ((\SW[15]~input_o\) # ((\SW[14]~input_o\) # (\F0|M3|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux2~0_combout\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \F0|M3|Mux2~1_combout\,
	combout => \F0|M3|Mux2~2_combout\);

-- Location: LCCOMB_X114_Y7_N18
\F0|M3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux0~0_combout\ = (\F0|M3|Mux2~0_combout\ & (!\SW[14]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux2~0_combout\,
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \F0|M3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y7_N20
\F0|M3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux0~1_combout\ = (!\SW[11]~input_o\ & (!\SW[13]~input_o\ & (!\SW[12]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \F0|M3|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y7_N10
\F0|M3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux0~2_combout\ = (\F0|M3|Mux0~1_combout\ & ((\SW[8]~input_o\) # (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|M3|Mux0~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \F0|M3|Mux0~2_combout\);

-- Location: LCCOMB_X83_Y5_N6
\F0|M3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux0~3_combout\ = (\F0|M3|Mux0~0_combout\ & ((\F0|M3|Mux0~2_combout\) # ((\F0|U|Add0~55_combout\ & !\SW[0]~input_o\)))) # (!\F0|M3|Mux0~0_combout\ & (((\F0|U|Add0~55_combout\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux0~0_combout\,
	datab => \F0|M3|Mux0~2_combout\,
	datac => \F0|U|Add0~55_combout\,
	datad => \SW[0]~input_o\,
	combout => \F0|M3|Mux0~3_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X84_Y5_N2
\F0|Rg6|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg6|process_0~0_combout\ = (\S0|fstate.state17~q\) # ((\S0|fstate.state19~q\) # ((!\KEY[0]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state19~q\,
	datac => \KEY[0]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \F0|Rg6|process_0~0_combout\);

-- Location: FF_X83_Y5_N23
\F0|Rg6|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \F0|M3|Mux2~3_combout\,
	ena => \F0|Rg6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(1));

-- Location: LCCOMB_X114_Y7_N16
\F0|M3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux3~0_combout\ = (!\SW[11]~input_o\ & ((\SW[10]~input_o\) # ((\SW[8]~input_o\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \F0|M3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y7_N22
\F0|M3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux3~1_combout\ = (\SW[14]~input_o\) # ((!\SW[13]~input_o\ & ((\SW[12]~input_o\) # (\F0|M3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \F0|M3|Mux3~0_combout\,
	combout => \F0|M3|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y7_N4
\F0|M3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux3~2_combout\ = (\SW[16]~input_o\) # ((\F0|M3|Mux3~1_combout\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux3~1_combout\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \F0|M3|Mux3~2_combout\);

-- Location: LCCOMB_X82_Y5_N14
\S0|flag4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|flag4~combout\ = (\S0|fstate.state14~q\ & (\F0|U|Flag~0_combout\)) # (!\S0|fstate.state14~q\ & ((\S0|flag4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Flag~0_combout\,
	datac => \S0|flag4~combout\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|flag4~combout\);

-- Location: LCCOMB_X80_Y5_N26
\S0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~0_combout\ = (\S0|fstate.state19~q\) # ((\S0|fstate.state18~q\ & !\S0|flag4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state18~q\,
	datab => \S0|fstate.state19~q\,
	datad => \S0|flag4~combout\,
	combout => \S0|Selector0~0_combout\);

-- Location: LCCOMB_X80_Y5_N12
\S0|reg_fstate~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~6_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state5~q\,
	combout => \S0|reg_fstate~6_combout\);

-- Location: FF_X80_Y5_N13
\S0|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state6~q\);

-- Location: FF_X81_Y5_N27
\S0|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state7~q\);

-- Location: FF_X81_Y5_N7
\S0|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state8~q\);

-- Location: LCCOMB_X81_Y5_N8
\S0|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr7~0_combout\ = (!\S0|fstate.state15~q\ & (!\S0|fstate.state2~q\ & !\S0|fstate.state8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state15~q\,
	datab => \S0|fstate.state2~q\,
	datad => \S0|fstate.state8~q\,
	combout => \S0|WideOr7~0_combout\);

-- Location: LCCOMB_X80_Y5_N2
\S0|WideOr15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr15~4_combout\ = (!\S0|fstate.state11~q\ & (\S0|WideOr7~0_combout\ & !\S0|fstate.state5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state11~q\,
	datab => \S0|WideOr7~0_combout\,
	datad => \S0|fstate.state5~q\,
	combout => \S0|WideOr15~4_combout\);

-- Location: LCCOMB_X80_Y5_N10
\S0|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector0~1_combout\ = (!\S0|Selector0~0_combout\ & ((\F0|U|Flag~0_combout\) # ((!\S0|fstate.state18~q\ & \S0|WideOr15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state18~q\,
	datab => \S0|Selector0~0_combout\,
	datac => \F0|U|Flag~0_combout\,
	datad => \S0|WideOr15~4_combout\,
	combout => \S0|Selector0~1_combout\);

-- Location: FF_X80_Y5_N11
\S0|fstate.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state0~q\);

-- Location: LCCOMB_X84_Y5_N20
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

-- Location: FF_X84_Y5_N21
\S0|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|fstate.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state1~q\);

-- Location: FF_X81_Y5_N5
\S0|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state2~q\);

-- Location: LCCOMB_X80_Y5_N18
\S0|reg_fstate~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~3_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Flag~0_combout\,
	datac => \S0|fstate.state2~q\,
	combout => \S0|reg_fstate~3_combout\);

-- Location: FF_X80_Y5_N19
\S0|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state3~q\);

-- Location: FF_X84_Y5_N31
\S0|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state4~q\);

-- Location: FF_X84_Y5_N7
\S0|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state5~q\);

-- Location: LCCOMB_X81_Y5_N10
\S0|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~0_combout\ = (!\S0|fstate.state11~q\ & !\S0|fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0|fstate.state11~q\,
	datad => \S0|fstate.state5~q\,
	combout => \S0|WideOr13~0_combout\);

-- Location: LCCOMB_X81_Y5_N0
\S0|WideOr15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr15~combout\ = (\S0|WideOr13~0_combout\ & (!\S0|fstate.state18~q\ & (\S0|WideOr7~0_combout\ & !\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~0_combout\,
	datab => \S0|fstate.state18~q\,
	datac => \S0|WideOr7~0_combout\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|WideOr15~combout\);

-- Location: LCCOMB_X80_Y5_N24
\S0|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~0_combout\ = (\S0|fstate.state13~q\) # (\S0|fstate.state15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0|fstate.state13~q\,
	datad => \S0|fstate.state15~q\,
	combout => \S0|WideOr9~0_combout\);

-- Location: LCCOMB_X81_Y5_N22
\S0|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~1_combout\ = (\S0|fstate.state17~q\) # ((\S0|fstate.state18~q\) # ((\S0|fstate.state14~q\) # (\S0|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state18~q\,
	datac => \S0|fstate.state14~q\,
	datad => \S0|WideOr9~0_combout\,
	combout => \S0|WideOr9~1_combout\);

-- Location: LCCOMB_X80_Y5_N6
\S0|WideOr9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~2_combout\ = (!\S0|fstate.state6~q\ & (!\S0|fstate.state19~q\ & (!\S0|fstate.state9~q\ & !\S0|fstate.state3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state6~q\,
	datab => \S0|fstate.state19~q\,
	datac => \S0|fstate.state9~q\,
	datad => \S0|fstate.state3~q\,
	combout => \S0|WideOr9~2_combout\);

-- Location: LCCOMB_X80_Y5_N14
\S0|WideOr9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr9~3_combout\ = (\S0|WideOr9~2_combout\ & (!\S0|fstate.state12~q\ & !\S0|fstate.state16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~2_combout\,
	datac => \S0|fstate.state12~q\,
	datad => \S0|fstate.state16~q\,
	combout => \S0|WideOr9~3_combout\);

-- Location: LCCOMB_X82_Y5_N12
\F0|U|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~23_combout\ = (!\S0|WideOr15~combout\ & ((\S0|WideOr9~1_combout\) # (!\S0|WideOr9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr15~combout\,
	datab => \S0|WideOr9~1_combout\,
	datad => \S0|WideOr9~3_combout\,
	combout => \F0|U|Add0~23_combout\);

-- Location: LCCOMB_X81_Y5_N4
\F0|U|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~24_combout\ = (\S0|WideOr15~combout\ & ((\S0|WideOr9~1_combout\) # (!\S0|WideOr9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~3_combout\,
	datab => \S0|WideOr15~combout\,
	datad => \S0|WideOr9~1_combout\,
	combout => \F0|U|Add0~24_combout\);

-- Location: LCCOMB_X81_Y5_N6
\S0|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr11~0_combout\ = (\S0|fstate.state7~q\) # ((\S0|fstate.state11~q\) # ((\S0|fstate.state8~q\) # (\S0|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state7~q\,
	datab => \S0|fstate.state11~q\,
	datac => \S0|fstate.state8~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr11~0_combout\);

-- Location: LCCOMB_X81_Y5_N30
\S0|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr11~combout\ = (\S0|fstate.state12~q\) # ((\S0|fstate.state16~q\) # ((\S0|WideOr11~0_combout\) # (!\S0|WideOr9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state12~q\,
	datab => \S0|fstate.state16~q\,
	datac => \S0|WideOr9~2_combout\,
	datad => \S0|WideOr11~0_combout\,
	combout => \S0|WideOr11~combout\);

-- Location: FF_X81_Y5_N13
\F0|Rg5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux3~3_combout\,
	sload => VCC,
	ena => \F0|Rg5|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(0));

-- Location: LCCOMB_X84_Y5_N4
\S0|WideOr13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~1_combout\ = (\S0|fstate.state17~q\) # ((\S0|fstate.state18~q\) # ((\S0|fstate.state4~q\) # (\S0|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state18~q\,
	datac => \S0|fstate.state4~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr13~1_combout\);

-- Location: LCCOMB_X84_Y5_N18
\S0|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr13~combout\ = (\S0|fstate.state5~q\) # ((\S0|WideOr13~1_combout\) # (\S0|fstate.state11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state5~q\,
	datac => \S0|WideOr13~1_combout\,
	datad => \S0|fstate.state11~q\,
	combout => \S0|WideOr13~combout\);

-- Location: LCCOMB_X81_Y5_N12
\F0|U|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~44_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(0))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(0),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg5|DOUT\(0),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~44_combout\);

-- Location: LCCOMB_X82_Y5_N6
\F0|U|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~45_combout\ = (\F0|U|Add0~23_combout\ & ((\F0|U|Add0~44_combout\))) # (!\F0|U|Add0~23_combout\ & (!\F0|U|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~23_combout\,
	datab => \F0|U|Add0~24_combout\,
	datad => \F0|U|Add0~44_combout\,
	combout => \F0|U|Add0~45_combout\);

-- Location: LCCOMB_X84_Y5_N6
\S0|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr19~0_combout\ = (\S0|fstate.state6~q\) # ((\S0|fstate.state19~q\) # (\S0|fstate.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state6~q\,
	datab => \S0|fstate.state19~q\,
	datac => \S0|fstate.state4~q\,
	combout => \S0|WideOr19~0_combout\);

-- Location: FF_X83_Y5_N21
\F0|Rg2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux3~3_combout\,
	sload => VCC,
	ena => \S0|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(0));

-- Location: LCCOMB_X84_Y5_N12
\S0|WideOr17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr17~combout\ = (\S0|fstate.state3~q\) # ((\S0|fstate.state1~q\) # (\S0|fstate.state19~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state3~q\,
	datab => \S0|fstate.state1~q\,
	datad => \S0|fstate.state19~q\,
	combout => \S0|WideOr17~combout\);

-- Location: FF_X84_Y5_N15
\F0|Rg1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux3~3_combout\,
	sload => VCC,
	ena => \S0|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(0));

-- Location: LCCOMB_X84_Y5_N14
\F0|U|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~42_combout\ = (\S0|WideOr13~combout\ & (\F0|Rg2|DOUT\(0))) # (!\S0|WideOr13~combout\ & ((\F0|Rg1|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg1|DOUT\(0),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~42_combout\);

-- Location: LCCOMB_X81_Y5_N28
\F0|U|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~19_combout\ = (\S0|WideOr15~combout\ & ((\S0|WideOr13~combout\) # ((!\S0|WideOr9~1_combout\ & \S0|WideOr9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~1_combout\,
	datab => \S0|WideOr13~combout\,
	datac => \S0|WideOr15~combout\,
	datad => \S0|WideOr9~3_combout\,
	combout => \F0|U|Add0~19_combout\);

-- Location: LCCOMB_X85_Y5_N16
\F0|Rg3|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg3|DOUT[0]~feeder_combout\ = \F0|M3|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|M3|Mux3~3_combout\,
	combout => \F0|Rg3|DOUT[0]~feeder_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X84_Y5_N10
\F0|Rg3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg3|process_0~0_combout\ = (\S0|fstate.state9~q\) # ((\S0|fstate.state7~q\) # ((!\KEY[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \S0|fstate.state9~q\,
	datad => \S0|fstate.state7~q\,
	combout => \F0|Rg3|process_0~0_combout\);

-- Location: LCCOMB_X85_Y5_N4
\F0|Rg3|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg3|process_0~1_combout\ = (\F0|Rg3|process_0~0_combout\) # (\S0|fstate.state19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|process_0~0_combout\,
	datad => \S0|fstate.state19~q\,
	combout => \F0|Rg3|process_0~1_combout\);

-- Location: FF_X85_Y5_N17
\F0|Rg3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \F0|Rg3|DOUT[0]~feeder_combout\,
	ena => \F0|Rg3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(0));

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X84_Y5_N16
\F0|Rg4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg4|process_0~0_combout\ = (\S0|fstate.state12~q\) # ((\S0|fstate.state10~q\) # ((!\KEY[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \S0|fstate.state12~q\,
	datad => \S0|fstate.state10~q\,
	combout => \F0|Rg4|process_0~0_combout\);

-- Location: LCCOMB_X85_Y5_N28
\F0|Rg4|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg4|process_0~1_combout\ = (\F0|Rg4|process_0~0_combout\) # (\S0|fstate.state19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F0|Rg4|process_0~0_combout\,
	datad => \S0|fstate.state19~q\,
	combout => \F0|Rg4|process_0~1_combout\);

-- Location: FF_X85_Y5_N5
\F0|Rg4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux3~3_combout\,
	sload => VCC,
	ena => \F0|Rg4|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(0));

-- Location: LCCOMB_X85_Y5_N2
\F0|U|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~41_combout\ = (\S0|WideOr13~combout\ & ((\F0|Rg4|DOUT\(0)))) # (!\S0|WideOr13~combout\ & (\F0|Rg3|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg4|DOUT\(0),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~41_combout\);

-- Location: LCCOMB_X81_Y5_N16
\F0|U|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~43_combout\ = \F0|U|Add0~19_combout\ $ (((\S0|WideOr11~combout\ & ((!\F0|U|Add0~41_combout\))) # (!\S0|WideOr11~combout\ & (!\F0|U|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~42_combout\,
	datab => \S0|WideOr11~combout\,
	datac => \F0|U|Add0~19_combout\,
	datad => \F0|U|Add0~41_combout\,
	combout => \F0|U|Add0~43_combout\);

-- Location: LCCOMB_X81_Y5_N20
\F0|U|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~18_combout\ = (\S0|WideOr15~combout\ & (!\S0|WideOr11~combout\ & ((\S0|WideOr9~1_combout\) # (!\S0|WideOr9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr9~3_combout\,
	datab => \S0|WideOr15~combout\,
	datac => \S0|WideOr11~combout\,
	datad => \S0|WideOr9~1_combout\,
	combout => \F0|U|Add0~18_combout\);

-- Location: LCCOMB_X81_Y5_N18
\F0|U|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~40_combout\ = (\F0|U|Add0~18_combout\ & ((\F0|U|Add0~19_combout\ & (\F0|Rg6|DOUT\(0))) # (!\F0|U|Add0~19_combout\ & ((\F0|Rg5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(0),
	datab => \F0|U|Add0~18_combout\,
	datac => \F0|U|Add0~19_combout\,
	datad => \F0|Rg5|DOUT\(0),
	combout => \F0|U|Add0~40_combout\);

-- Location: LCCOMB_X82_Y5_N2
\F0|U|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~46_combout\ = (\F0|U|Add0~40_combout\) # ((\F0|U|Add0~45_combout\ & ((\F0|U|Add0~43_combout\) # (\F0|U|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~45_combout\,
	datab => \F0|U|Add0~43_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~40_combout\,
	combout => \F0|U|Add0~46_combout\);

-- Location: LCCOMB_X80_Y5_N0
\F0|M1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux3~0_combout\ = (!\S0|fstate.state18~q\ & (\S0|WideOr15~4_combout\ & (\S0|WideOr7~3_combout\ & !\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state18~q\,
	datab => \S0|WideOr15~4_combout\,
	datac => \S0|WideOr7~3_combout\,
	datad => \S0|fstate.state14~q\,
	combout => \F0|M1|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y5_N16
\F0|U|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~48_cout\ = CARRY(!\S0|WideOr15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0|WideOr15~combout\,
	datad => VCC,
	cout => \F0|U|Add0~48_cout\);

-- Location: LCCOMB_X82_Y5_N18
\F0|U|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~49_combout\ = (\F0|U|Add0~46_combout\ & ((\F0|M1|Mux3~0_combout\ & (\F0|U|Add0~48_cout\ & VCC)) # (!\F0|M1|Mux3~0_combout\ & (!\F0|U|Add0~48_cout\)))) # (!\F0|U|Add0~46_combout\ & ((\F0|M1|Mux3~0_combout\ & (!\F0|U|Add0~48_cout\)) # 
-- (!\F0|M1|Mux3~0_combout\ & ((\F0|U|Add0~48_cout\) # (GND)))))
-- \F0|U|Add0~50\ = CARRY((\F0|U|Add0~46_combout\ & (!\F0|M1|Mux3~0_combout\ & !\F0|U|Add0~48_cout\)) # (!\F0|U|Add0~46_combout\ & ((!\F0|U|Add0~48_cout\) # (!\F0|M1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~46_combout\,
	datab => \F0|M1|Mux3~0_combout\,
	datad => VCC,
	cin => \F0|U|Add0~48_cout\,
	combout => \F0|U|Add0~49_combout\,
	cout => \F0|U|Add0~50\);

-- Location: LCCOMB_X83_Y5_N8
\F0|M3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux3~3_combout\ = (\SW[0]~input_o\ & (!\SW[17]~input_o\ & (\F0|M3|Mux3~2_combout\))) # (!\SW[0]~input_o\ & (((\F0|U|Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \F0|M3|Mux3~2_combout\,
	datac => \F0|U|Add0~49_combout\,
	datad => \SW[0]~input_o\,
	combout => \F0|M3|Mux3~3_combout\);

-- Location: FF_X83_Y5_N9
\F0|Rg6|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \F0|M3|Mux3~3_combout\,
	ena => \F0|Rg6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(0));

-- Location: FF_X83_Y5_N7
\F0|Rg6|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \F0|M3|Mux0~3_combout\,
	ena => \F0|Rg6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(3));

-- Location: LCCOMB_X79_Y5_N0
\S0|reg_fstate~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~4_combout\ = (\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(3) & \S0|flag4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(0),
	datac => \F0|Rg6|DOUT\(3),
	datad => \S0|flag4~combout\,
	combout => \S0|reg_fstate~4_combout\);

-- Location: LCCOMB_X83_Y5_N16
\F0|M3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux1~0_combout\ = (\F0|M3|Mux0~0_combout\ & (((!\SW[0]~input_o\ & \F0|U|Add0~53_combout\)) # (!\F0|M3|Mux0~1_combout\))) # (!\F0|M3|Mux0~0_combout\ & (!\SW[0]~input_o\ & (\F0|U|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux0~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \F0|U|Add0~53_combout\,
	datad => \F0|M3|Mux0~1_combout\,
	combout => \F0|M3|Mux1~0_combout\);

-- Location: FF_X83_Y5_N17
\F0|Rg6|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \F0|M3|Mux1~0_combout\,
	ena => \F0|Rg6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg6|DOUT\(2));

-- Location: LCCOMB_X79_Y5_N30
\S0|reg_fstate~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~5_combout\ = (\S0|reg_fstate~4_combout\ & (\S0|fstate.state18~q\ & !\F0|Rg6|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|reg_fstate~4_combout\,
	datac => \S0|fstate.state18~q\,
	datad => \F0|Rg6|DOUT\(2),
	combout => \S0|reg_fstate~5_combout\);

-- Location: FF_X80_Y5_N3
\S0|fstate.state19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|reg_fstate~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state19~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X84_Y5_N24
\F0|Rg5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg5|process_0~0_combout\ = (\S0|fstate.state16~q\) # ((\S0|fstate.state13~q\) # ((!\KEY[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \S0|fstate.state16~q\,
	datad => \S0|fstate.state13~q\,
	combout => \F0|Rg5|process_0~0_combout\);

-- Location: LCCOMB_X85_Y5_N22
\F0|Rg5|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|Rg5|process_0~1_combout\ = (\S0|fstate.state19~q\) # (\F0|Rg5|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state19~q\,
	datad => \F0|Rg5|process_0~0_combout\,
	combout => \F0|Rg5|process_0~1_combout\);

-- Location: FF_X81_Y5_N15
\F0|Rg5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux0~3_combout\,
	sload => VCC,
	ena => \F0|Rg5|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(3));

-- Location: FF_X81_Y5_N3
\F0|Rg5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux2~3_combout\,
	sload => VCC,
	ena => \F0|Rg5|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(1));

-- Location: FF_X81_Y5_N25
\F0|Rg5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux1~0_combout\,
	sload => VCC,
	ena => \F0|Rg5|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg5|DOUT\(2));

-- Location: LCCOMB_X79_Y5_N22
\S0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector1~0_combout\ = (!\F0|Rg5|DOUT\(3) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(2) & !\F0|Rg5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \S0|Selector1~0_combout\);

-- Location: LCCOMB_X84_Y5_N8
\S0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|Selector1~1_combout\ = (\S0|fstate.state17~q\) # ((\S0|Selector1~0_combout\ & \S0|fstate.state14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|Selector1~0_combout\,
	datad => \S0|fstate.state14~q\,
	combout => \S0|Selector1~1_combout\);

-- Location: FF_X84_Y5_N9
\S0|fstate.state18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state18~q\);

-- Location: LCCOMB_X80_Y5_N16
\F0|M1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux0~0_combout\ = (!\S0|fstate.state18~q\ & (!\S0|WideOr15~4_combout\ & (\S0|WideOr7~3_combout\ & !\S0|fstate.state14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state18~q\,
	datab => \S0|WideOr15~4_combout\,
	datac => \S0|WideOr7~3_combout\,
	datad => \S0|fstate.state14~q\,
	combout => \F0|M1|Mux0~0_combout\);

-- Location: FF_X82_Y5_N5
\F0|Rg4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux0~3_combout\,
	sload => VCC,
	ena => \F0|Rg4|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(3));

-- Location: FF_X83_Y5_N1
\F0|Rg2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux0~3_combout\,
	sload => VCC,
	ena => \S0|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(3));

-- Location: FF_X85_Y5_N1
\F0|Rg3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux0~3_combout\,
	sload => VCC,
	ena => \F0|Rg3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(3));

-- Location: FF_X84_Y5_N29
\F0|Rg1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux0~3_combout\,
	sload => VCC,
	ena => \S0|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(3));

-- Location: LCCOMB_X84_Y5_N28
\F0|U|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~21_combout\ = (\S0|WideOr11~combout\ & (((\S0|WideOr13~combout\)) # (!\F0|Rg3|DOUT\(3)))) # (!\S0|WideOr11~combout\ & (((!\F0|Rg1|DOUT\(3) & !\S0|WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr11~combout\,
	datab => \F0|Rg3|DOUT\(3),
	datac => \F0|Rg1|DOUT\(3),
	datad => \S0|WideOr13~combout\,
	combout => \F0|U|Add0~21_combout\);

-- Location: LCCOMB_X83_Y5_N0
\F0|U|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~22_combout\ = (\S0|WideOr13~combout\ & ((\F0|U|Add0~21_combout\ & (!\F0|Rg4|DOUT\(3))) # (!\F0|U|Add0~21_combout\ & ((!\F0|Rg2|DOUT\(3)))))) # (!\S0|WideOr13~combout\ & (((\F0|U|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~combout\,
	datab => \F0|Rg4|DOUT\(3),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|U|Add0~21_combout\,
	combout => \F0|U|Add0~22_combout\);

-- Location: LCCOMB_X83_Y5_N24
\F0|U|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~25_combout\ = (!\F0|U|Add0~24_combout\ & (!\F0|U|Add0~23_combout\ & (\F0|U|Add0~19_combout\ $ (\F0|U|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~19_combout\,
	datab => \F0|U|Add0~24_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~22_combout\,
	combout => \F0|U|Add0~25_combout\);

-- Location: LCCOMB_X83_Y5_N18
\F0|U|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~26_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(3))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(3),
	datab => \F0|Rg5|DOUT\(3),
	datac => \S0|WideOr13~combout\,
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~26_combout\);

-- Location: LCCOMB_X81_Y5_N14
\F0|U|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~20_combout\ = (\F0|U|Add0~18_combout\ & ((\F0|U|Add0~19_combout\ & (\F0|Rg6|DOUT\(3))) # (!\F0|U|Add0~19_combout\ & ((\F0|Rg5|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~19_combout\,
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg5|DOUT\(3),
	datad => \F0|U|Add0~18_combout\,
	combout => \F0|U|Add0~20_combout\);

-- Location: LCCOMB_X83_Y5_N12
\F0|U|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~27_combout\ = (\F0|U|Add0~25_combout\) # ((\F0|U|Add0~20_combout\) # ((\F0|U|Add0~26_combout\ & \F0|U|Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~25_combout\,
	datab => \F0|U|Add0~26_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~20_combout\,
	combout => \F0|U|Add0~27_combout\);

-- Location: LCCOMB_X81_Y5_N24
\F0|U|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~28_combout\ = (\F0|U|Add0~18_combout\ & ((\F0|U|Add0~19_combout\ & (\F0|Rg6|DOUT\(2))) # (!\F0|U|Add0~19_combout\ & ((\F0|Rg5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~19_combout\,
	datab => \F0|Rg6|DOUT\(2),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|U|Add0~18_combout\,
	combout => \F0|U|Add0~28_combout\);

-- Location: LCCOMB_X83_Y5_N14
\F0|U|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~32_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(2))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr13~combout\,
	datab => \F0|Rg6|DOUT\(2),
	datac => \F0|Rg5|DOUT\(2),
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~32_combout\);

-- Location: FF_X85_Y5_N19
\F0|Rg3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux1~0_combout\,
	sload => VCC,
	ena => \F0|Rg3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(2));

-- Location: FF_X82_Y5_N13
\F0|Rg4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux1~0_combout\,
	sload => VCC,
	ena => \F0|Rg4|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(2));

-- Location: FF_X83_Y5_N11
\F0|Rg2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux1~0_combout\,
	sload => VCC,
	ena => \S0|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(2));

-- Location: FF_X84_Y5_N1
\F0|Rg1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux1~0_combout\,
	sload => VCC,
	ena => \S0|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(2));

-- Location: LCCOMB_X84_Y5_N0
\F0|U|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~29_combout\ = (\S0|WideOr13~combout\ & (((\S0|WideOr11~combout\)) # (!\F0|Rg2|DOUT\(2)))) # (!\S0|WideOr13~combout\ & (((!\F0|Rg1|DOUT\(2) & !\S0|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(2),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg1|DOUT\(2),
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~29_combout\);

-- Location: LCCOMB_X84_Y5_N26
\F0|U|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~30_combout\ = (\S0|WideOr11~combout\ & ((\F0|U|Add0~29_combout\ & ((!\F0|Rg4|DOUT\(2)))) # (!\F0|U|Add0~29_combout\ & (!\F0|Rg3|DOUT\(2))))) # (!\S0|WideOr11~combout\ & (((\F0|U|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(2),
	datab => \S0|WideOr11~combout\,
	datac => \F0|Rg4|DOUT\(2),
	datad => \F0|U|Add0~29_combout\,
	combout => \F0|U|Add0~30_combout\);

-- Location: LCCOMB_X82_Y5_N0
\F0|U|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~31_combout\ = (!\F0|U|Add0~23_combout\ & (!\F0|U|Add0~24_combout\ & (\F0|U|Add0~19_combout\ $ (\F0|U|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~23_combout\,
	datab => \F0|U|Add0~24_combout\,
	datac => \F0|U|Add0~19_combout\,
	datad => \F0|U|Add0~30_combout\,
	combout => \F0|U|Add0~31_combout\);

-- Location: LCCOMB_X82_Y5_N10
\F0|U|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~33_combout\ = (\F0|U|Add0~28_combout\) # ((\F0|U|Add0~31_combout\) # ((\F0|U|Add0~32_combout\ & \F0|U|Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~28_combout\,
	datab => \F0|U|Add0~32_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~31_combout\,
	combout => \F0|U|Add0~33_combout\);

-- Location: LCCOMB_X81_Y5_N2
\F0|U|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~34_combout\ = (\F0|U|Add0~18_combout\ & ((\F0|U|Add0~19_combout\ & (\F0|Rg6|DOUT\(1))) # (!\F0|U|Add0~19_combout\ & ((\F0|Rg5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~19_combout\,
	datab => \F0|Rg6|DOUT\(1),
	datac => \F0|Rg5|DOUT\(1),
	datad => \F0|U|Add0~18_combout\,
	combout => \F0|U|Add0~34_combout\);

-- Location: FF_X83_Y5_N31
\F0|Rg2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux2~3_combout\,
	sload => VCC,
	ena => \S0|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg2|DOUT\(1));

-- Location: FF_X82_Y5_N7
\F0|Rg4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux2~3_combout\,
	sload => VCC,
	ena => \F0|Rg4|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg4|DOUT\(1));

-- Location: FF_X85_Y5_N31
\F0|Rg3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux2~3_combout\,
	sload => VCC,
	ena => \F0|Rg3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg3|DOUT\(1));

-- Location: LCCOMB_X84_Y5_N22
\F0|U|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~35_combout\ = (\S0|WideOr13~combout\ & (((\S0|WideOr11~combout\)))) # (!\S0|WideOr13~combout\ & ((\S0|WideOr11~combout\ & (!\F0|Rg3|DOUT\(1))) # (!\S0|WideOr11~combout\ & ((!\F0|Rg1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \S0|WideOr13~combout\,
	datac => \F0|Rg1|DOUT\(1),
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~35_combout\);

-- Location: LCCOMB_X83_Y5_N28
\F0|U|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~36_combout\ = (\S0|WideOr13~combout\ & ((\F0|U|Add0~35_combout\ & ((!\F0|Rg4|DOUT\(1)))) # (!\F0|U|Add0~35_combout\ & (!\F0|Rg2|DOUT\(1))))) # (!\S0|WideOr13~combout\ & (((\F0|U|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(1),
	datab => \F0|Rg4|DOUT\(1),
	datac => \S0|WideOr13~combout\,
	datad => \F0|U|Add0~35_combout\,
	combout => \F0|U|Add0~36_combout\);

-- Location: LCCOMB_X82_Y5_N8
\F0|U|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~37_combout\ = (!\F0|U|Add0~24_combout\ & (!\F0|U|Add0~23_combout\ & (\F0|U|Add0~19_combout\ $ (\F0|U|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~19_combout\,
	datab => \F0|U|Add0~24_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~36_combout\,
	combout => \F0|U|Add0~37_combout\);

-- Location: LCCOMB_X83_Y5_N2
\F0|U|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~38_combout\ = (\S0|WideOr11~combout\) # ((\S0|WideOr13~combout\ & (!\F0|Rg6|DOUT\(1))) # (!\S0|WideOr13~combout\ & ((!\F0|Rg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg5|DOUT\(1),
	datac => \S0|WideOr13~combout\,
	datad => \S0|WideOr11~combout\,
	combout => \F0|U|Add0~38_combout\);

-- Location: LCCOMB_X82_Y5_N30
\F0|U|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~39_combout\ = (\F0|U|Add0~34_combout\) # ((\F0|U|Add0~37_combout\) # ((\F0|U|Add0~23_combout\ & \F0|U|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~34_combout\,
	datab => \F0|U|Add0~37_combout\,
	datac => \F0|U|Add0~23_combout\,
	datad => \F0|U|Add0~38_combout\,
	combout => \F0|U|Add0~39_combout\);

-- Location: LCCOMB_X82_Y5_N20
\F0|U|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~51_combout\ = ((\F0|M1|Mux2~2_combout\ $ (\F0|U|Add0~39_combout\ $ (!\F0|U|Add0~50\)))) # (GND)
-- \F0|U|Add0~52\ = CARRY((\F0|M1|Mux2~2_combout\ & ((\F0|U|Add0~39_combout\) # (!\F0|U|Add0~50\))) # (!\F0|M1|Mux2~2_combout\ & (\F0|U|Add0~39_combout\ & !\F0|U|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M1|Mux2~2_combout\,
	datab => \F0|U|Add0~39_combout\,
	datad => VCC,
	cin => \F0|U|Add0~50\,
	combout => \F0|U|Add0~51_combout\,
	cout => \F0|U|Add0~52\);

-- Location: LCCOMB_X82_Y5_N22
\F0|U|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~53_combout\ = (\F0|M1|Mux1~2_combout\ & ((\F0|U|Add0~33_combout\ & (!\F0|U|Add0~52\)) # (!\F0|U|Add0~33_combout\ & ((\F0|U|Add0~52\) # (GND))))) # (!\F0|M1|Mux1~2_combout\ & ((\F0|U|Add0~33_combout\ & (\F0|U|Add0~52\ & VCC)) # 
-- (!\F0|U|Add0~33_combout\ & (!\F0|U|Add0~52\))))
-- \F0|U|Add0~54\ = CARRY((\F0|M1|Mux1~2_combout\ & ((!\F0|U|Add0~52\) # (!\F0|U|Add0~33_combout\))) # (!\F0|M1|Mux1~2_combout\ & (!\F0|U|Add0~33_combout\ & !\F0|U|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M1|Mux1~2_combout\,
	datab => \F0|U|Add0~33_combout\,
	datad => VCC,
	cin => \F0|U|Add0~52\,
	combout => \F0|U|Add0~53_combout\,
	cout => \F0|U|Add0~54\);

-- Location: LCCOMB_X82_Y5_N24
\F0|U|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Add0~55_combout\ = \F0|M1|Mux0~0_combout\ $ (\F0|U|Add0~27_combout\ $ (!\F0|U|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M1|Mux0~0_combout\,
	datab => \F0|U|Add0~27_combout\,
	cin => \F0|U|Add0~54\,
	combout => \F0|U|Add0~55_combout\);

-- Location: LCCOMB_X82_Y5_N4
\S0|reg_fstate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~1_combout\ = (!\F0|U|Add0~49_combout\ & !\F0|U|Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F0|U|Add0~49_combout\,
	datad => \F0|U|Add0~51_combout\,
	combout => \S0|reg_fstate~1_combout\);

-- Location: LCCOMB_X82_Y5_N26
\S0|reg_fstate~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~2_combout\ = (\S0|fstate.state14~q\ & ((\F0|U|Add0~53_combout\) # ((\F0|U|Add0~55_combout\) # (!\S0|reg_fstate~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~53_combout\,
	datab => \S0|fstate.state14~q\,
	datac => \F0|U|Add0~55_combout\,
	datad => \S0|reg_fstate~1_combout\,
	combout => \S0|reg_fstate~2_combout\);

-- Location: FF_X82_Y5_N27
\S0|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state15~q\);

-- Location: LCCOMB_X80_Y5_N28
\S0|reg_fstate~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~9_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Flag~0_combout\,
	datab => \S0|fstate.state15~q\,
	combout => \S0|reg_fstate~9_combout\);

-- Location: FF_X80_Y5_N29
\S0|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state16~q\);

-- Location: FF_X84_Y5_N13
\S0|fstate.state17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state16~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state17~q\);

-- Location: LCCOMB_X84_Y5_N30
\S0|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr7~1_combout\ = (\S0|fstate.state17~q\) # ((\S0|fstate.state1~q\) # ((\S0|fstate.state4~q\) # (\S0|fstate.state10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state17~q\,
	datab => \S0|fstate.state1~q\,
	datac => \S0|fstate.state4~q\,
	datad => \S0|fstate.state10~q\,
	combout => \S0|WideOr7~1_combout\);

-- Location: LCCOMB_X81_Y5_N26
\S0|WideOr7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr7~2_combout\ = (\S0|fstate.state8~q\) # ((\S0|fstate.state2~q\) # ((\S0|fstate.state7~q\) # (\S0|fstate.state15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state8~q\,
	datab => \S0|fstate.state2~q\,
	datac => \S0|fstate.state7~q\,
	datad => \S0|fstate.state15~q\,
	combout => \S0|WideOr7~2_combout\);

-- Location: LCCOMB_X80_Y5_N20
\S0|WideOr7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|WideOr7~3_combout\ = (\S0|WideOr7~1_combout\) # ((\S0|fstate.state14~q\) # ((\S0|fstate.state13~q\) # (\S0|WideOr7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr7~1_combout\,
	datab => \S0|fstate.state14~q\,
	datac => \S0|fstate.state13~q\,
	datad => \S0|WideOr7~2_combout\,
	combout => \S0|WideOr7~3_combout\);

-- Location: LCCOMB_X80_Y5_N30
\F0|M1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux1~2_combout\ = (\S0|WideOr7~3_combout\ & (((!\S0|fstate.state14~q\ & !\S0|fstate.state18~q\)) # (!\S0|WideOr15~4_combout\))) # (!\S0|WideOr7~3_combout\ & ((\S0|WideOr15~4_combout\) # ((\S0|fstate.state14~q\) # (\S0|fstate.state18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|WideOr7~3_combout\,
	datab => \S0|WideOr15~4_combout\,
	datac => \S0|fstate.state14~q\,
	datad => \S0|fstate.state18~q\,
	combout => \F0|M1|Mux1~2_combout\);

-- Location: LCCOMB_X82_Y5_N28
\F0|U|Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|U|Flag~0_combout\ = (!\F0|U|Add0~53_combout\ & (!\F0|U|Add0~55_combout\ & (!\F0|U|Add0~49_combout\ & !\F0|U|Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Add0~53_combout\,
	datab => \F0|U|Add0~55_combout\,
	datac => \F0|U|Add0~49_combout\,
	datad => \F0|U|Add0~51_combout\,
	combout => \F0|U|Flag~0_combout\);

-- Location: LCCOMB_X80_Y5_N4
\S0|reg_fstate~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~7_combout\ = (\F0|U|Flag~0_combout\ & \S0|fstate.state8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|U|Flag~0_combout\,
	datad => \S0|fstate.state8~q\,
	combout => \S0|reg_fstate~7_combout\);

-- Location: FF_X80_Y5_N5
\S0|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state9~q\);

-- Location: FF_X84_Y5_N11
\S0|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state10~q\);

-- Location: FF_X81_Y5_N11
\S0|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state11~q\);

-- Location: LCCOMB_X80_Y5_N8
\S0|reg_fstate~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S0|reg_fstate~8_combout\ = (\S0|fstate.state11~q\ & \F0|U|Flag~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state11~q\,
	datad => \F0|U|Flag~0_combout\,
	combout => \S0|reg_fstate~8_combout\);

-- Location: FF_X80_Y5_N9
\S0|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	d => \S0|reg_fstate~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state12~q\);

-- Location: FF_X80_Y5_N27
\S0|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state13~q\);

-- Location: FF_X81_Y5_N9
\S0|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \S0|fstate.state13~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S0|fstate.state14~q\);

-- Location: LCCOMB_X80_Y5_N22
\F0|M1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M1|Mux2~2_combout\ = (\S0|WideOr15~4_combout\ & (!\S0|WideOr7~3_combout\ & ((\S0|fstate.state14~q\) # (\S0|fstate.state18~q\)))) # (!\S0|WideOr15~4_combout\ & (!\S0|fstate.state14~q\ & (!\S0|fstate.state18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0|fstate.state14~q\,
	datab => \S0|WideOr15~4_combout\,
	datac => \S0|fstate.state18~q\,
	datad => \S0|WideOr7~3_combout\,
	combout => \F0|M1|Mux2~2_combout\);

-- Location: LCCOMB_X83_Y5_N22
\F0|M3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0|M3|Mux2~3_combout\ = (\F0|M3|Mux2~2_combout\) # ((\F0|U|Add0~51_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|M3|Mux2~2_combout\,
	datac => \F0|U|Add0~51_combout\,
	datad => \SW[0]~input_o\,
	combout => \F0|M3|Mux2~3_combout\);

-- Location: FF_X84_Y5_N23
\F0|Rg1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \valor_clock~clkctrl_outclk\,
	asdata => \F0|M3|Mux2~3_combout\,
	sload => VCC,
	ena => \S0|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0|Rg1|DOUT\(1));

-- Location: LCCOMB_X114_Y17_N4
\display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(1) $ (\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(3) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(0) $ (\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\display0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = (\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0) $ (((\F0|Rg1|DOUT\(1)) # (\F0|Rg1|DOUT\(3)))))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(0) & \F0|Rg1|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y17_N0
\display0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~2_combout\ = (\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(2) & ((\F0|Rg1|DOUT\(1)) # (!\F0|Rg1|DOUT\(0))))) # (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(0) & !\F0|Rg1|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y17_N26
\display0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = (\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(0) & ((\F0|Rg1|DOUT\(2)))) # (!\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) & !\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(0) $ (\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y17_N12
\display0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = (\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(3)))) # (!\F0|Rg1|DOUT\(1) & ((\F0|Rg1|DOUT\(2) & ((!\F0|Rg1|DOUT\(3)))) # (!\F0|Rg1|DOUT\(2) & (\F0|Rg1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y17_N22
\display0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = (\F0|Rg1|DOUT\(1) & (!\F0|Rg1|DOUT\(3) & ((\F0|Rg1|DOUT\(0)) # (!\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(0) & (\F0|Rg1|DOUT\(3) $ (!\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y17_N8
\display0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = (\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(3) & (\F0|Rg1|DOUT\(1) $ (!\F0|Rg1|DOUT\(2))))) # (!\F0|Rg1|DOUT\(0) & (!\F0|Rg1|DOUT\(1) & (\F0|Rg1|DOUT\(3) $ (!\F0|Rg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg1|DOUT\(1),
	datab => \F0|Rg1|DOUT\(0),
	datac => \F0|Rg1|DOUT\(3),
	datad => \F0|Rg1|DOUT\(2),
	combout => \display0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X83_Y5_N4
\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(1) $ (\F0|Rg2|DOUT\(2))))) # (!\F0|Rg2|DOUT\(3) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(0) $ (\F0|Rg2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(1),
	datad => \F0|Rg2|DOUT\(2),
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X83_Y5_N10
\display1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = (\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(0) $ (((\F0|Rg2|DOUT\(3)) # (\F0|Rg2|DOUT\(1)))))) # (!\F0|Rg2|DOUT\(2) & (\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(0) & \F0|Rg2|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(2),
	datad => \F0|Rg2|DOUT\(1),
	combout => \display1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X83_Y5_N26
\display1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = (\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(2) & ((\F0|Rg2|DOUT\(1)) # (!\F0|Rg2|DOUT\(0))))) # (!\F0|Rg2|DOUT\(3) & (!\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(1) & !\F0|Rg2|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(1),
	datad => \F0|Rg2|DOUT\(2),
	combout => \display1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X83_Y5_N30
\display1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(0) & ((\F0|Rg2|DOUT\(2)))) # (!\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(3) & !\F0|Rg2|DOUT\(2))))) # (!\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(0) $ (\F0|Rg2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(0),
	datac => \F0|Rg2|DOUT\(1),
	datad => \F0|Rg2|DOUT\(2),
	combout => \display1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X83_Y5_N20
\display1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = (\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(0)))) # (!\F0|Rg2|DOUT\(1) & ((\F0|Rg2|DOUT\(2) & (!\F0|Rg2|DOUT\(3))) # (!\F0|Rg2|DOUT\(2) & ((\F0|Rg2|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(3),
	datab => \F0|Rg2|DOUT\(1),
	datac => \F0|Rg2|DOUT\(0),
	datad => \F0|Rg2|DOUT\(2),
	combout => \display1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X79_Y5_N20
\display1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = (\F0|Rg2|DOUT\(1) & (!\F0|Rg2|DOUT\(3) & ((\F0|Rg2|DOUT\(0)) # (!\F0|Rg2|DOUT\(2))))) # (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(0) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(1),
	datab => \F0|Rg2|DOUT\(2),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X79_Y5_N10
\display1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = (\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(3) & (\F0|Rg2|DOUT\(1) $ (!\F0|Rg2|DOUT\(2))))) # (!\F0|Rg2|DOUT\(0) & (!\F0|Rg2|DOUT\(1) & (\F0|Rg2|DOUT\(2) $ (!\F0|Rg2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg2|DOUT\(1),
	datab => \F0|Rg2|DOUT\(2),
	datac => \F0|Rg2|DOUT\(3),
	datad => \F0|Rg2|DOUT\(0),
	combout => \display1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X85_Y5_N0
\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(1) $ (\F0|Rg3|DOUT\(2))))) # (!\F0|Rg3|DOUT\(3) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(0) $ (\F0|Rg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(1),
	datab => \F0|Rg3|DOUT\(0),
	datac => \F0|Rg3|DOUT\(3),
	datad => \F0|Rg3|DOUT\(2),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X85_Y5_N12
\display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) $ (((\F0|Rg3|DOUT\(3)) # (\F0|Rg3|DOUT\(1)))))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(1) & \F0|Rg3|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(2),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X85_Y5_N14
\display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(1)) # (!\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(3) & (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(1) & !\F0|Rg3|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(2),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X85_Y5_N24
\display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(0)))) # (!\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(3) & !\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(1) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(2) $ (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(2),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X85_Y5_N6
\display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (\F0|Rg3|DOUT\(1) & (!\F0|Rg3|DOUT\(3) & ((\F0|Rg3|DOUT\(0))))) # (!\F0|Rg3|DOUT\(1) & ((\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(3))) # (!\F0|Rg3|DOUT\(2) & ((\F0|Rg3|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(2),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X85_Y5_N30
\display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (\F0|Rg3|DOUT\(2) & (\F0|Rg3|DOUT\(0) & (\F0|Rg3|DOUT\(3) $ (\F0|Rg3|DOUT\(1))))) # (!\F0|Rg3|DOUT\(2) & (!\F0|Rg3|DOUT\(3) & ((\F0|Rg3|DOUT\(1)) # (\F0|Rg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(2),
	datac => \F0|Rg3|DOUT\(1),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X85_Y5_N18
\display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(3) & (\F0|Rg3|DOUT\(1) $ (!\F0|Rg3|DOUT\(2))))) # (!\F0|Rg3|DOUT\(0) & (!\F0|Rg3|DOUT\(1) & (\F0|Rg3|DOUT\(3) $ (!\F0|Rg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg3|DOUT\(3),
	datab => \F0|Rg3|DOUT\(1),
	datac => \F0|Rg3|DOUT\(2),
	datad => \F0|Rg3|DOUT\(0),
	combout => \display2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X86_Y5_N4
\display3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(2) $ (\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(3) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(2) $ (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(3),
	datab => \F0|Rg4|DOUT\(2),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X86_Y5_N30
\display3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~1_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) $ (((\F0|Rg4|DOUT\(3)) # (\F0|Rg4|DOUT\(1)))))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(0) & \F0|Rg4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(3),
	datab => \F0|Rg4|DOUT\(2),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X86_Y5_N20
\display3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~2_combout\ = (\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) & ((\F0|Rg4|DOUT\(1)) # (!\F0|Rg4|DOUT\(0))))) # (!\F0|Rg4|DOUT\(3) & (!\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(0) & \F0|Rg4|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(3),
	datab => \F0|Rg4|DOUT\(2),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(1),
	combout => \display3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X85_Y5_N10
\display3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~3_combout\ = (\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0))) # (!\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(0) & \F0|Rg4|DOUT\(3))))) # (!\F0|Rg4|DOUT\(1) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) $ (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(1),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(3),
	combout => \display3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X85_Y5_N20
\display3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~4_combout\ = (\F0|Rg4|DOUT\(1) & (((\F0|Rg4|DOUT\(0) & !\F0|Rg4|DOUT\(3))))) # (!\F0|Rg4|DOUT\(1) & ((\F0|Rg4|DOUT\(2) & ((!\F0|Rg4|DOUT\(3)))) # (!\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(1),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(3),
	combout => \display3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X85_Y5_N26
\display3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~5_combout\ = (\F0|Rg4|DOUT\(2) & (\F0|Rg4|DOUT\(0) & (\F0|Rg4|DOUT\(1) $ (\F0|Rg4|DOUT\(3))))) # (!\F0|Rg4|DOUT\(2) & (!\F0|Rg4|DOUT\(3) & ((\F0|Rg4|DOUT\(1)) # (\F0|Rg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(1),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(3),
	combout => \display3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X85_Y5_N8
\display3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~6_combout\ = (\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(3) & (\F0|Rg4|DOUT\(2) $ (!\F0|Rg4|DOUT\(1))))) # (!\F0|Rg4|DOUT\(0) & (!\F0|Rg4|DOUT\(1) & (\F0|Rg4|DOUT\(2) $ (!\F0|Rg4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg4|DOUT\(2),
	datab => \F0|Rg4|DOUT\(1),
	datac => \F0|Rg4|DOUT\(0),
	datad => \F0|Rg4|DOUT\(3),
	combout => \display3|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X79_Y5_N12
\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(1) $ (\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(3) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(2) $ (\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X79_Y5_N14
\display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(0) $ (((\F0|Rg5|DOUT\(3)) # (\F0|Rg5|DOUT\(1)))))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & \F0|Rg5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X79_Y5_N24
\display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(2) & ((\F0|Rg5|DOUT\(1)) # (!\F0|Rg5|DOUT\(0))))) # (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(2) & !\F0|Rg5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X79_Y5_N18
\display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(2) & ((\F0|Rg5|DOUT\(0)))) # (!\F0|Rg5|DOUT\(2) & (\F0|Rg5|DOUT\(3) & !\F0|Rg5|DOUT\(0))))) # (!\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(2) $ (\F0|Rg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X79_Y5_N4
\display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(3) & ((\F0|Rg5|DOUT\(0))))) # (!\F0|Rg5|DOUT\(1) & ((\F0|Rg5|DOUT\(2) & (!\F0|Rg5|DOUT\(3))) # (!\F0|Rg5|DOUT\(2) & ((\F0|Rg5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X79_Y5_N26
\display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (\F0|Rg5|DOUT\(1) & (!\F0|Rg5|DOUT\(3) & ((\F0|Rg5|DOUT\(0)) # (!\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(0) & (\F0|Rg5|DOUT\(3) $ (!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X79_Y5_N28
\display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(3) & (\F0|Rg5|DOUT\(1) $ (!\F0|Rg5|DOUT\(2))))) # (!\F0|Rg5|DOUT\(0) & (!\F0|Rg5|DOUT\(1) & (\F0|Rg5|DOUT\(3) $ (!\F0|Rg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg5|DOUT\(3),
	datab => \F0|Rg5|DOUT\(1),
	datac => \F0|Rg5|DOUT\(2),
	datad => \F0|Rg5|DOUT\(0),
	combout => \display4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X77_Y5_N12
\display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = (\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(0) & (\F0|Rg6|DOUT\(1) $ (\F0|Rg6|DOUT\(2))))) # (!\F0|Rg6|DOUT\(3) & (!\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(2) $ (\F0|Rg6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X77_Y5_N30
\display5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = (\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(0) $ (((\F0|Rg6|DOUT\(1)) # (\F0|Rg6|DOUT\(3)))))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(3) & \F0|Rg6|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X77_Y5_N20
\display5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = (\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(2) & ((\F0|Rg6|DOUT\(1)) # (!\F0|Rg6|DOUT\(0))))) # (!\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(2) & !\F0|Rg6|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y5_N26
\display5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = (\F0|Rg6|DOUT\(1) & ((\F0|Rg6|DOUT\(2) & ((\F0|Rg6|DOUT\(0)))) # (!\F0|Rg6|DOUT\(2) & (\F0|Rg6|DOUT\(3) & !\F0|Rg6|DOUT\(0))))) # (!\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(2) $ (\F0|Rg6|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X77_Y5_N28
\display5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = (\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(3) & ((\F0|Rg6|DOUT\(0))))) # (!\F0|Rg6|DOUT\(1) & ((\F0|Rg6|DOUT\(2) & (!\F0|Rg6|DOUT\(3))) # (!\F0|Rg6|DOUT\(2) & ((\F0|Rg6|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X77_Y5_N10
\display5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = (\F0|Rg6|DOUT\(1) & (!\F0|Rg6|DOUT\(3) & ((\F0|Rg6|DOUT\(0)) # (!\F0|Rg6|DOUT\(2))))) # (!\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(0) & (\F0|Rg6|DOUT\(3) $ (!\F0|Rg6|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X77_Y5_N4
\display5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = (\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(3) & (\F0|Rg6|DOUT\(1) $ (!\F0|Rg6|DOUT\(2))))) # (!\F0|Rg6|DOUT\(0) & (!\F0|Rg6|DOUT\(1) & (\F0|Rg6|DOUT\(3) $ (!\F0|Rg6|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Rg6|DOUT\(1),
	datab => \F0|Rg6|DOUT\(3),
	datac => \F0|Rg6|DOUT\(2),
	datad => \F0|Rg6|DOUT\(0),
	combout => \display5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

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


