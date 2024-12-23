-- -- SUMADOR DE 8 BITS --
-- ABDIEL VICENCIO ANTONIO --

library IEEE;
use IEEE.std_logic_1164.all;

-- Definicion de la entidad 
entity S8_RCA is 
	port ( a, b : in std_logic_vector (7 downto 0); 
			Cin : in std_logic;
			CLK : in std_logic;
			s : out std_logic_vector (7 downto 0);  
			Cout : out std_logic);
	end S8_RCA;
	
architecture arc of S8_RCA is

component fa is
	port ( a, b, Cin : in std_logic;
			s, Cout : out std_logic);
	end component fa;
	
	Signal C : std_logic_vector (7 downto 1);
	Signal FFA, FFB, FFS : std_logic_vector (7 downto 0);

Begin 

	process (CLK)
		begin
			if(CLK='1' and CLK'EVENT) then
				FFA <= a;
				FFB <= b;
				s <= FFS;
			end if;
	end process;
	
	I0 : fa port map (FFA(0), FFB(0), Cin, FFS(0), C(1));
	I1 : fa port map (FFA(1), FFB(1), C(1), FFS(1), C(2));
	I2 : fa port map (FFA(2), FFB(2), C(2), FFS(2), C(3));
	I3 : fa port map (FFA(3), FFB(3), C(3), FFS(3), C(4));
	I4 : fa port map (FFA(4), FFB(4), C(4), FFS(4), C(5));
	I5 : fa port map (FFA(5), FFB(5), C(5), FFS(5), C(6));
	I6 : fa port map (FFA(6), FFB(6), C(6), FFS(6), C(7));
	I7 : fa port map (FFA(7), FFB(7), C(7), FFS(7), Cout);
	
end arc;