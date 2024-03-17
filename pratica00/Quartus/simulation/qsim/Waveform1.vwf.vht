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
-- Generated on "03/17/2024 07:09:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          arquitetura
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY arquitetura_vhd_vec_tst IS
END arquitetura_vhd_vec_tst;
ARCHITECTURE arquitetura_arch OF arquitetura_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL DataInput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DataOutOut : STD_LOGIC;
SIGNAL En : STD_LOGIC;
SIGNAL ss : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT arquitetura
	PORT (
	Clock : IN STD_LOGIC;
	DataInput : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DataOutOut : BUFFER STD_LOGIC;
	En : IN STD_LOGIC;
	ss : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : arquitetura
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	DataInput => DataInput,
	DataOutOut => DataOutOut,
	En => En,
	ss => ss
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 1000 ps;
	Clock <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- DataInput[7]
t_prcs_DataInput_7: PROCESS
BEGIN
	DataInput(7) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_7;
-- DataInput[6]
t_prcs_DataInput_6: PROCESS
BEGIN
	DataInput(6) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_6;
-- DataInput[5]
t_prcs_DataInput_5: PROCESS
BEGIN
	DataInput(5) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_5;
-- DataInput[4]
t_prcs_DataInput_4: PROCESS
BEGIN
	DataInput(4) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_4;
-- DataInput[3]
t_prcs_DataInput_3: PROCESS
BEGIN
	DataInput(3) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_3;
-- DataInput[2]
t_prcs_DataInput_2: PROCESS
BEGIN
	DataInput(2) <= '0';
WAIT;
END PROCESS t_prcs_DataInput_2;
-- DataInput[1]
t_prcs_DataInput_1: PROCESS
BEGIN
LOOP
	DataInput(1) <= '0';
	WAIT FOR 500000 ps;
	DataInput(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataInput_1;
-- DataInput[0]
t_prcs_DataInput_0: PROCESS
BEGIN
LOOP
	DataInput(0) <= '0';
	WAIT FOR 250000 ps;
	DataInput(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataInput_0;

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '0';
WAIT;
END PROCESS t_prcs_En;
END arquitetura_arch;
