library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registrador is
    generic (
        larguraDados : natural := 4
    );
	 
      port (DIN 	 		: in    std_logic_vector(larguraDados-1 downto 0);
           DOUT 	 		: out   std_logic_vector(larguraDados-1 downto 0);
           ENABLE, ENABLERW, CLK  : in  std_logic

);
end entity;

 architecture comportamento of Registrador is
 begin
  
  process(CLK)
    begin
        
		if (rising_edge(CLK)) then
			 if (ENABLE = '1' OR ENABLERW = '1') then
						DOUT <= DIN;
			 end if;
		end if;
	
    end process;
	end architecture;