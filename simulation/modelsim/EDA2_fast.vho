-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "12/21/2017 14:42:01"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display IS
    PORT (
	clk : IN std_logic;
	dig3 : IN std_logic_vector(3 DOWNTO 0);
	dig2 : IN std_logic_vector(3 DOWNTO 0);
	dig1 : IN std_logic_vector(3 DOWNTO 0);
	dig0 : IN std_logic_vector(3 DOWNTO 0);
	scan : OUT std_logic_vector(3 DOWNTO 0);
	disp : OUT std_logic_vector(6 DOWNTO 0)
	);
END display;

-- Design Ports Information
-- scan[0]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scan[1]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scan[2]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scan[3]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[0]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[1]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[2]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[3]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[4]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[5]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp[6]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dig0[0]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig3[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig1[0]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig2[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig3[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig0[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig1[1]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig2[1]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig0[2]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig3[2]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig1[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig2[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig3[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig0[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig1[3]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dig2[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF display IS
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
SIGNAL ww_dig3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dig2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dig1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dig0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_scan : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp : std_logic_vector(6 DOWNTO 0);
SIGNAL \count[17]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[1]~17_combout\ : std_logic;
SIGNAL \count[3]~21_combout\ : std_logic;
SIGNAL \count[5]~25_combout\ : std_logic;
SIGNAL \count[12]~39_combout\ : std_logic;
SIGNAL \count[14]~43_combout\ : std_logic;
SIGNAL \count[15]~45_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~51_combout\ : std_logic;
SIGNAL \count[1]~18\ : std_logic;
SIGNAL \count[2]~19_combout\ : std_logic;
SIGNAL \count[2]~20\ : std_logic;
SIGNAL \count[3]~22\ : std_logic;
SIGNAL \count[4]~23_combout\ : std_logic;
SIGNAL \count[4]~24\ : std_logic;
SIGNAL \count[5]~26\ : std_logic;
SIGNAL \count[6]~27_combout\ : std_logic;
SIGNAL \count[6]~28\ : std_logic;
SIGNAL \count[7]~29_combout\ : std_logic;
SIGNAL \count[7]~30\ : std_logic;
SIGNAL \count[8]~31_combout\ : std_logic;
SIGNAL \count[8]~32\ : std_logic;
SIGNAL \count[9]~33_combout\ : std_logic;
SIGNAL \count[9]~34\ : std_logic;
SIGNAL \count[10]~35_combout\ : std_logic;
SIGNAL \count[10]~36\ : std_logic;
SIGNAL \count[11]~37_combout\ : std_logic;
SIGNAL \count[11]~38\ : std_logic;
SIGNAL \count[12]~40\ : std_logic;
SIGNAL \count[13]~41_combout\ : std_logic;
SIGNAL \count[13]~42\ : std_logic;
SIGNAL \count[14]~44\ : std_logic;
SIGNAL \count[15]~46\ : std_logic;
SIGNAL \count[16]~47_combout\ : std_logic;
SIGNAL \count[16]~48\ : std_logic;
SIGNAL \count[17]~49_combout\ : std_logic;
SIGNAL \count[17]~clkctrl_outclk\ : std_logic;
SIGNAL \current_state.DISP3~0_combout\ : std_logic;
SIGNAL \current_state.DISP3~regout\ : std_logic;
SIGNAL \current_state.DISP2~feeder_combout\ : std_logic;
SIGNAL \current_state.DISP2~regout\ : std_logic;
SIGNAL \current_state.DISP1~feeder_combout\ : std_logic;
SIGNAL \current_state.DISP1~regout\ : std_logic;
SIGNAL \current_state.DISP0~0_combout\ : std_logic;
SIGNAL \current_state.DISP0~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \disp~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(17 DOWNTO 0);
SIGNAL \dig3~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig0~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_disp~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.DISP0~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dig3 <= dig3;
ww_dig2 <= dig2;
ww_dig1 <= dig1;
ww_dig0 <= dig0;
scan <= ww_scan;
disp <= ww_disp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[17]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & count(17));

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_disp~0_combout\ <= NOT \disp~0_combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_current_state.DISP0~regout\ <= NOT \current_state.DISP0~regout\;

-- Location: LCFF_X1_Y5_N13
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCFF_X1_Y5_N11
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCFF_X1_Y5_N7
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCFF_X1_Y6_N25
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCFF_X1_Y6_N21
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X1_Y6_N17
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X1_Y6_N16
\count[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~17_combout\ = (count(1) & (count(0) $ (VCC))) # (!count(1) & (count(0) & VCC))
-- \count[1]~18\ = CARRY((count(1) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datad => VCC,
	combout => \count[1]~17_combout\,
	cout => \count[1]~18\);

-- Location: LCCOMB_X1_Y6_N20
\count[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~21_combout\ = (count(3) & (\count[2]~20\ $ (GND))) # (!count(3) & (!\count[2]~20\ & VCC))
-- \count[3]~22\ = CARRY((count(3) & !\count[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~20\,
	combout => \count[3]~21_combout\,
	cout => \count[3]~22\);

-- Location: LCCOMB_X1_Y6_N24
\count[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~25_combout\ = (count(5) & (\count[4]~24\ $ (GND))) # (!count(5) & (!\count[4]~24\ & VCC))
-- \count[5]~26\ = CARRY((count(5) & !\count[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~24\,
	combout => \count[5]~25_combout\,
	cout => \count[5]~26\);

-- Location: LCCOMB_X1_Y5_N6
\count[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~39_combout\ = (count(12) & (!\count[11]~38\)) # (!count(12) & ((\count[11]~38\) # (GND)))
-- \count[12]~40\ = CARRY((!\count[11]~38\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~38\,
	combout => \count[12]~39_combout\,
	cout => \count[12]~40\);

-- Location: LCCOMB_X1_Y5_N10
\count[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~43_combout\ = (count(14) & (!\count[13]~42\)) # (!count(14) & ((\count[13]~42\) # (GND)))
-- \count[14]~44\ = CARRY((!\count[13]~42\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~42\,
	combout => \count[14]~43_combout\,
	cout => \count[14]~44\);

-- Location: LCCOMB_X1_Y5_N12
\count[15]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~45_combout\ = (count(15) & (\count[14]~44\ $ (GND))) # (!count(15) & (!\count[14]~44\ & VCC))
-- \count[15]~46\ = CARRY((count(15) & !\count[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~44\,
	combout => \count[15]~45_combout\,
	cout => \count[15]~46\);

-- Location: LCCOMB_X1_Y4_N24
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector0~0_combout\ & ((\dig0~combout\(1)) # ((\Selector0~1_combout\)))) # (!\Selector0~0_combout\ & (((\dig1~combout\(1) & !\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \dig0~combout\(1),
	datac => \dig1~combout\(1),
	datad => \Selector0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y2_N16
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\ & (\Selector0~0_combout\)) # (!\Selector0~1_combout\ & ((\Selector0~0_combout\ & ((\dig0~combout\(3)))) # (!\Selector0~0_combout\ & (\dig1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \dig1~combout\(3),
	datad => \dig0~combout\(3),
	combout => \Selector0~2_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig0(0),
	combout => \dig0~combout\(0));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig1(0),
	combout => \dig1~combout\(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig0(1),
	combout => \dig0~combout\(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig1(1),
	combout => \dig1~combout\(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig0(2),
	combout => \dig0~combout\(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig0(3),
	combout => \dig0~combout\(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig1(3),
	combout => \dig1~combout\(3));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N0
\count[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~51_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~51_combout\);

-- Location: LCFF_X1_Y6_N1
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X1_Y6_N18
\count[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~19_combout\ = (count(2) & (!\count[1]~18\)) # (!count(2) & ((\count[1]~18\) # (GND)))
-- \count[2]~20\ = CARRY((!\count[1]~18\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~18\,
	combout => \count[2]~19_combout\,
	cout => \count[2]~20\);

-- Location: LCFF_X1_Y6_N19
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X1_Y6_N22
\count[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~23_combout\ = (count(4) & (!\count[3]~22\)) # (!count(4) & ((\count[3]~22\) # (GND)))
-- \count[4]~24\ = CARRY((!\count[3]~22\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~22\,
	combout => \count[4]~23_combout\,
	cout => \count[4]~24\);

-- Location: LCFF_X1_Y6_N23
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X1_Y6_N26
\count[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~27_combout\ = (count(6) & (!\count[5]~26\)) # (!count(6) & ((\count[5]~26\) # (GND)))
-- \count[6]~28\ = CARRY((!\count[5]~26\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~26\,
	combout => \count[6]~27_combout\,
	cout => \count[6]~28\);

-- Location: LCFF_X1_Y6_N27
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X1_Y6_N28
\count[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~29_combout\ = (count(7) & (\count[6]~28\ $ (GND))) # (!count(7) & (!\count[6]~28\ & VCC))
-- \count[7]~30\ = CARRY((count(7) & !\count[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~28\,
	combout => \count[7]~29_combout\,
	cout => \count[7]~30\);

-- Location: LCFF_X1_Y6_N29
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X1_Y6_N30
\count[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~31_combout\ = (count(8) & (!\count[7]~30\)) # (!count(8) & ((\count[7]~30\) # (GND)))
-- \count[8]~32\ = CARRY((!\count[7]~30\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~30\,
	combout => \count[8]~31_combout\,
	cout => \count[8]~32\);

-- Location: LCFF_X1_Y6_N31
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X1_Y5_N0
\count[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~33_combout\ = (count(9) & (\count[8]~32\ $ (GND))) # (!count(9) & (!\count[8]~32\ & VCC))
-- \count[9]~34\ = CARRY((count(9) & !\count[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~32\,
	combout => \count[9]~33_combout\,
	cout => \count[9]~34\);

-- Location: LCFF_X1_Y5_N1
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X1_Y5_N2
\count[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~35_combout\ = (count(10) & (!\count[9]~34\)) # (!count(10) & ((\count[9]~34\) # (GND)))
-- \count[10]~36\ = CARRY((!\count[9]~34\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~34\,
	combout => \count[10]~35_combout\,
	cout => \count[10]~36\);

-- Location: LCFF_X1_Y5_N3
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X1_Y5_N4
\count[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~37_combout\ = (count(11) & (\count[10]~36\ $ (GND))) # (!count(11) & (!\count[10]~36\ & VCC))
-- \count[11]~38\ = CARRY((count(11) & !\count[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~36\,
	combout => \count[11]~37_combout\,
	cout => \count[11]~38\);

-- Location: LCFF_X1_Y5_N5
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[11]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X1_Y5_N8
\count[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~41_combout\ = (count(13) & (\count[12]~40\ $ (GND))) # (!count(13) & (!\count[12]~40\ & VCC))
-- \count[13]~42\ = CARRY((count(13) & !\count[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~40\,
	combout => \count[13]~41_combout\,
	cout => \count[13]~42\);

-- Location: LCFF_X1_Y5_N9
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[13]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X1_Y5_N14
\count[16]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~47_combout\ = (count(16) & (!\count[15]~46\)) # (!count(16) & ((\count[15]~46\) # (GND)))
-- \count[16]~48\ = CARRY((!\count[15]~46\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~46\,
	combout => \count[16]~47_combout\,
	cout => \count[16]~48\);

-- Location: LCFF_X1_Y5_N15
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[16]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X1_Y5_N16
\count[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~49_combout\ = \count[16]~48\ $ (!count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(17),
	cin => \count[16]~48\,
	combout => \count[17]~49_combout\);

-- Location: LCFF_X1_Y5_N17
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[17]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: CLKCTRL_G3
\count[17]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count[17]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count[17]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N30
\current_state.DISP3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.DISP3~0_combout\ = !\current_state.DISP0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DISP0~regout\,
	combout => \current_state.DISP3~0_combout\);

-- Location: LCFF_X1_Y4_N31
\current_state.DISP3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count[17]~clkctrl_outclk\,
	datain => \current_state.DISP3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.DISP3~regout\);

-- Location: LCCOMB_X1_Y4_N12
\current_state.DISP2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.DISP2~feeder_combout\ = \current_state.DISP3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DISP3~regout\,
	combout => \current_state.DISP2~feeder_combout\);

-- Location: LCFF_X1_Y4_N13
\current_state.DISP2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count[17]~clkctrl_outclk\,
	datain => \current_state.DISP2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.DISP2~regout\);

-- Location: LCCOMB_X1_Y4_N10
\current_state.DISP1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.DISP1~feeder_combout\ = \current_state.DISP2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DISP2~regout\,
	combout => \current_state.DISP1~feeder_combout\);

-- Location: LCFF_X1_Y4_N11
\current_state.DISP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count[17]~clkctrl_outclk\,
	datain => \current_state.DISP1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.DISP1~regout\);

-- Location: LCCOMB_X1_Y4_N28
\current_state.DISP0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_state.DISP0~0_combout\ = !\current_state.DISP1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.DISP1~regout\,
	combout => \current_state.DISP0~0_combout\);

-- Location: LCFF_X1_Y4_N29
\current_state.DISP0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count[17]~clkctrl_outclk\,
	datain => \current_state.DISP0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.DISP0~regout\);

-- Location: LCCOMB_X1_Y4_N8
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.DISP0~regout\ & (\current_state.DISP2~regout\ & !\current_state.DISP1~regout\)) # (!\current_state.DISP0~regout\ & ((\current_state.DISP2~regout\) # (!\current_state.DISP1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DISP0~regout\,
	datac => \current_state.DISP2~regout\,
	datad => \current_state.DISP1~regout\,
	combout => \Selector0~0_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig3(0),
	combout => \dig3~combout\(0));

-- Location: LCCOMB_X1_Y4_N22
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = \current_state.DISP0~regout\ $ (\current_state.DISP1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.DISP0~regout\,
	datad => \current_state.DISP1~regout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X1_Y2_N28
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector0~0_combout\ & (((\Selector0~1_combout\)))) # (!\Selector0~0_combout\ & ((\Selector0~1_combout\ & ((\dig3~combout\(0)))) # (!\Selector0~1_combout\ & (\dig1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig1~combout\(0),
	datab => \Selector0~0_combout\,
	datac => \dig3~combout\(0),
	datad => \Selector0~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig2(0),
	combout => \dig2~combout\(0));

-- Location: LCCOMB_X1_Y2_N6
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & (((\dig2~combout\(0)) # (!\Selector0~0_combout\)))) # (!\Selector3~0_combout\ & (\dig0~combout\(0) & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig0~combout\(0),
	datab => \Selector3~0_combout\,
	datac => \dig2~combout\(0),
	datad => \Selector0~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig3(2),
	combout => \dig3~combout\(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig1(2),
	combout => \dig1~combout\(2));

-- Location: LCCOMB_X1_Y2_N0
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~1_combout\ & ((\dig3~combout\(2)) # ((\Selector0~0_combout\)))) # (!\Selector0~1_combout\ & (((\dig1~combout\(2) & !\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \dig3~combout\(2),
	datac => \dig1~combout\(2),
	datad => \Selector0~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig2(2),
	combout => \dig2~combout\(2));

-- Location: LCCOMB_X1_Y2_N18
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (((\dig2~combout\(2)) # (!\Selector0~0_combout\)))) # (!\Selector1~0_combout\ & (\dig0~combout\(2) & ((\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig0~combout\(2),
	datab => \Selector1~0_combout\,
	datac => \dig2~combout\(2),
	datad => \Selector0~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig2(1),
	combout => \dig2~combout\(1));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig3(1),
	combout => \dig3~combout\(1));

-- Location: LCCOMB_X1_Y4_N26
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\dig2~combout\(1)) # ((!\Selector0~1_combout\)))) # (!\Selector2~0_combout\ & (((\dig3~combout\(1) & \Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \dig2~combout\(1),
	datac => \dig3~combout\(1),
	datad => \Selector0~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig3(3),
	combout => \dig3~combout\(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dig2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dig2(3),
	combout => \dig2~combout\(3));

-- Location: LCCOMB_X1_Y2_N30
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\ & (((\dig2~combout\(3)) # (!\Selector0~1_combout\)))) # (!\Selector0~2_combout\ & (\dig3~combout\(3) & ((\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \dig3~combout\(3),
	datac => \dig2~combout\(3),
	datad => \Selector0~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X1_Y2_N4
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\Selector3~1_combout\ & (!\Selector2~1_combout\ & (\Selector1~1_combout\ $ (!\Selector0~3_combout\)))) # (!\Selector3~1_combout\ & (\Selector1~1_combout\ & ((!\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y2_N26
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Selector1~1_combout\ & ((\Selector3~1_combout\ & (!\Selector2~1_combout\)) # (!\Selector3~1_combout\ & (\Selector2~1_combout\ & !\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y2_N24
\disp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp~0_combout\ = (\Selector3~1_combout\ & (\Selector1~1_combout\ & (!\Selector2~1_combout\ & \Selector0~3_combout\))) # (!\Selector3~1_combout\ & (!\Selector1~1_combout\ & (\Selector2~1_combout\ & !\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \disp~0_combout\);

-- Location: LCCOMB_X1_Y2_N22
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\Selector3~1_combout\ & (\Selector2~1_combout\ $ (((\Selector0~3_combout\) # (!\Selector1~1_combout\))))) # (!\Selector3~1_combout\ & (\Selector1~1_combout\ & (!\Selector2~1_combout\ & !\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y2_N8
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\Selector3~1_combout\ & (((!\Selector0~3_combout\) # (!\Selector2~1_combout\)))) # (!\Selector3~1_combout\ & (\Selector1~1_combout\ & (!\Selector2~1_combout\ & !\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y2_N10
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Selector3~1_combout\ & (\Selector0~3_combout\ $ (((\Selector2~1_combout\) # (!\Selector1~1_combout\))))) # (!\Selector3~1_combout\ & (!\Selector1~1_combout\ & (\Selector2~1_combout\ & !\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Selector1~1_combout\ & (!\Selector0~3_combout\ & ((!\Selector2~1_combout\) # (!\Selector3~1_combout\)))) # (!\Selector1~1_combout\ & ((\Selector2~1_combout\ $ (\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector0~3_combout\,
	combout => \WideOr0~0_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scan[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_current_state.DISP0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_scan(0));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scan[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \current_state.DISP1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_scan(1));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scan[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \current_state.DISP2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_scan(2));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scan[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \current_state.DISP3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_scan(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(1));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_disp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(2));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(5));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp(6));
END structure;


