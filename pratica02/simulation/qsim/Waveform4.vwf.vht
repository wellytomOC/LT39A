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
-- Generated on "06/13/2024 18:24:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          registrador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registrador_vhd_vec_tst IS
END registrador_vhd_vec_tst;
ARCHITECTURE registrador_arch OF registrador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT registrador
	PORT (
	clock : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registrador
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	DataIn => DataIn,
	DataOut => DataOut,
	reset => reset
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
LOOP
	DataIn(1) <= '0';
	WAIT FOR 500000 ps;
	DataIn(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
LOOP
	DataIn(0) <= '0';
	WAIT FOR 250000 ps;
	DataIn(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 300000 ps;
	reset <= '1';
	WAIT FOR 300000 ps;
	reset <= '0';
	WAIT FOR 300000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END registrador_arch;
