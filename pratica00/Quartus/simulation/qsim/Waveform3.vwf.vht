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
-- Generated on "04/11/2024 20:55:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux_vhd_vec_tst IS
END Mux_vhd_vec_tst;
ARCHITECTURE Mux_arch OF Mux_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC;
SIGNAL En : STD_LOGIC;
SIGNAL Sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mux
	PORT (
	DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DataOut : OUT STD_LOGIC;
	En : IN STD_LOGIC;
	Sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux
	PORT MAP (
-- list connections between master ports and signals
	DataIn => DataIn,
	DataOut => DataOut,
	En => En,
	Sel => Sel
	);
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
	WAIT FOR 800000 ps;
	DataIn(5) <= '1';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
	WAIT FOR 400000 ps;
	DataIn(4) <= '1';
	WAIT FOR 400000 ps;
	DataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DataIn(3) <= '0';
		WAIT FOR 200000 ps;
		DataIn(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
LOOP
	DataIn(2) <= '0';
	WAIT FOR 100000 ps;
	DataIn(2) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
LOOP
	DataIn(1) <= '0';
	WAIT FOR 50000 ps;
	DataIn(1) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
LOOP
	DataIn(0) <= '0';
	WAIT FOR 25000 ps;
	DataIn(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_0;

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '0';
WAIT;
END PROCESS t_prcs_En;
-- Sel[2]
t_prcs_Sel_2: PROCESS
BEGIN
	Sel(2) <= '0';
	WAIT FOR 400000 ps;
	Sel(2) <= '1';
	WAIT FOR 400000 ps;
	Sel(2) <= '0';
WAIT;
END PROCESS t_prcs_Sel_2;
-- Sel[1]
t_prcs_Sel_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Sel(1) <= '0';
		WAIT FOR 200000 ps;
		Sel(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	Sel(1) <= '0';
WAIT;
END PROCESS t_prcs_Sel_1;
-- Sel[0]
t_prcs_Sel_0: PROCESS
BEGIN
LOOP
	Sel(0) <= '0';
	WAIT FOR 100000 ps;
	Sel(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Sel_0;
END Mux_arch;
