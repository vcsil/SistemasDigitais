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
-- Generated on "01/07/2022 13:31:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P11interface
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P11interface_vhd_vec_tst IS
END P11interface_vhd_vec_tst;
ARCHITECTURE P11interface_arch OF P11interface_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL botaoSEL : STD_LOGIC;
SIGNAL carry_borrowLED : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL entradaA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entradaB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operacaoLED : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL resultadoDISPLAY : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT P11interface
	PORT (
	botaoSEL : IN STD_LOGIC;
	carry_borrowLED : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	entradaA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	entradaB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	operacaoLED : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	resultadoDISPLAY : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : P11interface
	PORT MAP (
-- list connections between master ports and signals
	botaoSEL => botaoSEL,
	carry_borrowLED => carry_borrowLED,
	clk => clk,
	entradaA => entradaA,
	entradaB => entradaB,
	operacaoLED => operacaoLED,
	reset => reset,
	resultadoDISPLAY => resultadoDISPLAY,
	saidaA => saidaA,
	saidaB => saidaB
	);
-- entradaA[3]
t_prcs_entradaA_3: PROCESS
BEGIN
	entradaA(3) <= '0';
	WAIT FOR 1000000 ps;
	entradaA(3) <= '1';
WAIT;
END PROCESS t_prcs_entradaA_3;
-- entradaA[2]
t_prcs_entradaA_2: PROCESS
BEGIN
LOOP
	entradaA(2) <= '0';
	WAIT FOR 500000 ps;
	entradaA(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entradaA_2;
-- entradaA[1]
t_prcs_entradaA_1: PROCESS
BEGIN
	entradaA(1) <= '1';
	WAIT FOR 1000000 ps;
	entradaA(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_1;
-- entradaA[0]
t_prcs_entradaA_0: PROCESS
BEGIN
LOOP
	entradaA(0) <= '1';
	WAIT FOR 500000 ps;
	entradaA(0) <= '0';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entradaA_0;
-- entradaB[3]
t_prcs_entradaB_3: PROCESS
BEGIN
	entradaB(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_3;
-- entradaB[2]
t_prcs_entradaB_2: PROCESS
BEGIN
	entradaB(2) <= '1';
WAIT;
END PROCESS t_prcs_entradaB_2;
-- entradaB[1]
t_prcs_entradaB_1: PROCESS
BEGIN
	entradaB(1) <= '0';
	WAIT FOR 1000000 ps;
	entradaB(1) <= '1';
WAIT;
END PROCESS t_prcs_entradaB_1;
-- entradaB[0]
t_prcs_entradaB_0: PROCESS
BEGIN
	entradaB(0) <= '1';
WAIT;
END PROCESS t_prcs_entradaB_0;

-- botaoSEL
t_prcs_botaoSEL: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		botaoSEL <= '0';
		WAIT FOR 150000 ps;
		botaoSEL <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	botaoSEL <= '0';
	WAIT FOR 150000 ps;
	botaoSEL <= '1';
WAIT;
END PROCESS t_prcs_botaoSEL;

-- reset
t_prcs_reset: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		reset <= '0';
		WAIT FOR 175000 ps;
		reset <= '1';
		WAIT FOR 175000 ps;
	END LOOP;
	reset <= '0';
	WAIT FOR 175000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END P11interface_arch;
