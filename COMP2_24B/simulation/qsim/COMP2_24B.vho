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

-- DATE "04/12/2024 12:19:16"

-- 
-- Device: Altera EPM570T144C3 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Comp2_24B IS
    PORT (
	A : IN std_logic_vector(11 DOWNTO 0);
	Z : OUT std_logic_vector(23 DOWNTO 0);
	N : OUT std_logic_vector(23 DOWNTO 0)
	);
END Comp2_24B;

-- Design Ports Information


ARCHITECTURE structure OF Comp2_24B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_N : std_logic_vector(23 DOWNTO 0);
SIGNAL \M0|I1|s~combout\ : std_logic;
SIGNAL \M0|I2|s~combout\ : std_logic;
SIGNAL \M0|I3|s~combout\ : std_logic;
SIGNAL \M0|I2|Cout~combout\ : std_logic;
SIGNAL \M0|I4|s~combout\ : std_logic;
SIGNAL \M0|I5|s~combout\ : std_logic;
SIGNAL \M0|I4|Cout~combout\ : std_logic;
SIGNAL \M0|I6|s~combout\ : std_logic;
SIGNAL \M0|I7|s~combout\ : std_logic;
SIGNAL \M0|I6|Cout~combout\ : std_logic;
SIGNAL \M0|I8|s~combout\ : std_logic;
SIGNAL \M0|I9|s~combout\ : std_logic;
SIGNAL \M0|I10|s~combout\ : std_logic;
SIGNAL \M0|I11|s~combout\ : std_logic;
SIGNAL \M0|I10|Cout~combout\ : std_logic;
SIGNAL \M0|I11|Cout~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_A <= A;
Z <= ww_Z;
N <= ww_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X12_Y4_N9
\M0|I1|s\ : maxii_lcell
-- Equation(s):
-- \M0|I1|s~combout\ = ((\A~combout\(0) $ (\A~combout\(1))))

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
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I1|s~combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X12_Y4_N8
\M0|I2|s\ : maxii_lcell
-- Equation(s):
-- \M0|I2|s~combout\ = \A~combout\(2) $ ((((\A~combout\(0)) # (\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I2|s~combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X12_Y4_N3
\M0|I3|s\ : maxii_lcell
-- Equation(s):
-- \M0|I3|s~combout\ = \A~combout\(3) $ (((\A~combout\(1)) # ((\A~combout\(0)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5556",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(1),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I3|s~combout\);

-- Location: LC_X12_Y4_N6
\M0|I2|Cout\ : maxii_lcell
-- Equation(s):
-- \M0|I2|Cout~combout\ = (\A~combout\(2)) # (((\A~combout\(0)) # (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I2|Cout~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X12_Y4_N5
\M0|I4|s\ : maxii_lcell
-- Equation(s):
-- \M0|I4|s~combout\ = (\A~combout\(4) $ (((\A~combout\(3)) # (\M0|I2|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \M0|I2|Cout~combout\,
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I4|s~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LC_X12_Y4_N7
\M0|I5|s\ : maxii_lcell
-- Equation(s):
-- \M0|I5|s~combout\ = \A~combout\(5) $ (((\A~combout\(3)) # ((\M0|I2|Cout~combout\) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(5),
	datac => \M0|I2|Cout~combout\,
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I5|s~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LC_X12_Y4_N4
\M0|I4|Cout\ : maxii_lcell
-- Equation(s):
-- \M0|I4|Cout~combout\ = (\A~combout\(3)) # (((\M0|I2|Cout~combout\) # (\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \M0|I2|Cout~combout\,
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I4|Cout~combout\);

-- Location: LC_X7_Y4_N5
\M0|I6|s\ : maxii_lcell
-- Equation(s):
-- \M0|I6|s~combout\ = \A~combout\(6) $ (((\A~combout\(5)) # ((\M0|I4|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3636",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \A~combout\(6),
	datac => \M0|I4|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I6|s~combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LC_X7_Y4_N7
\M0|I7|s\ : maxii_lcell
-- Equation(s):
-- \M0|I7|s~combout\ = \A~combout\(7) $ (((\A~combout\(5)) # ((\A~combout\(6)) # (\M0|I4|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \A~combout\(6),
	datac => \M0|I4|Cout~combout\,
	datad => \A~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I7|s~combout\);

-- Location: LC_X7_Y4_N4
\M0|I6|Cout\ : maxii_lcell
-- Equation(s):
-- \M0|I6|Cout~combout\ = (\A~combout\(5)) # ((\A~combout\(6)) # ((\M0|I4|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \A~combout\(6),
	datac => \M0|I4|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I6|Cout~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: LC_X7_Y4_N1
\M0|I8|s\ : maxii_lcell
-- Equation(s):
-- \M0|I8|s~combout\ = (\A~combout\(8) $ (((\A~combout\(7)) # (\M0|I6|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datac => \M0|I6|Cout~combout\,
	datad => \A~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I8|s~combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: LC_X7_Y4_N2
\M0|I9|s\ : maxii_lcell
-- Equation(s):
-- \M0|I9|s~combout\ = \A~combout\(9) $ (((\A~combout\(7)) # ((\M0|I6|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3636",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \A~combout\(9),
	datac => \M0|I6|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I9|s~combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: LC_X7_Y4_N9
\M0|I10|s\ : maxii_lcell
-- Equation(s):
-- \M0|I10|s~combout\ = \A~combout\(10) $ (((\A~combout\(7)) # ((\M0|I6|Cout~combout\) # (\A~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \A~combout\(10),
	datac => \M0|I6|Cout~combout\,
	datad => \A~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I10|s~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: LC_X7_Y4_N6
\M0|I11|s\ : maxii_lcell
-- Equation(s):
-- \M0|I11|s~combout\ = \A~combout\(11) $ (((\A~combout\(7)) # ((\A~combout\(9)) # (\M0|I6|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \A~combout\(9),
	datac => \M0|I6|Cout~combout\,
	datad => \A~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I11|s~combout\);

-- Location: LC_X7_Y4_N3
\M0|I10|Cout\ : maxii_lcell
-- Equation(s):
-- \M0|I10|Cout~combout\ = (\A~combout\(7)) # ((\A~combout\(10)) # ((\M0|I6|Cout~combout\) # (\A~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \A~combout\(10),
	datac => \M0|I6|Cout~combout\,
	datad => \A~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I10|Cout~combout\);

-- Location: LC_X7_Y4_N8
\M0|I11|Cout\ : maxii_lcell
-- Equation(s):
-- \M0|I11|Cout~combout\ = (\A~combout\(7)) # ((\A~combout\(9)) # ((\M0|I6|Cout~combout\) # (\A~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \A~combout\(9),
	datac => \M0|I6|Cout~combout\,
	datad => \A~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M0|I11|Cout~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(0),
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I1|s~combout\,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I2|s~combout\,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I3|s~combout\,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I4|s~combout\,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I5|s~combout\,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I6|s~combout\,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I7|s~combout\,
	oe => VCC,
	padio => ww_Z(7));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I8|s~combout\,
	oe => VCC,
	padio => ww_Z(8));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I9|s~combout\,
	oe => VCC,
	padio => ww_Z(9));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|s~combout\,
	oe => VCC,
	padio => ww_Z(10));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|s~combout\,
	oe => VCC,
	padio => ww_Z(11));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(12));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|Cout~combout\,
	oe => VCC,
	padio => ww_Z(13));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(14));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|Cout~combout\,
	oe => VCC,
	padio => ww_Z(15));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(16));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|Cout~combout\,
	oe => VCC,
	padio => ww_Z(17));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(18));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|Cout~combout\,
	oe => VCC,
	padio => ww_Z(19));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(20));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I11|Cout~combout\,
	oe => VCC,
	padio => ww_Z(21));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(22));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \M0|I10|Cout~combout\,
	oe => VCC,
	padio => ww_Z(23));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(0),
	oe => VCC,
	padio => ww_N(0));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(1),
	oe => VCC,
	padio => ww_N(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(2),
	oe => VCC,
	padio => ww_N(2));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(3),
	oe => VCC,
	padio => ww_N(3));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(4),
	oe => VCC,
	padio => ww_N(4));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(5),
	oe => VCC,
	padio => ww_N(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(6),
	oe => VCC,
	padio => ww_N(6));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(7),
	oe => VCC,
	padio => ww_N(7));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(8),
	oe => VCC,
	padio => ww_N(8));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(9),
	oe => VCC,
	padio => ww_N(9));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(10),
	oe => VCC,
	padio => ww_N(10));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A~combout\(11),
	oe => VCC,
	padio => ww_N(11));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(12));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(13));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(14));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(15));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(16));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[17]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(17));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[18]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(18));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[19]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(19));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[20]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(20));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[21]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(21));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[22]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(22));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N[23]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_N(23));
END structure;


