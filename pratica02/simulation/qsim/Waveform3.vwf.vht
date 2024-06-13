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
-- Generated on "06/13/2024 18:18:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplexador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplexador_vhd_vec_tst IS
END multiplexador_vhd_vec_tst;
ARCHITECTURE multiplexador_arch OF multiplexador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Inp0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Inp1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OutMux : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL selA : STD_LOGIC;
COMPONENT multiplexador
	PORT (
	Inp0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Inp1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OutMux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	selA : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplexador
	PORT MAP (
-- list connections between master ports and signals
	Inp0 => Inp0,
	Inp1 => Inp1,
	OutMux => OutMux,
	selA => selA
	);
-- Inp0[3]
t_prcs_Inp0_3: PROCESS
BEGIN
	Inp0(3) <= '0';
WAIT;
END PROCESS t_prcs_Inp0_3;
-- Inp0[2]
t_prcs_Inp0_2: PROCESS
BEGIN
	Inp0(2) <= '0';
WAIT;
END PROCESS t_prcs_Inp0_2;
-- Inp0[1]
t_prcs_Inp0_1: PROCESS
BEGIN
LOOP
	Inp0(1) <= '0';
	WAIT FOR 500000 ps;
	Inp0(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Inp0_1;
-- Inp0[0]
t_prcs_Inp0_0: PROCESS
BEGIN
LOOP
	Inp0(0) <= '0';
	WAIT FOR 250000 ps;
	Inp0(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Inp0_0;
-- Inp1[3]
t_prcs_Inp1_3: PROCESS
BEGIN
	Inp1(3) <= '0';
WAIT;
END PROCESS t_prcs_Inp1_3;
-- Inp1[2]
t_prcs_Inp1_2: PROCESS
BEGIN
	Inp1(2) <= '0';
	WAIT FOR 750000 ps;
	Inp1(2) <= '1';
WAIT;
END PROCESS t_prcs_Inp1_2;
-- Inp1[1]
t_prcs_Inp1_1: PROCESS
BEGIN
	Inp1(1) <= '0';
	WAIT FOR 250000 ps;
	Inp1(1) <= '1';
	WAIT FOR 500000 ps;
	Inp1(1) <= '0';
WAIT;
END PROCESS t_prcs_Inp1_1;
-- Inp1[0]
t_prcs_Inp1_0: PROCESS
BEGIN
LOOP
	Inp1(0) <= '1';
	WAIT FOR 250000 ps;
	Inp1(0) <= '0';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Inp1_0;

-- selA
t_prcs_selA: PROCESS
BEGIN
LOOP
	selA <= '0';
	WAIT FOR 500000 ps;
	selA <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selA;
END multiplexador_arch;
