-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/12/2024 12:19:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Comp2_24B
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Comp2_24B_vhd_vec_tst IS
END Comp2_24B_vhd_vec_tst;
ARCHITECTURE Comp2_24B_arch OF Comp2_24B_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL N : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL Z : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT Comp2_24B
	PORT (
	A : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	N : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	Z : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Comp2_24B
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	N => N,
	Z => Z
	);
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '0';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '0';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 560000 ps;
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 280000 ps;
	A(2) <= '1';
	WAIT FOR 280000 ps;
	A(2) <= '0';
	WAIT FOR 280000 ps;
	A(2) <= '1';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		A(1) <= '0';
		WAIT FOR 140000 ps;
		A(1) <= '1';
		WAIT FOR 140000 ps;
	END LOOP;
	A(1) <= '0';
	WAIT FOR 140000 ps;
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		A(0) <= '0';
		WAIT FOR 70000 ps;
		A(0) <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
END Comp2_24B_arch;
