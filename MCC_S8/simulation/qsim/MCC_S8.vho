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

-- DATE "04/04/2024 10:49:02"

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

ENTITY 	MCC_S8 IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Ci : IN std_logic;
	S : OUT std_logic_vector(7 DOWNTO 0);
	Cout : OUT std_logic
	);
END MCC_S8;

-- Design Ports Information


ARCHITECTURE structure OF MCC_S8 IS
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
SIGNAL ww_Ci : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \Ci~combout\ : std_logic;
SIGNAL \M0|S~combout\ : std_logic;
SIGNAL \M0|Cout~0_combout\ : std_logic;
SIGNAL \M1|S~combout\ : std_logic;
SIGNAL \M1|Cout~0_combout\ : std_logic;
SIGNAL \M2|S~combout\ : std_logic;
SIGNAL \M2|Cout~0_combout\ : std_logic;
SIGNAL \M3|S~combout\ : std_logic;
SIGNAL \M3|Cout~0_combout\ : std_logic;
SIGNAL \M4|S~combout\ : std_logic;
SIGNAL \M4|Cout~0_combout\ : std_logic;
SIGNAL \M5|S~combout\ : std_logic;
SIGNAL \M5|Cout~0_combout\ : std_logic;
SIGNAL \M6|S~combout\ : std_logic;
SIGNAL \M6|Cout~0_combout\ : std_logic;
SIGNAL \M7|S~combout\ : std_logic;
SIGNAL \M7|Cout~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Ci <= Ci;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ci~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ci,
	combout => \Ci~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X3_Y1_N8
\M0|S\ : maxii_lcell
-- Equation(s):
-- \M0|S~combout\ = \Ci~combout\ $ (((\B~combout\(0) $ (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ci~combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|S~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LC_X3_Y1_N7
\M0|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M0|Cout~0_combout\ = (\Ci~combout\ & (((\B~combout\(0)) # (\A~combout\(0))))) # (!\Ci~combout\ & (((\B~combout\(0) & \A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ci~combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|Cout~0_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X3_Y1_N5
\M1|S\ : maxii_lcell
-- Equation(s):
-- \M1|S~combout\ = \B~combout\(1) $ (\M0|Cout~0_combout\ $ ((\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \M0|Cout~0_combout\,
	datac => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M1|S~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LC_X3_Y1_N9
\M1|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M1|Cout~0_combout\ = (\B~combout\(1) & ((\M0|Cout~0_combout\) # ((\A~combout\(1))))) # (!\B~combout\(1) & (\M0|Cout~0_combout\ & (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \M0|Cout~0_combout\,
	datac => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M1|Cout~0_combout\);

-- Location: LC_X3_Y1_N2
\M2|S\ : maxii_lcell
-- Equation(s):
-- \M2|S~combout\ = \A~combout\(2) $ (((\B~combout\(2) $ (\M1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \M1|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2|S~combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X3_Y1_N4
\M2|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M2|Cout~0_combout\ = (\A~combout\(2) & (((\B~combout\(2)) # (\M1|Cout~0_combout\)))) # (!\A~combout\(2) & (((\B~combout\(2) & \M1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \M1|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2|Cout~0_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X3_Y1_N6
\M3|S\ : maxii_lcell
-- Equation(s):
-- \M3|S~combout\ = (\A~combout\(3) $ (\M2|Cout~0_combout\ $ (\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \M2|Cout~0_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3|S~combout\);

-- Location: LC_X3_Y1_N3
\M3|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M3|Cout~0_combout\ = ((\A~combout\(3) & ((\M2|Cout~0_combout\) # (\B~combout\(3)))) # (!\A~combout\(3) & (\M2|Cout~0_combout\ & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \M2|Cout~0_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3|Cout~0_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LC_X5_Y1_N7
\M4|S\ : maxii_lcell
-- Equation(s):
-- \M4|S~combout\ = (\M3|Cout~0_combout\ $ (\A~combout\(4) $ (\B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M3|Cout~0_combout\,
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M4|S~combout\);

-- Location: LC_X5_Y1_N9
\M4|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M4|Cout~0_combout\ = ((\M3|Cout~0_combout\ & ((\A~combout\(4)) # (\B~combout\(4)))) # (!\M3|Cout~0_combout\ & (\A~combout\(4) & \B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M3|Cout~0_combout\,
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M4|Cout~0_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X5_Y1_N5
\M5|S\ : maxii_lcell
-- Equation(s):
-- \M5|S~combout\ = (\M4|Cout~0_combout\ $ (\B~combout\(5) $ (\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M4|Cout~0_combout\,
	datac => \B~combout\(5),
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M5|S~combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X5_Y1_N2
\M5|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M5|Cout~0_combout\ = ((\M4|Cout~0_combout\ & ((\B~combout\(5)) # (\A~combout\(5)))) # (!\M4|Cout~0_combout\ & (\B~combout\(5) & \A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M4|Cout~0_combout\,
	datac => \B~combout\(5),
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M5|Cout~0_combout\);

-- Location: LC_X5_Y1_N6
\M6|S\ : maxii_lcell
-- Equation(s):
-- \M6|S~combout\ = \B~combout\(6) $ (((\A~combout\(6) $ (\M5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \M5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6|S~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X5_Y1_N8
\M6|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M6|Cout~0_combout\ = (\B~combout\(6) & (((\A~combout\(6)) # (\M5|Cout~0_combout\)))) # (!\B~combout\(6) & (((\A~combout\(6) & \M5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \M5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6|Cout~0_combout\);

-- Location: LC_X5_Y1_N3
\M7|S\ : maxii_lcell
-- Equation(s):
-- \M7|S~combout\ = (\B~combout\(7) $ (\A~combout\(7) $ (\M6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(7),
	datac => \A~combout\(7),
	datad => \M6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M7|S~combout\);

-- Location: LC_X5_Y1_N4
\M7|Cout~0\ : maxii_lcell
-- Equation(s):
-- \M7|Cout~0_combout\ = ((\B~combout\(7) & ((\A~combout\(7)) # (\M6|Cout~0_combout\))) # (!\B~combout\(7) & (\A~combout\(7) & \M6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(7),
	datac => \A~combout\(7),
	datad => \M6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M7|Cout~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|S~combout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M1|S~combout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M2|S~combout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M3|S~combout\,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M4|S~combout\,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M5|S~combout\,
	oe => VCC,
	padio => ww_S(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M6|S~combout\,
	oe => VCC,
	padio => ww_S(6));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M7|S~combout\,
	oe => VCC,
	padio => ww_S(7));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M7|Cout~0_combout\,
	oe => VCC,
	padio => ww_Cout);
END structure;


