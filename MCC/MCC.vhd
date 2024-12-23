-- ABDIEL VICENCIO ANTONIO A01750922
-- MANCHESTER CARRY CHAIN

library IEEE;
use IEEE.std_logic_1164.all;

entity MCC is
	port ( A, B, Ci : in std_logic;
			S, Cout : out std_logic);
end MCC;

architecture arc of MCC is

    signal G : std_logic;   -- Generación de acarreos
    signal P : std_logic;   -- Propagación de acarreos

begin 

    P <= A XOR B; --PROPAGACIÓN
    G <= A AND B; -- 
	 
with P select 
	Cout <= 	Ci when '1',
				G when '0',
				null when others;
				
	S <= P XOR Ci; --SUMA

end arc;
