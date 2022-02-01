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

-- DATE "01/07/2022 13:32:01"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	P11interface IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botaoSEL : IN std_logic;
	entradaA : IN std_logic_vector(3 DOWNTO 0);
	entradaB : IN std_logic_vector(3 DOWNTO 0);
	resultadoDISPLAY : OUT std_logic_vector(7 DOWNTO 0);
	carry_borrowLED : OUT std_logic;
	operacaoLED : OUT std_logic_vector(2 DOWNTO 0);
	saidaA : OUT std_logic_vector(3 DOWNTO 0);
	saidaB : OUT std_logic_vector(3 DOWNTO 0)
	);
END P11interface;

ARCHITECTURE structure OF P11interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_botaoSEL : std_logic;
SIGNAL ww_entradaA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resultadoDISPLAY : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carry_borrowLED : std_logic;
SIGNAL ww_operacaoLED : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saidaA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saidaB : std_logic_vector(3 DOWNTO 0);
SIGNAL \resultadoDISPLAY[0]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[1]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[2]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[3]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[4]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[5]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[6]~output_o\ : std_logic;
SIGNAL \resultadoDISPLAY[7]~output_o\ : std_logic;
SIGNAL \carry_borrowLED~output_o\ : std_logic;
SIGNAL \operacaoLED[0]~output_o\ : std_logic;
SIGNAL \operacaoLED[1]~output_o\ : std_logic;
SIGNAL \operacaoLED[2]~output_o\ : std_logic;
SIGNAL \saidaA[0]~output_o\ : std_logic;
SIGNAL \saidaA[1]~output_o\ : std_logic;
SIGNAL \saidaA[2]~output_o\ : std_logic;
SIGNAL \saidaA[3]~output_o\ : std_logic;
SIGNAL \saidaB[0]~output_o\ : std_logic;
SIGNAL \saidaB[1]~output_o\ : std_logic;
SIGNAL \saidaB[2]~output_o\ : std_logic;
SIGNAL \saidaB[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \botaoSEL~input_o\ : std_logic;
SIGNAL \estado~1_combout\ : std_logic;
SIGNAL \init~0_combout\ : std_logic;
SIGNAL \init~q\ : std_logic;
SIGNAL \estado~3_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \estado~_emulated_q\ : std_logic;
SIGNAL \estado~2_combout\ : std_logic;
SIGNAL \estado~5_combout\ : std_logic;
SIGNAL \B[0]~1_combout\ : std_logic;
SIGNAL \A[0]~25_combout\ : std_logic;
SIGNAL \B[0]~_emulated_q\ : std_logic;
SIGNAL \B[0]~3_combout\ : std_logic;
SIGNAL \B[0]~2_combout\ : std_logic;
SIGNAL \operacao~3_combout\ : std_logic;
SIGNAL \operacao[2]~1_combout\ : std_logic;
SIGNAL \operacao~0_combout\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \A[0]~1_combout\ : std_logic;
SIGNAL \A[0]~_emulated_q\ : std_logic;
SIGNAL \A[0]~3_combout\ : std_logic;
SIGNAL \A[0]~2_combout\ : std_logic;
SIGNAL \operacao~2_combout\ : std_logic;
SIGNAL \alu|Mux7~0_combout\ : std_logic;
SIGNAL \alu|Mux7~1_combout\ : std_logic;
SIGNAL \alu|Mux7~2_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \A[1]~6_combout\ : std_logic;
SIGNAL \A[1]~_emulated_q\ : std_logic;
SIGNAL \A[1]~8_combout\ : std_logic;
SIGNAL \A[1]~7_combout\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \B[1]~6_combout\ : std_logic;
SIGNAL \B[1]~_emulated_q\ : std_logic;
SIGNAL \B[1]~8_combout\ : std_logic;
SIGNAL \B[1]~7_combout\ : std_logic;
SIGNAL \alu|mult|fa11|S~0_combout\ : std_logic;
SIGNAL \alu|sub|fa2|S~0_combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \alu|cop2|fa2|S~combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|Mux6~2_combout\ : std_logic;
SIGNAL \alu|Mux6~3_combout\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \B[2]~11_combout\ : std_logic;
SIGNAL \B[2]~_emulated_q\ : std_logic;
SIGNAL \B[2]~13_combout\ : std_logic;
SIGNAL \B[2]~12_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \A[2]~11_combout\ : std_logic;
SIGNAL \A[2]~_emulated_q\ : std_logic;
SIGNAL \A[2]~13_combout\ : std_logic;
SIGNAL \A[2]~12_combout\ : std_logic;
SIGNAL \alu|mult|fa12|S~4_combout\ : std_logic;
SIGNAL \alu|mult|fa12|S~5_combout\ : std_logic;
SIGNAL \alu|mult|fa21|S~2_combout\ : std_logic;
SIGNAL \alu|Mux5~0_combout\ : std_logic;
SIGNAL \alu|sub|fa2|Cout~0_combout\ : std_logic;
SIGNAL \alu|sub|cp1|fa2|Cout~0_combout\ : std_logic;
SIGNAL \alu|sum|fa2|Cout~0_combout\ : std_logic;
SIGNAL \alu|Mux5~1_combout\ : std_logic;
SIGNAL \alu|Mux5~2_combout\ : std_logic;
SIGNAL \alu|Mux5~3_combout\ : std_logic;
SIGNAL \alu|Mux5~4_combout\ : std_logic;
SIGNAL \alu|Mux5~5_combout\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \B[3]~16_combout\ : std_logic;
SIGNAL \B[3]~_emulated_q\ : std_logic;
SIGNAL \B[3]~18_combout\ : std_logic;
SIGNAL \B[3]~17_combout\ : std_logic;
SIGNAL \alu|mult|comb~0_combout\ : std_logic;
SIGNAL \alu|mult|fa12|Cout~3_combout\ : std_logic;
SIGNAL \alu|mult|fa12|Cout~9_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \A[3]~16_combout\ : std_logic;
SIGNAL \A[3]~_emulated_q\ : std_logic;
SIGNAL \A[3]~18_combout\ : std_logic;
SIGNAL \A[3]~17_combout\ : std_logic;
SIGNAL \alu|mult|comb~2_combout\ : std_logic;
SIGNAL \alu|mult|fa13|S~combout\ : std_logic;
SIGNAL \alu|mult|comb~3_combout\ : std_logic;
SIGNAL \alu|mult|fa22|S~combout\ : std_logic;
SIGNAL \alu|mult|fa31|S~2_combout\ : std_logic;
SIGNAL \alu|sub|cp1|fa3|Cout~0_combout\ : std_logic;
SIGNAL \alu|sub|fa3|Cout~0_combout\ : std_logic;
SIGNAL \alu|sub|fa4|S~combout\ : std_logic;
SIGNAL \alu|sum|fa3|Cout~0_combout\ : std_logic;
SIGNAL \alu|sum|fa4|S~combout\ : std_logic;
SIGNAL \alu|Mux4~0_combout\ : std_logic;
SIGNAL \alu|cop2|fa4|S~combout\ : std_logic;
SIGNAL \alu|Mux4~1_combout\ : std_logic;
SIGNAL \alu|Mux4~2_combout\ : std_logic;
SIGNAL \alu|Mux4~3_combout\ : std_logic;
SIGNAL \alu|mult|comb~1_combout\ : std_logic;
SIGNAL \alu|mult|comb~4_combout\ : std_logic;
SIGNAL \alu|mult|comb~5_combout\ : std_logic;
SIGNAL \alu|mult|comb~6_combout\ : std_logic;
SIGNAL \alu|mult|fa22|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|fa13|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|fa23|S~combout\ : std_logic;
SIGNAL \alu|mult|fa32|S~combout\ : std_logic;
SIGNAL \alu|sub|fa4|Cout~0_combout\ : std_logic;
SIGNAL \alu|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Mux3~1_combout\ : std_logic;
SIGNAL \alu|Mux3~2_combout\ : std_logic;
SIGNAL \alu|Mux2~0_combout\ : std_logic;
SIGNAL \alu|mult|fa24|S~2_combout\ : std_logic;
SIGNAL \alu|mult|comb~7_combout\ : std_logic;
SIGNAL \alu|mult|fa32|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|fa23|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|fa33|S~combout\ : std_logic;
SIGNAL \alu|Mux2~1_combout\ : std_logic;
SIGNAL \alu|mult|fa33|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|comb~8_combout\ : std_logic;
SIGNAL \alu|mult|fa24|Cout~0_combout\ : std_logic;
SIGNAL \alu|mult|fa34|S~0_combout\ : std_logic;
SIGNAL \alu|Mux1~0_combout\ : std_logic;
SIGNAL \alu|mult|fa34|Cout~0_combout\ : std_logic;
SIGNAL \alu|Mux0~0_combout\ : std_logic;
SIGNAL \saidaA[3]~21_combout\ : std_logic;
SIGNAL \saidaA[0]~1_combout\ : std_logic;
SIGNAL \saidaA[0]~0_combout\ : std_logic;
SIGNAL \saidaA[0]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaA[0]~3_combout\ : std_logic;
SIGNAL \saidaA[0]~2_combout\ : std_logic;
SIGNAL \saidaA[1]~6_combout\ : std_logic;
SIGNAL \saidaA[1]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaA[1]~8_combout\ : std_logic;
SIGNAL \saidaA[1]~7_combout\ : std_logic;
SIGNAL \saidaA[2]~11_combout\ : std_logic;
SIGNAL \saidaA[2]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaA[2]~13_combout\ : std_logic;
SIGNAL \saidaA[2]~12_combout\ : std_logic;
SIGNAL \saidaA[3]~16_combout\ : std_logic;
SIGNAL \saidaA[3]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaA[3]~18_combout\ : std_logic;
SIGNAL \saidaA[3]~17_combout\ : std_logic;
SIGNAL \saidaB[0]~1_combout\ : std_logic;
SIGNAL \saidaB[0]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaB[0]~3_combout\ : std_logic;
SIGNAL \saidaB[0]~2_combout\ : std_logic;
SIGNAL \saidaB[1]~6_combout\ : std_logic;
SIGNAL \saidaB[1]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaB[1]~8_combout\ : std_logic;
SIGNAL \saidaB[1]~7_combout\ : std_logic;
SIGNAL \saidaB[2]~11_combout\ : std_logic;
SIGNAL \saidaB[2]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaB[2]~13_combout\ : std_logic;
SIGNAL \saidaB[2]~12_combout\ : std_logic;
SIGNAL \saidaB[3]~16_combout\ : std_logic;
SIGNAL \saidaB[3]~reg0_emulated_q\ : std_logic;
SIGNAL \saidaB[3]~18_combout\ : std_logic;
SIGNAL \saidaB[3]~17_combout\ : std_logic;
SIGNAL operacao : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_A[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_operacao[2]~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botaoSEL <= botaoSEL;
ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
resultadoDISPLAY <= ww_resultadoDISPLAY;
carry_borrowLED <= ww_carry_borrowLED;
operacaoLED <= ww_operacaoLED;
saidaA <= ww_saidaA;
saidaB <= ww_saidaB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~0_combout\ <= NOT \A[0]~0_combout\;
\ALT_INV_saidaA[0]~0_combout\ <= NOT \saidaA[0]~0_combout\;
\ALT_INV_operacao[2]~1_combout\ <= NOT \operacao[2]~1_combout\;

\resultadoDISPLAY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[0]~output_o\);

\resultadoDISPLAY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[1]~output_o\);

\resultadoDISPLAY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux5~5_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[2]~output_o\);

\resultadoDISPLAY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[3]~output_o\);

\resultadoDISPLAY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[4]~output_o\);

\resultadoDISPLAY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[5]~output_o\);

\resultadoDISPLAY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[6]~output_o\);

\resultadoDISPLAY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \resultadoDISPLAY[7]~output_o\);

\carry_borrowLED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|sub|fa4|Cout~0_combout\,
	devoe => ww_devoe,
	o => \carry_borrowLED~output_o\);

\operacaoLED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => operacao(0),
	devoe => ww_devoe,
	o => \operacaoLED[0]~output_o\);

\operacaoLED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => operacao(1),
	devoe => ww_devoe,
	o => \operacaoLED[1]~output_o\);

\operacaoLED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => operacao(2),
	devoe => ww_devoe,
	o => \operacaoLED[2]~output_o\);

\saidaA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[0]~2_combout\,
	devoe => ww_devoe,
	o => \saidaA[0]~output_o\);

\saidaA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[1]~7_combout\,
	devoe => ww_devoe,
	o => \saidaA[1]~output_o\);

\saidaA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[2]~12_combout\,
	devoe => ww_devoe,
	o => \saidaA[2]~output_o\);

\saidaA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaA[3]~17_combout\,
	devoe => ww_devoe,
	o => \saidaA[3]~output_o\);

\saidaB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[0]~2_combout\,
	devoe => ww_devoe,
	o => \saidaB[0]~output_o\);

\saidaB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[1]~7_combout\,
	devoe => ww_devoe,
	o => \saidaB[1]~output_o\);

\saidaB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[2]~12_combout\,
	devoe => ww_devoe,
	o => \saidaB[2]~output_o\);

\saidaB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaB[3]~17_combout\,
	devoe => ww_devoe,
	o => \saidaB[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\entradaB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\botaoSEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botaoSEL,
	o => \botaoSEL~input_o\);

\estado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~1_combout\ = (\reset~input_o\ & ((\estado~1_combout\) # (\estado~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado~1_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \estado~1_combout\);

\init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init~0_combout\ = (\init~q\) # ((\reset~input_o\ & \estado~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \estado~2_combout\,
	datad => \init~q\,
	combout => \init~0_combout\);

init : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init~q\);

\estado~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~3_combout\ = \estado~1_combout\ $ (((\init~q\ & \estado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado~1_combout\,
	datab => \init~q\,
	datac => \estado~2_combout\,
	combout => \estado~3_combout\);

\A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\estado~5_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \estado~5_combout\,
	combout => \A[0]~0_combout\);

\estado~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado~3_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado~_emulated_q\);

\estado~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~2_combout\ = (\reset~input_o\ & ((\estado~5_combout\) # (\estado~_emulated_q\ $ (\estado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado~_emulated_q\,
	datab => \estado~1_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \estado~2_combout\);

\estado~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~5_combout\ = (\reset~input_o\ & (!\botaoSEL~input_o\ & !\estado~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \botaoSEL~input_o\,
	datad => \estado~2_combout\,
	combout => \estado~5_combout\);

\B[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~1_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaB[0]~input_o\)) # (!\estado~5_combout\ & ((\B[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[0]~input_o\,
	datab => \B[0]~1_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \B[0]~1_combout\);

\A[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~25_combout\ = (\estado~2_combout\ & !\init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado~2_combout\,
	datad => \init~q\,
	combout => \A[0]~25_combout\);

\B[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[0]~1_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~_emulated_q\);

\B[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~3_combout\ = \B[0]~_emulated_q\ $ (\B[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~_emulated_q\,
	datab => \B[0]~1_combout\,
	combout => \B[0]~3_combout\);

\B[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~2_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaB[0]~input_o\))) # (!\estado~5_combout\ & (\B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~3_combout\,
	datab => \estado~5_combout\,
	datac => \entradaB[0]~input_o\,
	datad => \reset~input_o\,
	combout => \B[0]~2_combout\);

\operacao~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \operacao~3_combout\ = (!operacao(0) & \init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(0),
	datad => \init~q\,
	combout => \operacao~3_combout\);

\operacao[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \operacao[2]~1_combout\ = ((!\botaoSEL~input_o\ & !\estado~2_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botaoSEL~input_o\,
	datac => \estado~2_combout\,
	datad => \reset~input_o\,
	combout => \operacao[2]~1_combout\);

\operacao[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \operacao~3_combout\,
	clrn => \ALT_INV_operacao[2]~1_combout\,
	ena => \estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operacao(0));

\operacao~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \operacao~0_combout\ = (\init~q\ & (operacao(1) $ (operacao(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => operacao(0),
	datad => \init~q\,
	combout => \operacao~0_combout\);

\operacao[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \operacao~0_combout\,
	clrn => \ALT_INV_operacao[2]~1_combout\,
	ena => \estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operacao(1));

\entradaA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\A[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~1_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaA[0]~input_o\)) # (!\estado~5_combout\ & ((\A[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[0]~input_o\,
	datab => \A[0]~1_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \A[0]~1_combout\);

\A[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A[0]~1_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[0]~_emulated_q\);

\A[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~3_combout\ = \A[0]~_emulated_q\ $ (\A[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~_emulated_q\,
	datab => \A[0]~1_combout\,
	combout => \A[0]~3_combout\);

\A[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[0]~2_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaA[0]~input_o\))) # (!\estado~5_combout\ & (\A[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~3_combout\,
	datab => \estado~5_combout\,
	datac => \entradaA[0]~input_o\,
	datad => \reset~input_o\,
	combout => \A[0]~2_combout\);

\operacao~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \operacao~2_combout\ = (\init~q\ & (operacao(2) $ (((operacao(1) & operacao(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~q\,
	datab => operacao(2),
	datac => operacao(1),
	datad => operacao(0),
	combout => \operacao~2_combout\);

\operacao[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \operacao~2_combout\,
	clrn => \ALT_INV_operacao[2]~1_combout\,
	ena => \estado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => operacao(2));

\alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~0_combout\ = (\A[0]~2_combout\ & ((operacao(0)) # ((!operacao(1) & operacao(2))))) # (!\A[0]~2_combout\ & (operacao(1) & (!operacao(2) & !operacao(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => \A[0]~2_combout\,
	datac => operacao(2),
	datad => operacao(0),
	combout => \alu|Mux7~0_combout\);

\alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~1_combout\ = (operacao(2) & (((\A[0]~2_combout\ & !operacao(0))) # (!operacao(1)))) # (!operacao(2) & (operacao(0) $ (((!operacao(1) & \A[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => \A[0]~2_combout\,
	datac => operacao(2),
	datad => operacao(0),
	combout => \alu|Mux7~1_combout\);

\alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~2_combout\ = \alu|Mux7~0_combout\ $ (((\B[0]~2_combout\ & \alu|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \alu|Mux7~0_combout\,
	datac => \alu|Mux7~1_combout\,
	combout => \alu|Mux7~2_combout\);

\entradaA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\A[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[1]~6_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaA[1]~input_o\)) # (!\estado~5_combout\ & ((\A[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[1]~input_o\,
	datab => \A[1]~6_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \A[1]~6_combout\);

\A[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A[1]~6_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[1]~_emulated_q\);

\A[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[1]~8_combout\ = \A[1]~_emulated_q\ $ (\A[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~_emulated_q\,
	datab => \A[1]~6_combout\,
	combout => \A[1]~8_combout\);

\A[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[1]~7_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaA[1]~input_o\))) # (!\estado~5_combout\ & (\A[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~8_combout\,
	datab => \estado~5_combout\,
	datac => \entradaA[1]~input_o\,
	datad => \reset~input_o\,
	combout => \A[1]~7_combout\);

\entradaB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\B[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[1]~6_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaB[1]~input_o\)) # (!\estado~5_combout\ & ((\B[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[1]~input_o\,
	datab => \B[1]~6_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \B[1]~6_combout\);

\B[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[1]~6_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~_emulated_q\);

\B[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[1]~8_combout\ = \B[1]~_emulated_q\ $ (\B[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~_emulated_q\,
	datab => \B[1]~6_combout\,
	combout => \B[1]~8_combout\);

\B[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[1]~7_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaB[1]~input_o\))) # (!\estado~5_combout\ & (\B[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~8_combout\,
	datab => \estado~5_combout\,
	datac => \entradaB[1]~input_o\,
	datad => \reset~input_o\,
	combout => \B[1]~7_combout\);

\alu|mult|fa11|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa11|S~0_combout\ = (\A[0]~2_combout\ & (\B[1]~7_combout\ $ (((\B[0]~2_combout\ & \A[1]~7_combout\))))) # (!\A[0]~2_combout\ & (\B[0]~2_combout\ & (\A[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[0]~2_combout\,
	datac => \A[1]~7_combout\,
	datad => \B[1]~7_combout\,
	combout => \alu|mult|fa11|S~0_combout\);

\alu|sub|fa2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|fa2|S~0_combout\ = \A[1]~7_combout\ $ (\B[1]~7_combout\ $ (((\A[0]~2_combout\ & \B[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[0]~2_combout\,
	datac => \A[1]~7_combout\,
	datad => \B[1]~7_combout\,
	combout => \alu|sub|fa2|S~0_combout\);

\alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = (operacao(1) & (((operacao(0))))) # (!operacao(1) & (\alu|sub|fa2|S~0_combout\ $ (((\B[0]~2_combout\ & operacao(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \alu|sub|fa2|S~0_combout\,
	datac => operacao(0),
	datad => operacao(1),
	combout => \alu|Mux6~0_combout\);

\alu|cop2|fa2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|cop2|fa2|S~combout\ = \A[0]~2_combout\ $ (\A[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~2_combout\,
	datad => \A[1]~7_combout\,
	combout => \alu|cop2|fa2|S~combout\);

\alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = (operacao(1) & ((\alu|Mux6~0_combout\ & ((\alu|cop2|fa2|S~combout\))) # (!\alu|Mux6~0_combout\ & (\alu|mult|fa11|S~0_combout\)))) # (!operacao(1) & (((\alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa11|S~0_combout\,
	datab => operacao(1),
	datac => \alu|Mux6~0_combout\,
	datad => \alu|cop2|fa2|S~combout\,
	combout => \alu|Mux6~1_combout\);

\alu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~2_combout\ = (\A[1]~7_combout\ & ((\B[1]~7_combout\ & ((!operacao(1)))) # (!\B[1]~7_combout\ & (operacao(0))))) # (!\A[1]~7_combout\ & ((operacao(0) & (\B[1]~7_combout\)) # (!operacao(0) & ((operacao(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(0),
	datab => \B[1]~7_combout\,
	datac => operacao(1),
	datad => \A[1]~7_combout\,
	combout => \alu|Mux6~2_combout\);

\alu|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~3_combout\ = (operacao(2) & (\alu|Mux6~1_combout\)) # (!operacao(2) & ((\alu|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~1_combout\,
	datab => \alu|Mux6~2_combout\,
	datad => operacao(2),
	combout => \alu|Mux6~3_combout\);

\entradaB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\B[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[2]~11_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaB[2]~input_o\)) # (!\estado~5_combout\ & ((\B[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[2]~input_o\,
	datab => \B[2]~11_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \B[2]~11_combout\);

\B[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[2]~11_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~_emulated_q\);

\B[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[2]~13_combout\ = \B[2]~_emulated_q\ $ (\B[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~_emulated_q\,
	datab => \B[2]~11_combout\,
	combout => \B[2]~13_combout\);

\B[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[2]~12_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaB[2]~input_o\))) # (!\estado~5_combout\ & (\B[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~13_combout\,
	datab => \estado~5_combout\,
	datac => \entradaB[2]~input_o\,
	datad => \reset~input_o\,
	combout => \B[2]~12_combout\);

\entradaA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\A[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~11_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaA[2]~input_o\)) # (!\estado~5_combout\ & ((\A[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \A[2]~11_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \A[2]~11_combout\);

\A[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A[2]~11_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[2]~_emulated_q\);

\A[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~13_combout\ = \A[2]~_emulated_q\ $ (\A[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~_emulated_q\,
	datab => \A[2]~11_combout\,
	combout => \A[2]~13_combout\);

\A[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[2]~12_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaA[2]~input_o\))) # (!\estado~5_combout\ & (\A[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~13_combout\,
	datab => \estado~5_combout\,
	datac => \entradaA[2]~input_o\,
	datad => \reset~input_o\,
	combout => \A[2]~12_combout\);

\alu|mult|fa12|S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa12|S~4_combout\ = \A[2]~12_combout\ $ (((\B[1]~7_combout\ & (\A[1]~7_combout\ & !\A[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \A[1]~7_combout\,
	datac => \A[0]~2_combout\,
	datad => \A[2]~12_combout\,
	combout => \alu|mult|fa12|S~4_combout\);

\alu|mult|fa12|S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa12|S~5_combout\ = (\B[0]~2_combout\ & (((\alu|mult|fa12|S~4_combout\)))) # (!\B[0]~2_combout\ & (\B[1]~7_combout\ & ((\A[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \alu|mult|fa12|S~4_combout\,
	datac => \A[1]~7_combout\,
	datad => \B[0]~2_combout\,
	combout => \alu|mult|fa12|S~5_combout\);

\alu|mult|fa21|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa21|S~2_combout\ = \alu|mult|fa12|S~5_combout\ $ (((\A[0]~2_combout\ & \B[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[2]~12_combout\,
	datac => \alu|mult|fa12|S~5_combout\,
	combout => \alu|mult|fa21|S~2_combout\);

\alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~0_combout\ = \A[2]~12_combout\ $ (((operacao(1) & ((\A[0]~2_combout\) # (\A[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~12_combout\,
	datab => operacao(1),
	datac => \A[0]~2_combout\,
	datad => \A[1]~7_combout\,
	combout => \alu|Mux5~0_combout\);

\alu|sub|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|fa2|Cout~0_combout\ = (\B[1]~7_combout\ & (\A[1]~7_combout\ & ((\A[0]~2_combout\) # (!\B[0]~2_combout\)))) # (!\B[1]~7_combout\ & (\B[0]~2_combout\ & ((\A[0]~2_combout\) # (\A[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \B[0]~2_combout\,
	datac => \A[0]~2_combout\,
	datad => \A[1]~7_combout\,
	combout => \alu|sub|fa2|Cout~0_combout\);

\alu|sub|cp1|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|cp1|fa2|Cout~0_combout\ = (\B[0]~2_combout\) # (\B[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \B[1]~7_combout\,
	combout => \alu|sub|cp1|fa2|Cout~0_combout\);

\alu|sum|fa2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sum|fa2|Cout~0_combout\ = (\A[1]~7_combout\ & ((\B[1]~7_combout\) # ((\B[0]~2_combout\ & \A[0]~2_combout\)))) # (!\A[1]~7_combout\ & (\B[0]~2_combout\ & (\A[0]~2_combout\ & \B[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \A[0]~2_combout\,
	datac => \A[1]~7_combout\,
	datad => \B[1]~7_combout\,
	combout => \alu|sum|fa2|Cout~0_combout\);

\alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~1_combout\ = (operacao(0) & (\alu|sub|fa2|Cout~0_combout\ $ ((\alu|sub|cp1|fa2|Cout~0_combout\)))) # (!operacao(0) & (((\alu|sum|fa2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sub|fa2|Cout~0_combout\,
	datab => \alu|sub|cp1|fa2|Cout~0_combout\,
	datac => \alu|sum|fa2|Cout~0_combout\,
	datad => operacao(0),
	combout => \alu|Mux5~1_combout\);

\alu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~2_combout\ = (operacao(1) & (((operacao(0))))) # (!operacao(1) & (\B[2]~12_combout\ $ (((\alu|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~12_combout\,
	datab => operacao(1),
	datac => operacao(0),
	datad => \alu|Mux5~1_combout\,
	combout => \alu|Mux5~2_combout\);

\alu|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~3_combout\ = (operacao(1) & ((\alu|Mux5~2_combout\ & ((\alu|Mux5~0_combout\))) # (!\alu|Mux5~2_combout\ & (\alu|mult|fa21|S~2_combout\)))) # (!operacao(1) & ((\alu|Mux5~0_combout\ $ (\alu|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa21|S~2_combout\,
	datab => \alu|Mux5~0_combout\,
	datac => operacao(1),
	datad => \alu|Mux5~2_combout\,
	combout => \alu|Mux5~3_combout\);

\alu|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~4_combout\ = (\A[2]~12_combout\ & ((\B[2]~12_combout\ & (!operacao(1))) # (!\B[2]~12_combout\ & ((operacao(0)))))) # (!\A[2]~12_combout\ & ((operacao(0) & ((\B[2]~12_combout\))) # (!operacao(0) & (operacao(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => \B[2]~12_combout\,
	datac => \A[2]~12_combout\,
	datad => operacao(0),
	combout => \alu|Mux5~4_combout\);

\alu|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~5_combout\ = (operacao(2) & (\alu|Mux5~3_combout\)) # (!operacao(2) & ((\alu|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~3_combout\,
	datab => \alu|Mux5~4_combout\,
	datad => operacao(2),
	combout => \alu|Mux5~5_combout\);

\entradaB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\B[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[3]~16_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaB[3]~input_o\)) # (!\estado~5_combout\ & ((\B[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[3]~input_o\,
	datab => \B[3]~16_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \B[3]~16_combout\);

\B[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \B[3]~16_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~_emulated_q\);

\B[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[3]~18_combout\ = \B[3]~_emulated_q\ $ (\B[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~_emulated_q\,
	datab => \B[3]~16_combout\,
	combout => \B[3]~18_combout\);

\B[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[3]~17_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaB[3]~input_o\))) # (!\estado~5_combout\ & (\B[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~18_combout\,
	datab => \estado~5_combout\,
	datac => \entradaB[3]~input_o\,
	datad => \reset~input_o\,
	combout => \B[3]~17_combout\);

\alu|mult|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~0_combout\ = (\A[0]~2_combout\ & \B[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[2]~12_combout\,
	combout => \alu|mult|comb~0_combout\);

\alu|mult|fa12|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa12|Cout~3_combout\ = (\A[2]~12_combout\) # (\A[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~12_combout\,
	datab => \A[0]~2_combout\,
	combout => \alu|mult|fa12|Cout~3_combout\);

\alu|mult|fa12|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa12|Cout~9_combout\ = (\alu|mult|fa12|Cout~3_combout\ & (\A[1]~7_combout\ & (\B[0]~2_combout\ & \B[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa12|Cout~3_combout\,
	datab => \A[1]~7_combout\,
	datac => \B[0]~2_combout\,
	datad => \B[1]~7_combout\,
	combout => \alu|mult|fa12|Cout~9_combout\);

\entradaA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\A[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[3]~16_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & (\entradaA[3]~input_o\)) # (!\estado~5_combout\ & ((\A[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[3]~input_o\,
	datab => \A[3]~16_combout\,
	datac => \estado~5_combout\,
	datad => \reset~input_o\,
	combout => \A[3]~16_combout\);

\A[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A[3]~16_combout\,
	clrn => \ALT_INV_A[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A[3]~_emulated_q\);

\A[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[3]~18_combout\ = \A[3]~_emulated_q\ $ (\A[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~_emulated_q\,
	datab => \A[3]~16_combout\,
	combout => \A[3]~18_combout\);

\A[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[3]~17_combout\ = (\reset~input_o\ & ((\estado~5_combout\ & ((\entradaA[3]~input_o\))) # (!\estado~5_combout\ & (\A[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~18_combout\,
	datab => \estado~5_combout\,
	datac => \entradaA[3]~input_o\,
	datad => \reset~input_o\,
	combout => \A[3]~17_combout\);

\alu|mult|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~2_combout\ = (\B[0]~2_combout\ & \A[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \A[3]~17_combout\,
	combout => \alu|mult|comb~2_combout\);

\alu|mult|fa13|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa13|S~combout\ = \alu|mult|fa12|Cout~9_combout\ $ (\alu|mult|comb~2_combout\ $ (((\B[1]~7_combout\ & \A[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \A[2]~12_combout\,
	datac => \alu|mult|fa12|Cout~9_combout\,
	datad => \alu|mult|comb~2_combout\,
	combout => \alu|mult|fa13|S~combout\);

\alu|mult|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~3_combout\ = (\A[1]~7_combout\ & \B[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~7_combout\,
	datab => \B[2]~12_combout\,
	combout => \alu|mult|comb~3_combout\);

\alu|mult|fa22|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa22|S~combout\ = \alu|mult|fa13|S~combout\ $ (\alu|mult|comb~3_combout\ $ (((\alu|mult|comb~0_combout\ & \alu|mult|fa12|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|comb~0_combout\,
	datab => \alu|mult|fa12|S~5_combout\,
	datac => \alu|mult|fa13|S~combout\,
	datad => \alu|mult|comb~3_combout\,
	combout => \alu|mult|fa22|S~combout\);

\alu|mult|fa31|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa31|S~2_combout\ = \alu|mult|fa22|S~combout\ $ (((\A[0]~2_combout\ & \B[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[3]~17_combout\,
	datac => \alu|mult|fa22|S~combout\,
	combout => \alu|mult|fa31|S~2_combout\);

\alu|sub|cp1|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|cp1|fa3|Cout~0_combout\ = (\B[0]~2_combout\) # ((\B[1]~7_combout\) # (\B[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~2_combout\,
	datab => \B[1]~7_combout\,
	datac => \B[2]~12_combout\,
	combout => \alu|sub|cp1|fa3|Cout~0_combout\);

\alu|sub|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|fa3|Cout~0_combout\ = (\A[2]~12_combout\ & ((\alu|sub|fa2|Cout~0_combout\) # (\alu|sub|cp1|fa2|Cout~0_combout\ $ (\B[2]~12_combout\)))) # (!\A[2]~12_combout\ & (\alu|sub|fa2|Cout~0_combout\ & (\alu|sub|cp1|fa2|Cout~0_combout\ $ 
-- (\B[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sub|cp1|fa2|Cout~0_combout\,
	datab => \B[2]~12_combout\,
	datac => \A[2]~12_combout\,
	datad => \alu|sub|fa2|Cout~0_combout\,
	combout => \alu|sub|fa3|Cout~0_combout\);

\alu|sub|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|fa4|S~combout\ = \B[3]~17_combout\ $ (\A[3]~17_combout\ $ (\alu|sub|cp1|fa3|Cout~0_combout\ $ (\alu|sub|fa3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~17_combout\,
	datab => \A[3]~17_combout\,
	datac => \alu|sub|cp1|fa3|Cout~0_combout\,
	datad => \alu|sub|fa3|Cout~0_combout\,
	combout => \alu|sub|fa4|S~combout\);

\alu|sum|fa3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sum|fa3|Cout~0_combout\ = (\B[2]~12_combout\ & ((\A[2]~12_combout\) # (\alu|sum|fa2|Cout~0_combout\))) # (!\B[2]~12_combout\ & (\A[2]~12_combout\ & \alu|sum|fa2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~12_combout\,
	datab => \A[2]~12_combout\,
	datac => \alu|sum|fa2|Cout~0_combout\,
	combout => \alu|sum|fa3|Cout~0_combout\);

\alu|sum|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sum|fa4|S~combout\ = \B[3]~17_combout\ $ (\A[3]~17_combout\ $ (\alu|sum|fa3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~17_combout\,
	datab => \A[3]~17_combout\,
	datac => \alu|sum|fa3|Cout~0_combout\,
	combout => \alu|sum|fa4|S~combout\);

\alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~0_combout\ = (operacao(1) & (((operacao(0))))) # (!operacao(1) & ((operacao(0) & (\alu|sub|fa4|S~combout\)) # (!operacao(0) & ((\alu|sum|fa4|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => \alu|sub|fa4|S~combout\,
	datac => operacao(0),
	datad => \alu|sum|fa4|S~combout\,
	combout => \alu|Mux4~0_combout\);

\alu|cop2|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|cop2|fa4|S~combout\ = \A[3]~17_combout\ $ (((\A[0]~2_combout\) # ((\A[1]~7_combout\) # (\A[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \A[1]~7_combout\,
	datac => \A[2]~12_combout\,
	datad => \A[3]~17_combout\,
	combout => \alu|cop2|fa4|S~combout\);

\alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~1_combout\ = (operacao(1) & ((\alu|Mux4~0_combout\ & ((\alu|cop2|fa4|S~combout\))) # (!\alu|Mux4~0_combout\ & (\alu|mult|fa31|S~2_combout\)))) # (!operacao(1) & (((\alu|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa31|S~2_combout\,
	datab => operacao(1),
	datac => \alu|Mux4~0_combout\,
	datad => \alu|cop2|fa4|S~combout\,
	combout => \alu|Mux4~1_combout\);

\alu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~2_combout\ = (\A[3]~17_combout\ & ((\B[3]~17_combout\ & (!operacao(1))) # (!\B[3]~17_combout\ & ((operacao(0)))))) # (!\A[3]~17_combout\ & ((operacao(0) & ((\B[3]~17_combout\))) # (!operacao(0) & (operacao(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(1),
	datab => \B[3]~17_combout\,
	datac => \A[3]~17_combout\,
	datad => operacao(0),
	combout => \alu|Mux4~2_combout\);

\alu|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~3_combout\ = (operacao(2) & (\alu|Mux4~1_combout\)) # (!operacao(2) & ((\alu|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~1_combout\,
	datab => \alu|Mux4~2_combout\,
	datad => operacao(2),
	combout => \alu|Mux4~3_combout\);

\alu|mult|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~1_combout\ = (\A[0]~2_combout\ & \B[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~2_combout\,
	datab => \B[3]~17_combout\,
	combout => \alu|mult|comb~1_combout\);

\alu|mult|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~4_combout\ = (\A[1]~7_combout\ & \B[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~7_combout\,
	datab => \B[3]~17_combout\,
	combout => \alu|mult|comb~4_combout\);

\alu|mult|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~5_combout\ = (\B[2]~12_combout\ & \A[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~12_combout\,
	datab => \A[2]~12_combout\,
	combout => \alu|mult|comb~5_combout\);

\alu|mult|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~6_combout\ = (\B[1]~7_combout\ & \A[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \A[3]~17_combout\,
	combout => \alu|mult|comb~6_combout\);

\alu|mult|fa22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa22|Cout~0_combout\ = (\alu|mult|comb~3_combout\ & ((\alu|mult|fa13|S~combout\) # ((\alu|mult|fa12|S~5_combout\ & \alu|mult|comb~0_combout\)))) # (!\alu|mult|comb~3_combout\ & (\alu|mult|fa12|S~5_combout\ & (\alu|mult|comb~0_combout\ & 
-- \alu|mult|fa13|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa12|S~5_combout\,
	datab => \alu|mult|comb~0_combout\,
	datac => \alu|mult|comb~3_combout\,
	datad => \alu|mult|fa13|S~combout\,
	combout => \alu|mult|fa22|Cout~0_combout\);

\alu|mult|fa13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa13|Cout~0_combout\ = (\alu|mult|comb~2_combout\ & ((\alu|mult|fa12|Cout~9_combout\) # ((\B[1]~7_combout\ & \A[2]~12_combout\)))) # (!\alu|mult|comb~2_combout\ & (\B[1]~7_combout\ & (\A[2]~12_combout\ & \alu|mult|fa12|Cout~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \A[2]~12_combout\,
	datac => \alu|mult|comb~2_combout\,
	datad => \alu|mult|fa12|Cout~9_combout\,
	combout => \alu|mult|fa13|Cout~0_combout\);

\alu|mult|fa23|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa23|S~combout\ = \alu|mult|comb~5_combout\ $ (\alu|mult|comb~6_combout\ $ (\alu|mult|fa22|Cout~0_combout\ $ (\alu|mult|fa13|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|comb~5_combout\,
	datab => \alu|mult|comb~6_combout\,
	datac => \alu|mult|fa22|Cout~0_combout\,
	datad => \alu|mult|fa13|Cout~0_combout\,
	combout => \alu|mult|fa23|S~combout\);

\alu|mult|fa32|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa32|S~combout\ = \alu|mult|comb~4_combout\ $ (\alu|mult|fa23|S~combout\ $ (((\alu|mult|comb~1_combout\ & \alu|mult|fa22|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|comb~1_combout\,
	datab => \alu|mult|fa22|S~combout\,
	datac => \alu|mult|comb~4_combout\,
	datad => \alu|mult|fa23|S~combout\,
	combout => \alu|mult|fa32|S~combout\);

\alu|sub|fa4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|sub|fa4|Cout~0_combout\ = (\A[3]~17_combout\ & ((\alu|sub|fa3|Cout~0_combout\) # (\alu|sub|cp1|fa3|Cout~0_combout\ $ (\B[3]~17_combout\)))) # (!\A[3]~17_combout\ & (\alu|sub|fa3|Cout~0_combout\ & (\alu|sub|cp1|fa3|Cout~0_combout\ $ 
-- (\B[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|sub|cp1|fa3|Cout~0_combout\,
	datab => \B[3]~17_combout\,
	datac => \A[3]~17_combout\,
	datad => \alu|sub|fa3|Cout~0_combout\,
	combout => \alu|sub|fa4|Cout~0_combout\);

\alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~0_combout\ = (\B[3]~17_combout\ & ((\A[3]~17_combout\) # (\alu|sum|fa3|Cout~0_combout\))) # (!\B[3]~17_combout\ & (\A[3]~17_combout\ & \alu|sum|fa3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~17_combout\,
	datab => \A[3]~17_combout\,
	datac => \alu|sum|fa3|Cout~0_combout\,
	combout => \alu|Mux3~0_combout\);

\alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~1_combout\ = (operacao(0) & ((\alu|sub|fa4|Cout~0_combout\) # ((operacao(1))))) # (!operacao(0) & (((!operacao(1) & \alu|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(0),
	datab => \alu|sub|fa4|Cout~0_combout\,
	datac => operacao(1),
	datad => \alu|Mux3~0_combout\,
	combout => \alu|Mux3~1_combout\);

\alu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~2_combout\ = (operacao(2) & ((operacao(1) & (\alu|mult|fa32|S~combout\ & !\alu|Mux3~1_combout\)) # (!operacao(1) & ((\alu|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(2),
	datab => \alu|mult|fa32|S~combout\,
	datac => operacao(1),
	datad => \alu|Mux3~1_combout\,
	combout => \alu|Mux3~2_combout\);

\alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~0_combout\ = (operacao(2) & (operacao(1) $ (operacao(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operacao(2),
	datac => operacao(1),
	datad => operacao(0),
	combout => \alu|Mux2~0_combout\);

\alu|mult|fa24|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa24|S~2_combout\ = (\A[3]~17_combout\ & (\B[2]~12_combout\ $ (((\B[1]~7_combout\ & \alu|mult|fa13|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~7_combout\,
	datab => \A[3]~17_combout\,
	datac => \B[2]~12_combout\,
	datad => \alu|mult|fa13|Cout~0_combout\,
	combout => \alu|mult|fa24|S~2_combout\);

\alu|mult|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~7_combout\ = (\A[2]~12_combout\ & \B[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~12_combout\,
	datab => \B[3]~17_combout\,
	combout => \alu|mult|comb~7_combout\);

\alu|mult|fa32|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa32|Cout~0_combout\ = (\alu|mult|comb~4_combout\ & ((\alu|mult|fa23|S~combout\) # ((\alu|mult|fa22|S~combout\ & \alu|mult|comb~1_combout\)))) # (!\alu|mult|comb~4_combout\ & (\alu|mult|fa22|S~combout\ & (\alu|mult|comb~1_combout\ & 
-- \alu|mult|fa23|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa22|S~combout\,
	datab => \alu|mult|comb~1_combout\,
	datac => \alu|mult|comb~4_combout\,
	datad => \alu|mult|fa23|S~combout\,
	combout => \alu|mult|fa32|Cout~0_combout\);

\alu|mult|fa23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa23|Cout~0_combout\ = (\alu|mult|comb~5_combout\ & ((\alu|mult|fa22|Cout~0_combout\) # (\alu|mult|fa13|Cout~0_combout\ $ (\alu|mult|comb~6_combout\)))) # (!\alu|mult|comb~5_combout\ & (\alu|mult|fa22|Cout~0_combout\ & 
-- (\alu|mult|fa13|Cout~0_combout\ $ (\alu|mult|comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa13|Cout~0_combout\,
	datab => \alu|mult|comb~6_combout\,
	datac => \alu|mult|comb~5_combout\,
	datad => \alu|mult|fa22|Cout~0_combout\,
	combout => \alu|mult|fa23|Cout~0_combout\);

\alu|mult|fa33|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa33|S~combout\ = \alu|mult|fa24|S~2_combout\ $ (\alu|mult|comb~7_combout\ $ (\alu|mult|fa32|Cout~0_combout\ $ (\alu|mult|fa23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa24|S~2_combout\,
	datab => \alu|mult|comb~7_combout\,
	datac => \alu|mult|fa32|Cout~0_combout\,
	datad => \alu|mult|fa23|Cout~0_combout\,
	combout => \alu|mult|fa33|S~combout\);

\alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~1_combout\ = (\alu|Mux2~0_combout\ & ((operacao(0) & (\alu|sub|fa4|Cout~0_combout\)) # (!operacao(0) & ((\alu|mult|fa33|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~0_combout\,
	datab => \alu|sub|fa4|Cout~0_combout\,
	datac => \alu|mult|fa33|S~combout\,
	datad => operacao(0),
	combout => \alu|Mux2~1_combout\);

\alu|mult|fa33|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa33|Cout~0_combout\ = (\alu|mult|comb~7_combout\ & ((\alu|mult|fa32|Cout~0_combout\) # (\alu|mult|fa23|Cout~0_combout\ $ (\alu|mult|fa24|S~2_combout\)))) # (!\alu|mult|comb~7_combout\ & (\alu|mult|fa32|Cout~0_combout\ & 
-- (\alu|mult|fa23|Cout~0_combout\ $ (\alu|mult|fa24|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa23|Cout~0_combout\,
	datab => \alu|mult|fa24|S~2_combout\,
	datac => \alu|mult|comb~7_combout\,
	datad => \alu|mult|fa32|Cout~0_combout\,
	combout => \alu|mult|fa33|Cout~0_combout\);

\alu|mult|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|comb~8_combout\ = (\B[2]~12_combout\ & \A[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~12_combout\,
	datab => \A[3]~17_combout\,
	combout => \alu|mult|comb~8_combout\);

\alu|mult|fa24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa24|Cout~0_combout\ = (\alu|mult|comb~8_combout\ & ((\alu|mult|fa23|Cout~0_combout\) # ((\alu|mult|fa13|Cout~0_combout\ & \alu|mult|comb~6_combout\)))) # (!\alu|mult|comb~8_combout\ & (\alu|mult|fa13|Cout~0_combout\ & (\alu|mult|comb~6_combout\ 
-- & \alu|mult|fa23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mult|fa13|Cout~0_combout\,
	datab => \alu|mult|comb~6_combout\,
	datac => \alu|mult|comb~8_combout\,
	datad => \alu|mult|fa23|Cout~0_combout\,
	combout => \alu|mult|fa24|Cout~0_combout\);

\alu|mult|fa34|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa34|S~0_combout\ = \alu|mult|fa33|Cout~0_combout\ $ (\alu|mult|fa24|Cout~0_combout\ $ (((\B[3]~17_combout\ & \A[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~17_combout\,
	datab => \A[3]~17_combout\,
	datac => \alu|mult|fa33|Cout~0_combout\,
	datad => \alu|mult|fa24|Cout~0_combout\,
	combout => \alu|mult|fa34|S~0_combout\);

\alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux1~0_combout\ = (\alu|Mux2~0_combout\ & ((operacao(0) & (\alu|sub|fa4|Cout~0_combout\)) # (!operacao(0) & ((\alu|mult|fa34|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~0_combout\,
	datab => \alu|sub|fa4|Cout~0_combout\,
	datac => \alu|mult|fa34|S~0_combout\,
	datad => operacao(0),
	combout => \alu|Mux1~0_combout\);

\alu|mult|fa34|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mult|fa34|Cout~0_combout\ = (\alu|mult|fa24|Cout~0_combout\ & ((\alu|mult|fa33|Cout~0_combout\) # ((\B[3]~17_combout\ & \A[3]~17_combout\)))) # (!\alu|mult|fa24|Cout~0_combout\ & (\B[3]~17_combout\ & (\A[3]~17_combout\ & 
-- \alu|mult|fa33|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~17_combout\,
	datab => \A[3]~17_combout\,
	datac => \alu|mult|fa24|Cout~0_combout\,
	datad => \alu|mult|fa33|Cout~0_combout\,
	combout => \alu|mult|fa34|Cout~0_combout\);

\alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~0_combout\ = (\alu|Mux2~0_combout\ & ((operacao(0) & (\alu|sub|fa4|Cout~0_combout\)) # (!operacao(0) & ((\alu|mult|fa34|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~0_combout\,
	datab => \alu|sub|fa4|Cout~0_combout\,
	datac => \alu|mult|fa34|Cout~0_combout\,
	datad => operacao(0),
	combout => \alu|Mux0~0_combout\);

\saidaA[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[3]~21_combout\ = (\reset~input_o\ & !\estado~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \estado~2_combout\,
	combout => \saidaA[3]~21_combout\);

\saidaA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[0]~1_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaA[0]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaA[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[0]~input_o\,
	datab => \saidaA[0]~1_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaA[0]~1_combout\);

\saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[0]~0_combout\ = (\saidaA[3]~21_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \saidaA[3]~21_combout\,
	combout => \saidaA[0]~0_combout\);

\saidaA[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaA[0]~1_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaA[0]~reg0_emulated_q\);

\saidaA[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[0]~3_combout\ = \saidaA[0]~reg0_emulated_q\ $ (\saidaA[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[0]~reg0_emulated_q\,
	datab => \saidaA[0]~1_combout\,
	combout => \saidaA[0]~3_combout\);

\saidaA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[0]~2_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaA[0]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaA[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[0]~3_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaA[0]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaA[0]~2_combout\);

\saidaA[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[1]~6_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaA[1]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaA[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[1]~input_o\,
	datab => \saidaA[1]~6_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaA[1]~6_combout\);

\saidaA[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaA[1]~6_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaA[1]~reg0_emulated_q\);

\saidaA[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[1]~8_combout\ = \saidaA[1]~reg0_emulated_q\ $ (\saidaA[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[1]~reg0_emulated_q\,
	datab => \saidaA[1]~6_combout\,
	combout => \saidaA[1]~8_combout\);

\saidaA[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[1]~7_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaA[1]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaA[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[1]~8_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaA[1]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaA[1]~7_combout\);

\saidaA[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[2]~11_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaA[2]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaA[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \saidaA[2]~11_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaA[2]~11_combout\);

\saidaA[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaA[2]~11_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaA[2]~reg0_emulated_q\);

\saidaA[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[2]~13_combout\ = \saidaA[2]~reg0_emulated_q\ $ (\saidaA[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[2]~reg0_emulated_q\,
	datab => \saidaA[2]~11_combout\,
	combout => \saidaA[2]~13_combout\);

\saidaA[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[2]~12_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaA[2]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaA[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[2]~13_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaA[2]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaA[2]~12_combout\);

\saidaA[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[3]~16_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaA[3]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaA[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[3]~input_o\,
	datab => \saidaA[3]~16_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaA[3]~16_combout\);

\saidaA[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaA[3]~16_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaA[3]~reg0_emulated_q\);

\saidaA[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[3]~18_combout\ = \saidaA[3]~reg0_emulated_q\ $ (\saidaA[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[3]~reg0_emulated_q\,
	datab => \saidaA[3]~16_combout\,
	combout => \saidaA[3]~18_combout\);

\saidaA[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaA[3]~17_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaA[3]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaA[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaA[3]~18_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaA[3]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaA[3]~17_combout\);

\saidaB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[0]~1_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaB[0]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaB[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[0]~input_o\,
	datab => \saidaB[0]~1_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaB[0]~1_combout\);

\saidaB[0]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaB[0]~1_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaB[0]~reg0_emulated_q\);

\saidaB[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[0]~3_combout\ = \saidaB[0]~reg0_emulated_q\ $ (\saidaB[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[0]~reg0_emulated_q\,
	datab => \saidaB[0]~1_combout\,
	combout => \saidaB[0]~3_combout\);

\saidaB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[0]~2_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaB[0]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaB[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[0]~3_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaB[0]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaB[0]~2_combout\);

\saidaB[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[1]~6_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaB[1]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaB[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[1]~input_o\,
	datab => \saidaB[1]~6_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaB[1]~6_combout\);

\saidaB[1]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaB[1]~6_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaB[1]~reg0_emulated_q\);

\saidaB[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[1]~8_combout\ = \saidaB[1]~reg0_emulated_q\ $ (\saidaB[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[1]~reg0_emulated_q\,
	datab => \saidaB[1]~6_combout\,
	combout => \saidaB[1]~8_combout\);

\saidaB[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[1]~7_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaB[1]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaB[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[1]~8_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaB[1]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaB[1]~7_combout\);

\saidaB[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[2]~11_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaB[2]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaB[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[2]~input_o\,
	datab => \saidaB[2]~11_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaB[2]~11_combout\);

\saidaB[2]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaB[2]~11_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaB[2]~reg0_emulated_q\);

\saidaB[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[2]~13_combout\ = \saidaB[2]~reg0_emulated_q\ $ (\saidaB[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[2]~reg0_emulated_q\,
	datab => \saidaB[2]~11_combout\,
	combout => \saidaB[2]~13_combout\);

\saidaB[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[2]~12_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaB[2]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaB[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[2]~13_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaB[2]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaB[2]~12_combout\);

\saidaB[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[3]~16_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & (\entradaB[3]~input_o\)) # (!\saidaA[3]~21_combout\ & ((\saidaB[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[3]~input_o\,
	datab => \saidaB[3]~16_combout\,
	datac => \saidaA[3]~21_combout\,
	datad => \reset~input_o\,
	combout => \saidaB[3]~16_combout\);

\saidaB[3]~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \saidaB[3]~16_combout\,
	clrn => \ALT_INV_saidaA[0]~0_combout\,
	ena => \A[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaB[3]~reg0_emulated_q\);

\saidaB[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[3]~18_combout\ = \saidaB[3]~reg0_emulated_q\ $ (\saidaB[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[3]~reg0_emulated_q\,
	datab => \saidaB[3]~16_combout\,
	combout => \saidaB[3]~18_combout\);

\saidaB[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaB[3]~17_combout\ = (\reset~input_o\ & ((\saidaA[3]~21_combout\ & ((\entradaB[3]~input_o\))) # (!\saidaA[3]~21_combout\ & (\saidaB[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaB[3]~18_combout\,
	datab => \saidaA[3]~21_combout\,
	datac => \entradaB[3]~input_o\,
	datad => \reset~input_o\,
	combout => \saidaB[3]~17_combout\);

ww_resultadoDISPLAY(0) <= \resultadoDISPLAY[0]~output_o\;

ww_resultadoDISPLAY(1) <= \resultadoDISPLAY[1]~output_o\;

ww_resultadoDISPLAY(2) <= \resultadoDISPLAY[2]~output_o\;

ww_resultadoDISPLAY(3) <= \resultadoDISPLAY[3]~output_o\;

ww_resultadoDISPLAY(4) <= \resultadoDISPLAY[4]~output_o\;

ww_resultadoDISPLAY(5) <= \resultadoDISPLAY[5]~output_o\;

ww_resultadoDISPLAY(6) <= \resultadoDISPLAY[6]~output_o\;

ww_resultadoDISPLAY(7) <= \resultadoDISPLAY[7]~output_o\;

ww_carry_borrowLED <= \carry_borrowLED~output_o\;

ww_operacaoLED(0) <= \operacaoLED[0]~output_o\;

ww_operacaoLED(1) <= \operacaoLED[1]~output_o\;

ww_operacaoLED(2) <= \operacaoLED[2]~output_o\;

ww_saidaA(0) <= \saidaA[0]~output_o\;

ww_saidaA(1) <= \saidaA[1]~output_o\;

ww_saidaA(2) <= \saidaA[2]~output_o\;

ww_saidaA(3) <= \saidaA[3]~output_o\;

ww_saidaB(0) <= \saidaB[0]~output_o\;

ww_saidaB(1) <= \saidaB[1]~output_o\;

ww_saidaB(2) <= \saidaB[2]~output_o\;

ww_saidaB(3) <= \saidaB[3]~output_o\;
END structure;


