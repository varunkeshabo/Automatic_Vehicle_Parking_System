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

-- DATE "04/12/2021 18:40:02"

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

ENTITY 	park_space IS
    PORT (
	Clk : IN std_logic;
	Rst : IN std_logic;
	Sens2 : IN std_logic;
	exs1 : IN std_logic;
	exs2 : IN std_logic;
	Wt_led : OUT std_logic;
	Gate2 : OUT std_logic
	);
END park_space;

-- Design Ports Information
-- Wt_led	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gate2	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exs2	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exs1	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sens2	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF park_space IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Sens2 : std_logic;
SIGNAL ww_exs1 : std_logic;
SIGNAL ww_exs2 : std_logic;
SIGNAL ww_Wt_led : std_logic;
SIGNAL ww_Gate2 : std_logic;
SIGNAL \Wt_led~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Wt_led~output_o\ : std_logic;
SIGNAL \Gate2~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sens2~input_o\ : std_logic;
SIGNAL \exs2~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \current_state~9_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \current_state~10_combout\ : std_logic;
SIGNAL \current_state.No_space~q\ : std_logic;
SIGNAL \Wt_led~0_combout\ : std_logic;
SIGNAL \Wt_led~0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \exs1~input_o\ : std_logic;
SIGNAL \current_state~11_combout\ : std_logic;
SIGNAL \current_state~12_combout\ : std_logic;
SIGNAL \current_state~6_combout\ : std_logic;
SIGNAL \current_state~7_combout\ : std_logic;
SIGNAL \current_state.A_space~q\ : std_logic;
SIGNAL \current_state~13_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \current_state~8_combout\ : std_logic;
SIGNAL \current_state.S_checker~feeder_combout\ : std_logic;
SIGNAL \current_state.S_checker~q\ : std_logic;
SIGNAL \Wt_led$latch~combout\ : std_logic;
SIGNAL \Gate2~0_combout\ : std_logic;
SIGNAL \Gate2$latch~combout\ : std_logic;
SIGNAL Q : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Rst <= Rst;
ww_Sens2 <= Sens2;
ww_exs1 <= exs1;
ww_exs2 <= exs2;
Wt_led <= ww_Wt_led;
Gate2 <= ww_Gate2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Wt_led~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Wt_led~0_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N9
\Wt_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Wt_led$latch~combout\,
	devoe => ww_devoe,
	o => \Wt_led~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Gate2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gate2$latch~combout\,
	devoe => ww_devoe,
	o => \Gate2~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y0_N22
\Sens2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sens2,
	o => \Sens2~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\exs2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exs2,
	o => \exs2~input_o\);

-- Location: LCCOMB_X59_Y3_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = Q(0) $ (VCC)
-- \Add1~1\ = CARRY(Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X59_Y3_N6
\Q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Q(0) = (GLOBAL(\Wt_led~0clkctrl_outclk\) & (Q(0))) # (!GLOBAL(\Wt_led~0clkctrl_outclk\) & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \Add1~0_combout\,
	datad => \Wt_led~0clkctrl_outclk\,
	combout => Q(0));

-- Location: LCCOMB_X59_Y3_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Q(0) & (Q(1) & (Q(2) & Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datac => Q(2),
	datad => Q(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y3_N4
\current_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (Q(4) & (\current_state.S_checker~q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => \current_state.S_checker~q\,
	datad => \Equal0~0_combout\,
	combout => \current_state~9_combout\);

-- Location: IOIBUF_X60_Y0_N8
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: LCCOMB_X59_Y3_N30
\current_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~10_combout\ = (!\Rst~input_o\ & ((\current_state~9_combout\) # ((!\exs2~input_o\ & \current_state.No_space~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exs2~input_o\,
	datab => \current_state~9_combout\,
	datac => \current_state.No_space~q\,
	datad => \Rst~input_o\,
	combout => \current_state~10_combout\);

-- Location: FF_X59_Y3_N7
\current_state.No_space\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \current_state~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.No_space~q\);

-- Location: LCCOMB_X59_Y3_N0
\Wt_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Wt_led~0_combout\ = (\current_state.No_space~q\) # (!\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.No_space~q\,
	datad => \current_state.IDLE~q\,
	combout => \Wt_led~0_combout\);

-- Location: CLKCTRL_G19
\Wt_led~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Wt_led~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Wt_led~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y3_N18
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\current_state.S_checker~q\ & ((Q(1) & (!\Add1~1\)) # (!Q(1) & ((\Add1~1\) # (GND))))) # (!\current_state.S_checker~q\ & ((Q(1) & (\Add1~1\ & VCC)) # (!Q(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\current_state.S_checker~q\ & ((!\Add1~1\) # (!Q(1)))) # (!\current_state.S_checker~q\ & (!Q(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_checker~q\,
	datab => Q(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X59_Y3_N14
\Q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- Q(1) = (GLOBAL(\Wt_led~0clkctrl_outclk\) & (Q(1))) # (!GLOBAL(\Wt_led~0clkctrl_outclk\) & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => \Wt_led~0clkctrl_outclk\,
	datad => \Add1~2_combout\,
	combout => Q(1));

-- Location: LCCOMB_X59_Y3_N20
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\current_state.S_checker~q\ $ (Q(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\current_state.S_checker~q\ & (Q(2) & !\Add1~3\)) # (!\current_state.S_checker~q\ & ((Q(2)) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_checker~q\,
	datab => Q(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X59_Y3_N26
\Q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Q(2) = (GLOBAL(\Wt_led~0clkctrl_outclk\) & (Q(2))) # (!GLOBAL(\Wt_led~0clkctrl_outclk\) & ((\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datac => \Add1~4_combout\,
	datad => \Wt_led~0clkctrl_outclk\,
	combout => Q(2));

-- Location: LCCOMB_X59_Y3_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\current_state.S_checker~q\ & ((Q(3) & (!\Add1~5\)) # (!Q(3) & ((\Add1~5\) # (GND))))) # (!\current_state.S_checker~q\ & ((Q(3) & (\Add1~5\ & VCC)) # (!Q(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\current_state.S_checker~q\ & ((!\Add1~5\) # (!Q(3)))) # (!\current_state.S_checker~q\ & (!Q(3) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_checker~q\,
	datab => Q(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X59_Y3_N10
\Q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Q(3) = (GLOBAL(\Wt_led~0clkctrl_outclk\) & (Q(3))) # (!GLOBAL(\Wt_led~0clkctrl_outclk\) & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => \Add1~6_combout\,
	datac => \Wt_led~0clkctrl_outclk\,
	combout => Q(3));

-- Location: LCCOMB_X59_Y3_N24
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = Q(4) $ (\Add1~7\ $ (\current_state.S_checker~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datad => \current_state.S_checker~q\,
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X59_Y3_N12
\Q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- Q(4) = (GLOBAL(\Wt_led~0clkctrl_outclk\) & (Q(4))) # (!GLOBAL(\Wt_led~0clkctrl_outclk\) & ((\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datac => \Add1~8_combout\,
	datad => \Wt_led~0clkctrl_outclk\,
	combout => Q(4));

-- Location: IOIBUF_X56_Y0_N15
\exs1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exs1,
	o => \exs1~input_o\);

-- Location: LCCOMB_X58_Y3_N24
\current_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~11_combout\ = (\Rst~input_o\) # ((!\Sens2~input_o\ & (!\exs1~input_o\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sens2~input_o\,
	datab => \exs1~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \Rst~input_o\,
	combout => \current_state~11_combout\);

-- Location: LCCOMB_X59_Y3_N8
\current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~12_combout\ = (\current_state~11_combout\) # ((\current_state.S_checker~q\ & ((!\Equal0~0_combout\) # (!Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => \current_state~11_combout\,
	datac => \current_state.S_checker~q\,
	datad => \Equal0~0_combout\,
	combout => \current_state~12_combout\);

-- Location: LCCOMB_X58_Y3_N30
\current_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~6_combout\ = (\exs2~input_o\ & (\current_state.No_space~q\)) # (!\exs2~input_o\ & ((\current_state.A_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.No_space~q\,
	datac => \exs2~input_o\,
	datad => \current_state.A_space~q\,
	combout => \current_state~6_combout\);

-- Location: LCCOMB_X58_Y3_N20
\current_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~7_combout\ = (!\Rst~input_o\ & ((\current_state~6_combout\) # ((\exs1~input_o\ & !\current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exs1~input_o\,
	datab => \current_state.IDLE~q\,
	datac => \current_state~6_combout\,
	datad => \Rst~input_o\,
	combout => \current_state~7_combout\);

-- Location: FF_X58_Y3_N21
\current_state.A_space\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.A_space~q\);

-- Location: LCCOMB_X59_Y3_N2
\current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~13_combout\ = (!\current_state~12_combout\ & ((!\current_state.A_space~q\) # (!\exs2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exs2~input_o\,
	datac => \current_state~12_combout\,
	datad => \current_state.A_space~q\,
	combout => \current_state~13_combout\);

-- Location: FF_X59_Y3_N3
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X58_Y3_N18
\current_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~8_combout\ = (\Sens2~input_o\ & (!\current_state.IDLE~q\ & (!\exs1~input_o\ & !\Rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sens2~input_o\,
	datab => \current_state.IDLE~q\,
	datac => \exs1~input_o\,
	datad => \Rst~input_o\,
	combout => \current_state~8_combout\);

-- Location: LCCOMB_X58_Y3_N2
\current_state.S_checker~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.S_checker~feeder_combout\ = \current_state~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state~8_combout\,
	combout => \current_state.S_checker~feeder_combout\);

-- Location: FF_X58_Y3_N3
\current_state.S_checker\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state.S_checker~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_checker~q\);

-- Location: LCCOMB_X58_Y3_N26
\Wt_led$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Wt_led$latch~combout\ = (\current_state.S_checker~q\ & (\Wt_led$latch~combout\)) # (!\current_state.S_checker~q\ & ((\current_state.A_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_checker~q\,
	datac => \Wt_led$latch~combout\,
	datad => \current_state.A_space~q\,
	combout => \Wt_led$latch~combout\);

-- Location: LCCOMB_X58_Y3_N8
\Gate2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gate2~0_combout\ = (\current_state.No_space~q\) # (\current_state.S_checker~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.No_space~q\,
	datad => \current_state.S_checker~q\,
	combout => \Gate2~0_combout\);

-- Location: LCCOMB_X58_Y3_N28
\Gate2$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gate2$latch~combout\ = (\Gate2~0_combout\ & (\Gate2$latch~combout\)) # (!\Gate2~0_combout\ & ((\current_state.A_space~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2$latch~combout\,
	datac => \Gate2~0_combout\,
	datad => \current_state.A_space~q\,
	combout => \Gate2$latch~combout\);

ww_Wt_led <= \Wt_led~output_o\;

ww_Gate2 <= \Gate2~output_o\;
END structure;


