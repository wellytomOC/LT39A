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

-- DATE "03/17/2024 07:09:02"

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

ENTITY 	arquitetura IS
    PORT (
	Clock : IN std_logic;
	DataInput : IN std_logic_vector(7 DOWNTO 0);
	En : IN std_logic;
	ss : BUFFER std_logic_vector(6 DOWNTO 0);
	DataOutOut : BUFFER std_logic
	);
END arquitetura;

-- Design Ports Information
-- ss[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOutOut	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arquitetura IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_DataInput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_ss : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DataOutOut : std_logic;
SIGNAL \sis|M8C1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ss[0]~output_o\ : std_logic;
SIGNAL \ss[1]~output_o\ : std_logic;
SIGNAL \ss[2]~output_o\ : std_logic;
SIGNAL \ss[3]~output_o\ : std_logic;
SIGNAL \ss[4]~output_o\ : std_logic;
SIGNAL \ss[5]~output_o\ : std_logic;
SIGNAL \ss[6]~output_o\ : std_logic;
SIGNAL \DataOutOut~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ent|CD01|Add0~0_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~81_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~1\ : std_logic;
SIGNAL \ent|CD01|Add0~2_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~78_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~3\ : std_logic;
SIGNAL \ent|CD01|Add0~4_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~79_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~5\ : std_logic;
SIGNAL \ent|CD01|Add0~6_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~80_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~7\ : std_logic;
SIGNAL \ent|CD01|Add0~8_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~82_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~9\ : std_logic;
SIGNAL \ent|CD01|Add0~10_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~83_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~11\ : std_logic;
SIGNAL \ent|CD01|Add0~12_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~77_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~13\ : std_logic;
SIGNAL \ent|CD01|Add0~14_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~84_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~15\ : std_logic;
SIGNAL \ent|CD01|Add0~16_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~85_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~17\ : std_logic;
SIGNAL \ent|CD01|Add0~18_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~86_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~19\ : std_logic;
SIGNAL \ent|CD01|Add0~20_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~87_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~21\ : std_logic;
SIGNAL \ent|CD01|Add0~22_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~73_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~23\ : std_logic;
SIGNAL \ent|CD01|Add0~24_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~74_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~25\ : std_logic;
SIGNAL \ent|CD01|Add0~26_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~75_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~27\ : std_logic;
SIGNAL \ent|CD01|Add0~28_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~76_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~29\ : std_logic;
SIGNAL \ent|CD01|Add0~30_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~92_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~31\ : std_logic;
SIGNAL \ent|CD01|Add0~32_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~66_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~33\ : std_logic;
SIGNAL \ent|CD01|Add0~34_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~91_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~35\ : std_logic;
SIGNAL \ent|CD01|Add0~36_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~67_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~37\ : std_logic;
SIGNAL \ent|CD01|Add0~38_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~68_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~39\ : std_logic;
SIGNAL \ent|CD01|Add0~40_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~69_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~41\ : std_logic;
SIGNAL \ent|CD01|Add0~42_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~70_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~43\ : std_logic;
SIGNAL \ent|CD01|Add0~44_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~71_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~45\ : std_logic;
SIGNAL \ent|CD01|Add0~46_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~90_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~47\ : std_logic;
SIGNAL \ent|CD01|Add0~48_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~72_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~49\ : std_logic;
SIGNAL \ent|CD01|Add0~50_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~88_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~51\ : std_logic;
SIGNAL \ent|CD01|Add0~52_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~89_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~53\ : std_logic;
SIGNAL \ent|CD01|Add0~54_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~56_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~55\ : std_logic;
SIGNAL \ent|CD01|Add0~57_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~59_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~58\ : std_logic;
SIGNAL \ent|CD01|Add0~60_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~62_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~61\ : std_logic;
SIGNAL \ent|CD01|Add0~63_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~65_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~0_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~64\ : std_logic;
SIGNAL \ent|CD01|Add0~93_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~95_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~1_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~8_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~9_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~10_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~3_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~2_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~4_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~5_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~6_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~7_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~11_combout\ : std_logic;
SIGNAL \ent|CD01|tmp~0_combout\ : std_logic;
SIGNAL \ent|CD01|tmp~feeder_combout\ : std_logic;
SIGNAL \ent|CD01|tmp~q\ : std_logic;
SIGNAL \sis|M8C1|CountBuffer[0]~1_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[1]~6_combout\ : std_logic;
SIGNAL \sis|M8C1|CountBuffer[2]~0_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[0]~0_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[1]~1_combout\ : std_logic;
SIGNAL \sai|ssd1|Equal14~0_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[3]~2_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[4]~3_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[5]~4_combout\ : std_logic;
SIGNAL \sai|ssd1|ss[6]~5_combout\ : std_logic;
SIGNAL \sis|M8C1|LessThan0~combout\ : std_logic;
SIGNAL \sis|M8C1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DataInput[2]~input_o\ : std_logic;
SIGNAL \sis|DR1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \DataInput[3]~input_o\ : std_logic;
SIGNAL \DataInput[1]~input_o\ : std_logic;
SIGNAL \sis|DR1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \DataInput[0]~input_o\ : std_logic;
SIGNAL \sis|MX1|Mux0~2_combout\ : std_logic;
SIGNAL \sis|MX1|Mux0~3_combout\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \DataInput[4]~input_o\ : std_logic;
SIGNAL \DataInput[5]~input_o\ : std_logic;
SIGNAL \sis|MX1|Mux0~0_combout\ : std_logic;
SIGNAL \DataInput[7]~input_o\ : std_logic;
SIGNAL \DataInput[6]~input_o\ : std_logic;
SIGNAL \sis|DR1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \sis|MX1|Mux0~1_combout\ : std_logic;
SIGNAL \sis|MX1|DataOut~0_combout\ : std_logic;
SIGNAL \ent|CD01|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sis|M8C1|CountBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sis|DR1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sai|ssd1|ALT_INV_ss[6]~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_DataInput <= DataInput;
ww_En <= En;
ss <= ww_ss;
DataOutOut <= ww_DataOutOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sis|M8C1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sis|M8C1|LessThan0~combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\sai|ssd1|ALT_INV_ss[6]~5_combout\ <= NOT \sai|ssd1|ss[6]~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N2
\ss[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ss[0]~0_combout\,
	devoe => ww_devoe,
	o => \ss[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\ss[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ss[1]~1_combout\,
	devoe => ww_devoe,
	o => \ss[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\ss[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|Equal14~0_combout\,
	devoe => ww_devoe,
	o => \ss[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\ss[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ss[3]~2_combout\,
	devoe => ww_devoe,
	o => \ss[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\ss[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ss[4]~3_combout\,
	devoe => ww_devoe,
	o => \ss[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\ss[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ss[5]~4_combout\,
	devoe => ww_devoe,
	o => \ss[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\ss[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|ssd1|ALT_INV_ss[6]~5_combout\,
	devoe => ww_devoe,
	o => \ss[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\DataOutOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sis|MX1|DataOut~0_combout\,
	devoe => ww_devoe,
	o => \DataOutOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y68_N0
\ent|CD01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~0_combout\ = \ent|CD01|count\(0) $ (GND)
-- \ent|CD01|Add0~1\ = CARRY(!\ent|CD01|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(0),
	datad => VCC,
	combout => \ent|CD01|Add0~0_combout\,
	cout => \ent|CD01|Add0~1\);

-- Location: LCCOMB_X55_Y68_N12
\ent|CD01|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~81_combout\ = (!\ent|CD01|Add0~0_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~0_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~81_combout\);

-- Location: FF_X54_Y68_N21
\ent|CD01|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \ent|CD01|Add0~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(0));

-- Location: LCCOMB_X54_Y68_N2
\ent|CD01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~2_combout\ = (\ent|CD01|count\(1) & (!\ent|CD01|Add0~1\)) # (!\ent|CD01|count\(1) & ((\ent|CD01|Add0~1\) # (GND)))
-- \ent|CD01|Add0~3\ = CARRY((!\ent|CD01|Add0~1\) # (!\ent|CD01|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(1),
	datad => VCC,
	cin => \ent|CD01|Add0~1\,
	combout => \ent|CD01|Add0~2_combout\,
	cout => \ent|CD01|Add0~3\);

-- Location: LCCOMB_X55_Y68_N6
\ent|CD01|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~78_combout\ = (\ent|CD01|Add0~2_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~2_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~78_combout\);

-- Location: FF_X55_Y68_N7
\ent|CD01|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(1));

-- Location: LCCOMB_X54_Y68_N4
\ent|CD01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~4_combout\ = (\ent|CD01|count\(2) & (\ent|CD01|Add0~3\ $ (GND))) # (!\ent|CD01|count\(2) & (!\ent|CD01|Add0~3\ & VCC))
-- \ent|CD01|Add0~5\ = CARRY((\ent|CD01|count\(2) & !\ent|CD01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(2),
	datad => VCC,
	cin => \ent|CD01|Add0~3\,
	combout => \ent|CD01|Add0~4_combout\,
	cout => \ent|CD01|Add0~5\);

-- Location: LCCOMB_X55_Y68_N28
\ent|CD01|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~79_combout\ = (\ent|CD01|Add0~4_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~4_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~79_combout\);

-- Location: FF_X55_Y68_N29
\ent|CD01|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(2));

-- Location: LCCOMB_X54_Y68_N6
\ent|CD01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~6_combout\ = (\ent|CD01|count\(3) & (!\ent|CD01|Add0~5\)) # (!\ent|CD01|count\(3) & ((\ent|CD01|Add0~5\) # (GND)))
-- \ent|CD01|Add0~7\ = CARRY((!\ent|CD01|Add0~5\) # (!\ent|CD01|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(3),
	datad => VCC,
	cin => \ent|CD01|Add0~5\,
	combout => \ent|CD01|Add0~6_combout\,
	cout => \ent|CD01|Add0~7\);

-- Location: LCCOMB_X55_Y68_N14
\ent|CD01|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~80_combout\ = (\ent|CD01|Add0~6_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~6_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~80_combout\);

-- Location: FF_X54_Y68_N13
\ent|CD01|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \ent|CD01|Add0~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(3));

-- Location: LCCOMB_X54_Y68_N8
\ent|CD01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~8_combout\ = (\ent|CD01|count\(4) & (\ent|CD01|Add0~7\ $ (GND))) # (!\ent|CD01|count\(4) & (!\ent|CD01|Add0~7\ & VCC))
-- \ent|CD01|Add0~9\ = CARRY((\ent|CD01|count\(4) & !\ent|CD01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(4),
	datad => VCC,
	cin => \ent|CD01|Add0~7\,
	combout => \ent|CD01|Add0~8_combout\,
	cout => \ent|CD01|Add0~9\);

-- Location: LCCOMB_X55_Y68_N10
\ent|CD01|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~82_combout\ = (\ent|CD01|Add0~8_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~8_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~82_combout\);

-- Location: FF_X54_Y68_N7
\ent|CD01|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \ent|CD01|Add0~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(4));

-- Location: LCCOMB_X54_Y68_N10
\ent|CD01|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~10_combout\ = (\ent|CD01|count\(5) & (!\ent|CD01|Add0~9\)) # (!\ent|CD01|count\(5) & ((\ent|CD01|Add0~9\) # (GND)))
-- \ent|CD01|Add0~11\ = CARRY((!\ent|CD01|Add0~9\) # (!\ent|CD01|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(5),
	datad => VCC,
	cin => \ent|CD01|Add0~9\,
	combout => \ent|CD01|Add0~10_combout\,
	cout => \ent|CD01|Add0~11\);

-- Location: LCCOMB_X55_Y68_N20
\ent|CD01|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~83_combout\ = (\ent|CD01|Add0~10_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~10_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~83_combout\);

-- Location: FF_X55_Y68_N21
\ent|CD01|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(5));

-- Location: LCCOMB_X54_Y68_N12
\ent|CD01|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~12_combout\ = (\ent|CD01|count\(6) & (\ent|CD01|Add0~11\ $ (GND))) # (!\ent|CD01|count\(6) & (!\ent|CD01|Add0~11\ & VCC))
-- \ent|CD01|Add0~13\ = CARRY((\ent|CD01|count\(6) & !\ent|CD01|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(6),
	datad => VCC,
	cin => \ent|CD01|Add0~11\,
	combout => \ent|CD01|Add0~12_combout\,
	cout => \ent|CD01|Add0~13\);

-- Location: LCCOMB_X55_Y68_N16
\ent|CD01|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~77_combout\ = (\ent|CD01|Add0~12_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~12_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~77_combout\);

-- Location: FF_X55_Y68_N17
\ent|CD01|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(6));

-- Location: LCCOMB_X54_Y68_N14
\ent|CD01|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~14_combout\ = (\ent|CD01|count\(7) & (!\ent|CD01|Add0~13\)) # (!\ent|CD01|count\(7) & ((\ent|CD01|Add0~13\) # (GND)))
-- \ent|CD01|Add0~15\ = CARRY((!\ent|CD01|Add0~13\) # (!\ent|CD01|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(7),
	datad => VCC,
	cin => \ent|CD01|Add0~13\,
	combout => \ent|CD01|Add0~14_combout\,
	cout => \ent|CD01|Add0~15\);

-- Location: LCCOMB_X55_Y68_N8
\ent|CD01|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~84_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~14_combout\,
	combout => \ent|CD01|Add0~84_combout\);

-- Location: FF_X55_Y68_N9
\ent|CD01|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(7));

-- Location: LCCOMB_X54_Y68_N16
\ent|CD01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~16_combout\ = (\ent|CD01|count\(8) & (\ent|CD01|Add0~15\ $ (GND))) # (!\ent|CD01|count\(8) & (!\ent|CD01|Add0~15\ & VCC))
-- \ent|CD01|Add0~17\ = CARRY((\ent|CD01|count\(8) & !\ent|CD01|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(8),
	datad => VCC,
	cin => \ent|CD01|Add0~15\,
	combout => \ent|CD01|Add0~16_combout\,
	cout => \ent|CD01|Add0~17\);

-- Location: LCCOMB_X55_Y68_N26
\ent|CD01|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~85_combout\ = (\ent|CD01|Add0~16_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~16_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~85_combout\);

-- Location: FF_X55_Y68_N27
\ent|CD01|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(8));

-- Location: LCCOMB_X54_Y68_N18
\ent|CD01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~18_combout\ = (\ent|CD01|count\(9) & (!\ent|CD01|Add0~17\)) # (!\ent|CD01|count\(9) & ((\ent|CD01|Add0~17\) # (GND)))
-- \ent|CD01|Add0~19\ = CARRY((!\ent|CD01|Add0~17\) # (!\ent|CD01|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(9),
	datad => VCC,
	cin => \ent|CD01|Add0~17\,
	combout => \ent|CD01|Add0~18_combout\,
	cout => \ent|CD01|Add0~19\);

-- Location: LCCOMB_X55_Y68_N4
\ent|CD01|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~86_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~18_combout\,
	combout => \ent|CD01|Add0~86_combout\);

-- Location: FF_X55_Y68_N5
\ent|CD01|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(9));

-- Location: LCCOMB_X54_Y68_N20
\ent|CD01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~20_combout\ = (\ent|CD01|count\(10) & (\ent|CD01|Add0~19\ $ (GND))) # (!\ent|CD01|count\(10) & (!\ent|CD01|Add0~19\ & VCC))
-- \ent|CD01|Add0~21\ = CARRY((\ent|CD01|count\(10) & !\ent|CD01|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(10),
	datad => VCC,
	cin => \ent|CD01|Add0~19\,
	combout => \ent|CD01|Add0~20_combout\,
	cout => \ent|CD01|Add0~21\);

-- Location: LCCOMB_X55_Y68_N22
\ent|CD01|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~87_combout\ = (\ent|CD01|Add0~20_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~20_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~87_combout\);

-- Location: FF_X55_Y68_N23
\ent|CD01|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(10));

-- Location: LCCOMB_X54_Y68_N22
\ent|CD01|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~22_combout\ = (\ent|CD01|count\(11) & (!\ent|CD01|Add0~21\)) # (!\ent|CD01|count\(11) & ((\ent|CD01|Add0~21\) # (GND)))
-- \ent|CD01|Add0~23\ = CARRY((!\ent|CD01|Add0~21\) # (!\ent|CD01|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(11),
	datad => VCC,
	cin => \ent|CD01|Add0~21\,
	combout => \ent|CD01|Add0~22_combout\,
	cout => \ent|CD01|Add0~23\);

-- Location: LCCOMB_X53_Y67_N4
\ent|CD01|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~73_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datac => \ent|CD01|Add0~22_combout\,
	combout => \ent|CD01|Add0~73_combout\);

-- Location: FF_X53_Y67_N5
\ent|CD01|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(11));

-- Location: LCCOMB_X54_Y68_N24
\ent|CD01|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~24_combout\ = (\ent|CD01|count\(12) & (\ent|CD01|Add0~23\ $ (GND))) # (!\ent|CD01|count\(12) & (!\ent|CD01|Add0~23\ & VCC))
-- \ent|CD01|Add0~25\ = CARRY((\ent|CD01|count\(12) & !\ent|CD01|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(12),
	datad => VCC,
	cin => \ent|CD01|Add0~23\,
	combout => \ent|CD01|Add0~24_combout\,
	cout => \ent|CD01|Add0~25\);

-- Location: LCCOMB_X53_Y67_N2
\ent|CD01|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~74_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~24_combout\,
	combout => \ent|CD01|Add0~74_combout\);

-- Location: FF_X53_Y67_N3
\ent|CD01|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(12));

-- Location: LCCOMB_X54_Y68_N26
\ent|CD01|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~26_combout\ = (\ent|CD01|count\(13) & (!\ent|CD01|Add0~25\)) # (!\ent|CD01|count\(13) & ((\ent|CD01|Add0~25\) # (GND)))
-- \ent|CD01|Add0~27\ = CARRY((!\ent|CD01|Add0~25\) # (!\ent|CD01|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(13),
	datad => VCC,
	cin => \ent|CD01|Add0~25\,
	combout => \ent|CD01|Add0~26_combout\,
	cout => \ent|CD01|Add0~27\);

-- Location: LCCOMB_X53_Y67_N0
\ent|CD01|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~75_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~26_combout\,
	combout => \ent|CD01|Add0~75_combout\);

-- Location: FF_X53_Y67_N1
\ent|CD01|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(13));

-- Location: LCCOMB_X54_Y68_N28
\ent|CD01|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~28_combout\ = (\ent|CD01|count\(14) & (\ent|CD01|Add0~27\ $ (GND))) # (!\ent|CD01|count\(14) & (!\ent|CD01|Add0~27\ & VCC))
-- \ent|CD01|Add0~29\ = CARRY((\ent|CD01|count\(14) & !\ent|CD01|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(14),
	datad => VCC,
	cin => \ent|CD01|Add0~27\,
	combout => \ent|CD01|Add0~28_combout\,
	cout => \ent|CD01|Add0~29\);

-- Location: LCCOMB_X53_Y67_N22
\ent|CD01|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~76_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~28_combout\,
	combout => \ent|CD01|Add0~76_combout\);

-- Location: FF_X53_Y67_N23
\ent|CD01|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(14));

-- Location: LCCOMB_X54_Y68_N30
\ent|CD01|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~30_combout\ = (\ent|CD01|count\(15) & (!\ent|CD01|Add0~29\)) # (!\ent|CD01|count\(15) & ((\ent|CD01|Add0~29\) # (GND)))
-- \ent|CD01|Add0~31\ = CARRY((!\ent|CD01|Add0~29\) # (!\ent|CD01|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(15),
	datad => VCC,
	cin => \ent|CD01|Add0~29\,
	combout => \ent|CD01|Add0~30_combout\,
	cout => \ent|CD01|Add0~31\);

-- Location: LCCOMB_X55_Y67_N14
\ent|CD01|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~92_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~30_combout\,
	combout => \ent|CD01|Add0~92_combout\);

-- Location: FF_X55_Y67_N15
\ent|CD01|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(15));

-- Location: LCCOMB_X54_Y67_N0
\ent|CD01|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~32_combout\ = (\ent|CD01|count\(16) & (\ent|CD01|Add0~31\ $ (GND))) # (!\ent|CD01|count\(16) & (!\ent|CD01|Add0~31\ & VCC))
-- \ent|CD01|Add0~33\ = CARRY((\ent|CD01|count\(16) & !\ent|CD01|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(16),
	datad => VCC,
	cin => \ent|CD01|Add0~31\,
	combout => \ent|CD01|Add0~32_combout\,
	cout => \ent|CD01|Add0~33\);

-- Location: LCCOMB_X55_Y67_N2
\ent|CD01|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~66_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~32_combout\,
	combout => \ent|CD01|Add0~66_combout\);

-- Location: FF_X55_Y67_N3
\ent|CD01|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(16));

-- Location: LCCOMB_X54_Y67_N2
\ent|CD01|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~34_combout\ = (\ent|CD01|count\(17) & (!\ent|CD01|Add0~33\)) # (!\ent|CD01|count\(17) & ((\ent|CD01|Add0~33\) # (GND)))
-- \ent|CD01|Add0~35\ = CARRY((!\ent|CD01|Add0~33\) # (!\ent|CD01|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(17),
	datad => VCC,
	cin => \ent|CD01|Add0~33\,
	combout => \ent|CD01|Add0~34_combout\,
	cout => \ent|CD01|Add0~35\);

-- Location: LCCOMB_X55_Y67_N28
\ent|CD01|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~91_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~34_combout\,
	combout => \ent|CD01|Add0~91_combout\);

-- Location: FF_X55_Y67_N29
\ent|CD01|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(17));

-- Location: LCCOMB_X54_Y67_N4
\ent|CD01|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~36_combout\ = (\ent|CD01|count\(18) & (\ent|CD01|Add0~35\ $ (GND))) # (!\ent|CD01|count\(18) & (!\ent|CD01|Add0~35\ & VCC))
-- \ent|CD01|Add0~37\ = CARRY((\ent|CD01|count\(18) & !\ent|CD01|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(18),
	datad => VCC,
	cin => \ent|CD01|Add0~35\,
	combout => \ent|CD01|Add0~36_combout\,
	cout => \ent|CD01|Add0~37\);

-- Location: LCCOMB_X53_Y67_N10
\ent|CD01|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~67_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~36_combout\,
	combout => \ent|CD01|Add0~67_combout\);

-- Location: FF_X53_Y67_N11
\ent|CD01|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(18));

-- Location: LCCOMB_X54_Y67_N6
\ent|CD01|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~38_combout\ = (\ent|CD01|count\(19) & (!\ent|CD01|Add0~37\)) # (!\ent|CD01|count\(19) & ((\ent|CD01|Add0~37\) # (GND)))
-- \ent|CD01|Add0~39\ = CARRY((!\ent|CD01|Add0~37\) # (!\ent|CD01|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(19),
	datad => VCC,
	cin => \ent|CD01|Add0~37\,
	combout => \ent|CD01|Add0~38_combout\,
	cout => \ent|CD01|Add0~39\);

-- Location: LCCOMB_X53_Y67_N16
\ent|CD01|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~68_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~38_combout\,
	combout => \ent|CD01|Add0~68_combout\);

-- Location: FF_X53_Y67_N17
\ent|CD01|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(19));

-- Location: LCCOMB_X54_Y67_N8
\ent|CD01|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~40_combout\ = (\ent|CD01|count\(20) & (\ent|CD01|Add0~39\ $ (GND))) # (!\ent|CD01|count\(20) & (!\ent|CD01|Add0~39\ & VCC))
-- \ent|CD01|Add0~41\ = CARRY((\ent|CD01|count\(20) & !\ent|CD01|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(20),
	datad => VCC,
	cin => \ent|CD01|Add0~39\,
	combout => \ent|CD01|Add0~40_combout\,
	cout => \ent|CD01|Add0~41\);

-- Location: LCCOMB_X53_Y67_N14
\ent|CD01|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~69_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datac => \ent|CD01|Add0~40_combout\,
	combout => \ent|CD01|Add0~69_combout\);

-- Location: FF_X53_Y67_N15
\ent|CD01|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(20));

-- Location: LCCOMB_X54_Y67_N10
\ent|CD01|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~42_combout\ = (\ent|CD01|count\(21) & (!\ent|CD01|Add0~41\)) # (!\ent|CD01|count\(21) & ((\ent|CD01|Add0~41\) # (GND)))
-- \ent|CD01|Add0~43\ = CARRY((!\ent|CD01|Add0~41\) # (!\ent|CD01|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(21),
	datad => VCC,
	cin => \ent|CD01|Add0~41\,
	combout => \ent|CD01|Add0~42_combout\,
	cout => \ent|CD01|Add0~43\);

-- Location: LCCOMB_X53_Y67_N28
\ent|CD01|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~70_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datac => \ent|CD01|Add0~42_combout\,
	combout => \ent|CD01|Add0~70_combout\);

-- Location: FF_X53_Y67_N29
\ent|CD01|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(21));

-- Location: LCCOMB_X54_Y67_N12
\ent|CD01|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~44_combout\ = (\ent|CD01|count\(22) & (\ent|CD01|Add0~43\ $ (GND))) # (!\ent|CD01|count\(22) & (!\ent|CD01|Add0~43\ & VCC))
-- \ent|CD01|Add0~45\ = CARRY((\ent|CD01|count\(22) & !\ent|CD01|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(22),
	datad => VCC,
	cin => \ent|CD01|Add0~43\,
	combout => \ent|CD01|Add0~44_combout\,
	cout => \ent|CD01|Add0~45\);

-- Location: LCCOMB_X55_Y67_N8
\ent|CD01|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~71_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~44_combout\,
	combout => \ent|CD01|Add0~71_combout\);

-- Location: FF_X55_Y67_N9
\ent|CD01|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(22));

-- Location: LCCOMB_X54_Y67_N14
\ent|CD01|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~46_combout\ = (\ent|CD01|count\(23) & (!\ent|CD01|Add0~45\)) # (!\ent|CD01|count\(23) & ((\ent|CD01|Add0~45\) # (GND)))
-- \ent|CD01|Add0~47\ = CARRY((!\ent|CD01|Add0~45\) # (!\ent|CD01|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(23),
	datad => VCC,
	cin => \ent|CD01|Add0~45\,
	combout => \ent|CD01|Add0~46_combout\,
	cout => \ent|CD01|Add0~47\);

-- Location: LCCOMB_X55_Y67_N18
\ent|CD01|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~90_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~46_combout\,
	combout => \ent|CD01|Add0~90_combout\);

-- Location: FF_X55_Y67_N19
\ent|CD01|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(23));

-- Location: LCCOMB_X54_Y67_N16
\ent|CD01|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~48_combout\ = (\ent|CD01|count\(24) & (\ent|CD01|Add0~47\ $ (GND))) # (!\ent|CD01|count\(24) & (!\ent|CD01|Add0~47\ & VCC))
-- \ent|CD01|Add0~49\ = CARRY((\ent|CD01|count\(24) & !\ent|CD01|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(24),
	datad => VCC,
	cin => \ent|CD01|Add0~47\,
	combout => \ent|CD01|Add0~48_combout\,
	cout => \ent|CD01|Add0~49\);

-- Location: LCCOMB_X55_Y67_N24
\ent|CD01|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~72_combout\ = (\ent|CD01|Add0~48_combout\ & !\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~48_combout\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|Add0~72_combout\);

-- Location: FF_X55_Y67_N25
\ent|CD01|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(24));

-- Location: LCCOMB_X54_Y67_N18
\ent|CD01|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~50_combout\ = (\ent|CD01|count\(25) & (!\ent|CD01|Add0~49\)) # (!\ent|CD01|count\(25) & ((\ent|CD01|Add0~49\) # (GND)))
-- \ent|CD01|Add0~51\ = CARRY((!\ent|CD01|Add0~49\) # (!\ent|CD01|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(25),
	datad => VCC,
	cin => \ent|CD01|Add0~49\,
	combout => \ent|CD01|Add0~50_combout\,
	cout => \ent|CD01|Add0~51\);

-- Location: LCCOMB_X55_Y67_N6
\ent|CD01|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~88_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~50_combout\,
	combout => \ent|CD01|Add0~88_combout\);

-- Location: FF_X55_Y67_N7
\ent|CD01|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(25));

-- Location: LCCOMB_X54_Y67_N20
\ent|CD01|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~52_combout\ = (\ent|CD01|count\(26) & (\ent|CD01|Add0~51\ $ (GND))) # (!\ent|CD01|count\(26) & (!\ent|CD01|Add0~51\ & VCC))
-- \ent|CD01|Add0~53\ = CARRY((\ent|CD01|count\(26) & !\ent|CD01|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(26),
	datad => VCC,
	cin => \ent|CD01|Add0~51\,
	combout => \ent|CD01|Add0~52_combout\,
	cout => \ent|CD01|Add0~53\);

-- Location: LCCOMB_X55_Y67_N26
\ent|CD01|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~89_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~52_combout\,
	combout => \ent|CD01|Add0~89_combout\);

-- Location: FF_X55_Y67_N27
\ent|CD01|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(26));

-- Location: LCCOMB_X54_Y67_N22
\ent|CD01|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~54_combout\ = (\ent|CD01|count\(27) & (!\ent|CD01|Add0~53\)) # (!\ent|CD01|count\(27) & ((\ent|CD01|Add0~53\) # (GND)))
-- \ent|CD01|Add0~55\ = CARRY((!\ent|CD01|Add0~53\) # (!\ent|CD01|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(27),
	datad => VCC,
	cin => \ent|CD01|Add0~53\,
	combout => \ent|CD01|Add0~54_combout\,
	cout => \ent|CD01|Add0~55\);

-- Location: LCCOMB_X53_Y67_N24
\ent|CD01|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~56_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~54_combout\,
	combout => \ent|CD01|Add0~56_combout\);

-- Location: FF_X53_Y67_N25
\ent|CD01|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(27));

-- Location: LCCOMB_X54_Y67_N24
\ent|CD01|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~57_combout\ = (\ent|CD01|count\(28) & (\ent|CD01|Add0~55\ $ (GND))) # (!\ent|CD01|count\(28) & (!\ent|CD01|Add0~55\ & VCC))
-- \ent|CD01|Add0~58\ = CARRY((\ent|CD01|count\(28) & !\ent|CD01|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(28),
	datad => VCC,
	cin => \ent|CD01|Add0~55\,
	combout => \ent|CD01|Add0~57_combout\,
	cout => \ent|CD01|Add0~58\);

-- Location: LCCOMB_X53_Y67_N26
\ent|CD01|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~59_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~57_combout\,
	combout => \ent|CD01|Add0~59_combout\);

-- Location: FF_X53_Y67_N27
\ent|CD01|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(28));

-- Location: LCCOMB_X54_Y67_N26
\ent|CD01|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~60_combout\ = (\ent|CD01|count\(29) & (!\ent|CD01|Add0~58\)) # (!\ent|CD01|count\(29) & ((\ent|CD01|Add0~58\) # (GND)))
-- \ent|CD01|Add0~61\ = CARRY((!\ent|CD01|Add0~58\) # (!\ent|CD01|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(29),
	datad => VCC,
	cin => \ent|CD01|Add0~58\,
	combout => \ent|CD01|Add0~60_combout\,
	cout => \ent|CD01|Add0~61\);

-- Location: LCCOMB_X53_Y67_N8
\ent|CD01|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~62_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~60_combout\,
	combout => \ent|CD01|Add0~62_combout\);

-- Location: FF_X53_Y67_N9
\ent|CD01|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(29));

-- Location: LCCOMB_X54_Y67_N28
\ent|CD01|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~63_combout\ = (\ent|CD01|count\(30) & (\ent|CD01|Add0~61\ $ (GND))) # (!\ent|CD01|count\(30) & (!\ent|CD01|Add0~61\ & VCC))
-- \ent|CD01|Add0~64\ = CARRY((\ent|CD01|count\(30) & !\ent|CD01|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(30),
	datad => VCC,
	cin => \ent|CD01|Add0~61\,
	combout => \ent|CD01|Add0~63_combout\,
	cout => \ent|CD01|Add0~64\);

-- Location: LCCOMB_X53_Y67_N18
\ent|CD01|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~65_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~11_combout\,
	datad => \ent|CD01|Add0~63_combout\,
	combout => \ent|CD01|Add0~65_combout\);

-- Location: FF_X53_Y67_N19
\ent|CD01|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(30));

-- Location: LCCOMB_X53_Y67_N20
\ent|CD01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~0_combout\ = (\ent|CD01|count\(28)) # ((\ent|CD01|count\(27)) # ((\ent|CD01|count\(29)) # (\ent|CD01|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(28),
	datab => \ent|CD01|count\(27),
	datac => \ent|CD01|count\(29),
	datad => \ent|CD01|count\(30),
	combout => \ent|CD01|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y67_N30
\ent|CD01|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~93_combout\ = \ent|CD01|count\(31) $ (\ent|CD01|Add0~64\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(31),
	cin => \ent|CD01|Add0~64\,
	combout => \ent|CD01|Add0~93_combout\);

-- Location: LCCOMB_X53_Y67_N6
\ent|CD01|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~95_combout\ = (!\ent|CD01|LessThan0~11_combout\ & \ent|CD01|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~11_combout\,
	datac => \ent|CD01|Add0~93_combout\,
	combout => \ent|CD01|Add0~95_combout\);

-- Location: FF_X53_Y67_N7
\ent|CD01|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(31));

-- Location: LCCOMB_X53_Y67_N30
\ent|CD01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~1_combout\ = (\ent|CD01|count\(18) & (\ent|CD01|count\(19) & (\ent|CD01|count\(20) & \ent|CD01|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(18),
	datab => \ent|CD01|count\(19),
	datac => \ent|CD01|count\(20),
	datad => \ent|CD01|count\(21),
	combout => \ent|CD01|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y67_N16
\ent|CD01|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~8_combout\ = (\ent|CD01|count\(17)) # ((\ent|CD01|count\(16) & \ent|CD01|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(16),
	datac => \ent|CD01|count\(15),
	datad => \ent|CD01|count\(17),
	combout => \ent|CD01|LessThan0~8_combout\);

-- Location: LCCOMB_X55_Y67_N12
\ent|CD01|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~9_combout\ = (\ent|CD01|count\(23)) # ((\ent|CD01|count\(22) & (\ent|CD01|LessThan0~1_combout\ & \ent|CD01|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(22),
	datab => \ent|CD01|count\(23),
	datac => \ent|CD01|LessThan0~1_combout\,
	datad => \ent|CD01|LessThan0~8_combout\,
	combout => \ent|CD01|LessThan0~9_combout\);

-- Location: LCCOMB_X55_Y67_N22
\ent|CD01|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~10_combout\ = (\ent|CD01|count\(25)) # ((\ent|CD01|count\(26)) # ((\ent|CD01|count\(24) & \ent|CD01|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(25),
	datab => \ent|CD01|count\(24),
	datac => \ent|CD01|count\(26),
	datad => \ent|CD01|LessThan0~9_combout\,
	combout => \ent|CD01|LessThan0~10_combout\);

-- Location: LCCOMB_X53_Y67_N12
\ent|CD01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~3_combout\ = (\ent|CD01|count\(14) & (\ent|CD01|count\(12) & (\ent|CD01|count\(11) & \ent|CD01|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(14),
	datab => \ent|CD01|count\(12),
	datac => \ent|CD01|count\(11),
	datad => \ent|CD01|count\(13),
	combout => \ent|CD01|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y67_N4
\ent|CD01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~2_combout\ = (\ent|CD01|count\(24) & (\ent|CD01|count\(16) & (\ent|CD01|count\(22) & \ent|CD01|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(24),
	datab => \ent|CD01|count\(16),
	datac => \ent|CD01|count\(22),
	datad => \ent|CD01|LessThan0~1_combout\,
	combout => \ent|CD01|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y68_N18
\ent|CD01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~4_combout\ = (\ent|CD01|count\(1)) # (((\ent|CD01|count\(2)) # (\ent|CD01|count\(3))) # (!\ent|CD01|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(1),
	datab => \ent|CD01|count\(0),
	datac => \ent|CD01|count\(2),
	datad => \ent|CD01|count\(3),
	combout => \ent|CD01|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y68_N30
\ent|CD01|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~5_combout\ = (\ent|CD01|count\(6) & ((\ent|CD01|count\(5)) # ((\ent|CD01|count\(4)) # (\ent|CD01|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(6),
	datab => \ent|CD01|count\(5),
	datac => \ent|CD01|count\(4),
	datad => \ent|CD01|LessThan0~4_combout\,
	combout => \ent|CD01|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y68_N24
\ent|CD01|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~6_combout\ = (\ent|CD01|count\(10)) # ((\ent|CD01|count\(7)) # ((\ent|CD01|count\(8)) # (\ent|CD01|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(10),
	datab => \ent|CD01|count\(7),
	datac => \ent|CD01|count\(8),
	datad => \ent|CD01|count\(9),
	combout => \ent|CD01|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y67_N20
\ent|CD01|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~7_combout\ = (\ent|CD01|LessThan0~3_combout\ & (\ent|CD01|LessThan0~2_combout\ & ((\ent|CD01|LessThan0~5_combout\) # (\ent|CD01|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~3_combout\,
	datab => \ent|CD01|LessThan0~2_combout\,
	datac => \ent|CD01|LessThan0~5_combout\,
	datad => \ent|CD01|LessThan0~6_combout\,
	combout => \ent|CD01|LessThan0~7_combout\);

-- Location: LCCOMB_X55_Y67_N0
\ent|CD01|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~11_combout\ = (!\ent|CD01|count\(31) & ((\ent|CD01|LessThan0~0_combout\) # ((\ent|CD01|LessThan0~10_combout\) # (\ent|CD01|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~0_combout\,
	datab => \ent|CD01|count\(31),
	datac => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|LessThan0~7_combout\,
	combout => \ent|CD01|LessThan0~11_combout\);

-- Location: LCCOMB_X55_Y67_N10
\ent|CD01|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|tmp~0_combout\ = \ent|CD01|tmp~q\ $ (\ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|tmp~q\,
	datad => \ent|CD01|LessThan0~11_combout\,
	combout => \ent|CD01|tmp~0_combout\);

-- Location: LCCOMB_X55_Y67_N30
\ent|CD01|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|tmp~feeder_combout\ = \ent|CD01|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|tmp~0_combout\,
	combout => \ent|CD01|tmp~feeder_combout\);

-- Location: FF_X55_Y67_N31
\ent|CD01|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ent|CD01|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|tmp~q\);

-- Location: LCCOMB_X55_Y71_N30
\sis|M8C1|CountBuffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|M8C1|CountBuffer[0]~1_combout\ = !\sis|M8C1|CountBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(0),
	combout => \sis|M8C1|CountBuffer[0]~1_combout\);

-- Location: FF_X55_Y71_N7
\sis|M8C1|CountBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~q\,
	asdata => \sis|M8C1|CountBuffer[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|M8C1|CountBuffer\(0));

-- Location: LCCOMB_X55_Y71_N10
\sai|ssd1|ss[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[1]~6_combout\ = \sis|M8C1|CountBuffer\(0) $ (\sis|M8C1|CountBuffer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(0),
	datac => \sis|M8C1|CountBuffer\(1),
	combout => \sai|ssd1|ss[1]~6_combout\);

-- Location: FF_X55_Y71_N27
\sis|M8C1|CountBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~q\,
	asdata => \sai|ssd1|ss[1]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|M8C1|CountBuffer\(1));

-- Location: LCCOMB_X55_Y71_N4
\sis|M8C1|CountBuffer[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|M8C1|CountBuffer[2]~0_combout\ = \sis|M8C1|CountBuffer\(2) $ (((\sis|M8C1|CountBuffer\(0) & \sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(0),
	datac => \sis|M8C1|CountBuffer\(1),
	datad => \sis|M8C1|CountBuffer\(2),
	combout => \sis|M8C1|CountBuffer[2]~0_combout\);

-- Location: FF_X55_Y71_N3
\sis|M8C1|CountBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~q\,
	asdata => \sis|M8C1|CountBuffer[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|M8C1|CountBuffer\(2));

-- Location: LCCOMB_X55_Y71_N26
\sai|ssd1|ss[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[0]~0_combout\ = (!\sis|M8C1|CountBuffer\(1) & (\sis|M8C1|CountBuffer\(2) $ (\sis|M8C1|CountBuffer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \sis|M8C1|CountBuffer\(1),
	datad => \sis|M8C1|CountBuffer\(0),
	combout => \sai|ssd1|ss[0]~0_combout\);

-- Location: LCCOMB_X55_Y71_N2
\sai|ssd1|ss[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[1]~1_combout\ = (\sis|M8C1|CountBuffer\(2) & (\sis|M8C1|CountBuffer\(1) $ (\sis|M8C1|CountBuffer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(1),
	datac => \sis|M8C1|CountBuffer\(2),
	datad => \sis|M8C1|CountBuffer\(0),
	combout => \sai|ssd1|ss[1]~1_combout\);

-- Location: LCCOMB_X55_Y71_N14
\sai|ssd1|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|Equal14~0_combout\ = (!\sis|M8C1|CountBuffer\(0) & (!\sis|M8C1|CountBuffer\(2) & \sis|M8C1|CountBuffer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(0),
	datab => \sis|M8C1|CountBuffer\(2),
	datad => \sis|M8C1|CountBuffer\(1),
	combout => \sai|ssd1|Equal14~0_combout\);

-- Location: LCCOMB_X55_Y71_N12
\sai|ssd1|ss[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[3]~2_combout\ = (\sis|M8C1|CountBuffer\(2) & (\sis|M8C1|CountBuffer\(1) $ (!\sis|M8C1|CountBuffer\(0)))) # (!\sis|M8C1|CountBuffer\(2) & (!\sis|M8C1|CountBuffer\(1) & \sis|M8C1|CountBuffer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \sis|M8C1|CountBuffer\(1),
	datad => \sis|M8C1|CountBuffer\(0),
	combout => \sai|ssd1|ss[3]~2_combout\);

-- Location: LCCOMB_X55_Y71_N24
\sai|ssd1|ss[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[4]~3_combout\ = (\sis|M8C1|CountBuffer\(0)) # ((\sis|M8C1|CountBuffer\(2) & !\sis|M8C1|CountBuffer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \sis|M8C1|CountBuffer\(1),
	datad => \sis|M8C1|CountBuffer\(0),
	combout => \sai|ssd1|ss[4]~3_combout\);

-- Location: LCCOMB_X55_Y71_N8
\sai|ssd1|ss[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[5]~4_combout\ = (\sis|M8C1|CountBuffer\(0) & ((\sis|M8C1|CountBuffer\(1)) # (!\sis|M8C1|CountBuffer\(2)))) # (!\sis|M8C1|CountBuffer\(0) & (!\sis|M8C1|CountBuffer\(2) & \sis|M8C1|CountBuffer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(0),
	datab => \sis|M8C1|CountBuffer\(2),
	datad => \sis|M8C1|CountBuffer\(1),
	combout => \sai|ssd1|ss[5]~4_combout\);

-- Location: LCCOMB_X55_Y71_N6
\sai|ssd1|ss[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|ssd1|ss[6]~5_combout\ = (\sis|M8C1|CountBuffer\(1) & ((!\sis|M8C1|CountBuffer\(0)) # (!\sis|M8C1|CountBuffer\(2)))) # (!\sis|M8C1|CountBuffer\(1) & (\sis|M8C1|CountBuffer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(1),
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \sis|M8C1|CountBuffer\(0),
	combout => \sai|ssd1|ss[6]~5_combout\);

-- Location: LCCOMB_X55_Y71_N16
\sis|M8C1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|M8C1|LessThan0~combout\ = LCELL((\sis|M8C1|CountBuffer\(0) & (\sis|M8C1|CountBuffer\(2) & \sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(0),
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \sis|M8C1|CountBuffer\(1),
	combout => \sis|M8C1|LessThan0~combout\);

-- Location: CLKCTRL_G14
\sis|M8C1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sis|M8C1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sis|M8C1|LessThan0~clkctrl_outclk\);

-- Location: IOIBUF_X60_Y73_N22
\DataInput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(2),
	o => \DataInput[2]~input_o\);

-- Location: LCCOMB_X56_Y71_N24
\sis|DR1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|DR1|Q[2]~feeder_combout\ = \DataInput[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataInput[2]~input_o\,
	combout => \sis|DR1|Q[2]~feeder_combout\);

-- Location: FF_X56_Y71_N25
\sis|DR1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	d => \sis|DR1|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(2));

-- Location: IOIBUF_X49_Y73_N15
\DataInput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(3),
	o => \DataInput[3]~input_o\);

-- Location: FF_X55_Y71_N23
\sis|DR1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(3));

-- Location: IOIBUF_X60_Y73_N15
\DataInput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(1),
	o => \DataInput[1]~input_o\);

-- Location: LCCOMB_X56_Y71_N2
\sis|DR1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|DR1|Q[1]~feeder_combout\ = \DataInput[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataInput[1]~input_o\,
	combout => \sis|DR1|Q[1]~feeder_combout\);

-- Location: FF_X56_Y71_N3
\sis|DR1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	d => \sis|DR1|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(1));

-- Location: IOIBUF_X58_Y73_N8
\DataInput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(0),
	o => \DataInput[0]~input_o\);

-- Location: FF_X55_Y71_N29
\sis|DR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(0));

-- Location: LCCOMB_X55_Y71_N28
\sis|MX1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|MX1|Mux0~2_combout\ = (\sis|M8C1|CountBuffer\(0) & ((\sis|DR1|Q\(1)) # ((\sis|M8C1|CountBuffer\(1))))) # (!\sis|M8C1|CountBuffer\(0) & (((\sis|DR1|Q\(0) & !\sis|M8C1|CountBuffer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|DR1|Q\(1),
	datab => \sis|M8C1|CountBuffer\(0),
	datac => \sis|DR1|Q\(0),
	datad => \sis|M8C1|CountBuffer\(1),
	combout => \sis|MX1|Mux0~2_combout\);

-- Location: LCCOMB_X55_Y71_N22
\sis|MX1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|MX1|Mux0~3_combout\ = (\sis|M8C1|CountBuffer\(1) & ((\sis|MX1|Mux0~2_combout\ & ((\sis|DR1|Q\(3)))) # (!\sis|MX1|Mux0~2_combout\ & (\sis|DR1|Q\(2))))) # (!\sis|M8C1|CountBuffer\(1) & (((\sis|MX1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(1),
	datab => \sis|DR1|Q\(2),
	datac => \sis|DR1|Q\(3),
	datad => \sis|MX1|Mux0~2_combout\,
	combout => \sis|MX1|Mux0~3_combout\);

-- Location: IOIBUF_X52_Y73_N1
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\DataInput[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(4),
	o => \DataInput[4]~input_o\);

-- Location: FF_X55_Y71_N1
\sis|DR1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(4));

-- Location: IOIBUF_X60_Y73_N8
\DataInput[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(5),
	o => \DataInput[5]~input_o\);

-- Location: FF_X56_Y71_N7
\sis|DR1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(5));

-- Location: LCCOMB_X55_Y71_N0
\sis|MX1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|MX1|Mux0~0_combout\ = (\sis|M8C1|CountBuffer\(1) & (\sis|M8C1|CountBuffer\(0))) # (!\sis|M8C1|CountBuffer\(1) & ((\sis|M8C1|CountBuffer\(0) & ((\sis|DR1|Q\(5)))) # (!\sis|M8C1|CountBuffer\(0) & (\sis|DR1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(1),
	datab => \sis|M8C1|CountBuffer\(0),
	datac => \sis|DR1|Q\(4),
	datad => \sis|DR1|Q\(5),
	combout => \sis|MX1|Mux0~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\DataInput[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(7),
	o => \DataInput[7]~input_o\);

-- Location: FF_X55_Y71_N21
\sis|DR1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(7));

-- Location: IOIBUF_X60_Y73_N1
\DataInput[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(6),
	o => \DataInput[6]~input_o\);

-- Location: LCCOMB_X56_Y71_N4
\sis|DR1|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|DR1|Q[6]~feeder_combout\ = \DataInput[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataInput[6]~input_o\,
	combout => \sis|DR1|Q[6]~feeder_combout\);

-- Location: FF_X56_Y71_N5
\sis|DR1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|M8C1|LessThan0~clkctrl_outclk\,
	d => \sis|DR1|Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|DR1|Q\(6));

-- Location: LCCOMB_X55_Y71_N20
\sis|MX1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|MX1|Mux0~1_combout\ = (\sis|M8C1|CountBuffer\(1) & ((\sis|MX1|Mux0~0_combout\ & (\sis|DR1|Q\(7))) # (!\sis|MX1|Mux0~0_combout\ & ((\sis|DR1|Q\(6)))))) # (!\sis|M8C1|CountBuffer\(1) & (\sis|MX1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|M8C1|CountBuffer\(1),
	datab => \sis|MX1|Mux0~0_combout\,
	datac => \sis|DR1|Q\(7),
	datad => \sis|DR1|Q\(6),
	combout => \sis|MX1|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y71_N18
\sis|MX1|DataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|MX1|DataOut~0_combout\ = (!\En~input_o\ & ((\sis|M8C1|CountBuffer\(2) & ((\sis|MX1|Mux0~1_combout\))) # (!\sis|M8C1|CountBuffer\(2) & (\sis|MX1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|MX1|Mux0~3_combout\,
	datab => \sis|M8C1|CountBuffer\(2),
	datac => \En~input_o\,
	datad => \sis|MX1|Mux0~1_combout\,
	combout => \sis|MX1|DataOut~0_combout\);

ww_ss(0) <= \ss[0]~output_o\;

ww_ss(1) <= \ss[1]~output_o\;

ww_ss(2) <= \ss[2]~output_o\;

ww_ss(3) <= \ss[3]~output_o\;

ww_ss(4) <= \ss[4]~output_o\;

ww_ss(5) <= \ss[5]~output_o\;

ww_ss(6) <= \ss[6]~output_o\;

ww_DataOutOut <= \DataOutOut~output_o\;
END structure;


