-- FULL ADDER --
-- ABDIEL VICENCIO ANTONIO --

-- Definicion de librerias
Library IEEE;
use IEEE.std_logic_1164.all;

-- Definicion de la entidad 
entity fa is 
	
	port ( a, b, Cin : in std_logic;
			s, Cout : out std_logic);
	end fa;

-- Definicion de la arquitectura 	
architecture arc of fa is 

-- Definicion del uso del componente 
component ha is
	
	port ( a, b : in std_logic;
			s, Cout : out std_logic);
	end component ha;
	
-- Definicion de los cables	
Signal C : std_logic_vector (2 downto 0);

-- Definicion del componente Full Adder	
begin
	
	-- Conexiones (A, B, S, Cout)
	HA0 : ha port map (a, b, C(2), C(1));
	HA1 : ha port map (C(2), Cin, s, C(0));
	
	Cout <= C(1) OR C(0);
	
end arc;
