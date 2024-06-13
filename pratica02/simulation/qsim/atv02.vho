-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "04/10/2024 16:33:45"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testSomador IS
    PORT (
	Sum : OUT std_logic_vector(4 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0)
	);
END testSomador;

-- Design Ports Information
-- Sum[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testSomador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sum : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|Sum[0]~1\ : std_logic;
SIGNAL \inst|Sum[1]~3\ : std_logic;
SIGNAL \inst|Sum[2]~5\ : std_logic;
SIGNAL \inst|Sum[3]~7\ : std_logic;
SIGNAL \inst|Sum[4]~8_combout\ : std_logic;
SIGNAL \inst|Sum[3]~6_combout\ : std_logic;
SIGNAL \inst|Sum[2]~4_combout\ : std_logic;
SIGNAL \inst|Sum[1]~2_combout\ : std_logic;
SIGNAL \inst|Sum[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Sum <= ww_Sum;
ww_A <= A;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum[4]~8_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum[3]~6_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum[2]~4_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum[1]~2_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum[0]~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOIBUF_X0_Y34_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y30_N20
\inst|Sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sum[0]~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \inst|Sum[0]~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \inst|Sum[0]~0_combout\,
	cout => \inst|Sum[0]~1\);

-- Location: LCCOMB_X1_Y30_N22
\inst|Sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sum[1]~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\inst|Sum[0]~1\ & VCC)) # (!\B[1]~input_o\ & (!\inst|Sum[0]~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\inst|Sum[0]~1\)) # (!\B[1]~input_o\ & ((\inst|Sum[0]~1\) # (GND)))))
-- \inst|Sum[1]~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\inst|Sum[0]~1\)) # (!\A[1]~input_o\ & ((!\inst|Sum[0]~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst|Sum[0]~1\,
	combout => \inst|Sum[1]~2_combout\,
	cout => \inst|Sum[1]~3\);

-- Location: LCCOMB_X1_Y30_N24
\inst|Sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sum[2]~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\inst|Sum[1]~3\)))) # (GND)
-- \inst|Sum[2]~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\inst|Sum[1]~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\inst|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \inst|Sum[1]~3\,
	combout => \inst|Sum[2]~4_combout\,
	cout => \inst|Sum[2]~5\);

-- Location: LCCOMB_X1_Y30_N26
\inst|Sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sum[3]~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\inst|Sum[2]~5\ & VCC)) # (!\B[3]~input_o\ & (!\inst|Sum[2]~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\inst|Sum[2]~5\)) # (!\B[3]~input_o\ & ((\inst|Sum[2]~5\) # (GND)))))
-- \inst|Sum[3]~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\inst|Sum[2]~5\)) # (!\A[3]~input_o\ & ((!\inst|Sum[2]~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst|Sum[2]~5\,
	combout => \inst|Sum[3]~6_combout\,
	cout => \inst|Sum[3]~7\);

-- Location: LCCOMB_X1_Y30_N28
\inst|Sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sum[4]~8_combout\ = !\inst|Sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Sum[3]~7\,
	combout => \inst|Sum[4]~8_combout\);

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;
END structure;


