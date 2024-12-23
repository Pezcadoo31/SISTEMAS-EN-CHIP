-- Contruccion de ALU apartir de celulas bit slice

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity ALU8 is 
	port (	A, B 		: in std_logic_vector (7 downto 0);
				Cin 		: in std_logic;
				Control 	: in std_logic_vector (7 downto 0);
				Cout 		: out std_logic; 
				S 			: out std_logic_vector (7 downto 0));
end ALU8;

Architecture arc of ALU8 is

Component ALU_BIT_SLICE is
	port (	A, B, NA, NB, Cin, AandB, notB, notA, AxorB, AorB, AmasB	: in std_logic;
				Cout, S																	: out std_logic);
end component ALU_BIT_SLICE;

	signal C: std_logic_vector (10 downto 0);

Begin

	UAL0 : ALU_BIT_SLICE port map (A(0), B(0), Control(7), Control(6), Cin,  Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(1), S(0));
	UAL1 : ALU_BIT_SLICE port map (A(1), B(1), Control(7), Control(6), C(1), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(2), S(1));
	UAL2 : ALU_BIT_SLICE port map (A(2), B(2), Control(7), Control(6), C(2), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(3), S(2));
	UAL3 : ALU_BIT_SLICE port map (A(3), B(3), Control(7), Control(6), C(3), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(4), S(3));
	UAL4 : ALU_BIT_SLICE port map (A(4), B(4), Control(7), Control(6), C(4), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(5), S(4));
	UAL5 : ALU_BIT_SLICE port map (A(5), B(5), Control(7), Control(6), C(5), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(6), S(5));
	UAL6 : ALU_BIT_SLICE port map (A(6), B(6), Control(7), Control(6), C(6), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), C(7), S(6));
	UAL7 : ALU_BIT_SLICE port map (A(7), B(7), Control(7), Control(6), C(7), Control(5), Control(4), Control(3), Control(2), Control(1), Control(0), Cout, S(7));







end arc;