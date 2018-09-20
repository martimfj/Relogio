LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity top_level is
   port(
      clk        :   in std_logic;
      saida_clk :   out std_logic
   );
end entity;

architecture rtl of top_level is

component ULA is
    Port (
    A, B  : in  STD_LOGIC_VECTOR(3 downto 0);  -- input 4 bit
    Flag  : in  STD_LOGIC;							  -- flag de selecao soma ou sub -> 0 = soma 1 = sub
    Q 	 : out  STD_LOGIC_VECTOR(3 downto 0); -- output 4 bit
    
    );
end ULA; 

begin
fazDivisaoPot2: entity work.divisorGenerico(divPotenciaDe2)
            generic map (divisor => 5)   -- divide por 2^6.
            port map (clk => clk, saida_clk => saida_clk);

fazDivisaoInteiro: entity work.divisorGenerico(divInteiro)
            generic map (divisor => 5)   -- divide por 10.
            port map (clk => clk, saida_clk => saida_clk);

end architecture;