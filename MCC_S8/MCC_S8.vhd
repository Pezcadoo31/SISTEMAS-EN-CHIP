-- ABDIEL VICENCIO ANTONIO A01750922
-- MANCHESTER CARRY CHAIN SUMA 8

library IEEE;
use IEEE.std_logic_1164.all;

entity MCC_S8 is
	port ( 	A, B : in std_logic_vector (7 downto 0); 
				Ci : in std_logic;
				CLK : in std_logic;
				S : out std_logic_vector (7 downto 0);
				Cout : out std_logic);
end MCC_S8;

architecture arc of MCC_S8 is

component MCC is
	port (	A, B, Ci : in std_logic;
				S, Cout : out std_logic);
end component;

	Signal C : std_logic_vector (7 downto 1);
	Signal FFA, FFB, FFS : std_logic_vector (7 downto 0);

Begin 

	process (CLK)
		begin
			if(CLK='1' and CLK'EVENT) then
				FFA <= A;
				FFB <= B;
				S <= FFS;
			end if;
	end process;

	
	M0 : MCC port map (FFA(0), FFB(0),   Ci, FFS(0), C(1));
	M1 : MCC port map (FFA(1), FFB(1), C(1), FFS(1), C(2));
	M2 : MCC port map (FFA(2), FFB(2), C(2), FFS(2), C(3));
	M3 : MCC port map (FFA(3), FFB(3), C(3), FFS(3), C(4));
	M4 : MCC port map (FFA(4), FFB(4), C(4), FFS(4), C(5));
	M5 : MCC port map (FFA(5), FFB(5), C(5), FFS(5), C(6));
	M6 : MCC port map (FFA(6), FFB(6), C(6), FFS(6), C(7));
	M7 : MCC port map (FFA(7), FFB(7), C(7), FFS(7), Cout);
	
end arc;