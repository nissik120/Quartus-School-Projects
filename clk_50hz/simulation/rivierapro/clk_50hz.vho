-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "05/07/2018 01:11:13"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Riviera-PRO (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clk_50hz IS
    PORT (
	CLK_50MHZ : IN std_logic;
	CLK_OUT : OUT std_logic
	);
END clk_50hz;

-- Design Ports Information
-- CLK_OUT	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK_50MHZ	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF clk_50hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHZ : std_logic;
SIGNAL ww_CLK_OUT : std_logic;
SIGNAL \CLK_50MHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_COUNT_10HZ[1]~10_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[4]~16_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[15]~50_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[16]~52_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \CLK_50MHZ~combout\ : std_logic;
SIGNAL \CLK_50MHZ~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[15]~51\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[16]~53\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[17]~54_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[17]~55\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[18]~56_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[18]~57\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[19]~58_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \CLK_400HZ~0_combout\ : std_logic;
SIGNAL \CLK_400HZ~regout\ : std_logic;
SIGNAL \CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[0]~8_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[3]~15\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[4]~17\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[5]~18_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[5]~19\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[6]~20_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[6]~21\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[7]~22_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[0]~9\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[1]~11\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[2]~12_combout\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[2]~13\ : std_logic;
SIGNAL \CLK_COUNT_10HZ[3]~14_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \CLK_10HZ~0_combout\ : std_logic;
SIGNAL \CLK_10HZ~regout\ : std_logic;
SIGNAL CLK_COUNT_10HZ : std_logic_vector(7 DOWNTO 0);
SIGNAL CLK_COUNT_400HZ : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_CLK_50MHZ <= CLK_50MHZ;
CLK_OUT <= ww_CLK_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50MHZ~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_50MHZ~combout\);

\CLK_400HZ~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_400HZ~regout\);

-- Location: LCFF_X64_Y35_N13
\CLK_COUNT_10HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[4]~16_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(4));

-- Location: LCFF_X64_Y35_N7
\CLK_COUNT_10HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[1]~10_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(1));

-- Location: LCCOMB_X64_Y35_N6
\CLK_COUNT_10HZ[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[1]~10_combout\ = (CLK_COUNT_10HZ(1) & (!\CLK_COUNT_10HZ[0]~9\)) # (!CLK_COUNT_10HZ(1) & ((\CLK_COUNT_10HZ[0]~9\) # (GND)))
-- \CLK_COUNT_10HZ[1]~11\ = CARRY((!\CLK_COUNT_10HZ[0]~9\) # (!CLK_COUNT_10HZ(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(1),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[0]~9\,
	combout => \CLK_COUNT_10HZ[1]~10_combout\,
	cout => \CLK_COUNT_10HZ[1]~11\);

-- Location: LCCOMB_X64_Y35_N12
\CLK_COUNT_10HZ[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[4]~16_combout\ = (CLK_COUNT_10HZ(4) & (\CLK_COUNT_10HZ[3]~15\ $ (GND))) # (!CLK_COUNT_10HZ(4) & (!\CLK_COUNT_10HZ[3]~15\ & VCC))
-- \CLK_COUNT_10HZ[4]~17\ = CARRY((CLK_COUNT_10HZ(4) & !\CLK_COUNT_10HZ[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(4),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[3]~15\,
	combout => \CLK_COUNT_10HZ[4]~16_combout\,
	cout => \CLK_COUNT_10HZ[4]~17\);

-- Location: LCFF_X2_Y17_N11
\CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[15]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(15));

-- Location: LCFF_X2_Y17_N7
\CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[13]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(13));

-- Location: LCFF_X2_Y18_N17
\CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(2));

-- Location: LCFF_X2_Y18_N25
\CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[6]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(6));

-- Location: LCFF_X2_Y17_N13
\CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[16]~52_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(16));

-- Location: LCFF_X2_Y18_N13
\CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(0));

-- Location: LCCOMB_X2_Y18_N12
\CLK_COUNT_400HZ[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[0]~20_combout\ = CLK_COUNT_400HZ(0) $ (VCC)
-- \CLK_COUNT_400HZ[0]~21\ = CARRY(CLK_COUNT_400HZ(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(0),
	datad => VCC,
	combout => \CLK_COUNT_400HZ[0]~20_combout\,
	cout => \CLK_COUNT_400HZ[0]~21\);

-- Location: LCCOMB_X2_Y18_N16
\CLK_COUNT_400HZ[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[2]~24_combout\ = (CLK_COUNT_400HZ(2) & (\CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!CLK_COUNT_400HZ(2) & (!\CLK_COUNT_400HZ[1]~23\ & VCC))
-- \CLK_COUNT_400HZ[2]~25\ = CARRY((CLK_COUNT_400HZ(2) & !\CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(2),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[1]~23\,
	combout => \CLK_COUNT_400HZ[2]~24_combout\,
	cout => \CLK_COUNT_400HZ[2]~25\);

-- Location: LCCOMB_X2_Y18_N24
\CLK_COUNT_400HZ[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[6]~32_combout\ = (CLK_COUNT_400HZ(6) & (\CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!CLK_COUNT_400HZ(6) & (!\CLK_COUNT_400HZ[5]~31\ & VCC))
-- \CLK_COUNT_400HZ[6]~33\ = CARRY((CLK_COUNT_400HZ(6) & !\CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(6),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[5]~31\,
	combout => \CLK_COUNT_400HZ[6]~32_combout\,
	cout => \CLK_COUNT_400HZ[6]~33\);

-- Location: LCCOMB_X2_Y17_N6
\CLK_COUNT_400HZ[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[13]~46_combout\ = (CLK_COUNT_400HZ(13) & (!\CLK_COUNT_400HZ[12]~45\)) # (!CLK_COUNT_400HZ(13) & ((\CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \CLK_COUNT_400HZ[13]~47\ = CARRY((!\CLK_COUNT_400HZ[12]~45\) # (!CLK_COUNT_400HZ(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(13),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[12]~45\,
	combout => \CLK_COUNT_400HZ[13]~46_combout\,
	cout => \CLK_COUNT_400HZ[13]~47\);

-- Location: LCCOMB_X2_Y17_N10
\CLK_COUNT_400HZ[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[15]~50_combout\ = (CLK_COUNT_400HZ(15) & (!\CLK_COUNT_400HZ[14]~49\)) # (!CLK_COUNT_400HZ(15) & ((\CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \CLK_COUNT_400HZ[15]~51\ = CARRY((!\CLK_COUNT_400HZ[14]~49\) # (!CLK_COUNT_400HZ(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(15),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[14]~49\,
	combout => \CLK_COUNT_400HZ[15]~50_combout\,
	cout => \CLK_COUNT_400HZ[15]~51\);

-- Location: LCCOMB_X2_Y17_N12
\CLK_COUNT_400HZ[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[16]~52_combout\ = (CLK_COUNT_400HZ(16) & (\CLK_COUNT_400HZ[15]~51\ $ (GND))) # (!CLK_COUNT_400HZ(16) & (!\CLK_COUNT_400HZ[15]~51\ & VCC))
-- \CLK_COUNT_400HZ[16]~53\ = CARRY((CLK_COUNT_400HZ(16) & !\CLK_COUNT_400HZ[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(16),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[15]~51\,
	combout => \CLK_COUNT_400HZ[16]~52_combout\,
	cout => \CLK_COUNT_400HZ[16]~53\);

-- Location: LCCOMB_X1_Y17_N6
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!CLK_COUNT_400HZ(14)) # (!CLK_COUNT_400HZ(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(15),
	datac => CLK_COUNT_400HZ(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y17_N20
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!CLK_COUNT_400HZ(11) & !CLK_COUNT_400HZ(10))) # (!CLK_COUNT_400HZ(12))) # (!CLK_COUNT_400HZ(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(13),
	datab => CLK_COUNT_400HZ(11),
	datac => CLK_COUNT_400HZ(12),
	datad => CLK_COUNT_400HZ(10),
	combout => \LessThan0~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_50MHZ~I\ : cycloneii_io
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
	padio => ww_CLK_50MHZ,
	combout => \CLK_50MHZ~combout\);

-- Location: CLKCTRL_G3
\CLK_50MHZ~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHZ~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y18_N14
\CLK_COUNT_400HZ[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[1]~22_combout\ = (CLK_COUNT_400HZ(1) & (!\CLK_COUNT_400HZ[0]~21\)) # (!CLK_COUNT_400HZ(1) & ((\CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \CLK_COUNT_400HZ[1]~23\ = CARRY((!\CLK_COUNT_400HZ[0]~21\) # (!CLK_COUNT_400HZ(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(1),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[0]~21\,
	combout => \CLK_COUNT_400HZ[1]~22_combout\,
	cout => \CLK_COUNT_400HZ[1]~23\);

-- Location: LCCOMB_X2_Y17_N24
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!CLK_COUNT_400HZ(6) & (!CLK_COUNT_400HZ(8) & (!CLK_COUNT_400HZ(9) & !CLK_COUNT_400HZ(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(6),
	datab => CLK_COUNT_400HZ(8),
	datac => CLK_COUNT_400HZ(9),
	datad => CLK_COUNT_400HZ(7),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X2_Y18_N20
\CLK_COUNT_400HZ[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[4]~28_combout\ = (CLK_COUNT_400HZ(4) & (\CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!CLK_COUNT_400HZ(4) & (!\CLK_COUNT_400HZ[3]~27\ & VCC))
-- \CLK_COUNT_400HZ[4]~29\ = CARRY((CLK_COUNT_400HZ(4) & !\CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(4),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[3]~27\,
	combout => \CLK_COUNT_400HZ[4]~28_combout\,
	cout => \CLK_COUNT_400HZ[4]~29\);

-- Location: LCFF_X2_Y18_N21
\CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[4]~28_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(4));

-- Location: LCCOMB_X2_Y17_N30
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((!CLK_COUNT_400HZ(2) & (!CLK_COUNT_400HZ(4) & !CLK_COUNT_400HZ(3)))) # (!CLK_COUNT_400HZ(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(2),
	datab => CLK_COUNT_400HZ(5),
	datac => CLK_COUNT_400HZ(4),
	datad => CLK_COUNT_400HZ(3),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X2_Y17_N26
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~3_combout\) # ((!CLK_COUNT_400HZ(11) & (\LessThan0~5_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => CLK_COUNT_400HZ(11),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X2_Y17_N22
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((CLK_COUNT_400HZ(15) & (CLK_COUNT_400HZ(14) & !\LessThan0~6_combout\))) # (!\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(15),
	datab => \LessThan0~7_combout\,
	datac => CLK_COUNT_400HZ(14),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCFF_X2_Y18_N15
\CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(1));

-- Location: LCCOMB_X2_Y18_N18
\CLK_COUNT_400HZ[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[3]~26_combout\ = (CLK_COUNT_400HZ(3) & (!\CLK_COUNT_400HZ[2]~25\)) # (!CLK_COUNT_400HZ(3) & ((\CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \CLK_COUNT_400HZ[3]~27\ = CARRY((!\CLK_COUNT_400HZ[2]~25\) # (!CLK_COUNT_400HZ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(3),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[2]~25\,
	combout => \CLK_COUNT_400HZ[3]~26_combout\,
	cout => \CLK_COUNT_400HZ[3]~27\);

-- Location: LCFF_X2_Y18_N19
\CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[3]~26_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(3));

-- Location: LCCOMB_X2_Y18_N22
\CLK_COUNT_400HZ[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[5]~30_combout\ = (CLK_COUNT_400HZ(5) & (!\CLK_COUNT_400HZ[4]~29\)) # (!CLK_COUNT_400HZ(5) & ((\CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \CLK_COUNT_400HZ[5]~31\ = CARRY((!\CLK_COUNT_400HZ[4]~29\) # (!CLK_COUNT_400HZ(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(5),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[4]~29\,
	combout => \CLK_COUNT_400HZ[5]~30_combout\,
	cout => \CLK_COUNT_400HZ[5]~31\);

-- Location: LCFF_X2_Y18_N23
\CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[5]~30_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(5));

-- Location: LCCOMB_X2_Y18_N26
\CLK_COUNT_400HZ[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[7]~34_combout\ = (CLK_COUNT_400HZ(7) & (!\CLK_COUNT_400HZ[6]~33\)) # (!CLK_COUNT_400HZ(7) & ((\CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \CLK_COUNT_400HZ[7]~35\ = CARRY((!\CLK_COUNT_400HZ[6]~33\) # (!CLK_COUNT_400HZ(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(7),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[6]~33\,
	combout => \CLK_COUNT_400HZ[7]~34_combout\,
	cout => \CLK_COUNT_400HZ[7]~35\);

-- Location: LCFF_X2_Y18_N27
\CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[7]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(7));

-- Location: LCCOMB_X2_Y18_N28
\CLK_COUNT_400HZ[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[8]~36_combout\ = (CLK_COUNT_400HZ(8) & (\CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!CLK_COUNT_400HZ(8) & (!\CLK_COUNT_400HZ[7]~35\ & VCC))
-- \CLK_COUNT_400HZ[8]~37\ = CARRY((CLK_COUNT_400HZ(8) & !\CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(8),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[7]~35\,
	combout => \CLK_COUNT_400HZ[8]~36_combout\,
	cout => \CLK_COUNT_400HZ[8]~37\);

-- Location: LCFF_X2_Y18_N29
\CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[8]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(8));

-- Location: LCCOMB_X2_Y18_N30
\CLK_COUNT_400HZ[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[9]~38_combout\ = (CLK_COUNT_400HZ(9) & (!\CLK_COUNT_400HZ[8]~37\)) # (!CLK_COUNT_400HZ(9) & ((\CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \CLK_COUNT_400HZ[9]~39\ = CARRY((!\CLK_COUNT_400HZ[8]~37\) # (!CLK_COUNT_400HZ(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(9),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[8]~37\,
	combout => \CLK_COUNT_400HZ[9]~38_combout\,
	cout => \CLK_COUNT_400HZ[9]~39\);

-- Location: LCFF_X2_Y18_N31
\CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[9]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(9));

-- Location: LCCOMB_X2_Y17_N0
\CLK_COUNT_400HZ[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[10]~40_combout\ = (CLK_COUNT_400HZ(10) & (\CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!CLK_COUNT_400HZ(10) & (!\CLK_COUNT_400HZ[9]~39\ & VCC))
-- \CLK_COUNT_400HZ[10]~41\ = CARRY((CLK_COUNT_400HZ(10) & !\CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(10),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[9]~39\,
	combout => \CLK_COUNT_400HZ[10]~40_combout\,
	cout => \CLK_COUNT_400HZ[10]~41\);

-- Location: LCFF_X2_Y17_N1
\CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[10]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(10));

-- Location: LCCOMB_X2_Y17_N2
\CLK_COUNT_400HZ[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[11]~42_combout\ = (CLK_COUNT_400HZ(11) & (!\CLK_COUNT_400HZ[10]~41\)) # (!CLK_COUNT_400HZ(11) & ((\CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \CLK_COUNT_400HZ[11]~43\ = CARRY((!\CLK_COUNT_400HZ[10]~41\) # (!CLK_COUNT_400HZ(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(11),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[10]~41\,
	combout => \CLK_COUNT_400HZ[11]~42_combout\,
	cout => \CLK_COUNT_400HZ[11]~43\);

-- Location: LCFF_X2_Y17_N3
\CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[11]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(11));

-- Location: LCCOMB_X2_Y17_N4
\CLK_COUNT_400HZ[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[12]~44_combout\ = (CLK_COUNT_400HZ(12) & (\CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!CLK_COUNT_400HZ(12) & (!\CLK_COUNT_400HZ[11]~43\ & VCC))
-- \CLK_COUNT_400HZ[12]~45\ = CARRY((CLK_COUNT_400HZ(12) & !\CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(12),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[11]~43\,
	combout => \CLK_COUNT_400HZ[12]~44_combout\,
	cout => \CLK_COUNT_400HZ[12]~45\);

-- Location: LCFF_X2_Y17_N5
\CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[12]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(12));

-- Location: LCCOMB_X2_Y17_N8
\CLK_COUNT_400HZ[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[14]~48_combout\ = (CLK_COUNT_400HZ(14) & (\CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!CLK_COUNT_400HZ(14) & (!\CLK_COUNT_400HZ[13]~47\ & VCC))
-- \CLK_COUNT_400HZ[14]~49\ = CARRY((CLK_COUNT_400HZ(14) & !\CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(14),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[13]~47\,
	combout => \CLK_COUNT_400HZ[14]~48_combout\,
	cout => \CLK_COUNT_400HZ[14]~49\);

-- Location: LCFF_X2_Y17_N9
\CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[14]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(14));

-- Location: LCCOMB_X2_Y17_N14
\CLK_COUNT_400HZ[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[17]~54_combout\ = (CLK_COUNT_400HZ(17) & (!\CLK_COUNT_400HZ[16]~53\)) # (!CLK_COUNT_400HZ(17) & ((\CLK_COUNT_400HZ[16]~53\) # (GND)))
-- \CLK_COUNT_400HZ[17]~55\ = CARRY((!\CLK_COUNT_400HZ[16]~53\) # (!CLK_COUNT_400HZ(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(17),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[16]~53\,
	combout => \CLK_COUNT_400HZ[17]~54_combout\,
	cout => \CLK_COUNT_400HZ[17]~55\);

-- Location: LCFF_X2_Y17_N15
\CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[17]~54_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(17));

-- Location: LCCOMB_X2_Y17_N16
\CLK_COUNT_400HZ[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[18]~56_combout\ = (CLK_COUNT_400HZ(18) & (\CLK_COUNT_400HZ[17]~55\ $ (GND))) # (!CLK_COUNT_400HZ(18) & (!\CLK_COUNT_400HZ[17]~55\ & VCC))
-- \CLK_COUNT_400HZ[18]~57\ = CARRY((CLK_COUNT_400HZ(18) & !\CLK_COUNT_400HZ[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(18),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[17]~55\,
	combout => \CLK_COUNT_400HZ[18]~56_combout\,
	cout => \CLK_COUNT_400HZ[18]~57\);

-- Location: LCFF_X2_Y17_N17
\CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[18]~56_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(18));

-- Location: LCCOMB_X2_Y17_N18
\CLK_COUNT_400HZ[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[19]~58_combout\ = \CLK_COUNT_400HZ[18]~57\ $ (CLK_COUNT_400HZ(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CLK_COUNT_400HZ(19),
	cin => \CLK_COUNT_400HZ[18]~57\,
	combout => \CLK_COUNT_400HZ[19]~58_combout\);

-- Location: LCFF_X2_Y17_N19
\CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~clkctrl_outclk\,
	datain => \CLK_COUNT_400HZ[19]~58_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_400HZ(19));

-- Location: LCCOMB_X2_Y17_N28
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!CLK_COUNT_400HZ(16) & (!CLK_COUNT_400HZ(17) & (!CLK_COUNT_400HZ(18) & !CLK_COUNT_400HZ(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(16),
	datab => CLK_COUNT_400HZ(17),
	datac => CLK_COUNT_400HZ(18),
	datad => CLK_COUNT_400HZ(19),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X1_Y17_N0
\CLK_400HZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_400HZ~0_combout\ = \CLK_400HZ~regout\ $ ((((!\LessThan0~2_combout\ & !\LessThan0~6_combout\)) # (!\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~7_combout\,
	datac => \CLK_400HZ~regout\,
	datad => \LessThan0~6_combout\,
	combout => \CLK_400HZ~0_combout\);

-- Location: LCFF_X1_Y17_N1
CLK_400HZ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50MHZ~combout\,
	datain => \CLK_400HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_400HZ~regout\);

-- Location: CLKCTRL_G2
\CLK_400HZ~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_400HZ~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y35_N4
\CLK_COUNT_10HZ[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[0]~8_combout\ = CLK_COUNT_10HZ(0) $ (VCC)
-- \CLK_COUNT_10HZ[0]~9\ = CARRY(CLK_COUNT_10HZ(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_10HZ(0),
	datad => VCC,
	combout => \CLK_COUNT_10HZ[0]~8_combout\,
	cout => \CLK_COUNT_10HZ[0]~9\);

-- Location: LCCOMB_X64_Y35_N10
\CLK_COUNT_10HZ[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[3]~14_combout\ = (CLK_COUNT_10HZ(3) & (!\CLK_COUNT_10HZ[2]~13\)) # (!CLK_COUNT_10HZ(3) & ((\CLK_COUNT_10HZ[2]~13\) # (GND)))
-- \CLK_COUNT_10HZ[3]~15\ = CARRY((!\CLK_COUNT_10HZ[2]~13\) # (!CLK_COUNT_10HZ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(3),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[2]~13\,
	combout => \CLK_COUNT_10HZ[3]~14_combout\,
	cout => \CLK_COUNT_10HZ[3]~15\);

-- Location: LCCOMB_X64_Y35_N14
\CLK_COUNT_10HZ[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[5]~18_combout\ = (CLK_COUNT_10HZ(5) & (!\CLK_COUNT_10HZ[4]~17\)) # (!CLK_COUNT_10HZ(5) & ((\CLK_COUNT_10HZ[4]~17\) # (GND)))
-- \CLK_COUNT_10HZ[5]~19\ = CARRY((!\CLK_COUNT_10HZ[4]~17\) # (!CLK_COUNT_10HZ(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(5),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[4]~17\,
	combout => \CLK_COUNT_10HZ[5]~18_combout\,
	cout => \CLK_COUNT_10HZ[5]~19\);

-- Location: LCFF_X64_Y35_N15
\CLK_COUNT_10HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[5]~18_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(5));

-- Location: LCCOMB_X64_Y35_N16
\CLK_COUNT_10HZ[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[6]~20_combout\ = (CLK_COUNT_10HZ(6) & (\CLK_COUNT_10HZ[5]~19\ $ (GND))) # (!CLK_COUNT_10HZ(6) & (!\CLK_COUNT_10HZ[5]~19\ & VCC))
-- \CLK_COUNT_10HZ[6]~21\ = CARRY((CLK_COUNT_10HZ(6) & !\CLK_COUNT_10HZ[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_10HZ(6),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[5]~19\,
	combout => \CLK_COUNT_10HZ[6]~20_combout\,
	cout => \CLK_COUNT_10HZ[6]~21\);

-- Location: LCFF_X64_Y35_N17
\CLK_COUNT_10HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[6]~20_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(6));

-- Location: LCCOMB_X64_Y35_N18
\CLK_COUNT_10HZ[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[7]~22_combout\ = CLK_COUNT_10HZ(7) $ (\CLK_COUNT_10HZ[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(7),
	cin => \CLK_COUNT_10HZ[6]~21\,
	combout => \CLK_COUNT_10HZ[7]~22_combout\);

-- Location: LCFF_X64_Y35_N19
\CLK_COUNT_10HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[7]~22_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(7));

-- Location: LCCOMB_X64_Y35_N28
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!CLK_COUNT_10HZ(5) & (!CLK_COUNT_10HZ(6) & !CLK_COUNT_10HZ(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_10HZ(5),
	datac => CLK_COUNT_10HZ(6),
	datad => CLK_COUNT_10HZ(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X64_Y35_N22
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((CLK_COUNT_10HZ(4) & !\LessThan1~0_combout\)) # (!\LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(4),
	datab => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCFF_X64_Y35_N5
\CLK_COUNT_10HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[0]~8_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(0));

-- Location: LCCOMB_X64_Y35_N8
\CLK_COUNT_10HZ[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_COUNT_10HZ[2]~12_combout\ = (CLK_COUNT_10HZ(2) & (\CLK_COUNT_10HZ[1]~11\ $ (GND))) # (!CLK_COUNT_10HZ(2) & (!\CLK_COUNT_10HZ[1]~11\ & VCC))
-- \CLK_COUNT_10HZ[2]~13\ = CARRY((CLK_COUNT_10HZ(2) & !\CLK_COUNT_10HZ[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_10HZ(2),
	datad => VCC,
	cin => \CLK_COUNT_10HZ[1]~11\,
	combout => \CLK_COUNT_10HZ[2]~12_combout\,
	cout => \CLK_COUNT_10HZ[2]~13\);

-- Location: LCFF_X64_Y35_N9
\CLK_COUNT_10HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[2]~12_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(2));

-- Location: LCFF_X64_Y35_N11
\CLK_COUNT_10HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_COUNT_10HZ[3]~14_combout\,
	sclr => \LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CLK_COUNT_10HZ(3));

-- Location: LCCOMB_X64_Y35_N26
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!CLK_COUNT_10HZ(3) & (!CLK_COUNT_10HZ(2) & ((!CLK_COUNT_10HZ(0)) # (!CLK_COUNT_10HZ(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(1),
	datab => CLK_COUNT_10HZ(3),
	datac => CLK_COUNT_10HZ(2),
	datad => CLK_COUNT_10HZ(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X64_Y35_N24
\CLK_10HZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK_10HZ~0_combout\ = \CLK_10HZ~regout\ $ ((((CLK_COUNT_10HZ(4) & !\LessThan1~0_combout\)) # (!\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_10HZ(4),
	datab => \LessThan1~0_combout\,
	datac => \CLK_10HZ~regout\,
	datad => \LessThan1~1_combout\,
	combout => \CLK_10HZ~0_combout\);

-- Location: LCFF_X64_Y35_N25
CLK_10HZ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	datain => \CLK_10HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK_10HZ~regout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLK_OUT~I\ : cycloneii_io
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
	datain => \CLK_10HZ~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK_OUT);
END structure;


