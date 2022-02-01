-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/07/2022 13:52:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P14placa
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P14placa_vhd_vec_tst IS
END P14placa_vhd_vec_tst;
ARCHITECTURE P14placa_arch OF P14placa_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL G_HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL G_LEDG : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL G_LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL V_BT : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL V_SW : STD_LOGIC_VECTOR(17 DOWNTO 9);
COMPONENT P14placa
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	G_HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	G_LEDG : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	G_LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	V_BT : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	V_SW : IN STD_LOGIC_VECTOR(17 DOWNTO 9)
	);
END COMPONENT;
BEGIN
	i1 : P14placa
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	G_HEX0 => G_HEX0,
	G_HEX1 => G_HEX1,
	G_HEX2 => G_HEX2,
	G_HEX3 => G_HEX3,
	G_HEX4 => G_HEX4,
	G_HEX5 => G_HEX5,
	G_HEX6 => G_HEX6,
	G_HEX7 => G_HEX7,
	G_LEDG => G_LEDG,
	G_LEDR => G_LEDR,
	V_BT => V_BT,
	V_SW => V_SW
	);

-- V_SW[14]
t_prcs_V_SW_14: PROCESS
BEGIN
	V_SW(14) <= '0';
	WAIT FOR 750000 ps;
	V_SW(14) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_14;

-- V_SW[15]
t_prcs_V_SW_15: PROCESS
BEGIN
	V_SW(15) <= '0';
	WAIT FOR 250000 ps;
	V_SW(15) <= '1';
	WAIT FOR 500000 ps;
	V_SW(15) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_15;

-- V_SW[16]
t_prcs_V_SW_16: PROCESS
BEGIN
LOOP
	V_SW(16) <= '1';
	WAIT FOR 250000 ps;
	V_SW(16) <= '0';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_V_SW_16;

-- V_SW[17]
t_prcs_V_SW_17: PROCESS
BEGIN
	V_SW(17) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_17;

-- V_SW[9]
t_prcs_V_SW_9: PROCESS
BEGIN
	V_SW(9) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_9;

-- V_SW[10]
t_prcs_V_SW_10: PROCESS
BEGIN
	V_SW(10) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_10;

-- V_SW[11]
t_prcs_V_SW_11: PROCESS
BEGIN
	V_SW(11) <= '1';
	WAIT FOR 500000 ps;
	V_SW(11) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_11;

-- V_SW[12]
t_prcs_V_SW_12: PROCESS
BEGIN
	V_SW(12) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_12;
-- V_BT[1]
t_prcs_V_BT_1: PROCESS
BEGIN
	V_BT(1) <= '1';
	WAIT FOR 30000 ps;
	V_BT(1) <= '0';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 15
	LOOP
		V_BT(1) <= '1';
		WAIT FOR 30000 ps;
		V_BT(1) <= '0';
		WAIT FOR 30000 ps;
	END LOOP;
	V_BT(1) <= '1';
	WAIT FOR 30000 ps;
	V_BT(1) <= '0';
WAIT;
END PROCESS t_prcs_V_BT_1;
-- V_BT[0]
t_prcs_V_BT_0: PROCESS
BEGIN
	V_BT(0) <= '0';
	WAIT FOR 146000 ps;
	V_BT(0) <= '1';
	WAIT FOR 14000 ps;
	V_BT(0) <= '0';
	WAIT FOR 686000 ps;
	V_BT(0) <= '1';
	WAIT FOR 14000 ps;
	V_BT(0) <= '0';
WAIT;
END PROCESS t_prcs_V_BT_0;

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 15000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END P14placa_arch;
