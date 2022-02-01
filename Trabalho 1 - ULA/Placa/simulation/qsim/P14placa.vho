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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/07/2022 13:52:34"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P14placa IS
    PORT (
	CLOCK_50 : IN std_logic;
	V_BT : IN std_logic_vector(1 DOWNTO 0);
	V_SW : IN std_logic_vector(17 DOWNTO 9);
	G_HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	G_LEDG : OUT std_logic_vector(0 DOWNTO 0);
	G_LEDR : OUT std_logic_vector(2 DOWNTO 0)
	);
END P14placa;

ARCHITECTURE structure OF P14placa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_V_BT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_V_SW : std_logic_vector(17 DOWNTO 9);
SIGNAL ww_G_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_G_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \V_SW[13]~input_o\ : std_logic;
SIGNAL \G_HEX7[0]~output_o\ : std_logic;
SIGNAL \G_HEX7[1]~output_o\ : std_logic;
SIGNAL \G_HEX7[2]~output_o\ : std_logic;
SIGNAL \G_HEX7[3]~output_o\ : std_logic;
SIGNAL \G_HEX7[4]~output_o\ : std_logic;
SIGNAL \G_HEX7[5]~output_o\ : std_logic;
SIGNAL \G_HEX7[6]~output_o\ : std_logic;
SIGNAL \G_HEX6[0]~output_o\ : std_logic;
SIGNAL \G_HEX6[1]~output_o\ : std_logic;
SIGNAL \G_HEX6[2]~output_o\ : std_logic;
SIGNAL \G_HEX6[3]~output_o\ : std_logic;
SIGNAL \G_HEX6[4]~output_o\ : std_logic;
SIGNAL \G_HEX6[5]~output_o\ : std_logic;
SIGNAL \G_HEX6[6]~output_o\ : std_logic;
SIGNAL \G_HEX5[0]~output_o\ : std_logic;
SIGNAL \G_HEX5[1]~output_o\ : std_logic;
SIGNAL \G_HEX5[2]~output_o\ : std_logic;
SIGNAL \G_HEX5[3]~output_o\ : std_logic;
SIGNAL \G_HEX5[4]~output_o\ : std_logic;
SIGNAL \G_HEX5[5]~output_o\ : std_logic;
SIGNAL \G_HEX5[6]~output_o\ : std_logic;
SIGNAL \G_HEX4[0]~output_o\ : std_logic;
SIGNAL \G_HEX4[1]~output_o\ : std_logic;
SIGNAL \G_HEX4[2]~output_o\ : std_logic;
SIGNAL \G_HEX4[3]~output_o\ : std_logic;
SIGNAL \G_HEX4[4]~output_o\ : std_logic;
SIGNAL \G_HEX4[5]~output_o\ : std_logic;
SIGNAL \G_HEX4[6]~output_o\ : std_logic;
SIGNAL \G_HEX3[0]~output_o\ : std_logic;
SIGNAL \G_HEX3[1]~output_o\ : std_logic;
SIGNAL \G_HEX3[2]~output_o\ : std_logic;
SIGNAL \G_HEX3[3]~output_o\ : std_logic;
SIGNAL \G_HEX3[4]~output_o\ : std_logic;
SIGNAL \G_HEX3[5]~output_o\ : std_logic;
SIGNAL \G_HEX3[6]~output_o\ : std_logic;
SIGNAL \G_HEX2[0]~output_o\ : std_logic;
SIGNAL \G_HEX2[1]~output_o\ : std_logic;
SIGNAL \G_HEX2[2]~output_o\ : std_logic;
SIGNAL \G_HEX2[3]~output_o\ : std_logic;
SIGNAL \G_HEX2[4]~output_o\ : std_logic;
SIGNAL \G_HEX2[5]~output_o\ : std_logic;
SIGNAL \G_HEX2[6]~output_o\ : std_logic;
SIGNAL \G_HEX1[0]~output_o\ : std_logic;
SIGNAL \G_HEX1[1]~output_o\ : std_logic;
SIGNAL \G_HEX1[2]~output_o\ : std_logic;
SIGNAL \G_HEX1[3]~output_o\ : std_logic;
SIGNAL \G_HEX1[4]~output_o\ : std_logic;
SIGNAL \G_HEX1[5]~output_o\ : std_logic;
SIGNAL \G_HEX1[6]~output_o\ : std_logic;
SIGNAL \G_HEX0[0]~output_o\ : std_logic;
SIGNAL \G_HEX0[1]~output_o\ : std_logic;
SIGNAL \G_HEX0[2]~output_o\ : std_logic;
SIGNAL \G_HEX0[3]~output_o\ : std_logic;
SIGNAL \G_HEX0[4]~output_o\ : std_logic;
SIGNAL \G_HEX0[5]~output_o\ : std_logic;
SIGNAL \G_HEX0[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[0]~output_o\ : std_logic;
SIGNAL \G_LEDR[0]~output_o\ : std_logic;
SIGNAL \G_LEDR[1]~output_o\ : std_logic;
SIGNAL \G_LEDR[2]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \V_BT[0]~input_o\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[0]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~0_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[1]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~1\ : std_logic;
SIGNAL \DIVfreq|Add0~2_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[2]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~3\ : std_logic;
SIGNAL \DIVfreq|Add0~4_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[3]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~5\ : std_logic;
SIGNAL \DIVfreq|Add0~6_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~0_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[23]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~7\ : std_logic;
SIGNAL \DIVfreq|Add0~8_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[4]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~9\ : std_logic;
SIGNAL \DIVfreq|Add0~10_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[5]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~11\ : std_logic;
SIGNAL \DIVfreq|Add0~13\ : std_logic;
SIGNAL \DIVfreq|Add0~14_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[7]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~15\ : std_logic;
SIGNAL \DIVfreq|Add0~16_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[8]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~17\ : std_logic;
SIGNAL \DIVfreq|Add0~18_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[9]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~19\ : std_logic;
SIGNAL \DIVfreq|Add0~20_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[10]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~21\ : std_logic;
SIGNAL \DIVfreq|Add0~22_combout\ : std_logic;
SIGNAL \DIVfreq|cont~4_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[11]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~23\ : std_logic;
SIGNAL \DIVfreq|Add0~24_combout\ : std_logic;
SIGNAL \DIVfreq|cont~5_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[12]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~25\ : std_logic;
SIGNAL \DIVfreq|Add0~26_combout\ : std_logic;
SIGNAL \DIVfreq|cont~6_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[13]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~27\ : std_logic;
SIGNAL \DIVfreq|Add0~28_combout\ : std_logic;
SIGNAL \DIVfreq|cont~7_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[14]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~29\ : std_logic;
SIGNAL \DIVfreq|Add0~30_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[15]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~31\ : std_logic;
SIGNAL \DIVfreq|Add0~33\ : std_logic;
SIGNAL \DIVfreq|Add0~34_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[17]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~35\ : std_logic;
SIGNAL \DIVfreq|Add0~36_combout\ : std_logic;
SIGNAL \DIVfreq|cont~9_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[18]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~37\ : std_logic;
SIGNAL \DIVfreq|Add0~38_combout\ : std_logic;
SIGNAL \DIVfreq|cont~10_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[19]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~39\ : std_logic;
SIGNAL \DIVfreq|Add0~41\ : std_logic;
SIGNAL \DIVfreq|Add0~43\ : std_logic;
SIGNAL \DIVfreq|Add0~45\ : std_logic;
SIGNAL \DIVfreq|Add0~46_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~7_combout\ : std_logic;
SIGNAL \DIVfreq|cont~12_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[21]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~42_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~8_combout\ : std_logic;
SIGNAL \DIVfreq|cont~14_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[24]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~47\ : std_logic;
SIGNAL \DIVfreq|Add0~48_combout\ : std_logic;
SIGNAL \DIVfreq|cont~15_combout\ : std_logic;
SIGNAL \DIVfreq|cont~11_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[22]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~44_combout\ : std_logic;
SIGNAL \DIVfreq|cont~2_combout\ : std_logic;
SIGNAL \DIVfreq|cont~8_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[16]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~32_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~5_combout\ : std_logic;
SIGNAL \DIVfreq|cont~13_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[20]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~40_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~6_combout\ : std_logic;
SIGNAL \DIVfreq|cont~3_combout\ : std_logic;
SIGNAL \DIVfreq|divisor2:cont[6]~q\ : std_logic;
SIGNAL \DIVfreq|Add0~12_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~1_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~2_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~3_combout\ : std_logic;
SIGNAL \DIVfreq|Equal0~4_combout\ : std_logic;
SIGNAL \DIVfreq|ck~0_combout\ : std_logic;
SIGNAL \DIVfreq|ck~q\ : std_logic;
SIGNAL \V_SW[17]~input_o\ : std_logic;
SIGNAL \ITERF|init~0_combout\ : std_logic;
SIGNAL \ITERF|init~q\ : std_logic;
SIGNAL \V_BT[1]~input_o\ : std_logic;
SIGNAL \ITERF|estado~9_combout\ : std_logic;
SIGNAL \ITERF|estado~1_combout\ : std_logic;
SIGNAL \ITERF|estado~3_combout\ : std_logic;
SIGNAL \ITERF|B[3]~0_combout\ : std_logic;
SIGNAL \ITERF|estado~_emulated_q\ : std_logic;
SIGNAL \ITERF|estado~2_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~26_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~1_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~0_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~25_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ITERF|saidaA[3]~2_combout\ : std_logic;
SIGNAL \V_SW[16]~input_o\ : std_logic;
SIGNAL \ITERF|saidaA[2]~6_combout\ : std_logic;
SIGNAL \ITERF|saidaA[2]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaA[2]~8_combout\ : std_logic;
SIGNAL \ITERF|saidaA[2]~7_combout\ : std_logic;
SIGNAL \V_SW[15]~input_o\ : std_logic;
SIGNAL \ITERF|saidaA[1]~11_combout\ : std_logic;
SIGNAL \ITERF|saidaA[1]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaA[1]~13_combout\ : std_logic;
SIGNAL \ITERF|saidaA[1]~12_combout\ : std_logic;
SIGNAL \dispA1[0]~0_combout\ : std_logic;
SIGNAL \V_SW[14]~input_o\ : std_logic;
SIGNAL \ITERF|saidaA[0]~16_combout\ : std_logic;
SIGNAL \ITERF|saidaA[0]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaA[0]~18_combout\ : std_logic;
SIGNAL \ITERF|saidaA[0]~17_combout\ : std_logic;
SIGNAL \DECOD0|Mux6~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux5~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux4~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux3~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux2~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux1~0_combout\ : std_logic;
SIGNAL \DECOD0|Mux0~0_combout\ : std_logic;
SIGNAL \V_SW[12]~input_o\ : std_logic;
SIGNAL \ITERF|saidaB[3]~1_combout\ : std_logic;
SIGNAL \ITERF|saidaB[3]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ITERF|saidaB[3]~2_combout\ : std_logic;
SIGNAL \V_SW[11]~input_o\ : std_logic;
SIGNAL \ITERF|saidaB[2]~6_combout\ : std_logic;
SIGNAL \ITERF|saidaB[2]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaB[2]~8_combout\ : std_logic;
SIGNAL \ITERF|saidaB[2]~7_combout\ : std_logic;
SIGNAL \V_SW[10]~input_o\ : std_logic;
SIGNAL \ITERF|saidaB[1]~11_combout\ : std_logic;
SIGNAL \ITERF|saidaB[1]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaB[1]~13_combout\ : std_logic;
SIGNAL \ITERF|saidaB[1]~12_combout\ : std_logic;
SIGNAL \dispB1[0]~0_combout\ : std_logic;
SIGNAL \V_SW[9]~input_o\ : std_logic;
SIGNAL \ITERF|saidaB[0]~16_combout\ : std_logic;
SIGNAL \ITERF|saidaB[0]~_emulated_q\ : std_logic;
SIGNAL \ITERF|saidaB[0]~18_combout\ : std_logic;
SIGNAL \ITERF|saidaB[0]~17_combout\ : std_logic;
SIGNAL \DECOD2|Mux6~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux5~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux4~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux3~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux2~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux1~0_combout\ : std_logic;
SIGNAL \DECOD2|Mux0~0_combout\ : std_logic;
SIGNAL \ITERF|operacao~0_combout\ : std_logic;
SIGNAL \ITERF|operacao[2]~1_combout\ : std_logic;
SIGNAL \ITERF|B[3]~1_combout\ : std_logic;
SIGNAL \ITERF|B[3]~_emulated_q\ : std_logic;
SIGNAL \ITERF|B[3]~3_combout\ : std_logic;
SIGNAL \ITERF|B[3]~2_combout\ : std_logic;
SIGNAL \ITERF|operacao~2_combout\ : std_logic;
SIGNAL \ITERF|A[3]~1_combout\ : std_logic;
SIGNAL \ITERF|A[3]~_emulated_q\ : std_logic;
SIGNAL \ITERF|A[3]~3_combout\ : std_logic;
SIGNAL \ITERF|A[3]~2_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux4~0_combout\ : std_logic;
SIGNAL \ITERF|operacao~3_combout\ : std_logic;
SIGNAL \results3[0]~0_combout\ : std_logic;
SIGNAL \ITERF|B[2]~6_combout\ : std_logic;
SIGNAL \ITERF|B[2]~_emulated_q\ : std_logic;
SIGNAL \ITERF|B[2]~8_combout\ : std_logic;
SIGNAL \ITERF|B[2]~7_combout\ : std_logic;
SIGNAL \ITERF|A[2]~6_combout\ : std_logic;
SIGNAL \ITERF|A[2]~_emulated_q\ : std_logic;
SIGNAL \ITERF|A[2]~8_combout\ : std_logic;
SIGNAL \ITERF|A[2]~7_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux5~0_combout\ : std_logic;
SIGNAL \results2[0]~0_combout\ : std_logic;
SIGNAL \ITERF|B[0]~16_combout\ : std_logic;
SIGNAL \ITERF|B[0]~_emulated_q\ : std_logic;
SIGNAL \ITERF|B[0]~18_combout\ : std_logic;
SIGNAL \ITERF|B[0]~17_combout\ : std_logic;
SIGNAL \ITERF|A[0]~16_combout\ : std_logic;
SIGNAL \ITERF|A[0]~_emulated_q\ : std_logic;
SIGNAL \ITERF|A[0]~18_combout\ : std_logic;
SIGNAL \ITERF|A[0]~17_combout\ : std_logic;
SIGNAL \ITERF|A[1]~11_combout\ : std_logic;
SIGNAL \ITERF|A[1]~_emulated_q\ : std_logic;
SIGNAL \ITERF|A[1]~13_combout\ : std_logic;
SIGNAL \ITERF|A[1]~12_combout\ : std_logic;
SIGNAL \ITERF|B[1]~11_combout\ : std_logic;
SIGNAL \ITERF|B[1]~_emulated_q\ : std_logic;
SIGNAL \ITERF|B[1]~13_combout\ : std_logic;
SIGNAL \ITERF|B[1]~12_combout\ : std_logic;
SIGNAL \ITERF|alu|sum|fa2|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sum|fa3|Cout~0_combout\ : std_logic;
SIGNAL \results1[0]~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|cp1|fa3|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|cp1|fa2|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|fa2|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|fa3|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|fa4|Cout~0_combout\ : std_logic;
SIGNAL \results1[0]~1_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~1_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa12|S~4_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa12|S~5_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa12|Cout~3_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa12|Cout~9_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~2_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa13|S~combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~3_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa22|S~combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~4_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~5_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa22|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa13|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa23|S~combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa32|S~combout\ : std_logic;
SIGNAL \results1[0]~6_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux6~0_combout\ : std_logic;
SIGNAL \results1[0]~7_combout\ : std_logic;
SIGNAL \results1[3]~2_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa24|S~2_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~6_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa32|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa23|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa33|S~combout\ : std_logic;
SIGNAL \results1[1]~3_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa33|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|comb~7_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa24|Cout~0_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa34|S~0_combout\ : std_logic;
SIGNAL \results1[2]~4_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa34|Cout~0_combout\ : std_logic;
SIGNAL \results1[3]~5_combout\ : std_logic;
SIGNAL \DECOD5|Mux6~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux5~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux4~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux3~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux2~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux1~0_combout\ : std_logic;
SIGNAL \DECOD5|Mux0~0_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux7~0_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux7~1_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux7~2_combout\ : std_logic;
SIGNAL \results0[1]~0_combout\ : std_logic;
SIGNAL \results0[1]~1_combout\ : std_logic;
SIGNAL \results0[1]~2_combout\ : std_logic;
SIGNAL \results0[1]~3_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa21|S~2_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux5~1_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux5~2_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux5~3_combout\ : std_logic;
SIGNAL \ITERF|alu|Mux5~4_combout\ : std_logic;
SIGNAL \results0[2]~4_combout\ : std_logic;
SIGNAL \ITERF|alu|mult|fa31|S~2_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|fa4|S~combout\ : std_logic;
SIGNAL \ITERF|alu|sum|fa4|S~combout\ : std_logic;
SIGNAL \ITERF|alu|Mux4~1_combout\ : std_logic;
SIGNAL \ITERF|alu|cop2|fa4|S~combout\ : std_logic;
SIGNAL \ITERF|alu|Mux4~2_combout\ : std_logic;
SIGNAL \results0[3]~5_combout\ : std_logic;
SIGNAL \DECOD4|Mux6~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux5~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux4~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux3~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux2~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux1~0_combout\ : std_logic;
SIGNAL \DECOD4|Mux0~0_combout\ : std_logic;
SIGNAL \ITERF|alu|andd|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ITERF|operacao\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DECOD2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DECOD0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ITERF|ALT_INV_saidaA[3]~0_combout\ : std_logic;
SIGNAL \ITERF|ALT_INV_operacao[2]~1_combout\ : std_logic;
SIGNAL \DECOD4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DECOD5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ITERF|alu|sub|fa4|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ITERF|ALT_INV_B[3]~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_V_BT <= V_BT;
ww_V_SW <= V_SW;
G_HEX7 <= ww_G_HEX7;
G_HEX6 <= ww_G_HEX6;
G_HEX5 <= ww_G_HEX5;
G_HEX4 <= ww_G_HEX4;
G_HEX3 <= ww_G_HEX3;
G_HEX2 <= ww_G_HEX2;
G_HEX1 <= ww_G_HEX1;
G_HEX0 <= ww_G_HEX0;
G_LEDG <= ww_G_LEDG;
G_LEDR <= ww_G_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECOD2|ALT_INV_Mux0~0_combout\ <= NOT \DECOD2|Mux0~0_combout\;
\DECOD0|ALT_INV_Mux0~0_combout\ <= NOT \DECOD0|Mux0~0_combout\;
\ITERF|ALT_INV_saidaA[3]~0_combout\ <= NOT \ITERF|saidaA[3]~0_combout\;
\ITERF|ALT_INV_operacao[2]~1_combout\ <= NOT \ITERF|operacao[2]~1_combout\;
\DECOD4|ALT_INV_Mux0~0_combout\ <= NOT \DECOD4|Mux0~0_combout\;
\DECOD5|ALT_INV_Mux0~0_combout\ <= NOT \DECOD5|Mux0~0_combout\;
\ITERF|alu|sub|fa4|ALT_INV_Cout~0_combout\ <= NOT \ITERF|alu|sub|fa4|Cout~0_combout\;
\ITERF|ALT_INV_B[3]~0_combout\ <= NOT \ITERF|B[3]~0_combout\;

\G_HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[0]~output_o\);

\G_HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX7[1]~output_o\);

\G_HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX7[2]~output_o\);

\G_HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[3]~output_o\);

\G_HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[4]~output_o\);

\G_HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispA1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[5]~output_o\);

\G_HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX7[6]~output_o\);

\G_HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[0]~output_o\);

\G_HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[1]~output_o\);

\G_HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[2]~output_o\);

\G_HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[3]~output_o\);

\G_HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[4]~output_o\);

\G_HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[5]~output_o\);

\G_HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[6]~output_o\);

\G_HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[0]~output_o\);

\G_HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX5[1]~output_o\);

\G_HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX5[2]~output_o\);

\G_HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[3]~output_o\);

\G_HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[4]~output_o\);

\G_HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispB1[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[5]~output_o\);

\G_HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX5[6]~output_o\);

\G_HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[0]~output_o\);

\G_HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[1]~output_o\);

\G_HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[2]~output_o\);

\G_HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[3]~output_o\);

\G_HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[4]~output_o\);

\G_HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[5]~output_o\);

\G_HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[6]~output_o\);

\G_HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results3[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX3[0]~output_o\);

\G_HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX3[1]~output_o\);

\G_HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX3[2]~output_o\);

\G_HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results3[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX3[3]~output_o\);

\G_HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results3[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX3[4]~output_o\);

\G_HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results3[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX3[5]~output_o\);

\G_HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX3[6]~output_o\);

\G_HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results2[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[0]~output_o\);

\G_HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX2[1]~output_o\);

\G_HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX2[2]~output_o\);

\G_HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results2[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[3]~output_o\);

\G_HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results2[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[4]~output_o\);

\G_HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \results2[0]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[5]~output_o\);

\G_HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX2[6]~output_o\);

\G_HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[0]~output_o\);

\G_HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[1]~output_o\);

\G_HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[2]~output_o\);

\G_HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[3]~output_o\);

\G_HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[4]~output_o\);

\G_HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[5]~output_o\);

\G_HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[6]~output_o\);

\G_HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[0]~output_o\);

\G_HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[1]~output_o\);

\G_HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[2]~output_o\);

\G_HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[3]~output_o\);

\G_HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[4]~output_o\);

\G_HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[5]~output_o\);

\G_HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[6]~output_o\);

\G_LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ITERF|alu|sub|fa4|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[0]~output_o\);

\G_LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ITERF|operacao\(0),
	devoe => ww_devoe,
	o => \G_LEDR[0]~output_o\);

\G_LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ITERF|operacao\(1),
	devoe => ww_devoe,
	o => \G_LEDR[1]~output_o\);

\G_LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ITERF|operacao\(2),
	devoe => ww_devoe,
	o => \G_LEDR[2]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\V_BT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(0),
	o => \V_BT[0]~input_o\);

\DIVfreq|divisor2:cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~0_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[0]~q\);

\DIVfreq|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~0_combout\ = \DIVfreq|divisor2:cont[0]~q\ $ (VCC)
-- \DIVfreq|Add0~1\ = CARRY(\DIVfreq|divisor2:cont[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[0]~q\,
	datad => VCC,
	combout => \DIVfreq|Add0~0_combout\,
	cout => \DIVfreq|Add0~1\);

\DIVfreq|divisor2:cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~2_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[1]~q\);

\DIVfreq|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~2_combout\ = (\DIVfreq|divisor2:cont[1]~q\ & (!\DIVfreq|Add0~1\)) # (!\DIVfreq|divisor2:cont[1]~q\ & ((\DIVfreq|Add0~1\) # (GND)))
-- \DIVfreq|Add0~3\ = CARRY((!\DIVfreq|Add0~1\) # (!\DIVfreq|divisor2:cont[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[1]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~1\,
	combout => \DIVfreq|Add0~2_combout\,
	cout => \DIVfreq|Add0~3\);

\DIVfreq|divisor2:cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~4_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[2]~q\);

\DIVfreq|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~4_combout\ = (\DIVfreq|divisor2:cont[2]~q\ & (\DIVfreq|Add0~3\ $ (GND))) # (!\DIVfreq|divisor2:cont[2]~q\ & (!\DIVfreq|Add0~3\ & VCC))
-- \DIVfreq|Add0~5\ = CARRY((\DIVfreq|divisor2:cont[2]~q\ & !\DIVfreq|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[2]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~3\,
	combout => \DIVfreq|Add0~4_combout\,
	cout => \DIVfreq|Add0~5\);

\DIVfreq|divisor2:cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~6_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[3]~q\);

\DIVfreq|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~6_combout\ = (\DIVfreq|divisor2:cont[3]~q\ & (!\DIVfreq|Add0~5\)) # (!\DIVfreq|divisor2:cont[3]~q\ & ((\DIVfreq|Add0~5\) # (GND)))
-- \DIVfreq|Add0~7\ = CARRY((!\DIVfreq|Add0~5\) # (!\DIVfreq|divisor2:cont[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[3]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~5\,
	combout => \DIVfreq|Add0~6_combout\,
	cout => \DIVfreq|Add0~7\);

\DIVfreq|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~0_combout\ = (!\DIVfreq|Add0~0_combout\ & (!\DIVfreq|Add0~2_combout\ & (!\DIVfreq|Add0~4_combout\ & !\DIVfreq|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~0_combout\,
	datab => \DIVfreq|Add0~2_combout\,
	datac => \DIVfreq|Add0~4_combout\,
	datad => \DIVfreq|Add0~6_combout\,
	combout => \DIVfreq|Equal0~0_combout\);

\DIVfreq|divisor2:cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~46_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[23]~q\);

\DIVfreq|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~8_combout\ = (\DIVfreq|divisor2:cont[4]~q\ & (\DIVfreq|Add0~7\ $ (GND))) # (!\DIVfreq|divisor2:cont[4]~q\ & (!\DIVfreq|Add0~7\ & VCC))
-- \DIVfreq|Add0~9\ = CARRY((\DIVfreq|divisor2:cont[4]~q\ & !\DIVfreq|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[4]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~7\,
	combout => \DIVfreq|Add0~8_combout\,
	cout => \DIVfreq|Add0~9\);

\DIVfreq|divisor2:cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~8_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[4]~q\);

\DIVfreq|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~10_combout\ = (\DIVfreq|divisor2:cont[5]~q\ & (!\DIVfreq|Add0~9\)) # (!\DIVfreq|divisor2:cont[5]~q\ & ((\DIVfreq|Add0~9\) # (GND)))
-- \DIVfreq|Add0~11\ = CARRY((!\DIVfreq|Add0~9\) # (!\DIVfreq|divisor2:cont[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[5]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~9\,
	combout => \DIVfreq|Add0~10_combout\,
	cout => \DIVfreq|Add0~11\);

\DIVfreq|divisor2:cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~10_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[5]~q\);

\DIVfreq|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~12_combout\ = (\DIVfreq|divisor2:cont[6]~q\ & (\DIVfreq|Add0~11\ $ (GND))) # (!\DIVfreq|divisor2:cont[6]~q\ & (!\DIVfreq|Add0~11\ & VCC))
-- \DIVfreq|Add0~13\ = CARRY((\DIVfreq|divisor2:cont[6]~q\ & !\DIVfreq|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[6]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~11\,
	combout => \DIVfreq|Add0~12_combout\,
	cout => \DIVfreq|Add0~13\);

\DIVfreq|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~14_combout\ = (\DIVfreq|divisor2:cont[7]~q\ & (!\DIVfreq|Add0~13\)) # (!\DIVfreq|divisor2:cont[7]~q\ & ((\DIVfreq|Add0~13\) # (GND)))
-- \DIVfreq|Add0~15\ = CARRY((!\DIVfreq|Add0~13\) # (!\DIVfreq|divisor2:cont[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[7]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~13\,
	combout => \DIVfreq|Add0~14_combout\,
	cout => \DIVfreq|Add0~15\);

\DIVfreq|divisor2:cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~14_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[7]~q\);

\DIVfreq|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~16_combout\ = (\DIVfreq|divisor2:cont[8]~q\ & (\DIVfreq|Add0~15\ $ (GND))) # (!\DIVfreq|divisor2:cont[8]~q\ & (!\DIVfreq|Add0~15\ & VCC))
-- \DIVfreq|Add0~17\ = CARRY((\DIVfreq|divisor2:cont[8]~q\ & !\DIVfreq|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[8]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~15\,
	combout => \DIVfreq|Add0~16_combout\,
	cout => \DIVfreq|Add0~17\);

\DIVfreq|divisor2:cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~16_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[8]~q\);

\DIVfreq|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~18_combout\ = (\DIVfreq|divisor2:cont[9]~q\ & (!\DIVfreq|Add0~17\)) # (!\DIVfreq|divisor2:cont[9]~q\ & ((\DIVfreq|Add0~17\) # (GND)))
-- \DIVfreq|Add0~19\ = CARRY((!\DIVfreq|Add0~17\) # (!\DIVfreq|divisor2:cont[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[9]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~17\,
	combout => \DIVfreq|Add0~18_combout\,
	cout => \DIVfreq|Add0~19\);

\DIVfreq|divisor2:cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~18_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[9]~q\);

\DIVfreq|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~20_combout\ = (\DIVfreq|divisor2:cont[10]~q\ & (\DIVfreq|Add0~19\ $ (GND))) # (!\DIVfreq|divisor2:cont[10]~q\ & (!\DIVfreq|Add0~19\ & VCC))
-- \DIVfreq|Add0~21\ = CARRY((\DIVfreq|divisor2:cont[10]~q\ & !\DIVfreq|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[10]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~19\,
	combout => \DIVfreq|Add0~20_combout\,
	cout => \DIVfreq|Add0~21\);

\DIVfreq|divisor2:cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~20_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[10]~q\);

\DIVfreq|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~22_combout\ = (\DIVfreq|divisor2:cont[11]~q\ & (!\DIVfreq|Add0~21\)) # (!\DIVfreq|divisor2:cont[11]~q\ & ((\DIVfreq|Add0~21\) # (GND)))
-- \DIVfreq|Add0~23\ = CARRY((!\DIVfreq|Add0~21\) # (!\DIVfreq|divisor2:cont[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[11]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~21\,
	combout => \DIVfreq|Add0~22_combout\,
	cout => \DIVfreq|Add0~23\);

\DIVfreq|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~4_combout\ = (\DIVfreq|Add0~22_combout\ & (((!\DIVfreq|Equal0~7_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~22_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|cont~4_combout\);

\DIVfreq|divisor2:cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~4_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[11]~q\);

\DIVfreq|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~24_combout\ = (\DIVfreq|divisor2:cont[12]~q\ & (\DIVfreq|Add0~23\ $ (GND))) # (!\DIVfreq|divisor2:cont[12]~q\ & (!\DIVfreq|Add0~23\ & VCC))
-- \DIVfreq|Add0~25\ = CARRY((\DIVfreq|divisor2:cont[12]~q\ & !\DIVfreq|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[12]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~23\,
	combout => \DIVfreq|Add0~24_combout\,
	cout => \DIVfreq|Add0~25\);

\DIVfreq|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~5_combout\ = (\DIVfreq|Add0~24_combout\ & (((!\DIVfreq|cont~2_combout\) # (!\DIVfreq|Equal0~6_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~4_combout\,
	datab => \DIVfreq|Equal0~6_combout\,
	datac => \DIVfreq|Add0~24_combout\,
	datad => \DIVfreq|cont~2_combout\,
	combout => \DIVfreq|cont~5_combout\);

\DIVfreq|divisor2:cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~5_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[12]~q\);

\DIVfreq|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~26_combout\ = (\DIVfreq|divisor2:cont[13]~q\ & (!\DIVfreq|Add0~25\)) # (!\DIVfreq|divisor2:cont[13]~q\ & ((\DIVfreq|Add0~25\) # (GND)))
-- \DIVfreq|Add0~27\ = CARRY((!\DIVfreq|Add0~25\) # (!\DIVfreq|divisor2:cont[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[13]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~25\,
	combout => \DIVfreq|Add0~26_combout\,
	cout => \DIVfreq|Add0~27\);

\DIVfreq|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~6_combout\ = (\DIVfreq|Add0~26_combout\ & (((!\DIVfreq|Equal0~7_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~26_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|cont~6_combout\);

\DIVfreq|divisor2:cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~6_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[13]~q\);

\DIVfreq|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~28_combout\ = (\DIVfreq|divisor2:cont[14]~q\ & (\DIVfreq|Add0~27\ $ (GND))) # (!\DIVfreq|divisor2:cont[14]~q\ & (!\DIVfreq|Add0~27\ & VCC))
-- \DIVfreq|Add0~29\ = CARRY((\DIVfreq|divisor2:cont[14]~q\ & !\DIVfreq|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[14]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~27\,
	combout => \DIVfreq|Add0~28_combout\,
	cout => \DIVfreq|Add0~29\);

\DIVfreq|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~7_combout\ = (\DIVfreq|Add0~28_combout\ & (((!\DIVfreq|Equal0~7_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~28_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|cont~7_combout\);

\DIVfreq|divisor2:cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~7_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[14]~q\);

\DIVfreq|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~30_combout\ = (\DIVfreq|divisor2:cont[15]~q\ & (!\DIVfreq|Add0~29\)) # (!\DIVfreq|divisor2:cont[15]~q\ & ((\DIVfreq|Add0~29\) # (GND)))
-- \DIVfreq|Add0~31\ = CARRY((!\DIVfreq|Add0~29\) # (!\DIVfreq|divisor2:cont[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[15]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~29\,
	combout => \DIVfreq|Add0~30_combout\,
	cout => \DIVfreq|Add0~31\);

\DIVfreq|divisor2:cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~30_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[15]~q\);

\DIVfreq|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~32_combout\ = (\DIVfreq|divisor2:cont[16]~q\ & (\DIVfreq|Add0~31\ $ (GND))) # (!\DIVfreq|divisor2:cont[16]~q\ & (!\DIVfreq|Add0~31\ & VCC))
-- \DIVfreq|Add0~33\ = CARRY((\DIVfreq|divisor2:cont[16]~q\ & !\DIVfreq|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[16]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~31\,
	combout => \DIVfreq|Add0~32_combout\,
	cout => \DIVfreq|Add0~33\);

\DIVfreq|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~34_combout\ = (\DIVfreq|divisor2:cont[17]~q\ & (!\DIVfreq|Add0~33\)) # (!\DIVfreq|divisor2:cont[17]~q\ & ((\DIVfreq|Add0~33\) # (GND)))
-- \DIVfreq|Add0~35\ = CARRY((!\DIVfreq|Add0~33\) # (!\DIVfreq|divisor2:cont[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[17]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~33\,
	combout => \DIVfreq|Add0~34_combout\,
	cout => \DIVfreq|Add0~35\);

\DIVfreq|divisor2:cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|Add0~34_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[17]~q\);

\DIVfreq|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~36_combout\ = (\DIVfreq|divisor2:cont[18]~q\ & (\DIVfreq|Add0~35\ $ (GND))) # (!\DIVfreq|divisor2:cont[18]~q\ & (!\DIVfreq|Add0~35\ & VCC))
-- \DIVfreq|Add0~37\ = CARRY((\DIVfreq|divisor2:cont[18]~q\ & !\DIVfreq|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[18]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~35\,
	combout => \DIVfreq|Add0~36_combout\,
	cout => \DIVfreq|Add0~37\);

\DIVfreq|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~9_combout\ = (\DIVfreq|Add0~36_combout\ & (((!\DIVfreq|cont~2_combout\) # (!\DIVfreq|Equal0~6_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~4_combout\,
	datab => \DIVfreq|Equal0~6_combout\,
	datac => \DIVfreq|Add0~36_combout\,
	datad => \DIVfreq|cont~2_combout\,
	combout => \DIVfreq|cont~9_combout\);

\DIVfreq|divisor2:cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~9_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[18]~q\);

\DIVfreq|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~38_combout\ = (\DIVfreq|divisor2:cont[19]~q\ & (!\DIVfreq|Add0~37\)) # (!\DIVfreq|divisor2:cont[19]~q\ & ((\DIVfreq|Add0~37\) # (GND)))
-- \DIVfreq|Add0~39\ = CARRY((!\DIVfreq|Add0~37\) # (!\DIVfreq|divisor2:cont[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[19]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~37\,
	combout => \DIVfreq|Add0~38_combout\,
	cout => \DIVfreq|Add0~39\);

\DIVfreq|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~10_combout\ = (\DIVfreq|Add0~38_combout\ & (((!\DIVfreq|cont~2_combout\) # (!\DIVfreq|Equal0~6_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~4_combout\,
	datab => \DIVfreq|Equal0~6_combout\,
	datac => \DIVfreq|Add0~38_combout\,
	datad => \DIVfreq|cont~2_combout\,
	combout => \DIVfreq|cont~10_combout\);

\DIVfreq|divisor2:cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~10_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[19]~q\);

\DIVfreq|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~40_combout\ = (\DIVfreq|divisor2:cont[20]~q\ & (\DIVfreq|Add0~39\ $ (GND))) # (!\DIVfreq|divisor2:cont[20]~q\ & (!\DIVfreq|Add0~39\ & VCC))
-- \DIVfreq|Add0~41\ = CARRY((\DIVfreq|divisor2:cont[20]~q\ & !\DIVfreq|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[20]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~39\,
	combout => \DIVfreq|Add0~40_combout\,
	cout => \DIVfreq|Add0~41\);

\DIVfreq|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~42_combout\ = (\DIVfreq|divisor2:cont[21]~q\ & (!\DIVfreq|Add0~41\)) # (!\DIVfreq|divisor2:cont[21]~q\ & ((\DIVfreq|Add0~41\) # (GND)))
-- \DIVfreq|Add0~43\ = CARRY((!\DIVfreq|Add0~41\) # (!\DIVfreq|divisor2:cont[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[21]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~41\,
	combout => \DIVfreq|Add0~42_combout\,
	cout => \DIVfreq|Add0~43\);

\DIVfreq|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~44_combout\ = (\DIVfreq|divisor2:cont[22]~q\ & (\DIVfreq|Add0~43\ $ (GND))) # (!\DIVfreq|divisor2:cont[22]~q\ & (!\DIVfreq|Add0~43\ & VCC))
-- \DIVfreq|Add0~45\ = CARRY((\DIVfreq|divisor2:cont[22]~q\ & !\DIVfreq|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[22]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~43\,
	combout => \DIVfreq|Add0~44_combout\,
	cout => \DIVfreq|Add0~45\);

\DIVfreq|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~46_combout\ = (\DIVfreq|divisor2:cont[23]~q\ & (!\DIVfreq|Add0~45\)) # (!\DIVfreq|divisor2:cont[23]~q\ & ((\DIVfreq|Add0~45\) # (GND)))
-- \DIVfreq|Add0~47\ = CARRY((!\DIVfreq|Add0~45\) # (!\DIVfreq|divisor2:cont[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[23]~q\,
	datad => VCC,
	cin => \DIVfreq|Add0~45\,
	combout => \DIVfreq|Add0~46_combout\,
	cout => \DIVfreq|Add0~47\);

\DIVfreq|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~7_combout\ = (\DIVfreq|Add0~44_combout\ & (\DIVfreq|Add0~48_combout\ & (\DIVfreq|Equal0~6_combout\ & !\DIVfreq|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~44_combout\,
	datab => \DIVfreq|Add0~48_combout\,
	datac => \DIVfreq|Equal0~6_combout\,
	datad => \DIVfreq|Add0~46_combout\,
	combout => \DIVfreq|Equal0~7_combout\);

\DIVfreq|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~12_combout\ = (\DIVfreq|Add0~42_combout\ & (((!\DIVfreq|Equal0~7_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~42_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|cont~12_combout\);

\DIVfreq|divisor2:cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~12_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[21]~q\);

\DIVfreq|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~8_combout\ = (\DIVfreq|Add0~40_combout\ & (\DIVfreq|Add0~42_combout\ & (\DIVfreq|Add0~44_combout\ & !\DIVfreq|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~40_combout\,
	datab => \DIVfreq|Add0~42_combout\,
	datac => \DIVfreq|Add0~44_combout\,
	datad => \DIVfreq|Add0~46_combout\,
	combout => \DIVfreq|Equal0~8_combout\);

\DIVfreq|cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~14_combout\ = (\DIVfreq|Add0~48_combout\ & (((!\DIVfreq|Equal0~8_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~48_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~8_combout\,
	combout => \DIVfreq|cont~14_combout\);

\DIVfreq|divisor2:cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~14_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[24]~q\);

\DIVfreq|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Add0~48_combout\ = \DIVfreq|divisor2:cont[24]~q\ $ (!\DIVfreq|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|divisor2:cont[24]~q\,
	cin => \DIVfreq|Add0~47\,
	combout => \DIVfreq|Add0~48_combout\);

\DIVfreq|cont~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~15_combout\ = (((!\DIVfreq|Equal0~5_combout\) # (!\DIVfreq|Equal0~4_combout\)) # (!\DIVfreq|Add0~42_combout\)) # (!\DIVfreq|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~40_combout\,
	datab => \DIVfreq|Add0~42_combout\,
	datac => \DIVfreq|Equal0~4_combout\,
	datad => \DIVfreq|Equal0~5_combout\,
	combout => \DIVfreq|cont~15_combout\);

\DIVfreq|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~11_combout\ = (\DIVfreq|Add0~44_combout\ & (((\DIVfreq|Add0~46_combout\) # (\DIVfreq|cont~15_combout\)) # (!\DIVfreq|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~44_combout\,
	datab => \DIVfreq|Add0~48_combout\,
	datac => \DIVfreq|Add0~46_combout\,
	datad => \DIVfreq|cont~15_combout\,
	combout => \DIVfreq|cont~11_combout\);

\DIVfreq|divisor2:cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~11_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[22]~q\);

\DIVfreq|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~2_combout\ = (\DIVfreq|Equal0~5_combout\ & (\DIVfreq|Add0~44_combout\ & (!\DIVfreq|Add0~46_combout\ & \DIVfreq|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~5_combout\,
	datab => \DIVfreq|Add0~44_combout\,
	datac => \DIVfreq|Add0~46_combout\,
	datad => \DIVfreq|Add0~48_combout\,
	combout => \DIVfreq|cont~2_combout\);

\DIVfreq|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~8_combout\ = (\DIVfreq|Add0~32_combout\ & (((!\DIVfreq|cont~2_combout\) # (!\DIVfreq|Equal0~6_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~4_combout\,
	datab => \DIVfreq|Equal0~6_combout\,
	datac => \DIVfreq|Add0~32_combout\,
	datad => \DIVfreq|cont~2_combout\,
	combout => \DIVfreq|cont~8_combout\);

\DIVfreq|divisor2:cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~8_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[16]~q\);

\DIVfreq|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~5_combout\ = (\DIVfreq|Add0~32_combout\ & (\DIVfreq|Add0~36_combout\ & (\DIVfreq|Add0~38_combout\ & !\DIVfreq|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~32_combout\,
	datab => \DIVfreq|Add0~36_combout\,
	datac => \DIVfreq|Add0~38_combout\,
	datad => \DIVfreq|Add0~34_combout\,
	combout => \DIVfreq|Equal0~5_combout\);

\DIVfreq|cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~13_combout\ = (\DIVfreq|Add0~40_combout\ & (((!\DIVfreq|Equal0~7_combout\) # (!\DIVfreq|Equal0~5_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~40_combout\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|cont~13_combout\);

\DIVfreq|divisor2:cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~13_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[20]~q\);

\DIVfreq|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~6_combout\ = (\DIVfreq|Add0~40_combout\ & \DIVfreq|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~40_combout\,
	datab => \DIVfreq|Add0~42_combout\,
	combout => \DIVfreq|Equal0~6_combout\);

\DIVfreq|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|cont~3_combout\ = (\DIVfreq|Add0~12_combout\ & (((!\DIVfreq|cont~2_combout\) # (!\DIVfreq|Equal0~6_combout\)) # (!\DIVfreq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~4_combout\,
	datab => \DIVfreq|Equal0~6_combout\,
	datac => \DIVfreq|Add0~12_combout\,
	datad => \DIVfreq|cont~2_combout\,
	combout => \DIVfreq|cont~3_combout\);

\DIVfreq|divisor2:cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|cont~3_combout\,
	ena => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|divisor2:cont[6]~q\);

\DIVfreq|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~1_combout\ = (\DIVfreq|Add0~12_combout\ & (!\DIVfreq|Add0~8_combout\ & (!\DIVfreq|Add0~10_combout\ & !\DIVfreq|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~12_combout\,
	datab => \DIVfreq|Add0~8_combout\,
	datac => \DIVfreq|Add0~10_combout\,
	datad => \DIVfreq|Add0~14_combout\,
	combout => \DIVfreq|Equal0~1_combout\);

\DIVfreq|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~2_combout\ = (\DIVfreq|Add0~22_combout\ & (!\DIVfreq|Add0~16_combout\ & (!\DIVfreq|Add0~18_combout\ & !\DIVfreq|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~22_combout\,
	datab => \DIVfreq|Add0~16_combout\,
	datac => \DIVfreq|Add0~18_combout\,
	datad => \DIVfreq|Add0~20_combout\,
	combout => \DIVfreq|Equal0~2_combout\);

\DIVfreq|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~3_combout\ = (\DIVfreq|Add0~24_combout\ & (\DIVfreq|Add0~26_combout\ & (\DIVfreq|Add0~28_combout\ & !\DIVfreq|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Add0~24_combout\,
	datab => \DIVfreq|Add0~26_combout\,
	datac => \DIVfreq|Add0~28_combout\,
	datad => \DIVfreq|Add0~30_combout\,
	combout => \DIVfreq|Equal0~3_combout\);

\DIVfreq|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|Equal0~4_combout\ = (\DIVfreq|Equal0~0_combout\ & (\DIVfreq|Equal0~1_combout\ & (\DIVfreq|Equal0~2_combout\ & \DIVfreq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|Equal0~0_combout\,
	datab => \DIVfreq|Equal0~1_combout\,
	datac => \DIVfreq|Equal0~2_combout\,
	datad => \DIVfreq|Equal0~3_combout\,
	combout => \DIVfreq|Equal0~4_combout\);

\DIVfreq|ck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIVfreq|ck~0_combout\ = \DIVfreq|ck~q\ $ (((\DIVfreq|Equal0~4_combout\ & (\DIVfreq|Equal0~5_combout\ & \DIVfreq|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVfreq|ck~q\,
	datab => \DIVfreq|Equal0~4_combout\,
	datac => \DIVfreq|Equal0~5_combout\,
	datad => \DIVfreq|Equal0~7_combout\,
	combout => \DIVfreq|ck~0_combout\);

\DIVfreq|ck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \DIVfreq|ck~0_combout\,
	clrn => \V_BT[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIVfreq|ck~q\);

\V_SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(17),
	o => \V_SW[17]~input_o\);

\ITERF|init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|init~0_combout\ = (\ITERF|init~q\) # ((\V_BT[0]~input_o\ & \ITERF|estado~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_BT[0]~input_o\,
	datac => \ITERF|estado~2_combout\,
	datad => \ITERF|init~q\,
	combout => \ITERF|init~0_combout\);

\ITERF|init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|init~q\);

\V_BT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(1),
	o => \V_BT[1]~input_o\);

\ITERF|estado~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|estado~9_combout\ = (\V_BT[0]~input_o\ & (!\ITERF|estado~2_combout\ & !\V_BT[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \ITERF|estado~2_combout\,
	datac => \V_BT[1]~input_o\,
	combout => \ITERF|estado~9_combout\);

\ITERF|estado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|estado~1_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~1_combout\) # (\ITERF|estado~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ITERF|estado~1_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|estado~1_combout\);

\ITERF|estado~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|estado~3_combout\ = \ITERF|estado~1_combout\ $ (((\ITERF|init~q\ & \ITERF|estado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|init~q\,
	datab => \ITERF|estado~2_combout\,
	datac => \ITERF|estado~1_combout\,
	combout => \ITERF|estado~3_combout\);

\ITERF|B[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[3]~0_combout\ = (\ITERF|estado~9_combout\) # (!\V_BT[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \ITERF|estado~9_combout\,
	combout => \ITERF|B[3]~0_combout\);

\ITERF|estado~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|estado~3_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|estado~_emulated_q\);

\ITERF|estado~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|estado~2_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\) # (\ITERF|estado~_emulated_q\ $ (\ITERF|estado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|estado~_emulated_q\,
	datab => \ITERF|estado~1_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|estado~2_combout\);

\ITERF|saidaA[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~26_combout\ = (\V_BT[0]~input_o\ & !\ITERF|estado~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datad => \ITERF|estado~2_combout\,
	combout => \ITERF|saidaA[3]~26_combout\);

\ITERF|saidaA[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~1_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[17]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaA[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[17]~input_o\,
	datab => \ITERF|saidaA[3]~1_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[3]~1_combout\);

\ITERF|saidaA[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~0_combout\ = (\ITERF|saidaA[3]~26_combout\) # (!\V_BT[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \ITERF|saidaA[3]~26_combout\,
	combout => \ITERF|saidaA[3]~0_combout\);

\ITERF|saidaA[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~25_combout\ = (\ITERF|estado~2_combout\ & !\ITERF|init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|estado~2_combout\,
	datad => \ITERF|init~q\,
	combout => \ITERF|saidaA[3]~25_combout\);

\ITERF|saidaA[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaA[3]~1_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaA[3]~_emulated_q\);

\ITERF|saidaA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~3_combout\ = \ITERF|saidaA[3]~_emulated_q\ $ (\ITERF|saidaA[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[3]~_emulated_q\,
	datab => \ITERF|saidaA[3]~1_combout\,
	combout => \ITERF|saidaA[3]~3_combout\);

\ITERF|saidaA[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[3]~2_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[17]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaA[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[3]~3_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[17]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[3]~2_combout\);

\V_SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(16),
	o => \V_SW[16]~input_o\);

\ITERF|saidaA[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[2]~6_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[16]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaA[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[16]~input_o\,
	datab => \ITERF|saidaA[2]~6_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[2]~6_combout\);

\ITERF|saidaA[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaA[2]~6_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaA[2]~_emulated_q\);

\ITERF|saidaA[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[2]~8_combout\ = \ITERF|saidaA[2]~_emulated_q\ $ (\ITERF|saidaA[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~_emulated_q\,
	datab => \ITERF|saidaA[2]~6_combout\,
	combout => \ITERF|saidaA[2]~8_combout\);

\ITERF|saidaA[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[2]~7_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[16]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaA[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~8_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[16]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[2]~7_combout\);

\V_SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(15),
	o => \V_SW[15]~input_o\);

\ITERF|saidaA[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[1]~11_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[15]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaA[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[15]~input_o\,
	datab => \ITERF|saidaA[1]~11_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[1]~11_combout\);

\ITERF|saidaA[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaA[1]~11_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaA[1]~_emulated_q\);

\ITERF|saidaA[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[1]~13_combout\ = \ITERF|saidaA[1]~_emulated_q\ $ (\ITERF|saidaA[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[1]~_emulated_q\,
	datab => \ITERF|saidaA[1]~11_combout\,
	combout => \ITERF|saidaA[1]~13_combout\);

\ITERF|saidaA[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[1]~12_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[15]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaA[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[1]~13_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[15]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[1]~12_combout\);

\dispA1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispA1[0]~0_combout\ = (\ITERF|saidaA[3]~2_combout\ & ((\ITERF|saidaA[2]~7_combout\) # (\ITERF|saidaA[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[3]~2_combout\,
	datab => \ITERF|saidaA[2]~7_combout\,
	datac => \ITERF|saidaA[1]~12_combout\,
	combout => \dispA1[0]~0_combout\);

\V_SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(14),
	o => \V_SW[14]~input_o\);

\ITERF|saidaA[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[0]~16_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[14]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaA[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[14]~input_o\,
	datab => \ITERF|saidaA[0]~16_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[0]~16_combout\);

\ITERF|saidaA[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaA[0]~16_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaA[0]~_emulated_q\);

\ITERF|saidaA[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[0]~18_combout\ = \ITERF|saidaA[0]~_emulated_q\ $ (\ITERF|saidaA[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[0]~_emulated_q\,
	datab => \ITERF|saidaA[0]~16_combout\,
	combout => \ITERF|saidaA[0]~18_combout\);

\ITERF|saidaA[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaA[0]~17_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[14]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaA[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[0]~18_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[14]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaA[0]~17_combout\);

\DECOD0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux6~0_combout\ = (\ITERF|saidaA[2]~7_combout\ & (!\ITERF|saidaA[0]~17_combout\ & (\ITERF|saidaA[1]~12_combout\ $ (!\ITERF|saidaA[3]~2_combout\)))) # (!\ITERF|saidaA[2]~7_combout\ & (\ITERF|saidaA[0]~17_combout\ & (\ITERF|saidaA[1]~12_combout\ $ 
-- (!\ITERF|saidaA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux6~0_combout\);

\DECOD0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux5~0_combout\ = (\ITERF|saidaA[2]~7_combout\ & ((\ITERF|saidaA[1]~12_combout\ & (\ITERF|saidaA[3]~2_combout\ $ (!\ITERF|saidaA[0]~17_combout\))) # (!\ITERF|saidaA[1]~12_combout\ & (!\ITERF|saidaA[3]~2_combout\ & \ITERF|saidaA[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux5~0_combout\);

\DECOD0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux4~0_combout\ = (!\ITERF|saidaA[0]~17_combout\ & ((\ITERF|saidaA[2]~7_combout\ & (!\ITERF|saidaA[1]~12_combout\ & \ITERF|saidaA[3]~2_combout\)) # (!\ITERF|saidaA[2]~7_combout\ & (\ITERF|saidaA[1]~12_combout\ & !\ITERF|saidaA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux4~0_combout\);

\DECOD0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux3~0_combout\ = (\ITERF|saidaA[0]~17_combout\ & (\ITERF|saidaA[2]~7_combout\ $ (((\ITERF|saidaA[3]~2_combout\) # (!\ITERF|saidaA[1]~12_combout\))))) # (!\ITERF|saidaA[0]~17_combout\ & (\ITERF|saidaA[2]~7_combout\ & (\ITERF|saidaA[1]~12_combout\ 
-- $ (!\ITERF|saidaA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux3~0_combout\);

\DECOD0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux2~0_combout\ = (\ITERF|saidaA[0]~17_combout\) # ((\ITERF|saidaA[2]~7_combout\ & (\ITERF|saidaA[1]~12_combout\ $ (!\ITERF|saidaA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux2~0_combout\);

\DECOD0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux1~0_combout\ = (\ITERF|saidaA[2]~7_combout\ & ((\ITERF|saidaA[1]~12_combout\ & (!\ITERF|saidaA[3]~2_combout\ & \ITERF|saidaA[0]~17_combout\)) # (!\ITERF|saidaA[1]~12_combout\ & (\ITERF|saidaA[3]~2_combout\)))) # (!\ITERF|saidaA[2]~7_combout\ & 
-- ((\ITERF|saidaA[1]~12_combout\ & ((\ITERF|saidaA[0]~17_combout\) # (!\ITERF|saidaA[3]~2_combout\))) # (!\ITERF|saidaA[1]~12_combout\ & (!\ITERF|saidaA[3]~2_combout\ & \ITERF|saidaA[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux1~0_combout\);

\DECOD0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD0|Mux0~0_combout\ = (\ITERF|saidaA[2]~7_combout\ & (((\ITERF|saidaA[3]~2_combout\) # (!\ITERF|saidaA[0]~17_combout\)) # (!\ITERF|saidaA[1]~12_combout\))) # (!\ITERF|saidaA[2]~7_combout\ & (\ITERF|saidaA[1]~12_combout\ $ 
-- ((\ITERF|saidaA[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaA[2]~7_combout\,
	datab => \ITERF|saidaA[1]~12_combout\,
	datac => \ITERF|saidaA[3]~2_combout\,
	datad => \ITERF|saidaA[0]~17_combout\,
	combout => \DECOD0|Mux0~0_combout\);

\V_SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(12),
	o => \V_SW[12]~input_o\);

\ITERF|saidaB[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[3]~1_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[12]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaB[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[12]~input_o\,
	datab => \ITERF|saidaB[3]~1_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[3]~1_combout\);

\ITERF|saidaB[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaB[3]~1_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaB[3]~_emulated_q\);

\ITERF|saidaB[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[3]~3_combout\ = \ITERF|saidaB[3]~_emulated_q\ $ (\ITERF|saidaB[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[3]~_emulated_q\,
	datab => \ITERF|saidaB[3]~1_combout\,
	combout => \ITERF|saidaB[3]~3_combout\);

\ITERF|saidaB[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[3]~2_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[12]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaB[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[3]~3_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[12]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[3]~2_combout\);

\V_SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(11),
	o => \V_SW[11]~input_o\);

\ITERF|saidaB[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[2]~6_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[11]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaB[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[11]~input_o\,
	datab => \ITERF|saidaB[2]~6_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[2]~6_combout\);

\ITERF|saidaB[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaB[2]~6_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaB[2]~_emulated_q\);

\ITERF|saidaB[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[2]~8_combout\ = \ITERF|saidaB[2]~_emulated_q\ $ (\ITERF|saidaB[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~_emulated_q\,
	datab => \ITERF|saidaB[2]~6_combout\,
	combout => \ITERF|saidaB[2]~8_combout\);

\ITERF|saidaB[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[2]~7_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[11]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaB[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~8_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[11]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[2]~7_combout\);

\V_SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(10),
	o => \V_SW[10]~input_o\);

\ITERF|saidaB[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[1]~11_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[10]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaB[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \ITERF|saidaB[1]~11_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[1]~11_combout\);

\ITERF|saidaB[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaB[1]~11_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaB[1]~_emulated_q\);

\ITERF|saidaB[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[1]~13_combout\ = \ITERF|saidaB[1]~_emulated_q\ $ (\ITERF|saidaB[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[1]~_emulated_q\,
	datab => \ITERF|saidaB[1]~11_combout\,
	combout => \ITERF|saidaB[1]~13_combout\);

\ITERF|saidaB[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[1]~12_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[10]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaB[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[1]~13_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[1]~12_combout\);

\dispB1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispB1[0]~0_combout\ = (\ITERF|saidaB[3]~2_combout\ & ((\ITERF|saidaB[2]~7_combout\) # (\ITERF|saidaB[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[3]~2_combout\,
	datab => \ITERF|saidaB[2]~7_combout\,
	datac => \ITERF|saidaB[1]~12_combout\,
	combout => \dispB1[0]~0_combout\);

\V_SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(9),
	o => \V_SW[9]~input_o\);

\ITERF|saidaB[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[0]~16_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & (\V_SW[9]~input_o\)) # (!\ITERF|saidaA[3]~26_combout\ & ((\ITERF|saidaB[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[9]~input_o\,
	datab => \ITERF|saidaB[0]~16_combout\,
	datac => \ITERF|saidaA[3]~26_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[0]~16_combout\);

\ITERF|saidaB[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|saidaB[0]~16_combout\,
	clrn => \ITERF|ALT_INV_saidaA[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|saidaB[0]~_emulated_q\);

\ITERF|saidaB[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[0]~18_combout\ = \ITERF|saidaB[0]~_emulated_q\ $ (\ITERF|saidaB[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[0]~_emulated_q\,
	datab => \ITERF|saidaB[0]~16_combout\,
	combout => \ITERF|saidaB[0]~18_combout\);

\ITERF|saidaB[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|saidaB[0]~17_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|saidaA[3]~26_combout\ & ((\V_SW[9]~input_o\))) # (!\ITERF|saidaA[3]~26_combout\ & (\ITERF|saidaB[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[0]~18_combout\,
	datab => \ITERF|saidaA[3]~26_combout\,
	datac => \V_SW[9]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|saidaB[0]~17_combout\);

\DECOD2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux6~0_combout\ = (\ITERF|saidaB[2]~7_combout\ & (!\ITERF|saidaB[0]~17_combout\ & (\ITERF|saidaB[1]~12_combout\ $ (!\ITERF|saidaB[3]~2_combout\)))) # (!\ITERF|saidaB[2]~7_combout\ & (\ITERF|saidaB[0]~17_combout\ & (\ITERF|saidaB[1]~12_combout\ $ 
-- (!\ITERF|saidaB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux6~0_combout\);

\DECOD2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux5~0_combout\ = (\ITERF|saidaB[2]~7_combout\ & ((\ITERF|saidaB[1]~12_combout\ & (\ITERF|saidaB[3]~2_combout\ $ (!\ITERF|saidaB[0]~17_combout\))) # (!\ITERF|saidaB[1]~12_combout\ & (!\ITERF|saidaB[3]~2_combout\ & \ITERF|saidaB[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux5~0_combout\);

\DECOD2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux4~0_combout\ = (!\ITERF|saidaB[0]~17_combout\ & ((\ITERF|saidaB[2]~7_combout\ & (!\ITERF|saidaB[1]~12_combout\ & \ITERF|saidaB[3]~2_combout\)) # (!\ITERF|saidaB[2]~7_combout\ & (\ITERF|saidaB[1]~12_combout\ & !\ITERF|saidaB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux4~0_combout\);

\DECOD2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux3~0_combout\ = (\ITERF|saidaB[0]~17_combout\ & (\ITERF|saidaB[2]~7_combout\ $ (((\ITERF|saidaB[3]~2_combout\) # (!\ITERF|saidaB[1]~12_combout\))))) # (!\ITERF|saidaB[0]~17_combout\ & (\ITERF|saidaB[2]~7_combout\ & (\ITERF|saidaB[1]~12_combout\ 
-- $ (!\ITERF|saidaB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux3~0_combout\);

\DECOD2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux2~0_combout\ = (\ITERF|saidaB[0]~17_combout\) # ((\ITERF|saidaB[2]~7_combout\ & (\ITERF|saidaB[1]~12_combout\ $ (!\ITERF|saidaB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux2~0_combout\);

\DECOD2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux1~0_combout\ = (\ITERF|saidaB[2]~7_combout\ & ((\ITERF|saidaB[1]~12_combout\ & (!\ITERF|saidaB[3]~2_combout\ & \ITERF|saidaB[0]~17_combout\)) # (!\ITERF|saidaB[1]~12_combout\ & (\ITERF|saidaB[3]~2_combout\)))) # (!\ITERF|saidaB[2]~7_combout\ & 
-- ((\ITERF|saidaB[1]~12_combout\ & ((\ITERF|saidaB[0]~17_combout\) # (!\ITERF|saidaB[3]~2_combout\))) # (!\ITERF|saidaB[1]~12_combout\ & (!\ITERF|saidaB[3]~2_combout\ & \ITERF|saidaB[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux1~0_combout\);

\DECOD2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD2|Mux0~0_combout\ = (\ITERF|saidaB[2]~7_combout\ & (((\ITERF|saidaB[3]~2_combout\) # (!\ITERF|saidaB[0]~17_combout\)) # (!\ITERF|saidaB[1]~12_combout\))) # (!\ITERF|saidaB[2]~7_combout\ & (\ITERF|saidaB[1]~12_combout\ $ 
-- ((\ITERF|saidaB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|saidaB[2]~7_combout\,
	datab => \ITERF|saidaB[1]~12_combout\,
	datac => \ITERF|saidaB[3]~2_combout\,
	datad => \ITERF|saidaB[0]~17_combout\,
	combout => \DECOD2|Mux0~0_combout\);

\ITERF|operacao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|operacao~0_combout\ = (!\ITERF|operacao\(0) & \ITERF|init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(0),
	datad => \ITERF|init~q\,
	combout => \ITERF|operacao~0_combout\);

\ITERF|operacao[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|operacao[2]~1_combout\ = ((!\V_BT[1]~input_o\ & !\ITERF|estado~2_combout\)) # (!\V_BT[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_BT[1]~input_o\,
	datac => \ITERF|estado~2_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|operacao[2]~1_combout\);

\ITERF|operacao[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|operacao~0_combout\,
	clrn => \ITERF|ALT_INV_operacao[2]~1_combout\,
	ena => \ITERF|estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|operacao\(0));

\ITERF|B[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[3]~1_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[12]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|B[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[12]~input_o\,
	datab => \ITERF|B[3]~1_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[3]~1_combout\);

\ITERF|B[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|B[3]~1_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|B[3]~_emulated_q\);

\ITERF|B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[3]~3_combout\ = \ITERF|B[3]~_emulated_q\ $ (\ITERF|B[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~_emulated_q\,
	datab => \ITERF|B[3]~1_combout\,
	combout => \ITERF|B[3]~3_combout\);

\ITERF|B[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[3]~2_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[12]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|B[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~3_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[12]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[3]~2_combout\);

\ITERF|operacao~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|operacao~2_combout\ = (\ITERF|init~q\ & (\ITERF|operacao\(0) $ (\ITERF|operacao\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(0),
	datab => \ITERF|operacao\(1),
	datad => \ITERF|init~q\,
	combout => \ITERF|operacao~2_combout\);

\ITERF|operacao[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|operacao~2_combout\,
	clrn => \ITERF|ALT_INV_operacao[2]~1_combout\,
	ena => \ITERF|estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|operacao\(1));

\ITERF|A[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[3]~1_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[17]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|A[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[17]~input_o\,
	datab => \ITERF|A[3]~1_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[3]~1_combout\);

\ITERF|A[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|A[3]~1_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|A[3]~_emulated_q\);

\ITERF|A[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[3]~3_combout\ = \ITERF|A[3]~_emulated_q\ $ (\ITERF|A[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~_emulated_q\,
	datab => \ITERF|A[3]~1_combout\,
	combout => \ITERF|A[3]~3_combout\);

\ITERF|A[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[3]~2_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[17]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|A[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~3_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[17]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[3]~2_combout\);

\ITERF|alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux4~0_combout\ = (\ITERF|A[3]~2_combout\ & ((\ITERF|B[3]~2_combout\ & ((!\ITERF|operacao\(1)))) # (!\ITERF|B[3]~2_combout\ & (\ITERF|operacao\(0))))) # (!\ITERF|A[3]~2_combout\ & ((\ITERF|operacao\(0) & (\ITERF|B[3]~2_combout\)) # 
-- (!\ITERF|operacao\(0) & ((\ITERF|operacao\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(0),
	datab => \ITERF|B[3]~2_combout\,
	datac => \ITERF|operacao\(1),
	datad => \ITERF|A[3]~2_combout\,
	combout => \ITERF|alu|Mux4~0_combout\);

\ITERF|operacao~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|operacao~3_combout\ = (\ITERF|init~q\ & (\ITERF|operacao\(2) $ (((\ITERF|operacao\(0) & \ITERF|operacao\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|init~q\,
	datab => \ITERF|operacao\(2),
	datac => \ITERF|operacao\(0),
	datad => \ITERF|operacao\(1),
	combout => \ITERF|operacao~3_combout\);

\ITERF|operacao[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|operacao~3_combout\,
	clrn => \ITERF|ALT_INV_operacao[2]~1_combout\,
	ena => \ITERF|estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|operacao\(2));

\results3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \results3[0]~0_combout\ = (\ITERF|alu|Mux4~0_combout\ & !\ITERF|operacao\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux4~0_combout\,
	datad => \ITERF|operacao\(2),
	combout => \results3[0]~0_combout\);

\ITERF|B[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[2]~6_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[11]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|B[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[11]~input_o\,
	datab => \ITERF|B[2]~6_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[2]~6_combout\);

\ITERF|B[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|B[2]~6_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|B[2]~_emulated_q\);

\ITERF|B[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[2]~8_combout\ = \ITERF|B[2]~_emulated_q\ $ (\ITERF|B[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~_emulated_q\,
	datab => \ITERF|B[2]~6_combout\,
	combout => \ITERF|B[2]~8_combout\);

\ITERF|B[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[2]~7_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[11]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|B[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~8_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[11]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[2]~7_combout\);

\ITERF|A[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[2]~6_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[16]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|A[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[16]~input_o\,
	datab => \ITERF|A[2]~6_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[2]~6_combout\);

\ITERF|A[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|A[2]~6_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|A[2]~_emulated_q\);

\ITERF|A[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[2]~8_combout\ = \ITERF|A[2]~_emulated_q\ $ (\ITERF|A[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~_emulated_q\,
	datab => \ITERF|A[2]~6_combout\,
	combout => \ITERF|A[2]~8_combout\);

\ITERF|A[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[2]~7_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[16]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|A[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~8_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[16]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[2]~7_combout\);

\ITERF|alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux5~0_combout\ = (\ITERF|A[2]~7_combout\ & ((\ITERF|B[2]~7_combout\ & ((!\ITERF|operacao\(1)))) # (!\ITERF|B[2]~7_combout\ & (\ITERF|operacao\(0))))) # (!\ITERF|A[2]~7_combout\ & ((\ITERF|operacao\(0) & (\ITERF|B[2]~7_combout\)) # 
-- (!\ITERF|operacao\(0) & ((\ITERF|operacao\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(0),
	datab => \ITERF|B[2]~7_combout\,
	datac => \ITERF|operacao\(1),
	datad => \ITERF|A[2]~7_combout\,
	combout => \ITERF|alu|Mux5~0_combout\);

\results2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \results2[0]~0_combout\ = (\ITERF|alu|Mux5~0_combout\ & !\ITERF|operacao\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux5~0_combout\,
	datad => \ITERF|operacao\(2),
	combout => \results2[0]~0_combout\);

\ITERF|B[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[0]~16_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[9]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|B[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[9]~input_o\,
	datab => \ITERF|B[0]~16_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[0]~16_combout\);

\ITERF|B[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|B[0]~16_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|B[0]~_emulated_q\);

\ITERF|B[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[0]~18_combout\ = \ITERF|B[0]~_emulated_q\ $ (\ITERF|B[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~_emulated_q\,
	datab => \ITERF|B[0]~16_combout\,
	combout => \ITERF|B[0]~18_combout\);

\ITERF|B[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[0]~17_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[9]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|B[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~18_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[9]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[0]~17_combout\);

\ITERF|A[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[0]~16_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[14]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|A[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[14]~input_o\,
	datab => \ITERF|A[0]~16_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[0]~16_combout\);

\ITERF|A[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|A[0]~16_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|A[0]~_emulated_q\);

\ITERF|A[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[0]~18_combout\ = \ITERF|A[0]~_emulated_q\ $ (\ITERF|A[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[0]~_emulated_q\,
	datab => \ITERF|A[0]~16_combout\,
	combout => \ITERF|A[0]~18_combout\);

\ITERF|A[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[0]~17_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[14]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|A[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[0]~18_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[14]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[0]~17_combout\);

\ITERF|A[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[1]~11_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[15]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|A[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[15]~input_o\,
	datab => \ITERF|A[1]~11_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[1]~11_combout\);

\ITERF|A[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|A[1]~11_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|A[1]~_emulated_q\);

\ITERF|A[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[1]~13_combout\ = \ITERF|A[1]~_emulated_q\ $ (\ITERF|A[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[1]~_emulated_q\,
	datab => \ITERF|A[1]~11_combout\,
	combout => \ITERF|A[1]~13_combout\);

\ITERF|A[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|A[1]~12_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[15]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|A[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[1]~13_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[15]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|A[1]~12_combout\);

\ITERF|B[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[1]~11_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & (\V_SW[10]~input_o\)) # (!\ITERF|estado~9_combout\ & ((\ITERF|B[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[10]~input_o\,
	datab => \ITERF|B[1]~11_combout\,
	datac => \ITERF|estado~9_combout\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[1]~11_combout\);

\ITERF|B[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIVfreq|ck~q\,
	d => \ITERF|B[1]~11_combout\,
	clrn => \ITERF|ALT_INV_B[3]~0_combout\,
	ena => \ITERF|saidaA[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ITERF|B[1]~_emulated_q\);

\ITERF|B[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[1]~13_combout\ = \ITERF|B[1]~_emulated_q\ $ (\ITERF|B[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[1]~_emulated_q\,
	datab => \ITERF|B[1]~11_combout\,
	combout => \ITERF|B[1]~13_combout\);

\ITERF|B[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|B[1]~12_combout\ = (\V_BT[0]~input_o\ & ((\ITERF|estado~9_combout\ & ((\V_SW[10]~input_o\))) # (!\ITERF|estado~9_combout\ & (\ITERF|B[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[1]~13_combout\,
	datab => \ITERF|estado~9_combout\,
	datac => \V_SW[10]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \ITERF|B[1]~12_combout\);

\ITERF|alu|sum|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sum|fa2|Cout~0_combout\ = (\ITERF|A[1]~12_combout\ & ((\ITERF|B[1]~12_combout\) # ((\ITERF|B[0]~17_combout\ & \ITERF|A[0]~17_combout\)))) # (!\ITERF|A[1]~12_combout\ & (\ITERF|B[0]~17_combout\ & (\ITERF|A[0]~17_combout\ & 
-- \ITERF|B[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~17_combout\,
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|A[1]~12_combout\,
	datad => \ITERF|B[1]~12_combout\,
	combout => \ITERF|alu|sum|fa2|Cout~0_combout\);

\ITERF|alu|sum|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sum|fa3|Cout~0_combout\ = (\ITERF|B[2]~7_combout\ & ((\ITERF|A[2]~7_combout\) # (\ITERF|alu|sum|fa2|Cout~0_combout\))) # (!\ITERF|B[2]~7_combout\ & (\ITERF|A[2]~7_combout\ & \ITERF|alu|sum|fa2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|A[2]~7_combout\,
	datac => \ITERF|alu|sum|fa2|Cout~0_combout\,
	combout => \ITERF|alu|sum|fa3|Cout~0_combout\);

\results1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[0]~0_combout\ = (!\ITERF|operacao\(0) & ((\ITERF|B[3]~2_combout\ & ((\ITERF|A[3]~2_combout\) # (\ITERF|alu|sum|fa3|Cout~0_combout\))) # (!\ITERF|B[3]~2_combout\ & (\ITERF|A[3]~2_combout\ & \ITERF|alu|sum|fa3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[3]~2_combout\,
	datac => \ITERF|alu|sum|fa3|Cout~0_combout\,
	datad => \ITERF|operacao\(0),
	combout => \results1[0]~0_combout\);

\ITERF|alu|sub|cp1|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|cp1|fa3|Cout~0_combout\ = (\ITERF|B[2]~7_combout\) # ((\ITERF|B[1]~12_combout\) # (\ITERF|B[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|B[1]~12_combout\,
	datac => \ITERF|B[0]~17_combout\,
	combout => \ITERF|alu|sub|cp1|fa3|Cout~0_combout\);

\ITERF|alu|sub|cp1|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|cp1|fa2|Cout~0_combout\ = (\ITERF|B[1]~12_combout\) # (\ITERF|B[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[1]~12_combout\,
	datab => \ITERF|B[0]~17_combout\,
	combout => \ITERF|alu|sub|cp1|fa2|Cout~0_combout\);

\ITERF|alu|sub|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|fa2|Cout~0_combout\ = (\ITERF|B[1]~12_combout\ & (\ITERF|A[1]~12_combout\ & ((\ITERF|A[0]~17_combout\) # (!\ITERF|B[0]~17_combout\)))) # (!\ITERF|B[1]~12_combout\ & (\ITERF|B[0]~17_combout\ & ((\ITERF|A[0]~17_combout\) # 
-- (\ITERF|A[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[1]~12_combout\,
	datab => \ITERF|B[0]~17_combout\,
	datac => \ITERF|A[0]~17_combout\,
	datad => \ITERF|A[1]~12_combout\,
	combout => \ITERF|alu|sub|fa2|Cout~0_combout\);

\ITERF|alu|sub|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|fa3|Cout~0_combout\ = (\ITERF|A[2]~7_combout\ & ((\ITERF|alu|sub|fa2|Cout~0_combout\) # (\ITERF|alu|sub|cp1|fa2|Cout~0_combout\ $ (\ITERF|B[2]~7_combout\)))) # (!\ITERF|A[2]~7_combout\ & (\ITERF|alu|sub|fa2|Cout~0_combout\ & 
-- (\ITERF|alu|sub|cp1|fa2|Cout~0_combout\ $ (\ITERF|B[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|sub|cp1|fa2|Cout~0_combout\,
	datab => \ITERF|B[2]~7_combout\,
	datac => \ITERF|A[2]~7_combout\,
	datad => \ITERF|alu|sub|fa2|Cout~0_combout\,
	combout => \ITERF|alu|sub|fa3|Cout~0_combout\);

\ITERF|alu|sub|fa4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|fa4|Cout~0_combout\ = (\ITERF|A[3]~2_combout\ & ((\ITERF|alu|sub|fa3|Cout~0_combout\) # (\ITERF|alu|sub|cp1|fa3|Cout~0_combout\ $ (\ITERF|B[3]~2_combout\)))) # (!\ITERF|A[3]~2_combout\ & (\ITERF|alu|sub|fa3|Cout~0_combout\ & 
-- (\ITERF|alu|sub|cp1|fa3|Cout~0_combout\ $ (\ITERF|B[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|sub|cp1|fa3|Cout~0_combout\,
	datab => \ITERF|B[3]~2_combout\,
	datac => \ITERF|A[3]~2_combout\,
	datad => \ITERF|alu|sub|fa3|Cout~0_combout\,
	combout => \ITERF|alu|sub|fa4|Cout~0_combout\);

\results1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[0]~1_combout\ = (\results1[0]~0_combout\) # ((\ITERF|operacao\(0) & \ITERF|alu|sub|fa4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~0_combout\,
	datab => \ITERF|operacao\(0),
	datac => \ITERF|alu|sub|fa4|Cout~0_combout\,
	combout => \results1[0]~1_combout\);

\ITERF|alu|mult|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~0_combout\ = (\ITERF|B[3]~2_combout\ & \ITERF|A[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[0]~17_combout\,
	combout => \ITERF|alu|mult|comb~0_combout\);

\ITERF|alu|mult|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~1_combout\ = (\ITERF|B[2]~7_combout\ & \ITERF|A[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|A[0]~17_combout\,
	combout => \ITERF|alu|mult|comb~1_combout\);

\ITERF|alu|mult|fa12|S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa12|S~4_combout\ = (\ITERF|A[1]~12_combout\ & (\ITERF|B[1]~12_combout\ & ((!\ITERF|A[0]~17_combout\) # (!\ITERF|B[0]~17_combout\)))) # (!\ITERF|A[1]~12_combout\ & (\ITERF|B[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~17_combout\,
	datab => \ITERF|A[1]~12_combout\,
	datac => \ITERF|B[1]~12_combout\,
	datad => \ITERF|A[0]~17_combout\,
	combout => \ITERF|alu|mult|fa12|S~4_combout\);

\ITERF|alu|mult|fa12|S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa12|S~5_combout\ = (\ITERF|alu|mult|fa12|S~4_combout\ & (\ITERF|A[1]~12_combout\ $ (((\ITERF|B[0]~17_combout\ & \ITERF|A[2]~7_combout\))))) # (!\ITERF|alu|mult|fa12|S~4_combout\ & (\ITERF|B[0]~17_combout\ & (\ITERF|A[1]~12_combout\ & 
-- \ITERF|A[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~17_combout\,
	datab => \ITERF|alu|mult|fa12|S~4_combout\,
	datac => \ITERF|A[1]~12_combout\,
	datad => \ITERF|A[2]~7_combout\,
	combout => \ITERF|alu|mult|fa12|S~5_combout\);

\ITERF|alu|mult|fa12|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa12|Cout~3_combout\ = (\ITERF|A[2]~7_combout\) # (\ITERF|A[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~7_combout\,
	datab => \ITERF|A[0]~17_combout\,
	combout => \ITERF|alu|mult|fa12|Cout~3_combout\);

\ITERF|alu|mult|fa12|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa12|Cout~9_combout\ = (\ITERF|alu|mult|fa12|Cout~3_combout\ & (\ITERF|B[0]~17_combout\ & (\ITERF|A[1]~12_combout\ & \ITERF|B[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa12|Cout~3_combout\,
	datab => \ITERF|B[0]~17_combout\,
	datac => \ITERF|A[1]~12_combout\,
	datad => \ITERF|B[1]~12_combout\,
	combout => \ITERF|alu|mult|fa12|Cout~9_combout\);

\ITERF|alu|mult|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~2_combout\ = (\ITERF|A[3]~2_combout\ & \ITERF|B[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~2_combout\,
	datab => \ITERF|B[0]~17_combout\,
	combout => \ITERF|alu|mult|comb~2_combout\);

\ITERF|alu|mult|fa13|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa13|S~combout\ = \ITERF|alu|mult|fa12|Cout~9_combout\ $ (\ITERF|alu|mult|comb~2_combout\ $ (((\ITERF|A[2]~7_combout\ & \ITERF|B[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~7_combout\,
	datab => \ITERF|B[1]~12_combout\,
	datac => \ITERF|alu|mult|fa12|Cout~9_combout\,
	datad => \ITERF|alu|mult|comb~2_combout\,
	combout => \ITERF|alu|mult|fa13|S~combout\);

\ITERF|alu|mult|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~3_combout\ = (\ITERF|B[2]~7_combout\ & \ITERF|A[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|A[1]~12_combout\,
	combout => \ITERF|alu|mult|comb~3_combout\);

\ITERF|alu|mult|fa22|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa22|S~combout\ = \ITERF|alu|mult|fa13|S~combout\ $ (\ITERF|alu|mult|comb~3_combout\ $ (((\ITERF|alu|mult|comb~1_combout\ & \ITERF|alu|mult|fa12|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|comb~1_combout\,
	datab => \ITERF|alu|mult|fa12|S~5_combout\,
	datac => \ITERF|alu|mult|fa13|S~combout\,
	datad => \ITERF|alu|mult|comb~3_combout\,
	combout => \ITERF|alu|mult|fa22|S~combout\);

\ITERF|alu|mult|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~4_combout\ = (\ITERF|B[3]~2_combout\ & \ITERF|A[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[1]~12_combout\,
	combout => \ITERF|alu|mult|comb~4_combout\);

\ITERF|alu|andd|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|andd|S\(2) = (\ITERF|B[2]~7_combout\ & \ITERF|A[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|A[2]~7_combout\,
	combout => \ITERF|alu|andd|S\(2));

\ITERF|alu|mult|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~5_combout\ = (\ITERF|A[3]~2_combout\ & \ITERF|B[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~2_combout\,
	datab => \ITERF|B[1]~12_combout\,
	combout => \ITERF|alu|mult|comb~5_combout\);

\ITERF|alu|mult|fa22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa22|Cout~0_combout\ = (\ITERF|alu|mult|comb~3_combout\ & ((\ITERF|alu|mult|fa13|S~combout\) # ((\ITERF|alu|mult|fa12|S~5_combout\ & \ITERF|alu|mult|comb~1_combout\)))) # (!\ITERF|alu|mult|comb~3_combout\ & 
-- (\ITERF|alu|mult|fa12|S~5_combout\ & (\ITERF|alu|mult|comb~1_combout\ & \ITERF|alu|mult|fa13|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa12|S~5_combout\,
	datab => \ITERF|alu|mult|comb~1_combout\,
	datac => \ITERF|alu|mult|comb~3_combout\,
	datad => \ITERF|alu|mult|fa13|S~combout\,
	combout => \ITERF|alu|mult|fa22|Cout~0_combout\);

\ITERF|alu|mult|fa13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa13|Cout~0_combout\ = (\ITERF|alu|mult|comb~2_combout\ & ((\ITERF|alu|mult|fa12|Cout~9_combout\) # ((\ITERF|B[1]~12_combout\ & \ITERF|A[2]~7_combout\)))) # (!\ITERF|alu|mult|comb~2_combout\ & (\ITERF|B[1]~12_combout\ & 
-- (\ITERF|A[2]~7_combout\ & \ITERF|alu|mult|fa12|Cout~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[1]~12_combout\,
	datab => \ITERF|A[2]~7_combout\,
	datac => \ITERF|alu|mult|comb~2_combout\,
	datad => \ITERF|alu|mult|fa12|Cout~9_combout\,
	combout => \ITERF|alu|mult|fa13|Cout~0_combout\);

\ITERF|alu|mult|fa23|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa23|S~combout\ = \ITERF|alu|andd|S\(2) $ (\ITERF|alu|mult|comb~5_combout\ $ (\ITERF|alu|mult|fa22|Cout~0_combout\ $ (\ITERF|alu|mult|fa13|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|andd|S\(2),
	datab => \ITERF|alu|mult|comb~5_combout\,
	datac => \ITERF|alu|mult|fa22|Cout~0_combout\,
	datad => \ITERF|alu|mult|fa13|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa23|S~combout\);

\ITERF|alu|mult|fa32|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa32|S~combout\ = \ITERF|alu|mult|comb~4_combout\ $ (\ITERF|alu|mult|fa23|S~combout\ $ (((\ITERF|alu|mult|comb~0_combout\ & \ITERF|alu|mult|fa22|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|comb~0_combout\,
	datab => \ITERF|alu|mult|fa22|S~combout\,
	datac => \ITERF|alu|mult|comb~4_combout\,
	datad => \ITERF|alu|mult|fa23|S~combout\,
	combout => \ITERF|alu|mult|fa32|S~combout\);

\results1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[0]~6_combout\ = (\ITERF|operacao\(1) & (!\ITERF|operacao\(0) & ((\ITERF|alu|mult|fa32|S~combout\)))) # (!\ITERF|operacao\(1) & (((\results1[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(0),
	datab => \ITERF|operacao\(1),
	datac => \results1[0]~1_combout\,
	datad => \ITERF|alu|mult|fa32|S~combout\,
	combout => \results1[0]~6_combout\);

\ITERF|alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux6~0_combout\ = (\ITERF|A[1]~12_combout\ & ((\ITERF|B[1]~12_combout\ & (!\ITERF|operacao\(1))) # (!\ITERF|B[1]~12_combout\ & ((\ITERF|operacao\(0)))))) # (!\ITERF|A[1]~12_combout\ & ((\ITERF|operacao\(0) & ((\ITERF|B[1]~12_combout\))) # 
-- (!\ITERF|operacao\(0) & (\ITERF|operacao\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(1),
	datab => \ITERF|B[1]~12_combout\,
	datac => \ITERF|A[1]~12_combout\,
	datad => \ITERF|operacao\(0),
	combout => \ITERF|alu|Mux6~0_combout\);

\results1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[0]~7_combout\ = (\ITERF|operacao\(2) & (\results1[0]~6_combout\)) # (!\ITERF|operacao\(2) & ((\ITERF|alu|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \results1[0]~6_combout\,
	datac => \ITERF|operacao\(2),
	datad => \ITERF|alu|Mux6~0_combout\,
	combout => \results1[0]~7_combout\);

\results1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[3]~2_combout\ = (\ITERF|operacao\(2) & (\ITERF|operacao\(0) $ (\ITERF|operacao\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(2),
	datac => \ITERF|operacao\(0),
	datad => \ITERF|operacao\(1),
	combout => \results1[3]~2_combout\);

\ITERF|alu|mult|fa24|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa24|S~2_combout\ = (\ITERF|A[3]~2_combout\ & (\ITERF|B[2]~7_combout\ $ (((\ITERF|B[1]~12_combout\ & \ITERF|alu|mult|fa13|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~2_combout\,
	datab => \ITERF|B[1]~12_combout\,
	datac => \ITERF|alu|mult|fa13|Cout~0_combout\,
	datad => \ITERF|B[2]~7_combout\,
	combout => \ITERF|alu|mult|fa24|S~2_combout\);

\ITERF|alu|mult|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~6_combout\ = (\ITERF|B[3]~2_combout\ & \ITERF|A[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[2]~7_combout\,
	combout => \ITERF|alu|mult|comb~6_combout\);

\ITERF|alu|mult|fa32|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa32|Cout~0_combout\ = (\ITERF|alu|mult|comb~4_combout\ & ((\ITERF|alu|mult|fa23|S~combout\) # ((\ITERF|alu|mult|fa22|S~combout\ & \ITERF|alu|mult|comb~0_combout\)))) # (!\ITERF|alu|mult|comb~4_combout\ & (\ITERF|alu|mult|fa22|S~combout\ & 
-- (\ITERF|alu|mult|comb~0_combout\ & \ITERF|alu|mult|fa23|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa22|S~combout\,
	datab => \ITERF|alu|mult|comb~0_combout\,
	datac => \ITERF|alu|mult|comb~4_combout\,
	datad => \ITERF|alu|mult|fa23|S~combout\,
	combout => \ITERF|alu|mult|fa32|Cout~0_combout\);

\ITERF|alu|mult|fa23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa23|Cout~0_combout\ = (\ITERF|alu|andd|S\(2) & ((\ITERF|alu|mult|fa22|Cout~0_combout\) # (\ITERF|alu|mult|fa13|Cout~0_combout\ $ (\ITERF|alu|mult|comb~5_combout\)))) # (!\ITERF|alu|andd|S\(2) & (\ITERF|alu|mult|fa22|Cout~0_combout\ & 
-- (\ITERF|alu|mult|fa13|Cout~0_combout\ $ (\ITERF|alu|mult|comb~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa13|Cout~0_combout\,
	datab => \ITERF|alu|mult|comb~5_combout\,
	datac => \ITERF|alu|andd|S\(2),
	datad => \ITERF|alu|mult|fa22|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa23|Cout~0_combout\);

\ITERF|alu|mult|fa33|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa33|S~combout\ = \ITERF|alu|mult|fa24|S~2_combout\ $ (\ITERF|alu|mult|comb~6_combout\ $ (\ITERF|alu|mult|fa32|Cout~0_combout\ $ (\ITERF|alu|mult|fa23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa24|S~2_combout\,
	datab => \ITERF|alu|mult|comb~6_combout\,
	datac => \ITERF|alu|mult|fa32|Cout~0_combout\,
	datad => \ITERF|alu|mult|fa23|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa33|S~combout\);

\results1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[1]~3_combout\ = (\results1[3]~2_combout\ & ((\ITERF|operacao\(0) & (\ITERF|alu|sub|fa4|Cout~0_combout\)) # (!\ITERF|operacao\(0) & ((\ITERF|alu|mult|fa33|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[3]~2_combout\,
	datab => \ITERF|alu|sub|fa4|Cout~0_combout\,
	datac => \ITERF|alu|mult|fa33|S~combout\,
	datad => \ITERF|operacao\(0),
	combout => \results1[1]~3_combout\);

\ITERF|alu|mult|fa33|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa33|Cout~0_combout\ = (\ITERF|alu|mult|comb~6_combout\ & ((\ITERF|alu|mult|fa32|Cout~0_combout\) # (\ITERF|alu|mult|fa23|Cout~0_combout\ $ (\ITERF|alu|mult|fa24|S~2_combout\)))) # (!\ITERF|alu|mult|comb~6_combout\ & 
-- (\ITERF|alu|mult|fa32|Cout~0_combout\ & (\ITERF|alu|mult|fa23|Cout~0_combout\ $ (\ITERF|alu|mult|fa24|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa23|Cout~0_combout\,
	datab => \ITERF|alu|mult|fa24|S~2_combout\,
	datac => \ITERF|alu|mult|comb~6_combout\,
	datad => \ITERF|alu|mult|fa32|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa33|Cout~0_combout\);

\ITERF|alu|mult|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|comb~7_combout\ = (\ITERF|A[3]~2_combout\ & \ITERF|B[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[3]~2_combout\,
	datab => \ITERF|B[2]~7_combout\,
	combout => \ITERF|alu|mult|comb~7_combout\);

\ITERF|alu|mult|fa24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa24|Cout~0_combout\ = (\ITERF|alu|mult|comb~7_combout\ & ((\ITERF|alu|mult|fa23|Cout~0_combout\) # ((\ITERF|alu|mult|fa13|Cout~0_combout\ & \ITERF|alu|mult|comb~5_combout\)))) # (!\ITERF|alu|mult|comb~7_combout\ & 
-- (\ITERF|alu|mult|fa13|Cout~0_combout\ & (\ITERF|alu|mult|comb~5_combout\ & \ITERF|alu|mult|fa23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa13|Cout~0_combout\,
	datab => \ITERF|alu|mult|comb~5_combout\,
	datac => \ITERF|alu|mult|comb~7_combout\,
	datad => \ITERF|alu|mult|fa23|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa24|Cout~0_combout\);

\ITERF|alu|mult|fa34|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa34|S~0_combout\ = \ITERF|alu|mult|fa33|Cout~0_combout\ $ (\ITERF|alu|mult|fa24|Cout~0_combout\ $ (((\ITERF|B[3]~2_combout\ & \ITERF|A[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[3]~2_combout\,
	datac => \ITERF|alu|mult|fa33|Cout~0_combout\,
	datad => \ITERF|alu|mult|fa24|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa34|S~0_combout\);

\results1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[2]~4_combout\ = (\results1[3]~2_combout\ & ((\ITERF|operacao\(0) & (\ITERF|alu|sub|fa4|Cout~0_combout\)) # (!\ITERF|operacao\(0) & ((\ITERF|alu|mult|fa34|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[3]~2_combout\,
	datab => \ITERF|alu|sub|fa4|Cout~0_combout\,
	datac => \ITERF|alu|mult|fa34|S~0_combout\,
	datad => \ITERF|operacao\(0),
	combout => \results1[2]~4_combout\);

\ITERF|alu|mult|fa34|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa34|Cout~0_combout\ = (\ITERF|alu|mult|fa24|Cout~0_combout\ & ((\ITERF|alu|mult|fa33|Cout~0_combout\) # ((\ITERF|B[3]~2_combout\ & \ITERF|A[3]~2_combout\)))) # (!\ITERF|alu|mult|fa24|Cout~0_combout\ & (\ITERF|B[3]~2_combout\ & 
-- (\ITERF|A[3]~2_combout\ & \ITERF|alu|mult|fa33|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[3]~2_combout\,
	datac => \ITERF|alu|mult|fa24|Cout~0_combout\,
	datad => \ITERF|alu|mult|fa33|Cout~0_combout\,
	combout => \ITERF|alu|mult|fa34|Cout~0_combout\);

\results1[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \results1[3]~5_combout\ = (\results1[3]~2_combout\ & ((\ITERF|operacao\(0) & (\ITERF|alu|sub|fa4|Cout~0_combout\)) # (!\ITERF|operacao\(0) & ((\ITERF|alu|mult|fa34|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[3]~2_combout\,
	datab => \ITERF|alu|sub|fa4|Cout~0_combout\,
	datac => \ITERF|alu|mult|fa34|Cout~0_combout\,
	datad => \ITERF|operacao\(0),
	combout => \results1[3]~5_combout\);

\DECOD5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux6~0_combout\ = (\results1[2]~4_combout\ & (!\results1[1]~3_combout\ & (\results1[0]~7_combout\ $ (!\results1[3]~5_combout\)))) # (!\results1[2]~4_combout\ & (\results1[0]~7_combout\ & (\results1[1]~3_combout\ $ (!\results1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux6~0_combout\);

\DECOD5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux5~0_combout\ = (\results1[1]~3_combout\ & ((\results1[0]~7_combout\ & ((\results1[3]~5_combout\))) # (!\results1[0]~7_combout\ & (\results1[2]~4_combout\)))) # (!\results1[1]~3_combout\ & (\results1[2]~4_combout\ & (\results1[0]~7_combout\ $ 
-- (\results1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux5~0_combout\);

\DECOD5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux4~0_combout\ = (\results1[2]~4_combout\ & (\results1[3]~5_combout\ & ((\results1[1]~3_combout\) # (!\results1[0]~7_combout\)))) # (!\results1[2]~4_combout\ & (!\results1[0]~7_combout\ & (\results1[1]~3_combout\ & !\results1[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux4~0_combout\);

\DECOD5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux3~0_combout\ = (\results1[0]~7_combout\ & (\results1[1]~3_combout\ $ ((!\results1[2]~4_combout\)))) # (!\results1[0]~7_combout\ & ((\results1[1]~3_combout\ & (!\results1[2]~4_combout\ & \results1[3]~5_combout\)) # (!\results1[1]~3_combout\ & 
-- (\results1[2]~4_combout\ & !\results1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux3~0_combout\);

\DECOD5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux2~0_combout\ = (\results1[1]~3_combout\ & (\results1[0]~7_combout\ & ((!\results1[3]~5_combout\)))) # (!\results1[1]~3_combout\ & ((\results1[2]~4_combout\ & ((!\results1[3]~5_combout\))) # (!\results1[2]~4_combout\ & 
-- (\results1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux2~0_combout\);

\DECOD5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux1~0_combout\ = (\results1[0]~7_combout\ & (\results1[3]~5_combout\ $ (((\results1[1]~3_combout\) # (!\results1[2]~4_combout\))))) # (!\results1[0]~7_combout\ & (\results1[1]~3_combout\ & (!\results1[2]~4_combout\ & !\results1[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux1~0_combout\);

\DECOD5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD5|Mux0~0_combout\ = (\results1[0]~7_combout\ & ((\results1[3]~5_combout\) # (\results1[1]~3_combout\ $ (\results1[2]~4_combout\)))) # (!\results1[0]~7_combout\ & ((\results1[1]~3_combout\) # (\results1[2]~4_combout\ $ (\results1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \results1[0]~7_combout\,
	datab => \results1[1]~3_combout\,
	datac => \results1[2]~4_combout\,
	datad => \results1[3]~5_combout\,
	combout => \DECOD5|Mux0~0_combout\);

\ITERF|alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux7~0_combout\ = (\ITERF|A[0]~17_combout\ & ((\ITERF|operacao\(0)) # ((!\ITERF|operacao\(1) & \ITERF|operacao\(2))))) # (!\ITERF|A[0]~17_combout\ & (\ITERF|operacao\(1) & (!\ITERF|operacao\(2) & !\ITERF|operacao\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(1),
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|operacao\(2),
	datad => \ITERF|operacao\(0),
	combout => \ITERF|alu|Mux7~0_combout\);

\ITERF|alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux7~1_combout\ = (\ITERF|operacao\(2) & (((\ITERF|A[0]~17_combout\ & !\ITERF|operacao\(0))) # (!\ITERF|operacao\(1)))) # (!\ITERF|operacao\(2) & (\ITERF|operacao\(0) $ (((!\ITERF|operacao\(1) & \ITERF|A[0]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(1),
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|operacao\(2),
	datad => \ITERF|operacao\(0),
	combout => \ITERF|alu|Mux7~1_combout\);

\ITERF|alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux7~2_combout\ = \ITERF|alu|Mux7~0_combout\ $ (((\ITERF|B[0]~17_combout\ & \ITERF|alu|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[0]~17_combout\,
	datab => \ITERF|alu|Mux7~0_combout\,
	datac => \ITERF|alu|Mux7~1_combout\,
	combout => \ITERF|alu|Mux7~2_combout\);

\results0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[1]~0_combout\ = (\ITERF|B[0]~17_combout\ & (\ITERF|A[1]~12_combout\ $ (((\ITERF|operacao\(0) & !\ITERF|operacao\(1)))))) # (!\ITERF|B[0]~17_combout\ & (\ITERF|A[1]~12_combout\ & ((\ITERF|operacao\(0)) # (!\ITERF|operacao\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[1]~12_combout\,
	datab => \ITERF|B[0]~17_combout\,
	datac => \ITERF|operacao\(0),
	datad => \ITERF|operacao\(1),
	combout => \results0[1]~0_combout\);

\results0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[1]~1_combout\ = (\ITERF|operacao\(1) & ((\ITERF|operacao\(0)))) # (!\ITERF|operacao\(1) & (\ITERF|B[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ITERF|B[0]~17_combout\,
	datac => \ITERF|operacao\(0),
	datad => \ITERF|operacao\(1),
	combout => \results0[1]~1_combout\);

\results0[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[1]~2_combout\ = (\ITERF|A[0]~17_combout\ & ((\ITERF|B[1]~12_combout\ & ((\ITERF|operacao\(1)) # (!\results0[1]~1_combout\))) # (!\ITERF|B[1]~12_combout\ & ((\results0[1]~1_combout\))))) # (!\ITERF|A[0]~17_combout\ & (\ITERF|B[1]~12_combout\ & 
-- (!\ITERF|operacao\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[0]~17_combout\,
	datab => \ITERF|B[1]~12_combout\,
	datac => \ITERF|operacao\(1),
	datad => \results0[1]~1_combout\,
	combout => \results0[1]~2_combout\);

\results0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[1]~3_combout\ = (\ITERF|operacao\(2) & (\results0[1]~0_combout\ $ (\results0[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(2),
	datab => \results0[1]~0_combout\,
	datac => \results0[1]~2_combout\,
	combout => \results0[1]~3_combout\);

\ITERF|alu|mult|fa21|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa21|S~2_combout\ = \ITERF|alu|mult|fa12|S~5_combout\ $ (((\ITERF|B[2]~7_combout\ & \ITERF|A[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|alu|mult|fa12|S~5_combout\,
	combout => \ITERF|alu|mult|fa21|S~2_combout\);

\ITERF|alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux5~1_combout\ = \ITERF|A[2]~7_combout\ $ (((\ITERF|operacao\(1) & ((\ITERF|A[0]~17_combout\) # (\ITERF|A[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~7_combout\,
	datab => \ITERF|operacao\(1),
	datac => \ITERF|A[0]~17_combout\,
	datad => \ITERF|A[1]~12_combout\,
	combout => \ITERF|alu|Mux5~1_combout\);

\ITERF|alu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux5~2_combout\ = (\ITERF|operacao\(0) & (\ITERF|alu|sub|cp1|fa2|Cout~0_combout\ $ ((\ITERF|alu|sub|fa2|Cout~0_combout\)))) # (!\ITERF|operacao\(0) & (((\ITERF|alu|sum|fa2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|sub|cp1|fa2|Cout~0_combout\,
	datab => \ITERF|alu|sub|fa2|Cout~0_combout\,
	datac => \ITERF|alu|sum|fa2|Cout~0_combout\,
	datad => \ITERF|operacao\(0),
	combout => \ITERF|alu|Mux5~2_combout\);

\ITERF|alu|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux5~3_combout\ = (\ITERF|operacao\(1) & (((\ITERF|operacao\(0))))) # (!\ITERF|operacao\(1) & (\ITERF|B[2]~7_combout\ $ (((\ITERF|alu|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[2]~7_combout\,
	datab => \ITERF|operacao\(1),
	datac => \ITERF|operacao\(0),
	datad => \ITERF|alu|Mux5~2_combout\,
	combout => \ITERF|alu|Mux5~3_combout\);

\ITERF|alu|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux5~4_combout\ = (\ITERF|operacao\(1) & ((\ITERF|alu|Mux5~3_combout\ & ((\ITERF|alu|Mux5~1_combout\))) # (!\ITERF|alu|Mux5~3_combout\ & (\ITERF|alu|mult|fa21|S~2_combout\)))) # (!\ITERF|operacao\(1) & ((\ITERF|alu|Mux5~1_combout\ $ 
-- (\ITERF|alu|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa21|S~2_combout\,
	datab => \ITERF|alu|Mux5~1_combout\,
	datac => \ITERF|operacao\(1),
	datad => \ITERF|alu|Mux5~3_combout\,
	combout => \ITERF|alu|Mux5~4_combout\);

\results0[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[2]~4_combout\ = (\ITERF|operacao\(2) & \ITERF|alu|Mux5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(2),
	datab => \ITERF|alu|Mux5~4_combout\,
	combout => \results0[2]~4_combout\);

\ITERF|alu|mult|fa31|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|mult|fa31|S~2_combout\ = \ITERF|alu|mult|fa22|S~combout\ $ (((\ITERF|B[3]~2_combout\ & \ITERF|A[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|alu|mult|fa22|S~combout\,
	combout => \ITERF|alu|mult|fa31|S~2_combout\);

\ITERF|alu|sub|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sub|fa4|S~combout\ = \ITERF|B[3]~2_combout\ $ (\ITERF|A[3]~2_combout\ $ (\ITERF|alu|sub|cp1|fa3|Cout~0_combout\ $ (\ITERF|alu|sub|fa3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[3]~2_combout\,
	datac => \ITERF|alu|sub|cp1|fa3|Cout~0_combout\,
	datad => \ITERF|alu|sub|fa3|Cout~0_combout\,
	combout => \ITERF|alu|sub|fa4|S~combout\);

\ITERF|alu|sum|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|sum|fa4|S~combout\ = \ITERF|B[3]~2_combout\ $ (\ITERF|A[3]~2_combout\ $ (\ITERF|alu|sum|fa3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|B[3]~2_combout\,
	datab => \ITERF|A[3]~2_combout\,
	datac => \ITERF|alu|sum|fa3|Cout~0_combout\,
	combout => \ITERF|alu|sum|fa4|S~combout\);

\ITERF|alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux4~1_combout\ = (\ITERF|operacao\(1) & (((\ITERF|operacao\(0))))) # (!\ITERF|operacao\(1) & ((\ITERF|operacao\(0) & (\ITERF|alu|sub|fa4|S~combout\)) # (!\ITERF|operacao\(0) & ((\ITERF|alu|sum|fa4|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(1),
	datab => \ITERF|alu|sub|fa4|S~combout\,
	datac => \ITERF|operacao\(0),
	datad => \ITERF|alu|sum|fa4|S~combout\,
	combout => \ITERF|alu|Mux4~1_combout\);

\ITERF|alu|cop2|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|cop2|fa4|S~combout\ = \ITERF|A[3]~2_combout\ $ (((\ITERF|A[2]~7_combout\) # ((\ITERF|A[0]~17_combout\) # (\ITERF|A[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|A[2]~7_combout\,
	datab => \ITERF|A[0]~17_combout\,
	datac => \ITERF|A[1]~12_combout\,
	datad => \ITERF|A[3]~2_combout\,
	combout => \ITERF|alu|cop2|fa4|S~combout\);

\ITERF|alu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ITERF|alu|Mux4~2_combout\ = (\ITERF|operacao\(1) & ((\ITERF|alu|Mux4~1_combout\ & ((\ITERF|alu|cop2|fa4|S~combout\))) # (!\ITERF|alu|Mux4~1_combout\ & (\ITERF|alu|mult|fa31|S~2_combout\)))) # (!\ITERF|operacao\(1) & (((\ITERF|alu|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|mult|fa31|S~2_combout\,
	datab => \ITERF|operacao\(1),
	datac => \ITERF|alu|Mux4~1_combout\,
	datad => \ITERF|alu|cop2|fa4|S~combout\,
	combout => \ITERF|alu|Mux4~2_combout\);

\results0[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \results0[3]~5_combout\ = (\ITERF|operacao\(2) & \ITERF|alu|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|operacao\(2),
	datab => \ITERF|alu|Mux4~2_combout\,
	combout => \results0[3]~5_combout\);

\DECOD4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux6~0_combout\ = (\results0[2]~4_combout\ & (!\results0[1]~3_combout\ & (\ITERF|alu|Mux7~2_combout\ $ (!\results0[3]~5_combout\)))) # (!\results0[2]~4_combout\ & (\ITERF|alu|Mux7~2_combout\ & (\results0[1]~3_combout\ $ 
-- (!\results0[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux6~0_combout\);

\DECOD4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux5~0_combout\ = (\results0[1]~3_combout\ & ((\ITERF|alu|Mux7~2_combout\ & ((\results0[3]~5_combout\))) # (!\ITERF|alu|Mux7~2_combout\ & (\results0[2]~4_combout\)))) # (!\results0[1]~3_combout\ & (\results0[2]~4_combout\ & 
-- (\ITERF|alu|Mux7~2_combout\ $ (\results0[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux5~0_combout\);

\DECOD4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux4~0_combout\ = (\results0[2]~4_combout\ & (\results0[3]~5_combout\ & ((\results0[1]~3_combout\) # (!\ITERF|alu|Mux7~2_combout\)))) # (!\results0[2]~4_combout\ & (!\ITERF|alu|Mux7~2_combout\ & (\results0[1]~3_combout\ & 
-- !\results0[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux4~0_combout\);

\DECOD4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux3~0_combout\ = (\ITERF|alu|Mux7~2_combout\ & (\results0[1]~3_combout\ $ ((!\results0[2]~4_combout\)))) # (!\ITERF|alu|Mux7~2_combout\ & ((\results0[1]~3_combout\ & (!\results0[2]~4_combout\ & \results0[3]~5_combout\)) # 
-- (!\results0[1]~3_combout\ & (\results0[2]~4_combout\ & !\results0[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux3~0_combout\);

\DECOD4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux2~0_combout\ = (\results0[1]~3_combout\ & (\ITERF|alu|Mux7~2_combout\ & ((!\results0[3]~5_combout\)))) # (!\results0[1]~3_combout\ & ((\results0[2]~4_combout\ & ((!\results0[3]~5_combout\))) # (!\results0[2]~4_combout\ & 
-- (\ITERF|alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux2~0_combout\);

\DECOD4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux1~0_combout\ = (\ITERF|alu|Mux7~2_combout\ & (\results0[3]~5_combout\ $ (((\results0[1]~3_combout\) # (!\results0[2]~4_combout\))))) # (!\ITERF|alu|Mux7~2_combout\ & (\results0[1]~3_combout\ & (!\results0[2]~4_combout\ & 
-- !\results0[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux1~0_combout\);

\DECOD4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECOD4|Mux0~0_combout\ = (\ITERF|alu|Mux7~2_combout\ & ((\results0[3]~5_combout\) # (\results0[1]~3_combout\ $ (\results0[2]~4_combout\)))) # (!\ITERF|alu|Mux7~2_combout\ & ((\results0[1]~3_combout\) # (\results0[2]~4_combout\ $ 
-- (\results0[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ITERF|alu|Mux7~2_combout\,
	datab => \results0[1]~3_combout\,
	datac => \results0[2]~4_combout\,
	datad => \results0[3]~5_combout\,
	combout => \DECOD4|Mux0~0_combout\);

\V_SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(13),
	o => \V_SW[13]~input_o\);

ww_G_HEX7(0) <= \G_HEX7[0]~output_o\;

ww_G_HEX7(1) <= \G_HEX7[1]~output_o\;

ww_G_HEX7(2) <= \G_HEX7[2]~output_o\;

ww_G_HEX7(3) <= \G_HEX7[3]~output_o\;

ww_G_HEX7(4) <= \G_HEX7[4]~output_o\;

ww_G_HEX7(5) <= \G_HEX7[5]~output_o\;

ww_G_HEX7(6) <= \G_HEX7[6]~output_o\;

ww_G_HEX6(0) <= \G_HEX6[0]~output_o\;

ww_G_HEX6(1) <= \G_HEX6[1]~output_o\;

ww_G_HEX6(2) <= \G_HEX6[2]~output_o\;

ww_G_HEX6(3) <= \G_HEX6[3]~output_o\;

ww_G_HEX6(4) <= \G_HEX6[4]~output_o\;

ww_G_HEX6(5) <= \G_HEX6[5]~output_o\;

ww_G_HEX6(6) <= \G_HEX6[6]~output_o\;

ww_G_HEX5(0) <= \G_HEX5[0]~output_o\;

ww_G_HEX5(1) <= \G_HEX5[1]~output_o\;

ww_G_HEX5(2) <= \G_HEX5[2]~output_o\;

ww_G_HEX5(3) <= \G_HEX5[3]~output_o\;

ww_G_HEX5(4) <= \G_HEX5[4]~output_o\;

ww_G_HEX5(5) <= \G_HEX5[5]~output_o\;

ww_G_HEX5(6) <= \G_HEX5[6]~output_o\;

ww_G_HEX4(0) <= \G_HEX4[0]~output_o\;

ww_G_HEX4(1) <= \G_HEX4[1]~output_o\;

ww_G_HEX4(2) <= \G_HEX4[2]~output_o\;

ww_G_HEX4(3) <= \G_HEX4[3]~output_o\;

ww_G_HEX4(4) <= \G_HEX4[4]~output_o\;

ww_G_HEX4(5) <= \G_HEX4[5]~output_o\;

ww_G_HEX4(6) <= \G_HEX4[6]~output_o\;

ww_G_HEX3(0) <= \G_HEX3[0]~output_o\;

ww_G_HEX3(1) <= \G_HEX3[1]~output_o\;

ww_G_HEX3(2) <= \G_HEX3[2]~output_o\;

ww_G_HEX3(3) <= \G_HEX3[3]~output_o\;

ww_G_HEX3(4) <= \G_HEX3[4]~output_o\;

ww_G_HEX3(5) <= \G_HEX3[5]~output_o\;

ww_G_HEX3(6) <= \G_HEX3[6]~output_o\;

ww_G_HEX2(0) <= \G_HEX2[0]~output_o\;

ww_G_HEX2(1) <= \G_HEX2[1]~output_o\;

ww_G_HEX2(2) <= \G_HEX2[2]~output_o\;

ww_G_HEX2(3) <= \G_HEX2[3]~output_o\;

ww_G_HEX2(4) <= \G_HEX2[4]~output_o\;

ww_G_HEX2(5) <= \G_HEX2[5]~output_o\;

ww_G_HEX2(6) <= \G_HEX2[6]~output_o\;

ww_G_HEX1(0) <= \G_HEX1[0]~output_o\;

ww_G_HEX1(1) <= \G_HEX1[1]~output_o\;

ww_G_HEX1(2) <= \G_HEX1[2]~output_o\;

ww_G_HEX1(3) <= \G_HEX1[3]~output_o\;

ww_G_HEX1(4) <= \G_HEX1[4]~output_o\;

ww_G_HEX1(5) <= \G_HEX1[5]~output_o\;

ww_G_HEX1(6) <= \G_HEX1[6]~output_o\;

ww_G_HEX0(0) <= \G_HEX0[0]~output_o\;

ww_G_HEX0(1) <= \G_HEX0[1]~output_o\;

ww_G_HEX0(2) <= \G_HEX0[2]~output_o\;

ww_G_HEX0(3) <= \G_HEX0[3]~output_o\;

ww_G_HEX0(4) <= \G_HEX0[4]~output_o\;

ww_G_HEX0(5) <= \G_HEX0[5]~output_o\;

ww_G_HEX0(6) <= \G_HEX0[6]~output_o\;

ww_G_LEDG(0) <= \G_LEDG[0]~output_o\;

ww_G_LEDR(0) <= \G_LEDR[0]~output_o\;

ww_G_LEDR(1) <= \G_LEDR[1]~output_o\;

ww_G_LEDR(2) <= \G_LEDR[2]~output_o\;
END structure;


