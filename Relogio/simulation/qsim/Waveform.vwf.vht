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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/20/2018 20:49:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TopLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TopLevel_vhd_vec_tst IS
END TopLevel_vhd_vec_tst;
ARCHITECTURE TopLevel_arch OF TopLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sel_Mux : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Sel_Ula : STD_LOGIC;
COMPONENT TopLevel
	PORT (
	clk : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sel_Mux : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Sel_Ula : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Q => Q,
	Sel_Mux => Sel_Mux,
	Sel_Ula => Sel_Ula
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- Sel_Mux[2]
t_prcs_Sel_Mux_2: PROCESS
BEGIN
	Sel_Mux(2) <= '0';
	WAIT FOR 720000 ps;
	Sel_Mux(2) <= '1';
WAIT;
END PROCESS t_prcs_Sel_Mux_2;
-- Sel_Mux[1]
t_prcs_Sel_Mux_1: PROCESS
BEGIN
	Sel_Mux(1) <= '0';
	WAIT FOR 360000 ps;
	Sel_Mux(1) <= '1';
	WAIT FOR 360000 ps;
	Sel_Mux(1) <= '0';
WAIT;
END PROCESS t_prcs_Sel_Mux_1;
-- Sel_Mux[0]
t_prcs_Sel_Mux_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Sel_Mux(0) <= '0';
		WAIT FOR 180000 ps;
		Sel_Mux(0) <= '1';
		WAIT FOR 180000 ps;
	END LOOP;
	Sel_Mux(0) <= '0';
	WAIT FOR 180000 ps;
	Sel_Mux(0) <= '1';
WAIT;
END PROCESS t_prcs_Sel_Mux_0;

-- Sel_Ula
t_prcs_Sel_Ula: PROCESS
BEGIN
	Sel_Ula <= '0';
	WAIT FOR 440000 ps;
	Sel_Ula <= '1';
	WAIT FOR 160000 ps;
	Sel_Ula <= '0';
	WAIT FOR 50000 ps;
	Sel_Ula <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 3
	LOOP
		Sel_Ula <= '0';
		WAIT FOR 50000 ps;
		Sel_Ula <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_Sel_Ula;
END TopLevel_arch;
