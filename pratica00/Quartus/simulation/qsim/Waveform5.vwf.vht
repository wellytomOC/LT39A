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
-- Generated on "04/11/2024 21:10:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sistema
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sistema_vhd_vec_tst IS
END sistema_vhd_vec_tst;
ARCHITECTURE sistema_arch OF sistema_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Counter : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC;
SIGNAL En : STD_LOGIC;
COMPONENT sistema
	PORT (
	CLK : IN STD_LOGIC;
	Counter : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DataOut : BUFFER STD_LOGIC;
	En : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sistema
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Counter => Counter,
	D => D,
	DataOut => DataOut,
	En => En
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
	WAIT FOR 500000 ps;
	D(7) <= '1';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
LOOP
	D(6) <= '0';
	WAIT FOR 250000 ps;
	D(6) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
	WAIT FOR 500000 ps;
	D(5) <= '1';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
LOOP
	D(4) <= '0';
	WAIT FOR 250000 ps;
	D(4) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 500000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
LOOP
	D(2) <= '0';
	WAIT FOR 250000 ps;
	D(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 500000 ps;
	D(1) <= '1';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
LOOP
	D(0) <= '0';
	WAIT FOR 250000 ps;
	D(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D_0;

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '0';
WAIT;
END PROCESS t_prcs_En;
END sistema_arch;
