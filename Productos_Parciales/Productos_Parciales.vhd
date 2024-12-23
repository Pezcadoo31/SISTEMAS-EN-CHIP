-- Productos Parciales 

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Productos_Parciales is
	port (	A, Acomp					    		: in std_logic_vector (23 downto 0);
				CB1, CB2, CB3, CB4, CB5, CB6	: in std_logic_vector (2 downto 0);
				PP1, PP2, PP3, PP4, PP5, PP6	: out std_logic_vector (23 downto 0));
end Productos_Parciales;

architecture arc of Productos_Parciales is

	begin
	
		with CB1 select								-- Producto parcial en 2^0
			PP1 <= x"000000"						 when "000", -- 0°A
					 A									 when "001", -- 1°A
					 A(22 downto 0) & '0'		 when "010", -- 2°A
					 Acomp(22 downto 0) & '0'   when "110", -- -2°A
					 Acomp 							 when "111", -- -1°A
					 x"000000"                  when others; -- 0
					 
		with CB2 select								-- Producto parcial en 2^2
			PP2 <= x"000000"						 when "000",
					 A(21 downto 0) & "00"		 when "001",
					 A(20 downto 0) & "000"		 when "010",
					 Acomp(20 downto 0) & "000" when "110",
					 Acomp(21 downto 0) & "00"	 when "111",
					 x"000000"                  when others;
					 
		with CB3 select								-- Producto parcial en 2^4
        PP3 <= x"000000"                        when "000",      
               A(19 downto 0) & "0000"          when "001",      
               A(18 downto 0) & "00000"         when "010",      
               Acomp(18 downto 0) & "00000"     when "110",      
               Acomp(19 downto 0) & "0000"      when "111",      
               x"000000"                        when others;    

    with CB4 select										-- Producto parcial en 2^6
        PP4 <= x"000000"                        when "000",      
               A(17 downto 0) & "000000"        when "001",     
               A(16 downto 0) & "0000000"       when "010",      
               Acomp(16 downto 0) & "0000000"   when "110",      
               Acomp(17 downto 0) & "000000"    when "111",      
               x"000000"                        when others;    

    with CB5 select										-- Producto parcial en 2^8
        PP5 <= x"000000"                        when "000",      
               A(15 downto 0) & "00000000"      when "001",      
               A(14 downto 0) & "000000000"     when "010",      
               Acomp(14 downto 0) & "000000000" when "110",      
               Acomp(15 downto 0) & "00000000"  when "111",      
               x"000000"                        when others;    

    with CB6 select										-- Producto parcial en 2^10
        PP6 <= x"000000"                        when "000",      
               A(13 downto 0) & "0000000000"    when "001",      
               A(12 downto 0) & "00000000000"   when "010",      
               Acomp(12 downto 0) & "00000000000" when "110",    
               Acomp(13 downto 0) & "0000000000"  when "111",    
               x"000000"                        when others;    

end arc;