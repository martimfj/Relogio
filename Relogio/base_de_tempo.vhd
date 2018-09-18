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