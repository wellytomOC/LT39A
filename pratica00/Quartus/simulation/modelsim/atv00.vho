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

-- DATE "04/11/2024 21:17:06"

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

ENTITY 	final IS
    PORT (
	DataOutOut : OUT std_logic;
	Clock : IN std_logic;
	En : IN std_logic;
	DataInput : IN std_logic_vector(7 DOWNTO 0);
	testClockOut : OUT std_logic;
	ss : OUT std_logic_vector(6 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- DataOutOut	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testClockOut	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataInput[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DataOutOut : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_DataInput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_testClockOut : std_logic;
SIGNAL ww_ss : std_logic_vector(6 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|sis|M8C1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DataOutOut~output_o\ : std_logic;
SIGNAL \testClockOut~output_o\ : std_logic;
SIGNAL \ss[6]~output_o\ : std_logic;
SIGNAL \ss[5]~output_o\ : std_logic;
SIGNAL \ss[4]~output_o\ : std_logic;
SIGNAL \ss[3]~output_o\ : std_logic;
SIGNAL \ss[2]~output_o\ : std_logic;
SIGNAL \ss[1]~output_o\ : std_logic;
SIGNAL \ss[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~0_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~81_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~1\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~2_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~78_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~3\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~4_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~79_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~5\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~6_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~80_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~7\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~8_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~82_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~9\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~10_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~83_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~11\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~12_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~77_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~13\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~14_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~84_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~15\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~16_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~85_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~17\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~18_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~86_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~19\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~20_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~87_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~21\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~22_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~73_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~23\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~24_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~74_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~25\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~26_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~75_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~27\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~28_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~76_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~29\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~30_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~92_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~31\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~32_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~66_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~33\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~34_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~91_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~35\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~36_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~67_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~37\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~38_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~68_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~39\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~40_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~69_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~41\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~42_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~70_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~43\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~44_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~71_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~45\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~46_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~90_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~47\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~48_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~72_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~49\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~50_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~88_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~51\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~52_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~89_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~53\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~54_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~56_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~55\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~57_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~59_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~58\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~60_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~62_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~61\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~63_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~65_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~64\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~93_combout\ : std_logic;
SIGNAL \inst|ent|CD01|Add0~95_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|ent|CD01|LessThan0~11_combout\ : std_logic;
SIGNAL \inst|ent|CD01|tmp~0_combout\ : std_logic;
SIGNAL \inst|ent|CD01|tmp~feeder_combout\ : std_logic;
SIGNAL \inst|ent|CD01|tmp~q\ : std_logic;
SIGNAL \inst|sis|M8C1|CountBuffer[0]~1_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[1]~6_combout\ : std_logic;
SIGNAL \inst|sis|M8C1|CountBuffer[2]~0_combout\ : std_logic;
SIGNAL \inst|sis|M8C1|LessThan0~combout\ : std_logic;
SIGNAL \inst|sis|M8C1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DataInput[0]~input_o\ : std_logic;
SIGNAL \DataInput[1]~input_o\ : std_logic;
SIGNAL \inst|sis|MX1|Mux0~2_combout\ : std_logic;
SIGNAL \DataInput[3]~input_o\ : std_logic;
SIGNAL \DataInput[2]~input_o\ : std_logic;
SIGNAL \inst|sis|MX1|Mux0~3_combout\ : std_logic;
SIGNAL \DataInput[4]~input_o\ : std_logic;
SIGNAL \DataInput[5]~input_o\ : std_logic;
SIGNAL \inst|sis|MX1|Mux0~0_combout\ : std_logic;
SIGNAL \DataInput[7]~input_o\ : std_logic;
SIGNAL \DataInput[6]~input_o\ : std_logic;
SIGNAL \inst|sis|MX1|Mux0~1_combout\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \inst|sis|MX1|DataOut~0_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[6]~0_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[5]~1_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[4]~2_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[3]~3_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|Equal14~0_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[1]~4_combout\ : std_logic;
SIGNAL \inst|sai|ssd1|ss[0]~5_combout\ : std_logic;
SIGNAL \inst|sis|DR1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ent|CD01|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|sis|M8C1|CountBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|sai|ssd1|ALT_INV_ss[6]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DataOutOut <= ww_DataOutOut;
ww_Clock <= Clock;
ww_En <= En;
ww_DataInput <= DataInput;
testClockOut <= ww_testClockOut;
ss <= ww_ss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\inst|sis|M8C1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|sis|M8C1|LessThan0~combout\);
\inst|sai|ssd1|ALT_INV_ss[6]~0_combout\ <= NOT \inst|sai|ssd1|ss[6]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X105_Y0_N16
\DataOutOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sis|MX1|DataOut~0_combout\,
	devoe => ww_devoe,
	o => \DataOutOut~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\testClockOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ent|CD01|tmp~q\,
	devoe => ww_devoe,
	o => \testClockOut~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ss[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ALT_INV_ss[6]~0_combout\,
	devoe => ww_devoe,
	o => \ss[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ss[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ss[5]~1_combout\,
	devoe => ww_devoe,
	o => \ss[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ss[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ss[4]~2_combout\,
	devoe => ww_devoe,
	o => \ss[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ss[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ss[3]~3_combout\,
	devoe => ww_devoe,
	o => \ss[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ss[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|Equal14~0_combout\,
	devoe => ww_devoe,
	o => \ss[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ss[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ss[1]~4_combout\,
	devoe => ww_devoe,
	o => \ss[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ss[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sai|ssd1|ss[0]~5_combout\,
	devoe => ww_devoe,
	o => \ss[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X106_Y50_N0
\inst|ent|CD01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~0_combout\ = \inst|ent|CD01|count\(0) $ (GND)
-- \inst|ent|CD01|Add0~1\ = CARRY(!\inst|ent|CD01|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(0),
	datad => VCC,
	combout => \inst|ent|CD01|Add0~0_combout\,
	cout => \inst|ent|CD01|Add0~1\);

-- Location: LCCOMB_X105_Y50_N16
\inst|ent|CD01|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~81_combout\ = (!\inst|ent|CD01|Add0~0_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~0_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~81_combout\);

-- Location: FF_X105_Y50_N17
\inst|ent|CD01|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(0));

-- Location: LCCOMB_X106_Y50_N2
\inst|ent|CD01|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~2_combout\ = (\inst|ent|CD01|count\(1) & (!\inst|ent|CD01|Add0~1\)) # (!\inst|ent|CD01|count\(1) & ((\inst|ent|CD01|Add0~1\) # (GND)))
-- \inst|ent|CD01|Add0~3\ = CARRY((!\inst|ent|CD01|Add0~1\) # (!\inst|ent|CD01|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(1),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~1\,
	combout => \inst|ent|CD01|Add0~2_combout\,
	cout => \inst|ent|CD01|Add0~3\);

-- Location: LCCOMB_X105_Y50_N30
\inst|ent|CD01|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~78_combout\ = (\inst|ent|CD01|Add0~2_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~2_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~78_combout\);

-- Location: FF_X105_Y50_N31
\inst|ent|CD01|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(1));

-- Location: LCCOMB_X106_Y50_N4
\inst|ent|CD01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~4_combout\ = (\inst|ent|CD01|count\(2) & (\inst|ent|CD01|Add0~3\ $ (GND))) # (!\inst|ent|CD01|count\(2) & (!\inst|ent|CD01|Add0~3\ & VCC))
-- \inst|ent|CD01|Add0~5\ = CARRY((\inst|ent|CD01|count\(2) & !\inst|ent|CD01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(2),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~3\,
	combout => \inst|ent|CD01|Add0~4_combout\,
	cout => \inst|ent|CD01|Add0~5\);

-- Location: LCCOMB_X105_Y50_N24
\inst|ent|CD01|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~79_combout\ = (\inst|ent|CD01|Add0~4_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|Add0~4_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~79_combout\);

-- Location: FF_X105_Y50_N25
\inst|ent|CD01|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(2));

-- Location: LCCOMB_X106_Y50_N6
\inst|ent|CD01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~6_combout\ = (\inst|ent|CD01|count\(3) & (!\inst|ent|CD01|Add0~5\)) # (!\inst|ent|CD01|count\(3) & ((\inst|ent|CD01|Add0~5\) # (GND)))
-- \inst|ent|CD01|Add0~7\ = CARRY((!\inst|ent|CD01|Add0~5\) # (!\inst|ent|CD01|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(3),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~5\,
	combout => \inst|ent|CD01|Add0~6_combout\,
	cout => \inst|ent|CD01|Add0~7\);

-- Location: LCCOMB_X105_Y50_N2
\inst|ent|CD01|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~80_combout\ = (\inst|ent|CD01|Add0~6_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|Add0~6_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~80_combout\);

-- Location: FF_X105_Y50_N3
\inst|ent|CD01|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(3));

-- Location: LCCOMB_X106_Y50_N8
\inst|ent|CD01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~8_combout\ = (\inst|ent|CD01|count\(4) & (\inst|ent|CD01|Add0~7\ $ (GND))) # (!\inst|ent|CD01|count\(4) & (!\inst|ent|CD01|Add0~7\ & VCC))
-- \inst|ent|CD01|Add0~9\ = CARRY((\inst|ent|CD01|count\(4) & !\inst|ent|CD01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(4),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~7\,
	combout => \inst|ent|CD01|Add0~8_combout\,
	cout => \inst|ent|CD01|Add0~9\);

-- Location: LCCOMB_X105_Y50_N12
\inst|ent|CD01|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~82_combout\ = (\inst|ent|CD01|Add0~8_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~8_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~82_combout\);

-- Location: FF_X105_Y50_N13
\inst|ent|CD01|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(4));

-- Location: LCCOMB_X106_Y50_N10
\inst|ent|CD01|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~10_combout\ = (\inst|ent|CD01|count\(5) & (!\inst|ent|CD01|Add0~9\)) # (!\inst|ent|CD01|count\(5) & ((\inst|ent|CD01|Add0~9\) # (GND)))
-- \inst|ent|CD01|Add0~11\ = CARRY((!\inst|ent|CD01|Add0~9\) # (!\inst|ent|CD01|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(5),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~9\,
	combout => \inst|ent|CD01|Add0~10_combout\,
	cout => \inst|ent|CD01|Add0~11\);

-- Location: LCCOMB_X105_Y50_N18
\inst|ent|CD01|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~83_combout\ = (\inst|ent|CD01|Add0~10_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~10_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~83_combout\);

-- Location: FF_X105_Y50_N19
\inst|ent|CD01|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(5));

-- Location: LCCOMB_X106_Y50_N12
\inst|ent|CD01|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~12_combout\ = (\inst|ent|CD01|count\(6) & (\inst|ent|CD01|Add0~11\ $ (GND))) # (!\inst|ent|CD01|count\(6) & (!\inst|ent|CD01|Add0~11\ & VCC))
-- \inst|ent|CD01|Add0~13\ = CARRY((\inst|ent|CD01|count\(6) & !\inst|ent|CD01|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(6),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~11\,
	combout => \inst|ent|CD01|Add0~12_combout\,
	cout => \inst|ent|CD01|Add0~13\);

-- Location: LCCOMB_X105_Y50_N0
\inst|ent|CD01|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~77_combout\ = (\inst|ent|CD01|Add0~12_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~12_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~77_combout\);

-- Location: FF_X105_Y50_N1
\inst|ent|CD01|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(6));

-- Location: LCCOMB_X106_Y50_N14
\inst|ent|CD01|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~14_combout\ = (\inst|ent|CD01|count\(7) & (!\inst|ent|CD01|Add0~13\)) # (!\inst|ent|CD01|count\(7) & ((\inst|ent|CD01|Add0~13\) # (GND)))
-- \inst|ent|CD01|Add0~15\ = CARRY((!\inst|ent|CD01|Add0~13\) # (!\inst|ent|CD01|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(7),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~13\,
	combout => \inst|ent|CD01|Add0~14_combout\,
	cout => \inst|ent|CD01|Add0~15\);

-- Location: LCCOMB_X105_Y50_N22
\inst|ent|CD01|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~84_combout\ = (\inst|ent|CD01|Add0~14_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~14_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~84_combout\);

-- Location: FF_X105_Y50_N23
\inst|ent|CD01|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(7));

-- Location: LCCOMB_X106_Y50_N16
\inst|ent|CD01|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~16_combout\ = (\inst|ent|CD01|count\(8) & (\inst|ent|CD01|Add0~15\ $ (GND))) # (!\inst|ent|CD01|count\(8) & (!\inst|ent|CD01|Add0~15\ & VCC))
-- \inst|ent|CD01|Add0~17\ = CARRY((\inst|ent|CD01|count\(8) & !\inst|ent|CD01|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(8),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~15\,
	combout => \inst|ent|CD01|Add0~16_combout\,
	cout => \inst|ent|CD01|Add0~17\);

-- Location: LCCOMB_X105_Y50_N20
\inst|ent|CD01|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~85_combout\ = (\inst|ent|CD01|Add0~16_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|Add0~16_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~85_combout\);

-- Location: FF_X105_Y50_N21
\inst|ent|CD01|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(8));

-- Location: LCCOMB_X106_Y50_N18
\inst|ent|CD01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~18_combout\ = (\inst|ent|CD01|count\(9) & (!\inst|ent|CD01|Add0~17\)) # (!\inst|ent|CD01|count\(9) & ((\inst|ent|CD01|Add0~17\) # (GND)))
-- \inst|ent|CD01|Add0~19\ = CARRY((!\inst|ent|CD01|Add0~17\) # (!\inst|ent|CD01|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(9),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~17\,
	combout => \inst|ent|CD01|Add0~18_combout\,
	cout => \inst|ent|CD01|Add0~19\);

-- Location: LCCOMB_X105_Y50_N6
\inst|ent|CD01|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~86_combout\ = (\inst|ent|CD01|Add0~18_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|Add0~18_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~86_combout\);

-- Location: FF_X105_Y50_N7
\inst|ent|CD01|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(9));

-- Location: LCCOMB_X106_Y50_N20
\inst|ent|CD01|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~20_combout\ = (\inst|ent|CD01|count\(10) & (\inst|ent|CD01|Add0~19\ $ (GND))) # (!\inst|ent|CD01|count\(10) & (!\inst|ent|CD01|Add0~19\ & VCC))
-- \inst|ent|CD01|Add0~21\ = CARRY((\inst|ent|CD01|count\(10) & !\inst|ent|CD01|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(10),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~19\,
	combout => \inst|ent|CD01|Add0~20_combout\,
	cout => \inst|ent|CD01|Add0~21\);

-- Location: LCCOMB_X105_Y50_N8
\inst|ent|CD01|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~87_combout\ = (\inst|ent|CD01|Add0~20_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~20_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~87_combout\);

-- Location: FF_X105_Y50_N9
\inst|ent|CD01|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(10));

-- Location: LCCOMB_X106_Y50_N22
\inst|ent|CD01|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~22_combout\ = (\inst|ent|CD01|count\(11) & (!\inst|ent|CD01|Add0~21\)) # (!\inst|ent|CD01|count\(11) & ((\inst|ent|CD01|Add0~21\) # (GND)))
-- \inst|ent|CD01|Add0~23\ = CARRY((!\inst|ent|CD01|Add0~21\) # (!\inst|ent|CD01|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(11),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~21\,
	combout => \inst|ent|CD01|Add0~22_combout\,
	cout => \inst|ent|CD01|Add0~23\);

-- Location: LCCOMB_X107_Y49_N4
\inst|ent|CD01|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~73_combout\ = (\inst|ent|CD01|Add0~22_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~22_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~73_combout\);

-- Location: FF_X107_Y49_N5
\inst|ent|CD01|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(11));

-- Location: LCCOMB_X106_Y50_N24
\inst|ent|CD01|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~24_combout\ = (\inst|ent|CD01|count\(12) & (\inst|ent|CD01|Add0~23\ $ (GND))) # (!\inst|ent|CD01|count\(12) & (!\inst|ent|CD01|Add0~23\ & VCC))
-- \inst|ent|CD01|Add0~25\ = CARRY((\inst|ent|CD01|count\(12) & !\inst|ent|CD01|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(12),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~23\,
	combout => \inst|ent|CD01|Add0~24_combout\,
	cout => \inst|ent|CD01|Add0~25\);

-- Location: LCCOMB_X107_Y49_N12
\inst|ent|CD01|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~74_combout\ = (\inst|ent|CD01|Add0~24_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~24_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~74_combout\);

-- Location: FF_X107_Y49_N13
\inst|ent|CD01|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(12));

-- Location: LCCOMB_X106_Y50_N26
\inst|ent|CD01|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~26_combout\ = (\inst|ent|CD01|count\(13) & (!\inst|ent|CD01|Add0~25\)) # (!\inst|ent|CD01|count\(13) & ((\inst|ent|CD01|Add0~25\) # (GND)))
-- \inst|ent|CD01|Add0~27\ = CARRY((!\inst|ent|CD01|Add0~25\) # (!\inst|ent|CD01|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(13),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~25\,
	combout => \inst|ent|CD01|Add0~26_combout\,
	cout => \inst|ent|CD01|Add0~27\);

-- Location: LCCOMB_X107_Y49_N8
\inst|ent|CD01|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~75_combout\ = (\inst|ent|CD01|Add0~26_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~26_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~75_combout\);

-- Location: FF_X107_Y49_N9
\inst|ent|CD01|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(13));

-- Location: LCCOMB_X106_Y50_N28
\inst|ent|CD01|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~28_combout\ = (\inst|ent|CD01|count\(14) & (\inst|ent|CD01|Add0~27\ $ (GND))) # (!\inst|ent|CD01|count\(14) & (!\inst|ent|CD01|Add0~27\ & VCC))
-- \inst|ent|CD01|Add0~29\ = CARRY((\inst|ent|CD01|count\(14) & !\inst|ent|CD01|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(14),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~27\,
	combout => \inst|ent|CD01|Add0~28_combout\,
	cout => \inst|ent|CD01|Add0~29\);

-- Location: LCCOMB_X107_Y49_N0
\inst|ent|CD01|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~76_combout\ = (\inst|ent|CD01|Add0~28_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~28_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~76_combout\);

-- Location: FF_X107_Y49_N1
\inst|ent|CD01|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(14));

-- Location: LCCOMB_X106_Y50_N30
\inst|ent|CD01|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~30_combout\ = (\inst|ent|CD01|count\(15) & (!\inst|ent|CD01|Add0~29\)) # (!\inst|ent|CD01|count\(15) & ((\inst|ent|CD01|Add0~29\) # (GND)))
-- \inst|ent|CD01|Add0~31\ = CARRY((!\inst|ent|CD01|Add0~29\) # (!\inst|ent|CD01|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(15),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~29\,
	combout => \inst|ent|CD01|Add0~30_combout\,
	cout => \inst|ent|CD01|Add0~31\);

-- Location: LCCOMB_X105_Y49_N0
\inst|ent|CD01|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~92_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~30_combout\,
	combout => \inst|ent|CD01|Add0~92_combout\);

-- Location: FF_X105_Y49_N1
\inst|ent|CD01|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(15));

-- Location: LCCOMB_X106_Y49_N0
\inst|ent|CD01|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~32_combout\ = (\inst|ent|CD01|count\(16) & (\inst|ent|CD01|Add0~31\ $ (GND))) # (!\inst|ent|CD01|count\(16) & (!\inst|ent|CD01|Add0~31\ & VCC))
-- \inst|ent|CD01|Add0~33\ = CARRY((\inst|ent|CD01|count\(16) & !\inst|ent|CD01|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(16),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~31\,
	combout => \inst|ent|CD01|Add0~32_combout\,
	cout => \inst|ent|CD01|Add0~33\);

-- Location: LCCOMB_X105_Y49_N16
\inst|ent|CD01|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~66_combout\ = (\inst|ent|CD01|Add0~32_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~32_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~66_combout\);

-- Location: FF_X105_Y49_N17
\inst|ent|CD01|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(16));

-- Location: LCCOMB_X106_Y49_N2
\inst|ent|CD01|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~34_combout\ = (\inst|ent|CD01|count\(17) & (!\inst|ent|CD01|Add0~33\)) # (!\inst|ent|CD01|count\(17) & ((\inst|ent|CD01|Add0~33\) # (GND)))
-- \inst|ent|CD01|Add0~35\ = CARRY((!\inst|ent|CD01|Add0~33\) # (!\inst|ent|CD01|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(17),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~33\,
	combout => \inst|ent|CD01|Add0~34_combout\,
	cout => \inst|ent|CD01|Add0~35\);

-- Location: LCCOMB_X105_Y49_N6
\inst|ent|CD01|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~91_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~34_combout\,
	combout => \inst|ent|CD01|Add0~91_combout\);

-- Location: FF_X105_Y49_N7
\inst|ent|CD01|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(17));

-- Location: LCCOMB_X106_Y49_N4
\inst|ent|CD01|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~36_combout\ = (\inst|ent|CD01|count\(18) & (\inst|ent|CD01|Add0~35\ $ (GND))) # (!\inst|ent|CD01|count\(18) & (!\inst|ent|CD01|Add0~35\ & VCC))
-- \inst|ent|CD01|Add0~37\ = CARRY((\inst|ent|CD01|count\(18) & !\inst|ent|CD01|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(18),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~35\,
	combout => \inst|ent|CD01|Add0~36_combout\,
	cout => \inst|ent|CD01|Add0~37\);

-- Location: LCCOMB_X105_Y49_N14
\inst|ent|CD01|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~67_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~36_combout\,
	combout => \inst|ent|CD01|Add0~67_combout\);

-- Location: FF_X105_Y49_N15
\inst|ent|CD01|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(18));

-- Location: LCCOMB_X106_Y49_N6
\inst|ent|CD01|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~38_combout\ = (\inst|ent|CD01|count\(19) & (!\inst|ent|CD01|Add0~37\)) # (!\inst|ent|CD01|count\(19) & ((\inst|ent|CD01|Add0~37\) # (GND)))
-- \inst|ent|CD01|Add0~39\ = CARRY((!\inst|ent|CD01|Add0~37\) # (!\inst|ent|CD01|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(19),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~37\,
	combout => \inst|ent|CD01|Add0~38_combout\,
	cout => \inst|ent|CD01|Add0~39\);

-- Location: LCCOMB_X105_Y49_N12
\inst|ent|CD01|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~68_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~38_combout\,
	combout => \inst|ent|CD01|Add0~68_combout\);

-- Location: FF_X105_Y49_N13
\inst|ent|CD01|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(19));

-- Location: LCCOMB_X106_Y49_N8
\inst|ent|CD01|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~40_combout\ = (\inst|ent|CD01|count\(20) & (\inst|ent|CD01|Add0~39\ $ (GND))) # (!\inst|ent|CD01|count\(20) & (!\inst|ent|CD01|Add0~39\ & VCC))
-- \inst|ent|CD01|Add0~41\ = CARRY((\inst|ent|CD01|count\(20) & !\inst|ent|CD01|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(20),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~39\,
	combout => \inst|ent|CD01|Add0~40_combout\,
	cout => \inst|ent|CD01|Add0~41\);

-- Location: LCCOMB_X105_Y49_N22
\inst|ent|CD01|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~69_combout\ = (\inst|ent|CD01|Add0~40_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~40_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~69_combout\);

-- Location: FF_X105_Y49_N23
\inst|ent|CD01|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(20));

-- Location: LCCOMB_X106_Y49_N10
\inst|ent|CD01|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~42_combout\ = (\inst|ent|CD01|count\(21) & (!\inst|ent|CD01|Add0~41\)) # (!\inst|ent|CD01|count\(21) & ((\inst|ent|CD01|Add0~41\) # (GND)))
-- \inst|ent|CD01|Add0~43\ = CARRY((!\inst|ent|CD01|Add0~41\) # (!\inst|ent|CD01|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(21),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~41\,
	combout => \inst|ent|CD01|Add0~42_combout\,
	cout => \inst|ent|CD01|Add0~43\);

-- Location: LCCOMB_X105_Y49_N20
\inst|ent|CD01|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~70_combout\ = (\inst|ent|CD01|Add0~42_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~42_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~70_combout\);

-- Location: FF_X105_Y49_N21
\inst|ent|CD01|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(21));

-- Location: LCCOMB_X106_Y49_N12
\inst|ent|CD01|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~44_combout\ = (\inst|ent|CD01|count\(22) & (\inst|ent|CD01|Add0~43\ $ (GND))) # (!\inst|ent|CD01|count\(22) & (!\inst|ent|CD01|Add0~43\ & VCC))
-- \inst|ent|CD01|Add0~45\ = CARRY((\inst|ent|CD01|count\(22) & !\inst|ent|CD01|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(22),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~43\,
	combout => \inst|ent|CD01|Add0~44_combout\,
	cout => \inst|ent|CD01|Add0~45\);

-- Location: LCCOMB_X107_Y49_N6
\inst|ent|CD01|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~71_combout\ = (\inst|ent|CD01|Add0~44_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|Add0~44_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~71_combout\);

-- Location: FF_X107_Y49_N7
\inst|ent|CD01|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(22));

-- Location: LCCOMB_X106_Y49_N14
\inst|ent|CD01|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~46_combout\ = (\inst|ent|CD01|count\(23) & (!\inst|ent|CD01|Add0~45\)) # (!\inst|ent|CD01|count\(23) & ((\inst|ent|CD01|Add0~45\) # (GND)))
-- \inst|ent|CD01|Add0~47\ = CARRY((!\inst|ent|CD01|Add0~45\) # (!\inst|ent|CD01|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(23),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~45\,
	combout => \inst|ent|CD01|Add0~46_combout\,
	cout => \inst|ent|CD01|Add0~47\);

-- Location: LCCOMB_X105_Y49_N28
\inst|ent|CD01|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~90_combout\ = (\inst|ent|CD01|Add0~46_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~46_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~90_combout\);

-- Location: FF_X105_Y49_N29
\inst|ent|CD01|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(23));

-- Location: LCCOMB_X106_Y49_N16
\inst|ent|CD01|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~48_combout\ = (\inst|ent|CD01|count\(24) & (\inst|ent|CD01|Add0~47\ $ (GND))) # (!\inst|ent|CD01|count\(24) & (!\inst|ent|CD01|Add0~47\ & VCC))
-- \inst|ent|CD01|Add0~49\ = CARRY((\inst|ent|CD01|count\(24) & !\inst|ent|CD01|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(24),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~47\,
	combout => \inst|ent|CD01|Add0~48_combout\,
	cout => \inst|ent|CD01|Add0~49\);

-- Location: LCCOMB_X107_Y49_N10
\inst|ent|CD01|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~72_combout\ = (\inst|ent|CD01|Add0~48_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~48_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~72_combout\);

-- Location: FF_X107_Y49_N11
\inst|ent|CD01|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(24));

-- Location: LCCOMB_X106_Y49_N18
\inst|ent|CD01|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~50_combout\ = (\inst|ent|CD01|count\(25) & (!\inst|ent|CD01|Add0~49\)) # (!\inst|ent|CD01|count\(25) & ((\inst|ent|CD01|Add0~49\) # (GND)))
-- \inst|ent|CD01|Add0~51\ = CARRY((!\inst|ent|CD01|Add0~49\) # (!\inst|ent|CD01|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(25),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~49\,
	combout => \inst|ent|CD01|Add0~50_combout\,
	cout => \inst|ent|CD01|Add0~51\);

-- Location: LCCOMB_X105_Y49_N8
\inst|ent|CD01|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~88_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~50_combout\,
	combout => \inst|ent|CD01|Add0~88_combout\);

-- Location: FF_X105_Y49_N9
\inst|ent|CD01|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(25));

-- Location: LCCOMB_X106_Y49_N20
\inst|ent|CD01|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~52_combout\ = (\inst|ent|CD01|count\(26) & (\inst|ent|CD01|Add0~51\ $ (GND))) # (!\inst|ent|CD01|count\(26) & (!\inst|ent|CD01|Add0~51\ & VCC))
-- \inst|ent|CD01|Add0~53\ = CARRY((\inst|ent|CD01|count\(26) & !\inst|ent|CD01|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(26),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~51\,
	combout => \inst|ent|CD01|Add0~52_combout\,
	cout => \inst|ent|CD01|Add0~53\);

-- Location: LCCOMB_X105_Y49_N26
\inst|ent|CD01|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~89_combout\ = (\inst|ent|CD01|Add0~52_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~52_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~89_combout\);

-- Location: FF_X105_Y49_N27
\inst|ent|CD01|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(26));

-- Location: LCCOMB_X106_Y49_N22
\inst|ent|CD01|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~54_combout\ = (\inst|ent|CD01|count\(27) & (!\inst|ent|CD01|Add0~53\)) # (!\inst|ent|CD01|count\(27) & ((\inst|ent|CD01|Add0~53\) # (GND)))
-- \inst|ent|CD01|Add0~55\ = CARRY((!\inst|ent|CD01|Add0~53\) # (!\inst|ent|CD01|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(27),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~53\,
	combout => \inst|ent|CD01|Add0~54_combout\,
	cout => \inst|ent|CD01|Add0~55\);

-- Location: LCCOMB_X107_Y49_N26
\inst|ent|CD01|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~56_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~54_combout\,
	combout => \inst|ent|CD01|Add0~56_combout\);

-- Location: FF_X107_Y49_N27
\inst|ent|CD01|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(27));

-- Location: LCCOMB_X106_Y49_N24
\inst|ent|CD01|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~57_combout\ = (\inst|ent|CD01|count\(28) & (\inst|ent|CD01|Add0~55\ $ (GND))) # (!\inst|ent|CD01|count\(28) & (!\inst|ent|CD01|Add0~55\ & VCC))
-- \inst|ent|CD01|Add0~58\ = CARRY((\inst|ent|CD01|count\(28) & !\inst|ent|CD01|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ent|CD01|count\(28),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~55\,
	combout => \inst|ent|CD01|Add0~57_combout\,
	cout => \inst|ent|CD01|Add0~58\);

-- Location: LCCOMB_X107_Y49_N18
\inst|ent|CD01|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~59_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~57_combout\,
	combout => \inst|ent|CD01|Add0~59_combout\);

-- Location: FF_X107_Y49_N19
\inst|ent|CD01|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(28));

-- Location: LCCOMB_X106_Y49_N26
\inst|ent|CD01|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~60_combout\ = (\inst|ent|CD01|count\(29) & (!\inst|ent|CD01|Add0~58\)) # (!\inst|ent|CD01|count\(29) & ((\inst|ent|CD01|Add0~58\) # (GND)))
-- \inst|ent|CD01|Add0~61\ = CARRY((!\inst|ent|CD01|Add0~58\) # (!\inst|ent|CD01|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(29),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~58\,
	combout => \inst|ent|CD01|Add0~60_combout\,
	cout => \inst|ent|CD01|Add0~61\);

-- Location: LCCOMB_X107_Y49_N2
\inst|ent|CD01|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~62_combout\ = (\inst|ent|CD01|Add0~60_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~60_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~62_combout\);

-- Location: FF_X107_Y49_N3
\inst|ent|CD01|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(29));

-- Location: LCCOMB_X106_Y49_N28
\inst|ent|CD01|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~63_combout\ = (\inst|ent|CD01|count\(30) & (\inst|ent|CD01|Add0~61\ $ (GND))) # (!\inst|ent|CD01|count\(30) & (!\inst|ent|CD01|Add0~61\ & VCC))
-- \inst|ent|CD01|Add0~64\ = CARRY((\inst|ent|CD01|count\(30) & !\inst|ent|CD01|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(30),
	datad => VCC,
	cin => \inst|ent|CD01|Add0~61\,
	combout => \inst|ent|CD01|Add0~63_combout\,
	cout => \inst|ent|CD01|Add0~64\);

-- Location: LCCOMB_X107_Y49_N30
\inst|ent|CD01|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~65_combout\ = (!\inst|ent|CD01|LessThan0~11_combout\ & \inst|ent|CD01|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|Add0~63_combout\,
	combout => \inst|ent|CD01|Add0~65_combout\);

-- Location: FF_X107_Y49_N31
\inst|ent|CD01|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(30));

-- Location: LCCOMB_X106_Y49_N30
\inst|ent|CD01|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~93_combout\ = \inst|ent|CD01|Add0~64\ $ (\inst|ent|CD01|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ent|CD01|count\(31),
	cin => \inst|ent|CD01|Add0~64\,
	combout => \inst|ent|CD01|Add0~93_combout\);

-- Location: LCCOMB_X105_Y49_N24
\inst|ent|CD01|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|Add0~95_combout\ = (\inst|ent|CD01|Add0~93_combout\ & !\inst|ent|CD01|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|Add0~93_combout\,
	datad => \inst|ent|CD01|LessThan0~11_combout\,
	combout => \inst|ent|CD01|Add0~95_combout\);

-- Location: FF_X105_Y49_N25
\inst|ent|CD01|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|count\(31));

-- Location: LCCOMB_X105_Y49_N30
\inst|ent|CD01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~1_combout\ = (\inst|ent|CD01|count\(19) & (\inst|ent|CD01|count\(18) & (\inst|ent|CD01|count\(20) & \inst|ent|CD01|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(19),
	datab => \inst|ent|CD01|count\(18),
	datac => \inst|ent|CD01|count\(20),
	datad => \inst|ent|CD01|count\(21),
	combout => \inst|ent|CD01|LessThan0~1_combout\);

-- Location: LCCOMB_X105_Y49_N18
\inst|ent|CD01|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~8_combout\ = (\inst|ent|CD01|count\(17)) # ((\inst|ent|CD01|count\(15) & \inst|ent|CD01|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(17),
	datab => \inst|ent|CD01|count\(15),
	datad => \inst|ent|CD01|count\(16),
	combout => \inst|ent|CD01|LessThan0~8_combout\);

-- Location: LCCOMB_X105_Y49_N4
\inst|ent|CD01|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~9_combout\ = (\inst|ent|CD01|count\(23)) # ((\inst|ent|CD01|count\(22) & (\inst|ent|CD01|LessThan0~1_combout\ & \inst|ent|CD01|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(22),
	datab => \inst|ent|CD01|count\(23),
	datac => \inst|ent|CD01|LessThan0~1_combout\,
	datad => \inst|ent|CD01|LessThan0~8_combout\,
	combout => \inst|ent|CD01|LessThan0~9_combout\);

-- Location: LCCOMB_X105_Y49_N2
\inst|ent|CD01|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~10_combout\ = (\inst|ent|CD01|count\(26)) # ((\inst|ent|CD01|count\(25)) # ((\inst|ent|CD01|LessThan0~9_combout\ & \inst|ent|CD01|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(26),
	datab => \inst|ent|CD01|count\(25),
	datac => \inst|ent|CD01|LessThan0~9_combout\,
	datad => \inst|ent|CD01|count\(24),
	combout => \inst|ent|CD01|LessThan0~10_combout\);

-- Location: LCCOMB_X107_Y49_N24
\inst|ent|CD01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~0_combout\ = (\inst|ent|CD01|count\(30)) # ((\inst|ent|CD01|count\(28)) # ((\inst|ent|CD01|count\(27)) # (\inst|ent|CD01|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(30),
	datab => \inst|ent|CD01|count\(28),
	datac => \inst|ent|CD01|count\(27),
	datad => \inst|ent|CD01|count\(29),
	combout => \inst|ent|CD01|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y49_N22
\inst|ent|CD01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~3_combout\ = (\inst|ent|CD01|count\(12) & (\inst|ent|CD01|count\(11) & (\inst|ent|CD01|count\(13) & \inst|ent|CD01|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(12),
	datab => \inst|ent|CD01|count\(11),
	datac => \inst|ent|CD01|count\(13),
	datad => \inst|ent|CD01|count\(14),
	combout => \inst|ent|CD01|LessThan0~3_combout\);

-- Location: LCCOMB_X105_Y50_N26
\inst|ent|CD01|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~6_combout\ = (\inst|ent|CD01|count\(9)) # ((\inst|ent|CD01|count\(8)) # ((\inst|ent|CD01|count\(7)) # (\inst|ent|CD01|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(9),
	datab => \inst|ent|CD01|count\(8),
	datac => \inst|ent|CD01|count\(7),
	datad => \inst|ent|CD01|count\(10),
	combout => \inst|ent|CD01|LessThan0~6_combout\);

-- Location: LCCOMB_X107_Y49_N14
\inst|ent|CD01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~2_combout\ = (\inst|ent|CD01|count\(24) & (\inst|ent|CD01|count\(16) & (\inst|ent|CD01|LessThan0~1_combout\ & \inst|ent|CD01|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(24),
	datab => \inst|ent|CD01|count\(16),
	datac => \inst|ent|CD01|LessThan0~1_combout\,
	datad => \inst|ent|CD01|count\(22),
	combout => \inst|ent|CD01|LessThan0~2_combout\);

-- Location: LCCOMB_X105_Y50_N10
\inst|ent|CD01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~4_combout\ = (\inst|ent|CD01|count\(1)) # (((\inst|ent|CD01|count\(2)) # (\inst|ent|CD01|count\(3))) # (!\inst|ent|CD01|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(1),
	datab => \inst|ent|CD01|count\(0),
	datac => \inst|ent|CD01|count\(2),
	datad => \inst|ent|CD01|count\(3),
	combout => \inst|ent|CD01|LessThan0~4_combout\);

-- Location: LCCOMB_X105_Y50_N28
\inst|ent|CD01|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~5_combout\ = (\inst|ent|CD01|count\(6) & ((\inst|ent|CD01|count\(4)) # ((\inst|ent|CD01|count\(5)) # (\inst|ent|CD01|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(4),
	datab => \inst|ent|CD01|count\(5),
	datac => \inst|ent|CD01|count\(6),
	datad => \inst|ent|CD01|LessThan0~4_combout\,
	combout => \inst|ent|CD01|LessThan0~5_combout\);

-- Location: LCCOMB_X107_Y49_N28
\inst|ent|CD01|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~7_combout\ = (\inst|ent|CD01|LessThan0~3_combout\ & (\inst|ent|CD01|LessThan0~2_combout\ & ((\inst|ent|CD01|LessThan0~6_combout\) # (\inst|ent|CD01|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|LessThan0~3_combout\,
	datab => \inst|ent|CD01|LessThan0~6_combout\,
	datac => \inst|ent|CD01|LessThan0~2_combout\,
	datad => \inst|ent|CD01|LessThan0~5_combout\,
	combout => \inst|ent|CD01|LessThan0~7_combout\);

-- Location: LCCOMB_X105_Y49_N10
\inst|ent|CD01|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|LessThan0~11_combout\ = (!\inst|ent|CD01|count\(31) & ((\inst|ent|CD01|LessThan0~10_combout\) # ((\inst|ent|CD01|LessThan0~0_combout\) # (\inst|ent|CD01|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ent|CD01|count\(31),
	datab => \inst|ent|CD01|LessThan0~10_combout\,
	datac => \inst|ent|CD01|LessThan0~0_combout\,
	datad => \inst|ent|CD01|LessThan0~7_combout\,
	combout => \inst|ent|CD01|LessThan0~11_combout\);

-- Location: LCCOMB_X107_Y49_N20
\inst|ent|CD01|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|tmp~0_combout\ = \inst|ent|CD01|LessThan0~11_combout\ $ (\inst|ent|CD01|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|LessThan0~11_combout\,
	datad => \inst|ent|CD01|tmp~q\,
	combout => \inst|ent|CD01|tmp~0_combout\);

-- Location: LCCOMB_X107_Y49_N16
\inst|ent|CD01|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ent|CD01|tmp~feeder_combout\ = \inst|ent|CD01|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ent|CD01|tmp~0_combout\,
	combout => \inst|ent|CD01|tmp~feeder_combout\);

-- Location: FF_X107_Y49_N17
\inst|ent|CD01|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|ent|CD01|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ent|CD01|tmp~q\);

-- Location: LCCOMB_X114_Y36_N26
\inst|sis|M8C1|CountBuffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|M8C1|CountBuffer[0]~1_combout\ = !\inst|sis|M8C1|CountBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	combout => \inst|sis|M8C1|CountBuffer[0]~1_combout\);

-- Location: FF_X114_Y36_N15
\inst|sis|M8C1|CountBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ent|CD01|tmp~q\,
	asdata => \inst|sis|M8C1|CountBuffer[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|M8C1|CountBuffer\(0));

-- Location: LCCOMB_X114_Y36_N10
\inst|sai|ssd1|ss[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[1]~6_combout\ = \inst|sis|M8C1|CountBuffer\(0) $ (\inst|sis|M8C1|CountBuffer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sis|M8C1|CountBuffer\(0),
	datad => \inst|sis|M8C1|CountBuffer\(1),
	combout => \inst|sai|ssd1|ss[1]~6_combout\);

-- Location: FF_X114_Y36_N17
\inst|sis|M8C1|CountBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ent|CD01|tmp~q\,
	asdata => \inst|sai|ssd1|ss[1]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|M8C1|CountBuffer\(1));

-- Location: LCCOMB_X114_Y36_N22
\inst|sis|M8C1|CountBuffer[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|M8C1|CountBuffer[2]~0_combout\ = \inst|sis|M8C1|CountBuffer\(2) $ (((\inst|sis|M8C1|CountBuffer\(0) & \inst|sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(2),
	datad => \inst|sis|M8C1|CountBuffer\(1),
	combout => \inst|sis|M8C1|CountBuffer[2]~0_combout\);

-- Location: FF_X114_Y36_N5
\inst|sis|M8C1|CountBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ent|CD01|tmp~q\,
	asdata => \inst|sis|M8C1|CountBuffer[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|M8C1|CountBuffer\(2));

-- Location: LCCOMB_X114_Y36_N20
\inst|sis|M8C1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|M8C1|LessThan0~combout\ = LCELL((\inst|sis|M8C1|CountBuffer\(1) & (\inst|sis|M8C1|CountBuffer\(0) & \inst|sis|M8C1|CountBuffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datac => \inst|sis|M8C1|CountBuffer\(0),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sis|M8C1|LessThan0~combout\);

-- Location: CLKCTRL_G9
\inst|sis|M8C1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|sis|M8C1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\DataInput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(0),
	o => \DataInput[0]~input_o\);

-- Location: FF_X114_Y36_N1
\inst|sis|DR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(0));

-- Location: IOIBUF_X115_Y14_N1
\DataInput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(1),
	o => \DataInput[1]~input_o\);

-- Location: FF_X114_Y36_N29
\inst|sis|DR1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(1));

-- Location: LCCOMB_X114_Y36_N0
\inst|sis|MX1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|MX1|Mux0~2_combout\ = (\inst|sis|M8C1|CountBuffer\(0) & ((\inst|sis|M8C1|CountBuffer\(1)) # ((\inst|sis|DR1|Q\(1))))) # (!\inst|sis|M8C1|CountBuffer\(0) & (!\inst|sis|M8C1|CountBuffer\(1) & (\inst|sis|DR1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datac => \inst|sis|DR1|Q\(0),
	datad => \inst|sis|DR1|Q\(1),
	combout => \inst|sis|MX1|Mux0~2_combout\);

-- Location: IOIBUF_X115_Y13_N8
\DataInput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(3),
	o => \DataInput[3]~input_o\);

-- Location: FF_X114_Y36_N31
\inst|sis|DR1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(3));

-- Location: IOIBUF_X115_Y15_N8
\DataInput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(2),
	o => \DataInput[2]~input_o\);

-- Location: FF_X114_Y36_N19
\inst|sis|DR1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(2));

-- Location: LCCOMB_X114_Y36_N30
\inst|sis|MX1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|MX1|Mux0~3_combout\ = (\inst|sis|M8C1|CountBuffer\(1) & ((\inst|sis|MX1|Mux0~2_combout\ & (\inst|sis|DR1|Q\(3))) # (!\inst|sis|MX1|Mux0~2_combout\ & ((\inst|sis|DR1|Q\(2)))))) # (!\inst|sis|M8C1|CountBuffer\(1) & (\inst|sis|MX1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(1),
	datab => \inst|sis|MX1|Mux0~2_combout\,
	datac => \inst|sis|DR1|Q\(3),
	datad => \inst|sis|DR1|Q\(2),
	combout => \inst|sis|MX1|Mux0~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\DataInput[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(4),
	o => \DataInput[4]~input_o\);

-- Location: FF_X114_Y36_N23
\inst|sis|DR1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(4));

-- Location: IOIBUF_X115_Y11_N8
\DataInput[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(5),
	o => \DataInput[5]~input_o\);

-- Location: FF_X114_Y36_N13
\inst|sis|DR1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(5));

-- Location: LCCOMB_X114_Y36_N16
\inst|sis|MX1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|MX1|Mux0~0_combout\ = (\inst|sis|M8C1|CountBuffer\(0) & (((\inst|sis|M8C1|CountBuffer\(1)) # (\inst|sis|DR1|Q\(5))))) # (!\inst|sis|M8C1|CountBuffer\(0) & (\inst|sis|DR1|Q\(4) & (!\inst|sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|DR1|Q\(4),
	datac => \inst|sis|M8C1|CountBuffer\(1),
	datad => \inst|sis|DR1|Q\(5),
	combout => \inst|sis|MX1|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\DataInput[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(7),
	o => \DataInput[7]~input_o\);

-- Location: FF_X114_Y36_N25
\inst|sis|DR1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(7));

-- Location: IOIBUF_X115_Y10_N1
\DataInput[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataInput(6),
	o => \DataInput[6]~input_o\);

-- Location: FF_X114_Y36_N7
\inst|sis|DR1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sis|M8C1|LessThan0~clkctrl_outclk\,
	asdata => \DataInput[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sis|DR1|Q\(6));

-- Location: LCCOMB_X114_Y36_N24
\inst|sis|MX1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|MX1|Mux0~1_combout\ = (\inst|sis|M8C1|CountBuffer\(1) & ((\inst|sis|MX1|Mux0~0_combout\ & (\inst|sis|DR1|Q\(7))) # (!\inst|sis|MX1|Mux0~0_combout\ & ((\inst|sis|DR1|Q\(6)))))) # (!\inst|sis|M8C1|CountBuffer\(1) & (\inst|sis|MX1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(1),
	datab => \inst|sis|MX1|Mux0~0_combout\,
	datac => \inst|sis|DR1|Q\(7),
	datad => \inst|sis|DR1|Q\(6),
	combout => \inst|sis|MX1|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y14_N8
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: LCCOMB_X114_Y36_N4
\inst|sis|MX1|DataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sis|MX1|DataOut~0_combout\ = (!\En~input_o\ & ((\inst|sis|M8C1|CountBuffer\(2) & ((\inst|sis|MX1|Mux0~1_combout\))) # (!\inst|sis|M8C1|CountBuffer\(2) & (\inst|sis|MX1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|MX1|Mux0~3_combout\,
	datab => \inst|sis|MX1|Mux0~1_combout\,
	datac => \inst|sis|M8C1|CountBuffer\(2),
	datad => \En~input_o\,
	combout => \inst|sis|MX1|DataOut~0_combout\);

-- Location: LCCOMB_X114_Y36_N2
\inst|sai|ssd1|ss[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[6]~0_combout\ = (\inst|sis|M8C1|CountBuffer\(2) & ((!\inst|sis|M8C1|CountBuffer\(1)) # (!\inst|sis|M8C1|CountBuffer\(0)))) # (!\inst|sis|M8C1|CountBuffer\(2) & ((\inst|sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(2),
	datac => \inst|sis|M8C1|CountBuffer\(0),
	datad => \inst|sis|M8C1|CountBuffer\(1),
	combout => \inst|sai|ssd1|ss[6]~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\inst|sai|ssd1|ss[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[5]~1_combout\ = (\inst|sis|M8C1|CountBuffer\(2) & (\inst|sis|M8C1|CountBuffer\(0) & \inst|sis|M8C1|CountBuffer\(1))) # (!\inst|sis|M8C1|CountBuffer\(2) & ((\inst|sis|M8C1|CountBuffer\(0)) # (\inst|sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(2),
	datac => \inst|sis|M8C1|CountBuffer\(0),
	datad => \inst|sis|M8C1|CountBuffer\(1),
	combout => \inst|sai|ssd1|ss[5]~1_combout\);

-- Location: LCCOMB_X114_Y36_N6
\inst|sai|ssd1|ss[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[4]~2_combout\ = (\inst|sis|M8C1|CountBuffer\(0)) # ((!\inst|sis|M8C1|CountBuffer\(1) & \inst|sis|M8C1|CountBuffer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sai|ssd1|ss[4]~2_combout\);

-- Location: LCCOMB_X114_Y36_N18
\inst|sai|ssd1|ss[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[3]~3_combout\ = (\inst|sis|M8C1|CountBuffer\(0) & (\inst|sis|M8C1|CountBuffer\(1) $ (!\inst|sis|M8C1|CountBuffer\(2)))) # (!\inst|sis|M8C1|CountBuffer\(0) & (!\inst|sis|M8C1|CountBuffer\(1) & \inst|sis|M8C1|CountBuffer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sai|ssd1|ss[3]~3_combout\);

-- Location: LCCOMB_X114_Y36_N12
\inst|sai|ssd1|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|Equal14~0_combout\ = (!\inst|sis|M8C1|CountBuffer\(0) & (\inst|sis|M8C1|CountBuffer\(1) & !\inst|sis|M8C1|CountBuffer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sai|ssd1|Equal14~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\inst|sai|ssd1|ss[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[1]~4_combout\ = (\inst|sis|M8C1|CountBuffer\(2) & (\inst|sis|M8C1|CountBuffer\(0) $ (\inst|sis|M8C1|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(0),
	datab => \inst|sis|M8C1|CountBuffer\(1),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sai|ssd1|ss[1]~4_combout\);

-- Location: LCCOMB_X114_Y36_N14
\inst|sai|ssd1|ss[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sai|ssd1|ss[0]~5_combout\ = (!\inst|sis|M8C1|CountBuffer\(1) & (\inst|sis|M8C1|CountBuffer\(0) $ (\inst|sis|M8C1|CountBuffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sis|M8C1|CountBuffer\(1),
	datac => \inst|sis|M8C1|CountBuffer\(0),
	datad => \inst|sis|M8C1|CountBuffer\(2),
	combout => \inst|sai|ssd1|ss[0]~5_combout\);

ww_DataOutOut <= \DataOutOut~output_o\;

ww_testClockOut <= \testClockOut~output_o\;

ww_ss(6) <= \ss[6]~output_o\;

ww_ss(5) <= \ss[5]~output_o\;

ww_ss(4) <= \ss[4]~output_o\;

ww_ss(3) <= \ss[3]~output_o\;

ww_ss(2) <= \ss[2]~output_o\;

ww_ss(1) <= \ss[1]~output_o\;

ww_ss(0) <= \ss[0]~output_o\;
END structure;


