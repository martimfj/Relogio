library ieee;
use ieee.std_logic_1164.all; 
 
entity mux is

  generic(
    DATA_WIDTH  : natural := 4;
    SEL_WIDTH   : natural := 3	 
);
	 port(
    -------------------------------INPUT----------------------------------	 
	 A, B, C, D, E, F   : in  std_logic_vector( (DATA_WIDTH - 1) downto 0);
    Sel_Mux 	    	  : in  std_logic_vector( (SEL_WIDTH - 1) downto 0);
    
	 -------------------------------OUTPU----------------------------------	 
	 Q   			    	  : out std_logic_vector( (DATA_WIDTH - 1) downto 0)
);
end entity;

architecture mux_architecture of mux is

begin
 
	with Sel_Mux  select
		Q <=   A WHEN "000",
				 B WHEN "001",
				 C WHEN "010",
				 D WHEN "011",
				 E WHEN "100",
				 F WHEN "101",
				 (others =>'0') when others;

end architecture;