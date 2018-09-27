library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registrador is
    generic (
        larguraDados : natural := 4
    );
	 
      port (DIN 	 		: in    std_logic_vector(larguraDados-1 downto 0);
           DOUT 	 		: out   std_logic_vector(larguraDados-1 downto 0);
           ENABLE, ENABLERW, RST, CLK  : in  std_logic

);
end entity;

 architecture comportamento of Registrador is
  begin
    process(RST, CLK)
    begin
        if (RST = '1') then
            DOUT <= (others => '0');
        else
            if (rising_edge(CLK)) then
                if (ENABLE = '1' OR ENABLERW = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
	end process;
	end architecture;