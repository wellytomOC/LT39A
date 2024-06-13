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

-- DATE "04/11/2024 21:12:56"

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

ENTITY 	sevenSegDecoder IS
    PORT (
	data : IN std_logic_vector(3 DOWNTO 0);
	ss : OUT std_logic_vector(6 DOWNTO 0)
	);
END sevenSegDecoder;

-- Design Ports Information
-- ss[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sevenSegDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ss : std_logic_vector(6 DOWNTO 0);
SIGNAL \ss[0]~output_o\ : std_logic;
SIGNAL \ss[1]~output_o\ : std_logic;
SIGNAL \ss[2]~output_o\ : std_logic;
SIGNAL \ss[3]~output_o\ : std_logic;
SIGNAL \ss[4]~output_o\ : std_logic;
SIGNAL \ss[5]~output_o\ : std_logic;
SIGNAL \ss[6]~output_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \ss~0_combout\ : std_logic;
SIGNAL \ss~1_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \ss~2_combout\ : std_logic;
SIGNAL \ss~3_combout\ : std_logic;
SIGNAL \ss~4_combout\ : std_logic;
SIGNAL \ss~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_data <= data;
ss <= ww_ss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\ss[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~0_combout\,
	devoe => ww_devoe,
	o => \ss[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ss[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~1_combout\,
	devoe => ww_devoe,
	o => \ss[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ss[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal14~0_combout\,
	devoe => ww_devoe,
	o => \ss[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ss[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~2_combout\,
	devoe => ww_devoe,
	o => \ss[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ss[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~3_combout\,
	devoe => ww_devoe,
	o => \ss[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ss[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~4_combout\,
	devoe => ww_devoe,
	o => \ss[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ss[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ss~5_combout\,
	devoe => ww_devoe,
	o => \ss[6]~output_o\);

-- Location: IOIBUF_X89_Y73_N15
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X91_Y69_N24
\ss~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~0_combout\ = (!\data[1]~input_o\ & ((\data[2]~input_o\ & ((!\data[0]~input_o\))) # (!\data[2]~input_o\ & (!\data[3]~input_o\ & \data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~0_combout\);

-- Location: LCCOMB_X91_Y69_N10
\ss~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~1_combout\ = (\data[2]~input_o\ & ((\data[0]~input_o\ & ((!\data[1]~input_o\))) # (!\data[0]~input_o\ & (!\data[3]~input_o\ & \data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~1_combout\);

-- Location: LCCOMB_X91_Y69_N20
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\data[2]~input_o\ & (!\data[3]~input_o\ & (!\data[0]~input_o\ & \data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X91_Y69_N6
\ss~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~2_combout\ = (\data[0]~input_o\ & (\data[2]~input_o\ $ (((!\data[1]~input_o\))))) # (!\data[0]~input_o\ & ((\data[2]~input_o\ & (!\data[3]~input_o\ & !\data[1]~input_o\)) # (!\data[2]~input_o\ & (\data[3]~input_o\ & \data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~2_combout\);

-- Location: LCCOMB_X91_Y69_N8
\ss~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~3_combout\ = (\data[3]~input_o\ & (\data[2]~input_o\ $ (((\data[0]~input_o\ & !\data[1]~input_o\))))) # (!\data[3]~input_o\ & ((\data[0]~input_o\) # ((\data[2]~input_o\ & !\data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~3_combout\);

-- Location: LCCOMB_X91_Y69_N26
\ss~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~4_combout\ = (\data[0]~input_o\ & ((\data[1]~input_o\) # ((!\data[2]~input_o\ & !\data[3]~input_o\)))) # (!\data[0]~input_o\ & ((\data[2]~input_o\ & (\data[3]~input_o\)) # (!\data[2]~input_o\ & (!\data[3]~input_o\ & \data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~4_combout\);

-- Location: LCCOMB_X91_Y69_N28
\ss~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss~5_combout\ = (\data[0]~input_o\ & (\data[2]~input_o\ $ (\data[3]~input_o\ $ (!\data[1]~input_o\)))) # (!\data[0]~input_o\ & (!\data[2]~input_o\ & (!\data[3]~input_o\ & !\data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[1]~input_o\,
	combout => \ss~5_combout\);

ww_ss(0) <= \ss[0]~output_o\;

ww_ss(1) <= \ss[1]~output_o\;

ww_ss(2) <= \ss[2]~output_o\;

ww_ss(3) <= \ss[3]~output_o\;

ww_ss(4) <= \ss[4]~output_o\;

ww_ss(5) <= \ss[5]~output_o\;

ww_ss(6) <= \ss[6]~output_o\;
END structure;


