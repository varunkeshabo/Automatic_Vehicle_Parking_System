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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "04/19/2021 08:19:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	A_Car_Park IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sensor1 : IN std_logic;
	sensor2 : IN std_logic;
	exsens1 : IN std_logic;
	exsens2 : IN std_logic;
	W_LED : OUT std_logic;
	G_LED : OUT std_logic;
	R_LED : OUT std_logic;
	G1 : OUT std_logic;
	G2 : OUT std_logic;
	Password : IN std_logic_vector(3 DOWNTO 0)
	);
END A_Car_Park;

-- Design Ports Information
-- W_LED	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LED	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_LED	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G1	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G2	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exsens2	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor2	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exsens1	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Password[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Password[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Password[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Password[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor1	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF A_Car_Park IS
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
SIGNAL ww_sensor1 : std_logic;
SIGNAL ww_sensor2 : std_logic;
SIGNAL ww_exsens1 : std_logic;
SIGNAL ww_exsens2 : std_logic;
SIGNAL ww_W_LED : std_logic;
SIGNAL ww_G_LED : std_logic;
SIGNAL ww_R_LED : std_logic;
SIGNAL ww_G1 : std_logic;
SIGNAL ww_G2 : std_logic;
SIGNAL ww_Password : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|Selector18~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A0|Q~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|WideOr5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \W_LED~output_o\ : std_logic;
SIGNAL \G_LED~output_o\ : std_logic;
SIGNAL \R_LED~output_o\ : std_logic;
SIGNAL \G1~output_o\ : std_logic;
SIGNAL \G2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \exsens2~input_o\ : std_logic;
SIGNAL \exsens1~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sensor2~input_o\ : std_logic;
SIGNAL \A0|current_state~11_combout\ : std_logic;
SIGNAL \A0|Add1~0_combout\ : std_logic;
SIGNAL \A0|Q~0_combout\ : std_logic;
SIGNAL \A0|Q~0clkctrl_outclk\ : std_logic;
SIGNAL \A0|Add1~1\ : std_logic;
SIGNAL \A0|Add1~2_combout\ : std_logic;
SIGNAL \A0|Add1~3\ : std_logic;
SIGNAL \A0|Add1~4_combout\ : std_logic;
SIGNAL \A0|Add1~5\ : std_logic;
SIGNAL \A0|Add1~6_combout\ : std_logic;
SIGNAL \A0|Add1~7\ : std_logic;
SIGNAL \A0|Add1~8_combout\ : std_logic;
SIGNAL \A0|Equal0~0_combout\ : std_logic;
SIGNAL \A0|current_state~12_combout\ : std_logic;
SIGNAL \A0|current_state~9_combout\ : std_logic;
SIGNAL \A0|current_state~10_combout\ : std_logic;
SIGNAL \A0|current_state.A_space~q\ : std_logic;
SIGNAL \A0|current_state~13_combout\ : std_logic;
SIGNAL \A0|current_state.IDLE~q\ : std_logic;
SIGNAL \A0|current_state~8_combout\ : std_logic;
SIGNAL \A0|current_state.S_checker~q\ : std_logic;
SIGNAL \A0|current_state~6_combout\ : std_logic;
SIGNAL \A0|current_state~7_combout\ : std_logic;
SIGNAL \A0|current_state.No_space~q\ : std_logic;
SIGNAL \A0|Wt_led~combout\ : std_logic;
SIGNAL \Password[0]~input_o\ : std_logic;
SIGNAL \Password[2]~input_o\ : std_logic;
SIGNAL \Password[1]~input_o\ : std_logic;
SIGNAL \Password[3]~input_o\ : std_logic;
SIGNAL \A1|Equal0~0_combout\ : std_logic;
SIGNAL \sensor1~input_o\ : std_logic;
SIGNAL \A1|Selector13~0_combout\ : std_logic;
SIGNAL \A1|Selector18~0_combout\ : std_logic;
SIGNAL \A1|Selector18~0clkctrl_outclk\ : std_logic;
SIGNAL \A1|next_state.S2_224~combout\ : std_logic;
SIGNAL \A1|current_state~9_combout\ : std_logic;
SIGNAL \A1|current_state.S2~q\ : std_logic;
SIGNAL \A1|Selector17~0_combout\ : std_logic;
SIGNAL \A1|next_state.IDLE_242~combout\ : std_logic;
SIGNAL \A1|current_state~13_combout\ : std_logic;
SIGNAL \A1|current_state.IDLE~q\ : std_logic;
SIGNAL \A1|Add0~0_combout\ : std_logic;
SIGNAL \A1|Add0~4_combout\ : std_logic;
SIGNAL \A1|WideOr6~0_combout\ : std_logic;
SIGNAL \A1|WideOr5~0_combout\ : std_logic;
SIGNAL \A1|WideOr5~0clkctrl_outclk\ : std_logic;
SIGNAL \A1|Add0~1\ : std_logic;
SIGNAL \A1|Add0~2_combout\ : std_logic;
SIGNAL \A1|Selector2~0_combout\ : std_logic;
SIGNAL \A1|Selector0~0_combout\ : std_logic;
SIGNAL \A1|Add0~3\ : std_logic;
SIGNAL \A1|Add0~5_combout\ : std_logic;
SIGNAL \A1|Selector0~1_combout\ : std_logic;
SIGNAL \A1|Add0~6\ : std_logic;
SIGNAL \A1|Add0~7_combout\ : std_logic;
SIGNAL \A1|Selector5~0_combout\ : std_logic;
SIGNAL \A1|Selector5~1_combout\ : std_logic;
SIGNAL \A1|Add1~0_combout\ : std_logic;
SIGNAL \A1|Add0~8\ : std_logic;
SIGNAL \A1|Add0~9_combout\ : std_logic;
SIGNAL \A1|Selector6~0_combout\ : std_logic;
SIGNAL \A1|Equal1~0_combout\ : std_logic;
SIGNAL \A1|Selector9~0_combout\ : std_logic;
SIGNAL \A1|next_state.S5_201~combout\ : std_logic;
SIGNAL \A1|current_state~11_combout\ : std_logic;
SIGNAL \A1|current_state.S5~q\ : std_logic;
SIGNAL \A1|Selector15~0_combout\ : std_logic;
SIGNAL \A1|next_state.S1_233~combout\ : std_logic;
SIGNAL \A1|current_state~12_combout\ : std_logic;
SIGNAL \A1|current_state.S1~q\ : std_logic;
SIGNAL \A1|next_state.S3_215~combout\ : std_logic;
SIGNAL \A1|current_state~10_combout\ : std_logic;
SIGNAL \A1|current_state.S3~q\ : std_logic;
SIGNAL \A1|Selector11~0_combout\ : std_logic;
SIGNAL \A1|next_state.S4_210~combout\ : std_logic;
SIGNAL \A1|current_state~8_combout\ : std_logic;
SIGNAL \A1|current_state.S4~q\ : std_logic;
SIGNAL \A1|red~0_combout\ : std_logic;
SIGNAL \A1|WideOr4~0_combout\ : std_logic;
SIGNAL \A1|Gate~combout\ : std_logic;
SIGNAL \A0|Gate2~0_combout\ : std_logic;
SIGNAL \A0|Gate2~combout\ : std_logic;
SIGNAL \A0|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A1|Attempt\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sensor1 <= sensor1;
ww_sensor2 <= sensor2;
ww_exsens1 <= exsens1;
ww_exsens2 <= exsens2;
W_LED <= ww_W_LED;
G_LED <= ww_G_LED;
R_LED <= ww_R_LED;
G1 <= ww_G1;
G2 <= ww_G2;
ww_Password <= Password;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A1|Selector18~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A1|Selector18~0_combout\);

\A0|Q~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A0|Q~0_combout\);

\A1|WideOr5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A1|WideOr5~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y35_N16
\W_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|Wt_led~combout\,
	devoe => ww_devoe,
	o => \W_LED~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\G_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_LED~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\R_LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|red~0_combout\,
	devoe => ww_devoe,
	o => \R_LED~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\G1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|Gate~combout\,
	devoe => ww_devoe,
	o => \G1~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\G2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|Gate2~combout\,
	devoe => ww_devoe,
	o => \G2~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y35_N8
\exsens2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exsens2,
	o => \exsens2~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\exsens1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exsens1,
	o => \exsens1~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\sensor2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor2,
	o => \sensor2~input_o\);

-- Location: LCCOMB_X3_Y35_N26
\A0|current_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~11_combout\ = (\reset~input_o\) # ((!\exsens1~input_o\ & (!\sensor2~input_o\ & !\A0|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exsens1~input_o\,
	datab => \reset~input_o\,
	datac => \sensor2~input_o\,
	datad => \A0|current_state.IDLE~q\,
	combout => \A0|current_state~11_combout\);

-- Location: LCCOMB_X2_Y35_N10
\A0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Add1~0_combout\ = \A0|Q\(0) $ (VCC)
-- \A0|Add1~1\ = CARRY(\A0|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Q\(0),
	datad => VCC,
	combout => \A0|Add1~0_combout\,
	cout => \A0|Add1~1\);

-- Location: LCCOMB_X3_Y35_N0
\A0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q~0_combout\ = (\A0|current_state.No_space~q\) # (!\A0|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|current_state.No_space~q\,
	datad => \A0|current_state.IDLE~q\,
	combout => \A0|Q~0_combout\);

-- Location: CLKCTRL_G0
\A0|Q~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A0|Q~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A0|Q~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y35_N4
\A0|Q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q\(0) = (GLOBAL(\A0|Q~0clkctrl_outclk\) & ((\A0|Q\(0)))) # (!GLOBAL(\A0|Q~0clkctrl_outclk\) & (\A0|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add1~0_combout\,
	datac => \A0|Q\(0),
	datad => \A0|Q~0clkctrl_outclk\,
	combout => \A0|Q\(0));

-- Location: LCCOMB_X2_Y35_N12
\A0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Add1~2_combout\ = (\A0|Q\(1) & ((\A0|current_state.S_checker~q\ & (!\A0|Add1~1\)) # (!\A0|current_state.S_checker~q\ & (\A0|Add1~1\ & VCC)))) # (!\A0|Q\(1) & ((\A0|current_state.S_checker~q\ & ((\A0|Add1~1\) # (GND))) # 
-- (!\A0|current_state.S_checker~q\ & (!\A0|Add1~1\))))
-- \A0|Add1~3\ = CARRY((\A0|Q\(1) & (\A0|current_state.S_checker~q\ & !\A0|Add1~1\)) # (!\A0|Q\(1) & ((\A0|current_state.S_checker~q\) # (!\A0|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Q\(1),
	datab => \A0|current_state.S_checker~q\,
	datad => VCC,
	cin => \A0|Add1~1\,
	combout => \A0|Add1~2_combout\,
	cout => \A0|Add1~3\);

-- Location: LCCOMB_X2_Y35_N22
\A0|Q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q\(1) = (GLOBAL(\A0|Q~0clkctrl_outclk\) & (\A0|Q\(1))) # (!GLOBAL(\A0|Q~0clkctrl_outclk\) & ((\A0|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Q\(1),
	datac => \A0|Add1~2_combout\,
	datad => \A0|Q~0clkctrl_outclk\,
	combout => \A0|Q\(1));

-- Location: LCCOMB_X2_Y35_N14
\A0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Add1~4_combout\ = ((\A0|Q\(2) $ (\A0|current_state.S_checker~q\ $ (\A0|Add1~3\)))) # (GND)
-- \A0|Add1~5\ = CARRY((\A0|Q\(2) & ((!\A0|Add1~3\) # (!\A0|current_state.S_checker~q\))) # (!\A0|Q\(2) & (!\A0|current_state.S_checker~q\ & !\A0|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Q\(2),
	datab => \A0|current_state.S_checker~q\,
	datad => VCC,
	cin => \A0|Add1~3\,
	combout => \A0|Add1~4_combout\,
	cout => \A0|Add1~5\);

-- Location: LCCOMB_X2_Y35_N28
\A0|Q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q\(2) = (GLOBAL(\A0|Q~0clkctrl_outclk\) & (\A0|Q\(2))) # (!GLOBAL(\A0|Q~0clkctrl_outclk\) & ((\A0|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Q\(2),
	datac => \A0|Add1~4_combout\,
	datad => \A0|Q~0clkctrl_outclk\,
	combout => \A0|Q\(2));

-- Location: LCCOMB_X2_Y35_N16
\A0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Add1~6_combout\ = (\A0|current_state.S_checker~q\ & ((\A0|Q\(3) & (!\A0|Add1~5\)) # (!\A0|Q\(3) & ((\A0|Add1~5\) # (GND))))) # (!\A0|current_state.S_checker~q\ & ((\A0|Q\(3) & (\A0|Add1~5\ & VCC)) # (!\A0|Q\(3) & (!\A0|Add1~5\))))
-- \A0|Add1~7\ = CARRY((\A0|current_state.S_checker~q\ & ((!\A0|Add1~5\) # (!\A0|Q\(3)))) # (!\A0|current_state.S_checker~q\ & (!\A0|Q\(3) & !\A0|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state.S_checker~q\,
	datab => \A0|Q\(3),
	datad => VCC,
	cin => \A0|Add1~5\,
	combout => \A0|Add1~6_combout\,
	cout => \A0|Add1~7\);

-- Location: LCCOMB_X2_Y35_N24
\A0|Q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q\(3) = (GLOBAL(\A0|Q~0clkctrl_outclk\) & (\A0|Q\(3))) # (!GLOBAL(\A0|Q~0clkctrl_outclk\) & ((\A0|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Q\(3),
	datac => \A0|Add1~6_combout\,
	datad => \A0|Q~0clkctrl_outclk\,
	combout => \A0|Q\(3));

-- Location: LCCOMB_X2_Y35_N18
\A0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Add1~8_combout\ = \A0|Q\(4) $ (\A0|Add1~7\ $ (\A0|current_state.S_checker~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A0|Q\(4),
	datad => \A0|current_state.S_checker~q\,
	cin => \A0|Add1~7\,
	combout => \A0|Add1~8_combout\);

-- Location: LCCOMB_X2_Y35_N8
\A0|Q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Q\(4) = (GLOBAL(\A0|Q~0clkctrl_outclk\) & ((\A0|Q\(4)))) # (!GLOBAL(\A0|Q~0clkctrl_outclk\) & (\A0|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add1~8_combout\,
	datac => \A0|Q\(4),
	datad => \A0|Q~0clkctrl_outclk\,
	combout => \A0|Q\(4));

-- Location: LCCOMB_X2_Y35_N0
\A0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Equal0~0_combout\ = (\A0|Q\(1) & (\A0|Q\(3) & (\A0|Q\(0) & \A0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Q\(1),
	datab => \A0|Q\(3),
	datac => \A0|Q\(0),
	datad => \A0|Q\(2),
	combout => \A0|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y35_N30
\A0|current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~12_combout\ = (\A0|current_state~11_combout\) # ((\A0|current_state.S_checker~q\ & ((!\A0|Equal0~0_combout\) # (!\A0|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state.S_checker~q\,
	datab => \A0|current_state~11_combout\,
	datac => \A0|Q\(4),
	datad => \A0|Equal0~0_combout\,
	combout => \A0|current_state~12_combout\);

-- Location: LCCOMB_X3_Y35_N18
\A0|current_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~9_combout\ = (\exsens2~input_o\ & (\A0|current_state.No_space~q\)) # (!\exsens2~input_o\ & ((\A0|current_state.A_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exsens2~input_o\,
	datac => \A0|current_state.No_space~q\,
	datad => \A0|current_state.A_space~q\,
	combout => \A0|current_state~9_combout\);

-- Location: LCCOMB_X3_Y35_N20
\A0|current_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~10_combout\ = (!\reset~input_o\ & ((\A0|current_state~9_combout\) # ((\exsens1~input_o\ & !\A0|current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state~9_combout\,
	datab => \exsens1~input_o\,
	datac => \A0|current_state.IDLE~q\,
	datad => \reset~input_o\,
	combout => \A0|current_state~10_combout\);

-- Location: FF_X3_Y35_N21
\A0|current_state.A_space\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A0|current_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|current_state.A_space~q\);

-- Location: LCCOMB_X3_Y35_N2
\A0|current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~13_combout\ = (!\A0|current_state~12_combout\ & ((!\A0|current_state.A_space~q\) # (!\exsens2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state~12_combout\,
	datac => \exsens2~input_o\,
	datad => \A0|current_state.A_space~q\,
	combout => \A0|current_state~13_combout\);

-- Location: FF_X3_Y35_N3
\A0|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A0|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|current_state.IDLE~q\);

-- Location: LCCOMB_X3_Y35_N28
\A0|current_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~8_combout\ = (!\A0|current_state.IDLE~q\ & (!\exsens1~input_o\ & (\sensor2~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state.IDLE~q\,
	datab => \exsens1~input_o\,
	datac => \sensor2~input_o\,
	datad => \reset~input_o\,
	combout => \A0|current_state~8_combout\);

-- Location: FF_X2_Y35_N7
\A0|current_state.S_checker\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A0|current_state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|current_state.S_checker~q\);

-- Location: LCCOMB_X2_Y35_N2
\A0|current_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~6_combout\ = (\A0|current_state.S_checker~q\ & (\A0|Q\(4) & \A0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|current_state.S_checker~q\,
	datac => \A0|Q\(4),
	datad => \A0|Equal0~0_combout\,
	combout => \A0|current_state~6_combout\);

-- Location: LCCOMB_X2_Y35_N26
\A0|current_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|current_state~7_combout\ = (!\reset~input_o\ & ((\A0|current_state~6_combout\) # ((!\exsens2~input_o\ & \A0|current_state.No_space~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exsens2~input_o\,
	datab => \A0|current_state~6_combout\,
	datac => \reset~input_o\,
	datad => \A0|current_state.No_space~q\,
	combout => \A0|current_state~7_combout\);

-- Location: FF_X2_Y35_N21
\A0|current_state.No_space\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A0|current_state~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|current_state.No_space~q\);

-- Location: LCCOMB_X2_Y35_N20
\A0|Wt_led\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Wt_led~combout\ = (\A0|current_state.S_checker~q\ & (\A0|Wt_led~combout\)) # (!\A0|current_state.S_checker~q\ & ((!\A0|current_state.No_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Wt_led~combout\,
	datac => \A0|current_state.No_space~q\,
	datad => \A0|current_state.S_checker~q\,
	combout => \A0|Wt_led~combout\);

-- Location: IOIBUF_X0_Y34_N8
\Password[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Password(0),
	o => \Password[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\Password[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Password(2),
	o => \Password[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\Password[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Password(1),
	o => \Password[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\Password[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Password(3),
	o => \Password[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N0
\A1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~0_combout\ = (!\Password[0]~input_o\ & (\Password[2]~input_o\ & (!\Password[1]~input_o\ & \Password[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Password[0]~input_o\,
	datab => \Password[2]~input_o\,
	datac => \Password[1]~input_o\,
	datad => \Password[3]~input_o\,
	combout => \A1|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y33_N22
\sensor1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor1,
	o => \sensor1~input_o\);

-- Location: LCCOMB_X1_Y35_N4
\A1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector13~0_combout\ = (\sensor2~input_o\ & (\A1|Equal0~0_combout\ & (\A1|current_state.S1~q\))) # (!\sensor2~input_o\ & ((\A1|current_state.S2~q\) # ((\A1|Equal0~0_combout\ & \A1|current_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor2~input_o\,
	datab => \A1|Equal0~0_combout\,
	datac => \A1|current_state.S1~q\,
	datad => \A1|current_state.S2~q\,
	combout => \A1|Selector13~0_combout\);

-- Location: LCCOMB_X1_Y35_N30
\A1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector18~0_combout\ = (\A0|Wt_led~combout\) # (!\A1|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0|Wt_led~combout\,
	datad => \A1|current_state.S1~q\,
	combout => \A1|Selector18~0_combout\);

-- Location: CLKCTRL_G3
\A1|Selector18~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A1|Selector18~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A1|Selector18~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y35_N10
\A1|next_state.S2_224\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.S2_224~combout\ = (GLOBAL(\A1|Selector18~0clkctrl_outclk\) & ((\A1|Selector13~0_combout\))) # (!GLOBAL(\A1|Selector18~0clkctrl_outclk\) & (\A1|next_state.S2_224~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|next_state.S2_224~combout\,
	datac => \A1|Selector13~0_combout\,
	datad => \A1|Selector18~0clkctrl_outclk\,
	combout => \A1|next_state.S2_224~combout\);

-- Location: LCCOMB_X1_Y35_N28
\A1|current_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~9_combout\ = (!\reset~input_o\ & \A1|next_state.S2_224~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \A1|next_state.S2_224~combout\,
	combout => \A1|current_state~9_combout\);

-- Location: FF_X1_Y35_N29
\A1|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A1|current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.S2~q\);

-- Location: LCCOMB_X1_Y35_N26
\A1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector17~0_combout\ = (\sensor1~input_o\ & (((\sensor2~input_o\ & \A1|current_state.S2~q\)))) # (!\sensor1~input_o\ & (((\sensor2~input_o\ & \A1|current_state.S2~q\)) # (!\A1|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \A1|current_state.IDLE~q\,
	datac => \sensor2~input_o\,
	datad => \A1|current_state.S2~q\,
	combout => \A1|Selector17~0_combout\);

-- Location: LCCOMB_X1_Y35_N12
\A1|next_state.IDLE_242\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.IDLE_242~combout\ = (GLOBAL(\A1|Selector18~0clkctrl_outclk\) & (\A1|Selector17~0_combout\)) # (!GLOBAL(\A1|Selector18~0clkctrl_outclk\) & ((\A1|next_state.IDLE_242~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Selector17~0_combout\,
	datac => \A1|Selector18~0clkctrl_outclk\,
	datad => \A1|next_state.IDLE_242~combout\,
	combout => \A1|next_state.IDLE_242~combout\);

-- Location: LCCOMB_X1_Y35_N14
\A1|current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~13_combout\ = (!\A1|next_state.IDLE_242~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|next_state.IDLE_242~combout\,
	datad => \reset~input_o\,
	combout => \A1|current_state~13_combout\);

-- Location: FF_X1_Y35_N15
\A1|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A1|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.IDLE~q\);

-- Location: LCCOMB_X4_Y35_N14
\A1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~0_combout\ = \A1|Attempt\(0) $ (VCC)
-- \A1|Add0~1\ = CARRY(\A1|Attempt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Attempt\(0),
	datad => VCC,
	combout => \A1|Add0~0_combout\,
	cout => \A1|Add0~1\);

-- Location: LCCOMB_X3_Y35_N22
\A1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~4_combout\ = (\A1|Add0~0_combout\) # (!\A1|current_state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|current_state.S3~q\,
	datad => \A1|Add0~0_combout\,
	combout => \A1|Add0~4_combout\);

-- Location: LCCOMB_X3_Y35_N12
\A1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|WideOr6~0_combout\ = (\A1|current_state.S3~q\) # (!\A1|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|current_state.IDLE~q\,
	datad => \A1|current_state.S3~q\,
	combout => \A1|WideOr6~0_combout\);

-- Location: LCCOMB_X3_Y35_N4
\A1|Attempt[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Attempt\(0) = (\A1|WideOr6~0_combout\ & ((\A1|Add0~4_combout\))) # (!\A1|WideOr6~0_combout\ & (\A1|Attempt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|Attempt\(0),
	datac => \A1|Add0~4_combout\,
	datad => \A1|WideOr6~0_combout\,
	combout => \A1|Attempt\(0));

-- Location: LCCOMB_X1_Y35_N8
\A1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|WideOr5~0_combout\ = (\A1|current_state.S2~q\) # ((\A1|current_state.S4~q\) # (\A1|current_state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|current_state.S2~q\,
	datac => \A1|current_state.S4~q\,
	datad => \A1|current_state.S1~q\,
	combout => \A1|WideOr5~0_combout\);

-- Location: CLKCTRL_G1
\A1|WideOr5~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A1|WideOr5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A1|WideOr5~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y35_N16
\A1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~2_combout\ = (\A1|Attempt\(1) & (\A1|Add0~1\ & VCC)) # (!\A1|Attempt\(1) & (!\A1|Add0~1\))
-- \A1|Add0~3\ = CARRY((!\A1|Attempt\(1) & !\A1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|Attempt\(1),
	datad => VCC,
	cin => \A1|Add0~1\,
	combout => \A1|Add0~2_combout\,
	cout => \A1|Add0~3\);

-- Location: LCCOMB_X4_Y35_N10
\A1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector2~0_combout\ = (\A1|current_state.S5~q\ & (((!\A1|Attempt\(1))))) # (!\A1|current_state.S5~q\ & (\A1|current_state.S3~q\ & ((\A1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S3~q\,
	datab => \A1|current_state.S5~q\,
	datac => \A1|Attempt\(1),
	datad => \A1|Add0~2_combout\,
	combout => \A1|Selector2~0_combout\);

-- Location: LCCOMB_X4_Y35_N4
\A1|Attempt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Attempt\(1) = (GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & ((\A1|Attempt\(1)))) # (!GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & (\A1|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|WideOr5~0clkctrl_outclk\,
	datac => \A1|Selector2~0_combout\,
	datad => \A1|Attempt\(1),
	combout => \A1|Attempt\(1));

-- Location: LCCOMB_X5_Y35_N4
\A1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector0~0_combout\ = (\A1|current_state.S5~q\ & (\A1|Attempt\(2) $ (\A1|Attempt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|Attempt\(2),
	datac => \A1|Attempt\(1),
	datad => \A1|current_state.S5~q\,
	combout => \A1|Selector0~0_combout\);

-- Location: LCCOMB_X4_Y35_N18
\A1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~5_combout\ = (\A1|Attempt\(2) & ((GND) # (!\A1|Add0~3\))) # (!\A1|Attempt\(2) & (\A1|Add0~3\ $ (GND)))
-- \A1|Add0~6\ = CARRY((\A1|Attempt\(2)) # (!\A1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|Attempt\(2),
	datad => VCC,
	cin => \A1|Add0~3\,
	combout => \A1|Add0~5_combout\,
	cout => \A1|Add0~6\);

-- Location: LCCOMB_X5_Y35_N14
\A1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector0~1_combout\ = (\A1|Selector0~0_combout\) # ((\A1|current_state.S3~q\ & (!\A1|current_state.S5~q\ & \A1|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S3~q\,
	datab => \A1|current_state.S5~q\,
	datac => \A1|Selector0~0_combout\,
	datad => \A1|Add0~5_combout\,
	combout => \A1|Selector0~1_combout\);

-- Location: LCCOMB_X5_Y35_N24
\A1|Attempt[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Attempt\(2) = (GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & ((\A1|Attempt\(2)))) # (!GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & (\A1|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Selector0~1_combout\,
	datac => \A1|WideOr5~0clkctrl_outclk\,
	datad => \A1|Attempt\(2),
	combout => \A1|Attempt\(2));

-- Location: LCCOMB_X4_Y35_N20
\A1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~7_combout\ = (\A1|Attempt\(3) & (\A1|Add0~6\ & VCC)) # (!\A1|Attempt\(3) & (!\A1|Add0~6\))
-- \A1|Add0~8\ = CARRY((!\A1|Attempt\(3) & !\A1|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|Attempt\(3),
	datad => VCC,
	cin => \A1|Add0~6\,
	combout => \A1|Add0~7_combout\,
	cout => \A1|Add0~8\);

-- Location: LCCOMB_X4_Y35_N26
\A1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector5~0_combout\ = (\A1|current_state.S5~q\ & (\A1|Attempt\(3) $ (((\A1|Attempt\(1) & \A1|Attempt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Attempt\(1),
	datab => \A1|current_state.S5~q\,
	datac => \A1|Attempt\(3),
	datad => \A1|Attempt\(2),
	combout => \A1|Selector5~0_combout\);

-- Location: LCCOMB_X4_Y35_N30
\A1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector5~1_combout\ = (\A1|Selector5~0_combout\) # ((!\A1|current_state.S5~q\ & (\A1|Add0~7_combout\ & \A1|current_state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S5~q\,
	datab => \A1|Add0~7_combout\,
	datac => \A1|current_state.S3~q\,
	datad => \A1|Selector5~0_combout\,
	combout => \A1|Selector5~1_combout\);

-- Location: LCCOMB_X4_Y35_N8
\A1|Attempt[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Attempt\(3) = (GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & ((\A1|Attempt\(3)))) # (!GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & (\A1|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|Selector5~1_combout\,
	datac => \A1|WideOr5~0clkctrl_outclk\,
	datad => \A1|Attempt\(3),
	combout => \A1|Attempt\(3));

-- Location: LCCOMB_X4_Y35_N12
\A1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add1~0_combout\ = \A1|Attempt\(4) $ (((\A1|Attempt\(2) & (\A1|Attempt\(1) & \A1|Attempt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Attempt\(4),
	datab => \A1|Attempt\(2),
	datac => \A1|Attempt\(1),
	datad => \A1|Attempt\(3),
	combout => \A1|Add1~0_combout\);

-- Location: LCCOMB_X4_Y35_N22
\A1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~9_combout\ = \A1|Add0~8\ $ (\A1|Attempt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A1|Attempt\(4),
	cin => \A1|Add0~8\,
	combout => \A1|Add0~9_combout\);

-- Location: LCCOMB_X4_Y35_N24
\A1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector6~0_combout\ = (\A1|current_state.S5~q\ & (((\A1|Add1~0_combout\)))) # (!\A1|current_state.S5~q\ & (\A1|current_state.S3~q\ & ((\A1|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S5~q\,
	datab => \A1|current_state.S3~q\,
	datac => \A1|Add1~0_combout\,
	datad => \A1|Add0~9_combout\,
	combout => \A1|Selector6~0_combout\);

-- Location: LCCOMB_X4_Y35_N2
\A1|Attempt[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Attempt\(4) = (GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & ((\A1|Attempt\(4)))) # (!GLOBAL(\A1|WideOr5~0clkctrl_outclk\) & (\A1|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Selector6~0_combout\,
	datac => \A1|WideOr5~0clkctrl_outclk\,
	datad => \A1|Attempt\(4),
	combout => \A1|Attempt\(4));

-- Location: LCCOMB_X4_Y35_N6
\A1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal1~0_combout\ = (!\A1|Attempt\(0) & (!\A1|Attempt\(3) & (\A1|Attempt\(1) & !\A1|Attempt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Attempt\(0),
	datab => \A1|Attempt\(3),
	datac => \A1|Attempt\(1),
	datad => \A1|Attempt\(4),
	combout => \A1|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y35_N30
\A1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector9~0_combout\ = (\A1|current_state.S3~q\ & ((\A1|Attempt\(2)) # (!\A1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S3~q\,
	datac => \A1|Equal1~0_combout\,
	datad => \A1|Attempt\(2),
	combout => \A1|Selector9~0_combout\);

-- Location: LCCOMB_X3_Y35_N10
\A1|next_state.S5_201\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.S5_201~combout\ = (GLOBAL(\A1|Selector18~0clkctrl_outclk\) & ((\A1|Selector9~0_combout\))) # (!GLOBAL(\A1|Selector18~0clkctrl_outclk\) & (\A1|next_state.S5_201~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|next_state.S5_201~combout\,
	datac => \A1|Selector9~0_combout\,
	datad => \A1|Selector18~0clkctrl_outclk\,
	combout => \A1|next_state.S5_201~combout\);

-- Location: LCCOMB_X4_Y35_N28
\A1|current_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~11_combout\ = (!\reset~input_o\ & \A1|next_state.S5_201~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \A1|next_state.S5_201~combout\,
	combout => \A1|current_state~11_combout\);

-- Location: FF_X4_Y35_N29
\A1|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A1|current_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.S5~q\);

-- Location: LCCOMB_X1_Y35_N6
\A1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector15~0_combout\ = (\A1|current_state.S5~q\) # ((\sensor1~input_o\ & !\A1|current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datac => \A1|current_state.IDLE~q\,
	datad => \A1|current_state.S5~q\,
	combout => \A1|Selector15~0_combout\);

-- Location: LCCOMB_X1_Y35_N24
\A1|next_state.S1_233\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.S1_233~combout\ = (GLOBAL(\A1|Selector18~0clkctrl_outclk\) & ((\A1|Selector15~0_combout\))) # (!GLOBAL(\A1|Selector18~0clkctrl_outclk\) & (\A1|next_state.S1_233~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|next_state.S1_233~combout\,
	datac => \A1|Selector15~0_combout\,
	datad => \A1|Selector18~0clkctrl_outclk\,
	combout => \A1|next_state.S1_233~combout\);

-- Location: LCCOMB_X1_Y35_N0
\A1|current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~12_combout\ = (\A1|next_state.S1_233~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|next_state.S1_233~combout\,
	datad => \reset~input_o\,
	combout => \A1|current_state~12_combout\);

-- Location: FF_X1_Y35_N1
\A1|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A1|current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.S1~q\);

-- Location: LCCOMB_X1_Y35_N16
\A1|next_state.S3_215\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.S3_215~combout\ = (\A1|current_state.S1~q\ & ((\A0|Wt_led~combout\ & (!\A1|Equal0~0_combout\)) # (!\A0|Wt_led~combout\ & ((\A1|next_state.S3_215~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Wt_led~combout\,
	datab => \A1|Equal0~0_combout\,
	datac => \A1|current_state.S1~q\,
	datad => \A1|next_state.S3_215~combout\,
	combout => \A1|next_state.S3_215~combout\);

-- Location: LCCOMB_X1_Y35_N20
\A1|current_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~10_combout\ = (\A1|next_state.S3_215~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|next_state.S3_215~combout\,
	datad => \reset~input_o\,
	combout => \A1|current_state~10_combout\);

-- Location: FF_X3_Y35_N23
\A1|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A1|current_state~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.S3~q\);

-- Location: LCCOMB_X3_Y35_N6
\A1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Selector11~0_combout\ = (\A1|current_state.S4~q\) # ((\A1|current_state.S3~q\ & (\A1|Equal1~0_combout\ & !\A1|Attempt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|current_state.S4~q\,
	datab => \A1|current_state.S3~q\,
	datac => \A1|Equal1~0_combout\,
	datad => \A1|Attempt\(2),
	combout => \A1|Selector11~0_combout\);

-- Location: LCCOMB_X3_Y35_N24
\A1|next_state.S4_210\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|next_state.S4_210~combout\ = (GLOBAL(\A1|Selector18~0clkctrl_outclk\) & ((\A1|Selector11~0_combout\))) # (!GLOBAL(\A1|Selector18~0clkctrl_outclk\) & (\A1|next_state.S4_210~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|next_state.S4_210~combout\,
	datac => \A1|Selector11~0_combout\,
	datad => \A1|Selector18~0clkctrl_outclk\,
	combout => \A1|next_state.S4_210~combout\);

-- Location: LCCOMB_X3_Y35_N14
\A1|current_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|current_state~8_combout\ = (!\reset~input_o\ & \A1|next_state.S4_210~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \A1|next_state.S4_210~combout\,
	combout => \A1|current_state~8_combout\);

-- Location: FF_X3_Y35_N15
\A1|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \A1|current_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|current_state.S4~q\);

-- Location: LCCOMB_X1_Y35_N18
\A1|red~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|red~0_combout\ = \A1|current_state.S4~q\ $ (\A1|red~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|current_state.S4~q\,
	datad => \A1|red~0_combout\,
	combout => \A1|red~0_combout\);

-- Location: LCCOMB_X3_Y35_N16
\A1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|WideOr4~0_combout\ = (\A1|current_state.S4~q\) # ((\A1|current_state.S3~q\) # (\A1|current_state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|current_state.S4~q\,
	datac => \A1|current_state.S3~q\,
	datad => \A1|current_state.S5~q\,
	combout => \A1|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y35_N22
\A1|Gate\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Gate~combout\ = (\A1|WideOr4~0_combout\ & (\A1|Gate~combout\)) # (!\A1|WideOr4~0_combout\ & ((\A1|current_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Gate~combout\,
	datac => \A1|WideOr4~0_combout\,
	datad => \A1|current_state.S2~q\,
	combout => \A1|Gate~combout\);

-- Location: LCCOMB_X2_Y35_N6
\A0|Gate2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Gate2~0_combout\ = (\A0|current_state.S_checker~q\) # (\A0|current_state.No_space~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0|current_state.S_checker~q\,
	datad => \A0|current_state.No_space~q\,
	combout => \A0|Gate2~0_combout\);

-- Location: LCCOMB_X3_Y35_N8
\A0|Gate2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A0|Gate2~combout\ = (\A0|Gate2~0_combout\ & (\A0|Gate2~combout\)) # (!\A0|Gate2~0_combout\ & ((\A0|current_state.A_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Gate2~combout\,
	datac => \A0|Gate2~0_combout\,
	datad => \A0|current_state.A_space~q\,
	combout => \A0|Gate2~combout\);

ww_W_LED <= \W_LED~output_o\;

ww_G_LED <= \G_LED~output_o\;

ww_R_LED <= \R_LED~output_o\;

ww_G1 <= \G1~output_o\;

ww_G2 <= \G2~output_o\;
END structure;


