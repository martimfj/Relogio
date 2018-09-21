LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity TopLevel is
   port(
      clk        :   in  std_logic;
		Sel_Ula    :   in  std_logic;
		Sel_Mux 	  :   in  std_logic_vector(2 downto 0);
      Q  		  :   out std_logic_vector(3 downto 0)
   );
end entity;

architecture rtl of TopLevel is

component ULA is
    Port (
    A, B      : in  STD_LOGIC_VECTOR(3 downto 0);  -- input 4 bit
    Sel_Ula   : in  STD_LOGIC;							  -- flag de selecao soma ou sub -> 0 = soma 1 = sub
    Q 	     : out STD_LOGIC_VECTOR(3 downto 0) -- output 4 bit
    
    );

end component; 

component mux is

  generic(
    DATA_WIDTH  : natural := 4;   -- Bits in each input
    SEL_WIDTH    : natural := 3	  -- Number of inputs
);
	 port(
    A,B,C,D,E   : in  std_logic_vector( (DATA_WIDTH - 1) downto 0);
    Sel_Mux 	 : in  std_logic_vector( (SEL_WIDTH - 1) downto 0);
    Q   			 : out std_logic_vector( (DATA_WIDTH - 1) downto 0)
);
end component;


component registradorGenerico is
    generic (
        larguraDados : natural := 4
    );
	 
      port (DIN 	 : in    std_logic_vector(larguraDados-1 downto 0);
           DOUT 	 : out   std_logic_vector(larguraDados-1 downto 0);
           ENABLE  : in  std_logic;
           CLK,RST : in std_logic);
			  
end entity;


signal m1 : std_logic_vector (3 downto 0);
signal u1 : std_logic_vector (3 downto 0);
signal T  : std_logic_vector (3 downto 0);

begin

	
	T <= "0001";
	
	P1: Mux port map(A => "0010", B => "0100", C => "0110", D => "1010", 
							E => "0001", Sel_Mux => Sel_Mux, Q => m1);
							
	P2: ULA port map(m1, T, Sel_Ula, u1);


	Q <= u1;
/*
fazDivisaoPot2: entity work.divisorGenerico(divPotenciaDe2)
            generic map (divisor => 5)   -- divide por 2^6.
            port map (clk => clk, saida_clk => saida_clk);

fazDivisaoInteiro: entity work.divisorGenerico(divInteiro)
            generic map (divisor => 5)   -- divide por 10.
            port map (clk => clk, saida_clk => saida_clk);
*/
end architecture;