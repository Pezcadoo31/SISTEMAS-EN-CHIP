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

-- DATE "04/12/2024 11:56:58"

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

ENTITY 	MAS1_24B IS
    PORT (
	A : IN std_logic_vector(23 DOWNTO 0);
	Z : OUT std_logic_vector(23 DOWNTO 0)
	);
END MAS1_24B;

-- Design Ports Information


ARCHITECTURE structure OF MAS1_24B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(23 DOWNTO 0);
SIGNAL \I1|s~combout\ : std_logic;
SIGNAL \I2|s~combout\ : std_logic;
SIGNAL \I3|s~combout\ : std_logic;
SIGNAL \I2|Cout~combout\ : std_logic;
SIGNAL \I4|s~combout\ : std_logic;
SIGNAL \I5|s~combout\ : std_logic;
SIGNAL \I5|Cout~combout\ : std_logic;
SIGNAL \I6|s~combout\ : std_logic;
SIGNAL \I7|s~combout\ : std_logic;
SIGNAL \I8|s~combout\ : std_logic;
SIGNAL \I9|s~combout\ : std_logic;
SIGNAL \I7|Cout~combout\ : std_logic;
SIGNAL \I10|s~combout\ : std_logic;
SIGNAL \I11|s~combout\ : std_logic;
SIGNAL \I12|s~combout\ : std_logic;
SIGNAL \I13|s~combout\ : std_logic;
SIGNAL \I8|Cout~combout\ : std_logic;
SIGNAL \I14|s~combout\ : std_logic;
SIGNAL \I11|Cout~combout\ : std_logic;
SIGNAL \I15|s~combout\ : std_logic;
SIGNAL \I14|Cout~combout\ : std_logic;
SIGNAL \I16|s~combout\ : std_logic;
SIGNAL \I17|s~combout\ : std_logic;
SIGNAL \I18|s~combout\ : std_logic;
SIGNAL \I15|Cout~combout\ : std_logic;
SIGNAL \I19|s~combout\ : std_logic;
SIGNAL \I20|s~combout\ : std_logic;
SIGNAL \I21|s~combout\ : std_logic;
SIGNAL \I18|Cout~combout\ : std_logic;
SIGNAL \I22|s~combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_A~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_A <= A;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A~combout\(0) <= NOT \A~combout\(0);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X4_Y1_N2
\I1|s\ : maxii_lcell
-- Equation(s):
-- \I1|s~combout\ = (\A~combout\(0) $ ((\A~combout\(1))))

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
	datab => \A~combout\(0),
	datac => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|s~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X4_Y1_N9
\I2|s\ : maxii_lcell
-- Equation(s):
-- \I2|s~combout\ = \A~combout\(2) $ (((\A~combout\(1) & (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|s~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X4_Y1_N7
\I3|s\ : maxii_lcell
-- Equation(s):
-- \I3|s~combout\ = \A~combout\(3) $ (((\A~combout\(1) & (\A~combout\(2) & \A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|s~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X4_Y1_N6
\I2|Cout\ : maxii_lcell
-- Equation(s):
-- \I2|Cout~combout\ = (\A~combout\(1) & (\A~combout\(0) & (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|Cout~combout\);

-- Location: LC_X4_Y1_N4
\I4|s\ : maxii_lcell
-- Equation(s):
-- \I4|s~combout\ = \A~combout\(4) $ (((\A~combout\(3) & (\I2|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(3),
	datac => \I2|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|s~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X4_Y1_N5
\I5|s\ : maxii_lcell
-- Equation(s):
-- \I5|s~combout\ = \A~combout\(5) $ (((\A~combout\(4) & (\A~combout\(3) & \I2|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(3),
	datac => \I2|Cout~combout\,
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|s~combout\);

-- Location: LC_X4_Y1_N8
\I5|Cout\ : maxii_lcell
-- Equation(s):
-- \I5|Cout~combout\ = (\A~combout\(4) & (\A~combout\(3) & (\I2|Cout~combout\ & \A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(3),
	datac => \I2|Cout~combout\,
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|Cout~combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X4_Y2_N8
\I6|s\ : maxii_lcell
-- Equation(s):
-- \I6|s~combout\ = (\I5|Cout~combout\ $ (((\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I5|Cout~combout\,
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|s~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X4_Y2_N4
\I7|s\ : maxii_lcell
-- Equation(s):
-- \I7|s~combout\ = (\A~combout\(7) $ (((\I5|Cout~combout\ & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I5|Cout~combout\,
	datac => \A~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|s~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: LC_X4_Y2_N5
\I8|s\ : maxii_lcell
-- Equation(s):
-- \I8|s~combout\ = \A~combout\(8) $ (((\I5|Cout~combout\ & (\A~combout\(7) & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I5|Cout~combout\,
	datab => \A~combout\(8),
	datac => \A~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|s~combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: LC_X4_Y2_N6
\I9|s\ : maxii_lcell
-- Equation(s):
-- \I9|s~combout\ = \A~combout\(9) $ (((\I5|Cout~combout\ & (\A~combout\(7) & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \I5|Cout~combout\,
	datac => \A~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I9|s~combout\);

-- Location: LC_X4_Y2_N2
\I7|Cout\ : maxii_lcell
-- Equation(s):
-- \I7|Cout~combout\ = ((\I5|Cout~combout\ & (\A~combout\(7) & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I5|Cout~combout\,
	datac => \A~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|Cout~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: LC_X4_Y2_N1
\I10|s\ : maxii_lcell
-- Equation(s):
-- \I10|s~combout\ = (\A~combout\(10) $ (((\I7|Cout~combout\ & \A~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I7|Cout~combout\,
	datac => \A~combout\(10),
	datad => \A~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I10|s~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: LC_X2_Y2_N5
\I11|s\ : maxii_lcell
-- Equation(s):
-- \I11|s~combout\ = \A~combout\(11) $ ((((\A~combout\(9) & \I7|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datac => \A~combout\(9),
	datad => \I7|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|s~combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: LC_X4_Y2_N3
\I12|s\ : maxii_lcell
-- Equation(s):
-- \I12|s~combout\ = \A~combout\(12) $ (((\A~combout\(10) & (\I7|Cout~combout\ & \A~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \I7|Cout~combout\,
	datac => \A~combout\(12),
	datad => \A~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I12|s~combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: LC_X2_Y2_N4
\I13|s\ : maxii_lcell
-- Equation(s):
-- \I13|s~combout\ = \A~combout\(13) $ (((\A~combout\(11) & (\A~combout\(9) & \I7|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \A~combout\(13),
	datac => \A~combout\(9),
	datad => \I7|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I13|s~combout\);

-- Location: LC_X4_Y2_N9
\I8|Cout\ : maxii_lcell
-- Equation(s):
-- \I8|Cout~combout\ = (\I5|Cout~combout\ & (\A~combout\(8) & (\A~combout\(7) & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I5|Cout~combout\,
	datab => \A~combout\(8),
	datac => \A~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|Cout~combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: LC_X4_Y2_N0
\I14|s\ : maxii_lcell
-- Equation(s):
-- \I14|s~combout\ = \A~combout\(14) $ (((\A~combout\(10) & (\I8|Cout~combout\ & \A~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \I8|Cout~combout\,
	datac => \A~combout\(12),
	datad => \A~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|s~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: LC_X2_Y2_N8
\I11|Cout\ : maxii_lcell
-- Equation(s):
-- \I11|Cout~combout\ = (\A~combout\(11) & (((\A~combout\(9) & \I7|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datac => \A~combout\(9),
	datad => \I7|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I11|Cout~combout\);

-- Location: LC_X2_Y2_N7
\I15|s\ : maxii_lcell
-- Equation(s):
-- \I15|s~combout\ = (\A~combout\(15) $ (((\A~combout\(13) & \I11|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(13),
	datac => \A~combout\(15),
	datad => \I11|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|s~combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: LC_X4_Y2_N7
\I14|Cout\ : maxii_lcell
-- Equation(s):
-- \I14|Cout~combout\ = (\A~combout\(10) & (\I8|Cout~combout\ & (\A~combout\(12) & \A~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \I8|Cout~combout\,
	datac => \A~combout\(12),
	datad => \A~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I14|Cout~combout\);

-- Location: LC_X3_Y2_N5
\I16|s\ : maxii_lcell
-- Equation(s):
-- \I16|s~combout\ = ((\A~combout\(16) $ (\I14|Cout~combout\)))

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
	datac => \A~combout\(16),
	datad => \I14|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I16|s~combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: LC_X2_Y2_N6
\I17|s\ : maxii_lcell
-- Equation(s):
-- \I17|s~combout\ = \A~combout\(17) $ (((\I11|Cout~combout\ & (\A~combout\(13) & \A~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I11|Cout~combout\,
	datab => \A~combout\(13),
	datac => \A~combout\(15),
	datad => \A~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I17|s~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: LC_X3_Y2_N4
\I18|s\ : maxii_lcell
-- Equation(s):
-- \I18|s~combout\ = (\A~combout\(18) $ (((\A~combout\(16) & \I14|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(18),
	datac => \A~combout\(16),
	datad => \I14|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I18|s~combout\);

-- Location: LC_X2_Y2_N2
\I15|Cout\ : maxii_lcell
-- Equation(s):
-- \I15|Cout~combout\ = ((\A~combout\(13) & (\A~combout\(15) & \I11|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(13),
	datac => \A~combout\(15),
	datad => \I11|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I15|Cout~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: LC_X2_Y2_N3
\I19|s\ : maxii_lcell
-- Equation(s):
-- \I19|s~combout\ = (\A~combout\(19) $ (((\I15|Cout~combout\ & \A~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \I15|Cout~combout\,
	datac => \A~combout\(19),
	datad => \A~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I19|s~combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: LC_X3_Y2_N6
\I20|s\ : maxii_lcell
-- Equation(s):
-- \I20|s~combout\ = \A~combout\(20) $ (((\A~combout\(16) & (\A~combout\(18) & \I14|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \A~combout\(18),
	datac => \A~combout\(20),
	datad => \I14|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I20|s~combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: LC_X2_Y2_N9
\I21|s\ : maxii_lcell
-- Equation(s):
-- \I21|s~combout\ = \A~combout\(21) $ (((\I15|Cout~combout\ & (\A~combout\(19) & \A~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \I15|Cout~combout\,
	datac => \A~combout\(19),
	datad => \A~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I21|s~combout\);

-- Location: LC_X3_Y2_N8
\I18|Cout\ : maxii_lcell
-- Equation(s):
-- \I18|Cout~combout\ = ((\A~combout\(18) & (\A~combout\(16) & \I14|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(18),
	datac => \A~combout\(16),
	datad => \I14|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I18|Cout~combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: LC_X3_Y2_N2
\I22|s\ : maxii_lcell
-- Equation(s):
-- \I22|s~combout\ = (\A~combout\(22) $ (((\I18|Cout~combout\ & \A~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I18|Cout~combout\,
	datac => \A~combout\(20),
	datad => \A~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I22|s~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: LC_X3_Y2_N9
\Z~0\ : maxii_lcell
-- Equation(s):
-- \Z~0_combout\ = \A~combout\(23) $ (((\I18|Cout~combout\ & (\A~combout\(20) & \A~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I18|Cout~combout\,
	datab => \A~combout\(23),
	datac => \A~combout\(20),
	datad => \A~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_A~combout\(0),
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1|s~combout\,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I2|s~combout\,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I3|s~combout\,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I4|s~combout\,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I5|s~combout\,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I6|s~combout\,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I7|s~combout\,
	oe => VCC,
	padio => ww_Z(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I8|s~combout\,
	oe => VCC,
	padio => ww_Z(8));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I9|s~combout\,
	oe => VCC,
	padio => ww_Z(9));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I10|s~combout\,
	oe => VCC,
	padio => ww_Z(10));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I11|s~combout\,
	oe => VCC,
	padio => ww_Z(11));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I12|s~combout\,
	oe => VCC,
	padio => ww_Z(12));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I13|s~combout\,
	oe => VCC,
	padio => ww_Z(13));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I14|s~combout\,
	oe => VCC,
	padio => ww_Z(14));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I15|s~combout\,
	oe => VCC,
	padio => ww_Z(15));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I16|s~combout\,
	oe => VCC,
	padio => ww_Z(16));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I17|s~combout\,
	oe => VCC,
	padio => ww_Z(17));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I18|s~combout\,
	oe => VCC,
	padio => ww_Z(18));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I19|s~combout\,
	oe => VCC,
	padio => ww_Z(19));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I20|s~combout\,
	oe => VCC,
	padio => ww_Z(20));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I21|s~combout\,
	oe => VCC,
	padio => ww_Z(21));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I22|s~combout\,
	oe => VCC,
	padio => ww_Z(22));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~0_combout\,
	oe => VCC,
	padio => ww_Z(23));
END structure;


