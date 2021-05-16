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

-- DATE "04/12/2021 18:29:35"

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

ENTITY 	pass_chk IS
    PORT (
	CLK : IN std_logic;
	Reset : IN std_logic;
	sens1 : IN std_logic;
	sens2 : IN std_logic;
	ext_sens : IN std_logic;
	pass : IN std_logic_vector(3 DOWNTO 0);
	white_led : OUT std_logic;
	red_led : OUT std_logic;
	green_led : OUT std_logic;
	Gate : OUT std_logic
	);
END pass_chk;

-- Design Ports Information
-- ext_sens	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass[1]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pass[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- white_led	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_led	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gate	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sens2	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sens1	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pass_chk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_sens1 : std_logic;
SIGNAL ww_sens2 : std_logic;
SIGNAL ww_ext_sens : std_logic;
SIGNAL ww_pass : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_white_led : std_logic;
SIGNAL ww_red_led : std_logic;
SIGNAL ww_green_led : std_logic;
SIGNAL ww_Gate : std_logic;
SIGNAL \current_state.S1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ext_sens~input_o\ : std_logic;
SIGNAL \pass[0]~input_o\ : std_logic;
SIGNAL \pass[1]~input_o\ : std_logic;
SIGNAL \pass[2]~input_o\ : std_logic;
SIGNAL \pass[3]~input_o\ : std_logic;
SIGNAL \white_led~output_o\ : std_logic;
SIGNAL \red_led~output_o\ : std_logic;
SIGNAL \green_led~output_o\ : std_logic;
SIGNAL \Gate~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \sens1~input_o\ : std_logic;
SIGNAL \sens2~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \next_state.S2_183~combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \current_state~8_combout\ : std_logic;
SIGNAL \current_state.S2~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \next_state.S1_191~combout\ : std_logic;
SIGNAL \current_state~9_combout\ : std_logic;
SIGNAL \current_state.S1~q\ : std_logic;
SIGNAL \current_state.S1~clkctrl_outclk\ : std_logic;
SIGNAL \next_state.S4_171~combout\ : std_logic;
SIGNAL \current_state~7_combout\ : std_logic;
SIGNAL \current_state.S4~q\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \Gate$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_Reset <= Reset;
ww_sens1 <= sens1;
ww_sens2 <= sens2;
ww_ext_sens <= ext_sens;
ww_pass <= pass;
white_led <= ww_white_led;
red_led <= ww_red_led;
green_led <= ww_green_led;
Gate <= ww_Gate;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\current_state.S1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \current_state.S1~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N23
\white_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \white_led~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\red_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~0_combout\,
	devoe => ww_devoe,
	o => \red_led~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\green_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \green_led~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Gate~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gate$latch~combout\,
	devoe => ww_devoe,
	o => \Gate~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y73_N8
\sens1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sens1,
	o => \sens1~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\sens2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sens2,
	o => \sens2~input_o\);

-- Location: LCCOMB_X55_Y72_N22
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\sens2~input_o\ & \current_state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sens2~input_o\,
	datad => \current_state.S2~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X55_Y72_N28
\next_state.S2_183\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.S2_183~combout\ = (GLOBAL(\current_state.S1~clkctrl_outclk\) & (\next_state.S2_183~combout\)) # (!GLOBAL(\current_state.S1~clkctrl_outclk\) & ((\Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S2_183~combout\,
	datac => \Selector10~0_combout\,
	datad => \current_state.S1~clkctrl_outclk\,
	combout => \next_state.S2_183~combout\);

-- Location: IOIBUF_X52_Y73_N22
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X55_Y72_N18
\current_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~8_combout\ = (\next_state.S2_183~combout\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S2_183~combout\,
	datad => \Reset~input_o\,
	combout => \current_state~8_combout\);

-- Location: FF_X55_Y72_N19
\current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S2~q\);

-- Location: LCCOMB_X55_Y72_N12
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\current_state.S4~q\ & (\sens1~input_o\ & !\current_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S4~q\,
	datac => \sens1~input_o\,
	datad => \current_state.S2~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X55_Y72_N20
\next_state.S1_191\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.S1_191~combout\ = (GLOBAL(\current_state.S1~clkctrl_outclk\) & (\next_state.S1_191~combout\)) # (!GLOBAL(\current_state.S1~clkctrl_outclk\) & ((\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S1_191~combout\,
	datac => \Selector12~0_combout\,
	datad => \current_state.S1~clkctrl_outclk\,
	combout => \next_state.S1_191~combout\);

-- Location: LCCOMB_X55_Y72_N14
\current_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (\next_state.S1_191~combout\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S1_191~combout\,
	datad => \Reset~input_o\,
	combout => \current_state~9_combout\);

-- Location: FF_X55_Y72_N15
\current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S1~q\);

-- Location: CLKCTRL_G12
\current_state.S1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \current_state.S1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \current_state.S1~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N24
\next_state.S4_171\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.S4_171~combout\ = (GLOBAL(\current_state.S1~clkctrl_outclk\) & (\next_state.S4_171~combout\)) # (!GLOBAL(\current_state.S1~clkctrl_outclk\) & ((\current_state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.S4_171~combout\,
	datac => \current_state.S4~q\,
	datad => \current_state.S1~clkctrl_outclk\,
	combout => \next_state.S4_171~combout\);

-- Location: LCCOMB_X55_Y72_N4
\current_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~7_combout\ = (\next_state.S4_171~combout\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.S4_171~combout\,
	datad => \Reset~input_o\,
	combout => \current_state~7_combout\);

-- Location: FF_X55_Y72_N5
\current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S4~q\);

-- Location: LCCOMB_X55_Y72_N6
\red~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \red~0_combout\ = \current_state.S4~q\ $ (\red~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S4~q\,
	datad => \red~0_combout\,
	combout => \red~0_combout\);

-- Location: LCCOMB_X55_Y72_N8
\Gate$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gate$latch~combout\ = (\current_state.S4~q\ & (\Gate$latch~combout\)) # (!\current_state.S4~q\ & ((\current_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate$latch~combout\,
	datac => \current_state.S4~q\,
	datad => \current_state.S2~q\,
	combout => \Gate$latch~combout\);

-- Location: IOIBUF_X115_Y54_N15
\ext_sens~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ext_sens,
	o => \ext_sens~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\pass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass(0),
	o => \pass[0]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\pass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass(1),
	o => \pass[1]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\pass[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass(2),
	o => \pass[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\pass[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pass(3),
	o => \pass[3]~input_o\);

ww_white_led <= \white_led~output_o\;

ww_red_led <= \red_led~output_o\;

ww_green_led <= \green_led~output_o\;

ww_Gate <= \Gate~output_o\;
END structure;


