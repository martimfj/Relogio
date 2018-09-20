library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
----------------ULA 4-bit----------------------
-----------------------------------------------
entity ULA is
    Port (
    A, B  : in  STD_LOGIC_VECTOR(3 downto 0);  -- input 4 bit
    Flag  : in  STD_LOGIC;							  -- flag de selecao soma ou sub -> 0 = soma 1 = sub
    Q 	 : out  STD_LOGIC_VECTOR(3 downto 0); -- output 4 bit
    
    );
end ALU; 
architecture rtl of ALU is

signal tmp : std_logic_vector (3 downto 0);

begin
   process(A,B,Flag)
 begin
 
  case(Flag) is
  when '0' => -- Soma
   tmp <= A + B ; 
  when '1' => -- Sub
   tmp <= A - B ;
  when others => tmp <= A + B ; 
  end case;
  
 end process;
 
 Q <= tmp; -- ALU out
end architecture;