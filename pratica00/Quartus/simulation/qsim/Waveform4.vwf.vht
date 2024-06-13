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
-- Generated on "04/11/2024 21:04:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mod8Counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mod8Counter_vhd_vec_tst IS
END Mod8Counter_vhd_vec_tst;
ARCHITECTURE Mod8Counter_arch OF Mod8Counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RegisterClock : STD_LOGIC;
SIGNAL SelOut : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mod8Counter
	PORT (
	CLK : IN STD_LOGIC;
	RegisterClock : BUFFER STD_LOGIC;
	SelOut : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mod8Counter
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RegisterClock => RegisterClock,
	SelOut => SelOut
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END Mod8Counter_arch;
