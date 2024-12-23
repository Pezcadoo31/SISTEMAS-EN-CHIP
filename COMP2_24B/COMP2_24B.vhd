-- COMPLEMENTO A 2 DE 24 BITS

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Comp2_24B is
	port ( 	A : in std_logic_vector (11 downto 0);
				Z : out std_logic_vector (23 downto 0);
				N : out std_logic_vector (23 downto 0));
end Comp2_24B;

Architecture arc of Comp2_24B is

Component MAS1_24B is 
	port (	A : IN std_logic_vector (23 downto 0);
				Z : out std_logic_vector(23 downto 0));
end component;

signal A_24 : Std_logic_vector (23 downto 0);
signal NOT_A_24 : Std_logic_vector (23 downto 0);

Begin 

	NOT_A_24 <= not(x"000" & A);
	A_24 <= X"000" & A;
	
	M0: MAS1_24B port map (NOT_A_24, Z);
	
	N <= A_24;
	

end arc;