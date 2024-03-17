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

-- DATE "03/15/2024 15:13:41"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sistema IS
    PORT (
	CLK : IN std_logic;
	D : IN std_logic_vector(7 DOWNTO 0);
	En : IN std_logic;
	DataOut : OUT std_logic;
	Counter : OUT std_logic_vector(2 DOWNTO 0)
	);
END sistema;

-- Design Ports Information
-- DataOut	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sistema IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_DataOut : std_logic;
SIGNAL ww_Counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \M8C1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DataOut~output_o\ : std_logic;
SIGNAL \Counter[0]~output_o\ : std_logic;
SIGNAL \Counter[1]~output_o\ : std_logic;
SIGNAL \Counter[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \M8C1|CountBuffer[0]~2_combout\ : std_logic;
SIGNAL \M8C1|CountBuffer[0]~feeder_combout\ : std_logic;
SIGNAL \M8C1|CountBuffer[1]~0_combout\ : std_logic;
SIGNAL \M8C1|CountBuffer[2]~1_combout\ : std_logic;
SIGNAL \M8C1|CountBuffer[2]~feeder_combout\ : std_logic;
SIGNAL \M8C1|LessThan0~combout\ : std_logic;
SIGNAL \M8C1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \DR1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \MX1|Mux0~2_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \DR1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \MX1|Mux0~3_combout\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \MX1|Mux0~0_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \MX1|Mux0~1_combout\ : std_logic;
SIGNAL \MX1|DataOut~0_combout\ : std_logic;
SIGNAL \DR1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M8C1|CountBuffer\ : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_D <= D;
ww_En <= En;
DataOut <= ww_DataOut;
Counter <= ww_Counter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\M8C1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M8C1|LessThan0~combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N16
\DataOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX1|DataOut~0_combout\,
	devoe => ww_devoe,
	o => \DataOut~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Counter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8C1|CountBuffer\(0),
	devoe => ww_devoe,
	o => \Counter[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Counter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8C1|CountBuffer\(1),
	devoe => ww_devoe,
	o => \Counter[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Counter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M8C1|CountBuffer\(2),
	devoe => ww_devoe,
	o => \Counter[2]~output_o\);

-- Location: IOIBUF_X58_Y73_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X57_Y72_N24
\M8C1|CountBuffer[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|CountBuffer[0]~2_combout\ = !\M8C1|CountBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M8C1|CountBuffer\(0),
	combout => \M8C1|CountBuffer[0]~2_combout\);

-- Location: LCCOMB_X57_Y72_N16
\M8C1|CountBuffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|CountBuffer[0]~feeder_combout\ = \M8C1|CountBuffer[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer[0]~2_combout\,
	combout => \M8C1|CountBuffer[0]~feeder_combout\);

-- Location: FF_X57_Y72_N17
\M8C1|CountBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M8C1|CountBuffer[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8C1|CountBuffer\(0));

-- Location: LCCOMB_X57_Y72_N26
\M8C1|CountBuffer[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|CountBuffer[1]~0_combout\ = \M8C1|CountBuffer\(0) $ (\M8C1|CountBuffer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(0),
	datad => \M8C1|CountBuffer\(1),
	combout => \M8C1|CountBuffer[1]~0_combout\);

-- Location: FF_X57_Y72_N13
\M8C1|CountBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \M8C1|CountBuffer[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8C1|CountBuffer\(1));

-- Location: LCCOMB_X57_Y72_N18
\M8C1|CountBuffer[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|CountBuffer[2]~1_combout\ = \M8C1|CountBuffer\(2) $ (((\M8C1|CountBuffer\(0) & \M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(2),
	datab => \M8C1|CountBuffer\(0),
	datad => \M8C1|CountBuffer\(1),
	combout => \M8C1|CountBuffer[2]~1_combout\);

-- Location: LCCOMB_X57_Y72_N30
\M8C1|CountBuffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|CountBuffer[2]~feeder_combout\ = \M8C1|CountBuffer[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M8C1|CountBuffer[2]~1_combout\,
	combout => \M8C1|CountBuffer[2]~feeder_combout\);

-- Location: FF_X57_Y72_N31
\M8C1|CountBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M8C1|CountBuffer[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M8C1|CountBuffer\(2));

-- Location: LCCOMB_X57_Y72_N22
\M8C1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M8C1|LessThan0~combout\ = LCELL((\M8C1|CountBuffer\(1) & (\M8C1|CountBuffer\(0) & \M8C1|CountBuffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(1),
	datab => \M8C1|CountBuffer\(0),
	datad => \M8C1|CountBuffer\(2),
	combout => \M8C1|LessThan0~combout\);

-- Location: CLKCTRL_G10
\M8C1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M8C1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M8C1|LessThan0~clkctrl_outclk\);

-- Location: IOIBUF_X52_Y73_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X56_Y72_N14
\DR1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DR1|Q[1]~feeder_combout\ = \D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \DR1|Q[1]~feeder_combout\);

-- Location: FF_X56_Y72_N15
\DR1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	d => \DR1|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(1));

-- Location: IOIBUF_X58_Y73_N22
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: FF_X57_Y72_N15
\DR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(0));

-- Location: LCCOMB_X57_Y72_N14
\MX1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MX1|Mux0~2_combout\ = (\M8C1|CountBuffer\(0) & ((\DR1|Q\(1)) # ((\M8C1|CountBuffer\(1))))) # (!\M8C1|CountBuffer\(0) & (((\DR1|Q\(0) & !\M8C1|CountBuffer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(0),
	datab => \DR1|Q\(1),
	datac => \DR1|Q\(0),
	datad => \M8C1|CountBuffer\(1),
	combout => \MX1|Mux0~2_combout\);

-- Location: IOIBUF_X54_Y73_N1
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: FF_X57_Y72_N11
\DR1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(3));

-- Location: IOIBUF_X52_Y73_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X56_Y72_N24
\DR1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DR1|Q[2]~feeder_combout\ = \D[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[2]~input_o\,
	combout => \DR1|Q[2]~feeder_combout\);

-- Location: FF_X56_Y72_N25
\DR1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	d => \DR1|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(2));

-- Location: LCCOMB_X57_Y72_N10
\MX1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MX1|Mux0~3_combout\ = (\MX1|Mux0~2_combout\ & (((\DR1|Q\(3))) # (!\M8C1|CountBuffer\(1)))) # (!\MX1|Mux0~2_combout\ & (\M8C1|CountBuffer\(1) & ((\DR1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MX1|Mux0~2_combout\,
	datab => \M8C1|CountBuffer\(1),
	datac => \DR1|Q\(3),
	datad => \DR1|Q\(2),
	combout => \MX1|Mux0~3_combout\);

-- Location: IOIBUF_X54_Y73_N8
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: FF_X57_Y72_N23
\DR1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(5));

-- Location: IOIBUF_X60_Y73_N1
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: FF_X57_Y72_N29
\DR1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(4));

-- Location: LCCOMB_X57_Y72_N28
\MX1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MX1|Mux0~0_combout\ = (\M8C1|CountBuffer\(0) & ((\DR1|Q\(5)) # ((\M8C1|CountBuffer\(1))))) # (!\M8C1|CountBuffer\(0) & (((\DR1|Q\(4) & !\M8C1|CountBuffer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DR1|Q\(5),
	datab => \M8C1|CountBuffer\(0),
	datac => \DR1|Q\(4),
	datad => \M8C1|CountBuffer\(1),
	combout => \MX1|Mux0~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: FF_X57_Y72_N21
\DR1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(7));

-- Location: IOIBUF_X58_Y73_N8
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: FF_X57_Y72_N19
\DR1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \M8C1|LessThan0~clkctrl_outclk\,
	asdata => \D[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DR1|Q\(6));

-- Location: LCCOMB_X57_Y72_N20
\MX1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MX1|Mux0~1_combout\ = (\M8C1|CountBuffer\(1) & ((\MX1|Mux0~0_combout\ & (\DR1|Q\(7))) # (!\MX1|Mux0~0_combout\ & ((\DR1|Q\(6)))))) # (!\M8C1|CountBuffer\(1) & (\MX1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(1),
	datab => \MX1|Mux0~0_combout\,
	datac => \DR1|Q\(7),
	datad => \DR1|Q\(6),
	combout => \MX1|Mux0~1_combout\);

-- Location: LCCOMB_X57_Y72_N2
\MX1|DataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MX1|DataOut~0_combout\ = (!\En~input_o\ & ((\M8C1|CountBuffer\(2) & ((\MX1|Mux0~1_combout\))) # (!\M8C1|CountBuffer\(2) & (\MX1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M8C1|CountBuffer\(2),
	datab => \MX1|Mux0~3_combout\,
	datac => \En~input_o\,
	datad => \MX1|Mux0~1_combout\,
	combout => \MX1|DataOut~0_combout\);

ww_DataOut <= \DataOut~output_o\;

ww_Counter(0) <= \Counter[0]~output_o\;

ww_Counter(1) <= \Counter[1]~output_o\;

ww_Counter(2) <= \Counter[2]~output_o\;
END structure;


