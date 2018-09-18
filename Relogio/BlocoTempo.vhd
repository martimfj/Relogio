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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"
-- CREATED		"Tue Sep 18 15:06:50 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BlocoTempo IS 
	PORT
	(
		rst :  IN  STD_LOGIC;
		constante :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC
	);
END BlocoTempo;

ARCHITECTURE bdf_type OF BlocoTempo IS 

SIGNAL	gdfx_temp0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Q <= DFF_inst;
SYNTHESIZED_WIRE_4 <= '0';



PROCESS(clk,rst,SYNTHESIZED_WIRE_1)
BEGIN
IF (rst = '0') THEN
	DFF_inst <= '0';
ELSIF (SYNTHESIZED_WIRE_1 = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	DFF_inst <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_1 <= NOT(gdfx_temp0 XOR gdfx_temp0);


SYNTHESIZED_WIRE_0 <= NOT(DFF_inst);



PROCESS(clk,rst,SYNTHESIZED_WIRE_4)
BEGIN
IF (rst = '0') THEN
	gdfx_temp0 <= '0';
ELSIF (SYNTHESIZED_WIRE_4 = '0') THEN
	gdfx_temp0 <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	gdfx_temp0 <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


gdfx_temp0 <= constante;

END bdf_type;