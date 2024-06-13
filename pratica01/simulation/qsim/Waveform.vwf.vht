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
-- Generated on "04/11/2024 21:25:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          atv01
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY atv01_vhd_vec_tst IS
END atv01_vhd_vec_tst;
ARCHITECTURE atv01_arch OF atv01_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL areset : STD_LOGIC;
SIGNAL c0 : STD_LOGIC;
SIGNAL inclk0 : STD_LOGIC;
COMPONENT atv01
	PORT (
	areset : IN STD_LOGIC;
	c0 : OUT STD_LOGIC;
	inclk0 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : atv01
	PORT MAP (
-- list connections between master ports and signals
	areset => areset,
	c0 => c0,
	inclk0 => inclk0
	);

-- areset
t_prcs_areset: PROCESS
BEGIN
	areset <= '0';
WAIT;
END PROCESS t_prcs_areset;

-- inclk0
t_prcs_inclk0: PROCESS
BEGIN
LOOP
	inclk0 <= '0';
	WAIT FOR 10 ps;
	inclk0 <= '1';
	WAIT FOR 10 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inclk0;
END atv01_arch;
