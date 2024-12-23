-- ALU BIT SLICE 

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity ALU_BIT_SLICE is
	port (	A, B, NA, NB, Cin, AandB, notB, notA, AxorB, AorB, AmasB	: in std_logic;
				Cout, S																	: out std_logic);
end ALU_BIT_SLICE;

Architecture arc of ALU_BIT_SLICE is

Component HA is 
	port ( a, b : in std_logic;
			s, Cout : out std_logic);
end component;

	signal cable: std_logic_vector (31 downto 0);
	
Begin 
		
	cable(0) <= A XOR NA;
	cable(1) <= B XOR NB;
	
	cable(2) <= NA OR NB OR Cin;
	
	H0: HA port map (cable(0), cable(1), cable(3), cable(4));
	H1: HA port map (cable(3), cable(2), cable(5), cable(6));
	cable(7) <= cable(4) OR cable(6);
	cable(8) <= cable(7) AND AmasB;
	Cout <= cable(8);
	
	cable(9)  <= NOT cable(1) AND notB;
	cable(10) <= NOT cable(0) AND notA;
	cable(11) <= cable(3) AND AxorB;
	cable(12) <= cable(4) AND AandB;
	cable(13) <= cable(5) AND AmasB;
	
	cable(14) <= cable(0) OR cable(1);
	cable(15) <= cable(14) AND AorB;
	
	cable(16) <= cable(9) OR cable(10) OR cable(11) OR cable(12) OR cable(15);
	
	cable(17) <= cable(16) OR cable(13);
	S <= cable(17);

end arc;