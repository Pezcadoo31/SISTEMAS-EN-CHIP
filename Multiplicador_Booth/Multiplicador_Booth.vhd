-- Multiplicador de Booth

Library Ieee;
Use IEEE.std_logic_1164.all;

Entity Multiplicador_Booth is
	port (	A, B : in std_logic_vector(11 downto 0);
				Mult : out std_logic_vector(23 downto 0));
end Multiplicador_Booth;

Architecture arc of Multiplicador_Booth is 

