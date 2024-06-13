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
-- Generated on "04/11/2024 21:12:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sevenSegDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sevenSegDecoder_vhd_vec_tst IS
END sevenSegDecoder_vhd_vec_tst;
ARCHITECTURE sevenSegDecoder_arch OF sevenSegDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ss : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT sevenSegDecoder
	PORT (
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ss : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sevenSegDecoder
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	ss => ss
	);
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data(3) <= '0';
		WAIT FOR 200000 ps;
		data(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
LOOP
	data(2) <= '0';
	WAIT FOR 100000 ps;
	data(2) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
LOOP
	data(1) <= '0';
	WAIT FOR 50000 ps;
	data(1) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
LOOP
	data(0) <= '0';
	WAIT FOR 25000 ps;
	data(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_0;
END sevenSegDecoder_arch;
