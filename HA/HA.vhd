-- Half Adder --
-- Abdiel Vicencio Antonio --
-- TE2002B --

-- Declaracion de librerias
Library IEEE;
use IEEE.std_logic_1164.all;

-- Definición de Entidad 
entity ha is

	port ( a, b : in std_logic;
			s, Cout : out std_logic);
	end ha;

-- Definicion de la Arquitectura
architecture arc of ha is 

begin
	
	s <= a xor b; 		-- instrucciones concurrentes
	Cout <= a and b;
	
end arc;


