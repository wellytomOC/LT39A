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

-- DATE "06/13/2024 18:33:00"

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
	Clock50MHz : IN std_logic;
	reset : IN std_logic;
	InpA : IN std_logic_vector(3 DOWNTO 0);
	InpB : IN std_logic_vector(3 DOWNTO 0);
	InpA_ssU : BUFFER std_logic_vector(6 DOWNTO 0);
	InpA_ssD : BUFFER std_logic_vector(6 DOWNTO 0);
	InpB_ssU : BUFFER std_logic_vector(6 DOWNTO 0);
	InpB_ssD : BUFFER std_logic_vector(6 DOWNTO 0);
	ALUOut_ssU : BUFFER std_logic_vector(6 DOWNTO 0);
	ALUOut_ssD : BUFFER std_logic_vector(6 DOWNTO 0);
	RegPrState : BUFFER std_logic_vector(1 DOWNTO 0);
	RegNxState : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END arquitetura;

-- Design Ports Information
-- InpA_ssU[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssU[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA_ssD[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssU[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB_ssD[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssU[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut_ssD[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegPrState[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegPrState[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegNxState[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegNxState[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpA[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InpB[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock50MHz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Clock50MHz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_InpA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_InpB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_InpA_ssU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_InpA_ssD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_InpB_ssU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_InpB_ssD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ALUOut_ssU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ALUOut_ssD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RegPrState : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RegNxState : std_logic_vector(1 DOWNTO 0);
SIGNAL \Clock50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ent|CD01|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sis|FSM01|RegWrB~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sis|FSM01|RegWrA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InpA_ssU[0]~output_o\ : std_logic;
SIGNAL \InpA_ssU[1]~output_o\ : std_logic;
SIGNAL \InpA_ssU[2]~output_o\ : std_logic;
SIGNAL \InpA_ssU[3]~output_o\ : std_logic;
SIGNAL \InpA_ssU[4]~output_o\ : std_logic;
SIGNAL \InpA_ssU[5]~output_o\ : std_logic;
SIGNAL \InpA_ssU[6]~output_o\ : std_logic;
SIGNAL \InpA_ssD[0]~output_o\ : std_logic;
SIGNAL \InpA_ssD[1]~output_o\ : std_logic;
SIGNAL \InpA_ssD[2]~output_o\ : std_logic;
SIGNAL \InpA_ssD[3]~output_o\ : std_logic;
SIGNAL \InpA_ssD[4]~output_o\ : std_logic;
SIGNAL \InpA_ssD[5]~output_o\ : std_logic;
SIGNAL \InpA_ssD[6]~output_o\ : std_logic;
SIGNAL \InpB_ssU[0]~output_o\ : std_logic;
SIGNAL \InpB_ssU[1]~output_o\ : std_logic;
SIGNAL \InpB_ssU[2]~output_o\ : std_logic;
SIGNAL \InpB_ssU[3]~output_o\ : std_logic;
SIGNAL \InpB_ssU[4]~output_o\ : std_logic;
SIGNAL \InpB_ssU[5]~output_o\ : std_logic;
SIGNAL \InpB_ssU[6]~output_o\ : std_logic;
SIGNAL \InpB_ssD[0]~output_o\ : std_logic;
SIGNAL \InpB_ssD[1]~output_o\ : std_logic;
SIGNAL \InpB_ssD[2]~output_o\ : std_logic;
SIGNAL \InpB_ssD[3]~output_o\ : std_logic;
SIGNAL \InpB_ssD[4]~output_o\ : std_logic;
SIGNAL \InpB_ssD[5]~output_o\ : std_logic;
SIGNAL \InpB_ssD[6]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[0]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[1]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[2]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[3]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[4]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[5]~output_o\ : std_logic;
SIGNAL \ALUOut_ssU[6]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[0]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[1]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[2]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[3]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[4]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[5]~output_o\ : std_logic;
SIGNAL \ALUOut_ssD[6]~output_o\ : std_logic;
SIGNAL \RegPrState[0]~output_o\ : std_logic;
SIGNAL \RegPrState[1]~output_o\ : std_logic;
SIGNAL \RegNxState[0]~output_o\ : std_logic;
SIGNAL \RegNxState[1]~output_o\ : std_logic;
SIGNAL \InpA[3]~input_o\ : std_logic;
SIGNAL \InpA[2]~input_o\ : std_logic;
SIGNAL \InpA[1]~input_o\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outA|Add1~1_combout\ : std_logic;
SIGNAL \sai|outA|Add1~0_combout\ : std_logic;
SIGNAL \sai|outA|Add1~2_combout\ : std_logic;
SIGNAL \InpA[0]~input_o\ : std_logic;
SIGNAL \sai|outA|ssA0[0]~10_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[1]~11_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[1]~12_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[2]~6_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[2]~15_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[3]~17_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[3]~18_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[4]~9_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[4]~16_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[5]~13_combout\ : std_logic;
SIGNAL \sai|outA|ssA0[6]~14_combout\ : std_logic;
SIGNAL \sai|outA|Equal8~0_combout\ : std_logic;
SIGNAL \InpB[0]~input_o\ : std_logic;
SIGNAL \InpB[3]~input_o\ : std_logic;
SIGNAL \InpB[2]~input_o\ : std_logic;
SIGNAL \InpB[1]~input_o\ : std_logic;
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outB|Add1~0_combout\ : std_logic;
SIGNAL \sai|outB|Add1~1_combout\ : std_logic;
SIGNAL \sai|outB|Add1~2_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[0]~10_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[1]~11_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[1]~12_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[2]~6_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[2]~15_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[3]~17_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[3]~18_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[4]~9_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[4]~16_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[5]~13_combout\ : std_logic;
SIGNAL \sai|outB|ssA0[6]~14_combout\ : std_logic;
SIGNAL \sai|outB|Equal8~0_combout\ : std_logic;
SIGNAL \Clock50MHz~input_o\ : std_logic;
SIGNAL \Clock50MHz~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \ent|CD01|Add0~72_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~31\ : std_logic;
SIGNAL \ent|CD01|Add0~32_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~71_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~33\ : std_logic;
SIGNAL \ent|CD01|Add0~34_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~70_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~35\ : std_logic;
SIGNAL \ent|CD01|Add0~36_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~89_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~37\ : std_logic;
SIGNAL \ent|CD01|Add0~38_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~90_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~39\ : std_logic;
SIGNAL \ent|CD01|Add0~40_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~91_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~41\ : std_logic;
SIGNAL \ent|CD01|Add0~42_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~92_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~43\ : std_logic;
SIGNAL \ent|CD01|Add0~44_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~88_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~45\ : std_logic;
SIGNAL \ent|CD01|Add0~46_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~69_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~47\ : std_logic;
SIGNAL \ent|CD01|Add0~48_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~68_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~49\ : std_logic;
SIGNAL \ent|CD01|Add0~50_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~52_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~51\ : std_logic;
SIGNAL \ent|CD01|Add0~53_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~55_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~54\ : std_logic;
SIGNAL \ent|CD01|Add0~56_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~58_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~57\ : std_logic;
SIGNAL \ent|CD01|Add0~59_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~61_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~60\ : std_logic;
SIGNAL \ent|CD01|Add0~62_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~64_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~63\ : std_logic;
SIGNAL \ent|CD01|Add0~65_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~67_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~66\ : std_logic;
SIGNAL \ent|CD01|Add0~93_combout\ : std_logic;
SIGNAL \ent|CD01|Add0~95_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~0_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~1_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~8_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~2_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~3_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~4_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~5_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~6_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~7_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~9_combout\ : std_logic;
SIGNAL \ent|CD01|LessThan0~10_combout\ : std_logic;
SIGNAL \ent|CD01|tmp~0_combout\ : std_logic;
SIGNAL \ent|CD01|tmp~q\ : std_logic;
SIGNAL \ent|CD01|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \sis|m8c|CountBuffer[0]~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sis|m8c|CountBuffer[1]~1_combout\ : std_logic;
SIGNAL \sis|m8c|CountBuffer[2]~0_combout\ : std_logic;
SIGNAL \sis|FSM01|NxState[0]~0_combout\ : std_logic;
SIGNAL \sis|FSM01|PresentState.load~0_combout\ : std_logic;
SIGNAL \sis|FSM01|PresentState.load~q\ : std_logic;
SIGNAL \sis|FSM01|PresentState.store~feeder_combout\ : std_logic;
SIGNAL \sis|FSM01|PresentState.store~q\ : std_logic;
SIGNAL \sis|FSM01|Selector0~0_combout\ : std_logic;
SIGNAL \sis|FSM01|Selector0~1_combout\ : std_logic;
SIGNAL \sis|FSM01|PresentState.idle~q\ : std_logic;
SIGNAL \sis|FSM01|RegWrA~feeder_combout\ : std_logic;
SIGNAL \sis|FSM01|RegWrA~q\ : std_logic;
SIGNAL \sis|FSM01|RegWrA~clkctrl_outclk\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[0]~feeder_combout\ : std_logic;
SIGNAL \sis|FSM01|RegWrB~feeder_combout\ : std_logic;
SIGNAL \sis|FSM01|RegWrB~q\ : std_logic;
SIGNAL \sis|FSM01|RegWrB~clkctrl_outclk\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[0]~0_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[0]~3_combout\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[0]~1\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[1]~2_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[1]~2_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[1]~feeder_combout\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[1]~3\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[2]~4_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[2]~1_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[2]~feeder_combout\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[2]~5\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[3]~6_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[3]~0_combout\ : std_logic;
SIGNAL \sis|blocoOp|regA|DataOut[3]~feeder_combout\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[3]~7\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\ : std_logic;
SIGNAL \sis|blocoOp|alu1|sum01|Add0~0_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~0_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6_combout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~4_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~1_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~2_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~3_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[0]~2_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[1]~4_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[1]~5_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[1]~3_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[1]~6_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[2]~7_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~19_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~8_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~9_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~11_combout\ : std_logic;
SIGNAL \sai|outALU|Add1~5_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0~10_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~12_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[3]~13_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[4]~14_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[4]~15_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[4]~16_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[5]~17_combout\ : std_logic;
SIGNAL \sai|outALU|ssA0[6]~18_combout\ : std_logic;
SIGNAL \sai|outALU|ssA1[0]~0_combout\ : std_logic;
SIGNAL \sai|outALU|ssA1[2]~1_combout\ : std_logic;
SIGNAL \sai|outALU|Equal7~0_combout\ : std_logic;
SIGNAL \sai|outALU|ssA1[4]~2_combout\ : std_logic;
SIGNAL \sai|outALU|Equal8~0_combout\ : std_logic;
SIGNAL \sis|FSM01|RegPrState[0]~0_combout\ : std_logic;
SIGNAL \sis|FSM01|RegPrState[1]~feeder_combout\ : std_logic;
SIGNAL \sis|FSM01|Selector1~0_combout\ : std_logic;
SIGNAL \sis|FSM01|RegPrState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sis|blocoOp|regA|DataOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sis|m8c|CountBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sis|blocoOp|regB|DataOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sis|FSM01|RegALUop\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ent|CD01|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sis|FSM01|RegNxState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sai|outB|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outA|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \sai|outB|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \sai|outA|ALT_INV_Equal8~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock50MHz <= Clock50MHz;
ww_reset <= reset;
ww_InpA <= InpA;
ww_InpB <= InpB;
InpA_ssU <= ww_InpA_ssU;
InpA_ssD <= ww_InpA_ssD;
InpB_ssU <= ww_InpB_ssU;
InpB_ssD <= ww_InpB_ssD;
ALUOut_ssU <= ww_ALUOut_ssU;
ALUOut_ssD <= ww_ALUOut_ssD;
RegPrState <= ww_RegPrState;
RegNxState <= ww_RegNxState;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock50MHz~input_o\);

\ent|CD01|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ent|CD01|tmp~q\);

\sis|FSM01|RegWrB~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sis|FSM01|RegWrB~q\);

\sis|FSM01|RegWrA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sis|FSM01|RegWrA~q\);
\sai|outB|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ <= NOT \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\;
\sai|outA|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ <= NOT \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\;
\sai|outB|ALT_INV_Equal8~0_combout\ <= NOT \sai|outB|Equal8~0_combout\;
\sai|outA|ALT_INV_Equal8~0_combout\ <= NOT \sai|outA|Equal8~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y0_N23
\InpA_ssU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[0]~10_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\InpA_ssU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[1]~12_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\InpA_ssU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[2]~15_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\InpA_ssU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[3]~18_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\InpA_ssU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[4]~16_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\InpA_ssU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[5]~13_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\InpA_ssU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ssA0[6]~14_combout\,
	devoe => ww_devoe,
	o => \InpA_ssU[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\InpA_ssD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \InpA_ssD[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\InpA_ssD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InpA_ssD[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\InpA_ssD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InpA_ssD[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\InpA_ssD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ALT_INV_Equal8~0_combout\,
	devoe => ww_devoe,
	o => \InpA_ssD[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\InpA_ssD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|ALT_INV_Equal8~0_combout\,
	devoe => ww_devoe,
	o => \InpA_ssD[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\InpA_ssD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outA|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \InpA_ssD[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\InpA_ssD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \InpA_ssD[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\InpB_ssU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[0]~10_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\InpB_ssU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[1]~12_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\InpB_ssU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[2]~15_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\InpB_ssU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[3]~18_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\InpB_ssU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[4]~16_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\InpB_ssU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[5]~13_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\InpB_ssU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ssA0[6]~14_combout\,
	devoe => ww_devoe,
	o => \InpB_ssU[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\InpB_ssD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \InpB_ssD[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\InpB_ssD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InpB_ssD[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\InpB_ssD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InpB_ssD[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\InpB_ssD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ALT_INV_Equal8~0_combout\,
	devoe => ww_devoe,
	o => \InpB_ssD[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\InpB_ssD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|ALT_INV_Equal8~0_combout\,
	devoe => ww_devoe,
	o => \InpB_ssD[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\InpB_ssD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outB|Div0|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \InpB_ssD[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\InpB_ssD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \InpB_ssD[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ALUOut_ssU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[0]~2_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ALUOut_ssU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[1]~6_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ALUOut_ssU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[2]~7_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ALUOut_ssU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[3]~13_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ALUOut_ssU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[4]~16_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ALUOut_ssU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[5]~17_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ALUOut_ssU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA0[6]~18_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssU[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ALUOut_ssD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA1[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ALUOut_ssD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUOut_ssD[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\ALUOut_ssD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA1[2]~1_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ALUOut_ssD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ALUOut_ssD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|ssA1[4]~2_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\ALUOut_ssD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|Equal8~0_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\ALUOut_ssD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \ALUOut_ssD[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\RegPrState[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sis|FSM01|RegPrState\(0),
	devoe => ww_devoe,
	o => \RegPrState[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\RegPrState[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sis|FSM01|RegPrState\(1),
	devoe => ww_devoe,
	o => \RegPrState[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\RegNxState[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sis|FSM01|RegNxState\(0),
	devoe => ww_devoe,
	o => \RegNxState[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\RegNxState[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sis|FSM01|RegNxState\(1),
	devoe => ww_devoe,
	o => \RegNxState[1]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\InpA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpA(3),
	o => \InpA[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\InpA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpA(2),
	o => \InpA[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\InpA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpA(1),
	o => \InpA[1]~input_o\);

-- Location: LCCOMB_X91_Y4_N10
\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY(\InpA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpA[1]~input_o\,
	datad => VCC,
	cout => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X91_Y4_N12
\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\InpA[2]~input_o\ & !\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InpA[2]~input_o\,
	datad => VCC,
	cin => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X91_Y4_N14
\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((\InpA[3]~input_o\ & !\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InpA[3]~input_o\,
	datad => VCC,
	cin => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X91_Y4_N16
\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y4_N18
\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y4_N30
\sai|outA|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Add1~1_combout\ = \InpA[2]~input_o\ $ (((!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\InpA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|Add1~1_combout\);

-- Location: LCCOMB_X90_Y4_N0
\sai|outA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Add1~0_combout\ = \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\InpA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|Add1~0_combout\);

-- Location: LCCOMB_X90_Y4_N8
\sai|outA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Add1~2_combout\ = \InpA[3]~input_o\ $ (((!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\InpA[2]~input_o\) # (\InpA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpA[3]~input_o\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|Add1~2_combout\);

-- Location: IOIBUF_X115_Y17_N1
\InpA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpA(0),
	o => \InpA[0]~input_o\);

-- Location: LCCOMB_X90_Y4_N6
\sai|outA|ssA0[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[0]~10_combout\ = (\sai|outA|Add1~0_combout\ & (!\sai|outA|Add1~2_combout\ & (\sai|outA|Add1~1_combout\ $ (\InpA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Add1~1_combout\,
	datab => \sai|outA|Add1~0_combout\,
	datac => \sai|outA|Add1~2_combout\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[0]~10_combout\);

-- Location: LCCOMB_X90_Y4_N12
\sai|outA|ssA0[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[1]~11_combout\ = (\InpA[0]~input_o\ & (\InpA[3]~input_o\ $ (((!\InpA[1]~input_o\))))) # (!\InpA[0]~input_o\ & (!\InpA[3]~input_o\ & (\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \InpA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpA[0]~input_o\,
	datab => \InpA[3]~input_o\,
	datac => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|ssA0[1]~11_combout\);

-- Location: LCCOMB_X90_Y4_N14
\sai|outA|ssA0[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[1]~12_combout\ = (\InpA[2]~input_o\ & \sai|outA|ssA0[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InpA[2]~input_o\,
	datad => \sai|outA|ssA0[1]~11_combout\,
	combout => \sai|outA|ssA0[1]~12_combout\);

-- Location: LCCOMB_X90_Y4_N2
\sai|outA|ssA0[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[2]~6_combout\ = (\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (!\InpA[3]~input_o\ & (!\InpA[2]~input_o\ & \InpA[1]~input_o\))) # 
-- (!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpA[3]~input_o\ & (\InpA[2]~input_o\ & !\InpA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpA[3]~input_o\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|ssA0[2]~6_combout\);

-- Location: LCCOMB_X90_Y4_N24
\sai|outA|ssA0[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[2]~15_combout\ = (\sai|outA|ssA0[2]~6_combout\ & !\InpA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outA|ssA0[2]~6_combout\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[2]~15_combout\);

-- Location: LCCOMB_X90_Y4_N18
\sai|outA|ssA0[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[3]~17_combout\ = (\InpA[3]~input_o\ & ((\InpA[0]~input_o\) # (\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (!\InpA[1]~input_o\)))) # (!\InpA[3]~input_o\ & (!\InpA[1]~input_o\ & ((\InpA[0]~input_o\) # 
-- (\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpA[0]~input_o\,
	datab => \InpA[3]~input_o\,
	datac => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|ssA0[3]~17_combout\);

-- Location: LCCOMB_X90_Y4_N20
\sai|outA|ssA0[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[3]~18_combout\ = (\sai|outA|ssA0[3]~17_combout\ & (\InpA[2]~input_o\ $ (((\InpA[0]~input_o\) # (!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))) # (!\sai|outA|ssA0[3]~17_combout\ & (\InpA[2]~input_o\ & 
-- ((\InpA[0]~input_o\) # (!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \sai|outA|ssA0[3]~17_combout\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[3]~18_combout\);

-- Location: LCCOMB_X90_Y4_N26
\sai|outA|ssA0[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[4]~9_combout\ = (\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpA[2]~input_o\ & (\InpA[3]~input_o\ $ (!\InpA[1]~input_o\)))) # 
-- (!\sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpA[2]~input_o\ $ (((\InpA[3]~input_o\ & !\InpA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpA[3]~input_o\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|ssA0[4]~9_combout\);

-- Location: LCCOMB_X90_Y4_N16
\sai|outA|ssA0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[4]~16_combout\ = (\sai|outA|ssA0[4]~9_combout\) # (\InpA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outA|ssA0[4]~9_combout\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[4]~16_combout\);

-- Location: LCCOMB_X90_Y4_N4
\sai|outA|ssA0[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[5]~13_combout\ = (!\sai|outA|Add1~2_combout\ & ((\sai|outA|Add1~1_combout\ & (!\sai|outA|Add1~0_combout\ & \InpA[0]~input_o\)) # (!\sai|outA|Add1~1_combout\ & ((\InpA[0]~input_o\) # (!\sai|outA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Add1~1_combout\,
	datab => \sai|outA|Add1~0_combout\,
	datac => \sai|outA|Add1~2_combout\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[5]~13_combout\);

-- Location: LCCOMB_X90_Y4_N22
\sai|outA|ssA0[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|ssA0[6]~14_combout\ = (!\sai|outA|Add1~2_combout\ & ((\sai|outA|Add1~1_combout\ & (!\sai|outA|Add1~0_combout\ & \InpA[0]~input_o\)) # (!\sai|outA|Add1~1_combout\ & (\sai|outA|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outA|Add1~1_combout\,
	datab => \sai|outA|Add1~0_combout\,
	datac => \sai|outA|Add1~2_combout\,
	datad => \InpA[0]~input_o\,
	combout => \sai|outA|ssA0[6]~14_combout\);

-- Location: LCCOMB_X90_Y4_N28
\sai|outA|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outA|Equal8~0_combout\ = ((!\InpA[2]~input_o\ & !\InpA[1]~input_o\)) # (!\InpA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InpA[3]~input_o\,
	datac => \InpA[2]~input_o\,
	datad => \InpA[1]~input_o\,
	combout => \sai|outA|Equal8~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\InpB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpB(0),
	o => \InpB[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\InpB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpB(3),
	o => \InpB[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\InpB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpB(2),
	o => \InpB[2]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\InpB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InpB(1),
	o => \InpB[1]~input_o\);

-- Location: LCCOMB_X75_Y4_N14
\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY(\InpB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpB[1]~input_o\,
	datad => VCC,
	cout => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X75_Y4_N16
\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\InpB[2]~input_o\ & !\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InpB[2]~input_o\,
	datad => VCC,
	cin => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X75_Y4_N18
\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((\InpB[3]~input_o\ & !\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InpB[3]~input_o\,
	datad => VCC,
	cin => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X75_Y4_N20
\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X75_Y4_N22
\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X74_Y4_N16
\sai|outB|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Add1~0_combout\ = \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\InpB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \InpB[1]~input_o\,
	combout => \sai|outB|Add1~0_combout\);

-- Location: LCCOMB_X74_Y4_N22
\sai|outB|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Add1~1_combout\ = \InpB[2]~input_o\ $ (((!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\InpB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[2]~input_o\,
	combout => \sai|outB|Add1~1_combout\);

-- Location: LCCOMB_X74_Y4_N20
\sai|outB|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Add1~2_combout\ = \InpB[3]~input_o\ $ (((!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\InpB[2]~input_o\) # (\InpB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[2]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[3]~input_o\,
	combout => \sai|outB|Add1~2_combout\);

-- Location: LCCOMB_X74_Y4_N6
\sai|outB|ssA0[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[0]~10_combout\ = (\sai|outB|Add1~0_combout\ & (!\sai|outB|Add1~2_combout\ & (\InpB[0]~input_o\ $ (\sai|outB|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpB[0]~input_o\,
	datab => \sai|outB|Add1~0_combout\,
	datac => \sai|outB|Add1~1_combout\,
	datad => \sai|outB|Add1~2_combout\,
	combout => \sai|outB|ssA0[0]~10_combout\);

-- Location: LCCOMB_X74_Y4_N8
\sai|outB|ssA0[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[1]~11_combout\ = (\InpB[0]~input_o\ & ((\InpB[3]~input_o\ $ (!\InpB[1]~input_o\)))) # (!\InpB[0]~input_o\ & (\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (!\InpB[3]~input_o\ & \InpB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[3]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[0]~input_o\,
	combout => \sai|outB|ssA0[1]~11_combout\);

-- Location: LCCOMB_X74_Y4_N18
\sai|outB|ssA0[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[1]~12_combout\ = (\sai|outB|ssA0[1]~11_combout\ & \InpB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outB|ssA0[1]~11_combout\,
	datad => \InpB[2]~input_o\,
	combout => \sai|outB|ssA0[1]~12_combout\);

-- Location: LCCOMB_X74_Y4_N2
\sai|outB|ssA0[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[2]~6_combout\ = (\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (!\InpB[2]~input_o\ & (\InpB[1]~input_o\ & !\InpB[3]~input_o\))) # 
-- (!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpB[2]~input_o\ & (!\InpB[1]~input_o\ & \InpB[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[2]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[3]~input_o\,
	combout => \sai|outB|ssA0[2]~6_combout\);

-- Location: LCCOMB_X74_Y4_N0
\sai|outB|ssA0[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[2]~15_combout\ = (\sai|outB|ssA0[2]~6_combout\ & !\InpB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outB|ssA0[2]~6_combout\,
	datad => \InpB[0]~input_o\,
	combout => \sai|outB|ssA0[2]~15_combout\);

-- Location: LCCOMB_X74_Y4_N30
\sai|outB|ssA0[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[3]~17_combout\ = (\InpB[3]~input_o\ & ((\InpB[0]~input_o\) # (\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (!\InpB[1]~input_o\)))) # (!\InpB[3]~input_o\ & (!\InpB[1]~input_o\ & 
-- ((\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (\InpB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[3]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[0]~input_o\,
	combout => \sai|outB|ssA0[3]~17_combout\);

-- Location: LCCOMB_X74_Y4_N12
\sai|outB|ssA0[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[3]~18_combout\ = (\InpB[2]~input_o\ & (\sai|outB|ssA0[3]~17_combout\ $ (((\InpB[0]~input_o\) # (!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))) # (!\InpB[2]~input_o\ & (\sai|outB|ssA0[3]~17_combout\ & 
-- ((\InpB[0]~input_o\) # (!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[2]~input_o\,
	datac => \sai|outB|ssA0[3]~17_combout\,
	datad => \InpB[0]~input_o\,
	combout => \sai|outB|ssA0[3]~18_combout\);

-- Location: LCCOMB_X74_Y4_N10
\sai|outB|ssA0[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[4]~9_combout\ = (\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpB[2]~input_o\ & (\InpB[1]~input_o\ $ (!\InpB[3]~input_o\)))) # 
-- (!\sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\InpB[2]~input_o\ $ (((!\InpB[1]~input_o\ & \InpB[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \InpB[2]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[3]~input_o\,
	combout => \sai|outB|ssA0[4]~9_combout\);

-- Location: LCCOMB_X74_Y4_N28
\sai|outB|ssA0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[4]~16_combout\ = (\sai|outB|ssA0[4]~9_combout\) # (\InpB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outB|ssA0[4]~9_combout\,
	datad => \InpB[0]~input_o\,
	combout => \sai|outB|ssA0[4]~16_combout\);

-- Location: LCCOMB_X74_Y4_N24
\sai|outB|ssA0[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[5]~13_combout\ = (!\sai|outB|Add1~2_combout\ & ((\InpB[0]~input_o\ & ((!\sai|outB|Add1~1_combout\) # (!\sai|outB|Add1~0_combout\))) # (!\InpB[0]~input_o\ & (!\sai|outB|Add1~0_combout\ & !\sai|outB|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpB[0]~input_o\,
	datab => \sai|outB|Add1~0_combout\,
	datac => \sai|outB|Add1~1_combout\,
	datad => \sai|outB|Add1~2_combout\,
	combout => \sai|outB|ssA0[5]~13_combout\);

-- Location: LCCOMB_X74_Y4_N26
\sai|outB|ssA0[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|ssA0[6]~14_combout\ = (!\sai|outB|Add1~2_combout\ & ((\sai|outB|Add1~0_combout\ & ((!\sai|outB|Add1~1_combout\))) # (!\sai|outB|Add1~0_combout\ & (\InpB[0]~input_o\ & \sai|outB|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InpB[0]~input_o\,
	datab => \sai|outB|Add1~0_combout\,
	datac => \sai|outB|Add1~1_combout\,
	datad => \sai|outB|Add1~2_combout\,
	combout => \sai|outB|ssA0[6]~14_combout\);

-- Location: LCCOMB_X74_Y4_N4
\sai|outB|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outB|Equal8~0_combout\ = ((!\InpB[2]~input_o\ & !\InpB[1]~input_o\)) # (!\InpB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InpB[2]~input_o\,
	datac => \InpB[1]~input_o\,
	datad => \InpB[3]~input_o\,
	combout => \sai|outB|Equal8~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\Clock50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock50MHz,
	o => \Clock50MHz~input_o\);

-- Location: CLKCTRL_G4
\Clock50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y71_N0
\ent|CD01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~0_combout\ = \ent|CD01|count\(0) $ (GND)
-- \ent|CD01|Add0~1\ = CARRY(!\ent|CD01|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(0),
	datad => VCC,
	combout => \ent|CD01|Add0~0_combout\,
	cout => \ent|CD01|Add0~1\);

-- Location: LCCOMB_X56_Y71_N30
\ent|CD01|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~81_combout\ = (!\ent|CD01|Add0~0_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~0_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~81_combout\);

-- Location: FF_X56_Y71_N31
\ent|CD01|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(0));

-- Location: LCCOMB_X55_Y71_N2
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

-- Location: LCCOMB_X56_Y71_N20
\ent|CD01|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~78_combout\ = (\ent|CD01|Add0~2_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~2_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~78_combout\);

-- Location: FF_X56_Y71_N21
\ent|CD01|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(1));

-- Location: LCCOMB_X55_Y71_N4
\ent|CD01|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~4_combout\ = (\ent|CD01|count\(2) & (\ent|CD01|Add0~3\ $ (GND))) # (!\ent|CD01|count\(2) & (!\ent|CD01|Add0~3\ & VCC))
-- \ent|CD01|Add0~5\ = CARRY((\ent|CD01|count\(2) & !\ent|CD01|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(2),
	datad => VCC,
	cin => \ent|CD01|Add0~3\,
	combout => \ent|CD01|Add0~4_combout\,
	cout => \ent|CD01|Add0~5\);

-- Location: LCCOMB_X56_Y71_N6
\ent|CD01|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~79_combout\ = (\ent|CD01|Add0~4_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~4_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~79_combout\);

-- Location: FF_X56_Y71_N7
\ent|CD01|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(2));

-- Location: LCCOMB_X55_Y71_N6
\ent|CD01|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~6_combout\ = (\ent|CD01|count\(3) & (!\ent|CD01|Add0~5\)) # (!\ent|CD01|count\(3) & ((\ent|CD01|Add0~5\) # (GND)))
-- \ent|CD01|Add0~7\ = CARRY((!\ent|CD01|Add0~5\) # (!\ent|CD01|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(3),
	datad => VCC,
	cin => \ent|CD01|Add0~5\,
	combout => \ent|CD01|Add0~6_combout\,
	cout => \ent|CD01|Add0~7\);

-- Location: LCCOMB_X56_Y71_N0
\ent|CD01|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~80_combout\ = (\ent|CD01|Add0~6_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~6_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~80_combout\);

-- Location: FF_X56_Y71_N1
\ent|CD01|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(3));

-- Location: LCCOMB_X55_Y71_N8
\ent|CD01|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~8_combout\ = (\ent|CD01|count\(4) & (\ent|CD01|Add0~7\ $ (GND))) # (!\ent|CD01|count\(4) & (!\ent|CD01|Add0~7\ & VCC))
-- \ent|CD01|Add0~9\ = CARRY((\ent|CD01|count\(4) & !\ent|CD01|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(4),
	datad => VCC,
	cin => \ent|CD01|Add0~7\,
	combout => \ent|CD01|Add0~8_combout\,
	cout => \ent|CD01|Add0~9\);

-- Location: LCCOMB_X56_Y71_N14
\ent|CD01|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~82_combout\ = (\ent|CD01|Add0~8_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~8_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~82_combout\);

-- Location: FF_X56_Y71_N15
\ent|CD01|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(4));

-- Location: LCCOMB_X55_Y71_N10
\ent|CD01|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~10_combout\ = (\ent|CD01|count\(5) & (!\ent|CD01|Add0~9\)) # (!\ent|CD01|count\(5) & ((\ent|CD01|Add0~9\) # (GND)))
-- \ent|CD01|Add0~11\ = CARRY((!\ent|CD01|Add0~9\) # (!\ent|CD01|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(5),
	datad => VCC,
	cin => \ent|CD01|Add0~9\,
	combout => \ent|CD01|Add0~10_combout\,
	cout => \ent|CD01|Add0~11\);

-- Location: LCCOMB_X56_Y71_N16
\ent|CD01|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~83_combout\ = (\ent|CD01|Add0~10_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~10_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~83_combout\);

-- Location: FF_X56_Y71_N17
\ent|CD01|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(5));

-- Location: LCCOMB_X55_Y71_N12
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

-- Location: LCCOMB_X56_Y71_N10
\ent|CD01|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~77_combout\ = (\ent|CD01|Add0~12_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~12_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~77_combout\);

-- Location: FF_X56_Y71_N11
\ent|CD01|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(6));

-- Location: LCCOMB_X55_Y71_N14
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

-- Location: LCCOMB_X56_Y70_N12
\ent|CD01|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~84_combout\ = (\ent|CD01|Add0~14_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~14_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~84_combout\);

-- Location: FF_X56_Y70_N13
\ent|CD01|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(7));

-- Location: LCCOMB_X55_Y71_N16
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

-- Location: LCCOMB_X56_Y70_N30
\ent|CD01|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~85_combout\ = (\ent|CD01|Add0~16_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~16_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~85_combout\);

-- Location: FF_X56_Y70_N31
\ent|CD01|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(8));

-- Location: LCCOMB_X55_Y71_N18
\ent|CD01|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~18_combout\ = (\ent|CD01|count\(9) & (!\ent|CD01|Add0~17\)) # (!\ent|CD01|count\(9) & ((\ent|CD01|Add0~17\) # (GND)))
-- \ent|CD01|Add0~19\ = CARRY((!\ent|CD01|Add0~17\) # (!\ent|CD01|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(9),
	datad => VCC,
	cin => \ent|CD01|Add0~17\,
	combout => \ent|CD01|Add0~18_combout\,
	cout => \ent|CD01|Add0~19\);

-- Location: LCCOMB_X56_Y70_N8
\ent|CD01|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~86_combout\ = (\ent|CD01|Add0~18_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|Add0~18_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~86_combout\);

-- Location: FF_X56_Y70_N9
\ent|CD01|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(9));

-- Location: LCCOMB_X55_Y71_N20
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

-- Location: LCCOMB_X56_Y70_N14
\ent|CD01|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~87_combout\ = (\ent|CD01|Add0~20_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|Add0~20_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~87_combout\);

-- Location: FF_X56_Y70_N15
\ent|CD01|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(10));

-- Location: LCCOMB_X55_Y71_N22
\ent|CD01|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~22_combout\ = (\ent|CD01|count\(11) & (!\ent|CD01|Add0~21\)) # (!\ent|CD01|count\(11) & ((\ent|CD01|Add0~21\) # (GND)))
-- \ent|CD01|Add0~23\ = CARRY((!\ent|CD01|Add0~21\) # (!\ent|CD01|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(11),
	datad => VCC,
	cin => \ent|CD01|Add0~21\,
	combout => \ent|CD01|Add0~22_combout\,
	cout => \ent|CD01|Add0~23\);

-- Location: LCCOMB_X56_Y71_N18
\ent|CD01|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~73_combout\ = (\ent|CD01|Add0~22_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|Add0~22_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~73_combout\);

-- Location: FF_X56_Y71_N19
\ent|CD01|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(11));

-- Location: LCCOMB_X55_Y71_N24
\ent|CD01|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~24_combout\ = (\ent|CD01|count\(12) & (\ent|CD01|Add0~23\ $ (GND))) # (!\ent|CD01|count\(12) & (!\ent|CD01|Add0~23\ & VCC))
-- \ent|CD01|Add0~25\ = CARRY((\ent|CD01|count\(12) & !\ent|CD01|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(12),
	datad => VCC,
	cin => \ent|CD01|Add0~23\,
	combout => \ent|CD01|Add0~24_combout\,
	cout => \ent|CD01|Add0~25\);

-- Location: LCCOMB_X57_Y70_N0
\ent|CD01|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~74_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~10_combout\,
	datac => \ent|CD01|Add0~24_combout\,
	combout => \ent|CD01|Add0~74_combout\);

-- Location: FF_X57_Y70_N1
\ent|CD01|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(12));

-- Location: LCCOMB_X55_Y71_N26
\ent|CD01|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~26_combout\ = (\ent|CD01|count\(13) & (!\ent|CD01|Add0~25\)) # (!\ent|CD01|count\(13) & ((\ent|CD01|Add0~25\) # (GND)))
-- \ent|CD01|Add0~27\ = CARRY((!\ent|CD01|Add0~25\) # (!\ent|CD01|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(13),
	datad => VCC,
	cin => \ent|CD01|Add0~25\,
	combout => \ent|CD01|Add0~26_combout\,
	cout => \ent|CD01|Add0~27\);

-- Location: LCCOMB_X56_Y71_N4
\ent|CD01|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~75_combout\ = (\ent|CD01|Add0~26_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~26_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~75_combout\);

-- Location: FF_X56_Y71_N5
\ent|CD01|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(13));

-- Location: LCCOMB_X55_Y71_N28
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

-- Location: LCCOMB_X56_Y71_N26
\ent|CD01|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~76_combout\ = (\ent|CD01|Add0~28_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|Add0~28_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~76_combout\);

-- Location: FF_X56_Y71_N27
\ent|CD01|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(14));

-- Location: LCCOMB_X55_Y71_N30
\ent|CD01|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~30_combout\ = (\ent|CD01|count\(15) & (!\ent|CD01|Add0~29\)) # (!\ent|CD01|count\(15) & ((\ent|CD01|Add0~29\) # (GND)))
-- \ent|CD01|Add0~31\ = CARRY((!\ent|CD01|Add0~29\) # (!\ent|CD01|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(15),
	datad => VCC,
	cin => \ent|CD01|Add0~29\,
	combout => \ent|CD01|Add0~30_combout\,
	cout => \ent|CD01|Add0~31\);

-- Location: LCCOMB_X56_Y71_N28
\ent|CD01|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~72_combout\ = (\ent|CD01|Add0~30_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~30_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~72_combout\);

-- Location: FF_X56_Y71_N29
\ent|CD01|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(15));

-- Location: LCCOMB_X55_Y70_N0
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

-- Location: LCCOMB_X57_Y70_N26
\ent|CD01|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~71_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~32_combout\,
	combout => \ent|CD01|Add0~71_combout\);

-- Location: FF_X57_Y70_N27
\ent|CD01|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(16));

-- Location: LCCOMB_X55_Y70_N2
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

-- Location: LCCOMB_X57_Y70_N4
\ent|CD01|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~70_combout\ = (\ent|CD01|Add0~34_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~34_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~70_combout\);

-- Location: FF_X57_Y70_N5
\ent|CD01|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(17));

-- Location: LCCOMB_X55_Y70_N4
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

-- Location: LCCOMB_X57_Y70_N30
\ent|CD01|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~89_combout\ = (\ent|CD01|Add0~36_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~36_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~89_combout\);

-- Location: FF_X57_Y70_N31
\ent|CD01|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(18));

-- Location: LCCOMB_X55_Y70_N6
\ent|CD01|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~38_combout\ = (\ent|CD01|count\(19) & (!\ent|CD01|Add0~37\)) # (!\ent|CD01|count\(19) & ((\ent|CD01|Add0~37\) # (GND)))
-- \ent|CD01|Add0~39\ = CARRY((!\ent|CD01|Add0~37\) # (!\ent|CD01|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(19),
	datad => VCC,
	cin => \ent|CD01|Add0~37\,
	combout => \ent|CD01|Add0~38_combout\,
	cout => \ent|CD01|Add0~39\);

-- Location: LCCOMB_X57_Y70_N14
\ent|CD01|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~90_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~38_combout\,
	combout => \ent|CD01|Add0~90_combout\);

-- Location: FF_X57_Y70_N15
\ent|CD01|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(19));

-- Location: LCCOMB_X55_Y70_N8
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

-- Location: LCCOMB_X57_Y70_N22
\ent|CD01|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~91_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~10_combout\,
	datac => \ent|CD01|Add0~40_combout\,
	combout => \ent|CD01|Add0~91_combout\);

-- Location: FF_X57_Y70_N23
\ent|CD01|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(20));

-- Location: LCCOMB_X55_Y70_N10
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

-- Location: LCCOMB_X57_Y70_N20
\ent|CD01|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~92_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~42_combout\,
	combout => \ent|CD01|Add0~92_combout\);

-- Location: FF_X57_Y70_N21
\ent|CD01|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(21));

-- Location: LCCOMB_X55_Y70_N12
\ent|CD01|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~44_combout\ = (\ent|CD01|count\(22) & (\ent|CD01|Add0~43\ $ (GND))) # (!\ent|CD01|count\(22) & (!\ent|CD01|Add0~43\ & VCC))
-- \ent|CD01|Add0~45\ = CARRY((\ent|CD01|count\(22) & !\ent|CD01|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(22),
	datad => VCC,
	cin => \ent|CD01|Add0~43\,
	combout => \ent|CD01|Add0~44_combout\,
	cout => \ent|CD01|Add0~45\);

-- Location: LCCOMB_X57_Y70_N18
\ent|CD01|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~88_combout\ = (\ent|CD01|Add0~44_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|Add0~44_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~88_combout\);

-- Location: FF_X57_Y70_N19
\ent|CD01|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(22));

-- Location: LCCOMB_X55_Y70_N14
\ent|CD01|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~46_combout\ = (\ent|CD01|count\(23) & (!\ent|CD01|Add0~45\)) # (!\ent|CD01|count\(23) & ((\ent|CD01|Add0~45\) # (GND)))
-- \ent|CD01|Add0~47\ = CARRY((!\ent|CD01|Add0~45\) # (!\ent|CD01|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(23),
	datad => VCC,
	cin => \ent|CD01|Add0~45\,
	combout => \ent|CD01|Add0~46_combout\,
	cout => \ent|CD01|Add0~47\);

-- Location: LCCOMB_X57_Y70_N28
\ent|CD01|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~69_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~10_combout\,
	datac => \ent|CD01|Add0~46_combout\,
	combout => \ent|CD01|Add0~69_combout\);

-- Location: FF_X57_Y70_N29
\ent|CD01|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(23));

-- Location: LCCOMB_X55_Y70_N16
\ent|CD01|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~48_combout\ = (\ent|CD01|count\(24) & (\ent|CD01|Add0~47\ $ (GND))) # (!\ent|CD01|count\(24) & (!\ent|CD01|Add0~47\ & VCC))
-- \ent|CD01|Add0~49\ = CARRY((\ent|CD01|count\(24) & !\ent|CD01|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(24),
	datad => VCC,
	cin => \ent|CD01|Add0~47\,
	combout => \ent|CD01|Add0~48_combout\,
	cout => \ent|CD01|Add0~49\);

-- Location: LCCOMB_X57_Y70_N2
\ent|CD01|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~68_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|LessThan0~10_combout\,
	datac => \ent|CD01|Add0~48_combout\,
	combout => \ent|CD01|Add0~68_combout\);

-- Location: FF_X57_Y70_N3
\ent|CD01|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(24));

-- Location: LCCOMB_X55_Y70_N18
\ent|CD01|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~50_combout\ = (\ent|CD01|count\(25) & (!\ent|CD01|Add0~49\)) # (!\ent|CD01|count\(25) & ((\ent|CD01|Add0~49\) # (GND)))
-- \ent|CD01|Add0~51\ = CARRY((!\ent|CD01|Add0~49\) # (!\ent|CD01|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(25),
	datad => VCC,
	cin => \ent|CD01|Add0~49\,
	combout => \ent|CD01|Add0~50_combout\,
	cout => \ent|CD01|Add0~51\);

-- Location: LCCOMB_X56_Y70_N28
\ent|CD01|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~52_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~50_combout\,
	combout => \ent|CD01|Add0~52_combout\);

-- Location: FF_X56_Y70_N29
\ent|CD01|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(25));

-- Location: LCCOMB_X55_Y70_N20
\ent|CD01|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~53_combout\ = (\ent|CD01|count\(26) & (\ent|CD01|Add0~51\ $ (GND))) # (!\ent|CD01|count\(26) & (!\ent|CD01|Add0~51\ & VCC))
-- \ent|CD01|Add0~54\ = CARRY((\ent|CD01|count\(26) & !\ent|CD01|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(26),
	datad => VCC,
	cin => \ent|CD01|Add0~51\,
	combout => \ent|CD01|Add0~53_combout\,
	cout => \ent|CD01|Add0~54\);

-- Location: LCCOMB_X56_Y70_N22
\ent|CD01|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~55_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~53_combout\,
	combout => \ent|CD01|Add0~55_combout\);

-- Location: FF_X56_Y70_N23
\ent|CD01|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(26));

-- Location: LCCOMB_X55_Y70_N22
\ent|CD01|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~56_combout\ = (\ent|CD01|count\(27) & (!\ent|CD01|Add0~54\)) # (!\ent|CD01|count\(27) & ((\ent|CD01|Add0~54\) # (GND)))
-- \ent|CD01|Add0~57\ = CARRY((!\ent|CD01|Add0~54\) # (!\ent|CD01|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(27),
	datad => VCC,
	cin => \ent|CD01|Add0~54\,
	combout => \ent|CD01|Add0~56_combout\,
	cout => \ent|CD01|Add0~57\);

-- Location: LCCOMB_X56_Y70_N24
\ent|CD01|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~58_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~56_combout\,
	combout => \ent|CD01|Add0~58_combout\);

-- Location: FF_X56_Y70_N25
\ent|CD01|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(27));

-- Location: LCCOMB_X55_Y70_N24
\ent|CD01|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~59_combout\ = (\ent|CD01|count\(28) & (\ent|CD01|Add0~57\ $ (GND))) # (!\ent|CD01|count\(28) & (!\ent|CD01|Add0~57\ & VCC))
-- \ent|CD01|Add0~60\ = CARRY((\ent|CD01|count\(28) & !\ent|CD01|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(28),
	datad => VCC,
	cin => \ent|CD01|Add0~57\,
	combout => \ent|CD01|Add0~59_combout\,
	cout => \ent|CD01|Add0~60\);

-- Location: LCCOMB_X56_Y70_N18
\ent|CD01|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~61_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~59_combout\,
	combout => \ent|CD01|Add0~61_combout\);

-- Location: FF_X56_Y70_N19
\ent|CD01|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(28));

-- Location: LCCOMB_X55_Y70_N26
\ent|CD01|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~62_combout\ = (\ent|CD01|count\(29) & (!\ent|CD01|Add0~60\)) # (!\ent|CD01|count\(29) & ((\ent|CD01|Add0~60\) # (GND)))
-- \ent|CD01|Add0~63\ = CARRY((!\ent|CD01|Add0~60\) # (!\ent|CD01|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(29),
	datad => VCC,
	cin => \ent|CD01|Add0~60\,
	combout => \ent|CD01|Add0~62_combout\,
	cout => \ent|CD01|Add0~63\);

-- Location: LCCOMB_X56_Y70_N10
\ent|CD01|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~64_combout\ = (\ent|CD01|Add0~62_combout\ & !\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|Add0~62_combout\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|Add0~64_combout\);

-- Location: FF_X56_Y70_N11
\ent|CD01|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(29));

-- Location: LCCOMB_X55_Y70_N28
\ent|CD01|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~65_combout\ = (\ent|CD01|count\(30) & (\ent|CD01|Add0~63\ $ (GND))) # (!\ent|CD01|count\(30) & (!\ent|CD01|Add0~63\ & VCC))
-- \ent|CD01|Add0~66\ = CARRY((\ent|CD01|count\(30) & !\ent|CD01|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(30),
	datad => VCC,
	cin => \ent|CD01|Add0~63\,
	combout => \ent|CD01|Add0~65_combout\,
	cout => \ent|CD01|Add0~66\);

-- Location: LCCOMB_X56_Y70_N16
\ent|CD01|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~67_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~65_combout\,
	combout => \ent|CD01|Add0~67_combout\);

-- Location: FF_X56_Y70_N17
\ent|CD01|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(30));

-- Location: LCCOMB_X55_Y70_N30
\ent|CD01|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~93_combout\ = \ent|CD01|Add0~66\ $ (\ent|CD01|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ent|CD01|count\(31),
	cin => \ent|CD01|Add0~66\,
	combout => \ent|CD01|Add0~93_combout\);

-- Location: LCCOMB_X57_Y70_N6
\ent|CD01|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|Add0~95_combout\ = (!\ent|CD01|LessThan0~10_combout\ & \ent|CD01|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|LessThan0~10_combout\,
	datad => \ent|CD01|Add0~93_combout\,
	combout => \ent|CD01|Add0~95_combout\);

-- Location: FF_X57_Y70_N7
\ent|CD01|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	d => \ent|CD01|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|count\(31));

-- Location: LCCOMB_X56_Y70_N20
\ent|CD01|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~0_combout\ = (\ent|CD01|count\(26)) # ((\ent|CD01|count\(28)) # ((\ent|CD01|count\(25)) # (\ent|CD01|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(26),
	datab => \ent|CD01|count\(28),
	datac => \ent|CD01|count\(25),
	datad => \ent|CD01|count\(27),
	combout => \ent|CD01|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y70_N26
\ent|CD01|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~1_combout\ = (\ent|CD01|count\(30)) # ((\ent|CD01|count\(29)) # (\ent|CD01|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent|CD01|count\(30),
	datac => \ent|CD01|count\(29),
	datad => \ent|CD01|LessThan0~0_combout\,
	combout => \ent|CD01|LessThan0~1_combout\);

-- Location: LCCOMB_X57_Y70_N8
\ent|CD01|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~8_combout\ = (\ent|CD01|count\(20) & (\ent|CD01|count\(21) & (\ent|CD01|count\(19) & \ent|CD01|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(20),
	datab => \ent|CD01|count\(21),
	datac => \ent|CD01|count\(19),
	datad => \ent|CD01|count\(18),
	combout => \ent|CD01|LessThan0~8_combout\);

-- Location: LCCOMB_X56_Y71_N8
\ent|CD01|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~2_combout\ = (\ent|CD01|count\(14) & (\ent|CD01|count\(11) & (\ent|CD01|count\(13) & \ent|CD01|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(14),
	datab => \ent|CD01|count\(11),
	datac => \ent|CD01|count\(13),
	datad => \ent|CD01|count\(12),
	combout => \ent|CD01|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y71_N24
\ent|CD01|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~3_combout\ = (\ent|CD01|count\(2)) # ((\ent|CD01|count\(1)) # ((\ent|CD01|count\(3)) # (!\ent|CD01|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(2),
	datab => \ent|CD01|count\(1),
	datac => \ent|CD01|count\(0),
	datad => \ent|CD01|count\(3),
	combout => \ent|CD01|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y71_N22
\ent|CD01|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~4_combout\ = (\ent|CD01|count\(6) & ((\ent|CD01|count\(5)) # ((\ent|CD01|count\(4)) # (\ent|CD01|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(6),
	datab => \ent|CD01|count\(5),
	datac => \ent|CD01|count\(4),
	datad => \ent|CD01|LessThan0~3_combout\,
	combout => \ent|CD01|LessThan0~4_combout\);

-- Location: LCCOMB_X56_Y70_N0
\ent|CD01|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~5_combout\ = (\ent|CD01|count\(10)) # ((\ent|CD01|count\(9)) # ((\ent|CD01|count\(8)) # (\ent|CD01|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(10),
	datab => \ent|CD01|count\(9),
	datac => \ent|CD01|count\(8),
	datad => \ent|CD01|count\(7),
	combout => \ent|CD01|LessThan0~5_combout\);

-- Location: LCCOMB_X56_Y71_N12
\ent|CD01|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~6_combout\ = (\ent|CD01|count\(15)) # ((\ent|CD01|LessThan0~2_combout\ & ((\ent|CD01|LessThan0~4_combout\) # (\ent|CD01|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(15),
	datab => \ent|CD01|LessThan0~2_combout\,
	datac => \ent|CD01|LessThan0~4_combout\,
	datad => \ent|CD01|LessThan0~5_combout\,
	combout => \ent|CD01|LessThan0~6_combout\);

-- Location: LCCOMB_X57_Y70_N24
\ent|CD01|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~7_combout\ = (\ent|CD01|count\(17)) # ((\ent|CD01|count\(16) & \ent|CD01|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(16),
	datab => \ent|CD01|count\(17),
	datad => \ent|CD01|LessThan0~6_combout\,
	combout => \ent|CD01|LessThan0~7_combout\);

-- Location: LCCOMB_X57_Y70_N10
\ent|CD01|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~9_combout\ = (\ent|CD01|count\(23)) # ((\ent|CD01|count\(22) & (\ent|CD01|LessThan0~8_combout\ & \ent|CD01|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(22),
	datab => \ent|CD01|count\(23),
	datac => \ent|CD01|LessThan0~8_combout\,
	datad => \ent|CD01|LessThan0~7_combout\,
	combout => \ent|CD01|LessThan0~9_combout\);

-- Location: LCCOMB_X57_Y70_N16
\ent|CD01|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|LessThan0~10_combout\ = (!\ent|CD01|count\(31) & ((\ent|CD01|LessThan0~1_combout\) # ((\ent|CD01|count\(24) & \ent|CD01|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent|CD01|count\(31),
	datab => \ent|CD01|count\(24),
	datac => \ent|CD01|LessThan0~1_combout\,
	datad => \ent|CD01|LessThan0~9_combout\,
	combout => \ent|CD01|LessThan0~10_combout\);

-- Location: LCCOMB_X57_Y70_N12
\ent|CD01|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ent|CD01|tmp~0_combout\ = \ent|CD01|tmp~q\ $ (\ent|CD01|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent|CD01|tmp~q\,
	datad => \ent|CD01|LessThan0~10_combout\,
	combout => \ent|CD01|tmp~0_combout\);

-- Location: FF_X57_Y70_N25
\ent|CD01|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock50MHz~inputclkctrl_outclk\,
	asdata => \ent|CD01|tmp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ent|CD01|tmp~q\);

-- Location: CLKCTRL_G10
\ent|CD01|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ent|CD01|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ent|CD01|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y32_N22
\sis|m8c|CountBuffer[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|m8c|CountBuffer[0]~2_combout\ = !\sis|m8c|CountBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sis|m8c|CountBuffer\(0),
	combout => \sis|m8c|CountBuffer[0]~2_combout\);

-- Location: IOIBUF_X115_Y4_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y32_N23
\sis|m8c|CountBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|m8c|CountBuffer[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|m8c|CountBuffer\(0));

-- Location: LCCOMB_X114_Y32_N24
\sis|m8c|CountBuffer[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|m8c|CountBuffer[1]~1_combout\ = \sis|m8c|CountBuffer\(1) $ (\sis|m8c|CountBuffer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sis|m8c|CountBuffer\(1),
	datad => \sis|m8c|CountBuffer\(0),
	combout => \sis|m8c|CountBuffer[1]~1_combout\);

-- Location: FF_X114_Y32_N25
\sis|m8c|CountBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|m8c|CountBuffer[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|m8c|CountBuffer\(1));

-- Location: LCCOMB_X114_Y32_N30
\sis|m8c|CountBuffer[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|m8c|CountBuffer[2]~0_combout\ = \sis|m8c|CountBuffer\(2) $ (((\sis|m8c|CountBuffer\(0) & \sis|m8c|CountBuffer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|m8c|CountBuffer\(0),
	datac => \sis|m8c|CountBuffer\(2),
	datad => \sis|m8c|CountBuffer\(1),
	combout => \sis|m8c|CountBuffer[2]~0_combout\);

-- Location: FF_X114_Y32_N31
\sis|m8c|CountBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|m8c|CountBuffer[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|m8c|CountBuffer\(2));

-- Location: LCCOMB_X114_Y32_N12
\sis|FSM01|NxState[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|NxState[0]~0_combout\ = (((\sis|FSM01|PresentState.idle~q\) # (!\sis|m8c|CountBuffer\(2))) # (!\sis|m8c|CountBuffer\(1))) # (!\sis|m8c|CountBuffer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|m8c|CountBuffer\(0),
	datab => \sis|m8c|CountBuffer\(1),
	datac => \sis|m8c|CountBuffer\(2),
	datad => \sis|FSM01|PresentState.idle~q\,
	combout => \sis|FSM01|NxState[0]~0_combout\);

-- Location: LCCOMB_X114_Y32_N18
\sis|FSM01|PresentState.load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|PresentState.load~0_combout\ = !\sis|FSM01|NxState[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|NxState[0]~0_combout\,
	combout => \sis|FSM01|PresentState.load~0_combout\);

-- Location: FF_X114_Y32_N19
\sis|FSM01|PresentState.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|PresentState.load~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|PresentState.load~q\);

-- Location: LCCOMB_X113_Y32_N12
\sis|FSM01|PresentState.store~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|PresentState.store~feeder_combout\ = \sis|FSM01|PresentState.load~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|PresentState.load~q\,
	combout => \sis|FSM01|PresentState.store~feeder_combout\);

-- Location: FF_X113_Y32_N13
\sis|FSM01|PresentState.store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|PresentState.store~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|PresentState.store~q\);

-- Location: LCCOMB_X114_Y32_N20
\sis|FSM01|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|Selector0~0_combout\ = (!\sis|FSM01|PresentState.idle~q\ & (((!\sis|m8c|CountBuffer\(0)) # (!\sis|m8c|CountBuffer\(1))) # (!\sis|m8c|CountBuffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|m8c|CountBuffer\(2),
	datab => \sis|m8c|CountBuffer\(1),
	datac => \sis|m8c|CountBuffer\(0),
	datad => \sis|FSM01|PresentState.idle~q\,
	combout => \sis|FSM01|Selector0~0_combout\);

-- Location: LCCOMB_X114_Y32_N28
\sis|FSM01|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|Selector0~1_combout\ = (!\sis|FSM01|PresentState.store~q\ & !\sis|FSM01|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sis|FSM01|PresentState.store~q\,
	datad => \sis|FSM01|Selector0~0_combout\,
	combout => \sis|FSM01|Selector0~1_combout\);

-- Location: FF_X114_Y32_N29
\sis|FSM01|PresentState.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|PresentState.idle~q\);

-- Location: LCCOMB_X114_Y32_N16
\sis|FSM01|RegWrA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|RegWrA~feeder_combout\ = \sis|FSM01|PresentState.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|PresentState.idle~q\,
	combout => \sis|FSM01|RegWrA~feeder_combout\);

-- Location: FF_X114_Y32_N17
\sis|FSM01|RegWrA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|RegWrA~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegWrA~q\);

-- Location: CLKCTRL_G9
\sis|FSM01|RegWrA~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sis|FSM01|RegWrA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sis|FSM01|RegWrA~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y32_N2
\sis|blocoOp|regA|DataOut[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[0]~feeder_combout\ = \sis|blocoOp|regA|DataOut[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	combout => \sis|blocoOp|regA|DataOut[0]~feeder_combout\);

-- Location: FF_X113_Y32_N3
\sis|blocoOp|regA|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrA~clkctrl_outclk\,
	d => \sis|blocoOp|regA|DataOut[0]~feeder_combout\,
	asdata => \InpA[0]~input_o\,
	clrn => \reset~input_o\,
	sload => \sis|FSM01|PresentState.store~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regA|DataOut\(0));

-- Location: LCCOMB_X114_Y32_N0
\sis|FSM01|RegWrB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|RegWrB~feeder_combout\ = \sis|FSM01|PresentState.load~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|PresentState.load~q\,
	combout => \sis|FSM01|RegWrB~feeder_combout\);

-- Location: FF_X114_Y32_N1
\sis|FSM01|RegWrB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|RegWrB~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegWrB~q\);

-- Location: CLKCTRL_G8
\sis|FSM01|RegWrB~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sis|FSM01|RegWrB~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sis|FSM01|RegWrB~clkctrl_outclk\);

-- Location: FF_X112_Y32_N5
\sis|blocoOp|regB|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrB~clkctrl_outclk\,
	asdata => \InpB[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regB|DataOut\(0));

-- Location: LCCOMB_X112_Y32_N4
\sis|blocoOp|alu1|sum01|Sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Sum[0]~0_combout\ = (\sis|blocoOp|regA|DataOut\(0) & (\sis|blocoOp|regB|DataOut\(0) $ (VCC))) # (!\sis|blocoOp|regA|DataOut\(0) & (\sis|blocoOp|regB|DataOut\(0) & VCC))
-- \sis|blocoOp|alu1|sum01|Sum[0]~1\ = CARRY((\sis|blocoOp|regA|DataOut\(0) & \sis|blocoOp|regB|DataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut\(0),
	datab => \sis|blocoOp|regB|DataOut\(0),
	datad => VCC,
	combout => \sis|blocoOp|alu1|sum01|Sum[0]~0_combout\,
	cout => \sis|blocoOp|alu1|sum01|Sum[0]~1\);

-- Location: FF_X112_Y32_N19
\sis|FSM01|RegALUop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	asdata => \sis|FSM01|PresentState.store~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegALUop\(1));

-- Location: LCCOMB_X112_Y32_N24
\sis|blocoOp|regA|DataOut[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[0]~3_combout\ = (\sis|FSM01|RegALUop\(1) & ((\sis|blocoOp|alu1|sum01|Sum[0]~0_combout\))) # (!\sis|FSM01|RegALUop\(1) & (\sis|blocoOp|regA|DataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut\(0),
	datac => \sis|blocoOp|alu1|sum01|Sum[0]~0_combout\,
	datad => \sis|FSM01|RegALUop\(1),
	combout => \sis|blocoOp|regA|DataOut[0]~3_combout\);

-- Location: FF_X112_Y32_N11
\sis|blocoOp|regB|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrB~clkctrl_outclk\,
	asdata => \InpB[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regB|DataOut\(3));

-- Location: FF_X112_Y32_N9
\sis|blocoOp|regB|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrB~clkctrl_outclk\,
	asdata => \InpB[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regB|DataOut\(2));

-- Location: FF_X112_Y32_N7
\sis|blocoOp|regB|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrB~clkctrl_outclk\,
	asdata => \InpB[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regB|DataOut\(1));

-- Location: LCCOMB_X112_Y32_N6
\sis|blocoOp|alu1|sum01|Sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Sum[1]~2_combout\ = (\sis|blocoOp|regB|DataOut\(1) & ((\sis|blocoOp|regA|DataOut\(1) & (\sis|blocoOp|alu1|sum01|Sum[0]~1\ & VCC)) # (!\sis|blocoOp|regA|DataOut\(1) & (!\sis|blocoOp|alu1|sum01|Sum[0]~1\)))) # 
-- (!\sis|blocoOp|regB|DataOut\(1) & ((\sis|blocoOp|regA|DataOut\(1) & (!\sis|blocoOp|alu1|sum01|Sum[0]~1\)) # (!\sis|blocoOp|regA|DataOut\(1) & ((\sis|blocoOp|alu1|sum01|Sum[0]~1\) # (GND)))))
-- \sis|blocoOp|alu1|sum01|Sum[1]~3\ = CARRY((\sis|blocoOp|regB|DataOut\(1) & (!\sis|blocoOp|regA|DataOut\(1) & !\sis|blocoOp|alu1|sum01|Sum[0]~1\)) # (!\sis|blocoOp|regB|DataOut\(1) & ((!\sis|blocoOp|alu1|sum01|Sum[0]~1\) # 
-- (!\sis|blocoOp|regA|DataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regB|DataOut\(1),
	datab => \sis|blocoOp|regA|DataOut\(1),
	datad => VCC,
	cin => \sis|blocoOp|alu1|sum01|Sum[0]~1\,
	combout => \sis|blocoOp|alu1|sum01|Sum[1]~2_combout\,
	cout => \sis|blocoOp|alu1|sum01|Sum[1]~3\);

-- Location: LCCOMB_X112_Y32_N30
\sis|blocoOp|regA|DataOut[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[1]~2_combout\ = (\sis|FSM01|RegALUop\(1) & ((\sis|blocoOp|alu1|sum01|Sum[1]~2_combout\))) # (!\sis|FSM01|RegALUop\(1) & (\sis|blocoOp|regA|DataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|blocoOp|regA|DataOut\(1),
	datac => \sis|blocoOp|alu1|sum01|Sum[1]~2_combout\,
	datad => \sis|FSM01|RegALUop\(1),
	combout => \sis|blocoOp|regA|DataOut[1]~2_combout\);

-- Location: LCCOMB_X113_Y32_N8
\sis|blocoOp|regA|DataOut[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[1]~feeder_combout\ = \sis|blocoOp|regA|DataOut[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	combout => \sis|blocoOp|regA|DataOut[1]~feeder_combout\);

-- Location: FF_X113_Y32_N9
\sis|blocoOp|regA|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrA~clkctrl_outclk\,
	d => \sis|blocoOp|regA|DataOut[1]~feeder_combout\,
	asdata => \InpA[1]~input_o\,
	clrn => \reset~input_o\,
	sload => \sis|FSM01|PresentState.store~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regA|DataOut\(1));

-- Location: LCCOMB_X112_Y32_N8
\sis|blocoOp|alu1|sum01|Sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Sum[2]~4_combout\ = ((\sis|blocoOp|regA|DataOut\(2) $ (\sis|blocoOp|regB|DataOut\(2) $ (!\sis|blocoOp|alu1|sum01|Sum[1]~3\)))) # (GND)
-- \sis|blocoOp|alu1|sum01|Sum[2]~5\ = CARRY((\sis|blocoOp|regA|DataOut\(2) & ((\sis|blocoOp|regB|DataOut\(2)) # (!\sis|blocoOp|alu1|sum01|Sum[1]~3\))) # (!\sis|blocoOp|regA|DataOut\(2) & (\sis|blocoOp|regB|DataOut\(2) & !\sis|blocoOp|alu1|sum01|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut\(2),
	datab => \sis|blocoOp|regB|DataOut\(2),
	datad => VCC,
	cin => \sis|blocoOp|alu1|sum01|Sum[1]~3\,
	combout => \sis|blocoOp|alu1|sum01|Sum[2]~4_combout\,
	cout => \sis|blocoOp|alu1|sum01|Sum[2]~5\);

-- Location: LCCOMB_X112_Y32_N14
\sis|blocoOp|regA|DataOut[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[2]~1_combout\ = (\sis|FSM01|RegALUop\(1) & ((\sis|blocoOp|alu1|sum01|Sum[2]~4_combout\))) # (!\sis|FSM01|RegALUop\(1) & (\sis|blocoOp|regA|DataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|FSM01|RegALUop\(1),
	datac => \sis|blocoOp|regA|DataOut\(2),
	datad => \sis|blocoOp|alu1|sum01|Sum[2]~4_combout\,
	combout => \sis|blocoOp|regA|DataOut[2]~1_combout\);

-- Location: LCCOMB_X113_Y32_N26
\sis|blocoOp|regA|DataOut[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[2]~feeder_combout\ = \sis|blocoOp|regA|DataOut[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sis|blocoOp|regA|DataOut[2]~feeder_combout\);

-- Location: FF_X113_Y32_N27
\sis|blocoOp|regA|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrA~clkctrl_outclk\,
	d => \sis|blocoOp|regA|DataOut[2]~feeder_combout\,
	asdata => \InpA[2]~input_o\,
	clrn => \reset~input_o\,
	sload => \sis|FSM01|PresentState.store~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regA|DataOut\(2));

-- Location: LCCOMB_X112_Y32_N10
\sis|blocoOp|alu1|sum01|Sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Sum[3]~6_combout\ = (\sis|blocoOp|regA|DataOut\(3) & ((\sis|blocoOp|regB|DataOut\(3) & (\sis|blocoOp|alu1|sum01|Sum[2]~5\ & VCC)) # (!\sis|blocoOp|regB|DataOut\(3) & (!\sis|blocoOp|alu1|sum01|Sum[2]~5\)))) # 
-- (!\sis|blocoOp|regA|DataOut\(3) & ((\sis|blocoOp|regB|DataOut\(3) & (!\sis|blocoOp|alu1|sum01|Sum[2]~5\)) # (!\sis|blocoOp|regB|DataOut\(3) & ((\sis|blocoOp|alu1|sum01|Sum[2]~5\) # (GND)))))
-- \sis|blocoOp|alu1|sum01|Sum[3]~7\ = CARRY((\sis|blocoOp|regA|DataOut\(3) & (!\sis|blocoOp|regB|DataOut\(3) & !\sis|blocoOp|alu1|sum01|Sum[2]~5\)) # (!\sis|blocoOp|regA|DataOut\(3) & ((!\sis|blocoOp|alu1|sum01|Sum[2]~5\) # 
-- (!\sis|blocoOp|regB|DataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut\(3),
	datab => \sis|blocoOp|regB|DataOut\(3),
	datad => VCC,
	cin => \sis|blocoOp|alu1|sum01|Sum[2]~5\,
	combout => \sis|blocoOp|alu1|sum01|Sum[3]~6_combout\,
	cout => \sis|blocoOp|alu1|sum01|Sum[3]~7\);

-- Location: LCCOMB_X112_Y32_N20
\sis|blocoOp|regA|DataOut[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[3]~0_combout\ = (\sis|FSM01|RegALUop\(1) & ((\sis|blocoOp|alu1|sum01|Sum[3]~6_combout\))) # (!\sis|FSM01|RegALUop\(1) & (\sis|blocoOp|regA|DataOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|FSM01|RegALUop\(1),
	datac => \sis|blocoOp|regA|DataOut\(3),
	datad => \sis|blocoOp|alu1|sum01|Sum[3]~6_combout\,
	combout => \sis|blocoOp|regA|DataOut[3]~0_combout\);

-- Location: LCCOMB_X113_Y32_N20
\sis|blocoOp|regA|DataOut[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|regA|DataOut[3]~feeder_combout\ = \sis|blocoOp|regA|DataOut[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sis|blocoOp|regA|DataOut[3]~feeder_combout\);

-- Location: FF_X113_Y32_N21
\sis|blocoOp|regA|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sis|FSM01|RegWrA~clkctrl_outclk\,
	d => \sis|blocoOp|regA|DataOut[3]~feeder_combout\,
	asdata => \InpA[3]~input_o\,
	clrn => \reset~input_o\,
	sload => \sis|FSM01|PresentState.store~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|blocoOp|regA|DataOut\(3));

-- Location: LCCOMB_X112_Y32_N12
\sis|blocoOp|alu1|sum01|Sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\ = !\sis|blocoOp|alu1|sum01|Sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sis|blocoOp|alu1|sum01|Sum[3]~7\,
	combout => \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\);

-- Location: LCCOMB_X112_Y32_N28
\sis|blocoOp|alu1|sum01|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|blocoOp|alu1|sum01|Add0~0_combout\ = (\sis|FSM01|RegALUop\(1) & \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|FSM01|RegALUop\(1),
	datad => \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\,
	combout => \sis|blocoOp|alu1|sum01|Add0~0_combout\);

-- Location: LCCOMB_X113_Y29_N14
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = \sis|blocoOp|regA|DataOut[2]~1_combout\ $ (VCC)
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY(\sis|blocoOp|regA|DataOut[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datad => VCC,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X113_Y29_N16
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\sis|blocoOp|regA|DataOut[3]~0_combout\ & (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & VCC)) # (!\sis|blocoOp|regA|DataOut[3]~0_combout\ 
-- & (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\sis|blocoOp|regA|DataOut[3]~0_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X113_Y29_N18
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ $ (GND))) # 
-- (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & VCC))
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((\sis|blocoOp|alu1|sum01|Add0~0_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X113_Y29_N20
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY(!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X113_Y29_N22
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y32_N26
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8_combout\ = (\sis|blocoOp|alu1|sum01|Sum[4]~8_combout\ & (\sis|FSM01|RegALUop\(1) & \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\,
	datab => \sis|FSM01|RegALUop\(1),
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8_combout\);

-- Location: LCCOMB_X112_Y29_N28
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2_combout\);

-- Location: LCCOMB_X113_Y29_N4
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \sis|blocoOp|regA|DataOut[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3_combout\);

-- Location: LCCOMB_X112_Y29_N2
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4_combout\);

-- Location: LCCOMB_X113_Y29_N2
\sai|outALU|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~0_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \sis|blocoOp|regA|DataOut[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sai|outALU|Add1~0_combout\);

-- Location: LCCOMB_X112_Y29_N4
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5_combout\);

-- Location: LCCOMB_X113_Y29_N30
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7_combout\ = (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \sis|blocoOp|regA|DataOut[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7_combout\);

-- Location: LCCOMB_X113_Y29_N24
\sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \sis|blocoOp|regA|DataOut[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6_combout\);

-- Location: LCCOMB_X112_Y29_N10
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7_combout\) # (\sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~7_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[40]~6_combout\,
	datad => VCC,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y29_N12
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\sai|outALU|Add1~0_combout\ & (!\sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5_combout\ & 
-- !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Add1~0_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[41]~5_combout\,
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y29_N14
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3_combout\) # 
-- (\sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~3_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[42]~4_combout\,
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y29_N16
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8_combout\ & (!\sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2_combout\ & 
-- !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~8_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|StageOut[43]~2_combout\,
	datad => VCC,
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y29_N18
\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y33_N2
\sai|outALU|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~4_combout\ = \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ (\sis|blocoOp|regA|DataOut[2]~1_combout\ $ (((\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # 
-- (\sis|blocoOp|regA|DataOut[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sai|outALU|Add1~4_combout\);

-- Location: LCCOMB_X112_Y33_N12
\sai|outALU|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~1_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # ((\sis|blocoOp|regA|DataOut[1]~2_combout\) # 
-- (\sis|blocoOp|regA|DataOut[2]~1_combout\)))) # (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\sis|blocoOp|regA|DataOut[2]~1_combout\ & 
-- ((\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # (\sis|blocoOp|regA|DataOut[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sai|outALU|Add1~1_combout\);

-- Location: LCCOMB_X112_Y33_N26
\sai|outALU|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~2_combout\ = \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\sis|blocoOp|regA|DataOut[3]~0_combout\ $ (!\sai|outALU|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datad => \sai|outALU|Add1~1_combout\,
	combout => \sai|outALU|Add1~2_combout\);

-- Location: LCCOMB_X112_Y33_N28
\sai|outALU|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~3_combout\ = \sis|blocoOp|regA|DataOut[1]~2_combout\ $ (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \sai|outALU|Add1~3_combout\);

-- Location: LCCOMB_X112_Y33_N20
\sai|outALU|ssA0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[0]~2_combout\ = (\sai|outALU|Add1~2_combout\ & (\sai|outALU|Add1~3_combout\ & (\sis|blocoOp|regA|DataOut[0]~3_combout\ $ (\sai|outALU|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datab => \sai|outALU|Add1~4_combout\,
	datac => \sai|outALU|Add1~2_combout\,
	datad => \sai|outALU|Add1~3_combout\,
	combout => \sai|outALU|ssA0[0]~2_combout\);

-- Location: LCCOMB_X112_Y33_N16
\sai|outALU|ssA0[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[1]~4_combout\ = (\sis|blocoOp|regA|DataOut[2]~1_combout\ & ((\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (!\sis|blocoOp|regA|DataOut[1]~2_combout\ & \sis|blocoOp|regA|DataOut[3]~0_combout\)) # (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & 
-- (\sis|blocoOp|regA|DataOut[1]~2_combout\ & !\sis|blocoOp|regA|DataOut[3]~0_combout\)))) # (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & (\sis|blocoOp|alu1|sum01|Add0~0_combout\ $ (((!\sis|blocoOp|regA|DataOut[1]~2_combout\ & 
-- \sis|blocoOp|regA|DataOut[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|ssA0[1]~4_combout\);

-- Location: LCCOMB_X112_Y33_N22
\sai|outALU|ssA0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[1]~5_combout\ = (\sis|blocoOp|regA|DataOut[2]~1_combout\ & (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sis|blocoOp|regA|DataOut[1]~2_combout\ $ (!\sis|blocoOp|regA|DataOut[3]~0_combout\)))) # (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & 
-- (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (!\sis|blocoOp|regA|DataOut[1]~2_combout\ & \sis|blocoOp|regA|DataOut[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|ssA0[1]~5_combout\);

-- Location: LCCOMB_X112_Y33_N6
\sai|outALU|ssA0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[1]~3_combout\ = (\sai|outALU|Add1~2_combout\ & (\sai|outALU|Add1~4_combout\ & (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (!\sis|blocoOp|regA|DataOut[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Add1~2_combout\,
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sai|outALU|Add1~4_combout\,
	combout => \sai|outALU|ssA0[1]~3_combout\);

-- Location: LCCOMB_X112_Y33_N0
\sai|outALU|ssA0[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[1]~6_combout\ = (\sis|blocoOp|regA|DataOut[0]~3_combout\ & (!\sai|outALU|ssA0[1]~4_combout\ & (\sai|outALU|ssA0[1]~5_combout\))) # (!\sis|blocoOp|regA|DataOut[0]~3_combout\ & (\sai|outALU|ssA0[1]~4_combout\ & 
-- (!\sai|outALU|ssA0[1]~5_combout\ & \sai|outALU|ssA0[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datab => \sai|outALU|ssA0[1]~4_combout\,
	datac => \sai|outALU|ssA0[1]~5_combout\,
	datad => \sai|outALU|ssA0[1]~3_combout\,
	combout => \sai|outALU|ssA0[1]~6_combout\);

-- Location: LCCOMB_X112_Y33_N10
\sai|outALU|ssA0[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[2]~7_combout\ = (!\sis|blocoOp|regA|DataOut[0]~3_combout\ & (!\sai|outALU|Add1~4_combout\ & (\sai|outALU|Add1~2_combout\ & !\sai|outALU|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datab => \sai|outALU|Add1~4_combout\,
	datac => \sai|outALU|Add1~2_combout\,
	datad => \sai|outALU|Add1~3_combout\,
	combout => \sai|outALU|ssA0[2]~7_combout\);

-- Location: LCCOMB_X112_Y32_N18
\sai|outALU|ssA0[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~19_combout\ = (\sis|blocoOp|regA|DataOut[1]~2_combout\ & (!\sis|blocoOp|regA|DataOut[3]~0_combout\)) # (!\sis|blocoOp|regA|DataOut[1]~2_combout\ & (\sis|blocoOp|regA|DataOut[3]~0_combout\ & (\sis|FSM01|RegALUop\(1) & 
-- \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datab => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datac => \sis|FSM01|RegALUop\(1),
	datad => \sis|blocoOp|alu1|sum01|Sum[4]~8_combout\,
	combout => \sai|outALU|ssA0[3]~19_combout\);

-- Location: LCCOMB_X113_Y32_N24
\sai|outALU|ssA0[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~8_combout\ = (\sis|blocoOp|regA|DataOut[3]~0_combout\ & !\sis|blocoOp|regA|DataOut[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datad => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	combout => \sai|outALU|ssA0[3]~8_combout\);

-- Location: LCCOMB_X112_Y32_N22
\sai|outALU|ssA0[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~9_combout\ = (\sai|outALU|ssA0[3]~19_combout\ & (\sis|blocoOp|alu1|sum01|Add0~0_combout\ $ (\sis|blocoOp|regA|DataOut[2]~1_combout\ $ (!\sai|outALU|ssA0[3]~8_combout\)))) # (!\sai|outALU|ssA0[3]~19_combout\ & 
-- ((\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & \sai|outALU|ssA0[3]~8_combout\)) # (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sis|blocoOp|regA|DataOut[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|ssA0[3]~19_combout\,
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datad => \sai|outALU|ssA0[3]~8_combout\,
	combout => \sai|outALU|ssA0[3]~9_combout\);

-- Location: LCCOMB_X112_Y32_N16
\sai|outALU|ssA0[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~11_combout\ = (\sai|outALU|ssA0[3]~19_combout\ & (((!\sai|outALU|ssA0[3]~8_combout\) # (!\sis|blocoOp|regA|DataOut[2]~1_combout\)))) # (!\sai|outALU|ssA0[3]~19_combout\ & (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & 
-- (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & !\sai|outALU|ssA0[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|ssA0[3]~19_combout\,
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datad => \sai|outALU|ssA0[3]~8_combout\,
	combout => \sai|outALU|ssA0[3]~11_combout\);

-- Location: LCCOMB_X112_Y33_N8
\sai|outALU|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Add1~5_combout\ = \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (\sis|blocoOp|regA|DataOut[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|Add1~5_combout\);

-- Location: LCCOMB_X112_Y33_N30
\sai|outALU|ssA0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0~10_combout\ = (\sai|outALU|Add1~4_combout\ & ((\sai|outALU|Add1~3_combout\) # (\sai|outALU|Add1~1_combout\ $ (\sai|outALU|Add1~5_combout\)))) # (!\sai|outALU|Add1~4_combout\ & ((\sai|outALU|Add1~1_combout\ $ 
-- (!\sai|outALU|Add1~5_combout\)) # (!\sai|outALU|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|Add1~1_combout\,
	datab => \sai|outALU|Add1~4_combout\,
	datac => \sai|outALU|Add1~5_combout\,
	datad => \sai|outALU|Add1~3_combout\,
	combout => \sai|outALU|ssA0~10_combout\);

-- Location: LCCOMB_X112_Y32_N2
\sai|outALU|ssA0[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~12_combout\ = (\sai|outALU|ssA0[3]~9_combout\ & (\sai|outALU|ssA0[3]~11_combout\ $ (((\sai|outALU|ssA0[3]~8_combout\))))) # (!\sai|outALU|ssA0[3]~9_combout\ & ((\sai|outALU|ssA0[3]~11_combout\ & ((\sai|outALU|ssA0~10_combout\) # 
-- (\sai|outALU|ssA0[3]~8_combout\))) # (!\sai|outALU|ssA0[3]~11_combout\ & (\sai|outALU|ssA0~10_combout\ & \sai|outALU|ssA0[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|ssA0[3]~9_combout\,
	datab => \sai|outALU|ssA0[3]~11_combout\,
	datac => \sai|outALU|ssA0~10_combout\,
	datad => \sai|outALU|ssA0[3]~8_combout\,
	combout => \sai|outALU|ssA0[3]~12_combout\);

-- Location: LCCOMB_X112_Y32_N0
\sai|outALU|ssA0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[3]~13_combout\ = \sai|outALU|ssA0[3]~9_combout\ $ (((\sis|blocoOp|regA|DataOut[0]~3_combout\) # (\sai|outALU|ssA0[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datac => \sai|outALU|ssA0[3]~9_combout\,
	datad => \sai|outALU|ssA0[3]~12_combout\,
	combout => \sai|outALU|ssA0[3]~13_combout\);

-- Location: LCCOMB_X113_Y32_N30
\sai|outALU|ssA0[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[4]~14_combout\ = (\sis|blocoOp|regA|DataOut[2]~1_combout\ & (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sis|blocoOp|regA|DataOut[1]~2_combout\ $ (!\sis|blocoOp|regA|DataOut[3]~0_combout\)))) # (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & 
-- (!\sis|blocoOp|regA|DataOut[1]~2_combout\ & (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & \sis|blocoOp|regA|DataOut[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datab => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datac => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|ssA0[4]~14_combout\);

-- Location: LCCOMB_X113_Y32_N28
\sai|outALU|ssA0[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[4]~15_combout\ = (\sis|blocoOp|regA|DataOut[2]~1_combout\ & ((\sis|blocoOp|regA|DataOut[1]~2_combout\ & (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & !\sis|blocoOp|regA|DataOut[3]~0_combout\)) # (!\sis|blocoOp|regA|DataOut[1]~2_combout\ & 
-- (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & \sis|blocoOp|regA|DataOut[3]~0_combout\)))) # (!\sis|blocoOp|regA|DataOut[2]~1_combout\ & ((\sis|blocoOp|alu1|sum01|Add0~0_combout\) # ((!\sis|blocoOp|regA|DataOut[1]~2_combout\ & 
-- \sis|blocoOp|regA|DataOut[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	datab => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datac => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datad => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	combout => \sai|outALU|ssA0[4]~15_combout\);

-- Location: LCCOMB_X113_Y32_N18
\sai|outALU|ssA0[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[4]~16_combout\ = (\sai|outALU|ssA0[4]~14_combout\) # ((\sis|blocoOp|regA|DataOut[0]~3_combout\) # ((\sai|outALU|ssA0~10_combout\ & \sai|outALU|ssA0[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sai|outALU|ssA0[4]~14_combout\,
	datab => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datac => \sai|outALU|ssA0~10_combout\,
	datad => \sai|outALU|ssA0[4]~15_combout\,
	combout => \sai|outALU|ssA0[4]~16_combout\);

-- Location: LCCOMB_X112_Y33_N24
\sai|outALU|ssA0[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[5]~17_combout\ = (\sai|outALU|Add1~2_combout\ & ((\sis|blocoOp|regA|DataOut[0]~3_combout\ & ((!\sai|outALU|Add1~3_combout\) # (!\sai|outALU|Add1~4_combout\))) # (!\sis|blocoOp|regA|DataOut[0]~3_combout\ & (!\sai|outALU|Add1~4_combout\ & 
-- !\sai|outALU|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datab => \sai|outALU|Add1~4_combout\,
	datac => \sai|outALU|Add1~2_combout\,
	datad => \sai|outALU|Add1~3_combout\,
	combout => \sai|outALU|ssA0[5]~17_combout\);

-- Location: LCCOMB_X112_Y33_N18
\sai|outALU|ssA0[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA0[6]~18_combout\ = (\sai|outALU|Add1~2_combout\ & ((\sai|outALU|Add1~4_combout\ & (\sis|blocoOp|regA|DataOut[0]~3_combout\ & !\sai|outALU|Add1~3_combout\)) # (!\sai|outALU|Add1~4_combout\ & ((\sai|outALU|Add1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[0]~3_combout\,
	datab => \sai|outALU|Add1~4_combout\,
	datac => \sai|outALU|Add1~2_combout\,
	datad => \sai|outALU|Add1~3_combout\,
	combout => \sai|outALU|ssA0[6]~18_combout\);

-- Location: LCCOMB_X112_Y33_N4
\sai|outALU|ssA1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA1[0]~0_combout\ = (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|ssA1[0]~0_combout\);

-- Location: LCCOMB_X112_Y29_N30
\sai|outALU|ssA1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA1[2]~1_combout\ = (\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|ssA1[2]~1_combout\);

-- Location: LCCOMB_X113_Y30_N16
\sai|outALU|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Equal7~0_combout\ = (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (!\sis|blocoOp|regA|DataOut[3]~0_combout\ & ((!\sis|blocoOp|regA|DataOut[2]~1_combout\)))) # (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sis|blocoOp|regA|DataOut[3]~0_combout\ & 
-- ((\sis|blocoOp|regA|DataOut[1]~2_combout\) # (\sis|blocoOp|regA|DataOut[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datab => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sai|outALU|Equal7~0_combout\);

-- Location: LCCOMB_X113_Y29_N12
\sai|outALU|ssA1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|ssA1[4]~2_combout\ = (\sis|blocoOp|alu1|sum01|Add0~0_combout\ & ((\sis|blocoOp|regA|DataOut[3]~0_combout\ & (\sis|blocoOp|regA|DataOut[1]~2_combout\ & \sis|blocoOp|regA|DataOut[2]~1_combout\)) # (!\sis|blocoOp|regA|DataOut[3]~0_combout\ & 
-- ((!\sis|blocoOp|regA|DataOut[2]~1_combout\))))) # (!\sis|blocoOp|alu1|sum01|Add0~0_combout\ & (\sis|blocoOp|regA|DataOut[3]~0_combout\ & ((\sis|blocoOp|regA|DataOut[1]~2_combout\) # (\sis|blocoOp|regA|DataOut[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sis|blocoOp|regA|DataOut[1]~2_combout\,
	datab => \sis|blocoOp|alu1|sum01|Add0~0_combout\,
	datac => \sis|blocoOp|regA|DataOut[3]~0_combout\,
	datad => \sis|blocoOp|regA|DataOut[2]~1_combout\,
	combout => \sai|outALU|ssA1[4]~2_combout\);

-- Location: LCCOMB_X112_Y29_N20
\sai|outALU|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sai|outALU|Equal8~0_combout\ = (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\) # (!\sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \sai|outALU|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \sai|outALU|Equal8~0_combout\);

-- Location: LCCOMB_X114_Y32_N8
\sis|FSM01|RegPrState[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|RegPrState[0]~0_combout\ = !\sis|FSM01|PresentState.load~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|PresentState.load~q\,
	combout => \sis|FSM01|RegPrState[0]~0_combout\);

-- Location: FF_X114_Y32_N9
\sis|FSM01|RegPrState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|RegPrState[0]~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegPrState\(0));

-- Location: LCCOMB_X114_Y32_N26
\sis|FSM01|RegPrState[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|RegPrState[1]~feeder_combout\ = \sis|FSM01|PresentState.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sis|FSM01|PresentState.idle~q\,
	combout => \sis|FSM01|RegPrState[1]~feeder_combout\);

-- Location: FF_X114_Y32_N27
\sis|FSM01|RegPrState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|RegPrState[1]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegPrState\(1));

-- Location: FF_X114_Y32_N13
\sis|FSM01|RegNxState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|NxState[0]~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegNxState\(0));

-- Location: LCCOMB_X114_Y32_N14
\sis|FSM01|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sis|FSM01|Selector1~0_combout\ = (\sis|FSM01|PresentState.load~q\) # (!\sis|FSM01|NxState[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sis|FSM01|PresentState.load~q\,
	datad => \sis|FSM01|NxState[0]~0_combout\,
	combout => \sis|FSM01|Selector1~0_combout\);

-- Location: FF_X114_Y32_N15
\sis|FSM01|RegNxState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ent|CD01|tmp~clkctrl_outclk\,
	d => \sis|FSM01|Selector1~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sis|FSM01|RegNxState\(1));

ww_InpA_ssU(0) <= \InpA_ssU[0]~output_o\;

ww_InpA_ssU(1) <= \InpA_ssU[1]~output_o\;

ww_InpA_ssU(2) <= \InpA_ssU[2]~output_o\;

ww_InpA_ssU(3) <= \InpA_ssU[3]~output_o\;

ww_InpA_ssU(4) <= \InpA_ssU[4]~output_o\;

ww_InpA_ssU(5) <= \InpA_ssU[5]~output_o\;

ww_InpA_ssU(6) <= \InpA_ssU[6]~output_o\;

ww_InpA_ssD(0) <= \InpA_ssD[0]~output_o\;

ww_InpA_ssD(1) <= \InpA_ssD[1]~output_o\;

ww_InpA_ssD(2) <= \InpA_ssD[2]~output_o\;

ww_InpA_ssD(3) <= \InpA_ssD[3]~output_o\;

ww_InpA_ssD(4) <= \InpA_ssD[4]~output_o\;

ww_InpA_ssD(5) <= \InpA_ssD[5]~output_o\;

ww_InpA_ssD(6) <= \InpA_ssD[6]~output_o\;

ww_InpB_ssU(0) <= \InpB_ssU[0]~output_o\;

ww_InpB_ssU(1) <= \InpB_ssU[1]~output_o\;

ww_InpB_ssU(2) <= \InpB_ssU[2]~output_o\;

ww_InpB_ssU(3) <= \InpB_ssU[3]~output_o\;

ww_InpB_ssU(4) <= \InpB_ssU[4]~output_o\;

ww_InpB_ssU(5) <= \InpB_ssU[5]~output_o\;

ww_InpB_ssU(6) <= \InpB_ssU[6]~output_o\;

ww_InpB_ssD(0) <= \InpB_ssD[0]~output_o\;

ww_InpB_ssD(1) <= \InpB_ssD[1]~output_o\;

ww_InpB_ssD(2) <= \InpB_ssD[2]~output_o\;

ww_InpB_ssD(3) <= \InpB_ssD[3]~output_o\;

ww_InpB_ssD(4) <= \InpB_ssD[4]~output_o\;

ww_InpB_ssD(5) <= \InpB_ssD[5]~output_o\;

ww_InpB_ssD(6) <= \InpB_ssD[6]~output_o\;

ww_ALUOut_ssU(0) <= \ALUOut_ssU[0]~output_o\;

ww_ALUOut_ssU(1) <= \ALUOut_ssU[1]~output_o\;

ww_ALUOut_ssU(2) <= \ALUOut_ssU[2]~output_o\;

ww_ALUOut_ssU(3) <= \ALUOut_ssU[3]~output_o\;

ww_ALUOut_ssU(4) <= \ALUOut_ssU[4]~output_o\;

ww_ALUOut_ssU(5) <= \ALUOut_ssU[5]~output_o\;

ww_ALUOut_ssU(6) <= \ALUOut_ssU[6]~output_o\;

ww_ALUOut_ssD(0) <= \ALUOut_ssD[0]~output_o\;

ww_ALUOut_ssD(1) <= \ALUOut_ssD[1]~output_o\;

ww_ALUOut_ssD(2) <= \ALUOut_ssD[2]~output_o\;

ww_ALUOut_ssD(3) <= \ALUOut_ssD[3]~output_o\;

ww_ALUOut_ssD(4) <= \ALUOut_ssD[4]~output_o\;

ww_ALUOut_ssD(5) <= \ALUOut_ssD[5]~output_o\;

ww_ALUOut_ssD(6) <= \ALUOut_ssD[6]~output_o\;

ww_RegPrState(0) <= \RegPrState[0]~output_o\;

ww_RegPrState(1) <= \RegPrState[1]~output_o\;

ww_RegNxState(0) <= \RegNxState[0]~output_o\;

ww_RegNxState(1) <= \RegNxState[1]~output_o\;
END structure;


