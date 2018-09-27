LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;


entity TopLevel is
	
	port(
		CLOCK_50 : in STD_LOGIC;
		  SW		: in STD_LOGIC_VECTOR(17 DOWNTO 0);
		  KEY		: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
		
	);
	
	
end entity;

architecture rtl of TopLevel is



component FluxoDados is
   port(

		--------------INPUTS-------------------
	   clk        :   in  std_logic;
		RST	  :   in  std_logic_vector(5 downto 0);
		ENABLE	  :   in  std_logic_vector(5 downto 0);
		ENABLERW   :   in  std_logic_vector(5 downto 0);
		Sel_Ula    :   in  std_logic;
		Sel_Mux1   :   in  std_logic_vector(2 downto 0);
		Sel_Mux2   :   in  std_logic_vector(2 downto 0);
		Sel_time   :   in  std_logic_vector(2 downto 0);
		SW		     :   in  STD_LOGIC_VECTOR(17 DOWNTO 0);
		KEY		  :   in  STD_LOGIC_VECTOR(3 DOWNTO 0);
	   tempo	     :   in  std_logic_vector(3 downto 0);
		swModoTempo:   in  std_logic;
		--------------OUTPUTS--------------------
		Flag		  : out STD_LOGIC;
		R1, R2, R3, R4, R5, R6 : OUT STD_LOGIC_VECTOR(3 downto 0)
	
	);
end component;


component SM1 IS
    
	 PORT(
        reset  : IN STD_LOGIC := '0';
        clock  : IN STD_LOGIC;
        input1 : IN STD_LOGIC := '0';
		  output1 : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
		  
    );
	 
end component;

signal out_flag: std_logic;
signal comando : std_logic_vector(18 downto 0);

signal OUT_R1  : std_logic_vector (3 downto 0);
signal OUT_R2  : std_logic_vector (3 downto 0);
signal OUT_R3  : std_logic_vector (3 downto 0);
signal OUT_R4  : std_logic_vector (3 downto 0);
signal OUT_R5  : std_logic_vector (3 downto 0);
signal OUT_R6  : std_logic_vector (3 downto 0);

signal saida_clk: std_logic;

signal frequencia: integer := 25;

signal Reg_setup : std_logic_vector (5 downto 0);
signal select_time      : std_logic_vector (2 downto 0);
signal tempo_escolhido 				: std_logic_vector (3 downto 0);


signal modoRelogio: std_logic;

begin

	modoRelogio <= sw(5);
	Reg_setup <= '0' & '0' & not(KEY(3)) & not(KEY(2)) & not(KEY(1)) & not(KEY(0));
	select_time  <= '0' & '0' & SW(0);
	tempo_escolhido <= "0000" when SW(17) = '1'else ---0
							 "0001" when SW(16) = '1'else ---1
							 "0010" when SW(15) = '1'else ---2
							 "0011" when SW(14) = '1'else ---3
							 "0100" when SW(13) = '1'else ---4
							 "0101" when SW(12) = '1'else ---5
							 "0110" when SW(11) = '1'else ---6
							 "0111" when SW(10) = '1'else ---7
							 "1000" when SW(9)  = '1'else ---8
							 "1001" when SW(8)  = '1'else ---9
							 "0000";
	
	frequencia  <= 25    when SW(1) = '1' else
						50    when SW(2) = '1' else
						500   when SW(3) = '1' else
						5000  when SW(4) = '1' else
						25;
	
	fazDivisaoInteiro1: entity work.divisorGenerico(divInteiro)
            generic map (divisor => 50000000)   -- divide por frequencia.
            port map (clk => CLOCK_50, saida_clk => saida_clk, setup => frequencia);
				
		S0: SM1 port map(reset => '0', clock => saida_clk, input1 => out_flag ,output1 => comando);

	
		-- comando (13 downto 0)
		--sel mux1  | sel mux2 | ULA | ENABLE		 |	WRITE
		-- 13 12 11 | 10 9 8   |  7  | 6 5 4 3 2 1 |   0--
	
		F0: FluxoDados port map( 
		clk 		   => saida_clk,
		Sel_Ula     => comando(12),
		Sel_Mux1    => comando(18 downto 16),
		Sel_Mux2    => comando(15 downto 13),
		ENABLE	   => comando(11 downto 6),
		RST  		   => comando(5 downto 0),
		Sel_time    => select_time(2 downto 0),
		ENABLERW    => Reg_Setup(5 downto 0),
		Flag 		   => out_flag,
		SW			   => SW,
		KEY         => KEY,
		tempo       => tempo_escolhido,
		swModoTempo => modoRelogio,
		R1 => OUT_R1, R2 => OUT_R2, R3 => OUT_R3, R4 => OUT_R4, R5 => OUT_R5, R6 => OUT_R6
		);
		

	
display00 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX0, dadoHex => "0000", apaga => '0');
	 
	display01 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX1, dadoHex => "0000", apaga => '1');
	
	display0 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX2, dadoHex => OUT_R1, apaga => '0');
	 
	display1 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX3, dadoHex => OUT_R2, apaga => '0');

	display2 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX4, dadoHex => OUT_R3, apaga => '0');

	 display3 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX5, dadoHex => OUT_R4, apaga => '0');

	display4 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX6, dadoHex => OUT_R5, apaga => '0');
	 
	display5 : entity work.conversorHex7seg
	 Port map (saida7seg => HEX7, dadoHex => OUT_R6, apaga => '0');
	

end architecture;