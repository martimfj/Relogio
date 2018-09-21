library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	generic(

	SIZE : natural := 4

	);

	port
	(
		A, B   : in std_logic_vector(SIZE-1 DOWNTO 0);
		clk    : in std_logic;
		en     : in std_logic;
		res    : out std_logic;		
		Q      : out std_logic_vector(SIZE-1 DOWNTO 0)
	);
	
end entity;

architecture rtl of comparador is

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if (A = B) then
				if (en = '1') then
					res <= '1';
					Q   <= "0000";
				else
					res <= '0';
					Q   <= "0000";
				end if;
			else
				res <= '0';
				Q <= A;
			end if;
		end if;
	end process;
	
end rtl;