-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Apr  7 14:32:23 2021
-- Host        : mads-pc5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/adammac8/Desktop/v2017_proc/ece449_processor/2017ver/ece449_processor/ece449_processor.sim/sim_1/synth/func/xsim/processor_TB_func_synth.vhd
-- Design      : processor
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    result_320_0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    in1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    alu_mode : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_EXMEM_reg[result][11]\ : out STD_LOGIC;
    result_320_1 : out STD_LOGIC;
    result_320_2 : out STD_LOGIC;
    result_320_3 : out STD_LOGIC;
    result_320_4 : out STD_LOGIC;
    result_320_5 : out STD_LOGIC;
    result_320_6 : out STD_LOGIC;
    result_320_7 : out STD_LOGIC;
    \PC_reg[1]_P\ : out STD_LOGIC;
    result_320_8 : out STD_LOGIC;
    result_320_9 : out STD_LOGIC;
    result_320_10 : out STD_LOGIC;
    \reg_EXMEM_reg[str_dest][15]\ : out STD_LOGIC;
    \reg_EXMEM[z_flag]\ : out STD_LOGIC;
    \reg_EXMEM[n_flag]\ : out STD_LOGIC;
    \PC_reg[1]_P_0\ : out STD_LOGIC;
    \reg_EXMEM_reg[str_dest][15]_0\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_e_IBUF : in STD_LOGIC;
    \reg_EXMEM_reg[instr][3]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_0\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_1\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_2\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][4]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_3\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_4\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_5\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][5]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_0\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][8]\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][3]_0\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][8]_0\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][7]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_6\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_7\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][3]_1\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_1\ : in STD_LOGIC;
    \reg_IDEX_reg[op_code][1]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_8\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][8]_1\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][8]_2\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_2\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_3\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][8]_3\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_4\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_9\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_5\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_10\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_6\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_11\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_7\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][0]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_12\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_13\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][1]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_14\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_8\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_9\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_15\ : in STD_LOGIC;
    \reg_EXMEM_reg[instr][2]\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_16\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][0]_10\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_17\ : in STD_LOGIC;
    \reg_EXMEM_reg[result][1]_18\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_EXMEM_reg[instr][8]_4\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \reg_MEMWR_reg[result][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_IDEX_reg[data2][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_MEMWR_reg[op_code][6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_IDEX_reg[data1][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_MEMWR_reg[regwr]__0\ : in STD_LOGIC;
    \reg_IDEX_reg[rb_instr]__0\ : in STD_LOGIC;
    \reg_MEMWR_reg[instr][8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_IDEX_reg[op_code][6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_EXMEM_reg[regwr]__0\ : in STD_LOGIC;
    \reg_IDEX_reg[ra_instr]__0\ : in STD_LOGIC;
    \reg_EXMEM_reg[op_code][0]\ : in STD_LOGIC;
    \reg_IDEX_reg[op_code][2]\ : in STD_LOGIC;
    \reg_IDEX_reg[op_code][1]_0\ : in STD_LOGIC;
    \reg_IDEX_reg[rc_instr]__0\ : in STD_LOGIC;
    \reg_IDEX_reg[instr][8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \reg_EXMEM_reg[op_code][0]_0\ : in STD_LOGIC;
    \reg_EXMEM_reg[op_code][6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end ALU;

architecture STRUCTURE of ALU is
  signal \^pc_reg[1]_p\ : STD_LOGIC;
  signal \^pc_reg[1]_p_0\ : STD_LOGIC;
  signal \^alu_mode\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal n_flag : STD_LOGIC;
  signal n_flag_i_1_n_0 : STD_LOGIC;
  signal \p_2_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_2_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__1_n_3\ : STD_LOGIC;
  signal \p_2_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_1\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_2\ : STD_LOGIC;
  signal \p_2_out_carry__2_n_3\ : STD_LOGIC;
  signal p_2_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_2_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_2_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_2_out_carry_i_5_n_0 : STD_LOGIC;
  signal p_2_out_carry_n_0 : STD_LOGIC;
  signal p_2_out_carry_n_1 : STD_LOGIC;
  signal p_2_out_carry_n_2 : STD_LOGIC;
  signal p_2_out_carry_n_3 : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_7_n_0\ : STD_LOGIC;
  signal \^reg_exmem_reg[result][11]\ : STD_LOGIC;
  signal \^reg_exmem_reg[str_dest][15]\ : STD_LOGIC;
  signal \^reg_exmem_reg[str_dest][15]_0\ : STD_LOGIC;
  signal \^result_320_0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^result_320_1\ : STD_LOGIC;
  signal \^result_320_10\ : STD_LOGIC;
  signal \^result_320_2\ : STD_LOGIC;
  signal \^result_320_3\ : STD_LOGIC;
  signal \^result_320_4\ : STD_LOGIC;
  signal \^result_320_5\ : STD_LOGIC;
  signal \^result_320_6\ : STD_LOGIC;
  signal \^result_320_7\ : STD_LOGIC;
  signal \^result_320_8\ : STD_LOGIC;
  signal \^result_320_9\ : STD_LOGIC;
  signal result_320_i_34_n_0 : STD_LOGIC;
  signal result_320_i_36_n_0 : STD_LOGIC;
  signal result_320_i_37_n_0 : STD_LOGIC;
  signal result_320_i_38_n_0 : STD_LOGIC;
  signal result_320_i_39_n_0 : STD_LOGIC;
  signal result_320_i_40_n_0 : STD_LOGIC;
  signal result_320_i_41_n_0 : STD_LOGIC;
  signal result_320_i_42_n_0 : STD_LOGIC;
  signal result_320_i_43_n_0 : STD_LOGIC;
  signal result_320_i_44_n_0 : STD_LOGIC;
  signal result_320_i_45_n_0 : STD_LOGIC;
  signal result_320_i_46_n_0 : STD_LOGIC;
  signal result_320_i_47_n_0 : STD_LOGIC;
  signal result_320_i_48_n_0 : STD_LOGIC;
  signal result_320_i_53_n_0 : STD_LOGIC;
  signal result_320_i_54_n_0 : STD_LOGIC;
  signal result_320_i_55_n_0 : STD_LOGIC;
  signal result_320_i_56_n_0 : STD_LOGIC;
  signal result_320_i_57_n_0 : STD_LOGIC;
  signal result_320_i_58_n_0 : STD_LOGIC;
  signal result_320_i_59_n_0 : STD_LOGIC;
  signal result_320_i_60_n_0 : STD_LOGIC;
  signal result_320_i_61_n_0 : STD_LOGIC;
  signal result_320_i_62_n_0 : STD_LOGIC;
  signal result_320_i_63_n_0 : STD_LOGIC;
  signal result_320_i_64_n_0 : STD_LOGIC;
  signal result_320_i_65_n_0 : STD_LOGIC;
  signal result_320_i_66_n_0 : STD_LOGIC;
  signal result_320_i_67_n_0 : STD_LOGIC;
  signal result_320_i_68_n_0 : STD_LOGIC;
  signal result_320_i_69_n_0 : STD_LOGIC;
  signal result_320_i_71_n_0 : STD_LOGIC;
  signal result_320_i_72_n_0 : STD_LOGIC;
  signal result_320_i_73_n_0 : STD_LOGIC;
  signal result_320_i_74_n_0 : STD_LOGIC;
  signal result_320_i_78_n_0 : STD_LOGIC;
  signal result_320_i_80_n_0 : STD_LOGIC;
  signal result_320_i_81_n_0 : STD_LOGIC;
  signal result_320_i_82_n_0 : STD_LOGIC;
  signal result_320_i_83_n_0 : STD_LOGIC;
  signal result_320_i_84_n_0 : STD_LOGIC;
  signal result_320_i_85_n_0 : STD_LOGIC;
  signal result_320_i_86_n_0 : STD_LOGIC;
  signal result_320_i_87_n_0 : STD_LOGIC;
  signal result_320_i_88_n_0 : STD_LOGIC;
  signal result_320_i_89_n_0 : STD_LOGIC;
  signal result_320_i_90_n_0 : STD_LOGIC;
  signal result_320_i_91_n_0 : STD_LOGIC;
  signal result_320_i_92_n_0 : STD_LOGIC;
  signal result_320_i_93_n_0 : STD_LOGIC;
  signal result_320_n_100 : STD_LOGIC;
  signal result_320_n_101 : STD_LOGIC;
  signal result_320_n_102 : STD_LOGIC;
  signal result_320_n_103 : STD_LOGIC;
  signal result_320_n_104 : STD_LOGIC;
  signal result_320_n_105 : STD_LOGIC;
  signal result_320_n_74 : STD_LOGIC;
  signal result_320_n_75 : STD_LOGIC;
  signal result_320_n_76 : STD_LOGIC;
  signal result_320_n_77 : STD_LOGIC;
  signal result_320_n_78 : STD_LOGIC;
  signal result_320_n_79 : STD_LOGIC;
  signal result_320_n_80 : STD_LOGIC;
  signal result_320_n_81 : STD_LOGIC;
  signal result_320_n_82 : STD_LOGIC;
  signal result_320_n_83 : STD_LOGIC;
  signal result_320_n_84 : STD_LOGIC;
  signal result_320_n_85 : STD_LOGIC;
  signal result_320_n_86 : STD_LOGIC;
  signal result_320_n_87 : STD_LOGIC;
  signal result_320_n_88 : STD_LOGIC;
  signal result_320_n_89 : STD_LOGIC;
  signal result_320_n_90 : STD_LOGIC;
  signal result_320_n_91 : STD_LOGIC;
  signal result_320_n_92 : STD_LOGIC;
  signal result_320_n_93 : STD_LOGIC;
  signal result_320_n_94 : STD_LOGIC;
  signal result_320_n_95 : STD_LOGIC;
  signal result_320_n_96 : STD_LOGIC;
  signal result_320_n_97 : STD_LOGIC;
  signal result_320_n_98 : STD_LOGIC;
  signal result_320_n_99 : STD_LOGIC;
  signal z_flag : STD_LOGIC;
  signal z_flag_i_1_n_0 : STD_LOGIC;
  signal z_flag_i_2_n_0 : STD_LOGIC;
  signal z_flag_i_3_n_0 : STD_LOGIC;
  signal z_flag_i_4_n_0 : STD_LOGIC;
  signal z_flag_i_5_n_0 : STD_LOGIC;
  signal z_flag_i_6_n_0 : STD_LOGIC;
  signal \NLW_p_2_out_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_result_320_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_result_320_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_result_320_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_result_320_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_result_320_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_result_320_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of n_flag_i_1 : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_2_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p_2_out_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of p_2_out_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_EXMEM[n_flag]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][6]_i_1\ : label is "soft_lutpair21";
  attribute METHODOLOGY_DRC_VIOS of result_320 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of result_320_i_34 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of result_320_i_36 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of result_320_i_37 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of result_320_i_38 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of result_320_i_39 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of result_320_i_40 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of result_320_i_41 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of result_320_i_42 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of result_320_i_43 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of result_320_i_44 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of result_320_i_45 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of result_320_i_46 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of result_320_i_47 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of result_320_i_48 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of result_320_i_53 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of result_320_i_54 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of result_320_i_55 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of result_320_i_56 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of result_320_i_57 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of result_320_i_58 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of result_320_i_59 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of result_320_i_60 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of result_320_i_61 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of result_320_i_62 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of result_320_i_63 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of result_320_i_64 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of result_320_i_65 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of result_320_i_66 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of result_320_i_67 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of result_320_i_68 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of result_320_i_70 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of result_320_i_72 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of result_320_i_73 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of result_320_i_82 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of result_320_i_84 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of result_320_i_85 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of result_320_i_87 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of result_320_i_88 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of result_320_i_89 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of result_320_i_93 : label is "soft_lutpair3";
begin
  \PC_reg[1]_P\ <= \^pc_reg[1]_p\;
  \PC_reg[1]_P_0\ <= \^pc_reg[1]_p_0\;
  alu_mode(1 downto 0) <= \^alu_mode\(1 downto 0);
  in1(15 downto 0) <= \^in1\(15 downto 0);
  \reg_EXMEM_reg[result][11]\ <= \^reg_exmem_reg[result][11]\;
  \reg_EXMEM_reg[str_dest][15]\ <= \^reg_exmem_reg[str_dest][15]\;
  \reg_EXMEM_reg[str_dest][15]_0\ <= \^reg_exmem_reg[str_dest][15]_0\;
  result_320_0(13 downto 0) <= \^result_320_0\(13 downto 0);
  result_320_1 <= \^result_320_1\;
  result_320_10 <= \^result_320_10\;
  result_320_2 <= \^result_320_2\;
  result_320_3 <= \^result_320_3\;
  result_320_4 <= \^result_320_4\;
  result_320_5 <= \^result_320_5\;
  result_320_6 <= \^result_320_6\;
  result_320_7 <= \^result_320_7\;
  result_320_8 <= \^result_320_8\;
  result_320_9 <= \^result_320_9\;
n_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^in1\(15),
      I1 => z_flag_i_4_n_0,
      I2 => \reg_IDEX_reg[op_code][6]\(2),
      I3 => n_flag,
      O => n_flag_i_1_n_0
    );
n_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => n_flag_i_1_n_0,
      Q => n_flag
    );
p_2_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_2_out_carry_n_0,
      CO(2) => p_2_out_carry_n_1,
      CO(1) => p_2_out_carry_n_2,
      CO(0) => p_2_out_carry_n_3,
      CYINIT => \^in1\(0),
      DI(3 downto 1) => \^in1\(3 downto 1),
      DI(0) => \^alu_mode\(1),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => p_2_out_carry_i_2_n_0,
      S(2) => p_2_out_carry_i_3_n_0,
      S(1) => p_2_out_carry_i_4_n_0,
      S(0) => p_2_out_carry_i_5_n_0
    );
\p_2_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_2_out_carry_n_0,
      CO(3) => \p_2_out_carry__0_n_0\,
      CO(2) => \p_2_out_carry__0_n_1\,
      CO(1) => \p_2_out_carry__0_n_2\,
      CO(0) => \p_2_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^in1\(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \p_2_out_carry__0_i_1_n_0\,
      S(2) => \p_2_out_carry__0_i_2_n_0\,
      S(1) => \p_2_out_carry__0_i_3_n_0\,
      S(0) => \p_2_out_carry__0_i_4_n_0\
    );
\p_2_out_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(5),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(7),
      O => \p_2_out_carry__0_i_1_n_0\
    );
\p_2_out_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(4),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(6),
      O => \p_2_out_carry__0_i_2_n_0\
    );
\p_2_out_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(3),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(5),
      O => \p_2_out_carry__0_i_3_n_0\
    );
\p_2_out_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(2),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(4),
      O => \p_2_out_carry__0_i_4_n_0\
    );
\p_2_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_2_out_carry__0_n_0\,
      CO(3) => \p_2_out_carry__1_n_0\,
      CO(2) => \p_2_out_carry__1_n_1\,
      CO(1) => \p_2_out_carry__1_n_2\,
      CO(0) => \p_2_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^in1\(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \p_2_out_carry__1_i_1_n_0\,
      S(2) => \p_2_out_carry__1_i_2_n_0\,
      S(1) => \p_2_out_carry__1_i_3_n_0\,
      S(0) => \p_2_out_carry__1_i_4_n_0\
    );
\p_2_out_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(9),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(11),
      O => \p_2_out_carry__1_i_1_n_0\
    );
\p_2_out_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(8),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(10),
      O => \p_2_out_carry__1_i_2_n_0\
    );
\p_2_out_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(7),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(9),
      O => \p_2_out_carry__1_i_3_n_0\
    );
\p_2_out_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(6),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(8),
      O => \p_2_out_carry__1_i_4_n_0\
    );
\p_2_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_2_out_carry__1_n_0\,
      CO(3) => \NLW_p_2_out_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \p_2_out_carry__2_n_1\,
      CO(1) => \p_2_out_carry__2_n_2\,
      CO(0) => \p_2_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^in1\(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \p_2_out_carry__2_i_1_n_0\,
      S(2) => \p_2_out_carry__2_i_2_n_0\,
      S(1) => \p_2_out_carry__2_i_3_n_0\,
      S(0) => \p_2_out_carry__2_i_4_n_0\
    );
\p_2_out_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^in1\(15),
      I1 => \^result_320_0\(13),
      I2 => \^alu_mode\(0),
      O => \p_2_out_carry__2_i_1_n_0\
    );
\p_2_out_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(12),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(14),
      O => \p_2_out_carry__2_i_2_n_0\
    );
\p_2_out_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(11),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(13),
      O => \p_2_out_carry__2_i_3_n_0\
    );
\p_2_out_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(10),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(12),
      O => \p_2_out_carry__2_i_4_n_0\
    );
p_2_out_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(1),
      I1 => \reg_IDEX_reg[op_code][6]\(4),
      I2 => \reg_IDEX_reg[op_code][6]\(5),
      I3 => \reg_IDEX_reg[op_code][6]\(3),
      I4 => \reg_IDEX_reg[op_code][6]\(6),
      O => \^alu_mode\(1)
    );
p_2_out_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(1),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(3),
      O => p_2_out_carry_i_2_n_0
    );
p_2_out_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^result_320_0\(0),
      I1 => \^alu_mode\(0),
      I2 => \^in1\(2),
      O => p_2_out_carry_i_3_n_0
    );
p_2_out_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^result_320_4\,
      I1 => \^alu_mode\(0),
      I2 => \^in1\(1),
      O => p_2_out_carry_i_4_n_0
    );
p_2_out_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^alu_mode\(1),
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \^alu_mode\(0),
      O => p_2_out_carry_i_5_n_0
    );
p_2_out_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333333E"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(0),
      I1 => \reg_IDEX_reg[op_code][6]\(6),
      I2 => \reg_IDEX_reg[op_code][6]\(4),
      I3 => \reg_IDEX_reg[op_code][6]\(5),
      I4 => \reg_IDEX_reg[op_code][6]\(3),
      O => \^alu_mode\(0)
    );
\reg_EXMEM[n_flag]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => n_flag,
      I1 => \reg_EXMEM_reg[op_code][0]_0\,
      O => \reg_EXMEM[n_flag]\
    );
\reg_EXMEM[result][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEFEA"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][1]\,
      I1 => \reg_EXMEM_reg[result][1]_8\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][8]_1\,
      I4 => \reg_EXMEM_reg[instr][3]_1\,
      I5 => \reg_EXMEM[result][0]_i_4_n_0\,
      O => D(0)
    );
\reg_EXMEM[result][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_105,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(0),
      O => \reg_EXMEM[result][0]_i_4_n_0\
    );
\reg_EXMEM[result][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][2]\,
      I1 => \reg_EXMEM_reg[result][1]_16\,
      I2 => \reg_EXMEM_reg[result][0]_10\,
      I3 => \reg_EXMEM_reg[result][1]_17\,
      I4 => \reg_EXMEM_reg[result][1]_18\,
      I5 => \reg_EXMEM[result][10]_i_7_n_0\,
      O => D(10)
    );
\reg_EXMEM[result][10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_95,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(10),
      O => \reg_EXMEM[result][10]_i_7_n_0\
    );
\reg_EXMEM[result][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBABB"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][3]\,
      I1 => \reg_EXMEM_reg[result][1]\,
      I2 => \reg_EXMEM_reg[result][1]_0\,
      I3 => \^reg_exmem_reg[result][11]\,
      I4 => \reg_EXMEM_reg[result][1]_1\,
      I5 => \reg_EXMEM[result][11]_i_5_n_0\,
      O => D(11)
    );
\reg_EXMEM[result][11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_94,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(11),
      O => \reg_EXMEM[result][11]_i_5_n_0\
    );
\reg_EXMEM[result][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF54"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][1]_2\,
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \reg_EXMEM_reg[result][1]_0\,
      I3 => \reg_EXMEM_reg[instr][4]\,
      I4 => \reg_EXMEM_reg[result][1]_3\,
      I5 => \reg_EXMEM[result][12]_i_6_n_0\,
      O => D(12)
    );
\reg_EXMEM[result][12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_93,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(12),
      O => \reg_EXMEM[result][12]_i_6_n_0\
    );
\reg_EXMEM[result][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF45"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][1]_4\,
      I1 => \reg_EXMEM_reg[result][1]_5\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][5]\,
      I4 => \reg_EXMEM_reg[result][0]\,
      I5 => \reg_EXMEM[result][13]_i_5_n_0\,
      O => D(13)
    );
\reg_EXMEM[result][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_92,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(13),
      O => \reg_EXMEM[result][13]_i_5_n_0\
    );
\reg_EXMEM[result][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][0]_0\,
      I1 => \reg_EXMEM_reg[result][1]_5\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][8]\,
      I4 => \reg_EXMEM_reg[instr][3]_0\,
      I5 => \reg_EXMEM[result][14]_i_4_n_0\,
      O => D(14)
    );
\reg_EXMEM[result][14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_91,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(14),
      O => \reg_EXMEM[result][14]_i_4_n_0\
    );
\reg_EXMEM[result][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][8]\,
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \reg_EXMEM_reg[instr][8]_0\,
      I3 => \reg_EXMEM_reg[instr][3]_0\,
      I4 => \reg_EXMEM_reg[instr][7]\,
      I5 => \reg_EXMEM[result][15]_i_6_n_0\,
      O => D(15)
    );
\reg_EXMEM[result][15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_90,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(15),
      O => \reg_EXMEM[result][15]_i_6_n_0\
    );
\reg_EXMEM[result][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][0]_6\,
      I1 => \reg_EXMEM_reg[result][1]_11\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][8]_1\,
      I4 => \reg_EXMEM_reg[instr][3]_1\,
      I5 => \reg_EXMEM[result][1]_i_4_n_0\,
      O => D(1)
    );
\reg_EXMEM[result][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_104,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(1),
      O => \reg_EXMEM[result][1]_i_4_n_0\
    );
\reg_EXMEM[result][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][1]_6\,
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \reg_EXMEM_reg[result][1]_11\,
      I3 => \reg_EXMEM_reg[instr][3]_1\,
      I4 => \reg_EXMEM_reg[result][0]_7\,
      I5 => \reg_EXMEM[result][2]_i_4_n_0\,
      O => D(2)
    );
\reg_EXMEM[result][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_103,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(2),
      O => \reg_EXMEM[result][2]_i_4_n_0\
    );
\reg_EXMEM[result][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][1]_6\,
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \reg_EXMEM_reg[result][1]_7\,
      I3 => \reg_EXMEM_reg[instr][3]_1\,
      I4 => \reg_EXMEM_reg[result][0]_1\,
      I5 => \reg_EXMEM[result][3]_i_4_n_0\,
      O => D(3)
    );
\reg_EXMEM[result][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_102,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(3),
      O => \reg_EXMEM[result][3]_i_4_n_0\
    );
\reg_EXMEM[result][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][8]_2\,
      I1 => \^reg_exmem_reg[result][11]\,
      I2 => \reg_EXMEM_reg[result][1]_7\,
      I3 => \reg_EXMEM_reg[instr][3]_1\,
      I4 => \reg_EXMEM_reg[result][0]_2\,
      I5 => \reg_EXMEM[result][4]_i_4_n_0\,
      O => D(4)
    );
\reg_EXMEM[result][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_101,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(4),
      O => \reg_EXMEM[result][4]_i_4_n_0\
    );
\reg_EXMEM[result][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEFEA"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][0]_3\,
      I1 => \reg_EXMEM_reg[instr][8]_2\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][8]_3\,
      I4 => \reg_EXMEM_reg[instr][3]_1\,
      I5 => \reg_EXMEM[result][5]_i_4_n_0\,
      O => D(5)
    );
\reg_EXMEM[result][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_100,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(5),
      O => \reg_EXMEM[result][5]_i_4_n_0\
    );
\reg_EXMEM[result][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][0]_4\,
      I1 => \reg_EXMEM_reg[result][1]_9\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[instr][8]_3\,
      I4 => \reg_EXMEM_reg[instr][3]_1\,
      I5 => \reg_EXMEM[result][6]_i_4_n_0\,
      O => D(6)
    );
\reg_EXMEM[result][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_99,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(6),
      O => \reg_EXMEM[result][6]_i_4_n_0\
    );
\reg_EXMEM[result][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \reg_EXMEM_reg[result][0]_5\,
      I1 => \reg_EXMEM_reg[result][1]_10\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[result][1]_9\,
      I4 => \reg_EXMEM_reg[instr][3]_1\,
      I5 => \reg_EXMEM[result][7]_i_5_n_0\,
      O => D(7)
    );
\reg_EXMEM[result][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_98,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(7),
      O => \reg_EXMEM[result][7]_i_5_n_0\
    );
\reg_EXMEM[result][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEFFEF"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][0]\,
      I1 => \reg_EXMEM_reg[result][1]_12\,
      I2 => \^reg_exmem_reg[result][11]\,
      I3 => \reg_EXMEM_reg[result][1]_10\,
      I4 => \reg_EXMEM_reg[result][1]_13\,
      I5 => \reg_EXMEM[result][8]_i_6_n_0\,
      O => D(8)
    );
\reg_EXMEM[result][8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_97,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(8),
      O => \reg_EXMEM[result][8]_i_6_n_0\
    );
\reg_EXMEM[result][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][1]\,
      I1 => \reg_EXMEM_reg[result][1]_14\,
      I2 => \reg_EXMEM_reg[result][0]_8\,
      I3 => \reg_EXMEM_reg[result][0]_9\,
      I4 => \reg_EXMEM_reg[result][1]_15\,
      I5 => \reg_EXMEM[result][9]_i_7_n_0\,
      O => D(9)
    );
\reg_EXMEM[result][9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBAAAAABBBABBB"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][0]\,
      I1 => \reg_IDEX_reg[op_code][2]\,
      I2 => z_flag_i_4_n_0,
      I3 => result_320_n_96,
      I4 => \reg_IDEX_reg[op_code][1]_0\,
      I5 => data0(9),
      O => \reg_EXMEM[result][9]_i_7_n_0\
    );
\reg_EXMEM[str_dest][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \reg_EXMEM[str_dest][15]_i_7_n_0\,
      I1 => \reg_IDEX_reg[op_code][6]\(3),
      I2 => \reg_IDEX_reg[op_code][6]\(5),
      I3 => \reg_IDEX_reg[op_code][6]\(1),
      I4 => \reg_IDEX_reg[op_code][6]\(4),
      I5 => \reg_IDEX_reg[op_code][6]\(2),
      O => \^reg_exmem_reg[str_dest][15]\
    );
\reg_EXMEM[str_dest][15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(0),
      I1 => \reg_IDEX_reg[op_code][6]\(6),
      O => \reg_EXMEM[str_dest][15]_i_7_n_0\
    );
\reg_EXMEM[str_dest][15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(8),
      I1 => \reg_MEMWR_reg[instr][8]\(2),
      I2 => \reg_MEMWR_reg[instr][8]\(1),
      I3 => \reg_IDEX_reg[instr][8]\(7),
      I4 => \reg_MEMWR_reg[instr][8]\(0),
      I5 => \reg_IDEX_reg[instr][8]\(6),
      O => \^reg_exmem_reg[str_dest][15]_0\
    );
\reg_EXMEM[z_flag]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => z_flag,
      I1 => \reg_EXMEM_reg[op_code][0]_0\,
      O => \reg_EXMEM[z_flag]\
    );
\reg_IDEX[op_code][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][6]\(0),
      I1 => \^pc_reg[1]_p_0\,
      O => \^pc_reg[1]_p\
    );
result_320: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \^in1\(15),
      A(28) => \^in1\(15),
      A(27) => \^in1\(15),
      A(26) => \^in1\(15),
      A(25) => \^in1\(15),
      A(24) => \^in1\(15),
      A(23) => \^in1\(15),
      A(22) => \^in1\(15),
      A(21) => \^in1\(15),
      A(20) => \^in1\(15),
      A(19) => \^in1\(15),
      A(18) => \^in1\(15),
      A(17) => \^in1\(15),
      A(16) => \^in1\(15),
      A(15 downto 0) => \^in1\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_result_320_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \^result_320_0\(13),
      B(16) => \^result_320_0\(13),
      B(15 downto 2) => \^result_320_0\(13 downto 0),
      B(1 downto 0) => in2(1 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_result_320_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_result_320_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_result_320_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_result_320_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_result_320_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_result_320_P_UNCONNECTED(47 downto 32),
      P(31) => result_320_n_74,
      P(30) => result_320_n_75,
      P(29) => result_320_n_76,
      P(28) => result_320_n_77,
      P(27) => result_320_n_78,
      P(26) => result_320_n_79,
      P(25) => result_320_n_80,
      P(24) => result_320_n_81,
      P(23) => result_320_n_82,
      P(22) => result_320_n_83,
      P(21) => result_320_n_84,
      P(20) => result_320_n_85,
      P(19) => result_320_n_86,
      P(18) => result_320_n_87,
      P(17) => result_320_n_88,
      P(16) => result_320_n_89,
      P(15) => result_320_n_90,
      P(14) => result_320_n_91,
      P(13) => result_320_n_92,
      P(12) => result_320_n_93,
      P(11) => result_320_n_94,
      P(10) => result_320_n_95,
      P(9) => result_320_n_96,
      P(8) => result_320_n_97,
      P(7) => result_320_n_98,
      P(6) => result_320_n_99,
      P(5) => result_320_n_100,
      P(4) => result_320_n_101,
      P(3) => result_320_n_102,
      P(2) => result_320_n_103,
      P(1) => result_320_n_104,
      P(0) => result_320_n_105,
      PATTERNBDETECT => NLW_result_320_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_result_320_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_result_320_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_result_320_UNDERFLOW_UNCONNECTED
    );
result_320_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_34_n_0,
      I2 => \^result_320_2\,
      I3 => \reg_EXMEM_reg[instr][8]_4\(7),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => Q(15),
      O => \^result_320_0\(13)
    );
result_320_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0B8BBB888"
    )
        port map (
      I0 => result_320_i_44_n_0,
      I1 => \^result_320_2\,
      I2 => Q(6),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => \reg_EXMEM_reg[instr][8]_4\(6),
      I5 => \^result_320_1\,
      O => \^result_320_0\(4)
    );
result_320_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBB800008B88"
    )
        port map (
      I0 => result_320_i_45_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(5),
      I4 => \^result_320_1\,
      I5 => Q(5),
      O => \^result_320_0\(3)
    );
result_320_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF45EF40EA40"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_46_n_0,
      I2 => \^result_320_2\,
      I3 => Q(4),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => \reg_EXMEM_reg[instr][8]_4\(4),
      O => \^result_320_0\(2)
    );
result_320_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF45EF40EA40"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_47_n_0,
      I2 => \^result_320_2\,
      I3 => Q(3),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => \reg_EXMEM_reg[instr][8]_4\(3),
      O => \^result_320_0\(1)
    );
result_320_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF777400004744"
    )
        port map (
      I0 => result_320_i_48_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(2),
      I4 => \^result_320_1\,
      I5 => Q(2),
      O => \^result_320_0\(0)
    );
result_320_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^result_320_4\,
      O => in2(1)
    );
result_320_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_exmem_reg[result][11]\,
      O => in2(0)
    );
result_320_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(7),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(15),
      I4 => \^result_320_6\,
      I5 => result_320_i_53_n_0,
      O => \^in1\(15)
    );
result_320_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(6),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(14),
      I4 => \^result_320_6\,
      I5 => result_320_i_54_n_0,
      O => \^in1\(14)
    );
result_320_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(5),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(13),
      I4 => \^result_320_6\,
      I5 => result_320_i_55_n_0,
      O => \^in1\(13)
    );
result_320_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_36_n_0,
      I2 => \^result_320_2\,
      I3 => \reg_EXMEM_reg[instr][8]_4\(6),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => Q(14),
      O => \^result_320_0\(12)
    );
result_320_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(4),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(12),
      I4 => \^result_320_6\,
      I5 => result_320_i_56_n_0,
      O => \^in1\(12)
    );
result_320_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(3),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(11),
      I4 => \^result_320_6\,
      I5 => result_320_i_57_n_0,
      O => \^in1\(11)
    );
result_320_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(2),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(10),
      I4 => \^result_320_6\,
      I5 => result_320_i_58_n_0,
      O => \^in1\(10)
    );
result_320_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(1),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(9),
      I4 => \^result_320_6\,
      I5 => result_320_i_59_n_0,
      O => \^in1\(9)
    );
result_320_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FF55EF40AA00"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => \reg_EXMEM_reg[instr][8]_4\(0),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => Q(8),
      I4 => \^result_320_6\,
      I5 => result_320_i_60_n_0,
      O => \^in1\(8)
    );
result_320_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(7),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(7),
      I4 => \^result_320_6\,
      I5 => result_320_i_61_n_0,
      O => \^in1\(7)
    );
result_320_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(6),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(6),
      I4 => \^result_320_6\,
      I5 => result_320_i_62_n_0,
      O => \^in1\(6)
    );
result_320_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(5),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(5),
      I4 => \^result_320_6\,
      I5 => result_320_i_63_n_0,
      O => \^in1\(5)
    );
result_320_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(4),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(4),
      I4 => \^result_320_6\,
      I5 => result_320_i_64_n_0,
      O => \^in1\(4)
    );
result_320_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(3),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(3),
      I4 => \^result_320_6\,
      I5 => result_320_i_65_n_0,
      O => \^in1\(3)
    );
result_320_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8BB0000B888"
    )
        port map (
      I0 => result_320_i_37_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(5),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => \^result_320_1\,
      I5 => Q(13),
      O => \^result_320_0\(11)
    );
result_320_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(2),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(2),
      I4 => \^result_320_6\,
      I5 => result_320_i_66_n_0,
      O => \^in1\(2)
    );
result_320_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(1),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(1),
      I4 => \^result_320_6\,
      I5 => result_320_i_67_n_0,
      O => \^in1\(1)
    );
result_320_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^result_320_5\,
      I1 => Q(0),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(0),
      I4 => \^result_320_6\,
      I5 => result_320_i_68_n_0,
      O => \^in1\(0)
    );
result_320_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg_EXMEM_reg[regwr]__0\,
      I1 => result_320_i_69_n_0,
      I2 => \reg_IDEX_reg[rc_instr]__0\,
      O => \^result_320_1\
    );
result_320_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(15),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(15),
      O => result_320_i_34_n_0
    );
result_320_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \reg_IDEX_reg[rc_instr]__0\,
      I1 => \reg_IDEX_reg[instr][8]\(2),
      I2 => \reg_IDEX_reg[instr][8]\(0),
      I3 => \reg_IDEX_reg[instr][8]\(1),
      I4 => result_320_i_71_n_0,
      I5 => \reg_EXMEM_reg[op_code][6]\(3),
      O => \^result_320_2\
    );
result_320_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(14),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(14),
      O => result_320_i_36_n_0
    );
result_320_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(13),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(13),
      O => result_320_i_37_n_0
    );
result_320_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(12),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(12),
      O => result_320_i_38_n_0
    );
result_320_i_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(11),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(11),
      O => result_320_i_39_n_0
    );
result_320_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8BB0000B888"
    )
        port map (
      I0 => result_320_i_38_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(4),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => \^result_320_1\,
      I5 => Q(12),
      O => \^result_320_0\(10)
    );
result_320_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(10),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(10),
      O => result_320_i_40_n_0
    );
result_320_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(9),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(9),
      O => result_320_i_41_n_0
    );
result_320_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(8),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(8),
      O => result_320_i_42_n_0
    );
result_320_i_43: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(7),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(7),
      O => result_320_i_43_n_0
    );
result_320_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(6),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(6),
      O => result_320_i_44_n_0
    );
result_320_i_45: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][15]\(5),
      I1 => \^result_320_3\,
      I2 => \reg_MEMWR_reg[result][15]\(5),
      O => result_320_i_45_n_0
    );
result_320_i_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(4),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(4),
      O => result_320_i_46_n_0
    );
result_320_i_47: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(3),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(3),
      O => result_320_i_47_n_0
    );
result_320_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(2),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(2),
      O => result_320_i_48_n_0
    );
result_320_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40EF40EA40EF45EF"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_72_n_0,
      I2 => \^result_320_2\,
      I3 => Q(1),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => \reg_EXMEM_reg[instr][8]_4\(1),
      O => \^result_320_4\
    );
result_320_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8BB0000B888"
    )
        port map (
      I0 => result_320_i_39_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(3),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => \^result_320_1\,
      I5 => Q(11),
      O => \^result_320_0\(9)
    );
result_320_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40EF40EA40EF45EF"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_73_n_0,
      I2 => \^result_320_2\,
      I3 => Q(0),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => \reg_EXMEM_reg[instr][8]_4\(0),
      O => \^reg_exmem_reg[result][11]\
    );
result_320_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AAAAAA20AA20"
    )
        port map (
      I0 => \reg_EXMEM_reg[regwr]__0\,
      I1 => result_320_i_74_n_0,
      I2 => \reg_IDEX_reg[rb_instr]__0\,
      I3 => \^result_320_9\,
      I4 => \^result_320_10\,
      I5 => \reg_IDEX_reg[ra_instr]__0\,
      O => \^result_320_5\
    );
result_320_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^result_320_8\,
      I1 => result_320_i_78_n_0,
      O => \^result_320_6\
    );
result_320_i_53: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(15),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(15),
      O => result_320_i_53_n_0
    );
result_320_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(14),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(14),
      O => result_320_i_54_n_0
    );
result_320_i_55: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(13),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(13),
      O => result_320_i_55_n_0
    );
result_320_i_56: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(12),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(12),
      O => result_320_i_56_n_0
    );
result_320_i_57: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(11),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(11),
      O => result_320_i_57_n_0
    );
result_320_i_58: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(10),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(10),
      O => result_320_i_58_n_0
    );
result_320_i_59: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(9),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(9),
      O => result_320_i_59_n_0
    );
result_320_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEF45404040"
    )
        port map (
      I0 => \^result_320_1\,
      I1 => result_320_i_40_n_0,
      I2 => \^result_320_2\,
      I3 => \reg_EXMEM_reg[instr][8]_4\(2),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => Q(10),
      O => \^result_320_0\(8)
    );
result_320_i_60: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(8),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(8),
      O => result_320_i_60_n_0
    );
result_320_i_61: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(7),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(7),
      O => result_320_i_61_n_0
    );
result_320_i_62: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(6),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(6),
      O => result_320_i_62_n_0
    );
result_320_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(5),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(5),
      O => result_320_i_63_n_0
    );
result_320_i_64: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(4),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(4),
      O => result_320_i_64_n_0
    );
result_320_i_65: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(3),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(3),
      O => result_320_i_65_n_0
    );
result_320_i_66: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(2),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(2),
      O => result_320_i_66_n_0
    );
result_320_i_67: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(1),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(1),
      O => result_320_i_67_n_0
    );
result_320_i_68: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(0),
      I1 => \^result_320_7\,
      I2 => \reg_IDEX_reg[data1][15]\(0),
      O => result_320_i_68_n_0
    );
result_320_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(0),
      I1 => \reg_EXMEM_reg[instr][8]_4\(6),
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_IDEX_reg[instr][8]\(2),
      I4 => \reg_EXMEM_reg[instr][8]_4\(7),
      I5 => \reg_IDEX_reg[instr][8]\(1),
      O => result_320_i_69_n_0
    );
result_320_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B8BBB888"
    )
        port map (
      I0 => result_320_i_41_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(1),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => Q(9),
      I5 => \^result_320_1\,
      O => \^result_320_0\(7)
    );
result_320_i_70: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0101"
    )
        port map (
      I0 => result_320_i_80_n_0,
      I1 => \reg_MEMWR_reg[op_code][6]\(0),
      I2 => result_320_i_81_n_0,
      I3 => result_320_i_82_n_0,
      I4 => result_320_i_83_n_0,
      O => \^result_320_3\
    );
result_320_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][6]\(5),
      I1 => \reg_EXMEM_reg[op_code][6]\(6),
      I2 => \reg_EXMEM_reg[op_code][6]\(4),
      I3 => \reg_EXMEM_reg[op_code][6]\(1),
      I4 => \reg_EXMEM_reg[op_code][6]\(2),
      I5 => \reg_EXMEM_reg[op_code][6]\(0),
      O => result_320_i_71_n_0
    );
result_320_i_72: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(1),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(1),
      O => result_320_i_72_n_0
    );
result_320_i_73: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \reg_MEMWR_reg[result][15]\(0),
      I1 => \^result_320_3\,
      I2 => \reg_IDEX_reg[data2][15]\(0),
      O => result_320_i_73_n_0
    );
result_320_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(3),
      I1 => \reg_EXMEM_reg[instr][8]_4\(6),
      I2 => \reg_EXMEM_reg[instr][8]_4\(7),
      I3 => \reg_IDEX_reg[instr][8]\(4),
      I4 => \reg_EXMEM_reg[instr][8]_4\(8),
      I5 => \reg_IDEX_reg[instr][8]\(5),
      O => result_320_i_74_n_0
    );
result_320_i_75: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr][8]_4\(6),
      I1 => \reg_EXMEM_reg[instr][8]_4\(8),
      I2 => \reg_EXMEM_reg[instr][8]_4\(7),
      I3 => \^reg_exmem_reg[str_dest][15]\,
      O => \^result_320_9\
    );
result_320_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(8),
      I1 => \reg_EXMEM_reg[instr][8]_4\(8),
      I2 => \reg_EXMEM_reg[instr][8]_4\(7),
      I3 => \reg_IDEX_reg[instr][8]\(7),
      I4 => \reg_EXMEM_reg[instr][8]_4\(6),
      I5 => \reg_IDEX_reg[instr][8]\(6),
      O => \^result_320_10\
    );
result_320_i_77: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][6]\(3),
      I1 => result_320_i_84_n_0,
      I2 => \reg_EXMEM_reg[op_code][6]\(4),
      I3 => \reg_EXMEM_reg[op_code][6]\(6),
      I4 => \reg_EXMEM_reg[op_code][6]\(5),
      O => \^result_320_8\
    );
result_320_i_78: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFBF"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(2),
      I1 => \reg_IDEX_reg[op_code][6]\(4),
      I2 => \reg_IDEX_reg[op_code][6]\(1),
      I3 => result_320_i_85_n_0,
      I4 => result_320_i_86_n_0,
      I5 => result_320_i_87_n_0,
      O => result_320_i_78_n_0
    );
result_320_i_79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F4444FF4FFF4F"
    )
        port map (
      I0 => result_320_i_78_n_0,
      I1 => result_320_i_88_n_0,
      I2 => result_320_i_89_n_0,
      I3 => result_320_i_90_n_0,
      I4 => \reg_MEMWR_reg[regwr]__0\,
      I5 => \^pc_reg[1]_p\,
      O => \^result_320_7\
    );
result_320_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8BB0000B888"
    )
        port map (
      I0 => result_320_i_42_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(0),
      I3 => \reg_EXMEM_reg[instr][8]_4\(8),
      I4 => \^result_320_1\,
      I5 => Q(8),
      O => \^result_320_0\(6)
    );
result_320_i_80: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(1),
      I1 => \reg_IDEX_reg[instr][8]\(0),
      I2 => \reg_IDEX_reg[instr][8]\(2),
      I3 => \reg_IDEX_reg[rc_instr]__0\,
      O => result_320_i_80_n_0
    );
result_320_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code][6]\(2),
      I1 => \reg_MEMWR_reg[op_code][6]\(4),
      I2 => \reg_MEMWR_reg[op_code][6]\(6),
      I3 => \reg_MEMWR_reg[op_code][6]\(3),
      I4 => \reg_MEMWR_reg[op_code][6]\(5),
      I5 => \reg_MEMWR_reg[op_code][6]\(1),
      O => result_320_i_81_n_0
    );
result_320_i_82: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(2),
      I1 => \reg_MEMWR_reg[instr][8]\(2),
      I2 => \reg_IDEX_reg[instr][8]\(1),
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      O => result_320_i_82_n_0
    );
result_320_i_83: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \reg_IDEX_reg[rc_instr]__0\,
      I1 => \reg_MEMWR_reg[regwr]__0\,
      I2 => \reg_IDEX_reg[instr][8]\(0),
      I3 => \reg_MEMWR_reg[instr][8]\(0),
      O => result_320_i_83_n_0
    );
result_320_i_84: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][6]\(0),
      I1 => \reg_EXMEM_reg[op_code][6]\(2),
      I2 => \reg_EXMEM_reg[op_code][6]\(1),
      O => result_320_i_84_n_0
    );
result_320_i_85: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(5),
      I1 => \reg_IDEX_reg[op_code][6]\(3),
      I2 => \reg_IDEX_reg[op_code][6]\(6),
      I3 => \reg_IDEX_reg[op_code][6]\(0),
      O => result_320_i_85_n_0
    );
result_320_i_86: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_IDEX_reg[rb_instr]__0\,
      I1 => \reg_IDEX_reg[instr][8]\(3),
      I2 => \reg_IDEX_reg[instr][8]\(5),
      I3 => \reg_IDEX_reg[instr][8]\(4),
      O => result_320_i_86_n_0
    );
result_320_i_87: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_IDEX_reg[instr][8]\(8),
      I1 => \reg_IDEX_reg[instr][8]\(7),
      I2 => \reg_IDEX_reg[ra_instr]__0\,
      I3 => \reg_IDEX_reg[instr][8]\(6),
      O => result_320_i_87_n_0
    );
result_320_i_88: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code][6]\(0),
      I1 => result_320_i_81_n_0,
      O => result_320_i_88_n_0
    );
result_320_i_89: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^reg_exmem_reg[str_dest][15]_0\,
      I1 => \reg_IDEX_reg[ra_instr]__0\,
      O => result_320_i_89_n_0
    );
result_320_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBB800008B88"
    )
        port map (
      I0 => result_320_i_43_n_0,
      I1 => \^result_320_2\,
      I2 => \reg_EXMEM_reg[instr][8]_4\(8),
      I3 => \reg_EXMEM_reg[instr][8]_4\(7),
      I4 => \^result_320_1\,
      I5 => Q(7),
      O => \^result_320_0\(5)
    );
result_320_i_90: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => result_320_i_91_n_0,
      I1 => \reg_IDEX_reg[rb_instr]__0\,
      I2 => result_320_i_85_n_0,
      I3 => result_320_i_92_n_0,
      I4 => result_320_i_93_n_0,
      O => result_320_i_90_n_0
    );
result_320_i_91: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \reg_MEMWR_reg[instr][8]\(1),
      I1 => \reg_IDEX_reg[instr][8]\(4),
      I2 => \reg_MEMWR_reg[instr][8]\(2),
      I3 => \reg_IDEX_reg[instr][8]\(5),
      I4 => \reg_IDEX_reg[instr][8]\(3),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => result_320_i_91_n_0
    );
result_320_i_92: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(2),
      I1 => \reg_IDEX_reg[op_code][6]\(4),
      I2 => \reg_IDEX_reg[op_code][6]\(1),
      O => result_320_i_92_n_0
    );
result_320_i_93: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg_MEMWR_reg[instr][8]\(2),
      I1 => \reg_MEMWR_reg[instr][8]\(1),
      I2 => \reg_MEMWR_reg[instr][8]\(0),
      O => result_320_i_93_n_0
    );
xpm_memory_dpdistram_inst_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code][6]\(5),
      I1 => \reg_EXMEM_reg[op_code][6]\(6),
      I2 => \reg_EXMEM_reg[op_code][6]\(4),
      I3 => \reg_EXMEM_reg[op_code][6]\(2),
      I4 => \reg_EXMEM_reg[op_code][6]\(1),
      I5 => \reg_EXMEM_reg[op_code][6]\(3),
      O => \^pc_reg[1]_p_0\
    );
z_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2000"
    )
        port map (
      I0 => z_flag_i_2_n_0,
      I1 => z_flag_i_3_n_0,
      I2 => z_flag_i_4_n_0,
      I3 => \reg_IDEX_reg[op_code][6]\(2),
      I4 => z_flag,
      O => z_flag_i_1_n_0
    );
z_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^in1\(1),
      I1 => \^in1\(12),
      I2 => \^in1\(4),
      I3 => \^in1\(6),
      I4 => z_flag_i_5_n_0,
      O => z_flag_i_2_n_0
    );
z_flag_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^in1\(7),
      I1 => \^in1\(10),
      I2 => \^in1\(9),
      I3 => \^in1\(13),
      I4 => z_flag_i_6_n_0,
      O => z_flag_i_3_n_0
    );
z_flag_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code][6]\(0),
      I1 => \reg_IDEX_reg[op_code][6]\(6),
      I2 => \reg_IDEX_reg[op_code][6]\(3),
      I3 => \reg_IDEX_reg[op_code][6]\(5),
      I4 => \reg_IDEX_reg[op_code][6]\(4),
      I5 => \reg_IDEX_reg[op_code][6]\(1),
      O => z_flag_i_4_n_0
    );
z_flag_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^in1\(14),
      I1 => \^in1\(15),
      I2 => \^in1\(11),
      I3 => \^in1\(5),
      O => z_flag_i_5_n_0
    );
z_flag_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^in1\(8),
      I1 => \^in1\(0),
      I2 => \^in1\(3),
      I3 => \^in1\(2),
      O => z_flag_i_6_n_0
    );
z_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => z_flag_i_1_n_0,
      Q => z_flag
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity REGISTER_FILE is
  port (
    \reg_file_reg[4][15]_0\ : out STD_LOGIC;
    \reg_file_reg[4][15]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_IDEX_reg[data2][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_IDEX_reg[str_dest][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_IFID_reg[instr][11]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]_1\ : in STD_LOGIC;
    \reg_IFID_reg[instr][10]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \reg_IFID_reg[instr][0]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][3]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][15]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][4]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][11]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][10]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]_2\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]_3\ : in STD_LOGIC;
    \reg_IFID_reg[PC][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_IFID_reg[instr][9]_4\ : in STD_LOGIC;
    \reg_IFID_reg[instr][11]_1\ : in STD_LOGIC;
    \reg_IFID_reg[inport][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \reg_IFID_reg[instr][5]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][7]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][3]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][5]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][4]_0\ : in STD_LOGIC;
    \reg_IFID_reg[instr][3]_1\ : in STD_LOGIC;
    \reg_EXMEM_reg[n_flag]\ : in STD_LOGIC;
    \reg_IFID_reg[instr][9]_5\ : in STD_LOGIC;
    \reg_IFID_reg[instr][15]_0\ : in STD_LOGIC;
    \reg_MEMWR_reg[instr][8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_IFID_reg[instr][11]_2\ : in STD_LOGIC;
    rst_e_IBUF : in STD_LOGIC;
    \reg_MEMWR_reg[result][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end REGISTER_FILE;

architecture STRUCTURE of REGISTER_FILE is
  signal \reg_IDEX[data1][0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][10]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][10]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][11]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][11]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][12]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][12]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][13]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][13]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][14]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][14]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_12_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_13_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][2]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][2]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][6]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][6]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][7]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][7]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][8]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][9]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][9]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][1]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_7_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_8_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][13]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][13]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][15]_i_9_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1][9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data2][0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data2][1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data2][3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data2][4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data2][5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest][9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_file[0][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_file[0][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_file[0][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_file[0][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_file[0][15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_file[0]_3\ : STD_LOGIC;
  signal \reg_file[1]_2\ : STD_LOGIC;
  signal \reg_file[2]_4\ : STD_LOGIC;
  signal \reg_file[3]_6\ : STD_LOGIC;
  signal \reg_file[4]_0\ : STD_LOGIC;
  signal \reg_file[5]_1\ : STD_LOGIC;
  signal \reg_file[6]_5\ : STD_LOGIC;
  signal \reg_file[7]_7\ : STD_LOGIC;
  signal \^reg_file_reg[4][15]_0\ : STD_LOGIC;
  signal \^reg_file_reg[4][15]_1\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \reg_file_reg_n_0_[7][9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \outport_OBUF[15]_inst_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][0]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][15]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][3]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][5]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_file[0][15]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_file[0][15]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_file[0][15]_i_7\ : label is "soft_lutpair32";
begin
  \reg_file_reg[4][15]_0\ <= \^reg_file_reg[4][15]_0\;
  \reg_file_reg[4][15]_1\ <= \^reg_file_reg[4][15]_1\;
\outport_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(2),
      O => \^reg_file_reg[4][15]_1\
    );
\reg_IDEX[data1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][0]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][0]_i_2_n_0\,
      I4 => \reg_IDEX[data1][0]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(0)
    );
\reg_IDEX[data1][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][0]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(0),
      O => \reg_IDEX[data1][0]_i_2_n_0\
    );
\reg_IDEX[data1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][0]_i_3_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][0]_i_2_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(0),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][0]_i_3_n_0\
    );
\reg_IDEX[data1][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][10]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][10]_i_2_n_0\,
      I4 => \reg_IDEX[data1][10]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(10)
    );
\reg_IDEX[data1][10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][10]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(10),
      O => \reg_IDEX[data1][10]_i_2_n_0\
    );
\reg_IDEX[data1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][10]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][10]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(10),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][10]_i_3_n_0\
    );
\reg_IDEX[data1][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][10]\,
      I1 => \reg_file_reg_n_0_[1][10]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][10]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][10]\,
      O => \reg_IDEX[data1][10]_i_5_n_0\
    );
\reg_IDEX[data1][10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][10]\,
      I1 => \reg_file_reg_n_0_[5][10]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][10]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][10]\,
      O => \reg_IDEX[data1][10]_i_6_n_0\
    );
\reg_IDEX[data1][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][11]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][11]_i_2_n_0\,
      I4 => \reg_IDEX[data1][11]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(11)
    );
\reg_IDEX[data1][11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][11]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(11),
      O => \reg_IDEX[data1][11]_i_2_n_0\
    );
\reg_IDEX[data1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][11]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][11]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(11),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][11]_i_3_n_0\
    );
\reg_IDEX[data1][11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][11]\,
      I1 => \reg_file_reg_n_0_[1][11]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][11]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][11]\,
      O => \reg_IDEX[data1][11]_i_5_n_0\
    );
\reg_IDEX[data1][11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][11]\,
      I1 => \reg_file_reg_n_0_[5][11]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][11]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][11]\,
      O => \reg_IDEX[data1][11]_i_6_n_0\
    );
\reg_IDEX[data1][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][12]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][12]_i_2_n_0\,
      I4 => \reg_IDEX[data1][12]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(12)
    );
\reg_IDEX[data1][12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][12]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(12),
      O => \reg_IDEX[data1][12]_i_2_n_0\
    );
\reg_IDEX[data1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][12]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][12]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(12),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][12]_i_3_n_0\
    );
\reg_IDEX[data1][12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][12]\,
      I1 => \reg_file_reg_n_0_[1][12]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][12]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][12]\,
      O => \reg_IDEX[data1][12]_i_5_n_0\
    );
\reg_IDEX[data1][12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][12]\,
      I1 => \reg_file_reg_n_0_[5][12]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][12]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][12]\,
      O => \reg_IDEX[data1][12]_i_6_n_0\
    );
\reg_IDEX[data1][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][13]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][13]_i_2_n_0\,
      I4 => \reg_IDEX[data1][13]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(13)
    );
\reg_IDEX[data1][13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][13]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(13),
      O => \reg_IDEX[data1][13]_i_2_n_0\
    );
\reg_IDEX[data1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][13]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][13]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(13),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][13]_i_3_n_0\
    );
\reg_IDEX[data1][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \reg_file_reg_n_0_[2][13]\,
      I1 => \reg_file_reg_n_0_[3][13]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[0][13]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[1][13]\,
      O => \reg_IDEX[data1][13]_i_5_n_0\
    );
\reg_IDEX[data1][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \reg_file_reg_n_0_[6][13]\,
      I1 => \reg_file_reg_n_0_[7][13]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[4][13]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[5][13]\,
      O => \reg_IDEX[data1][13]_i_6_n_0\
    );
\reg_IDEX[data1][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][14]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][14]_i_2_n_0\,
      I4 => \reg_IDEX[data1][14]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(14)
    );
\reg_IDEX[data1][14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][14]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(14),
      O => \reg_IDEX[data1][14]_i_2_n_0\
    );
\reg_IDEX[data1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][14]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][14]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(14),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][14]_i_3_n_0\
    );
\reg_IDEX[data1][14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][14]\,
      I1 => \reg_file_reg_n_0_[1][14]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][14]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][14]\,
      O => \reg_IDEX[data1][14]_i_5_n_0\
    );
\reg_IDEX[data1][14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][14]\,
      I1 => \reg_file_reg_n_0_[5][14]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][14]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][14]\,
      O => \reg_IDEX[data1][14]_i_6_n_0\
    );
\reg_IDEX[data1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][15]_i_3_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][15]_i_4_n_0\,
      I4 => \reg_IDEX[data1][15]_i_5_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(15)
    );
\reg_IDEX[data1][15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][15]\,
      I1 => \reg_file_reg_n_0_[1][15]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][15]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][15]\,
      O => \reg_IDEX[data1][15]_i_12_n_0\
    );
\reg_IDEX[data1][15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][15]\,
      I1 => \reg_file_reg_n_0_[5][15]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][15]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][15]\,
      O => \reg_IDEX[data1][15]_i_13_n_0\
    );
\reg_IDEX[data1][15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][15]_i_3_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(15),
      O => \reg_IDEX[data1][15]_i_4_n_0\
    );
\reg_IDEX[data1][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][15]_i_9_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][15]_i_3_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(15),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][15]_i_5_n_0\
    );
\reg_IDEX[data1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][1]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][1]_i_2_n_0\,
      I4 => \reg_IDEX[data1][1]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(1)
    );
\reg_IDEX[data1][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][1]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(1),
      O => \reg_IDEX[data1][1]_i_2_n_0\
    );
\reg_IDEX[data1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][1]_i_2_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][1]_i_2_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(1),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][1]_i_3_n_0\
    );
\reg_IDEX[data1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][2]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][2]_i_2_n_0\,
      I4 => \reg_IDEX[data1][2]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(2)
    );
\reg_IDEX[data1][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][2]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(2),
      O => \reg_IDEX[data1][2]_i_2_n_0\
    );
\reg_IDEX[data1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][2]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][2]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(2),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][2]_i_3_n_0\
    );
\reg_IDEX[data1][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][2]\,
      I1 => \reg_file_reg_n_0_[1][2]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][2]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][2]\,
      O => \reg_IDEX[data1][2]_i_5_n_0\
    );
\reg_IDEX[data1][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][2]\,
      I1 => \reg_file_reg_n_0_[5][2]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][2]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][2]\,
      O => \reg_IDEX[data1][2]_i_6_n_0\
    );
\reg_IDEX[data1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][3]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][3]_i_2_n_0\,
      I4 => \reg_IDEX[data1][3]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(3)
    );
\reg_IDEX[data1][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][3]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(3),
      O => \reg_IDEX[data1][3]_i_2_n_0\
    );
\reg_IDEX[data1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][3]_i_2_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][3]_i_2_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(3),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][3]_i_3_n_0\
    );
\reg_IDEX[data1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][4]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][4]_i_2_n_0\,
      I4 => \reg_IDEX[data1][4]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(4)
    );
\reg_IDEX[data1][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][4]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(4),
      O => \reg_IDEX[data1][4]_i_2_n_0\
    );
\reg_IDEX[data1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][4]_i_2_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][4]_i_2_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(4),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][4]_i_3_n_0\
    );
\reg_IDEX[data1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX[str_dest][5]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][5]_i_2_n_0\,
      I4 => \reg_IDEX[data1][5]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(5)
    );
\reg_IDEX[data1][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX[str_dest][5]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(5),
      O => \reg_IDEX[data1][5]_i_2_n_0\
    );
\reg_IDEX[data1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \reg_IDEX_reg[data2][5]_i_3_n_0\,
      I1 => \reg_IFID_reg[instr][9]_3\,
      I2 => \reg_IDEX[str_dest][5]_i_2_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(5),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][5]_i_3_n_0\
    );
\reg_IDEX[data1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][6]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][6]_i_2_n_0\,
      I4 => \reg_IDEX[data1][6]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(6)
    );
\reg_IDEX[data1][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][6]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(6),
      O => \reg_IDEX[data1][6]_i_2_n_0\
    );
\reg_IDEX[data1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][6]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][6]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(6),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][6]_i_3_n_0\
    );
\reg_IDEX[data1][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][6]\,
      I1 => \reg_file_reg_n_0_[1][6]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][6]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][6]\,
      O => \reg_IDEX[data1][6]_i_5_n_0\
    );
\reg_IDEX[data1][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][6]\,
      I1 => \reg_file_reg_n_0_[5][6]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][6]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][6]\,
      O => \reg_IDEX[data1][6]_i_6_n_0\
    );
\reg_IDEX[data1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][7]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][7]_i_2_n_0\,
      I4 => \reg_IDEX[data1][7]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(7)
    );
\reg_IDEX[data1][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][7]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(7),
      O => \reg_IDEX[data1][7]_i_2_n_0\
    );
\reg_IDEX[data1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][7]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][7]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(7),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][7]_i_3_n_0\
    );
\reg_IDEX[data1][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \reg_file_reg_n_0_[2][7]\,
      I1 => \reg_file_reg_n_0_[3][7]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[0][7]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[1][7]\,
      O => \reg_IDEX[data1][7]_i_5_n_0\
    );
\reg_IDEX[data1][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \reg_file_reg_n_0_[6][7]\,
      I1 => \reg_file_reg_n_0_[7][7]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[4][7]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[5][7]\,
      O => \reg_IDEX[data1][7]_i_6_n_0\
    );
\reg_IDEX[data1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][8]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][8]_i_2_n_0\,
      I4 => \reg_IDEX[data1][8]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(8)
    );
\reg_IDEX[data1][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][8]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(8),
      O => \reg_IDEX[data1][8]_i_2_n_0\
    );
\reg_IDEX[data1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][8]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][8]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(8),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][8]_i_3_n_0\
    );
\reg_IDEX[data1][8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][8]\,
      I1 => \reg_file_reg_n_0_[1][8]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][8]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][8]\,
      O => \reg_IDEX[data1][8]_i_5_n_0\
    );
\reg_IDEX[data1][8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][8]\,
      I1 => \reg_file_reg_n_0_[5][8]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][8]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][8]\,
      O => \reg_IDEX[data1][8]_i_6_n_0\
    );
\reg_IDEX[data1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8FFFFFF88888888"
    )
        port map (
      I0 => \reg_IFID_reg[instr][11]\,
      I1 => \reg_IDEX_reg[str_dest][9]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IDEX[data1][9]_i_2_n_0\,
      I4 => \reg_IDEX[data1][9]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => D(9)
    );
\reg_IDEX[data1][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_4\,
      I1 => \reg_IDEX_reg[str_dest][9]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][11]_1\,
      I3 => \reg_IFID_reg[inport][15]\(9),
      O => \reg_IDEX[data1][9]_i_2_n_0\
    );
\reg_IDEX[data1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00A3FFA3"
    )
        port map (
      I0 => \reg_IDEX_reg[data1][9]_i_4_n_0\,
      I1 => \reg_IDEX_reg[str_dest][9]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]_3\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[PC][15]\(9),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data1][9]_i_3_n_0\
    );
\reg_IDEX[data1][9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][9]\,
      I1 => \reg_file_reg_n_0_[1][9]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][9]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][9]\,
      O => \reg_IDEX[data1][9]_i_5_n_0\
    );
\reg_IDEX[data1][9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][9]\,
      I1 => \reg_file_reg_n_0_[5][9]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][9]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][9]\,
      O => \reg_IDEX[data1][9]_i_6_n_0\
    );
\reg_IDEX[data2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040554040"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(0),
      I3 => \reg_IFID_reg[instr][15]_0\,
      I4 => \reg_IDEX_reg[data2][0]_i_3_n_0\,
      I5 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(0)
    );
\reg_IDEX[data2][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][0]\,
      I1 => \reg_file_reg_n_0_[1][0]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][0]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][0]\,
      O => \reg_IDEX[data2][0]_i_4_n_0\
    );
\reg_IDEX[data2][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][0]\,
      I1 => \reg_file_reg_n_0_[5][0]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][0]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][0]\,
      O => \reg_IDEX[data2][0]_i_5_n_0\
    );
\reg_IDEX[data2][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][10]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(10)
    );
\reg_IDEX[data2][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][10]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][10]_i_2_n_0\
    );
\reg_IDEX[data2][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][11]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(11)
    );
\reg_IDEX[data2][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][11]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][11]_i_2_n_0\
    );
\reg_IDEX[data2][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][12]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(12)
    );
\reg_IDEX[data2][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][12]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][12]_i_2_n_0\
    );
\reg_IDEX[data2][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][13]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(13)
    );
\reg_IDEX[data2][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][13]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][13]_i_2_n_0\
    );
\reg_IDEX[data2][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][14]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(14)
    );
\reg_IDEX[data2][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][14]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][14]_i_2_n_0\
    );
\reg_IDEX[data2][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][15]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(15)
    );
\reg_IDEX[data2][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005D5D005D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][4]\,
      I1 => \reg_IDEX_reg[data1][15]_i_9_n_0\,
      I2 => \reg_IFID_reg[instr][11]_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[instr][10]\(7),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data2][15]_i_2_n_0\
    );
\reg_IDEX[data2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44444444444"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_1\,
      I1 => \reg_IDEX_reg[data2][1]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IFID_reg[instr][10]\(1),
      I4 => \reg_IFID_reg[instr][0]\,
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => \reg_IDEX_reg[data2][15]\(1)
    );
\reg_IDEX[data2][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][1]\,
      I1 => \reg_file_reg_n_0_[1][1]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][1]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][1]\,
      O => \reg_IDEX[data2][1]_i_4_n_0\
    );
\reg_IDEX[data2][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][1]\,
      I1 => \reg_file_reg_n_0_[5][1]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][1]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][1]\,
      O => \reg_IDEX[data2][1]_i_5_n_0\
    );
\reg_IDEX[data2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005111"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IDEX[data2][2]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IFID_reg[instr][10]\(2),
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(2)
    );
\reg_IDEX[data2][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBAB"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_2\,
      I1 => \reg_IFID_reg[instr][10]\(1),
      I2 => \reg_IFID_reg[instr][15]\,
      I3 => \reg_IDEX_reg[data1][2]_i_4_n_0\,
      I4 => \reg_IFID_reg[instr][9]_3\,
      O => \reg_IDEX[data2][2]_i_2_n_0\
    );
\reg_IDEX[data2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF4F4F44444444"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_1\,
      I1 => \reg_IDEX_reg[data2][3]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][3]\,
      I3 => \reg_IFID_reg[instr][15]\,
      I4 => \reg_IFID_reg[instr][10]\(2),
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => \reg_IDEX_reg[data2][15]\(3)
    );
\reg_IDEX[data2][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][3]\,
      I1 => \reg_file_reg_n_0_[1][3]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][3]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][3]\,
      O => \reg_IDEX[data2][3]_i_3_n_0\
    );
\reg_IDEX[data2][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][3]\,
      I1 => \reg_file_reg_n_0_[5][3]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][3]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][3]\,
      O => \reg_IDEX[data2][3]_i_4_n_0\
    );
\reg_IDEX[data2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FF444444444444"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_1\,
      I1 => \reg_IDEX_reg[data2][4]_i_2_n_0\,
      I2 => \reg_IFID_reg[instr][9]\,
      I3 => \reg_IFID_reg[instr][15]\,
      I4 => \reg_IFID_reg[instr][10]\(3),
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => \reg_IDEX_reg[data2][15]\(4)
    );
\reg_IDEX[data2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][4]\,
      I1 => \reg_file_reg_n_0_[1][4]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][4]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][4]\,
      O => \reg_IDEX[data2][4]_i_3_n_0\
    );
\reg_IDEX[data2][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][4]\,
      I1 => \reg_file_reg_n_0_[5][4]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][4]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][4]\,
      O => \reg_IDEX[data2][4]_i_4_n_0\
    );
\reg_IDEX[data2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF4F4F44444444"
    )
        port map (
      I0 => \reg_IFID_reg[instr][9]_1\,
      I1 => \reg_IDEX_reg[data2][5]_i_3_n_0\,
      I2 => \reg_IFID_reg[instr][3]\,
      I3 => \reg_IFID_reg[instr][15]\,
      I4 => \reg_IFID_reg[instr][10]\(4),
      I5 => \reg_IFID_reg[instr][9]_0\,
      O => \reg_IDEX_reg[data2][15]\(5)
    );
\reg_IDEX[data2][5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][5]\,
      I1 => \reg_file_reg_n_0_[1][5]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[2][5]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[3][5]\,
      O => \reg_IDEX[data2][5]_i_7_n_0\
    );
\reg_IDEX[data2][5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][5]\,
      I1 => \reg_file_reg_n_0_[5][5]\,
      I2 => \reg_IFID_reg[instr][4]_0\,
      I3 => \reg_file_reg_n_0_[6][5]\,
      I4 => \reg_IFID_reg[instr][3]_1\,
      I5 => \reg_file_reg_n_0_[7][5]\,
      O => \reg_IDEX[data2][5]_i_8_n_0\
    );
\reg_IDEX[data2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][6]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(6)
    );
\reg_IDEX[data2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057570057"
    )
        port map (
      I0 => \reg_IFID_reg[instr][4]\,
      I1 => \reg_IFID_reg[instr][11]_0\,
      I2 => \reg_IDEX_reg[data1][6]_i_4_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[instr][10]\(5),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data2][6]_i_2_n_0\
    );
\reg_IDEX[data2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][7]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(7)
    );
\reg_IDEX[data2][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057570057"
    )
        port map (
      I0 => \reg_IFID_reg[instr][4]\,
      I1 => \reg_IFID_reg[instr][11]_0\,
      I2 => \reg_IDEX_reg[data1][7]_i_4_n_0\,
      I3 => \reg_IFID_reg[instr][10]_0\,
      I4 => \reg_IFID_reg[instr][10]\(6),
      I5 => \reg_IFID_reg[instr][9]_2\,
      O => \reg_IDEX[data2][7]_i_2_n_0\
    );
\reg_IDEX[data2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][8]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(8)
    );
\reg_IDEX[data2][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][8]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][8]_i_2_n_0\
    );
\reg_IDEX[data2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]\,
      I1 => \reg_IFID_reg[instr][9]\,
      I2 => \reg_IFID_reg[instr][10]\(3),
      I3 => \reg_IDEX[data2][9]_i_2_n_0\,
      I4 => \reg_IFID_reg[instr][9]_5\,
      O => \reg_IDEX_reg[data2][15]\(9)
    );
\reg_IDEX[data2][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D0D0D"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]_0\,
      I1 => \reg_IFID_reg[instr][10]\(7),
      I2 => \reg_IFID_reg[instr][9]_2\,
      I3 => \reg_IFID_reg[instr][11]_0\,
      I4 => \reg_IDEX_reg[data1][9]_i_4_n_0\,
      I5 => \reg_IFID_reg[instr][4]\,
      O => \reg_IDEX[data2][9]_i_2_n_0\
    );
\reg_IDEX[str_dest][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][0]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(0)
    );
\reg_IDEX[str_dest][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][0]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][0]_i_4_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][0]_i_2_n_0\
    );
\reg_IDEX[str_dest][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][0]\,
      I1 => \reg_file_reg_n_0_[0][0]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][0]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][0]\,
      O => \reg_IDEX[str_dest][0]_i_3_n_0\
    );
\reg_IDEX[str_dest][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][0]\,
      I1 => \reg_file_reg_n_0_[4][0]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][0]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][0]\,
      O => \reg_IDEX[str_dest][0]_i_4_n_0\
    );
\reg_IDEX[str_dest][10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][10]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(10)
    );
\reg_IDEX[str_dest][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][10]\,
      I1 => \reg_file_reg_n_0_[5][10]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][10]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][10]\,
      O => \reg_IDEX[str_dest][10]_i_3_n_0\
    );
\reg_IDEX[str_dest][10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][10]\,
      I1 => \reg_file_reg_n_0_[1][10]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][10]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][10]\,
      O => \reg_IDEX[str_dest][10]_i_4_n_0\
    );
\reg_IDEX[str_dest][11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][11]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(11)
    );
\reg_IDEX[str_dest][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][11]\,
      I1 => \reg_file_reg_n_0_[5][11]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][11]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][11]\,
      O => \reg_IDEX[str_dest][11]_i_3_n_0\
    );
\reg_IDEX[str_dest][11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][11]\,
      I1 => \reg_file_reg_n_0_[1][11]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][11]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][11]\,
      O => \reg_IDEX[str_dest][11]_i_4_n_0\
    );
\reg_IDEX[str_dest][12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][12]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(12)
    );
\reg_IDEX[str_dest][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][12]\,
      I1 => \reg_file_reg_n_0_[5][12]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][12]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][12]\,
      O => \reg_IDEX[str_dest][12]_i_3_n_0\
    );
\reg_IDEX[str_dest][12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][12]\,
      I1 => \reg_file_reg_n_0_[1][12]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][12]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][12]\,
      O => \reg_IDEX[str_dest][12]_i_4_n_0\
    );
\reg_IDEX[str_dest][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][13]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(13)
    );
\reg_IDEX[str_dest][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][13]\,
      I1 => \reg_file_reg_n_0_[5][13]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][13]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][13]\,
      O => \reg_IDEX[str_dest][13]_i_3_n_0\
    );
\reg_IDEX[str_dest][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][13]\,
      I1 => \reg_file_reg_n_0_[1][13]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][13]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][13]\,
      O => \reg_IDEX[str_dest][13]_i_4_n_0\
    );
\reg_IDEX[str_dest][14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][14]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(14)
    );
\reg_IDEX[str_dest][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][14]\,
      I1 => \reg_file_reg_n_0_[5][14]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][14]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][14]\,
      O => \reg_IDEX[str_dest][14]_i_3_n_0\
    );
\reg_IDEX[str_dest][14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][14]\,
      I1 => \reg_file_reg_n_0_[1][14]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][14]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][14]\,
      O => \reg_IDEX[str_dest][14]_i_4_n_0\
    );
\reg_IDEX[str_dest][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][15]_i_3_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(15)
    );
\reg_IDEX[str_dest][15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][15]_i_4_n_0\,
      I1 => \reg_IDEX[str_dest][15]_i_5_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][15]_i_3_n_0\
    );
\reg_IDEX[str_dest][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][15]\,
      I1 => \reg_file_reg_n_0_[0][15]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][15]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][15]\,
      O => \reg_IDEX[str_dest][15]_i_4_n_0\
    );
\reg_IDEX[str_dest][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][15]\,
      I1 => \reg_file_reg_n_0_[4][15]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][15]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][15]\,
      O => \reg_IDEX[str_dest][15]_i_5_n_0\
    );
\reg_IDEX[str_dest][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][1]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(1)
    );
\reg_IDEX[str_dest][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][1]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][1]_i_4_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][1]_i_2_n_0\
    );
\reg_IDEX[str_dest][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][1]\,
      I1 => \reg_file_reg_n_0_[0][1]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][1]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][1]\,
      O => \reg_IDEX[str_dest][1]_i_3_n_0\
    );
\reg_IDEX[str_dest][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][1]\,
      I1 => \reg_file_reg_n_0_[4][1]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][1]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][1]\,
      O => \reg_IDEX[str_dest][1]_i_4_n_0\
    );
\reg_IDEX[str_dest][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][2]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(2)
    );
\reg_IDEX[str_dest][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][2]\,
      I1 => \reg_file_reg_n_0_[5][2]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][2]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][2]\,
      O => \reg_IDEX[str_dest][2]_i_3_n_0\
    );
\reg_IDEX[str_dest][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][2]\,
      I1 => \reg_file_reg_n_0_[1][2]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][2]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][2]\,
      O => \reg_IDEX[str_dest][2]_i_4_n_0\
    );
\reg_IDEX[str_dest][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][3]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(3)
    );
\reg_IDEX[str_dest][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][3]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][3]_i_4_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][3]_i_2_n_0\
    );
\reg_IDEX[str_dest][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][3]\,
      I1 => \reg_file_reg_n_0_[0][3]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][3]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][3]\,
      O => \reg_IDEX[str_dest][3]_i_3_n_0\
    );
\reg_IDEX[str_dest][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][3]\,
      I1 => \reg_file_reg_n_0_[4][3]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][3]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][3]\,
      O => \reg_IDEX[str_dest][3]_i_4_n_0\
    );
\reg_IDEX[str_dest][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][4]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(4)
    );
\reg_IDEX[str_dest][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][4]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][4]_i_4_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][4]_i_2_n_0\
    );
\reg_IDEX[str_dest][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][4]\,
      I1 => \reg_file_reg_n_0_[0][4]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][4]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][4]\,
      O => \reg_IDEX[str_dest][4]_i_3_n_0\
    );
\reg_IDEX[str_dest][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][4]\,
      I1 => \reg_file_reg_n_0_[4][4]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][4]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][4]\,
      O => \reg_IDEX[str_dest][4]_i_4_n_0\
    );
\reg_IDEX[str_dest][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX[str_dest][5]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(5)
    );
\reg_IDEX[str_dest][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \reg_IDEX[str_dest][5]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][5]_i_4_n_0\,
      I2 => \reg_IFID_reg[instr][5]\,
      O => \reg_IDEX[str_dest][5]_i_2_n_0\
    );
\reg_IDEX[str_dest][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[1][5]\,
      I1 => \reg_file_reg_n_0_[0][5]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][5]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][5]\,
      O => \reg_IDEX[str_dest][5]_i_3_n_0\
    );
\reg_IDEX[str_dest][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[5][5]\,
      I1 => \reg_file_reg_n_0_[4][5]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][5]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][5]\,
      O => \reg_IDEX[str_dest][5]_i_4_n_0\
    );
\reg_IDEX[str_dest][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][6]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(6)
    );
\reg_IDEX[str_dest][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][6]\,
      I1 => \reg_file_reg_n_0_[5][6]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][6]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][6]\,
      O => \reg_IDEX[str_dest][6]_i_3_n_0\
    );
\reg_IDEX[str_dest][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][6]\,
      I1 => \reg_file_reg_n_0_[1][6]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][6]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][6]\,
      O => \reg_IDEX[str_dest][6]_i_4_n_0\
    );
\reg_IDEX[str_dest][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][7]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(7)
    );
\reg_IDEX[str_dest][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][7]\,
      I1 => \reg_file_reg_n_0_[5][7]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][7]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][7]\,
      O => \reg_IDEX[str_dest][7]_i_3_n_0\
    );
\reg_IDEX[str_dest][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][7]\,
      I1 => \reg_file_reg_n_0_[1][7]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][7]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][7]\,
      O => \reg_IDEX[str_dest][7]_i_4_n_0\
    );
\reg_IDEX[str_dest][8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][8]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(8)
    );
\reg_IDEX[str_dest][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][8]\,
      I1 => \reg_file_reg_n_0_[5][8]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][8]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][8]\,
      O => \reg_IDEX[str_dest][8]_i_3_n_0\
    );
\reg_IDEX[str_dest][8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][8]\,
      I1 => \reg_file_reg_n_0_[1][8]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][8]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][8]\,
      O => \reg_IDEX[str_dest][8]_i_4_n_0\
    );
\reg_IDEX[str_dest][9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_IFID_reg[instr][10]\(8),
      I1 => \reg_IFID_reg[instr][11]_2\,
      I2 => \reg_IFID_reg[instr][10]\(9),
      I3 => \reg_IDEX_reg[str_dest][9]_i_2_n_0\,
      O => \reg_IDEX_reg[str_dest][15]\(9)
    );
\reg_IDEX[str_dest][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[4][9]\,
      I1 => \reg_file_reg_n_0_[5][9]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[6][9]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[7][9]\,
      O => \reg_IDEX[str_dest][9]_i_3_n_0\
    );
\reg_IDEX[str_dest][9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_file_reg_n_0_[0][9]\,
      I1 => \reg_file_reg_n_0_[1][9]\,
      I2 => \reg_IFID_reg[instr][7]\,
      I3 => \reg_file_reg_n_0_[2][9]\,
      I4 => \reg_IFID_reg[instr][3]_0\,
      I5 => \reg_file_reg_n_0_[3][9]\,
      O => \reg_IDEX[str_dest][9]_i_4_n_0\
    );
\reg_IDEX_reg[data1][10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][10]_i_5_n_0\,
      I1 => \reg_IDEX[data1][10]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][10]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][11]_i_5_n_0\,
      I1 => \reg_IDEX[data1][11]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][11]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][12]_i_5_n_0\,
      I1 => \reg_IDEX[data1][12]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][12]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][13]_i_5_n_0\,
      I1 => \reg_IDEX[data1][13]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][13]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][14]_i_5_n_0\,
      I1 => \reg_IDEX[data1][14]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][14]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][15]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][15]_i_12_n_0\,
      I1 => \reg_IDEX[data1][15]_i_13_n_0\,
      O => \reg_IDEX_reg[data1][15]_i_9_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][2]_i_5_n_0\,
      I1 => \reg_IDEX[data1][2]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][2]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][6]_i_5_n_0\,
      I1 => \reg_IDEX[data1][6]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][6]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][7]_i_5_n_0\,
      I1 => \reg_IDEX[data1][7]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][7]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][8]_i_5_n_0\,
      I1 => \reg_IDEX[data1][8]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][8]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data1][9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data1][9]_i_5_n_0\,
      I1 => \reg_IDEX[data1][9]_i_6_n_0\,
      O => \reg_IDEX_reg[data1][9]_i_4_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data2][0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data2][0]_i_4_n_0\,
      I1 => \reg_IDEX[data2][0]_i_5_n_0\,
      O => \reg_IDEX_reg[data2][0]_i_3_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data2][1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data2][1]_i_4_n_0\,
      I1 => \reg_IDEX[data2][1]_i_5_n_0\,
      O => \reg_IDEX_reg[data2][1]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data2][3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data2][3]_i_3_n_0\,
      I1 => \reg_IDEX[data2][3]_i_4_n_0\,
      O => \reg_IDEX_reg[data2][3]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data2][4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data2][4]_i_3_n_0\,
      I1 => \reg_IDEX[data2][4]_i_4_n_0\,
      O => \reg_IDEX_reg[data2][4]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[data2][5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[data2][5]_i_7_n_0\,
      I1 => \reg_IDEX[data2][5]_i_8_n_0\,
      O => \reg_IDEX_reg[data2][5]_i_3_n_0\,
      S => \reg_IFID_reg[instr][5]_0\
    );
\reg_IDEX_reg[str_dest][10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][10]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][10]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][10]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][11]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][11]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][11]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][12]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][12]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][12]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][13]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][13]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][13]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][14]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][14]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][14]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][2]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][2]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][2]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][6]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][6]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][6]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][7]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][7]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][7]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][8]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][8]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][8]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_IDEX_reg[str_dest][9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_IDEX[str_dest][9]_i_3_n_0\,
      I1 => \reg_IDEX[str_dest][9]_i_4_n_0\,
      O => \reg_IDEX_reg[str_dest][9]_i_2_n_0\,
      S => \reg_IFID_reg[instr][5]\
    );
\reg_file[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      I4 => \reg_MEMWR_reg[instr][8]\(2),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => \reg_file[0]_3\
    );
\reg_file[0][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBEEEEEEEE"
    )
        port map (
      I0 => \reg_file[0][15]_i_5_n_0\,
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(6),
      I4 => \^reg_file_reg[4][15]_1\,
      I5 => Q(0),
      O => \^reg_file_reg[4][15]_0\
    );
\reg_file[0][15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AA8"
    )
        port map (
      I0 => \reg_file[0][15]_i_6_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      O => \reg_file[0][15]_i_3_n_0\
    );
\reg_file[0][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400400000"
    )
        port map (
      I0 => \reg_file[0][15]_i_7_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(6),
      I5 => Q(4),
      O => \reg_file[0][15]_i_4_n_0\
    );
\reg_file[0][15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(6),
      I3 => Q(4),
      I4 => Q(2),
      O => \reg_file[0][15]_i_5_n_0\
    );
\reg_file[0][15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      O => \reg_file[0][15]_i_6_n_0\
    );
\reg_file[0][15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      O => \reg_file[0][15]_i_7_n_0\
    );
\reg_file[1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D00000000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      I4 => \reg_MEMWR_reg[instr][8]\(2),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => \reg_file[1]_2\
    );
\reg_file[2][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D00000000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(2),
      I4 => \reg_MEMWR_reg[instr][8]\(0),
      I5 => \reg_MEMWR_reg[instr][8]\(1),
      O => \reg_file[2]_4\
    );
\reg_file[3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D000000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(0),
      I4 => \reg_MEMWR_reg[instr][8]\(1),
      I5 => \reg_MEMWR_reg[instr][8]\(2),
      O => \reg_file[3]_6\
    );
\reg_file[4][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000D0000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      I4 => \reg_MEMWR_reg[instr][8]\(2),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => \reg_file[4]_0\
    );
\reg_file[5][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000000000000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      I4 => \reg_MEMWR_reg[instr][8]\(2),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => \reg_file[5]_1\
    );
\reg_file[6][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D0000000000"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(1),
      I4 => \reg_MEMWR_reg[instr][8]\(0),
      I5 => \reg_MEMWR_reg[instr][8]\(2),
      O => \reg_file[6]_5\
    );
\reg_file[7][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF0F0F0F0F0F0F0"
    )
        port map (
      I0 => \^reg_file_reg[4][15]_0\,
      I1 => \reg_file[0][15]_i_3_n_0\,
      I2 => \reg_file[0][15]_i_4_n_0\,
      I3 => \reg_MEMWR_reg[instr][8]\(2),
      I4 => \reg_MEMWR_reg[instr][8]\(1),
      I5 => \reg_MEMWR_reg[instr][8]\(0),
      O => \reg_file[7]_7\
    );
\reg_file_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[0][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[0][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[0][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[0][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[0][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[0][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[0][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[0][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[0][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[0][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[0][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[0][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[0][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[0][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[0][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[0]_3\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[0][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[1][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[1][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[1][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[1][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[1][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[1][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[1][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[1][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[1][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[1][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[1][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[1][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[1][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[1][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[1][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[1]_2\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[1][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[2][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[2][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[2][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[2][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[2][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[2][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[2][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[2][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[2][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[2][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[2][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[2][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[2][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[2][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[2][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[2]_4\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[2][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[3][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[3][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[3][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[3][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[3][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[3][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[3][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[3][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[3][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[3][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[3][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[3][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[3][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[3][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[3][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[3]_6\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[3][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[4][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[4][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[4][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[4][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[4][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[4][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[4][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[4][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[4][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[4][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[4][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[4][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[4][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[4][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[4][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[4]_0\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[4][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[5][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[5][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[5][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[5][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[5][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[5][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[5][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[5][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[5][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[5][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[5][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[5][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[5][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[5][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[5][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[5]_1\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[5][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[6][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[6][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[6][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[6][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[6][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[6][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[6][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[6][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[6][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[6][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[6][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[6][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[6][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[6][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[6][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[6]_5\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[6][9]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(0),
      Q => \reg_file_reg_n_0_[7][0]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(10),
      Q => \reg_file_reg_n_0_[7][10]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(11),
      Q => \reg_file_reg_n_0_[7][11]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(12),
      Q => \reg_file_reg_n_0_[7][12]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(13),
      Q => \reg_file_reg_n_0_[7][13]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(14),
      Q => \reg_file_reg_n_0_[7][14]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(15),
      Q => \reg_file_reg_n_0_[7][15]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(1),
      Q => \reg_file_reg_n_0_[7][1]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(2),
      Q => \reg_file_reg_n_0_[7][2]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(3),
      Q => \reg_file_reg_n_0_[7][3]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(4),
      Q => \reg_file_reg_n_0_[7][4]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(5),
      Q => \reg_file_reg_n_0_[7][5]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(6),
      Q => \reg_file_reg_n_0_[7][6]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(7),
      Q => \reg_file_reg_n_0_[7][7]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(8),
      Q => \reg_file_reg_n_0_[7][8]\,
      R => rst_e_IBUF
    );
\reg_file_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_file[7]_7\,
      D => \reg_MEMWR_reg[result][15]\(9),
      Q => \reg_file_reg_n_0_[7][9]\,
      R => rst_e_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base : entity is 16;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base : entity is 16;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base : entity is 16;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base : entity is 8192;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base : entity is 2;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base : entity is 0;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base : entity is 0;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base : entity is "0";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base : entity is "TRUE";
end xpm_memory_base;

architecture STRUCTURE of xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_1\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8\ : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9\ : label is "{SYNTH-5 {cell *THIS*}}";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\douta[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_1\,
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_1\,
      O => douta(10)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_1\,
      O => douta(11)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_1\,
      O => douta(12)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_1\,
      O => douta(13)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_1\,
      O => douta(14)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_1\,
      O => douta(15)
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_1\,
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_1\,
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_1\,
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_1\,
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_1\,
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_1\,
      O => douta(6)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_1\,
      O => douta(7)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_1\,
      O => douta(8)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_1\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_1\,
      I2 => addra(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_1\,
      I4 => addra(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_1\,
      O => douta(9)
    );
\doutb[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_0\,
      O => doutb(0)
    );
\doutb[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_0\,
      O => doutb(10)
    );
\doutb[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_0\,
      O => doutb(11)
    );
\doutb[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_0\,
      O => doutb(12)
    );
\doutb[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_0\,
      O => doutb(13)
    );
\doutb[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_0\,
      O => doutb(14)
    );
\doutb[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_0\,
      O => doutb(15)
    );
\doutb[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_0\,
      O => doutb(1)
    );
\doutb[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_0\,
      O => doutb(2)
    );
\doutb[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_0\,
      O => doutb(3)
    );
\doutb[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_0\,
      O => doutb(4)
    );
\doutb[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_0\,
      O => doutb(5)
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_0\,
      O => doutb(6)
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_0\,
      O => doutb(7)
    );
\doutb[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_0\,
      O => doutb(8)
    );
\doutb[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_0\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_0\,
      I2 => addrb(8),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_0\,
      I4 => addrb(7),
      I5 => \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_0\,
      O => doutb(9)
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(0),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      I2 => addra(7),
      I3 => addra(8),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(10),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_10_10_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(11),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_11_11_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(12),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_12_12_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(13),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_13_13_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(14),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_14_14_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(15),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_15_15_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(1),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_1_1_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(2),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_2_2_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(3),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_3_3_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(4),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_4_4_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(5),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_5_5_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(6),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_6_6_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(7),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_7_7_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(8),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_8_8_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(9),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_0_127_9_9_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_127_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(0),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(8),
      I1 => addra(7),
      I2 => wea(0),
      I3 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(10),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_10_10_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(11),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_11_11_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(12),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_12_12_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(13),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_13_13_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(14),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_14_14_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(15),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_15_15_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(1),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_1_1_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(2),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_2_2_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(3),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_3_3_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(4),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_4_4_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(5),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_5_5_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(6),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_6_6_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(7),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_7_7_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(8),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_8_8_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(9),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_128_255_9_9_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_128_255_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(0),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(7),
      I1 => addra(8),
      I2 => wea(0),
      I3 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(10),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_10_10_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(11),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_11_11_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(12),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_12_12_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(13),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_13_13_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(14),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_14_14_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(15),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_15_15_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(1),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_1_1_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(2),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_2_2_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(3),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_3_3_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(4),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_4_4_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(5),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_5_5_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(6),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_6_6_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(7),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_7_7_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(8),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_8_8_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(9),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_256_383_9_9_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_256_383_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(0),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      I2 => addra(7),
      I3 => addra(8),
      O => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(10),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_10_10_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(11),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_11_11_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(12),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_12_12_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(13),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_13_13_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(14),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_14_14_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(15),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_15_15_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(1),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_1_1_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(2),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_2_2_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(3),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_3_3_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(4),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_4_4_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(5),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_5_5_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(6),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_6_6_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(7),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_7_7_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(8),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_8_8_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9\: unisim.vcomponents.RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A(6 downto 0) => addra(6 downto 0),
      D => dina(9),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_0\,
      DPRA(6 downto 0) => addrb(6 downto 0),
      SPO => \gen_wr_a.gen_word_narrow.mem_reg_384_511_9_9_n_1\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_384_511_0_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DIST_ROM_1024_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 9;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 512;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is "DIST_ROM_1024.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is 16;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DIST_ROM_1024_dist_mem_gen_v8_0_12 : entity is "dist_mem_gen_v8_0_12";
end DIST_ROM_1024_dist_mem_gen_v8_0_12;

architecture STRUCTURE of DIST_ROM_1024_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b10_n_0 : STD_LOGIC;
  signal g1_b11_n_0 : STD_LOGIC;
  signal g1_b13_n_0 : STD_LOGIC;
  signal g1_b14_n_0 : STD_LOGIC;
  signal g1_b15_n_0 : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal g1_b7_n_0 : STD_LOGIC;
  signal g1_b8_n_0 : STD_LOGIC;
  signal g1_b9_n_0 : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal g2_b10_n_0 : STD_LOGIC;
  signal g2_b11_n_0 : STD_LOGIC;
  signal g2_b13_n_0 : STD_LOGIC;
  signal g2_b14_n_0 : STD_LOGIC;
  signal g2_b15_n_0 : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal g2_b4_n_0 : STD_LOGIC;
  signal g2_b5_n_0 : STD_LOGIC;
  signal g2_b6_n_0 : STD_LOGIC;
  signal g2_b7_n_0 : STD_LOGIC;
  signal g2_b8_n_0 : STD_LOGIC;
  signal g2_b9_n_0 : STD_LOGIC;
  signal g3_b0_n_0 : STD_LOGIC;
  signal g3_b10_n_0 : STD_LOGIC;
  signal g3_b11_n_0 : STD_LOGIC;
  signal g3_b13_n_0 : STD_LOGIC;
  signal g3_b14_n_0 : STD_LOGIC;
  signal g3_b15_n_0 : STD_LOGIC;
  signal g3_b1_n_0 : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal g3_b4_n_0 : STD_LOGIC;
  signal g3_b5_n_0 : STD_LOGIC;
  signal g3_b6_n_0 : STD_LOGIC;
  signal g3_b7_n_0 : STD_LOGIC;
  signal g3_b8_n_0 : STD_LOGIC;
  signal g3_b9_n_0 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(15 downto 13) <= \^spo\(15 downto 13);
  spo(12) <= \<const0>\;
  spo(11 downto 0) <= \^spo\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4490012804012806"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"379301A83405A002"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5E3C7EF8DFC6FE30"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0987004008004000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b11_n_0
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42307619C3CE1E70"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040800000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300809803001800F"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b15_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04990228E5022811"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0218410100880442"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"259B412104892440"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2218400121890C42"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2018091020090040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FDFE9792C896440"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22185B08610B0850"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0844C84008804400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g0_b9_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001004690000100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b0_n_0
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5801B035930401B0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b1_n_0
    );
g1_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5C2C05E3C77C2C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b10_n_0
    );
g1_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800700987000070"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b11_n_0
    );
g1_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05C20042307FC200"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b13_n_0
    );
g1_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02200C004080200C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b14_n_0
    );
g1_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001803008000180"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b15_n_0
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800100699004010"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b2_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C101000018490100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b3_n_0
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D0130279B490130"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b4_n_0
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4101002018490100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b5_n_0
    );
g1_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4021042218002104"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b6_n_0
    );
g1_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BA17C2DDFE9217C"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b7_n_0
    );
g1_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5610422185B6104"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b8_n_0
    );
g1_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2700480844C90048"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g1_b9_n_0
    );
g2_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800802410080401"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b0_n_0
    );
g2_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00D805901906C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b1_n_0
    );
g2_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CA1602E581F0B01"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b10_n_0
    );
g2_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1700381B880001C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b11_n_0
    );
g2_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A10020441F0801"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b13_n_0
    );
g2_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050060020008030"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b14_n_0
    );
g2_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800C00410000600"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b15_n_0
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100080090080040"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b2_n_0
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1820801C000C0400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b3_n_0
    );
g2_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B809805C01C04C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b4_n_0
    );
g2_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08008004141C0400"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b5_n_0
    );
g2_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1890821C541C8410"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b6_n_0
    );
g2_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F50BE07A41C85F0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b7_n_0
    );
g2_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"081082041C098410"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b8_n_0
    );
g2_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04E024126C040120"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g2_b9_n_0
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000744810058080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b0_n_0
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000260C402100D8"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b1_n_0
    );
g3_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003B199FFF0260"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b10_n_0
    );
g3_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008038038"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b11_n_0
    );
g3_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001BBBB7F80200"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b13_n_0
    );
g3_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002106"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b14_n_0
    );
g3_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004040000400C0"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b15_n_0
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000644910850008"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b2_n_0
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004A2AE49C080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b3_n_0
    );
g3_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000422A6440098"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b4_n_0
    );
g3_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000602332400080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b5_n_0
    );
g3_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004908C086082"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b6_n_0
    );
g3_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044988C4BA1BE"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b7_n_0
    );
g3_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000069099C902082"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b8_n_0
    );
g3_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004A6E64AC124"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => g3_b9_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b0_n_0,
      I3 => a(6),
      I4 => g3_b0_n_0,
      I5 => a(8),
      O => \^spo\(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => g1_b0_n_0,
      O => \spo[0]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[10]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b10_n_0,
      I3 => a(6),
      I4 => g3_b10_n_0,
      I5 => a(8),
      O => \^spo\(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => g1_b10_n_0,
      O => \spo[10]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b11_n_0,
      I3 => a(6),
      I4 => g3_b11_n_0,
      I5 => a(8),
      O => \^spo\(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b11_n_0,
      I1 => g1_b11_n_0,
      O => \spo[11]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b13_n_0,
      I3 => a(6),
      I4 => g3_b13_n_0,
      I5 => a(8),
      O => \^spo\(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b13_n_0,
      I1 => g1_b13_n_0,
      O => \spo[13]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b14_n_0,
      I3 => a(6),
      I4 => g3_b14_n_0,
      I5 => a(8),
      O => \^spo\(14)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b14_n_0,
      I1 => g1_b14_n_0,
      O => \spo[14]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[15]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b15_n_0,
      I3 => a(6),
      I4 => g3_b15_n_0,
      I5 => a(8),
      O => \^spo\(15)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b15_n_0,
      I1 => g1_b15_n_0,
      O => \spo[15]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b1_n_0,
      I3 => a(6),
      I4 => g3_b1_n_0,
      I5 => a(8),
      O => \^spo\(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => \spo[1]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b2_n_0,
      I3 => a(6),
      I4 => g3_b2_n_0,
      I5 => a(8),
      O => \^spo\(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \spo[2]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b3_n_0,
      I3 => a(6),
      I4 => g3_b3_n_0,
      I5 => a(8),
      O => \^spo\(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => g1_b3_n_0,
      O => \spo[3]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b4_n_0,
      I3 => a(6),
      I4 => g3_b4_n_0,
      I5 => a(8),
      O => \^spo\(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => g1_b4_n_0,
      O => \spo[4]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b5_n_0,
      I3 => a(6),
      I4 => g3_b5_n_0,
      I5 => a(8),
      O => \^spo\(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => g1_b5_n_0,
      O => \spo[5]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[6]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b6_n_0,
      I3 => a(6),
      I4 => g3_b6_n_0,
      I5 => a(8),
      O => \^spo\(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => g1_b6_n_0,
      O => \spo[6]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b7_n_0,
      I3 => a(6),
      I4 => g3_b7_n_0,
      I5 => a(8),
      O => \^spo\(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => g1_b7_n_0,
      O => \spo[7]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b8_n_0,
      I3 => a(6),
      I4 => g3_b8_n_0,
      I5 => a(8),
      O => \^spo\(8)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => g1_b8_n_0,
      O => \spo[8]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[9]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => g2_b9_n_0,
      I3 => a(6),
      I4 => g3_b9_n_0,
      I5 => a(8),
      O => \^spo\(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b9_n_0,
      I1 => g1_b9_n_0,
      O => \spo[9]_INST_0_i_1_n_0\,
      S => a(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DIST_ROM_1024 is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DIST_ROM_1024 : entity is "DIST_ROM_1024,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DIST_ROM_1024 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DIST_ROM_1024 : entity is "dist_mem_gen_v8_0_12,Vivado 2017.4";
end DIST_ROM_1024;

architecture STRUCTURE of DIST_ROM_1024 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 9;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 512;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "DIST_ROM_1024.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 16;
begin
U0: entity work.DIST_ROM_1024_dist_mem_gen_v8_0_12
     port map (
      a(8 downto 0) => a(8 downto 0),
      clk => '0',
      d(15 downto 0) => B"0000000000000000",
      dpo(15 downto 0) => NLW_U0_dpo_UNCONNECTED(15 downto 0),
      dpra(8 downto 0) => B"000000000",
      i_ce => '1',
      qdpo(15 downto 0) => NLW_U0_qdpo_UNCONNECTED(15 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(15 downto 0) => NLW_U0_qspo_UNCONNECTED(15 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(15 downto 0) => spo(15 downto 0),
      we => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xpm_memory_dpdistram is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_dpdistram : entity is 16;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_dpdistram : entity is 16;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_dpdistram : entity is 16;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of xpm_memory_dpdistram : entity is "common_clock";
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_dpdistram : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_dpdistram : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_dpdistram : entity is "true";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_dpdistram : entity is 8192;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_dpdistram : entity is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of xpm_memory_dpdistram : entity is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of xpm_memory_dpdistram : entity is 1;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_dpdistram : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_dpdistram : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_dpdistram : entity is 0;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_dpdistram : entity is 0;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_dpdistram : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_dpdistram : entity is "0";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_dpdistram : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_dpdistram : entity is 1;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_dpdistram : entity is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_dpdistram : entity is "TRUE";
end xpm_memory_dpdistram;

architecture STRUCTURE of xpm_memory_dpdistram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute CLOCKING_MODE_integer : integer;
  attribute CLOCKING_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "0";
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 1;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 8192;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 2;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 0;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 0;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
begin
xpm_memory_base_inst: entity work.xpm_memory_base
     port map (
      addra(15 downto 9) => B"0000000",
      addra(8 downto 0) => addra(8 downto 0),
      addrb(15 downto 9) => B"0000000",
      addrb(8 downto 0) => addrb(8 downto 0),
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor is
  port (
    clk : in STD_LOGIC;
    rst_l : in STD_LOGIC;
    rst_e : in STD_LOGIC;
    inport : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mm_input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outport : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mm_output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor : entity is true;
end processor;

architecture STRUCTURE of processor is
  signal PC : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \PC[15]_i_2_n_0\ : STD_LOGIC;
  signal \PC[3]_i_3_n_0\ : STD_LOGIC;
  signal \PC[3]_i_4_n_0\ : STD_LOGIC;
  signal \PC__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal PC_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \PC_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \PC_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \PC_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \PC_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \PC_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \PC_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \PC_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \PC_reg[1]_C_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \PC_reg[1]_P_n_0\ : STD_LOGIC;
  signal \PC_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \PC_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \PC_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \PC_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \PC_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \PC_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \PC_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \PC_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal alu0_n_48 : STD_LOGIC;
  signal alu0_n_49 : STD_LOGIC;
  signal alu0_n_50 : STD_LOGIC;
  signal alu0_n_51 : STD_LOGIC;
  signal alu0_n_52 : STD_LOGIC;
  signal alu0_n_53 : STD_LOGIC;
  signal alu0_n_54 : STD_LOGIC;
  signal alu0_n_55 : STD_LOGIC;
  signal alu0_n_56 : STD_LOGIC;
  signal alu0_n_57 : STD_LOGIC;
  signal alu0_n_58 : STD_LOGIC;
  signal alu0_n_59 : STD_LOGIC;
  signal alu0_n_60 : STD_LOGIC;
  signal alu0_n_63 : STD_LOGIC;
  signal alu0_n_64 : STD_LOGIC;
  signal alu_mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dina : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in2 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal inport_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal instr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mm_input_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mm_output0 : STD_LOGIC;
  signal \mm_output[15]_i_10_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_11_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_2_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_3_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_4_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_5_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_6_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_7_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_8_n_0\ : STD_LOGIC;
  signal \mm_output[15]_i_9_n_0\ : STD_LOGIC;
  signal mm_output_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal outport_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ra_instr : STD_LOGIC;
  signal rb_instr : STD_LOGIC;
  signal rc_instr : STD_LOGIC;
  signal \reg_EXMEM[instr][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[instr][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[n_flag]\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[op_code][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[regwr]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][0]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][10]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_10_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_11_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_12_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_13_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_14_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_15_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_16_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][11]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][12]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][13]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][14]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_10_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_11_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_12_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_13_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_14_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_15_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_16_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_17_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_18_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_19_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_20_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_21_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_22_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_23_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_24_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_25_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_26_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_27_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_28_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_29_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_30_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_31_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_32_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_33_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_34_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_35_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_36_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_37_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_38_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][15]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][1]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][2]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][3]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][4]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][5]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][6]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_10_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_11_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_12_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_13_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_14_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_15_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_16_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_17_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_18_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_19_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_20_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][7]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_10_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_11_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_12_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_13_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_14_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_15_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_16_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_17_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_18_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_19_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_7_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][8]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[result][9]_i_9_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[str_dest][9]_i_1_n_0\ : STD_LOGIC;
  signal \reg_EXMEM[z_flag]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][0]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][1]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][2]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][3]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][4]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[instr_n_0_][5]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[n_flag]__0\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][0]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][1]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][2]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][3]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][4]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][5]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[op_code_n_0_][6]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[regwr]__0\ : STD_LOGIC;
  signal \reg_EXMEM_reg[result]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_EXMEM_reg[str_dest_n_0_][0]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][10]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][11]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][12]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][13]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][14]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][15]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][1]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][2]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][3]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][4]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][5]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][6]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][7]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][8]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[str_dest_n_0_][9]\ : STD_LOGIC;
  signal \reg_EXMEM_reg[z_flag]__0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_10_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_11_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data1][15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_10_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[data2][5]_i_9_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[instr][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[op_code][6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[ra_instr]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[ra_instr]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[rb_instr]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[regwr]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[regwr]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IDEX[regwr]_i_4_n_0\ : STD_LOGIC;
  signal \reg_IDEX[regwr]_i_5_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_10_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_IDEX[str_dest][15]_i_9_n_0\ : STD_LOGIC;
  signal \reg_IDEX_reg[data1]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_IDEX_reg[data2]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_IDEX_reg[instr_n_0_][0]\ : STD_LOGIC;
  signal \reg_IDEX_reg[instr_n_0_][1]\ : STD_LOGIC;
  signal \reg_IDEX_reg[instr_n_0_][2]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][0]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][1]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][2]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][3]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][4]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][5]\ : STD_LOGIC;
  signal \reg_IDEX_reg[op_code_n_0_][6]\ : STD_LOGIC;
  signal \reg_IDEX_reg[ra_instr]__0\ : STD_LOGIC;
  signal \reg_IDEX_reg[rb_instr]__0\ : STD_LOGIC;
  signal \reg_IDEX_reg[rc_instr]__0\ : STD_LOGIC;
  signal \reg_IDEX_reg[regwr]__0\ : STD_LOGIC;
  signal \reg_IDEX_reg[str_dest]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_IFID[instr][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_IFID[instr][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_IFID_reg[PC]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_IFID_reg[inport]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_MEMWR[instr]\ : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal \reg_MEMWR[op_code][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_5_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_6_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_7_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_8_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][11]_i_9_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][9]_i_1_n_0\ : STD_LOGIC;
  signal \reg_MEMWR[result][9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][0]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][1]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][2]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][3]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][4]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][5]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[op_code_n_0_][6]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[regwr]__0\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][0]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][10]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][11]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][12]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][13]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][14]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][15]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][1]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][2]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][3]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][4]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][5]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][6]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][7]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][8]\ : STD_LOGIC;
  signal \reg_MEMWR_reg[result_n_0_][9]\ : STD_LOGIC;
  signal regwr : STD_LOGIC;
  signal rf0_n_0 : STD_LOGIC;
  signal rf0_n_1 : STD_LOGIC;
  signal rf0_n_10 : STD_LOGIC;
  signal rf0_n_11 : STD_LOGIC;
  signal rf0_n_12 : STD_LOGIC;
  signal rf0_n_13 : STD_LOGIC;
  signal rf0_n_14 : STD_LOGIC;
  signal rf0_n_15 : STD_LOGIC;
  signal rf0_n_16 : STD_LOGIC;
  signal rf0_n_17 : STD_LOGIC;
  signal rf0_n_18 : STD_LOGIC;
  signal rf0_n_19 : STD_LOGIC;
  signal rf0_n_2 : STD_LOGIC;
  signal rf0_n_20 : STD_LOGIC;
  signal rf0_n_21 : STD_LOGIC;
  signal rf0_n_22 : STD_LOGIC;
  signal rf0_n_23 : STD_LOGIC;
  signal rf0_n_24 : STD_LOGIC;
  signal rf0_n_25 : STD_LOGIC;
  signal rf0_n_26 : STD_LOGIC;
  signal rf0_n_27 : STD_LOGIC;
  signal rf0_n_28 : STD_LOGIC;
  signal rf0_n_29 : STD_LOGIC;
  signal rf0_n_3 : STD_LOGIC;
  signal rf0_n_30 : STD_LOGIC;
  signal rf0_n_31 : STD_LOGIC;
  signal rf0_n_32 : STD_LOGIC;
  signal rf0_n_33 : STD_LOGIC;
  signal rf0_n_34 : STD_LOGIC;
  signal rf0_n_35 : STD_LOGIC;
  signal rf0_n_36 : STD_LOGIC;
  signal rf0_n_37 : STD_LOGIC;
  signal rf0_n_38 : STD_LOGIC;
  signal rf0_n_39 : STD_LOGIC;
  signal rf0_n_4 : STD_LOGIC;
  signal rf0_n_40 : STD_LOGIC;
  signal rf0_n_41 : STD_LOGIC;
  signal rf0_n_42 : STD_LOGIC;
  signal rf0_n_43 : STD_LOGIC;
  signal rf0_n_44 : STD_LOGIC;
  signal rf0_n_45 : STD_LOGIC;
  signal rf0_n_46 : STD_LOGIC;
  signal rf0_n_47 : STD_LOGIC;
  signal rf0_n_48 : STD_LOGIC;
  signal rf0_n_49 : STD_LOGIC;
  signal rf0_n_5 : STD_LOGIC;
  signal rf0_n_6 : STD_LOGIC;
  signal rf0_n_7 : STD_LOGIC;
  signal rf0_n_8 : STD_LOGIC;
  signal rf0_n_9 : STD_LOGIC;
  signal rst_e_IBUF : STD_LOGIC;
  signal rst_l_IBUF : STD_LOGIC;
  signal spo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wea : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_10_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_11_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_12_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_13_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_14_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_15_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_16_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_17_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_2_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_34_n_2 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_34_n_3 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_34_n_5 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_34_n_6 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_34_n_7 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_1 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_2 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_3 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_4 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_5 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_6 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_35_n_7 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_38_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_39_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_3_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_40_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_41_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_42_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_43_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_44_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_4_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_5_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_6_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_7_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_8_n_0 : STD_LOGIC;
  signal xpm_memory_dpdistram_inst_i_9_n_0 : STD_LOGIC;
  signal \NLW_PC_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xpm_memory_dpdistram_inst_i_34_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xpm_memory_dpdistram_inst_i_34_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \PC[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \PC[10]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \PC[11]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \PC[12]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \PC[13]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \PC[14]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \PC[15]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \PC[1]_C_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \PC[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \PC[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \PC[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \PC[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \PC[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \PC[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \PC[8]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \PC[9]_i_1\ : label is "soft_lutpair84";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \PC_reg[11]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \PC_reg[15]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PC_reg[1]_LDC\ : label is "LDC";
  attribute METHODOLOGY_DRC_VIOS of \PC_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \PC_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \mm_output[15]_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mm_output[15]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mm_output[15]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mm_output[15]_i_7\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mm_output[15]_i_9\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][4]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][6]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][7]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \reg_EXMEM[instr][8]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][1]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][2]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][5]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \reg_EXMEM[op_code][6]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \reg_EXMEM[regwr]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][10]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][10]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][10]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_12\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_15\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_16\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][11]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][12]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][12]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][13]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][14]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_18\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_21\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_33\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_34\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_35\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_36\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_37\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][15]_i_38\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][1]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][2]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][3]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][4]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][4]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][6]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][7]_i_18\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][7]_i_19\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][7]_i_20\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][7]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][8]_i_17\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][8]_i_18\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][8]_i_19\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][8]_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][8]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][9]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][9]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \reg_EXMEM[result][9]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg_IDEX[data1][15]_i_10\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg_IDEX[data1][15]_i_11\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \reg_IDEX[data1][15]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][15]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][5]_i_10\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][5]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][5]_i_4\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][5]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg_IDEX[data2][5]_i_9\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][0]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][1]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][3]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][5]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][7]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \reg_IDEX[instr][8]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][2]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][4]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][5]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \reg_IDEX[op_code][6]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \reg_IDEX[ra_instr]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg_IDEX[rb_instr]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \reg_IDEX[rc_instr]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg_IDEX[regwr]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg_IDEX[regwr]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg_IDEX[regwr]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][15]_i_10\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \reg_IDEX[str_dest][15]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reg_IFID[instr][15]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_IFID[instr][15]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][0]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][10]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][11]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][11]_i_5\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][12]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][13]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][14]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][15]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][15]_i_5\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][1]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][3]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][4]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][5]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][6]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][7]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][8]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reg_MEMWR[result][9]_i_2\ : label is "soft_lutpair53";
  attribute syn_black_box : string;
  attribute syn_black_box of rom0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of rom0 : label is "dist_mem_gen_v8_0_12,Vivado 2017.4";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_dpdistram_inst : label is 16;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_dpdistram_inst : label is 16;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_dpdistram_inst : label is 16;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of xpm_memory_dpdistram_inst : label is "common_clock";
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_dpdistram_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_dpdistram_inst : label is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_dpdistram_inst : label is "true";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_dpdistram_inst : label is 8192;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_dpdistram_inst : label is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of xpm_memory_dpdistram_inst : label is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of xpm_memory_dpdistram_inst : label is 1;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_dpdistram_inst : label is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_dpdistram_inst : label is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_dpdistram_inst : label is 0;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_dpdistram_inst : label is 0;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_dpdistram_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_dpdistram_inst : label is "0";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_dpdistram_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_dpdistram_inst : label is 1;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_dpdistram_inst : label is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_dpdistram_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_10 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_2 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_3 : label is "soft_lutpair63";
  attribute METHODOLOGY_DRC_VIOS of xpm_memory_dpdistram_inst_i_34 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of xpm_memory_dpdistram_inst_i_35 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_5 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_6 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_7 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_8 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of xpm_memory_dpdistram_inst_i_9 : label is "soft_lutpair65";
begin
\PC[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(0),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(0),
      O => PC_next(0)
    );
\PC[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(10),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(10),
      O => PC_next(10)
    );
\PC[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(11),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(11),
      O => PC_next(11)
    );
\PC[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(12),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(12),
      O => PC_next(12)
    );
\PC[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(13),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(13),
      O => PC_next(13)
    );
\PC[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(14),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(14),
      O => PC_next(14)
    );
\PC[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(15),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(15),
      O => PC_next(15)
    );
\PC[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_e_IBUF,
      I1 => rst_l_IBUF,
      O => \PC[15]_i_2_n_0\
    );
\PC[1]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(1),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(1),
      O => PC_next(1)
    );
\PC[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(2),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(2),
      O => PC_next(2)
    );
\PC[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(3),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(3),
      O => PC_next(3)
    );
\PC[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \PC_reg[1]_P_n_0\,
      I1 => \PC_reg[1]_LDC_n_0\,
      I2 => \PC_reg[1]_C_n_0\,
      O => \PC[3]_i_3_n_0\
    );
\PC[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \PC_reg[1]_C_n_0\,
      I1 => \PC_reg[1]_LDC_n_0\,
      I2 => \PC_reg[1]_P_n_0\,
      O => \PC[3]_i_4_n_0\
    );
\PC[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(4),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(4),
      O => PC_next(4)
    );
\PC[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(5),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(5),
      O => PC_next(5)
    );
\PC[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(6),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(6),
      O => PC_next(6)
    );
\PC[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(7),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(7),
      O => PC_next(7)
    );
\PC[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(8),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(8),
      O => PC_next(8)
    );
\PC[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(9),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => plusOp(9),
      O => PC_next(9)
    );
\PC_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(0),
      Q => \PC__0\(0)
    );
\PC_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(10),
      Q => \PC__0\(10)
    );
\PC_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(11),
      Q => \PC__0\(11)
    );
\PC_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_reg[7]_i_2_n_0\,
      CO(3) => \PC_reg[11]_i_2_n_0\,
      CO(2) => \PC_reg[11]_i_2_n_1\,
      CO(1) => \PC_reg[11]_i_2_n_2\,
      CO(0) => \PC_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(11 downto 8),
      S(3 downto 2) => \PC__0\(11 downto 10),
      S(1 downto 0) => PC(9 downto 8)
    );
\PC_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(12),
      Q => \PC__0\(12)
    );
\PC_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(13),
      Q => \PC__0\(13)
    );
\PC_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(14),
      Q => \PC__0\(14)
    );
\PC_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(15),
      Q => \PC__0\(15)
    );
\PC_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_reg[11]_i_2_n_0\,
      CO(3) => \NLW_PC_reg[15]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \PC_reg[15]_i_3_n_1\,
      CO(1) => \PC_reg[15]_i_3_n_2\,
      CO(0) => \PC_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(15 downto 12),
      S(3 downto 0) => \PC__0\(15 downto 12)
    );
\PC_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC_next(1),
      Q => \PC_reg[1]_C_n_0\
    );
\PC_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst_e_IBUF,
      D => '1',
      G => \PC_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \PC_reg[1]_LDC_n_0\
    );
\PC_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_l_IBUF,
      I1 => rst_e_IBUF,
      O => \PC_reg[1]_LDC_i_1_n_0\
    );
\PC_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      D => PC_next(1),
      PRE => \PC_reg[1]_LDC_i_1_n_0\,
      Q => \PC_reg[1]_P_n_0\
    );
\PC_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(2),
      Q => PC(2)
    );
\PC_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(3),
      Q => PC(3)
    );
\PC_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PC_reg[3]_i_2_n_0\,
      CO(2) => \PC_reg[3]_i_2_n_1\,
      CO(1) => \PC_reg[3]_i_2_n_2\,
      CO(0) => \PC_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \PC[3]_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => plusOp(3 downto 0),
      S(3 downto 2) => PC(3 downto 2),
      S(1) => \PC[3]_i_4_n_0\,
      S(0) => \PC__0\(0)
    );
\PC_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(4),
      Q => PC(4)
    );
\PC_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(5),
      Q => PC(5)
    );
\PC_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(6),
      Q => PC(6)
    );
\PC_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(7),
      Q => PC(7)
    );
\PC_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_reg[3]_i_2_n_0\,
      CO(3) => \PC_reg[7]_i_2_n_0\,
      CO(2) => \PC_reg[7]_i_2_n_1\,
      CO(1) => \PC_reg[7]_i_2_n_2\,
      CO(0) => \PC_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(7 downto 4),
      S(3 downto 0) => PC(7 downto 4)
    );
\PC_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(8),
      Q => PC(8)
    );
\PC_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => \PC[15]_i_2_n_0\,
      D => PC_next(9),
      Q => PC(9)
    );
alu0: entity work.ALU
     port map (
      D(15 downto 0) => \p_0_in__0\(15 downto 0),
      \PC_reg[1]_P\ => alu0_n_56,
      \PC_reg[1]_P_0\ => alu0_n_63,
      Q(15 downto 0) => \reg_EXMEM_reg[result]__0\(15 downto 0),
      alu_mode(1 downto 0) => alu_mode(1 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      in1(15 downto 0) => in1(15 downto 0),
      \reg_EXMEM[n_flag]\ => \reg_EXMEM[n_flag]\,
      \reg_EXMEM[z_flag]\ => \reg_EXMEM[z_flag]\,
      \reg_EXMEM_reg[instr][0]\ => \reg_EXMEM[result][8]_i_2_n_0\,
      \reg_EXMEM_reg[instr][1]\ => \reg_EXMEM[result][9]_i_2_n_0\,
      \reg_EXMEM_reg[instr][2]\ => \reg_EXMEM[result][10]_i_2_n_0\,
      \reg_EXMEM_reg[instr][3]\ => \reg_EXMEM[result][11]_i_2_n_0\,
      \reg_EXMEM_reg[instr][3]_0\ => \reg_EXMEM[result][15]_i_4_n_0\,
      \reg_EXMEM_reg[instr][3]_1\ => \reg_EXMEM[result][7]_i_4_n_0\,
      \reg_EXMEM_reg[instr][4]\ => \reg_EXMEM[result][12]_i_4_n_0\,
      \reg_EXMEM_reg[instr][5]\ => \reg_EXMEM[result][13]_i_3_n_0\,
      \reg_EXMEM_reg[instr][7]\ => \reg_EXMEM[result][15]_i_5_n_0\,
      \reg_EXMEM_reg[instr][8]\ => \reg_EXMEM[result][15]_i_2_n_0\,
      \reg_EXMEM_reg[instr][8]_0\ => \reg_EXMEM[result][15]_i_3_n_0\,
      \reg_EXMEM_reg[instr][8]_1\ => \reg_EXMEM[result][1]_i_3_n_0\,
      \reg_EXMEM_reg[instr][8]_2\ => \reg_EXMEM[result][5]_i_3_n_0\,
      \reg_EXMEM_reg[instr][8]_3\ => \reg_EXMEM[result][6]_i_3_n_0\,
      \reg_EXMEM_reg[instr][8]_4\(8 downto 6) => p_1_in0_in(2 downto 0),
      \reg_EXMEM_reg[instr][8]_4\(5) => \reg_EXMEM_reg[instr_n_0_][5]\,
      \reg_EXMEM_reg[instr][8]_4\(4) => \reg_EXMEM_reg[instr_n_0_][4]\,
      \reg_EXMEM_reg[instr][8]_4\(3) => \reg_EXMEM_reg[instr_n_0_][3]\,
      \reg_EXMEM_reg[instr][8]_4\(2) => \reg_EXMEM_reg[instr_n_0_][2]\,
      \reg_EXMEM_reg[instr][8]_4\(1) => \reg_EXMEM_reg[instr_n_0_][1]\,
      \reg_EXMEM_reg[instr][8]_4\(0) => \reg_EXMEM_reg[instr_n_0_][0]\,
      \reg_EXMEM_reg[op_code][0]\ => \reg_EXMEM[result][15]_i_18_n_0\,
      \reg_EXMEM_reg[op_code][0]_0\ => \reg_EXMEM[op_code][6]_i_2_n_0\,
      \reg_EXMEM_reg[op_code][6]\(6) => \reg_EXMEM_reg[op_code_n_0_][6]\,
      \reg_EXMEM_reg[op_code][6]\(5) => \reg_EXMEM_reg[op_code_n_0_][5]\,
      \reg_EXMEM_reg[op_code][6]\(4) => \reg_EXMEM_reg[op_code_n_0_][4]\,
      \reg_EXMEM_reg[op_code][6]\(3) => \reg_EXMEM_reg[op_code_n_0_][3]\,
      \reg_EXMEM_reg[op_code][6]\(2) => \reg_EXMEM_reg[op_code_n_0_][2]\,
      \reg_EXMEM_reg[op_code][6]\(1) => \reg_EXMEM_reg[op_code_n_0_][1]\,
      \reg_EXMEM_reg[op_code][6]\(0) => \reg_EXMEM_reg[op_code_n_0_][0]\,
      \reg_EXMEM_reg[regwr]__0\ => \reg_EXMEM_reg[regwr]__0\,
      \reg_EXMEM_reg[result][0]\ => \reg_EXMEM[result][13]_i_4_n_0\,
      \reg_EXMEM_reg[result][0]_0\ => \reg_EXMEM[result][14]_i_2_n_0\,
      \reg_EXMEM_reg[result][0]_1\ => \reg_EXMEM[result][3]_i_3_n_0\,
      \reg_EXMEM_reg[result][0]_10\ => \reg_EXMEM[result][10]_i_4_n_0\,
      \reg_EXMEM_reg[result][0]_2\ => \reg_EXMEM[result][4]_i_3_n_0\,
      \reg_EXMEM_reg[result][0]_3\ => \reg_EXMEM[result][5]_i_2_n_0\,
      \reg_EXMEM_reg[result][0]_4\ => \reg_EXMEM[result][6]_i_2_n_0\,
      \reg_EXMEM_reg[result][0]_5\ => \reg_EXMEM[result][7]_i_2_n_0\,
      \reg_EXMEM_reg[result][0]_6\ => \reg_EXMEM[result][1]_i_2_n_0\,
      \reg_EXMEM_reg[result][0]_7\ => \reg_EXMEM[result][2]_i_3_n_0\,
      \reg_EXMEM_reg[result][0]_8\ => \reg_EXMEM[result][9]_i_4_n_0\,
      \reg_EXMEM_reg[result][0]_9\ => \reg_EXMEM[result][9]_i_5_n_0\,
      \reg_EXMEM_reg[result][11]\ => alu0_n_48,
      \reg_EXMEM_reg[result][1]\ => \reg_EXMEM[result][11]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_0\ => \reg_EXMEM[result][12]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_1\ => \reg_EXMEM[result][11]_i_4_n_0\,
      \reg_EXMEM_reg[result][1]_10\ => \reg_EXMEM[result][8]_i_4_n_0\,
      \reg_EXMEM_reg[result][1]_11\ => \reg_EXMEM[result][2]_i_2_n_0\,
      \reg_EXMEM_reg[result][1]_12\ => \reg_EXMEM[result][8]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_13\ => \reg_EXMEM[result][8]_i_5_n_0\,
      \reg_EXMEM_reg[result][1]_14\ => \reg_EXMEM[result][9]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_15\ => \reg_EXMEM[result][9]_i_6_n_0\,
      \reg_EXMEM_reg[result][1]_16\ => \reg_EXMEM[result][10]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_17\ => \reg_EXMEM[result][10]_i_5_n_0\,
      \reg_EXMEM_reg[result][1]_18\ => \reg_EXMEM[result][10]_i_6_n_0\,
      \reg_EXMEM_reg[result][1]_2\ => \reg_EXMEM[result][12]_i_2_n_0\,
      \reg_EXMEM_reg[result][1]_3\ => \reg_EXMEM[result][12]_i_5_n_0\,
      \reg_EXMEM_reg[result][1]_4\ => \reg_EXMEM[result][13]_i_2_n_0\,
      \reg_EXMEM_reg[result][1]_5\ => \reg_EXMEM[result][14]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_6\ => \reg_EXMEM[result][3]_i_2_n_0\,
      \reg_EXMEM_reg[result][1]_7\ => \reg_EXMEM[result][4]_i_2_n_0\,
      \reg_EXMEM_reg[result][1]_8\ => \reg_EXMEM[result][0]_i_3_n_0\,
      \reg_EXMEM_reg[result][1]_9\ => \reg_EXMEM[result][7]_i_3_n_0\,
      \reg_EXMEM_reg[str_dest][15]\ => alu0_n_60,
      \reg_EXMEM_reg[str_dest][15]_0\ => alu0_n_64,
      \reg_IDEX_reg[data1][15]\(15 downto 0) => \reg_IDEX_reg[data1]__0\(15 downto 0),
      \reg_IDEX_reg[data2][15]\(15 downto 0) => \reg_IDEX_reg[data2]__0\(15 downto 0),
      \reg_IDEX_reg[instr][8]\(8 downto 6) => p_0_in(2 downto 0),
      \reg_IDEX_reg[instr][8]\(5 downto 3) => p_0_in1_in(2 downto 0),
      \reg_IDEX_reg[instr][8]\(2) => \reg_IDEX_reg[instr_n_0_][2]\,
      \reg_IDEX_reg[instr][8]\(1) => \reg_IDEX_reg[instr_n_0_][1]\,
      \reg_IDEX_reg[instr][8]\(0) => \reg_IDEX_reg[instr_n_0_][0]\,
      \reg_IDEX_reg[op_code][1]\ => \reg_EXMEM[result][0]_i_2_n_0\,
      \reg_IDEX_reg[op_code][1]_0\ => \reg_EXMEM[result][15]_i_20_n_0\,
      \reg_IDEX_reg[op_code][2]\ => \reg_EXMEM[result][15]_i_19_n_0\,
      \reg_IDEX_reg[op_code][6]\(6) => \reg_IDEX_reg[op_code_n_0_][6]\,
      \reg_IDEX_reg[op_code][6]\(5) => \reg_IDEX_reg[op_code_n_0_][5]\,
      \reg_IDEX_reg[op_code][6]\(4) => \reg_IDEX_reg[op_code_n_0_][4]\,
      \reg_IDEX_reg[op_code][6]\(3) => \reg_IDEX_reg[op_code_n_0_][3]\,
      \reg_IDEX_reg[op_code][6]\(2) => \reg_IDEX_reg[op_code_n_0_][2]\,
      \reg_IDEX_reg[op_code][6]\(1) => \reg_IDEX_reg[op_code_n_0_][1]\,
      \reg_IDEX_reg[op_code][6]\(0) => \reg_IDEX_reg[op_code_n_0_][0]\,
      \reg_IDEX_reg[ra_instr]__0\ => \reg_IDEX_reg[ra_instr]__0\,
      \reg_IDEX_reg[rb_instr]__0\ => \reg_IDEX_reg[rb_instr]__0\,
      \reg_IDEX_reg[rc_instr]__0\ => \reg_IDEX_reg[rc_instr]__0\,
      \reg_MEMWR_reg[instr][8]\(2 downto 0) => \reg_MEMWR[instr]\(8 downto 6),
      \reg_MEMWR_reg[op_code][6]\(6) => \reg_MEMWR_reg[op_code_n_0_][6]\,
      \reg_MEMWR_reg[op_code][6]\(5) => \reg_MEMWR_reg[op_code_n_0_][5]\,
      \reg_MEMWR_reg[op_code][6]\(4) => \reg_MEMWR_reg[op_code_n_0_][4]\,
      \reg_MEMWR_reg[op_code][6]\(3) => \reg_MEMWR_reg[op_code_n_0_][3]\,
      \reg_MEMWR_reg[op_code][6]\(2) => \reg_MEMWR_reg[op_code_n_0_][2]\,
      \reg_MEMWR_reg[op_code][6]\(1) => \reg_MEMWR_reg[op_code_n_0_][1]\,
      \reg_MEMWR_reg[op_code][6]\(0) => \reg_MEMWR_reg[op_code_n_0_][0]\,
      \reg_MEMWR_reg[regwr]__0\ => \reg_MEMWR_reg[regwr]__0\,
      \reg_MEMWR_reg[result][15]\(15) => \reg_MEMWR_reg[result_n_0_][15]\,
      \reg_MEMWR_reg[result][15]\(14) => \reg_MEMWR_reg[result_n_0_][14]\,
      \reg_MEMWR_reg[result][15]\(13) => \reg_MEMWR_reg[result_n_0_][13]\,
      \reg_MEMWR_reg[result][15]\(12) => \reg_MEMWR_reg[result_n_0_][12]\,
      \reg_MEMWR_reg[result][15]\(11) => \reg_MEMWR_reg[result_n_0_][11]\,
      \reg_MEMWR_reg[result][15]\(10) => \reg_MEMWR_reg[result_n_0_][10]\,
      \reg_MEMWR_reg[result][15]\(9) => \reg_MEMWR_reg[result_n_0_][9]\,
      \reg_MEMWR_reg[result][15]\(8) => \reg_MEMWR_reg[result_n_0_][8]\,
      \reg_MEMWR_reg[result][15]\(7) => \reg_MEMWR_reg[result_n_0_][7]\,
      \reg_MEMWR_reg[result][15]\(6) => \reg_MEMWR_reg[result_n_0_][6]\,
      \reg_MEMWR_reg[result][15]\(5) => \reg_MEMWR_reg[result_n_0_][5]\,
      \reg_MEMWR_reg[result][15]\(4) => \reg_MEMWR_reg[result_n_0_][4]\,
      \reg_MEMWR_reg[result][15]\(3) => \reg_MEMWR_reg[result_n_0_][3]\,
      \reg_MEMWR_reg[result][15]\(2) => \reg_MEMWR_reg[result_n_0_][2]\,
      \reg_MEMWR_reg[result][15]\(1) => \reg_MEMWR_reg[result_n_0_][1]\,
      \reg_MEMWR_reg[result][15]\(0) => \reg_MEMWR_reg[result_n_0_][0]\,
      result_320_0(13 downto 0) => in2(15 downto 2),
      result_320_1 => alu0_n_49,
      result_320_10 => alu0_n_59,
      result_320_2 => alu0_n_50,
      result_320_3 => alu0_n_51,
      result_320_4 => alu0_n_52,
      result_320_5 => alu0_n_53,
      result_320_6 => alu0_n_54,
      result_320_7 => alu0_n_55,
      result_320_8 => alu0_n_57,
      result_320_9 => alu0_n_58,
      rst_e_IBUF => rst_e_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\inport_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(0),
      O => inport_IBUF(0)
    );
\inport_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(10),
      O => inport_IBUF(10)
    );
\inport_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(11),
      O => inport_IBUF(11)
    );
\inport_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(12),
      O => inport_IBUF(12)
    );
\inport_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(13),
      O => inport_IBUF(13)
    );
\inport_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(14),
      O => inport_IBUF(14)
    );
\inport_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(15),
      O => inport_IBUF(15)
    );
\inport_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(1),
      O => inport_IBUF(1)
    );
\inport_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(2),
      O => inport_IBUF(2)
    );
\inport_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(3),
      O => inport_IBUF(3)
    );
\inport_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(4),
      O => inport_IBUF(4)
    );
\inport_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(5),
      O => inport_IBUF(5)
    );
\inport_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(6),
      O => inport_IBUF(6)
    );
\inport_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(7),
      O => inport_IBUF(7)
    );
\inport_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(8),
      O => inport_IBUF(8)
    );
\inport_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inport(9),
      O => inport_IBUF(9)
    );
\leds_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(0)
    );
\leds_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(10)
    );
\leds_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(11)
    );
\leds_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(12)
    );
\leds_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(13)
    );
\leds_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(14)
    );
\leds_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(15)
    );
\leds_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(1)
    );
\leds_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(2)
    );
\leds_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(3)
    );
\leds_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(4)
    );
\leds_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(5)
    );
\leds_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(6)
    );
\leds_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(7)
    );
\leds_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(8)
    );
\leds_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => leds(9)
    );
\mm_input_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(0),
      O => mm_input_IBUF(0)
    );
\mm_input_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(10),
      O => mm_input_IBUF(10)
    );
\mm_input_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(11),
      O => mm_input_IBUF(11)
    );
\mm_input_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(12),
      O => mm_input_IBUF(12)
    );
\mm_input_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(13),
      O => mm_input_IBUF(13)
    );
\mm_input_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(14),
      O => mm_input_IBUF(14)
    );
\mm_input_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(15),
      O => mm_input_IBUF(15)
    );
\mm_input_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(1),
      O => mm_input_IBUF(1)
    );
\mm_input_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(2),
      O => mm_input_IBUF(2)
    );
\mm_input_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(3),
      O => mm_input_IBUF(3)
    );
\mm_input_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(4),
      O => mm_input_IBUF(4)
    );
\mm_input_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(5),
      O => mm_input_IBUF(5)
    );
\mm_input_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(6),
      O => mm_input_IBUF(6)
    );
\mm_input_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(7),
      O => mm_input_IBUF(7)
    );
\mm_input_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(8),
      O => mm_input_IBUF(8)
    );
\mm_input_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mm_input(9),
      O => mm_input_IBUF(9)
    );
\mm_output[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \mm_output[15]_i_2_n_0\,
      I1 => rst_e_IBUF,
      I2 => \mm_output[15]_i_3_n_0\,
      I3 => \mm_output[15]_i_4_n_0\,
      I4 => xpm_memory_dpdistram_inst_i_16_n_0,
      I5 => \mm_output[15]_i_5_n_0\,
      O => mm_output0
    );
\mm_output[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(8),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][8]\,
      O => \mm_output[15]_i_10_n_0\
    );
\mm_output[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(5),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][5]\,
      O => \mm_output[15]_i_11_n_0\
    );
\mm_output[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \mm_output[15]_i_6_n_0\,
      I1 => xpm_memory_dpdistram_inst_i_4_n_0,
      I2 => xpm_memory_dpdistram_inst_i_6_n_0,
      I3 => \mm_output[15]_i_7_n_0\,
      I4 => \mm_output[15]_i_8_n_0\,
      O => \mm_output[15]_i_2_n_0\
    );
\mm_output[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I1 => alu0_n_63,
      O => \mm_output[15]_i_3_n_0\
    );
\mm_output[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(15),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][15]\,
      O => \mm_output[15]_i_4_n_0\
    );
\mm_output[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_17_n_0,
      I1 => \reg_MEMWR[result][15]_i_5_n_0\,
      I2 => xpm_memory_dpdistram_inst_i_15_n_0,
      I3 => xpm_memory_dpdistram_inst_i_14_n_0,
      O => \mm_output[15]_i_5_n_0\
    );
\mm_output[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(4),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][4]\,
      O => \mm_output[15]_i_6_n_0\
    );
\mm_output[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(10),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][10]\,
      O => \mm_output[15]_i_7_n_0\
    );
\mm_output[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_5_n_0,
      I1 => \mm_output[15]_i_9_n_0\,
      I2 => \reg_MEMWR[result][11]_i_5_n_0\,
      I3 => \mm_output[15]_i_10_n_0\,
      I4 => \reg_MEMWR[result][11]_i_6_n_0\,
      I5 => \mm_output[15]_i_11_n_0\,
      O => \mm_output[15]_i_8_n_0\
    );
\mm_output[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(7),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][7]\,
      O => \mm_output[15]_i_9_n_0\
    );
\mm_output_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(0),
      O => mm_output(0)
    );
\mm_output_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(10),
      O => mm_output(10)
    );
\mm_output_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(11),
      O => mm_output(11)
    );
\mm_output_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(12),
      O => mm_output(12)
    );
\mm_output_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(13),
      O => mm_output(13)
    );
\mm_output_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(14),
      O => mm_output(14)
    );
\mm_output_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(15),
      O => mm_output(15)
    );
\mm_output_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(1),
      O => mm_output(1)
    );
\mm_output_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(2),
      O => mm_output(2)
    );
\mm_output_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(3),
      O => mm_output(3)
    );
\mm_output_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(4),
      O => mm_output(4)
    );
\mm_output_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(5),
      O => mm_output(5)
    );
\mm_output_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(6),
      O => mm_output(6)
    );
\mm_output_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(7),
      O => mm_output(7)
    );
\mm_output_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(8),
      O => mm_output(8)
    );
\mm_output_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => mm_output_OBUF(9),
      O => mm_output(9)
    );
\mm_output_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(0),
      Q => mm_output_OBUF(0),
      R => '0'
    );
\mm_output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(10),
      Q => mm_output_OBUF(10),
      R => '0'
    );
\mm_output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(11),
      Q => mm_output_OBUF(11),
      R => '0'
    );
\mm_output_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(12),
      Q => mm_output_OBUF(12),
      R => '0'
    );
\mm_output_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(13),
      Q => mm_output_OBUF(13),
      R => '0'
    );
\mm_output_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(14),
      Q => mm_output_OBUF(14),
      R => '0'
    );
\mm_output_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(15),
      Q => mm_output_OBUF(15),
      R => '0'
    );
\mm_output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(1),
      Q => mm_output_OBUF(1),
      R => '0'
    );
\mm_output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(2),
      Q => mm_output_OBUF(2),
      R => '0'
    );
\mm_output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(3),
      Q => mm_output_OBUF(3),
      R => '0'
    );
\mm_output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(4),
      Q => mm_output_OBUF(4),
      R => '0'
    );
\mm_output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(5),
      Q => mm_output_OBUF(5),
      R => '0'
    );
\mm_output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(6),
      Q => mm_output_OBUF(6),
      R => '0'
    );
\mm_output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(7),
      Q => mm_output_OBUF(7),
      R => '0'
    );
\mm_output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(8),
      Q => mm_output_OBUF(8),
      R => '0'
    );
\mm_output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => mm_output0,
      D => \reg_EXMEM_reg[result]__0\(9),
      Q => mm_output_OBUF(9),
      R => '0'
    );
\outport_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(0),
      O => outport(0)
    );
\outport_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][0]\,
      O => outport_OBUF(0)
    );
\outport_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(10),
      O => outport(10)
    );
\outport_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][10]\,
      O => outport_OBUF(10)
    );
\outport_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(11),
      O => outport(11)
    );
\outport_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][11]\,
      O => outport_OBUF(11)
    );
\outport_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(12),
      O => outport(12)
    );
\outport_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][12]\,
      O => outport_OBUF(12)
    );
\outport_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(13),
      O => outport(13)
    );
\outport_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][13]\,
      O => outport_OBUF(13)
    );
\outport_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(14),
      O => outport(14)
    );
\outport_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][14]\,
      O => outport_OBUF(14)
    );
\outport_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(15),
      O => outport(15)
    );
\outport_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][15]\,
      O => outport_OBUF(15)
    );
\outport_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(1),
      O => outport(1)
    );
\outport_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][1]\,
      O => outport_OBUF(1)
    );
\outport_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(2),
      O => outport(2)
    );
\outport_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][2]\,
      O => outport_OBUF(2)
    );
\outport_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(3),
      O => outport(3)
    );
\outport_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][3]\,
      O => outport_OBUF(3)
    );
\outport_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(4),
      O => outport(4)
    );
\outport_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][4]\,
      O => outport_OBUF(4)
    );
\outport_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(5),
      O => outport(5)
    );
\outport_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][5]\,
      O => outport_OBUF(5)
    );
\outport_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(6),
      O => outport(6)
    );
\outport_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][6]\,
      O => outport_OBUF(6)
    );
\outport_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(7),
      O => outport(7)
    );
\outport_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][7]\,
      O => outport_OBUF(7)
    );
\outport_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(8),
      O => outport(8)
    );
\outport_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][8]\,
      O => outport_OBUF(8)
    );
\outport_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outport_OBUF(9),
      O => outport(9)
    );
\outport_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I4 => rf0_n_1,
      I5 => \reg_MEMWR_reg[result_n_0_][9]\,
      O => outport_OBUF(9)
    );
\reg_EXMEM[instr][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[instr_n_0_][0]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][0]_i_1_n_0\
    );
\reg_EXMEM[instr][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[instr_n_0_][1]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][1]_i_1_n_0\
    );
\reg_EXMEM[instr][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[instr_n_0_][2]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][2]_i_1_n_0\
    );
\reg_EXMEM[instr][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in1_in(0),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][3]_i_1_n_0\
    );
\reg_EXMEM[instr][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][4]_i_1_n_0\
    );
\reg_EXMEM[instr][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][5]_i_1_n_0\
    );
\reg_EXMEM[instr][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][6]_i_1_n_0\
    );
\reg_EXMEM[instr][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][7]_i_1_n_0\
    );
\reg_EXMEM[instr][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[instr][8]_i_1_n_0\
    );
\reg_EXMEM[op_code][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][0]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][0]_i_1_n_0\
    );
\reg_EXMEM[op_code][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][1]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][1]_i_1_n_0\
    );
\reg_EXMEM[op_code][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[op_code_n_0_][2]\,
      O => \reg_EXMEM[op_code][2]_i_1_n_0\
    );
\reg_EXMEM[op_code][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][3]_i_1_n_0\
    );
\reg_EXMEM[op_code][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][4]_i_1_n_0\
    );
\reg_EXMEM[op_code][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][5]_i_1_n_0\
    );
\reg_EXMEM[op_code][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][6]\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[op_code][6]_i_1_n_0\
    );
\reg_EXMEM[op_code][6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => alu0_n_56,
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_EXMEM[op_code][6]_i_2_n_0\
    );
\reg_EXMEM[regwr]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_IDEX_reg[regwr]__0\,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I2 => \reg_EXMEM_reg[regwr]__0\,
      O => \reg_EXMEM[regwr]_i_1_n_0\
    );
\reg_EXMEM[result][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00105555FFFFFFFF"
    )
        port map (
      I0 => alu_mode(1),
      I1 => \reg_EXMEM[result][0]_i_5_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][1]_i_5_n_0\,
      I4 => \reg_EXMEM[result][0]_i_6_n_0\,
      I5 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][0]_i_2_n_0\
    );
\reg_EXMEM[result][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_EXMEM[result][4]_i_6_n_0\,
      I1 => \reg_EXMEM[result][0]_i_7_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][6]_i_8_n_0\,
      I4 => in2(2),
      I5 => \reg_EXMEM[result][2]_i_5_n_0\,
      O => \reg_EXMEM[result][0]_i_3_n_0\
    );
\reg_EXMEM[result][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_14_n_0\,
      I1 => \reg_EXMEM[result][15]_i_13_n_0\,
      I2 => in2(13),
      I3 => in2(15),
      I4 => in2(11),
      O => \reg_EXMEM[result][0]_i_5_n_0\
    );
\reg_EXMEM[result][0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => alu_mode(0),
      I1 => alu0_n_48,
      I2 => in1(0),
      O => \reg_EXMEM[result][0]_i_6_n_0\
    );
\reg_EXMEM[result][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4F444F444F44"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(8),
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(0),
      I4 => in1(15),
      I5 => in2(4),
      O => \reg_EXMEM[result][0]_i_7_n_0\
    );
\reg_EXMEM[result][10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(10),
      I1 => in1(10),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][10]_i_2_n_0\
    );
\reg_EXMEM[result][10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][13]_i_6_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_6_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][10]_i_3_n_0\
    );
\reg_EXMEM[result][10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => alu0_n_48,
      I1 => \reg_EXMEM[result][10]_i_8_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][12]_i_7_n_0\,
      O => \reg_EXMEM[result][10]_i_4_n_0\
    );
\reg_EXMEM[result][10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \reg_EXMEM[result][12]_i_8_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][10]_i_9_n_0\,
      I3 => alu0_n_48,
      O => \reg_EXMEM[result][10]_i_5_n_0\
    );
\reg_EXMEM[result][10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_4_n_0\,
      I1 => \reg_EXMEM[result][11]_i_7_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_8_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][10]_i_6_n_0\
    );
\reg_EXMEM[result][10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => in1(3),
      I1 => in2(2),
      I2 => in1(7),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][10]_i_8_n_0\
    );
\reg_EXMEM[result][10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFB8000000B8"
    )
        port map (
      I0 => in1(14),
      I1 => in2(2),
      I2 => in1(10),
      I3 => in2(4),
      I4 => in2(3),
      I5 => in1(15),
      O => \reg_EXMEM[result][10]_i_9_n_0\
    );
\reg_EXMEM[result][11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_13_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(15),
      I3 => in2(4),
      O => \reg_EXMEM[result][11]_i_10_n_0\
    );
\reg_EXMEM[result][11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_14_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(14),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][11]_i_11_n_0\
    );
\reg_EXMEM[result][11]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B8B800"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(15),
      I1 => alu0_n_53,
      I2 => \reg_EXMEM[result][11]_i_13_n_0\,
      I3 => in2(3),
      I4 => in2(4),
      O => \reg_EXMEM[result][11]_i_12_n_0\
    );
\reg_EXMEM[result][11]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_15_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][15]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(15),
      O => \reg_EXMEM[result][11]_i_13_n_0\
    );
\reg_EXMEM[result][11]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_16_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][14]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(14),
      O => \reg_EXMEM[result][11]_i_14_n_0\
    );
\reg_EXMEM[result][11]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in0_in(1),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(15),
      O => \reg_EXMEM[result][11]_i_15_n_0\
    );
\reg_EXMEM[result][11]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in0_in(0),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(14),
      O => \reg_EXMEM[result][11]_i_16_n_0\
    );
\reg_EXMEM[result][11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(11),
      I1 => in1(11),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][11]_i_2_n_0\
    );
\reg_EXMEM[result][11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][13]_i_6_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_6_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][11]_i_3_n_0\
    );
\reg_EXMEM[result][11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_7_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][11]_i_8_n_0\,
      I3 => alu0_n_48,
      I4 => \reg_EXMEM[result][11]_i_9_n_0\,
      I5 => \reg_EXMEM[result][7]_i_4_n_0\,
      O => \reg_EXMEM[result][11]_i_4_n_0\
    );
\reg_EXMEM[result][11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300BBBB03008B88"
    )
        port map (
      I0 => in1(4),
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_21_n_0\,
      I3 => in1(0),
      I4 => \reg_EXMEM[result][15]_i_22_n_0\,
      I5 => in1(8),
      O => \reg_EXMEM[result][11]_i_6_n_0\
    );
\reg_EXMEM[result][11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFE0004"
    )
        port map (
      I0 => in2(2),
      I1 => in1(11),
      I2 => in2(4),
      I3 => in2(3),
      I4 => in1(15),
      O => \reg_EXMEM[result][11]_i_7_n_0\
    );
\reg_EXMEM[result][11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F5E0004"
    )
        port map (
      I0 => in2(2),
      I1 => in1(13),
      I2 => in2(4),
      I3 => in2(3),
      I4 => in1(15),
      O => \reg_EXMEM[result][11]_i_8_n_0\
    );
\reg_EXMEM[result][11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0FFF0BBF088"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_24_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][11]_i_10_n_0\,
      I3 => in2(2),
      I4 => \reg_EXMEM[result][11]_i_11_n_0\,
      I5 => \reg_EXMEM[result][11]_i_12_n_0\,
      O => \reg_EXMEM[result][11]_i_9_n_0\
    );
\reg_EXMEM[result][12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][15]_i_9_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][13]_i_6_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][12]_i_2_n_0\
    );
\reg_EXMEM[result][12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM[result][14]_i_7_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][12]_i_7_n_0\,
      O => \reg_EXMEM[result][12]_i_3_n_0\
    );
\reg_EXMEM[result][12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(12),
      I1 => in1(12),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][12]_i_4_n_0\
    );
\reg_EXMEM[result][12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][12]_i_8_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][12]_i_9_n_0\,
      I3 => alu0_n_48,
      I4 => \reg_EXMEM[result][13]_i_8_n_0\,
      I5 => \reg_EXMEM[result][7]_i_4_n_0\,
      O => \reg_EXMEM[result][12]_i_5_n_0\
    );
\reg_EXMEM[result][12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300BBBB03008B88"
    )
        port map (
      I0 => in1(5),
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_21_n_0\,
      I3 => in1(1),
      I4 => \reg_EXMEM[result][15]_i_22_n_0\,
      I5 => in1(9),
      O => \reg_EXMEM[result][12]_i_7_n_0\
    );
\reg_EXMEM[result][12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F5E0004"
    )
        port map (
      I0 => in2(2),
      I1 => in1(12),
      I2 => in2(4),
      I3 => in2(3),
      I4 => in1(15),
      O => \reg_EXMEM[result][12]_i_8_n_0\
    );
\reg_EXMEM[result][12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F5E0004"
    )
        port map (
      I0 => in2(2),
      I1 => in1(14),
      I2 => in2(4),
      I3 => in2(3),
      I4 => in1(15),
      O => \reg_EXMEM[result][12]_i_9_n_0\
    );
\reg_EXMEM[result][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][15]_i_9_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][13]_i_6_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][13]_i_2_n_0\
    );
\reg_EXMEM[result][13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(13),
      I1 => in1(13),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][13]_i_3_n_0\
    );
\reg_EXMEM[result][13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM[result][13]_i_8_n_0\,
      I1 => alu0_n_48,
      I2 => \reg_EXMEM[result][14]_i_6_n_0\,
      I3 => \reg_EXMEM[result][7]_i_4_n_0\,
      O => \reg_EXMEM[result][13]_i_4_n_0\
    );
\reg_EXMEM[result][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300BBBB03008B88"
    )
        port map (
      I0 => in1(6),
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_21_n_0\,
      I3 => in1(2),
      I4 => \reg_EXMEM[result][15]_i_22_n_0\,
      I5 => in1(10),
      O => \reg_EXMEM[result][13]_i_6_n_0\
    );
\reg_EXMEM[result][13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC0CCCCCCC1"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][0]\,
      I1 => \reg_IDEX_reg[op_code_n_0_][6]\,
      I2 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I3 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I4 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I5 => \reg_IDEX_reg[op_code_n_0_][1]\,
      O => \reg_EXMEM[result][13]_i_7_n_0\
    );
\reg_EXMEM[result][13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F00FF00FB08"
    )
        port map (
      I0 => in1(13),
      I1 => alu0_n_52,
      I2 => in2(2),
      I3 => in1(15),
      I4 => in2(3),
      I5 => in2(4),
      O => \reg_EXMEM[result][13]_i_8_n_0\
    );
\reg_EXMEM[result][14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBAAABA"
    )
        port map (
      I0 => \reg_EXMEM[result][14]_i_5_n_0\,
      I1 => \reg_EXMEM[result][7]_i_4_n_0\,
      I2 => \reg_EXMEM[result][15]_i_16_n_0\,
      I3 => alu0_n_48,
      I4 => \reg_EXMEM[result][14]_i_6_n_0\,
      O => \reg_EXMEM[result][14]_i_2_n_0\
    );
\reg_EXMEM[result][14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_12_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][14]_i_7_n_0\,
      O => \reg_EXMEM[result][14]_i_3_n_0\
    );
\reg_EXMEM[result][14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in1(14),
      I1 => in2(14),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][14]_i_5_n_0\
    );
\reg_EXMEM[result][14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05000000FEFF0400"
    )
        port map (
      I0 => in2(2),
      I1 => in1(14),
      I2 => in2(3),
      I3 => alu0_n_52,
      I4 => in1(15),
      I5 => in2(4),
      O => \reg_EXMEM[result][14]_i_6_n_0\
    );
\reg_EXMEM[result][14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033000000B800B8"
    )
        port map (
      I0 => in1(7),
      I1 => in2(2),
      I2 => in1(11),
      I3 => in2(4),
      I4 => in1(3),
      I5 => in2(3),
      O => \reg_EXMEM[result][14]_i_7_n_0\
    );
\reg_EXMEM[result][15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3022"
    )
        port map (
      I0 => in1(11),
      I1 => in2(4),
      I2 => in1(3),
      I3 => in2(3),
      O => \reg_EXMEM[result][15]_i_10_n_0\
    );
\reg_EXMEM[result][15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(7),
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(15),
      O => \reg_EXMEM[result][15]_i_11_n_0\
    );
\reg_EXMEM[result][15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0EFE0"
    )
        port map (
      I0 => in1(1),
      I1 => \reg_EXMEM[result][15]_i_25_n_0\,
      I2 => in2(2),
      I3 => \reg_EXMEM[result][15]_i_26_n_0\,
      I4 => \reg_EXMEM[result][15]_i_21_n_0\,
      I5 => in1(5),
      O => \reg_EXMEM[result][15]_i_12_n_0\
    );
\reg_EXMEM[result][15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => in2(12),
      I1 => in2(5),
      I2 => in2(9),
      I3 => in2(6),
      O => \reg_EXMEM[result][15]_i_13_n_0\
    );
\reg_EXMEM[result][15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => in2(8),
      I1 => in2(7),
      I2 => in2(14),
      I3 => in2(10),
      O => \reg_EXMEM[result][15]_i_14_n_0\
    );
\reg_EXMEM[result][15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0002FFFC0003"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][1]\,
      I1 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I2 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I3 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I4 => \reg_IDEX_reg[op_code_n_0_][6]\,
      I5 => \reg_IDEX_reg[op_code_n_0_][0]\,
      O => \reg_EXMEM[result][15]_i_15_n_0\
    );
\reg_EXMEM[result][15]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FF00"
    )
        port map (
      I0 => in2(2),
      I1 => in2(3),
      I2 => alu0_n_52,
      I3 => in1(15),
      I4 => in2(4),
      O => \reg_EXMEM[result][15]_i_16_n_0\
    );
\reg_EXMEM[result][15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in1(15),
      I1 => in2(15),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][15]_i_17_n_0\
    );
\reg_EXMEM[result][15]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst_e_IBUF,
      I1 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      O => \reg_EXMEM[result][15]_i_18_n_0\
    );
\reg_EXMEM[result][15]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][2]\,
      I1 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I2 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I3 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I4 => \reg_IDEX_reg[op_code_n_0_][6]\,
      O => \reg_EXMEM[result][15]_i_19_n_0\
    );
\reg_EXMEM[result][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_7_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_8_n_0\,
      I3 => alu0_n_52,
      I4 => \reg_EXMEM[result][15]_i_9_n_0\,
      O => \reg_EXMEM[result][15]_i_2_n_0\
    );
\reg_EXMEM[result][15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0002FFFC0001"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][1]\,
      I1 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I2 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I3 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I4 => \reg_IDEX_reg[op_code_n_0_][6]\,
      I5 => \reg_IDEX_reg[op_code_n_0_][0]\,
      O => \reg_EXMEM[result][15]_i_20_n_0\
    );
\reg_EXMEM[result][15]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in2(4),
      I1 => in2(3),
      O => \reg_EXMEM[result][15]_i_21_n_0\
    );
\reg_EXMEM[result][15]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_27_n_0\,
      I1 => \reg_EXMEM_reg[result]__0\(4),
      I2 => \reg_EXMEM[result][15]_i_28_n_0\,
      I3 => alu0_n_49,
      I4 => \reg_EXMEM_reg[result]__0\(3),
      O => \reg_EXMEM[result][15]_i_22_n_0\
    );
\reg_EXMEM[result][15]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_29_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(8),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][15]_i_23_n_0\
    );
\reg_EXMEM[result][15]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_30_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(12),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][15]_i_24_n_0\
    );
\reg_EXMEM[result][15]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_31_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(9),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][15]_i_25_n_0\
    );
\reg_EXMEM[result][15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_32_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(13),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][15]_i_26_n_0\
    );
\reg_EXMEM[result][15]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_MEMWR_reg[result_n_0_][4]\,
      I1 => alu0_n_51,
      I2 => \reg_IDEX_reg[data2]__0\(4),
      I3 => alu0_n_50,
      I4 => \reg_EXMEM[result][15]_i_33_n_0\,
      O => \reg_EXMEM[result][15]_i_27_n_0\
    );
\reg_EXMEM[result][15]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_MEMWR_reg[result_n_0_][3]\,
      I1 => alu0_n_51,
      I2 => \reg_IDEX_reg[data2]__0\(3),
      I3 => alu0_n_50,
      I4 => \reg_EXMEM[result][15]_i_34_n_0\,
      O => \reg_EXMEM[result][15]_i_28_n_0\
    );
\reg_EXMEM[result][15]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_35_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][8]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(8),
      O => \reg_EXMEM[result][15]_i_29_n_0\
    );
\reg_EXMEM[result][15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_10_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_11_n_0\,
      I3 => alu0_n_52,
      I4 => \reg_EXMEM[result][15]_i_12_n_0\,
      O => \reg_EXMEM[result][15]_i_3_n_0\
    );
\reg_EXMEM[result][15]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_36_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][12]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(12),
      O => \reg_EXMEM[result][15]_i_30_n_0\
    );
\reg_EXMEM[result][15]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_37_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][9]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(9),
      O => \reg_EXMEM[result][15]_i_31_n_0\
    );
\reg_EXMEM[result][15]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_38_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][13]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(13),
      O => \reg_EXMEM[result][15]_i_32_n_0\
    );
\reg_EXMEM[result][15]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(4),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][4]\,
      O => \reg_EXMEM[result][15]_i_33_n_0\
    );
\reg_EXMEM[result][15]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(3),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][3]\,
      O => \reg_EXMEM[result][15]_i_34_n_0\
    );
\reg_EXMEM[result][15]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr_n_0_][0]\,
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(8),
      O => \reg_EXMEM[result][15]_i_35_n_0\
    );
\reg_EXMEM[result][15]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr_n_0_][4]\,
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(12),
      O => \reg_EXMEM[result][15]_i_36_n_0\
    );
\reg_EXMEM[result][15]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr_n_0_][1]\,
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(9),
      O => \reg_EXMEM[result][15]_i_37_n_0\
    );
\reg_EXMEM[result][15]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[instr_n_0_][5]\,
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[result]__0\(13),
      O => \reg_EXMEM[result][15]_i_38_n_0\
    );
\reg_EXMEM[result][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => in2(11),
      I1 => in2(15),
      I2 => in2(13),
      I3 => \reg_EXMEM[result][15]_i_13_n_0\,
      I4 => \reg_EXMEM[result][15]_i_14_n_0\,
      I5 => \reg_EXMEM[result][15]_i_15_n_0\,
      O => \reg_EXMEM[result][15]_i_4_n_0\
    );
\reg_EXMEM[result][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00F20002"
    )
        port map (
      I0 => in1(15),
      I1 => in2(4),
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][7]_i_4_n_0\,
      I4 => \reg_EXMEM[result][15]_i_16_n_0\,
      I5 => \reg_EXMEM[result][15]_i_17_n_0\,
      O => \reg_EXMEM[result][15]_i_5_n_0\
    );
\reg_EXMEM[result][15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(2),
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(10),
      O => \reg_EXMEM[result][15]_i_7_n_0\
    );
\reg_EXMEM[result][15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(6),
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(14),
      O => \reg_EXMEM[result][15]_i_8_n_0\
    );
\reg_EXMEM[result][15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0EFE0"
    )
        port map (
      I0 => in1(0),
      I1 => \reg_EXMEM[result][15]_i_23_n_0\,
      I2 => in2(2),
      I3 => \reg_EXMEM[result][15]_i_24_n_0\,
      I4 => \reg_EXMEM[result][15]_i_21_n_0\,
      I5 => in1(4),
      O => \reg_EXMEM[result][15]_i_9_n_0\
    );
\reg_EXMEM[result][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4501"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => alu0_n_48,
      I2 => \reg_EXMEM[result][1]_i_5_n_0\,
      I3 => \reg_EXMEM[result][2]_i_6_n_0\,
      I4 => \reg_EXMEM[result][1]_i_6_n_0\,
      O => \reg_EXMEM[result][1]_i_2_n_0\
    );
\reg_EXMEM[result][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][5]_i_8_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][1]_i_7_n_0\,
      I3 => alu0_n_52,
      I4 => \reg_EXMEM[result][3]_i_5_n_0\,
      O => \reg_EXMEM[result][1]_i_3_n_0\
    );
\reg_EXMEM[result][1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_22_n_0\,
      I1 => in1(0),
      I2 => in2(2),
      I3 => alu0_n_52,
      O => \reg_EXMEM[result][1]_i_5_n_0\
    );
\reg_EXMEM[result][1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => in1(1),
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][1]_i_6_n_0\
    );
\reg_EXMEM[result][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(9),
      I2 => in1(1),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      I4 => in1(15),
      I5 => in2(4),
      O => \reg_EXMEM[result][1]_i_7_n_0\
    );
\reg_EXMEM[result][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_EXMEM[result][6]_i_8_n_0\,
      I1 => \reg_EXMEM[result][2]_i_5_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][4]_i_5_n_0\,
      I4 => in2(2),
      I5 => \reg_EXMEM[result][4]_i_6_n_0\,
      O => \reg_EXMEM[result][2]_i_2_n_0\
    );
\reg_EXMEM[result][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][2]_i_6_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][3]_i_6_n_0\,
      I4 => \reg_EXMEM[result][2]_i_7_n_0\,
      O => \reg_EXMEM[result][2]_i_3_n_0\
    );
\reg_EXMEM[result][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_21_n_0\,
      I1 => in1(10),
      I2 => in1(2),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      I4 => in1(15),
      I5 => in2(4),
      O => \reg_EXMEM[result][2]_i_5_n_0\
    );
\reg_EXMEM[result][2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => in2(2),
      I1 => in1(1),
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => alu0_n_52,
      O => \reg_EXMEM[result][2]_i_6_n_0\
    );
\reg_EXMEM[result][2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(2),
      I1 => in1(2),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][2]_i_7_n_0\
    );
\reg_EXMEM[result][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][3]_i_5_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][5]_i_7_n_0\,
      I3 => in2(2),
      I4 => \reg_EXMEM[result][5]_i_8_n_0\,
      O => \reg_EXMEM[result][3]_i_2_n_0\
    );
\reg_EXMEM[result][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][4]_i_7_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][3]_i_6_n_0\,
      I4 => \reg_EXMEM[result][3]_i_7_n_0\,
      O => \reg_EXMEM[result][3]_i_3_n_0\
    );
\reg_EXMEM[result][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB8B88"
    )
        port map (
      I0 => \reg_EXMEM[result][3]_i_8_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][15]_i_21_n_0\,
      I3 => in1(11),
      I4 => \reg_EXMEM[result][8]_i_9_n_0\,
      I5 => \reg_EXMEM[result][3]_i_9_n_0\,
      O => \reg_EXMEM[result][3]_i_5_n_0\
    );
\reg_EXMEM[result][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E02"
    )
        port map (
      I0 => in1(0),
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(2),
      I4 => in2(2),
      O => \reg_EXMEM[result][3]_i_6_n_0\
    );
\reg_EXMEM[result][3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in1(3),
      I1 => in2(3),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][3]_i_7_n_0\
    );
\reg_EXMEM[result][3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(15),
      I1 => \reg_EXMEM[result][11]_i_13_n_0\,
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => \reg_EXMEM_reg[result]__0\(7),
      I4 => alu0_n_53,
      I5 => \reg_EXMEM[result][8]_i_14_n_0\,
      O => \reg_EXMEM[result][3]_i_8_n_0\
    );
\reg_EXMEM[result][3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_13_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(15),
      I3 => in2(4),
      O => \reg_EXMEM[result][3]_i_9_n_0\
    );
\reg_EXMEM[result][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_EXMEM[result][4]_i_5_n_0\,
      I1 => \reg_EXMEM[result][4]_i_6_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][6]_i_7_n_0\,
      I4 => in2(2),
      I5 => \reg_EXMEM[result][6]_i_8_n_0\,
      O => \reg_EXMEM[result][4]_i_2_n_0\
    );
\reg_EXMEM[result][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][4]_i_7_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][5]_i_5_n_0\,
      I4 => \reg_EXMEM[result][4]_i_8_n_0\,
      O => \reg_EXMEM[result][4]_i_3_n_0\
    );
\reg_EXMEM[result][4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3E02"
    )
        port map (
      I0 => in1(8),
      I1 => in2(4),
      I2 => in2(3),
      I3 => in1(15),
      O => \reg_EXMEM[result][4]_i_5_n_0\
    );
\reg_EXMEM[result][4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F888F8FFFF88F8"
    )
        port map (
      I0 => in2(4),
      I1 => in1(15),
      I2 => in1(12),
      I3 => \reg_EXMEM[result][15]_i_21_n_0\,
      I4 => in1(4),
      I5 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][4]_i_6_n_0\
    );
\reg_EXMEM[result][4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => in1(3),
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][15]_i_22_n_0\,
      I3 => in1(1),
      I4 => in2(2),
      O => \reg_EXMEM[result][4]_i_7_n_0\
    );
\reg_EXMEM[result][4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(4),
      I1 => in1(4),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][4]_i_8_n_0\
    );
\reg_EXMEM[result][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][5]_i_5_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][6]_i_5_n_0\,
      I4 => \reg_EXMEM[result][5]_i_6_n_0\,
      O => \reg_EXMEM[result][5]_i_2_n_0\
    );
\reg_EXMEM[result][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][5]_i_7_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][5]_i_8_n_0\,
      I3 => alu0_n_52,
      I4 => \reg_EXMEM[result][7]_i_8_n_0\,
      O => \reg_EXMEM[result][5]_i_3_n_0\
    );
\reg_EXMEM[result][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => in1(0),
      I1 => in1(4),
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      I4 => in1(2),
      I5 => in2(2),
      O => \reg_EXMEM[result][5]_i_5_n_0\
    );
\reg_EXMEM[result][5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(5),
      I1 => in1(5),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][5]_i_6_n_0\
    );
\reg_EXMEM[result][5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3E02"
    )
        port map (
      I0 => in1(9),
      I1 => in2(4),
      I2 => in2(3),
      I3 => in1(15),
      O => \reg_EXMEM[result][5]_i_7_n_0\
    );
\reg_EXMEM[result][5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F888F8FFFF88F8"
    )
        port map (
      I0 => in2(4),
      I1 => in1(15),
      I2 => in1(13),
      I3 => \reg_EXMEM[result][15]_i_21_n_0\,
      I4 => in1(5),
      I5 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][5]_i_8_n_0\
    );
\reg_EXMEM[result][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][6]_i_5_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][7]_i_6_n_0\,
      I4 => \reg_EXMEM[result][6]_i_6_n_0\,
      O => \reg_EXMEM[result][6]_i_2_n_0\
    );
\reg_EXMEM[result][6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][6]_i_7_n_0\,
      I1 => in2(2),
      I2 => \reg_EXMEM[result][6]_i_8_n_0\,
      I3 => alu0_n_52,
      I4 => \reg_EXMEM[result][8]_i_8_n_0\,
      O => \reg_EXMEM[result][6]_i_3_n_0\
    );
\reg_EXMEM[result][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => in1(1),
      I1 => in1(5),
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      I4 => in1(3),
      I5 => in2(2),
      O => \reg_EXMEM[result][6]_i_5_n_0\
    );
\reg_EXMEM[result][6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(6),
      I1 => in1(6),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][6]_i_6_n_0\
    );
\reg_EXMEM[result][6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3E02"
    )
        port map (
      I0 => in1(10),
      I1 => in2(4),
      I2 => in2(3),
      I3 => in1(15),
      O => \reg_EXMEM[result][6]_i_7_n_0\
    );
\reg_EXMEM[result][6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_22_n_0\,
      I1 => in1(6),
      I2 => in1(14),
      I3 => \reg_EXMEM[result][15]_i_21_n_0\,
      I4 => in1(15),
      I5 => in2(4),
      O => \reg_EXMEM[result][6]_i_8_n_0\
    );
\reg_EXMEM[result][7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_14_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(2),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][7]_i_10_n_0\
    );
\reg_EXMEM[result][7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_15_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(6),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][7]_i_11_n_0\
    );
\reg_EXMEM[result][7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_22_n_0\,
      I1 => \reg_EXMEM[result][7]_i_16_n_0\,
      I2 => alu0_n_53,
      I3 => \reg_EXMEM_reg[result]__0\(0),
      O => \reg_EXMEM[result][7]_i_12_n_0\
    );
\reg_EXMEM[result][7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_17_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(4),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][7]_i_13_n_0\
    );
\reg_EXMEM[result][7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_18_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][2]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(2),
      O => \reg_EXMEM[result][7]_i_14_n_0\
    );
\reg_EXMEM[result][7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_19_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][6]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(6),
      O => \reg_EXMEM[result][7]_i_15_n_0\
    );
\reg_EXMEM[result][7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_20_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][0]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(0),
      O => \reg_EXMEM[result][7]_i_16_n_0\
    );
\reg_EXMEM[result][7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_33_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][4]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(4),
      O => \reg_EXMEM[result][7]_i_17_n_0\
    );
\reg_EXMEM[result][7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(2),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][2]\,
      O => \reg_EXMEM[result][7]_i_18_n_0\
    );
\reg_EXMEM[result][7]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(6),
      I1 => p_1_in0_in(2),
      I2 => p_1_in0_in(0),
      O => \reg_EXMEM[result][7]_i_19_n_0\
    );
\reg_EXMEM[result][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][8]_i_7_n_0\,
      I2 => alu0_n_48,
      I3 => \reg_EXMEM[result][7]_i_6_n_0\,
      I4 => \reg_EXMEM[result][7]_i_7_n_0\,
      O => \reg_EXMEM[result][7]_i_2_n_0\
    );
\reg_EXMEM[result][7]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(0),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][0]\,
      O => \reg_EXMEM[result][7]_i_20_n_0\
    );
\reg_EXMEM[result][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_8_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][9]_i_9_n_0\,
      O => \reg_EXMEM[result][7]_i_3_n_0\
    );
\reg_EXMEM[result][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => in2(11),
      I1 => in2(15),
      I2 => in2(13),
      I3 => \reg_EXMEM[result][15]_i_13_n_0\,
      I4 => \reg_EXMEM[result][15]_i_14_n_0\,
      I5 => \reg_EXMEM[result][7]_i_9_n_0\,
      O => \reg_EXMEM[result][7]_i_4_n_0\
    );
\reg_EXMEM[result][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_10_n_0\,
      I1 => \reg_EXMEM[result][7]_i_11_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][7]_i_12_n_0\,
      I4 => in2(2),
      I5 => \reg_EXMEM[result][7]_i_13_n_0\,
      O => \reg_EXMEM[result][7]_i_6_n_0\
    );
\reg_EXMEM[result][7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(7),
      I1 => in1(7),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][7]_i_7_n_0\
    );
\reg_EXMEM[result][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30F0F0BB30F0F088"
    )
        port map (
      I0 => in1(11),
      I1 => in2(2),
      I2 => in1(15),
      I3 => in2(4),
      I4 => in2(3),
      I5 => in1(7),
      O => \reg_EXMEM[result][7]_i_8_n_0\
    );
\reg_EXMEM[result][7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \reg_IDEX_reg[op_code_n_0_][0]\,
      I1 => \reg_IDEX_reg[op_code_n_0_][6]\,
      I2 => \reg_IDEX_reg[op_code_n_0_][4]\,
      I3 => \reg_IDEX_reg[op_code_n_0_][5]\,
      I4 => \reg_IDEX_reg[op_code_n_0_][3]\,
      I5 => \reg_IDEX_reg[op_code_n_0_][1]\,
      O => \reg_EXMEM[result][7]_i_9_n_0\
    );
\reg_EXMEM[result][8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_14_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(7),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][8]_i_10_n_0\
    );
\reg_EXMEM[result][8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_15_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(1),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][8]_i_11_n_0\
    );
\reg_EXMEM[result][8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_16_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(5),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][8]_i_12_n_0\
    );
\reg_EXMEM[result][8]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_34_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][3]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(3),
      O => \reg_EXMEM[result][8]_i_13_n_0\
    );
\reg_EXMEM[result][8]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_17_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][7]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(7),
      O => \reg_EXMEM[result][8]_i_14_n_0\
    );
\reg_EXMEM[result][8]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_18_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][1]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(1),
      O => \reg_EXMEM[result][8]_i_15_n_0\
    );
\reg_EXMEM[result][8]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_19_n_0\,
      I1 => alu0_n_54,
      I2 => \reg_MEMWR_reg[result_n_0_][5]\,
      I3 => alu0_n_55,
      I4 => \reg_IDEX_reg[data1]__0\(5),
      O => \reg_EXMEM[result][8]_i_16_n_0\
    );
\reg_EXMEM[result][8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(7),
      I1 => p_1_in0_in(2),
      I2 => p_1_in0_in(1),
      O => \reg_EXMEM[result][8]_i_17_n_0\
    );
\reg_EXMEM[result][8]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(1),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][1]\,
      O => \reg_EXMEM[result][8]_i_18_n_0\
    );
\reg_EXMEM[result][8]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(5),
      I1 => p_1_in0_in(2),
      I2 => \reg_EXMEM_reg[instr_n_0_][5]\,
      O => \reg_EXMEM[result][8]_i_19_n_0\
    );
\reg_EXMEM[result][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(8),
      I1 => in1(8),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][8]_i_2_n_0\
    );
\reg_EXMEM[result][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => \reg_EXMEM[result][11]_i_6_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][9]_i_8_n_0\,
      I3 => alu0_n_48,
      I4 => \reg_EXMEM[result][8]_i_7_n_0\,
      I5 => \reg_EXMEM[result][15]_i_4_n_0\,
      O => \reg_EXMEM[result][8]_i_3_n_0\
    );
\reg_EXMEM[result][8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_8_n_0\,
      I1 => alu0_n_52,
      I2 => \reg_EXMEM[result][10]_i_9_n_0\,
      O => \reg_EXMEM[result][8]_i_4_n_0\
    );
\reg_EXMEM[result][8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_4_n_0\,
      I1 => \reg_EXMEM[result][9]_i_9_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_7_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][8]_i_5_n_0\
    );
\reg_EXMEM[result][8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_9_n_0\,
      I1 => \reg_EXMEM[result][8]_i_10_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][8]_i_11_n_0\,
      I4 => in2(2),
      I5 => \reg_EXMEM[result][8]_i_12_n_0\,
      O => \reg_EXMEM[result][8]_i_7_n_0\
    );
\reg_EXMEM[result][8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFB8000000B8"
    )
        port map (
      I0 => in1(12),
      I1 => in2(2),
      I2 => in1(8),
      I3 => in2(4),
      I4 => in2(3),
      I5 => in1(15),
      O => \reg_EXMEM[result][8]_i_8_n_0\
    );
\reg_EXMEM[result][8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM[result][8]_i_13_n_0\,
      I1 => alu0_n_53,
      I2 => \reg_EXMEM_reg[result]__0\(3),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][8]_i_9_n_0\
    );
\reg_EXMEM[result][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => in2(9),
      I1 => in1(9),
      I2 => \reg_EXMEM[result][13]_i_7_n_0\,
      I3 => \reg_EXMEM[result][15]_i_19_n_0\,
      O => \reg_EXMEM[result][9]_i_2_n_0\
    );
\reg_EXMEM[result][9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \reg_EXMEM[result][15]_i_4_n_0\,
      I1 => \reg_EXMEM[result][12]_i_7_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][10]_i_8_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][9]_i_3_n_0\
    );
\reg_EXMEM[result][9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => alu0_n_48,
      I1 => \reg_EXMEM[result][9]_i_8_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_6_n_0\,
      O => \reg_EXMEM[result][9]_i_4_n_0\
    );
\reg_EXMEM[result][9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => alu0_n_48,
      I1 => \reg_EXMEM[result][12]_i_8_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][10]_i_9_n_0\,
      O => \reg_EXMEM[result][9]_i_5_n_0\
    );
\reg_EXMEM[result][9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \reg_EXMEM[result][7]_i_4_n_0\,
      I1 => \reg_EXMEM[result][9]_i_9_n_0\,
      I2 => alu0_n_52,
      I3 => \reg_EXMEM[result][11]_i_7_n_0\,
      I4 => alu0_n_48,
      O => \reg_EXMEM[result][9]_i_6_n_0\
    );
\reg_EXMEM[result][9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => in1(2),
      I1 => in2(2),
      I2 => in1(6),
      I3 => \reg_EXMEM[result][15]_i_22_n_0\,
      O => \reg_EXMEM[result][9]_i_8_n_0\
    );
\reg_EXMEM[result][9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFB8000000B8"
    )
        port map (
      I0 => in1(13),
      I1 => in2(2),
      I2 => in1(9),
      I3 => in2(4),
      I4 => in2(3),
      I5 => in1(15),
      O => \reg_EXMEM[result][9]_i_9_n_0\
    );
\reg_EXMEM[str_dest][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(0),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][0]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(0),
      O => \reg_EXMEM[str_dest][0]_i_1_n_0\
    );
\reg_EXMEM[str_dest][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(10),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][10]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(10),
      O => \reg_EXMEM[str_dest][10]_i_1_n_0\
    );
\reg_EXMEM[str_dest][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(11),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][11]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(11),
      O => \reg_EXMEM[str_dest][11]_i_1_n_0\
    );
\reg_EXMEM[str_dest][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(12),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][12]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(12),
      O => \reg_EXMEM[str_dest][12]_i_1_n_0\
    );
\reg_EXMEM[str_dest][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(13),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][13]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(13),
      O => \reg_EXMEM[str_dest][13]_i_1_n_0\
    );
\reg_EXMEM[str_dest][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(14),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][14]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(14),
      O => \reg_EXMEM[str_dest][14]_i_1_n_0\
    );
\reg_EXMEM[str_dest][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(15),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][15]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(15),
      O => \reg_EXMEM[str_dest][15]_i_1_n_0\
    );
\reg_EXMEM[str_dest][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => alu0_n_60,
      I1 => \reg_MEMWR[instr]\(8),
      I2 => \reg_MEMWR[instr]\(7),
      I3 => \reg_MEMWR[instr]\(6),
      I4 => \reg_EXMEM[str_dest][15]_i_5_n_0\,
      O => \reg_EXMEM[str_dest][15]_i_2_n_0\
    );
\reg_EXMEM[str_dest][15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => alu0_n_58,
      I1 => \reg_EXMEM_reg[op_code_n_0_][6]\,
      I2 => alu0_n_59,
      I3 => \reg_EXMEM[str_dest][15]_i_6_n_0\,
      O => \reg_EXMEM[str_dest][15]_i_3_n_0\
    );
\reg_EXMEM[str_dest][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055755557"
    )
        port map (
      I0 => rf0_n_0,
      I1 => \reg_MEMWR_reg[op_code_n_0_][6]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][4]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][5]\,
      I4 => \reg_EXMEM[str_dest][15]_i_8_n_0\,
      I5 => alu0_n_64,
      O => \reg_EXMEM[str_dest][15]_i_5_n_0\
    );
\reg_EXMEM[str_dest][15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00011F0F00000F1E"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code_n_0_][2]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I2 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][1]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][5]\,
      I5 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      O => \reg_EXMEM[str_dest][15]_i_6_n_0\
    );
\reg_EXMEM[str_dest][15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg_MEMWR_reg[op_code_n_0_][0]\,
      I1 => \reg_MEMWR_reg[op_code_n_0_][1]\,
      I2 => \reg_MEMWR_reg[op_code_n_0_][3]\,
      I3 => \reg_MEMWR_reg[op_code_n_0_][2]\,
      O => \reg_EXMEM[str_dest][15]_i_8_n_0\
    );
\reg_EXMEM[str_dest][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(1),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][1]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(1),
      O => \reg_EXMEM[str_dest][1]_i_1_n_0\
    );
\reg_EXMEM[str_dest][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(2),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][2]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(2),
      O => \reg_EXMEM[str_dest][2]_i_1_n_0\
    );
\reg_EXMEM[str_dest][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(3),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][3]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(3),
      O => \reg_EXMEM[str_dest][3]_i_1_n_0\
    );
\reg_EXMEM[str_dest][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(4),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][4]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(4),
      O => \reg_EXMEM[str_dest][4]_i_1_n_0\
    );
\reg_EXMEM[str_dest][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(5),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][5]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(5),
      O => \reg_EXMEM[str_dest][5]_i_1_n_0\
    );
\reg_EXMEM[str_dest][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(6),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][6]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(6),
      O => \reg_EXMEM[str_dest][6]_i_1_n_0\
    );
\reg_EXMEM[str_dest][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(7),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][7]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(7),
      O => \reg_EXMEM[str_dest][7]_i_1_n_0\
    );
\reg_EXMEM[str_dest][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(8),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][8]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(8),
      O => \reg_EXMEM[str_dest][8]_i_1_n_0\
    );
\reg_EXMEM[str_dest][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \reg_EXMEM[op_code][6]_i_2_n_0\,
      I1 => \reg_IDEX_reg[str_dest]__0\(9),
      I2 => \reg_EXMEM[str_dest][15]_i_2_n_0\,
      I3 => \reg_MEMWR_reg[result_n_0_][9]\,
      I4 => \reg_EXMEM[str_dest][15]_i_3_n_0\,
      I5 => \reg_EXMEM_reg[result]__0\(9),
      O => \reg_EXMEM[str_dest][9]_i_1_n_0\
    );
\reg_EXMEM_reg[instr][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][0]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][0]\
    );
\reg_EXMEM_reg[instr][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][1]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][1]\
    );
\reg_EXMEM_reg[instr][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][2]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][2]\
    );
\reg_EXMEM_reg[instr][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][3]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][3]\
    );
\reg_EXMEM_reg[instr][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][4]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][4]\
    );
\reg_EXMEM_reg[instr][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][5]_i_1_n_0\,
      Q => \reg_EXMEM_reg[instr_n_0_][5]\
    );
\reg_EXMEM_reg[instr][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][6]_i_1_n_0\,
      Q => p_1_in0_in(0)
    );
\reg_EXMEM_reg[instr][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][7]_i_1_n_0\,
      Q => p_1_in0_in(1)
    );
\reg_EXMEM_reg[instr][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[instr][8]_i_1_n_0\,
      Q => p_1_in0_in(2)
    );
\reg_EXMEM_reg[n_flag]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[n_flag]\,
      Q => \reg_EXMEM_reg[n_flag]__0\
    );
\reg_EXMEM_reg[op_code][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][0]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][0]\
    );
\reg_EXMEM_reg[op_code][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][1]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][1]\
    );
\reg_EXMEM_reg[op_code][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][2]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][2]\
    );
\reg_EXMEM_reg[op_code][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][3]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][3]\
    );
\reg_EXMEM_reg[op_code][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][4]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][4]\
    );
\reg_EXMEM_reg[op_code][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][5]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][5]\
    );
\reg_EXMEM_reg[op_code][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[op_code][6]_i_1_n_0\,
      Q => \reg_EXMEM_reg[op_code_n_0_][6]\
    );
\reg_EXMEM_reg[regwr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[regwr]_i_1_n_0\,
      Q => \reg_EXMEM_reg[regwr]__0\
    );
\reg_EXMEM_reg[result][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(0),
      Q => \reg_EXMEM_reg[result]__0\(0)
    );
\reg_EXMEM_reg[result][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(10),
      Q => \reg_EXMEM_reg[result]__0\(10)
    );
\reg_EXMEM_reg[result][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(11),
      Q => \reg_EXMEM_reg[result]__0\(11)
    );
\reg_EXMEM_reg[result][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(12),
      Q => \reg_EXMEM_reg[result]__0\(12)
    );
\reg_EXMEM_reg[result][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(13),
      Q => \reg_EXMEM_reg[result]__0\(13)
    );
\reg_EXMEM_reg[result][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(14),
      Q => \reg_EXMEM_reg[result]__0\(14)
    );
\reg_EXMEM_reg[result][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(15),
      Q => \reg_EXMEM_reg[result]__0\(15)
    );
\reg_EXMEM_reg[result][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(1),
      Q => \reg_EXMEM_reg[result]__0\(1)
    );
\reg_EXMEM_reg[result][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(2),
      Q => \reg_EXMEM_reg[result]__0\(2)
    );
\reg_EXMEM_reg[result][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(3),
      Q => \reg_EXMEM_reg[result]__0\(3)
    );
\reg_EXMEM_reg[result][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(4),
      Q => \reg_EXMEM_reg[result]__0\(4)
    );
\reg_EXMEM_reg[result][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(5),
      Q => \reg_EXMEM_reg[result]__0\(5)
    );
\reg_EXMEM_reg[result][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(6),
      Q => \reg_EXMEM_reg[result]__0\(6)
    );
\reg_EXMEM_reg[result][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(7),
      Q => \reg_EXMEM_reg[result]__0\(7)
    );
\reg_EXMEM_reg[result][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(8),
      Q => \reg_EXMEM_reg[result]__0\(8)
    );
\reg_EXMEM_reg[result][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \p_0_in__0\(9),
      Q => \reg_EXMEM_reg[result]__0\(9)
    );
\reg_EXMEM_reg[str_dest][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][0]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][0]\
    );
\reg_EXMEM_reg[str_dest][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][10]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][10]\
    );
\reg_EXMEM_reg[str_dest][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][11]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][11]\
    );
\reg_EXMEM_reg[str_dest][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][12]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][12]\
    );
\reg_EXMEM_reg[str_dest][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][13]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][13]\
    );
\reg_EXMEM_reg[str_dest][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][14]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][14]\
    );
\reg_EXMEM_reg[str_dest][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][15]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][15]\
    );
\reg_EXMEM_reg[str_dest][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][1]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][1]\
    );
\reg_EXMEM_reg[str_dest][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][2]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][2]\
    );
\reg_EXMEM_reg[str_dest][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][3]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][3]\
    );
\reg_EXMEM_reg[str_dest][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][4]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][4]\
    );
\reg_EXMEM_reg[str_dest][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][5]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][5]\
    );
\reg_EXMEM_reg[str_dest][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][6]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][6]\
    );
\reg_EXMEM_reg[str_dest][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][7]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][7]\
    );
\reg_EXMEM_reg[str_dest][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][8]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][8]\
    );
\reg_EXMEM_reg[str_dest][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[str_dest][9]_i_1_n_0\,
      Q => \reg_EXMEM_reg[str_dest_n_0_][9]\
    );
\reg_EXMEM_reg[z_flag]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM[z_flag]\,
      Q => \reg_EXMEM_reg[z_flag]__0\
    );
\reg_IDEX[data1][15]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000700"
    )
        port map (
      I0 => instr(10),
      I1 => instr(9),
      I2 => instr(11),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      O => \reg_IDEX[data1][15]_i_10_n_0\
    );
\reg_IDEX[data1][15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \reg_IDEX[data1][15]_i_7_n_0\,
      I1 => \reg_IDEX[data1][15]_i_3_n_0\,
      O => \reg_IDEX[data1][15]_i_11_n_0\
    );
\reg_IDEX[data1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000056"
    )
        port map (
      I0 => instr(11),
      I1 => instr(9),
      I2 => instr(10),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I5 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[data1][15]_i_2_n_0\
    );
\reg_IDEX[data1][15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => instr(9),
      I1 => instr(10),
      I2 => instr(11),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      O => \reg_IDEX[data1][15]_i_3_n_0\
    );
\reg_IDEX[data1][15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FE0"
    )
        port map (
      I0 => instr(9),
      I1 => instr(10),
      I2 => instr(11),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I5 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[data1][15]_i_6_n_0\
    );
\reg_IDEX[data1][15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A8000"
    )
        port map (
      I0 => \reg_IDEX[regwr]_i_5_n_0\,
      I1 => instr(9),
      I2 => instr(10),
      I3 => instr(11),
      I4 => instr(14),
      O => \reg_IDEX[data1][15]_i_7_n_0\
    );
\reg_IDEX[data1][15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => instr(11),
      I1 => instr(14),
      I2 => instr(10),
      I3 => instr(9),
      I4 => \reg_IDEX[data1][15]_i_7_n_0\,
      O => \reg_IDEX[data1][15]_i_8_n_0\
    );
\reg_IDEX[data2][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \reg_IDEX[data1][15]_i_11_n_0\,
      I1 => \reg_IDEX[data2][5]_i_5_n_0\,
      I2 => \reg_IDEX[rb_instr]_i_2_n_0\,
      O => \reg_IDEX[data2][0]_i_2_n_0\
    );
\reg_IDEX[data2][15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008001"
    )
        port map (
      I0 => instr(9),
      I1 => instr(10),
      I2 => instr(11),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      O => \reg_IDEX[data2][15]_i_3_n_0\
    );
\reg_IDEX[data2][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7F7F7F7F3F3F3"
    )
        port map (
      I0 => instr(4),
      I1 => instr(15),
      I2 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I3 => instr(10),
      I4 => instr(9),
      I5 => instr(11),
      O => \reg_IDEX[data2][15]_i_4_n_0\
    );
\reg_IDEX[data2][15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF006A0000"
    )
        port map (
      I0 => instr(11),
      I1 => instr(9),
      I2 => instr(10),
      I3 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I4 => instr(15),
      I5 => \reg_IDEX[rb_instr]_i_2_n_0\,
      O => \reg_IDEX[data2][15]_i_5_n_0\
    );
\reg_IDEX[data2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAA0000"
    )
        port map (
      I0 => instr(0),
      I1 => instr(10),
      I2 => instr(9),
      I3 => instr(11),
      I4 => instr(15),
      I5 => \reg_IDEX[ra_instr]_i_2_n_0\,
      O => \reg_IDEX[data2][1]_i_3_n_0\
    );
\reg_IDEX[data2][5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => instr(3),
      I1 => \reg_IDEX[rb_instr]_i_2_n_0\,
      I2 => instr(0),
      O => \reg_IDEX[data2][5]_i_10_n_0\
    );
\reg_IDEX[data2][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \reg_IDEX[data2][15]_i_3_n_0\,
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      I2 => \reg_IDEX[rb_instr]_i_2_n_0\,
      I3 => \reg_IDEX[data2][5]_i_5_n_0\,
      I4 => \reg_IDEX[data1][15]_i_11_n_0\,
      O => \reg_IDEX[data2][5]_i_2_n_0\
    );
\reg_IDEX[data2][5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => instr(3),
      I1 => \reg_IDEX[data1][15]_i_3_n_0\,
      O => \reg_IDEX[data2][5]_i_4_n_0\
    );
\reg_IDEX[data2][5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBBBBB"
    )
        port map (
      I0 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I1 => instr(15),
      I2 => instr(11),
      I3 => instr(9),
      I4 => instr(10),
      O => \reg_IDEX[data2][5]_i_5_n_0\
    );
\reg_IDEX[data2][5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => instr(5),
      I1 => \reg_IDEX[rb_instr]_i_2_n_0\,
      I2 => instr(2),
      O => \reg_IDEX[data2][5]_i_6_n_0\
    );
\reg_IDEX[data2][5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => instr(4),
      I1 => \reg_IDEX[rb_instr]_i_2_n_0\,
      I2 => instr(1),
      O => \reg_IDEX[data2][5]_i_9_n_0\
    );
\reg_IDEX[instr][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(0),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][0]_i_1_n_0\
    );
\reg_IDEX[instr][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(1),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][1]_i_1_n_0\
    );
\reg_IDEX[instr][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(2),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][2]_i_1_n_0\
    );
\reg_IDEX[instr][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(3),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][3]_i_1_n_0\
    );
\reg_IDEX[instr][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(4),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][4]_i_1_n_0\
    );
\reg_IDEX[instr][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(5),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][5]_i_1_n_0\
    );
\reg_IDEX[instr][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(6),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][6]_i_1_n_0\
    );
\reg_IDEX[instr][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(7),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][7]_i_1_n_0\
    );
\reg_IDEX[instr][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(8),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[instr][8]_i_1_n_0\
    );
\reg_IDEX[op_code][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(9),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][0]_i_1_n_0\
    );
\reg_IDEX[op_code][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(10),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][1]_i_1_n_0\
    );
\reg_IDEX[op_code][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(11),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][2]_i_1_n_0\
    );
\reg_IDEX[op_code][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(12),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][3]_i_1_n_0\
    );
\reg_IDEX[op_code][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(13),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][4]_i_1_n_0\
    );
\reg_IDEX[op_code][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(14),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][5]_i_1_n_0\
    );
\reg_IDEX[op_code][6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instr(15),
      I1 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => \reg_IDEX[op_code][6]_i_2_n_0\
    );
\reg_IDEX[op_code][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330332233223033"
    )
        port map (
      I0 => \reg_EXMEM_reg[n_flag]__0\,
      I1 => \reg_IDEX[op_code][6]_i_4_n_0\,
      I2 => \reg_EXMEM_reg[z_flag]__0\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][1]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][2]\,
      I5 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      O => \reg_IDEX[op_code][6]_i_3_n_0\
    );
\reg_IDEX[op_code][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code_n_0_][5]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      I2 => \reg_EXMEM_reg[op_code_n_0_][6]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      O => \reg_IDEX[op_code][6]_i_4_n_0\
    );
\reg_IDEX[ra_instr]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0332200003FF20FF"
    )
        port map (
      I0 => instr(15),
      I1 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I2 => instr(10),
      I3 => instr(9),
      I4 => instr(11),
      I5 => \reg_IDEX[ra_instr]_i_3_n_0\,
      O => ra_instr
    );
\reg_IDEX[ra_instr]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr(13),
      I1 => instr(14),
      I2 => instr(12),
      O => \reg_IDEX[ra_instr]_i_2_n_0\
    );
\reg_IDEX[ra_instr]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => instr(14),
      I1 => instr(11),
      I2 => instr(10),
      I3 => instr(13),
      I4 => instr(12),
      I5 => instr(15),
      O => \reg_IDEX[ra_instr]_i_3_n_0\
    );
\reg_IDEX[rb_instr]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000056"
    )
        port map (
      I0 => instr(11),
      I1 => instr(9),
      I2 => instr(10),
      I3 => instr(15),
      I4 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I5 => \reg_IDEX[rb_instr]_i_2_n_0\,
      O => rb_instr
    );
\reg_IDEX[rb_instr]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => instr(9),
      I1 => instr(10),
      I2 => \reg_IDEX[str_dest][15]_i_2_n_0\,
      O => \reg_IDEX[rb_instr]_i_2_n_0\
    );
\reg_IDEX[rc_instr]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011110"
    )
        port map (
      I0 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I1 => instr(15),
      I2 => instr(10),
      I3 => instr(9),
      I4 => instr(11),
      O => rc_instr
    );
\reg_IDEX[regwr]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \reg_IDEX[regwr]_i_2_n_0\,
      I1 => \reg_IDEX[ra_instr]_i_2_n_0\,
      I2 => instr(11),
      I3 => instr(10),
      I4 => instr(9),
      I5 => \reg_IDEX[regwr]_i_3_n_0\,
      O => regwr
    );
\reg_IDEX[regwr]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFAFAA"
    )
        port map (
      I0 => instr(14),
      I1 => instr(12),
      I2 => \reg_IDEX[regwr]_i_4_n_0\,
      I3 => instr(15),
      I4 => instr(13),
      O => \reg_IDEX[regwr]_i_2_n_0\
    );
\reg_IDEX[regwr]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404C4040404040"
    )
        port map (
      I0 => \reg_IDEX[str_dest][15]_i_2_n_0\,
      I1 => instr(9),
      I2 => instr(10),
      I3 => instr(14),
      I4 => instr(11),
      I5 => \reg_IDEX[regwr]_i_5_n_0\,
      O => \reg_IDEX[regwr]_i_3_n_0\
    );
\reg_IDEX[regwr]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => instr(9),
      I1 => instr(10),
      I2 => instr(11),
      I3 => instr(15),
      O => \reg_IDEX[regwr]_i_4_n_0\
    );
\reg_IDEX[regwr]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => instr(15),
      I1 => instr(12),
      I2 => instr(13),
      O => \reg_IDEX[regwr]_i_5_n_0\
    );
\reg_IDEX[str_dest][15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr(12),
      I1 => instr(14),
      O => \reg_IDEX[str_dest][15]_i_10_n_0\
    );
\reg_IDEX[str_dest][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => instr(11),
      I1 => instr(15),
      I2 => instr(13),
      I3 => instr(12),
      I4 => instr(14),
      O => \reg_IDEX[str_dest][15]_i_2_n_0\
    );
\reg_IDEX[str_dest][15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F11"
    )
        port map (
      I0 => instr(5),
      I1 => \reg_IDEX[str_dest][15]_i_9_n_0\,
      I2 => instr(8),
      I3 => \reg_IDEX[data1][15]_i_11_n_0\,
      I4 => \reg_IDEX[data2][15]_i_5_n_0\,
      O => \reg_IDEX[str_dest][15]_i_6_n_0\
    );
\reg_IDEX[str_dest][15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54545457"
    )
        port map (
      I0 => instr(7),
      I1 => \reg_IDEX[data1][15]_i_11_n_0\,
      I2 => \reg_IDEX[data2][15]_i_5_n_0\,
      I3 => instr(4),
      I4 => \reg_IDEX[str_dest][15]_i_9_n_0\,
      O => \reg_IDEX[str_dest][15]_i_7_n_0\
    );
\reg_IDEX[str_dest][15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F11"
    )
        port map (
      I0 => instr(3),
      I1 => \reg_IDEX[str_dest][15]_i_9_n_0\,
      I2 => instr(6),
      I3 => \reg_IDEX[data1][15]_i_11_n_0\,
      I4 => \reg_IDEX[data2][15]_i_5_n_0\,
      O => \reg_IDEX[str_dest][15]_i_8_n_0\
    );
\reg_IDEX[str_dest][15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000200"
    )
        port map (
      I0 => instr(13),
      I1 => \reg_IDEX[str_dest][15]_i_10_n_0\,
      I2 => instr(9),
      I3 => instr(10),
      I4 => instr(11),
      I5 => instr(15),
      O => \reg_IDEX[str_dest][15]_i_9_n_0\
    );
\reg_IDEX_reg[data1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_17,
      Q => \reg_IDEX_reg[data1]__0\(0)
    );
\reg_IDEX_reg[data1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_7,
      Q => \reg_IDEX_reg[data1]__0\(10)
    );
\reg_IDEX_reg[data1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_6,
      Q => \reg_IDEX_reg[data1]__0\(11)
    );
\reg_IDEX_reg[data1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_5,
      Q => \reg_IDEX_reg[data1]__0\(12)
    );
\reg_IDEX_reg[data1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_4,
      Q => \reg_IDEX_reg[data1]__0\(13)
    );
\reg_IDEX_reg[data1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_3,
      Q => \reg_IDEX_reg[data1]__0\(14)
    );
\reg_IDEX_reg[data1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_2,
      Q => \reg_IDEX_reg[data1]__0\(15)
    );
\reg_IDEX_reg[data1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_16,
      Q => \reg_IDEX_reg[data1]__0\(1)
    );
\reg_IDEX_reg[data1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_15,
      Q => \reg_IDEX_reg[data1]__0\(2)
    );
\reg_IDEX_reg[data1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_14,
      Q => \reg_IDEX_reg[data1]__0\(3)
    );
\reg_IDEX_reg[data1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_13,
      Q => \reg_IDEX_reg[data1]__0\(4)
    );
\reg_IDEX_reg[data1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_12,
      Q => \reg_IDEX_reg[data1]__0\(5)
    );
\reg_IDEX_reg[data1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_11,
      Q => \reg_IDEX_reg[data1]__0\(6)
    );
\reg_IDEX_reg[data1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_10,
      Q => \reg_IDEX_reg[data1]__0\(7)
    );
\reg_IDEX_reg[data1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_9,
      Q => \reg_IDEX_reg[data1]__0\(8)
    );
\reg_IDEX_reg[data1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_8,
      Q => \reg_IDEX_reg[data1]__0\(9)
    );
\reg_IDEX_reg[data2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_33,
      Q => \reg_IDEX_reg[data2]__0\(0)
    );
\reg_IDEX_reg[data2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_23,
      Q => \reg_IDEX_reg[data2]__0\(10)
    );
\reg_IDEX_reg[data2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_22,
      Q => \reg_IDEX_reg[data2]__0\(11)
    );
\reg_IDEX_reg[data2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_21,
      Q => \reg_IDEX_reg[data2]__0\(12)
    );
\reg_IDEX_reg[data2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_20,
      Q => \reg_IDEX_reg[data2]__0\(13)
    );
\reg_IDEX_reg[data2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_19,
      Q => \reg_IDEX_reg[data2]__0\(14)
    );
\reg_IDEX_reg[data2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_18,
      Q => \reg_IDEX_reg[data2]__0\(15)
    );
\reg_IDEX_reg[data2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_32,
      Q => \reg_IDEX_reg[data2]__0\(1)
    );
\reg_IDEX_reg[data2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_31,
      Q => \reg_IDEX_reg[data2]__0\(2)
    );
\reg_IDEX_reg[data2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_30,
      Q => \reg_IDEX_reg[data2]__0\(3)
    );
\reg_IDEX_reg[data2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_29,
      Q => \reg_IDEX_reg[data2]__0\(4)
    );
\reg_IDEX_reg[data2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_28,
      Q => \reg_IDEX_reg[data2]__0\(5)
    );
\reg_IDEX_reg[data2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_27,
      Q => \reg_IDEX_reg[data2]__0\(6)
    );
\reg_IDEX_reg[data2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_26,
      Q => \reg_IDEX_reg[data2]__0\(7)
    );
\reg_IDEX_reg[data2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_25,
      Q => \reg_IDEX_reg[data2]__0\(8)
    );
\reg_IDEX_reg[data2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_24,
      Q => \reg_IDEX_reg[data2]__0\(9)
    );
\reg_IDEX_reg[instr][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][0]_i_1_n_0\,
      Q => \reg_IDEX_reg[instr_n_0_][0]\
    );
\reg_IDEX_reg[instr][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][1]_i_1_n_0\,
      Q => \reg_IDEX_reg[instr_n_0_][1]\
    );
\reg_IDEX_reg[instr][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][2]_i_1_n_0\,
      Q => \reg_IDEX_reg[instr_n_0_][2]\
    );
\reg_IDEX_reg[instr][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][3]_i_1_n_0\,
      Q => p_0_in1_in(0)
    );
\reg_IDEX_reg[instr][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][4]_i_1_n_0\,
      Q => p_0_in1_in(1)
    );
\reg_IDEX_reg[instr][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][5]_i_1_n_0\,
      Q => p_0_in1_in(2)
    );
\reg_IDEX_reg[instr][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][6]_i_1_n_0\,
      Q => p_0_in(0)
    );
\reg_IDEX_reg[instr][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][7]_i_1_n_0\,
      Q => p_0_in(1)
    );
\reg_IDEX_reg[instr][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[instr][8]_i_1_n_0\,
      Q => p_0_in(2)
    );
\reg_IDEX_reg[op_code][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][0]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][0]\
    );
\reg_IDEX_reg[op_code][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][1]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][1]\
    );
\reg_IDEX_reg[op_code][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][2]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][2]\
    );
\reg_IDEX_reg[op_code][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][3]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][3]\
    );
\reg_IDEX_reg[op_code][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][4]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][4]\
    );
\reg_IDEX_reg[op_code][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][5]_i_1_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][5]\
    );
\reg_IDEX_reg[op_code][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \reg_IDEX[op_code][6]_i_2_n_0\,
      Q => \reg_IDEX_reg[op_code_n_0_][6]\
    );
\reg_IDEX_reg[ra_instr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => ra_instr,
      Q => \reg_IDEX_reg[ra_instr]__0\
    );
\reg_IDEX_reg[rb_instr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rb_instr,
      Q => \reg_IDEX_reg[rb_instr]__0\
    );
\reg_IDEX_reg[rc_instr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rc_instr,
      Q => \reg_IDEX_reg[rc_instr]__0\
    );
\reg_IDEX_reg[regwr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => regwr,
      Q => \reg_IDEX_reg[regwr]__0\
    );
\reg_IDEX_reg[str_dest][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_49,
      Q => \reg_IDEX_reg[str_dest]__0\(0)
    );
\reg_IDEX_reg[str_dest][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_39,
      Q => \reg_IDEX_reg[str_dest]__0\(10)
    );
\reg_IDEX_reg[str_dest][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_38,
      Q => \reg_IDEX_reg[str_dest]__0\(11)
    );
\reg_IDEX_reg[str_dest][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_37,
      Q => \reg_IDEX_reg[str_dest]__0\(12)
    );
\reg_IDEX_reg[str_dest][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_36,
      Q => \reg_IDEX_reg[str_dest]__0\(13)
    );
\reg_IDEX_reg[str_dest][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_35,
      Q => \reg_IDEX_reg[str_dest]__0\(14)
    );
\reg_IDEX_reg[str_dest][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_34,
      Q => \reg_IDEX_reg[str_dest]__0\(15)
    );
\reg_IDEX_reg[str_dest][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_48,
      Q => \reg_IDEX_reg[str_dest]__0\(1)
    );
\reg_IDEX_reg[str_dest][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_47,
      Q => \reg_IDEX_reg[str_dest]__0\(2)
    );
\reg_IDEX_reg[str_dest][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_46,
      Q => \reg_IDEX_reg[str_dest]__0\(3)
    );
\reg_IDEX_reg[str_dest][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_45,
      Q => \reg_IDEX_reg[str_dest]__0\(4)
    );
\reg_IDEX_reg[str_dest][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_44,
      Q => \reg_IDEX_reg[str_dest]__0\(5)
    );
\reg_IDEX_reg[str_dest][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_43,
      Q => \reg_IDEX_reg[str_dest]__0\(6)
    );
\reg_IDEX_reg[str_dest][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_42,
      Q => \reg_IDEX_reg[str_dest]__0\(7)
    );
\reg_IDEX_reg[str_dest][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_41,
      Q => \reg_IDEX_reg[str_dest]__0\(8)
    );
\reg_IDEX_reg[str_dest][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => rf0_n_40,
      Q => \reg_IDEX_reg[str_dest]__0\(9)
    );
\reg_IFID[instr][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(0),
      I2 => spo(0),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(0)
    );
\reg_IFID[instr][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(10),
      I2 => spo(10),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(10)
    );
\reg_IFID[instr][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(11),
      I2 => spo(11),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(11)
    );
\reg_IFID[instr][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(12),
      I2 => spo(12),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(12)
    );
\reg_IFID[instr][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(13),
      I2 => spo(13),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(13)
    );
\reg_IFID[instr][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(14),
      I2 => spo(14),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(14)
    );
\reg_IFID[instr][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(15),
      I2 => spo(15),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(15)
    );
\reg_IFID[instr][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \PC__0\(14),
      I1 => \PC__0\(15),
      I2 => \PC__0\(11),
      I3 => \PC__0\(13),
      I4 => \PC__0\(12),
      O => \reg_IFID[instr][15]_i_2_n_0\
    );
\reg_IFID[instr][15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \PC__0\(14),
      I1 => \PC__0\(15),
      I2 => \PC__0\(13),
      I3 => \PC__0\(12),
      I4 => \PC__0\(11),
      O => \reg_IFID[instr][15]_i_3_n_0\
    );
\reg_IFID[instr][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(1),
      I2 => spo(1),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(1)
    );
\reg_IFID[instr][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(2),
      I2 => spo(2),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(2)
    );
\reg_IFID[instr][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(3),
      I2 => spo(3),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(3)
    );
\reg_IFID[instr][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(4),
      I2 => spo(4),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(4)
    );
\reg_IFID[instr][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(5),
      I2 => spo(5),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(5)
    );
\reg_IFID[instr][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(6),
      I2 => spo(6),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(6)
    );
\reg_IFID[instr][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(7),
      I2 => spo(7),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(7)
    );
\reg_IFID[instr][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(8),
      I2 => spo(8),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(8)
    );
\reg_IFID[instr][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \reg_IFID[instr][15]_i_2_n_0\,
      I1 => doutb(9),
      I2 => spo(9),
      I3 => \reg_IFID[instr][15]_i_3_n_0\,
      I4 => \reg_IDEX[op_code][6]_i_3_n_0\,
      O => p_1_in(9)
    );
\reg_IFID_reg[PC][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(0),
      Q => \reg_IFID_reg[PC]__0\(0)
    );
\reg_IFID_reg[PC][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(10),
      Q => \reg_IFID_reg[PC]__0\(10)
    );
\reg_IFID_reg[PC][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(11),
      Q => \reg_IFID_reg[PC]__0\(11)
    );
\reg_IFID_reg[PC][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(12),
      Q => \reg_IFID_reg[PC]__0\(12)
    );
\reg_IFID_reg[PC][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(13),
      Q => \reg_IFID_reg[PC]__0\(13)
    );
\reg_IFID_reg[PC][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(14),
      Q => \reg_IFID_reg[PC]__0\(14)
    );
\reg_IFID_reg[PC][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => \PC__0\(15),
      Q => \reg_IFID_reg[PC]__0\(15)
    );
\reg_IFID_reg[PC][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(1),
      Q => \reg_IFID_reg[PC]__0\(1)
    );
\reg_IFID_reg[PC][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(2),
      Q => \reg_IFID_reg[PC]__0\(2)
    );
\reg_IFID_reg[PC][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(3),
      Q => \reg_IFID_reg[PC]__0\(3)
    );
\reg_IFID_reg[PC][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(4),
      Q => \reg_IFID_reg[PC]__0\(4)
    );
\reg_IFID_reg[PC][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(5),
      Q => \reg_IFID_reg[PC]__0\(5)
    );
\reg_IFID_reg[PC][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(6),
      Q => \reg_IFID_reg[PC]__0\(6)
    );
\reg_IFID_reg[PC][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(7),
      Q => \reg_IFID_reg[PC]__0\(7)
    );
\reg_IFID_reg[PC][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(8),
      Q => \reg_IFID_reg[PC]__0\(8)
    );
\reg_IFID_reg[PC][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => PC(9),
      Q => \reg_IFID_reg[PC]__0\(9)
    );
\reg_IFID_reg[inport][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(0),
      Q => \reg_IFID_reg[inport]__0\(0)
    );
\reg_IFID_reg[inport][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(10),
      Q => \reg_IFID_reg[inport]__0\(10)
    );
\reg_IFID_reg[inport][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(11),
      Q => \reg_IFID_reg[inport]__0\(11)
    );
\reg_IFID_reg[inport][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(12),
      Q => \reg_IFID_reg[inport]__0\(12)
    );
\reg_IFID_reg[inport][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(13),
      Q => \reg_IFID_reg[inport]__0\(13)
    );
\reg_IFID_reg[inport][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(14),
      Q => \reg_IFID_reg[inport]__0\(14)
    );
\reg_IFID_reg[inport][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(15),
      Q => \reg_IFID_reg[inport]__0\(15)
    );
\reg_IFID_reg[inport][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(1),
      Q => \reg_IFID_reg[inport]__0\(1)
    );
\reg_IFID_reg[inport][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(2),
      Q => \reg_IFID_reg[inport]__0\(2)
    );
\reg_IFID_reg[inport][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(3),
      Q => \reg_IFID_reg[inport]__0\(3)
    );
\reg_IFID_reg[inport][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(4),
      Q => \reg_IFID_reg[inport]__0\(4)
    );
\reg_IFID_reg[inport][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(5),
      Q => \reg_IFID_reg[inport]__0\(5)
    );
\reg_IFID_reg[inport][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(6),
      Q => \reg_IFID_reg[inport]__0\(6)
    );
\reg_IFID_reg[inport][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(7),
      Q => \reg_IFID_reg[inport]__0\(7)
    );
\reg_IFID_reg[inport][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(8),
      Q => \reg_IFID_reg[inport]__0\(8)
    );
\reg_IFID_reg[inport][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => inport_IBUF(9),
      Q => \reg_IFID_reg[inport]__0\(9)
    );
\reg_IFID_reg[instr][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(0),
      Q => instr(0)
    );
\reg_IFID_reg[instr][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(10),
      Q => instr(10)
    );
\reg_IFID_reg[instr][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(11),
      Q => instr(11)
    );
\reg_IFID_reg[instr][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(12),
      Q => instr(12)
    );
\reg_IFID_reg[instr][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(13),
      Q => instr(13)
    );
\reg_IFID_reg[instr][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(14),
      Q => instr(14)
    );
\reg_IFID_reg[instr][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(15),
      Q => instr(15)
    );
\reg_IFID_reg[instr][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(1),
      Q => instr(1)
    );
\reg_IFID_reg[instr][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(2),
      Q => instr(2)
    );
\reg_IFID_reg[instr][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(3),
      Q => instr(3)
    );
\reg_IFID_reg[instr][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(4),
      Q => instr(4)
    );
\reg_IFID_reg[instr][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(5),
      Q => instr(5)
    );
\reg_IFID_reg[instr][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(6),
      Q => instr(6)
    );
\reg_IFID_reg[instr][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(7),
      Q => instr(7)
    );
\reg_IFID_reg[instr][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(8),
      Q => instr(8)
    );
\reg_IFID_reg[instr][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => alu0_n_56,
      CLR => rst_e_IBUF,
      D => p_1_in(9),
      Q => instr(9)
    );
\reg_MEMWR[op_code][6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_e_IBUF,
      O => \reg_MEMWR[op_code][6]_i_1_n_0\
    );
\reg_MEMWR[result][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => douta(0),
      I1 => \reg_MEMWR[result][15]_i_4_n_0\,
      I2 => mm_input_IBUF(0),
      I3 => \reg_MEMWR[result][11]_i_2_n_0\,
      I4 => \reg_MEMWR[result][0]_i_2_n_0\,
      O => \reg_MEMWR[result][0]_i_1_n_0\
    );
\reg_MEMWR[result][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(0),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][0]\,
      O => \reg_MEMWR[result][0]_i_2_n_0\
    );
\reg_MEMWR[result][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(10),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][10]_i_2_n_0\,
      I4 => mm_input_IBUF(10),
      O => \reg_MEMWR[result][10]_i_1_n_0\
    );
\reg_MEMWR[result][10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][2]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(10),
      O => \reg_MEMWR[result][10]_i_2_n_0\
    );
\reg_MEMWR[result][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => \reg_MEMWR[result][11]_i_2_n_0\,
      I1 => mm_input_IBUF(11),
      I2 => \reg_MEMWR[result][11]_i_3_n_0\,
      I3 => \reg_MEMWR[result][15]_i_4_n_0\,
      I4 => douta(11),
      O => \reg_MEMWR[result][11]_i_1_n_0\
    );
\reg_MEMWR[result][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \reg_MEMWR[result][11]_i_4_n_0\,
      I1 => \reg_MEMWR[result][11]_i_5_n_0\,
      I2 => \reg_MEMWR[result][11]_i_6_n_0\,
      I3 => \reg_MEMWR[result][11]_i_7_n_0\,
      I4 => alu0_n_56,
      O => \reg_MEMWR[result][11]_i_2_n_0\
    );
\reg_MEMWR[result][11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][3]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(11),
      O => \reg_MEMWR[result][11]_i_3_n_0\
    );
\reg_MEMWR[result][11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \mm_output[15]_i_7_n_0\,
      I1 => xpm_memory_dpdistram_inst_i_4_n_0,
      I2 => xpm_memory_dpdistram_inst_i_5_n_0,
      I3 => xpm_memory_dpdistram_inst_i_6_n_0,
      I4 => \reg_MEMWR[result][11]_i_8_n_0\,
      I5 => \reg_MEMWR[result][11]_i_9_n_0\,
      O => \reg_MEMWR[result][11]_i_4_n_0\
    );
\reg_MEMWR[result][11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(9),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][9]\,
      O => \reg_MEMWR[result][11]_i_5_n_0\
    );
\reg_MEMWR[result][11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(6),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][6]\,
      O => \reg_MEMWR[result][11]_i_6_n_0\
    );
\reg_MEMWR[result][11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mm_output[15]_i_4_n_0\,
      I1 => xpm_memory_dpdistram_inst_i_16_n_0,
      I2 => xpm_memory_dpdistram_inst_i_15_n_0,
      I3 => xpm_memory_dpdistram_inst_i_17_n_0,
      I4 => xpm_memory_dpdistram_inst_i_14_n_0,
      I5 => \reg_MEMWR[result][15]_i_5_n_0\,
      O => \reg_MEMWR[result][11]_i_7_n_0\
    );
\reg_MEMWR[result][11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5F335FFF"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][8]\,
      I1 => \reg_EXMEM_reg[result]__0\(8),
      I2 => \reg_EXMEM_reg[str_dest_n_0_][7]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[result]__0\(7),
      I5 => alu0_n_63,
      O => \reg_MEMWR[result][11]_i_8_n_0\
    );
\reg_MEMWR[result][11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5F335FFF"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][5]\,
      I1 => \reg_EXMEM_reg[result]__0\(5),
      I2 => \reg_EXMEM_reg[str_dest_n_0_][4]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[result]__0\(4),
      I5 => alu0_n_63,
      O => \reg_MEMWR[result][11]_i_9_n_0\
    );
\reg_MEMWR[result][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(12),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][12]_i_2_n_0\,
      I4 => mm_input_IBUF(12),
      O => \reg_MEMWR[result][12]_i_1_n_0\
    );
\reg_MEMWR[result][12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][4]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(12),
      O => \reg_MEMWR[result][12]_i_2_n_0\
    );
\reg_MEMWR[result][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(13),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][13]_i_2_n_0\,
      I4 => mm_input_IBUF(13),
      O => \reg_MEMWR[result][13]_i_1_n_0\
    );
\reg_MEMWR[result][13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][5]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(13),
      O => \reg_MEMWR[result][13]_i_2_n_0\
    );
\reg_MEMWR[result][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(14),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][14]_i_3_n_0\,
      I4 => mm_input_IBUF(14),
      O => \reg_MEMWR[result][14]_i_1_n_0\
    );
\reg_MEMWR[result][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(10),
      I1 => alu0_n_56,
      I2 => \reg_MEMWR[result][15]_i_5_n_0\,
      I3 => \reg_MEMWR[result][14]_i_4_n_0\,
      I4 => xpm_memory_dpdistram_inst_i_6_n_0,
      I5 => \mm_output[15]_i_4_n_0\,
      O => \reg_MEMWR[result][14]_i_2_n_0\
    );
\reg_MEMWR[result][14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => p_1_in0_in(0),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(14),
      O => \reg_MEMWR[result][14]_i_3_n_0\
    );
\reg_MEMWR[result][14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0A0F0F0F0A0C0C"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][13]\,
      I1 => \reg_EXMEM_reg[result]__0\(13),
      I2 => alu0_n_63,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][12]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I5 => \reg_EXMEM_reg[result]__0\(12),
      O => \reg_MEMWR[result][14]_i_4_n_0\
    );
\reg_MEMWR[result][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => \reg_MEMWR[result][15]_i_2_n_0\,
      I1 => mm_input_IBUF(15),
      I2 => \reg_MEMWR[result][15]_i_3_n_0\,
      I3 => \reg_MEMWR[result][15]_i_4_n_0\,
      I4 => douta(15),
      O => \reg_MEMWR[result][15]_i_1_n_0\
    );
\reg_MEMWR[result][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \mm_output[15]_i_2_n_0\,
      I1 => \mm_output[15]_i_4_n_0\,
      I2 => alu0_n_56,
      I3 => \reg_EXMEM_reg[result]__0\(1),
      I4 => \mm_output[15]_i_5_n_0\,
      O => \reg_MEMWR[result][15]_i_2_n_0\
    );
\reg_MEMWR[result][15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => p_1_in0_in(1),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(15),
      O => \reg_MEMWR[result][15]_i_3_n_0\
    );
\reg_MEMWR[result][15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \mm_output[15]_i_4_n_0\,
      I1 => \reg_MEMWR[result][15]_i_5_n_0\,
      I2 => xpm_memory_dpdistram_inst_i_4_n_0,
      I3 => \reg_MEMWR[result][15]_i_6_n_0\,
      I4 => xpm_memory_dpdistram_inst_i_5_n_0,
      O => \reg_MEMWR[result][15]_i_4_n_0\
    );
\reg_MEMWR[result][15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[result]__0\(14),
      I2 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][14]\,
      O => \reg_MEMWR[result][15]_i_5_n_0\
    );
\reg_MEMWR[result][15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBAAABA"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_6_n_0,
      I1 => alu0_n_63,
      I2 => \reg_EXMEM_reg[result]__0\(10),
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[str_dest_n_0_][10]\,
      I5 => alu0_n_56,
      O => \reg_MEMWR[result][15]_i_6_n_0\
    );
\reg_MEMWR[result][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => douta(1),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][1]_i_2_n_0\,
      I3 => mm_input_IBUF(1),
      I4 => \reg_MEMWR[result][15]_i_2_n_0\,
      O => \reg_MEMWR[result][1]_i_1_n_0\
    );
\reg_MEMWR[result][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(1),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][1]\,
      O => \reg_MEMWR[result][1]_i_2_n_0\
    );
\reg_MEMWR[result][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => douta(2),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][2]_i_2_n_0\,
      I3 => mm_input_IBUF(2),
      I4 => \reg_MEMWR[result][15]_i_2_n_0\,
      O => \reg_MEMWR[result][2]_i_1_n_0\
    );
\reg_MEMWR[result][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(2),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][2]\,
      O => \reg_MEMWR[result][2]_i_2_n_0\
    );
\reg_MEMWR[result][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => douta(3),
      I1 => \reg_MEMWR[result][15]_i_4_n_0\,
      I2 => mm_input_IBUF(3),
      I3 => \reg_MEMWR[result][11]_i_2_n_0\,
      I4 => \reg_MEMWR[result][3]_i_2_n_0\,
      O => \reg_MEMWR[result][3]_i_1_n_0\
    );
\reg_MEMWR[result][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(3),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][3]\,
      O => \reg_MEMWR[result][3]_i_2_n_0\
    );
\reg_MEMWR[result][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B888B8B8"
    )
        port map (
      I0 => douta(4),
      I1 => \reg_MEMWR[result][15]_i_4_n_0\,
      I2 => \reg_MEMWR[result][4]_i_2_n_0\,
      I3 => mm_input_IBUF(4),
      I4 => \reg_MEMWR[result][11]_i_2_n_0\,
      O => \reg_MEMWR[result][4]_i_1_n_0\
    );
\reg_MEMWR[result][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(4),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][4]\,
      O => \reg_MEMWR[result][4]_i_2_n_0\
    );
\reg_MEMWR[result][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(5),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][5]_i_2_n_0\,
      I4 => mm_input_IBUF(5),
      O => \reg_MEMWR[result][5]_i_1_n_0\
    );
\reg_MEMWR[result][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(5),
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[instr_n_0_][5]\,
      O => \reg_MEMWR[result][5]_i_2_n_0\
    );
\reg_MEMWR[result][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(6),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][6]_i_2_n_0\,
      I4 => mm_input_IBUF(6),
      O => \reg_MEMWR[result][6]_i_1_n_0\
    );
\reg_MEMWR[result][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(6),
      I2 => p_1_in0_in(2),
      I3 => p_1_in0_in(0),
      O => \reg_MEMWR[result][6]_i_2_n_0\
    );
\reg_MEMWR[result][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(7),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][7]_i_2_n_0\,
      I4 => mm_input_IBUF(7),
      O => \reg_MEMWR[result][7]_i_1_n_0\
    );
\reg_MEMWR[result][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[result]__0\(7),
      I2 => p_1_in0_in(2),
      I3 => p_1_in0_in(1),
      O => \reg_MEMWR[result][7]_i_2_n_0\
    );
\reg_MEMWR[result][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(8),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][8]_i_2_n_0\,
      I4 => mm_input_IBUF(8),
      O => \reg_MEMWR[result][8]_i_1_n_0\
    );
\reg_MEMWR[result][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][0]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(8),
      O => \reg_MEMWR[result][8]_i_2_n_0\
    );
\reg_MEMWR[result][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => douta(9),
      I1 => \reg_MEMWR[result][14]_i_2_n_0\,
      I2 => \reg_MEMWR[result][15]_i_2_n_0\,
      I3 => \reg_MEMWR[result][9]_i_2_n_0\,
      I4 => mm_input_IBUF(9),
      O => \reg_MEMWR[result][9]_i_1_n_0\
    );
\reg_MEMWR[result][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => alu0_n_57,
      I1 => \reg_EXMEM_reg[instr_n_0_][1]\,
      I2 => p_1_in0_in(2),
      I3 => \reg_EXMEM_reg[result]__0\(9),
      O => \reg_MEMWR[result][9]_i_2_n_0\
    );
\reg_MEMWR_reg[instr][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => p_1_in0_in(0),
      Q => \reg_MEMWR[instr]\(6)
    );
\reg_MEMWR_reg[instr][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => p_1_in0_in(1),
      Q => \reg_MEMWR[instr]\(7)
    );
\reg_MEMWR_reg[instr][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => p_1_in0_in(2),
      Q => \reg_MEMWR[instr]\(8)
    );
\reg_MEMWR_reg[op_code][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][0]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][0]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][1]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][1]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][2]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][2]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][3]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][3]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][4]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][4]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][5]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][5]\,
      R => '0'
    );
\reg_MEMWR_reg[op_code][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \reg_MEMWR[op_code][6]_i_1_n_0\,
      D => \reg_EXMEM_reg[op_code_n_0_][6]\,
      Q => \reg_MEMWR_reg[op_code_n_0_][6]\,
      R => '0'
    );
\reg_MEMWR_reg[regwr]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_EXMEM_reg[regwr]__0\,
      Q => \reg_MEMWR_reg[regwr]__0\
    );
\reg_MEMWR_reg[result][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][0]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][0]\
    );
\reg_MEMWR_reg[result][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][10]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][10]\
    );
\reg_MEMWR_reg[result][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][11]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][11]\
    );
\reg_MEMWR_reg[result][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][12]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][12]\
    );
\reg_MEMWR_reg[result][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][13]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][13]\
    );
\reg_MEMWR_reg[result][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][14]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][14]\
    );
\reg_MEMWR_reg[result][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][15]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][15]\
    );
\reg_MEMWR_reg[result][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][1]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][1]\
    );
\reg_MEMWR_reg[result][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][2]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][2]\
    );
\reg_MEMWR_reg[result][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][3]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][3]\
    );
\reg_MEMWR_reg[result][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][4]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][4]\
    );
\reg_MEMWR_reg[result][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][5]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][5]\
    );
\reg_MEMWR_reg[result][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][6]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][6]\
    );
\reg_MEMWR_reg[result][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][7]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][7]\
    );
\reg_MEMWR_reg[result][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][8]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][8]\
    );
\reg_MEMWR_reg[result][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_e_IBUF,
      D => \reg_MEMWR[result][9]_i_1_n_0\,
      Q => \reg_MEMWR_reg[result_n_0_][9]\
    );
rf0: entity work.REGISTER_FILE
     port map (
      D(15) => rf0_n_2,
      D(14) => rf0_n_3,
      D(13) => rf0_n_4,
      D(12) => rf0_n_5,
      D(11) => rf0_n_6,
      D(10) => rf0_n_7,
      D(9) => rf0_n_8,
      D(8) => rf0_n_9,
      D(7) => rf0_n_10,
      D(6) => rf0_n_11,
      D(5) => rf0_n_12,
      D(4) => rf0_n_13,
      D(3) => rf0_n_14,
      D(2) => rf0_n_15,
      D(1) => rf0_n_16,
      D(0) => rf0_n_17,
      Q(6) => \reg_MEMWR_reg[op_code_n_0_][6]\,
      Q(5) => \reg_MEMWR_reg[op_code_n_0_][5]\,
      Q(4) => \reg_MEMWR_reg[op_code_n_0_][4]\,
      Q(3) => \reg_MEMWR_reg[op_code_n_0_][3]\,
      Q(2) => \reg_MEMWR_reg[op_code_n_0_][2]\,
      Q(1) => \reg_MEMWR_reg[op_code_n_0_][1]\,
      Q(0) => \reg_MEMWR_reg[op_code_n_0_][0]\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \reg_EXMEM_reg[n_flag]\ => \reg_IDEX[op_code][6]_i_3_n_0\,
      \reg_IDEX_reg[data2][15]\(15) => rf0_n_18,
      \reg_IDEX_reg[data2][15]\(14) => rf0_n_19,
      \reg_IDEX_reg[data2][15]\(13) => rf0_n_20,
      \reg_IDEX_reg[data2][15]\(12) => rf0_n_21,
      \reg_IDEX_reg[data2][15]\(11) => rf0_n_22,
      \reg_IDEX_reg[data2][15]\(10) => rf0_n_23,
      \reg_IDEX_reg[data2][15]\(9) => rf0_n_24,
      \reg_IDEX_reg[data2][15]\(8) => rf0_n_25,
      \reg_IDEX_reg[data2][15]\(7) => rf0_n_26,
      \reg_IDEX_reg[data2][15]\(6) => rf0_n_27,
      \reg_IDEX_reg[data2][15]\(5) => rf0_n_28,
      \reg_IDEX_reg[data2][15]\(4) => rf0_n_29,
      \reg_IDEX_reg[data2][15]\(3) => rf0_n_30,
      \reg_IDEX_reg[data2][15]\(2) => rf0_n_31,
      \reg_IDEX_reg[data2][15]\(1) => rf0_n_32,
      \reg_IDEX_reg[data2][15]\(0) => rf0_n_33,
      \reg_IDEX_reg[str_dest][15]\(15) => rf0_n_34,
      \reg_IDEX_reg[str_dest][15]\(14) => rf0_n_35,
      \reg_IDEX_reg[str_dest][15]\(13) => rf0_n_36,
      \reg_IDEX_reg[str_dest][15]\(12) => rf0_n_37,
      \reg_IDEX_reg[str_dest][15]\(11) => rf0_n_38,
      \reg_IDEX_reg[str_dest][15]\(10) => rf0_n_39,
      \reg_IDEX_reg[str_dest][15]\(9) => rf0_n_40,
      \reg_IDEX_reg[str_dest][15]\(8) => rf0_n_41,
      \reg_IDEX_reg[str_dest][15]\(7) => rf0_n_42,
      \reg_IDEX_reg[str_dest][15]\(6) => rf0_n_43,
      \reg_IDEX_reg[str_dest][15]\(5) => rf0_n_44,
      \reg_IDEX_reg[str_dest][15]\(4) => rf0_n_45,
      \reg_IDEX_reg[str_dest][15]\(3) => rf0_n_46,
      \reg_IDEX_reg[str_dest][15]\(2) => rf0_n_47,
      \reg_IDEX_reg[str_dest][15]\(1) => rf0_n_48,
      \reg_IDEX_reg[str_dest][15]\(0) => rf0_n_49,
      \reg_IFID_reg[PC][15]\(15 downto 0) => \reg_IFID_reg[PC]__0\(15 downto 0),
      \reg_IFID_reg[inport][15]\(15 downto 0) => \reg_IFID_reg[inport]__0\(15 downto 0),
      \reg_IFID_reg[instr][0]\ => \reg_IDEX[data2][1]_i_3_n_0\,
      \reg_IFID_reg[instr][10]\(9 downto 8) => instr(10 downto 9),
      \reg_IFID_reg[instr][10]\(7 downto 0) => instr(7 downto 0),
      \reg_IFID_reg[instr][10]_0\ => \reg_IDEX[data1][15]_i_10_n_0\,
      \reg_IFID_reg[instr][11]\ => \reg_IDEX[data1][15]_i_2_n_0\,
      \reg_IFID_reg[instr][11]_0\ => \reg_IDEX[data2][15]_i_5_n_0\,
      \reg_IFID_reg[instr][11]_1\ => \reg_IDEX[data1][15]_i_8_n_0\,
      \reg_IFID_reg[instr][11]_2\ => \reg_IDEX[str_dest][15]_i_2_n_0\,
      \reg_IFID_reg[instr][15]\ => \reg_IDEX[data2][5]_i_5_n_0\,
      \reg_IFID_reg[instr][15]_0\ => \reg_IDEX[data2][0]_i_2_n_0\,
      \reg_IFID_reg[instr][3]\ => \reg_IDEX[data2][5]_i_4_n_0\,
      \reg_IFID_reg[instr][3]_0\ => \reg_IDEX[str_dest][15]_i_8_n_0\,
      \reg_IFID_reg[instr][3]_1\ => \reg_IDEX[data2][5]_i_10_n_0\,
      \reg_IFID_reg[instr][4]\ => \reg_IDEX[data2][15]_i_4_n_0\,
      \reg_IFID_reg[instr][4]_0\ => \reg_IDEX[data2][5]_i_9_n_0\,
      \reg_IFID_reg[instr][5]\ => \reg_IDEX[str_dest][15]_i_6_n_0\,
      \reg_IFID_reg[instr][5]_0\ => \reg_IDEX[data2][5]_i_6_n_0\,
      \reg_IFID_reg[instr][7]\ => \reg_IDEX[str_dest][15]_i_7_n_0\,
      \reg_IFID_reg[instr][9]\ => \reg_IDEX[data1][15]_i_3_n_0\,
      \reg_IFID_reg[instr][9]_0\ => \reg_IDEX[data1][15]_i_6_n_0\,
      \reg_IFID_reg[instr][9]_1\ => \reg_IDEX[data2][5]_i_2_n_0\,
      \reg_IFID_reg[instr][9]_2\ => \reg_IDEX[data1][15]_i_11_n_0\,
      \reg_IFID_reg[instr][9]_3\ => \reg_IDEX[rb_instr]_i_2_n_0\,
      \reg_IFID_reg[instr][9]_4\ => \reg_IDEX[data1][15]_i_7_n_0\,
      \reg_IFID_reg[instr][9]_5\ => \reg_IDEX[data2][15]_i_3_n_0\,
      \reg_MEMWR_reg[instr][8]\(2 downto 0) => \reg_MEMWR[instr]\(8 downto 6),
      \reg_MEMWR_reg[result][15]\(15) => \reg_MEMWR_reg[result_n_0_][15]\,
      \reg_MEMWR_reg[result][15]\(14) => \reg_MEMWR_reg[result_n_0_][14]\,
      \reg_MEMWR_reg[result][15]\(13) => \reg_MEMWR_reg[result_n_0_][13]\,
      \reg_MEMWR_reg[result][15]\(12) => \reg_MEMWR_reg[result_n_0_][12]\,
      \reg_MEMWR_reg[result][15]\(11) => \reg_MEMWR_reg[result_n_0_][11]\,
      \reg_MEMWR_reg[result][15]\(10) => \reg_MEMWR_reg[result_n_0_][10]\,
      \reg_MEMWR_reg[result][15]\(9) => \reg_MEMWR_reg[result_n_0_][9]\,
      \reg_MEMWR_reg[result][15]\(8) => \reg_MEMWR_reg[result_n_0_][8]\,
      \reg_MEMWR_reg[result][15]\(7) => \reg_MEMWR_reg[result_n_0_][7]\,
      \reg_MEMWR_reg[result][15]\(6) => \reg_MEMWR_reg[result_n_0_][6]\,
      \reg_MEMWR_reg[result][15]\(5) => \reg_MEMWR_reg[result_n_0_][5]\,
      \reg_MEMWR_reg[result][15]\(4) => \reg_MEMWR_reg[result_n_0_][4]\,
      \reg_MEMWR_reg[result][15]\(3) => \reg_MEMWR_reg[result_n_0_][3]\,
      \reg_MEMWR_reg[result][15]\(2) => \reg_MEMWR_reg[result_n_0_][2]\,
      \reg_MEMWR_reg[result][15]\(1) => \reg_MEMWR_reg[result_n_0_][1]\,
      \reg_MEMWR_reg[result][15]\(0) => \reg_MEMWR_reg[result_n_0_][0]\,
      \reg_file_reg[4][15]_0\ => rf0_n_0,
      \reg_file_reg[4][15]_1\ => rf0_n_1,
      rst_e_IBUF => rst_e_IBUF
    );
rom0: entity work.DIST_ROM_1024
     port map (
      a(8 downto 0) => PC(9 downto 1),
      spo(15 downto 0) => spo(15 downto 0)
    );
rst_e_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_e,
      O => rst_e_IBUF
    );
rst_l_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_l,
      O => rst_l_IBUF
    );
xpm_memory_dpdistram_inst: entity work.xpm_memory_dpdistram
     port map (
      addra(15) => xpm_memory_dpdistram_inst_i_2_n_0,
      addra(14) => xpm_memory_dpdistram_inst_i_3_n_0,
      addra(13) => xpm_memory_dpdistram_inst_i_4_n_0,
      addra(12) => xpm_memory_dpdistram_inst_i_5_n_0,
      addra(11) => xpm_memory_dpdistram_inst_i_6_n_0,
      addra(10) => xpm_memory_dpdistram_inst_i_7_n_0,
      addra(9) => xpm_memory_dpdistram_inst_i_8_n_0,
      addra(8) => xpm_memory_dpdistram_inst_i_9_n_0,
      addra(7) => xpm_memory_dpdistram_inst_i_10_n_0,
      addra(6) => xpm_memory_dpdistram_inst_i_11_n_0,
      addra(5) => xpm_memory_dpdistram_inst_i_12_n_0,
      addra(4) => xpm_memory_dpdistram_inst_i_13_n_0,
      addra(3) => xpm_memory_dpdistram_inst_i_14_n_0,
      addra(2) => xpm_memory_dpdistram_inst_i_15_n_0,
      addra(1) => xpm_memory_dpdistram_inst_i_16_n_0,
      addra(0) => xpm_memory_dpdistram_inst_i_17_n_0,
      addrb(15) => xpm_memory_dpdistram_inst_i_34_n_5,
      addrb(14) => xpm_memory_dpdistram_inst_i_34_n_6,
      addrb(13) => xpm_memory_dpdistram_inst_i_34_n_7,
      addrb(12) => xpm_memory_dpdistram_inst_i_35_n_4,
      addrb(11) => xpm_memory_dpdistram_inst_i_35_n_5,
      addrb(10) => xpm_memory_dpdistram_inst_i_35_n_6,
      addrb(9) => xpm_memory_dpdistram_inst_i_35_n_7,
      addrb(8 downto 0) => PC(9 downto 1),
      clka => clk_IBUF_BUFG,
      clkb => clk_IBUF_BUFG,
      dina(15 downto 0) => dina(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => '1',
      enb => '1',
      regcea => '1',
      regceb => '1',
      rsta => rst_e_IBUF,
      rstb => rst_e_IBUF,
      wea(0) => wea
    );
xpm_memory_dpdistram_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => alu0_n_63,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => xpm_memory_dpdistram_inst_i_38_n_0,
      O => wea
    );
xpm_memory_dpdistram_inst_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][7]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(7),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_10_n_0
    );
xpm_memory_dpdistram_inst_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][6]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(6),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_11_n_0
    );
xpm_memory_dpdistram_inst_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][5]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(5),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_12_n_0
    );
xpm_memory_dpdistram_inst_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][4]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(4),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_13_n_0
    );
xpm_memory_dpdistram_inst_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(3),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][3]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_14_n_0
    );
xpm_memory_dpdistram_inst_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(2),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][2]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_15_n_0
    );
xpm_memory_dpdistram_inst_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(1),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][1]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_16_n_0
    );
xpm_memory_dpdistram_inst_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(0),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][0]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_17_n_0
    );
xpm_memory_dpdistram_inst_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(15),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(15)
    );
xpm_memory_dpdistram_inst_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(14),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(14)
    );
xpm_memory_dpdistram_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][15]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(15),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_2_n_0
    );
xpm_memory_dpdistram_inst_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(13),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(13)
    );
xpm_memory_dpdistram_inst_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(12),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(12)
    );
xpm_memory_dpdistram_inst_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(11),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(11)
    );
xpm_memory_dpdistram_inst_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(10),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(10)
    );
xpm_memory_dpdistram_inst_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(9),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(9)
    );
xpm_memory_dpdistram_inst_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(8),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(8)
    );
xpm_memory_dpdistram_inst_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(7),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(7)
    );
xpm_memory_dpdistram_inst_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(6),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(6)
    );
xpm_memory_dpdistram_inst_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(5),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(5)
    );
xpm_memory_dpdistram_inst_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(4),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(4)
    );
xpm_memory_dpdistram_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][14]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(14),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_3_n_0
    );
xpm_memory_dpdistram_inst_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(3),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(3)
    );
xpm_memory_dpdistram_inst_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(2),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(2)
    );
xpm_memory_dpdistram_inst_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(1),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(1)
    );
xpm_memory_dpdistram_inst_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => xpm_memory_dpdistram_inst_i_39_n_0,
      I1 => \reg_EXMEM_reg[result]__0\(0),
      I2 => \reg_EXMEM_reg[op_code_n_0_][3]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I4 => \reg_EXMEM_reg[op_code_n_0_][4]\,
      O => dina(0)
    );
xpm_memory_dpdistram_inst_i_34: unisim.vcomponents.CARRY4
     port map (
      CI => xpm_memory_dpdistram_inst_i_35_n_0,
      CO(3 downto 2) => NLW_xpm_memory_dpdistram_inst_i_34_CO_UNCONNECTED(3 downto 2),
      CO(1) => xpm_memory_dpdistram_inst_i_34_n_2,
      CO(0) => xpm_memory_dpdistram_inst_i_34_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \PC__0\(15 downto 14),
      O(3) => NLW_xpm_memory_dpdistram_inst_i_34_O_UNCONNECTED(3),
      O(2) => xpm_memory_dpdistram_inst_i_34_n_5,
      O(1) => xpm_memory_dpdistram_inst_i_34_n_6,
      O(0) => xpm_memory_dpdistram_inst_i_34_n_7,
      S(3 downto 2) => B"01",
      S(1) => xpm_memory_dpdistram_inst_i_40_n_0,
      S(0) => xpm_memory_dpdistram_inst_i_41_n_0
    );
xpm_memory_dpdistram_inst_i_35: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => xpm_memory_dpdistram_inst_i_35_n_0,
      CO(2) => xpm_memory_dpdistram_inst_i_35_n_1,
      CO(1) => xpm_memory_dpdistram_inst_i_35_n_2,
      CO(0) => xpm_memory_dpdistram_inst_i_35_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \PC__0\(13 downto 11),
      DI(0) => '0',
      O(3) => xpm_memory_dpdistram_inst_i_35_n_4,
      O(2) => xpm_memory_dpdistram_inst_i_35_n_5,
      O(1) => xpm_memory_dpdistram_inst_i_35_n_6,
      O(0) => xpm_memory_dpdistram_inst_i_35_n_7,
      S(3) => xpm_memory_dpdistram_inst_i_42_n_0,
      S(2) => xpm_memory_dpdistram_inst_i_43_n_0,
      S(1) => xpm_memory_dpdistram_inst_i_44_n_0,
      S(0) => \PC__0\(10)
    );
xpm_memory_dpdistram_inst_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \PC_reg[1]_P_n_0\,
      I1 => \PC_reg[1]_LDC_n_0\,
      I2 => \PC_reg[1]_C_n_0\,
      O => PC(1)
    );
xpm_memory_dpdistram_inst_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][12]\,
      I1 => \reg_EXMEM_reg[str_dest_n_0_][10]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][14]\,
      I3 => \reg_EXMEM_reg[str_dest_n_0_][15]\,
      I4 => \reg_EXMEM_reg[str_dest_n_0_][11]\,
      I5 => \reg_EXMEM_reg[str_dest_n_0_][13]\,
      O => xpm_memory_dpdistram_inst_i_38_n_0
    );
xpm_memory_dpdistram_inst_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg_EXMEM_reg[op_code_n_0_][6]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][5]\,
      I2 => \reg_EXMEM_reg[op_code_n_0_][1]\,
      I3 => \reg_EXMEM_reg[op_code_n_0_][2]\,
      O => xpm_memory_dpdistram_inst_i_39_n_0
    );
xpm_memory_dpdistram_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(13),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][13]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_4_n_0
    );
xpm_memory_dpdistram_inst_i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PC__0\(15),
      O => xpm_memory_dpdistram_inst_i_40_n_0
    );
xpm_memory_dpdistram_inst_i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PC__0\(14),
      O => xpm_memory_dpdistram_inst_i_41_n_0
    );
xpm_memory_dpdistram_inst_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PC__0\(13),
      O => xpm_memory_dpdistram_inst_i_42_n_0
    );
xpm_memory_dpdistram_inst_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PC__0\(12),
      O => xpm_memory_dpdistram_inst_i_43_n_0
    );
xpm_memory_dpdistram_inst_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PC__0\(11),
      O => xpm_memory_dpdistram_inst_i_44_n_0
    );
xpm_memory_dpdistram_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(12),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][12]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_5_n_0
    );
xpm_memory_dpdistram_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_EXMEM_reg[result]__0\(11),
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[str_dest_n_0_][11]\,
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_6_n_0
    );
xpm_memory_dpdistram_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][10]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(10),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_7_n_0
    );
xpm_memory_dpdistram_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][9]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(9),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_8_n_0
    );
xpm_memory_dpdistram_inst_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \reg_EXMEM_reg[str_dest_n_0_][8]\,
      I1 => \reg_EXMEM_reg[op_code_n_0_][0]\,
      I2 => \reg_EXMEM_reg[result]__0\(8),
      I3 => alu0_n_63,
      O => xpm_memory_dpdistram_inst_i_9_n_0
    );
end STRUCTURE;
