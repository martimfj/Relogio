LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity FluxoDados is
   port(

		--------------INPUTS-------------------
	   clk        :   in  std_logic;
		RST    	  :   in  std_logic_vector(5 downto 0);
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
end entity;

architecture fl of FluxoDados is

component ULA is
    Port (
    A, B      : in  STD_LOGIC_VECTOR(3 downto 0);  -- input 4 bit
    Sel_Ula   : in  STD_LOGIC;							-- flag de selecao soma ou sub -> 0 = soma 1 = sub
    Q 	     : out STD_LOGIC_VECTOR(3 downto 0);  -- output 4 bit
	 Flag		  : out STD_LOGIC
    
    );

end component; 

component mux is

  generic(
    DATA_WIDTH   : natural := 4;   -- Bits in each input
    SEL_WIDTH    : natural := 3	  -- Number of inputs
);
	  port(
    A, B, C, D, E, F  : in  std_logic_vector( (DATA_WIDTH - 1) downto 0);
    Sel_Mux 	    		 : in  std_logic_vector( (SEL_WIDTH - 1) downto 0);
    Q   			    		 : out std_logic_vector( (DATA_WIDTH - 1) downto 0)
);
end component;


component Registrador is
 generic (
	  larguraDados : natural := 4
 );
 
	port (DIN 	 		: in  std_logic_vector(larguraDados-1 downto 0);
		  DOUT 	 		: out std_logic_vector(larguraDados-1 downto 0);
		  ENABLE, ENABLERW, RST, CLK  : in  std_logic

);		  
end component;
 

component conversorHex7Seg is
	port
	(
		 -- Input ports
		 dadoHex  : in  std_logic_vector(3 downto 0);
		 apaga  	 : in  std_logic := '0';
		 negativo : in  std_logic := '0';
		 overFlow : in  std_logic := '0';

		 -- Output ports
		 saida7seg : out std_logic_vector(6 downto 0)
	);
end component;

------------------------------------
-------------SINAIS--------------------
------------------------------------

--------------MUX--------------------
signal OUT_m1 : std_logic_vector (3 downto 0);
signal OUT_m2 : std_logic_vector (3 downto 0);
signal OUT_m3 : std_logic_vector (3 downto 0);

--------------ULA--------------------
signal u1   : std_logic_vector (3 downto 0);
signal u1_F : std_logic;

-----------REGISTRADOR-------------
signal OUT_R1  : std_logic_vector (3 downto 0);
signal OUT_R2  : std_logic_vector (3 downto 0);
signal OUT_R3  : std_logic_vector (3 downto 0);
signal OUT_R4  : std_logic_vector (3 downto 0);
signal OUT_R5  : std_logic_vector (3 downto 0);
signal OUT_R6  : std_logic_vector (3 downto 0);

---------Sinal entrada Mux-------
signal sinalC  : std_logic_vector (3 downto 0);
signal sinalD  : std_logic_vector (3 downto 0);

begin

	sinalC <= "0010" when swModoTempo = '0' else
				 "0001" when swModoTempo = '1';
				 
	sinalD <= "0011" when swModoTempo = '0' else
				 "0001" when swModoTempo = '1';

	
	M1: Mux port map(A => "0000", B=> "0001", C => sinalC, 

   				     D => sinalD, E => "0101", F => "1001", 
				  
						  Sel_Mux => Sel_Mux1, Q => OUT_m1);
						  
						  
	M2: Mux port map(A => OUT_R1, B=> OUT_R2, C => OUT_R3, 

   				     D => OUT_R4, E => OUT_R5, F => OUT_R6,
				  
						  Sel_Mux => Sel_Mux2, Q => OUT_m2);
						  
						  
	M3: Mux port map(A => u1, B=> tempo, C => "0001", 

   				     D => "0001", E => "0001", F => u1,
				  
						  Sel_Mux => Sel_time, Q => OUT_m3);
						  
							
	
	U: ULA port map(A => OUT_m1, B => OUT_m2, Sel_Ula => Sel_Ula, Q => u1, Flag => u1_F);
	
	
	Rg1: Registrador port map(DIN => OUT_m3, Enable => ENABLE(5), ENABLERW => Enablerw(5) AND SW(0), RST => RST(5), CLK => clk, DOUT => OUT_R1);
	Rg2: Registrador port map(DIN => OUT_m3, Enable => ENABLE(4), ENABLERW => Enablerw(4) AND SW(0), RST => RST(4), CLK => clk, DOUT => OUT_R2);
	Rg3: Registrador port map(DIN => OUT_m3, Enable => ENABLE(3), ENABLERW => Enablerw(3) AND SW(0), RST => RST(3), CLK => clk, DOUT => OUT_R3);
	Rg4: Registrador port map(DIN => OUT_m3, Enable => ENABLE(2), ENABLERW => Enablerw(2) AND SW(0), RST => RST(2), CLK => clk, DOUT => OUT_R4);
	Rg5: Registrador port map(DIN => OUT_m3, Enable => ENABLE(1), ENABLERW => Enablerw(1) AND SW(0), RST => RST(1), CLK => clk, DOUT => OUT_R5);
	Rg6: Registrador port map(DIN => OUT_m3, Enable => ENABLE(0), ENABLERW => Enablerw(0) AND SW(0), RST => RST(0), CLK => clk, DOUT => OUT_R6);

	R1 <= OUT_R1;
	R2 <= OUT_R2;
	R3 <= OUT_R3;
	R4 <= OUT_R4;
	R5 <= OUT_R5;
	R6 <= OUT_R6;
	Flag <= u1_F;
	
end architecture;