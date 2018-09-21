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

-- DATE "09/20/2018 20:47:46"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevel IS
    PORT (
	clk : IN std_logic;
	Sel_Ula : IN std_logic;
	Sel_Mux : IN std_logic_vector(2 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- clk	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Mux[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Mux[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Mux[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Ula	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_Sel_Ula : std_logic;
SIGNAL ww_Sel_Mux : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Sel_Mux[1]~input_o\ : std_logic;
SIGNAL \Sel_Mux[0]~input_o\ : std_logic;
SIGNAL \Sel_Mux[2]~input_o\ : std_logic;
SIGNAL \P1|Mux3~0_combout\ : std_logic;
SIGNAL \P1|Mux2~0_combout\ : std_logic;
SIGNAL \Sel_Ula~input_o\ : std_logic;
SIGNAL \P2|Add0~1_cout\ : std_logic;
SIGNAL \P2|Add0~2_combout\ : std_logic;
SIGNAL \P1|Mux1~0_combout\ : std_logic;
SIGNAL \P2|Add0~3\ : std_logic;
SIGNAL \P2|Add0~4_combout\ : std_logic;
SIGNAL \P1|Mux0~0_combout\ : std_logic;
SIGNAL \P2|Add0~5\ : std_logic;
SIGNAL \P2|Add0~6_combout\ : std_logic;
SIGNAL \P1|ALT_INV_Mux3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_Sel_Ula <= Sel_Ula;
ww_Sel_Mux <= Sel_Mux;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\P1|ALT_INV_Mux3~0_combout\ <= NOT \P1|Mux3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Add0~2_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Add0~4_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Add0~6_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X67_Y73_N8
\Sel_Mux[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_Mux(1),
	o => \Sel_Mux[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\Sel_Mux[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_Mux(0),
	o => \Sel_Mux[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\Sel_Mux[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_Mux(2),
	o => \Sel_Mux[2]~input_o\);

-- Location: LCCOMB_X66_Y72_N8
\P1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P1|Mux3~0_combout\ = (!\Sel_Mux[1]~input_o\ & (!\Sel_Mux[0]~input_o\ & \Sel_Mux[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Mux[1]~input_o\,
	datac => \Sel_Mux[0]~input_o\,
	datad => \Sel_Mux[2]~input_o\,
	combout => \P1|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y72_N10
\P1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P1|Mux2~0_combout\ = (\Sel_Mux[2]~input_o\) # ((!\Sel_Mux[1]~input_o\ & \Sel_Mux[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Mux[1]~input_o\,
	datac => \Sel_Mux[0]~input_o\,
	datad => \Sel_Mux[2]~input_o\,
	combout => \P1|Mux2~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\Sel_Ula~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_Ula,
	o => \Sel_Ula~input_o\);

-- Location: LCCOMB_X66_Y72_N22
\P2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2|Add0~1_cout\ = CARRY(\P1|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1|Mux3~0_combout\,
	datad => VCC,
	cout => \P2|Add0~1_cout\);

-- Location: LCCOMB_X66_Y72_N24
\P2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2|Add0~2_combout\ = (\P1|Mux2~0_combout\ & ((\Sel_Ula~input_o\ & (!\P2|Add0~1_cout\)) # (!\Sel_Ula~input_o\ & ((\P2|Add0~1_cout\) # (GND))))) # (!\P1|Mux2~0_combout\ & ((\Sel_Ula~input_o\ & (\P2|Add0~1_cout\ & VCC)) # (!\Sel_Ula~input_o\ & 
-- (!\P2|Add0~1_cout\))))
-- \P2|Add0~3\ = CARRY((\P1|Mux2~0_combout\ & ((!\P2|Add0~1_cout\) # (!\Sel_Ula~input_o\))) # (!\P1|Mux2~0_combout\ & (!\Sel_Ula~input_o\ & !\P2|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P1|Mux2~0_combout\,
	datab => \Sel_Ula~input_o\,
	datad => VCC,
	cin => \P2|Add0~1_cout\,
	combout => \P2|Add0~2_combout\,
	cout => \P2|Add0~3\);

-- Location: LCCOMB_X66_Y72_N12
\P1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P1|Mux1~0_combout\ = (!\Sel_Mux[2]~input_o\ & (\Sel_Mux[1]~input_o\ $ (\Sel_Mux[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Mux[1]~input_o\,
	datac => \Sel_Mux[0]~input_o\,
	datad => \Sel_Mux[2]~input_o\,
	combout => \P1|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y72_N26
\P2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2|Add0~4_combout\ = ((\P1|Mux1~0_combout\ $ (\Sel_Ula~input_o\ $ (!\P2|Add0~3\)))) # (GND)
-- \P2|Add0~5\ = CARRY((\P1|Mux1~0_combout\ & ((\Sel_Ula~input_o\) # (!\P2|Add0~3\))) # (!\P1|Mux1~0_combout\ & (\Sel_Ula~input_o\ & !\P2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P1|Mux1~0_combout\,
	datab => \Sel_Ula~input_o\,
	datad => VCC,
	cin => \P2|Add0~3\,
	combout => \P2|Add0~4_combout\,
	cout => \P2|Add0~5\);

-- Location: LCCOMB_X66_Y72_N6
\P1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P1|Mux0~0_combout\ = (\Sel_Mux[1]~input_o\ & (\Sel_Mux[0]~input_o\ & !\Sel_Mux[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Mux[1]~input_o\,
	datac => \Sel_Mux[0]~input_o\,
	datad => \Sel_Mux[2]~input_o\,
	combout => \P1|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y72_N28
\P2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2|Add0~6_combout\ = \P1|Mux0~0_combout\ $ (\P2|Add0~5\ $ (\Sel_Ula~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P1|Mux0~0_combout\,
	datad => \Sel_Ula~input_o\,
	cin => \P2|Add0~5\,
	combout => \P2|Add0~6_combout\);

-- Location: IOIBUF_X45_Y0_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


