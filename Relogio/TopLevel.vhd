LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity TopLevel is
	
	port(
		CLOCK_50 : in STD_LOGIC;
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
	);
	
end entity;

architecture rtl of TopLevel is


component FluxoDados is
   port(
      clk        :   in  std_logic;
		ENABLE	  :   in  std_logic_vector(5 downto 0);
		Sel_Ula    :   in  std_logic;
		Sel_Mux1   :   in  std_logic_vector(2 downto 0);
		Sel_Mux2   :   in  std_logic_vector(2 downto 0);

		--------------OUTPUTS--------------------
		R1, R2, R3, R4, R5, R6 : OUT STD_LOGIC_VECTOR(3 downto 0)
		
   );
end component;


component SM1 IS
    
	 PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0';
        output1 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
	 
end component;

signal out_flag: std_logic;
signal comando : std_logic_vector(13 downto 0);

signal OUT_R1  : std_logic_vector (3 downto 0);
signal OUT_R2  : std_logic_vector (3 downto 0);
signal OUT_R3  : std_logic_vector (3 downto 0);
signal OUT_R4  : std_logic_vector (3 downto 0);
signal OUT_R5  : std_logic_vector (3 downto 0);
signal OUT_R6  : std_logic_vector (3 downto 0);

begin
/*
		S0: SM1 port map(reset => '0', clock => CLOCK_50, input1 => out_flag ,output1 => comando);
*/
		comando <= "00100001000000";
	
		F0: FluxoDados port map( 
		clk 		  => CLOCK_50,
		Sel_Ula    => comando(7),
		Sel_Mux1   => comando(13 downto 11),
		Sel_Mux2   => comando(10 downto 8),
		ENABLE	  => comando(6 downto 1),
		R1 => OUT_R1, R2 => OUT_R2, R3 => OUT_R3, R4 => OUT_R4, R5 => OUT_R5, R6 => OUT_R6
		);
		

	display0 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX2, dadoHex => OUT_R6, apaga => '0');
	 
	display1 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX3, dadoHex => OUT_R5, apaga => '0');

	display2 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX4, dadoHex => OUT_R4, apaga => '0');

	 display3 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX5, dadoHex => OUT_R3, apaga => '0');

	display4 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX6, dadoHex => OUT_R2, apaga => '0');
	 
	display5 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX7, dadoHex => OUT_R1, apaga => '0');
	

end architecture;