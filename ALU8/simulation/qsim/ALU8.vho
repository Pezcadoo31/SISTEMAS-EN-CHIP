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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/19/2024 17:34:14"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	ALU8 IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	Control : IN std_logic_vector(7 DOWNTO 0);
	Cout : BUFFER std_logic;
	S : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU8;

-- Design Ports Information


ARCHITECTURE structure OF ALU8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Control : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \UAL7|Cout~2_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \UAL7|cable~0_combout\ : std_logic;
SIGNAL \UAL0|cable[7]~0_combout\ : std_logic;
SIGNAL \UAL1|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL1|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL2|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL2|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL3|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL3|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL4|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL4|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL5|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL5|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL6|cable[7]~3_combout\ : std_logic;
SIGNAL \UAL6|cable[7]~2_combout\ : std_logic;
SIGNAL \UAL7|Cout~4_combout\ : std_logic;
SIGNAL \UAL7|Cout~3_combout\ : std_logic;
SIGNAL \UAL0|H0|s~combout\ : std_logic;
SIGNAL \UAL0|S~0_combout\ : std_logic;
SIGNAL \UAL0|S~1_combout\ : std_logic;
SIGNAL \UAL0|S~2_combout\ : std_logic;
SIGNAL \UAL0|S~3_combout\ : std_logic;
SIGNAL \UAL1|H0|s~combout\ : std_logic;
SIGNAL \UAL1|S~0_combout\ : std_logic;
SIGNAL \UAL1|S~1_combout\ : std_logic;
SIGNAL \UAL1|S~2_combout\ : std_logic;
SIGNAL \UAL1|S~3_combout\ : std_logic;
SIGNAL \UAL2|H0|s~combout\ : std_logic;
SIGNAL \UAL2|S~0_combout\ : std_logic;
SIGNAL \UAL2|S~1_combout\ : std_logic;
SIGNAL \UAL2|S~2_combout\ : std_logic;
SIGNAL \UAL2|S~3_combout\ : std_logic;
SIGNAL \UAL3|H0|s~combout\ : std_logic;
SIGNAL \UAL3|S~0_combout\ : std_logic;
SIGNAL \UAL3|S~1_combout\ : std_logic;
SIGNAL \UAL3|S~2_combout\ : std_logic;
SIGNAL \UAL3|S~3_combout\ : std_logic;
SIGNAL \UAL4|H0|s~combout\ : std_logic;
SIGNAL \UAL4|S~1_combout\ : std_logic;
SIGNAL \UAL4|S~0_combout\ : std_logic;
SIGNAL \UAL4|S~2_combout\ : std_logic;
SIGNAL \UAL4|S~3_combout\ : std_logic;
SIGNAL \UAL5|S~1_combout\ : std_logic;
SIGNAL \UAL5|S~0_combout\ : std_logic;
SIGNAL \UAL5|S~2_combout\ : std_logic;
SIGNAL \UAL5|H0|s~combout\ : std_logic;
SIGNAL \UAL5|S~3_combout\ : std_logic;
SIGNAL \UAL6|H0|s~combout\ : std_logic;
SIGNAL \UAL6|S~0_combout\ : std_logic;
SIGNAL \UAL6|S~1_combout\ : std_logic;
SIGNAL \UAL6|S~2_combout\ : std_logic;
SIGNAL \UAL6|S~3_combout\ : std_logic;
SIGNAL \UAL7|H0|s~combout\ : std_logic;
SIGNAL \UAL7|S~0_combout\ : std_logic;
SIGNAL \UAL7|S~1_combout\ : std_logic;
SIGNAL \UAL7|S~2_combout\ : std_logic;
SIGNAL \UAL7|S~3_combout\ : std_logic;
SIGNAL \UAL5|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Control~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UAL3|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UAL7|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UAL2|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UAL6|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UAL4|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UAL1|cable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UAL0|cable\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
ww_Control <= Control;
Cout <= ww_Cout;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(0),
	combout => \Control~combout\(0));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(6),
	combout => \Control~combout\(6));

-- Location: LC_X6_Y4_N1
\UAL7|Cout~2\ : maxii_lcell
-- Equation(s):
-- \UAL7|Cout~2_combout\ = \B~combout\(7) $ ((((\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|Cout~2_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(7),
	combout => \Control~combout\(7));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X4_Y3_N3
\UAL6|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL6|cable\(0) = (\A~combout\(6) $ ((\Control~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	datac => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|cable\(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X4_Y1_N9
\UAL5|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL5|cable\(0) = ((\A~combout\(5) $ (\Control~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(5),
	datad => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|cable\(0));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X6_Y3_N6
\UAL4|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL4|cable\(0) = \A~combout\(4) $ ((((\Control~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datac => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|cable\(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X3_Y3_N8
\UAL3|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL3|cable\(0) = ((\Control~combout\(7) $ (\A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Control~combout\(7),
	datad => \A~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|cable\(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X5_Y3_N5
\UAL2|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL2|cable\(0) = \Control~combout\(7) $ ((((\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|cable\(0));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LC_X4_Y2_N6
\UAL0|cable[1]\ : maxii_lcell
-- Equation(s):
-- \UAL0|cable\(1) = ((\B~combout\(0) $ (\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(0),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|cable\(1));

-- Location: LC_X4_Y2_N0
\UAL7|cable~0\ : maxii_lcell
-- Equation(s):
-- \UAL7|cable~0_combout\ = ((\Control~combout\(7)) # ((\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Control~combout\(7),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|cable~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X4_Y2_N9
\UAL0|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL0|cable\(0) = \A~combout\(0) $ ((((\Control~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datad => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|cable\(0));

-- Location: LC_X4_Y2_N5
\UAL0|cable[7]~0\ : maxii_lcell
-- Equation(s):
-- \UAL0|cable[7]~0_combout\ = (\UAL0|cable\(1) & ((\Cin~combout\) # ((\UAL7|cable~0_combout\) # (\UAL0|cable\(0))))) # (!\UAL0|cable\(1) & (\UAL0|cable\(0) & ((\Cin~combout\) # (\UAL7|cable~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datab => \UAL0|cable\(1),
	datac => \UAL7|cable~0_combout\,
	datad => \UAL0|cable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|cable[7]~0_combout\);

-- Location: LC_X7_Y1_N5
\UAL1|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL1|cable[7]~3_combout\ = (\Control~combout\(6)) # ((\Control~combout\(7)) # ((\UAL0|cable[7]~0_combout\ & \Control~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(6),
	datab => \UAL0|cable[7]~0_combout\,
	datac => \Control~combout\(0),
	datad => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|cable[7]~3_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X7_Y1_N9
\UAL1|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL1|cable\(0) = \Control~combout\(7) $ ((((\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|cable\(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LC_X7_Y1_N4
\UAL1|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL1|cable[7]~2_combout\ = (\UAL1|cable[7]~3_combout\ & ((\UAL1|cable\(0)) # (\Control~combout\(6) $ (\B~combout\(1))))) # (!\UAL1|cable[7]~3_combout\ & (\UAL1|cable\(0) & (\Control~combout\(6) $ (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL1|cable[7]~3_combout\,
	datab => \UAL1|cable\(0),
	datac => \Control~combout\(6),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|cable[7]~2_combout\);

-- Location: LC_X5_Y3_N8
\UAL2|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL2|cable[7]~3_combout\ = (\Control~combout\(7)) # ((\Control~combout\(6)) # ((\UAL1|cable[7]~2_combout\ & \Control~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \UAL1|cable[7]~2_combout\,
	datac => \Control~combout\(6),
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|cable[7]~3_combout\);

-- Location: LC_X5_Y3_N2
\UAL2|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL2|cable[7]~2_combout\ = (\UAL2|cable\(0) & ((\UAL2|cable[7]~3_combout\) # (\B~combout\(2) $ (\Control~combout\(6))))) # (!\UAL2|cable\(0) & (\UAL2|cable[7]~3_combout\ & (\B~combout\(2) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL2|cable\(0),
	datab => \B~combout\(2),
	datac => \Control~combout\(6),
	datad => \UAL2|cable[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|cable[7]~2_combout\);

-- Location: LC_X5_Y3_N9
\UAL3|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL3|cable[7]~3_combout\ = (\Control~combout\(7)) # ((\Control~combout\(6)) # ((\UAL2|cable[7]~2_combout\ & \Control~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \UAL2|cable[7]~2_combout\,
	datac => \Control~combout\(6),
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|cable[7]~3_combout\);

-- Location: LC_X3_Y3_N1
\UAL3|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL3|cable[7]~2_combout\ = (\UAL3|cable\(0) & ((\UAL3|cable[7]~3_combout\) # (\Control~combout\(6) $ (\B~combout\(3))))) # (!\UAL3|cable\(0) & (\UAL3|cable[7]~3_combout\ & (\Control~combout\(6) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL3|cable\(0),
	datab => \Control~combout\(6),
	datac => \B~combout\(3),
	datad => \UAL3|cable[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|cable[7]~2_combout\);

-- Location: LC_X6_Y3_N1
\UAL4|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL4|cable[7]~3_combout\ = (\Control~combout\(6)) # ((\Control~combout\(7)) # ((\Control~combout\(0) & \UAL3|cable[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(6),
	datab => \Control~combout\(7),
	datac => \Control~combout\(0),
	datad => \UAL3|cable[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|cable[7]~3_combout\);

-- Location: LC_X6_Y3_N2
\UAL4|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL4|cable[7]~2_combout\ = (\UAL4|cable\(0) & ((\UAL4|cable[7]~3_combout\) # (\B~combout\(4) $ (\Control~combout\(6))))) # (!\UAL4|cable\(0) & (\UAL4|cable[7]~3_combout\ & (\B~combout\(4) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL4|cable\(0),
	datab => \B~combout\(4),
	datac => \Control~combout\(6),
	datad => \UAL4|cable[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|cable[7]~2_combout\);

-- Location: LC_X4_Y1_N4
\UAL5|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL5|cable[7]~3_combout\ = (\Control~combout\(7)) # ((\Control~combout\(6)) # ((\UAL4|cable[7]~2_combout\ & \Control~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \Control~combout\(6),
	datac => \UAL4|cable[7]~2_combout\,
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|cable[7]~3_combout\);

-- Location: LC_X4_Y1_N8
\UAL5|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL5|cable[7]~2_combout\ = (\UAL5|cable\(0) & ((\UAL5|cable[7]~3_combout\) # (\B~combout\(5) $ (\Control~combout\(6))))) # (!\UAL5|cable\(0) & (\UAL5|cable[7]~3_combout\ & (\B~combout\(5) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \UAL5|cable\(0),
	datac => \UAL5|cable[7]~3_combout\,
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|cable[7]~2_combout\);

-- Location: LC_X4_Y3_N2
\UAL6|cable[7]~3\ : maxii_lcell
-- Equation(s):
-- \UAL6|cable[7]~3_combout\ = (\Control~combout\(7)) # ((\Control~combout\(6)) # ((\UAL5|cable[7]~2_combout\ & \Control~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL5|cable[7]~2_combout\,
	datab => \Control~combout\(7),
	datac => \Control~combout\(0),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|cable[7]~3_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LC_X4_Y3_N0
\UAL6|cable[7]~2\ : maxii_lcell
-- Equation(s):
-- \UAL6|cable[7]~2_combout\ = (\UAL6|cable\(0) & ((\UAL6|cable[7]~3_combout\) # (\B~combout\(6) $ (\Control~combout\(6))))) # (!\UAL6|cable\(0) & (\UAL6|cable[7]~3_combout\ & (\B~combout\(6) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL6|cable\(0),
	datab => \UAL6|cable[7]~3_combout\,
	datac => \B~combout\(6),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|cable[7]~2_combout\);

-- Location: LC_X6_Y4_N6
\UAL7|Cout~4\ : maxii_lcell
-- Equation(s):
-- \UAL7|Cout~4_combout\ = (\Control~combout\(7)) # ((\UAL6|cable[7]~2_combout\) # ((\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \UAL6|cable[7]~2_combout\,
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|Cout~4_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X6_Y4_N2
\UAL7|cable[0]\ : maxii_lcell
-- Equation(s):
-- \UAL7|cable\(0) = ((\A~combout\(7) $ (\Control~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(7),
	datad => \Control~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|cable\(0));

-- Location: LC_X6_Y4_N3
\UAL7|Cout~3\ : maxii_lcell
-- Equation(s):
-- \UAL7|Cout~3_combout\ = (\Control~combout\(0) & ((\UAL7|Cout~2_combout\ & ((\UAL7|Cout~4_combout\) # (\UAL7|cable\(0)))) # (!\UAL7|Cout~2_combout\ & (\UAL7|Cout~4_combout\ & \UAL7|cable\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(0),
	datab => \UAL7|Cout~2_combout\,
	datac => \UAL7|Cout~4_combout\,
	datad => \UAL7|cable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|Cout~3_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(2),
	combout => \Control~combout\(2));

-- Location: LC_X4_Y2_N2
\UAL0|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL0|H0|s~combout\ = \A~combout\(0) $ (\Control~combout\(7) $ (\B~combout\(0) $ (\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Control~combout\(7),
	datac => \B~combout\(0),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|H0|s~combout\);

-- Location: LC_X4_Y2_N7
\UAL0|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL0|cable\(13) = (\Control~combout\(0) & (\UAL0|H0|s~combout\ $ (((\Cin~combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datab => \UAL0|H0|s~combout\,
	datac => \UAL7|cable~0_combout\,
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|cable\(13));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(4),
	combout => \Control~combout\(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(1),
	combout => \Control~combout\(1));

-- Location: LC_X4_Y2_N4
\UAL0|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL0|S~0_combout\ = (\Control~combout\(4) & ((\Control~combout\(1)) # (\Control~combout\(6) $ (!\B~combout\(0))))) # (!\Control~combout\(4) & (\Control~combout\(1) & (\Control~combout\(6) $ (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(4),
	datab => \Control~combout\(6),
	datac => \B~combout\(0),
	datad => \Control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|S~0_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(5),
	combout => \Control~combout\(5));

-- Location: LC_X4_Y1_N1
\UAL0|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL0|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(0) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Control~combout\(6),
	datac => \Control~combout\(5),
	datad => \Control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|S~1_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Control[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Control(3),
	combout => \Control~combout\(3));

-- Location: LC_X4_Y2_N8
\UAL0|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL0|S~2_combout\ = (\UAL0|S~0_combout\) # ((\UAL0|cable\(0) & (\UAL0|S~1_combout\)) # (!\UAL0|cable\(0) & ((\Control~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL0|S~0_combout\,
	datab => \UAL0|cable\(0),
	datac => \UAL0|S~1_combout\,
	datad => \Control~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|S~2_combout\);

-- Location: LC_X4_Y2_N3
\UAL0|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL0|S~3_combout\ = (\UAL0|cable\(13)) # ((\UAL0|S~2_combout\) # ((\Control~combout\(2) & \UAL0|H0|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(2),
	datab => \UAL0|H0|s~combout\,
	datac => \UAL0|cable\(13),
	datad => \UAL0|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL0|S~3_combout\);

-- Location: LC_X7_Y1_N8
\UAL1|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL1|H0|s~combout\ = \Control~combout\(7) $ (\A~combout\(1) $ (\Control~combout\(6) $ (\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \A~combout\(1),
	datac => \Control~combout\(6),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|H0|s~combout\);

-- Location: LC_X7_Y1_N3
\UAL1|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL1|cable\(13) = (\Control~combout\(0) & (\UAL1|H0|s~combout\ $ (((\UAL0|cable[7]~0_combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL1|H0|s~combout\,
	datab => \UAL0|cable[7]~0_combout\,
	datac => \Control~combout\(0),
	datad => \UAL7|cable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|cable\(13));

-- Location: LC_X7_Y1_N6
\UAL1|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL1|S~0_combout\ = (\Control~combout\(4) & ((\Control~combout\(1)) # (\B~combout\(1) $ (!\Control~combout\(6))))) # (!\Control~combout\(4) & (\Control~combout\(1) & (\B~combout\(1) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(4),
	datab => \B~combout\(1),
	datac => \Control~combout\(6),
	datad => \Control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|S~0_combout\);

-- Location: LC_X7_Y1_N1
\UAL1|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL1|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(1) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "beaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(1),
	datab => \B~combout\(1),
	datac => \Control~combout\(6),
	datad => \Control~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|S~1_combout\);

-- Location: LC_X7_Y1_N2
\UAL1|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL1|S~2_combout\ = (\UAL1|S~0_combout\) # ((\UAL1|cable\(0) & ((\UAL1|S~1_combout\))) # (!\UAL1|cable\(0) & (\Control~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL1|S~0_combout\,
	datab => \UAL1|cable\(0),
	datac => \Control~combout\(3),
	datad => \UAL1|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|S~2_combout\);

-- Location: LC_X7_Y1_N7
\UAL1|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL1|S~3_combout\ = (\UAL1|cable\(13)) # ((\UAL1|S~2_combout\) # ((\Control~combout\(2) & \UAL1|H0|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL1|cable\(13),
	datab => \UAL1|S~2_combout\,
	datac => \Control~combout\(2),
	datad => \UAL1|H0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL1|S~3_combout\);

-- Location: LC_X5_Y3_N3
\UAL2|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL2|H0|s~combout\ = \Control~combout\(7) $ (\B~combout\(2) $ (\Control~combout\(6) $ (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \B~combout\(2),
	datac => \Control~combout\(6),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|H0|s~combout\);

-- Location: LC_X5_Y3_N7
\UAL2|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL2|cable\(13) = (\Control~combout\(0) & (\UAL2|H0|s~combout\ $ (((\UAL1|cable[7]~2_combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL2|H0|s~combout\,
	datab => \UAL1|cable[7]~2_combout\,
	datac => \UAL7|cable~0_combout\,
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|cable\(13));

-- Location: LC_X5_Y3_N1
\UAL2|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL2|S~0_combout\ = (\Control~combout\(6) & ((\B~combout\(2) & ((\Control~combout\(4)))) # (!\B~combout\(2) & (\Control~combout\(1))))) # (!\Control~combout\(6) & ((\B~combout\(2) & (\Control~combout\(1))) # (!\B~combout\(2) & ((\Control~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f960",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(6),
	datab => \B~combout\(2),
	datac => \Control~combout\(1),
	datad => \Control~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|S~0_combout\);

-- Location: LC_X5_Y3_N4
\UAL2|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL2|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(2) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "beaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(1),
	datab => \B~combout\(2),
	datac => \Control~combout\(6),
	datad => \Control~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|S~1_combout\);

-- Location: LC_X5_Y3_N0
\UAL2|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL2|S~2_combout\ = (\UAL2|S~0_combout\) # ((\UAL2|cable\(0) & (\UAL2|S~1_combout\)) # (!\UAL2|cable\(0) & ((\Control~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL2|cable\(0),
	datab => \UAL2|S~0_combout\,
	datac => \UAL2|S~1_combout\,
	datad => \Control~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|S~2_combout\);

-- Location: LC_X5_Y3_N6
\UAL2|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL2|S~3_combout\ = (\UAL2|cable\(13)) # ((\UAL2|S~2_combout\) # ((\UAL2|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL2|H0|s~combout\,
	datab => \UAL2|cable\(13),
	datac => \UAL2|S~2_combout\,
	datad => \Control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL2|S~3_combout\);

-- Location: LC_X3_Y3_N0
\UAL3|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL3|H0|s~combout\ = \B~combout\(3) $ (\Control~combout\(7) $ (\A~combout\(3) $ (\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Control~combout\(7),
	datac => \A~combout\(3),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|H0|s~combout\);

-- Location: LC_X4_Y2_N1
\UAL3|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL3|cable\(13) = (\Control~combout\(0) & (\UAL3|H0|s~combout\ $ (((\UAL2|cable[7]~2_combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL2|cable[7]~2_combout\,
	datab => \UAL3|H0|s~combout\,
	datac => \UAL7|cable~0_combout\,
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|cable\(13));

-- Location: LC_X3_Y3_N9
\UAL3|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL3|S~0_combout\ = (\B~combout\(3) & ((\Control~combout\(6) & ((\Control~combout\(4)))) # (!\Control~combout\(6) & (\Control~combout\(1))))) # (!\B~combout\(3) & ((\Control~combout\(6) & (\Control~combout\(1))) # (!\Control~combout\(6) & 
-- ((\Control~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f960",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Control~combout\(6),
	datac => \Control~combout\(1),
	datad => \Control~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|S~0_combout\);

-- Location: LC_X3_Y3_N3
\UAL3|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL3|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(3) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Control~combout\(6),
	datac => \Control~combout\(1),
	datad => \Control~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|S~1_combout\);

-- Location: LC_X3_Y3_N4
\UAL3|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL3|S~2_combout\ = (\UAL3|S~0_combout\) # ((\UAL3|cable\(0) & ((\UAL3|S~1_combout\))) # (!\UAL3|cable\(0) & (\Control~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL3|cable\(0),
	datab => \UAL3|S~0_combout\,
	datac => \Control~combout\(3),
	datad => \UAL3|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|S~2_combout\);

-- Location: LC_X3_Y3_N2
\UAL3|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL3|S~3_combout\ = (\UAL3|cable\(13)) # ((\UAL3|S~2_combout\) # ((\UAL3|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL3|cable\(13),
	datab => \UAL3|H0|s~combout\,
	datac => \UAL3|S~2_combout\,
	datad => \Control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL3|S~3_combout\);

-- Location: LC_X6_Y3_N9
\UAL4|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL4|H0|s~combout\ = \A~combout\(4) $ (\Control~combout\(7) $ (\Control~combout\(6) $ (\B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \Control~combout\(7),
	datac => \Control~combout\(6),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|H0|s~combout\);

-- Location: LC_X6_Y3_N4
\UAL4|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL4|cable\(13) = (\Control~combout\(0) & (\UAL4|H0|s~combout\ $ (((\UAL3|cable[7]~2_combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(0),
	datab => \UAL3|cable[7]~2_combout\,
	datac => \UAL7|cable~0_combout\,
	datad => \UAL4|H0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|cable\(13));

-- Location: LC_X3_Y3_N7
\UAL4|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL4|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(4) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \Control~combout\(6),
	datac => \Control~combout\(1),
	datad => \Control~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|S~1_combout\);

-- Location: LC_X3_Y3_N6
\UAL4|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL4|S~0_combout\ = (\Control~combout\(4) & ((\Control~combout\(1)) # (\B~combout\(4) $ (!\Control~combout\(6))))) # (!\Control~combout\(4) & (\Control~combout\(1) & (\B~combout\(4) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(4),
	datab => \B~combout\(4),
	datac => \Control~combout\(1),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|S~0_combout\);

-- Location: LC_X3_Y3_N5
\UAL4|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL4|S~2_combout\ = (\UAL4|S~0_combout\) # ((\UAL4|cable\(0) & (\UAL4|S~1_combout\)) # (!\UAL4|cable\(0) & ((\Control~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL4|cable\(0),
	datab => \UAL4|S~1_combout\,
	datac => \Control~combout\(3),
	datad => \UAL4|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|S~2_combout\);

-- Location: LC_X6_Y3_N8
\UAL4|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL4|S~3_combout\ = (\UAL4|cable\(13)) # ((\UAL4|S~2_combout\) # ((\UAL4|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL4|cable\(13),
	datab => \UAL4|H0|s~combout\,
	datac => \Control~combout\(2),
	datad => \UAL4|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL4|S~3_combout\);

-- Location: LC_X4_Y1_N7
\UAL5|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL5|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\B~combout\(5) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Control~combout\(6),
	datac => \Control~combout\(5),
	datad => \Control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|S~1_combout\);

-- Location: LC_X4_Y1_N2
\UAL5|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL5|S~0_combout\ = (\B~combout\(5) & ((\Control~combout\(6) & (\Control~combout\(4))) # (!\Control~combout\(6) & ((\Control~combout\(1)))))) # (!\B~combout\(5) & ((\Control~combout\(6) & ((\Control~combout\(1)))) # (!\Control~combout\(6) & 
-- (\Control~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Control~combout\(6),
	datac => \Control~combout\(4),
	datad => \Control~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|S~0_combout\);

-- Location: LC_X4_Y1_N3
\UAL5|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL5|S~2_combout\ = (\UAL5|S~0_combout\) # ((\UAL5|cable\(0) & ((\UAL5|S~1_combout\))) # (!\UAL5|cable\(0) & (\Control~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(3),
	datab => \UAL5|cable\(0),
	datac => \UAL5|S~1_combout\,
	datad => \UAL5|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|S~2_combout\);

-- Location: LC_X4_Y1_N0
\UAL5|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL5|H0|s~combout\ = \B~combout\(5) $ (\Control~combout\(7) $ (\A~combout\(5) $ (\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Control~combout\(7),
	datac => \A~combout\(5),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|H0|s~combout\);

-- Location: LC_X4_Y1_N6
\UAL5|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL5|cable\(13) = (\Control~combout\(0) & (\UAL5|H0|s~combout\ $ (((\UAL7|cable~0_combout\) # (\UAL4|cable[7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL7|cable~0_combout\,
	datab => \UAL5|H0|s~combout\,
	datac => \UAL4|cable[7]~2_combout\,
	datad => \Control~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|cable\(13));

-- Location: LC_X4_Y1_N5
\UAL5|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL5|S~3_combout\ = (\UAL5|S~2_combout\) # ((\UAL5|cable\(13)) # ((\UAL5|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL5|S~2_combout\,
	datab => \UAL5|H0|s~combout\,
	datac => \UAL5|cable\(13),
	datad => \Control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL5|S~3_combout\);

-- Location: LC_X4_Y3_N1
\UAL6|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL6|H0|s~combout\ = \Control~combout\(7) $ (\A~combout\(6) $ (\B~combout\(6) $ (\Control~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \A~combout\(6),
	datac => \B~combout\(6),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|H0|s~combout\);

-- Location: LC_X4_Y3_N4
\UAL6|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL6|cable\(13) = (\Control~combout\(0) & (\UAL6|H0|s~combout\ $ (((\UAL7|cable~0_combout\) # (\UAL5|cable[7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(0),
	datab => \UAL7|cable~0_combout\,
	datac => \UAL5|cable[7]~2_combout\,
	datad => \UAL6|H0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|cable\(13));

-- Location: LC_X4_Y3_N7
\UAL6|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL6|S~0_combout\ = (\Control~combout\(4) & ((\Control~combout\(1)) # (\B~combout\(6) $ (!\Control~combout\(6))))) # (!\Control~combout\(4) & (\Control~combout\(1) & (\B~combout\(6) $ (\Control~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(4),
	datab => \Control~combout\(1),
	datac => \B~combout\(6),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|S~0_combout\);

-- Location: LC_X4_Y3_N6
\UAL6|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL6|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\Control~combout\(6) $ (\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "decc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(6),
	datab => \Control~combout\(1),
	datac => \B~combout\(6),
	datad => \Control~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|S~1_combout\);

-- Location: LC_X4_Y3_N8
\UAL6|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL6|S~2_combout\ = (\UAL6|S~0_combout\) # ((\UAL6|cable\(0) & (\UAL6|S~1_combout\)) # (!\UAL6|cable\(0) & ((\Control~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL6|cable\(0),
	datab => \UAL6|S~0_combout\,
	datac => \UAL6|S~1_combout\,
	datad => \Control~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|S~2_combout\);

-- Location: LC_X4_Y3_N9
\UAL6|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL6|S~3_combout\ = (\UAL6|cable\(13)) # ((\UAL6|S~2_combout\) # ((\UAL6|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL6|cable\(13),
	datab => \UAL6|H0|s~combout\,
	datac => \Control~combout\(2),
	datad => \UAL6|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL6|S~3_combout\);

-- Location: LC_X6_Y4_N8
\UAL7|H0|s\ : maxii_lcell
-- Equation(s):
-- \UAL7|H0|s~combout\ = \Control~combout\(7) $ (\Control~combout\(6) $ (\A~combout\(7) $ (\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(7),
	datab => \Control~combout\(6),
	datac => \A~combout\(7),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|H0|s~combout\);

-- Location: LC_X6_Y4_N0
\UAL7|cable[13]\ : maxii_lcell
-- Equation(s):
-- \UAL7|cable\(13) = (\Control~combout\(0) & (\UAL7|H0|s~combout\ $ (((\UAL6|cable[7]~2_combout\) # (\UAL7|cable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL7|H0|s~combout\,
	datab => \UAL6|cable[7]~2_combout\,
	datac => \Control~combout\(0),
	datad => \UAL7|cable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|cable\(13));

-- Location: LC_X6_Y4_N9
\UAL7|S~0\ : maxii_lcell
-- Equation(s):
-- \UAL7|S~0_combout\ = (\B~combout\(7) & ((\Control~combout\(6) & (\Control~combout\(4))) # (!\Control~combout\(6) & ((\Control~combout\(1)))))) # (!\B~combout\(7) & ((\Control~combout\(6) & ((\Control~combout\(1)))) # (!\Control~combout\(6) & 
-- (\Control~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Control~combout\(4),
	datac => \Control~combout\(1),
	datad => \Control~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|S~0_combout\);

-- Location: LC_X6_Y4_N5
\UAL7|S~1\ : maxii_lcell
-- Equation(s):
-- \UAL7|S~1_combout\ = (\Control~combout\(1)) # ((\Control~combout\(5) & (\Control~combout\(6) $ (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(1),
	datab => \Control~combout\(6),
	datac => \Control~combout\(5),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|S~1_combout\);

-- Location: LC_X6_Y4_N4
\UAL7|S~2\ : maxii_lcell
-- Equation(s):
-- \UAL7|S~2_combout\ = (\UAL7|S~0_combout\) # ((\UAL7|cable\(0) & ((\UAL7|S~1_combout\))) # (!\UAL7|cable\(0) & (\Control~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Control~combout\(3),
	datab => \UAL7|S~0_combout\,
	datac => \UAL7|S~1_combout\,
	datad => \UAL7|cable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|S~2_combout\);

-- Location: LC_X6_Y4_N7
\UAL7|S~3\ : maxii_lcell
-- Equation(s):
-- \UAL7|S~3_combout\ = (\UAL7|cable\(13)) # ((\UAL7|S~2_combout\) # ((\UAL7|H0|s~combout\ & \Control~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UAL7|H0|s~combout\,
	datab => \UAL7|cable\(13),
	datac => \UAL7|S~2_combout\,
	datad => \Control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \UAL7|S~3_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL7|Cout~3_combout\,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL0|S~3_combout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL1|S~3_combout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL2|S~3_combout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL3|S~3_combout\,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL4|S~3_combout\,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL5|S~3_combout\,
	oe => VCC,
	padio => ww_S(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL6|S~3_combout\,
	oe => VCC,
	padio => ww_S(6));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \UAL7|S~3_combout\,
	oe => VCC,
	padio => ww_S(7));
END structure;


