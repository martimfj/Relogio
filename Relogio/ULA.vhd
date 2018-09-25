library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
----------------ULA 4-bit----------------------
-----------------------------------------------

entity ULA is

generic (
        DATA_WITH : natural := 4
    );
	 


    Port (
		 A, B      : in  STD_LOGIC_VECTOR( (DATA_WITH - 1) downto 0);  
		 Sel_Ula   : in  STD_LOGIC;							  					  
		 Q   		  : out STD_LOGIC_VECTOR( (DATA_WITH - 1) downto 0); 		 
		 Flag		  : out STD_LOGIC
	 
	 );
	 
end ULA; 
architecture rtl of ULA is

signal tmp : std_logic_vector (3 downto 0);

begin
  
  process(A,B,Sel_Ula)
		begin
  
  case(Sel_ula) is
  when '0' => -- Soma
   tmp <= A + B ; 
  when '1' => -- Sub
   tmp <= A - B ;
  when others => tmp <= A + B ; 
  end case;
  
		  
 end process;
 
 Q 	<= tmp; -- ALU out
 Flag <= not(tmp(0) or tmp(1) or tmp(2) or tmp(3));
 
end architecture;