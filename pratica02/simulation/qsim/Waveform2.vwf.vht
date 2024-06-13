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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/13/2024 18:15:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          StateMachine_ControlUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY StateMachine_ControlUnit_vhd_vec_tst IS
END StateMachine_ControlUnit_vhd_vec_tst;
ARCHITECTURE StateMachine_ControlUnit_arch OF StateMachine_ControlUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL dv : STD_LOGIC;
SIGNAL RegALUop : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegNxState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegPrState : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegSelA : STD_LOGIC;
SIGNAL RegWrA : STD_LOGIC;
SIGNAL RegWrB : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT StateMachine_ControlUnit
	PORT (
	clock : IN STD_LOGIC;
	dv : IN STD_LOGIC;
	RegALUop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegNxState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegPrState : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegSelA : OUT STD_LOGIC;
	RegWrA : OUT STD_LOGIC;
	RegWrB : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : StateMachine_ControlUnit
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	dv => dv,
	RegALUop => RegALUop,
	RegNxState => RegNxState,
	RegPrState => RegPrState,
	RegSelA => RegSelA,
	RegWrA => RegWrA,
	RegWrB => RegWrB,
	reset => reset
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- dv
t_prcs_dv: PROCESS
BEGIN
LOOP
	dv <= '0';
	WAIT FOR 250000 ps;
	dv <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dv;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 330000 ps;
	reset <= '0';
	WAIT FOR 180000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END StateMachine_ControlUnit_arch;
