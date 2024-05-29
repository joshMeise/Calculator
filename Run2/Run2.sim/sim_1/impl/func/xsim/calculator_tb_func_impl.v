// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue May 28 08:24:40 2024
// Host        : mecha-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               O:/ENGS31/Proj/Run2/Run2.sim/sim_1/impl/func/xsim/calculator_tb_func_impl.v
// Design      : calculator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module buttonInterface
   (mpDelayReg,
    sumExtPort_IBUF,
    clkPort);
  output mpDelayReg;
  input sumExtPort_IBUF;
  input clkPort;

  wire clkPort;
  wire mpDelayReg;
  wire sumExtPort_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    mpDelayReg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(sumExtPort_IBUF),
        .Q(mpDelayReg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "buttonInterface" *) 
module buttonInterface_0
   (mpDelayReg,
    mpDelayReg_reg_0,
    loadExtPort_IBUF,
    clkPort,
    mpDelayReg_0,
    resetExtPort_IBUF);
  output mpDelayReg;
  output mpDelayReg_reg_0;
  input loadExtPort_IBUF;
  input clkPort;
  input mpDelayReg_0;
  input resetExtPort_IBUF;

  wire clkPort;
  wire loadExtPort_IBUF;
  wire mpDelayReg;
  wire mpDelayReg_0;
  wire mpDelayReg_reg_0;
  wire resetExtPort_IBUF;

  LUT4 #(
    .INIT(16'hD0DD)) 
    \FSM_sequential_cs[4]_i_8 
       (.I0(loadExtPort_IBUF),
        .I1(mpDelayReg),
        .I2(mpDelayReg_0),
        .I3(resetExtPort_IBUF),
        .O(mpDelayReg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    mpDelayReg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(loadExtPort_IBUF),
        .Q(mpDelayReg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "buttonInterface" *) 
module buttonInterface_1
   (mpDelayReg,
    multExtPort_IBUF,
    clkPort);
  output mpDelayReg;
  input multExtPort_IBUF;
  input clkPort;

  wire clkPort;
  wire mpDelayReg;
  wire multExtPort_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    mpDelayReg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(multExtPort_IBUF),
        .Q(mpDelayReg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "buttonInterface" *) 
module buttonInterface_2
   (mpDelayReg,
    mpDelayReg_reg_0,
    resetExtPort_IBUF,
    clkPort,
    \FSM_sequential_cs[4]_i_3 ,
    multExtPort_IBUF,
    mpDelayReg_0,
    \FSM_sequential_cs[4]_i_3_0 );
  output mpDelayReg;
  output mpDelayReg_reg_0;
  input resetExtPort_IBUF;
  input clkPort;
  input \FSM_sequential_cs[4]_i_3 ;
  input multExtPort_IBUF;
  input mpDelayReg_0;
  input [0:0]\FSM_sequential_cs[4]_i_3_0 ;

  wire \FSM_sequential_cs[4]_i_3 ;
  wire [0:0]\FSM_sequential_cs[4]_i_3_0 ;
  wire clkPort;
  wire mpDelayReg;
  wire mpDelayReg_0;
  wire mpDelayReg_reg_0;
  wire multExtPort_IBUF;
  wire resetExtPort_IBUF;

  LUT6 #(
    .INIT(64'h00000000D0D000D0)) 
    \FSM_sequential_cs[4]_i_7 
       (.I0(resetExtPort_IBUF),
        .I1(mpDelayReg),
        .I2(\FSM_sequential_cs[4]_i_3 ),
        .I3(multExtPort_IBUF),
        .I4(mpDelayReg_0),
        .I5(\FSM_sequential_cs[4]_i_3_0 ),
        .O(mpDelayReg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    mpDelayReg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(resetExtPort_IBUF),
        .Q(mpDelayReg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "buttonInterface" *) 
module buttonInterface_3
   (mpDelayReg_reg_0,
    mpDelayReg_reg_1,
    subExtPort_IBUF,
    clkPort,
    mpDelayReg,
    sumExtPort_IBUF);
  output mpDelayReg_reg_0;
  output mpDelayReg_reg_1;
  input subExtPort_IBUF;
  input clkPort;
  input mpDelayReg;
  input sumExtPort_IBUF;

  wire clkPort;
  wire mpDelayReg;
  wire mpDelayReg_0;
  wire mpDelayReg_reg_0;
  wire mpDelayReg_reg_1;
  wire subExtPort_IBUF;
  wire sumExtPort_IBUF;

  LUT4 #(
    .INIT(16'hDFDD)) 
    \FSM_sequential_cs[0]_i_2 
       (.I0(subExtPort_IBUF),
        .I1(mpDelayReg_0),
        .I2(mpDelayReg),
        .I3(sumExtPort_IBUF),
        .O(mpDelayReg_reg_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \FSM_sequential_cs[1]_i_3 
       (.I0(subExtPort_IBUF),
        .I1(mpDelayReg_0),
        .I2(mpDelayReg),
        .I3(sumExtPort_IBUF),
        .O(mpDelayReg_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    mpDelayReg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(subExtPort_IBUF),
        .Q(mpDelayReg_0),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "a4392f3f" *) 
(* NotValidForBitStream *)
module calculator
   (clkExtPort,
    sumExtPort,
    multExtPort,
    subExtPort,
    loadExtPort,
    resetExtPort,
    inputExtPort,
    TxExtPort);
  input clkExtPort;
  input sumExtPort;
  input multExtPort;
  input subExtPort;
  input loadExtPort;
  input resetExtPort;
  input [15:0]inputExtPort;
  output TxExtPort;

  wire [15:0]A;
  wire TxExtPort;
  wire TxExtPort_OBUF;
  wire [7:0]ansMaxAddr;
  wire [15:0]ansPort;
  wire [7:0]\ansReg[0] ;
  wire [7:0]\ansReg[1] ;
  wire [7:0]\ansReg[2] ;
  wire [7:0]\ansReg[3] ;
  wire [7:0]\ansReg[4] ;
  wire [7:0]\ansReg[5] ;
  wire [7:0]\ansReg[6] ;
  wire [7:0]\ansReg[7] ;
  wire chNeg;
  wire clkExtPort;
  wire clkExtPort_IBUF;
  wire clkExtPort_IBUF_BUFG;
  wire clkPort;
  wire controller_n_0;
  wire controller_n_26;
  wire controller_n_28;
  wire controller_n_30;
  wire controller_n_31;
  wire controller_n_32;
  wire controller_n_33;
  wire controller_n_34;
  wire controller_n_35;
  wire controller_n_36;
  wire controller_n_37;
  wire controller_n_38;
  wire controller_n_39;
  wire controller_n_40;
  wire controller_n_41;
  wire controller_n_42;
  wire controller_n_43;
  wire controller_n_44;
  wire controller_n_45;
  wire controller_n_46;
  wire controller_n_6;
  wire controller_n_7;
  wire controller_n_8;
  wire controller_n_9;
  wire convert;
  wire count;
  wire [4:0]cs;
  wire \dig[0]_i_22_n_0 ;
  wire \dig[0]_i_23_n_0 ;
  wire \dig[0]_i_24_n_0 ;
  wire \dig[0]_i_25_n_0 ;
  wire \dig[0]_i_26_n_0 ;
  wire \dig[0]_i_42_n_0 ;
  wire \dig[0]_i_43_n_0 ;
  wire \dig[0]_i_44_n_0 ;
  wire \dig[0]_i_45_n_0 ;
  wire \dig[0]_i_46_n_0 ;
  wire \dig[0]_i_47_n_0 ;
  wire \dig[0]_i_48_n_0 ;
  wire \dig[0]_i_49_n_0 ;
  wire \dig[0]_i_65_n_0 ;
  wire \dig[0]_i_66_n_0 ;
  wire \dig[0]_i_67_n_0 ;
  wire \dig[0]_i_68_n_0 ;
  wire \dig[0]_i_69_n_0 ;
  wire \dig[0]_i_70_n_0 ;
  wire \dig[0]_i_71_n_0 ;
  wire \dig[2]_i_100_n_0 ;
  wire \dig[2]_i_103_n_0 ;
  wire \dig[2]_i_117_n_0 ;
  wire \dig[2]_i_118_n_0 ;
  wire \dig[2]_i_119_n_0 ;
  wire \dig[2]_i_120_n_0 ;
  wire \dig[2]_i_124_n_0 ;
  wire \dig[2]_i_125_n_0 ;
  wire \dig[2]_i_126_n_0 ;
  wire \dig[2]_i_127_n_0 ;
  wire \dig[2]_i_47_n_0 ;
  wire \dig[2]_i_48_n_0 ;
  wire \dig[2]_i_69_n_0 ;
  wire \dig[2]_i_70_n_0 ;
  wire \dig[2]_i_71_n_0 ;
  wire \dig[2]_i_72_n_0 ;
  wire \dig[2]_i_97_n_0 ;
  wire \dig[2]_i_98_n_0 ;
  wire \dig[2]_i_99_n_0 ;
  wire \dig[3]_i_22_n_0 ;
  wire \dig[3]_i_23__0_n_0 ;
  wire \dig[3]_i_24_n_0 ;
  wire \dig[3]_i_25__0_n_0 ;
  wire \dig[3]_i_41_n_0 ;
  wire \dig[3]_i_43_n_0 ;
  wire \dig[3]_i_44_n_0 ;
  wire \dig[3]_i_45_n_0 ;
  wire \dig[3]_i_46_n_0 ;
  wire \dig[3]_i_49_n_0 ;
  wire \dig[3]_i_68_n_0 ;
  wire \dig[3]_i_69_n_0 ;
  wire \dig[3]_i_70_n_0 ;
  wire \dig[3]_i_71_n_0 ;
  wire \dig[3]_i_75_n_0 ;
  wire \dig[3]_i_76_n_0 ;
  wire \dig[3]_i_77_n_0 ;
  wire \dig[3]_i_78_n_0 ;
  wire \dig_reg[0]_i_11_n_5 ;
  wire \dig_reg[0]_i_11_n_6 ;
  wire \dig_reg[0]_i_11_n_7 ;
  wire \dig_reg[0]_i_21_n_0 ;
  wire \dig_reg[0]_i_21_n_4 ;
  wire \dig_reg[0]_i_21_n_5 ;
  wire \dig_reg[0]_i_21_n_6 ;
  wire \dig_reg[0]_i_21_n_7 ;
  wire \dig_reg[0]_i_41_n_0 ;
  wire \dig_reg[0]_i_41_n_4 ;
  wire \dig_reg[0]_i_41_n_5 ;
  wire \dig_reg[0]_i_41_n_6 ;
  wire \dig_reg[0]_i_41_n_7 ;
  wire [15:0]inputExtPort;
  wire [15:0]inputExtPort_IBUF;
  wire intAns;
  wire [15:2]intData1;
  wire [15:2]intData1_2;
  wire \intData[12]_i_10_n_0 ;
  wire \intData[12]_i_11_n_0 ;
  wire \intData[12]_i_12_n_0 ;
  wire \intData[12]_i_13_n_0 ;
  wire \intData[12]_i_6_n_0 ;
  wire \intData[12]_i_7_n_0 ;
  wire \intData[12]_i_8_n_0 ;
  wire \intData[12]_i_9_n_0 ;
  wire \intData[13]_i_12_n_0 ;
  wire \intData[13]_i_13_n_0 ;
  wire \intData[13]_i_14_n_0 ;
  wire \intData[13]_i_15_n_0 ;
  wire \intData[13]_i_16_n_0 ;
  wire \intData[13]_i_17_n_0 ;
  wire \intData[13]_i_18_n_0 ;
  wire \intData[13]_i_19_n_0 ;
  wire \intData[13]_i_20__0_n_0 ;
  wire \intData[13]_i_21__0_n_0 ;
  wire \intData[13]_i_22_n_0 ;
  wire \intData[13]_i_23_n_0 ;
  wire \intData[13]_i_24_n_0 ;
  wire \intData[3]_i_26_n_0 ;
  wire \intData[3]_i_27_n_0 ;
  wire \intData[3]_i_28_n_0 ;
  wire \intData[3]_i_29_n_0 ;
  wire \intData[3]_i_59_n_0 ;
  wire \intData[3]_i_60_n_0 ;
  wire \intData[3]_i_61_n_0 ;
  wire \intData[3]_i_65_n_0 ;
  wire \intData[3]_i_66_n_0 ;
  wire \intData[3]_i_67_n_0 ;
  wire \intData[3]_i_68_n_0 ;
  wire \intData[3]_i_69_n_0 ;
  wire \intData[3]_i_70_n_0 ;
  wire \intData[3]_i_71_n_0 ;
  wire \intData[3]_i_72_n_0 ;
  wire \intData[3]_i_97_n_0 ;
  wire \intData[6]_i_21_n_0 ;
  wire \intData[6]_i_22_n_0 ;
  wire \intData[6]_i_23_n_0 ;
  wire \intData[6]_i_24_n_0 ;
  wire \intData[6]_i_35_n_0 ;
  wire \intData[6]_i_36_n_0 ;
  wire \intData[6]_i_37_n_0 ;
  wire \intData[6]_i_38_n_0 ;
  wire \intData[9]_i_15_n_0 ;
  wire \intData[9]_i_16_n_0 ;
  wire \intData[9]_i_17_n_0 ;
  wire \intData[9]_i_21_n_0 ;
  wire \intData_reg[12]_i_4_n_0 ;
  wire \intData_reg[12]_i_5_n_0 ;
  wire \intData_reg[3]_i_10_n_0 ;
  wire \intData_reg[3]_i_49_n_5 ;
  wire \intData_reg[3]_i_49_n_6 ;
  wire \intData_reg[3]_i_49_n_7 ;
  wire \intData_reg[6]_i_17_n_5 ;
  wire \intData_reg[6]_i_17_n_6 ;
  wire \intData_reg[6]_i_17_n_7 ;
  wire [3:2]\intReg[0] ;
  wire loadBtn_n_1;
  wire loadExtPort;
  wire loadExtPort_IBUF;
  wire [7:0]maxAddr;
  wire [1:1]maxAddrPort;
  wire mpDelayReg;
  wire mpDelayReg_0;
  wire mpDelayReg_1;
  wire mpDelayReg_3;
  wire multExtPort;
  wire multExtPort_IBUF;
  wire newAnsReg;
  wire newNum;
  wire newOpReg;
  wire newRegPort;
  wire [15:0]num;
  wire [1:0]opPort;
  wire [2:0]p_0_in;
  wire path_n_0;
  wire path_n_1;
  wire path_n_12;
  wire path_n_13;
  wire path_n_14;
  wire path_n_15;
  wire path_n_16;
  wire path_n_17;
  wire path_n_18;
  wire path_n_19;
  wire path_n_20;
  wire path_n_21;
  wire path_n_22;
  wire path_n_23;
  wire path_n_24;
  wire path_n_25;
  wire path_n_26;
  wire path_n_27;
  wire path_n_28;
  wire path_n_29;
  wire path_n_30;
  wire path_n_31;
  wire path_n_32;
  wire path_n_33;
  wire path_n_34;
  wire path_n_35;
  wire path_n_36;
  wire path_n_37;
  wire path_n_38;
  wire path_n_39;
  wire path_n_40;
  wire regFill;
  wire [7:0]\regPort[0] ;
  wire [5:5]\regPort[1] ;
  wire [7:0]\reg[0] ;
  wire [7:0]\reg[1] ;
  wire [7:0]\reg[2] ;
  wire [7:0]\reg[3] ;
  wire [7:0]\reg[4] ;
  wire [7:0]\reg[5] ;
  wire [7:0]\reg[6] ;
  wire [7:0]\reg[7] ;
  wire \reg[7]__0 ;
  wire resetBtn_n_1;
  wire resetExtPort;
  wire resetExtPort_IBUF;
  wire subBtn_n_0;
  wire subBtn_n_1;
  wire subExtPort;
  wire subExtPort_IBUF;
  wire sumExtPort;
  wire sumExtPort_IBUF;
  wire toAns_n_15;
  wire toAns_n_16;
  wire toAns_n_17;
  wire toAns_n_18;
  wire toAns_n_19;
  wire toAns_n_20;
  wire toAns_n_21;
  wire toAns_n_22;
  wire toAns_n_23;
  wire toAns_n_24;
  wire toAns_n_25;
  wire toAns_n_26;
  wire toAns_n_27;
  wire toAns_n_28;
  wire toAns_n_29;
  wire toAns_n_30;
  wire toAns_n_31;
  wire toAns_n_32;
  wire toAns_n_33;
  wire toAns_n_34;
  wire toAns_n_35;
  wire toAns_n_36;
  wire toAns_n_37;
  wire toAns_n_38;
  wire toAns_n_39;
  wire toAns_n_40;
  wire toAns_n_41;
  wire toAns_n_42;
  wire toAns_n_43;
  wire toAns_n_44;
  wire toAns_n_45;
  wire toAns_n_46;
  wire toAns_n_47;
  wire toAns_n_48;
  wire toAns_n_49;
  wire toAns_n_50;
  wire toAns_n_51;
  wire toAns_n_52;
  wire toAns_n_53;
  wire toAns_n_54;
  wire toAns_n_55;
  wire toAns_n_56;
  wire toAns_n_57;
  wire toAns_n_58;
  wire toAns_n_59;
  wire toAns_n_60;
  wire toAns_n_61;
  wire toNum_n_1;
  wire toNum_n_10;
  wire toNum_n_11;
  wire toNum_n_12;
  wire toNum_n_13;
  wire toNum_n_14;
  wire toNum_n_15;
  wire toNum_n_16;
  wire toNum_n_17;
  wire toNum_n_18;
  wire toNum_n_19;
  wire toNum_n_2;
  wire toNum_n_20;
  wire toNum_n_21;
  wire toNum_n_22;
  wire toNum_n_23;
  wire toNum_n_24;
  wire toNum_n_25;
  wire toNum_n_26;
  wire toNum_n_27;
  wire toNum_n_28;
  wire toNum_n_29;
  wire toNum_n_3;
  wire toNum_n_31;
  wire toNum_n_32;
  wire toNum_n_33;
  wire toNum_n_34;
  wire toNum_n_35;
  wire toNum_n_36;
  wire toNum_n_37;
  wire toNum_n_38;
  wire toNum_n_39;
  wire toNum_n_4;
  wire toNum_n_40;
  wire toNum_n_41;
  wire toNum_n_42;
  wire toNum_n_43;
  wire toNum_n_44;
  wire toNum_n_45;
  wire toNum_n_46;
  wire toNum_n_48;
  wire toNum_n_49;
  wire toNum_n_5;
  wire toNum_n_50;
  wire toNum_n_51;
  wire toNum_n_52;
  wire toNum_n_53;
  wire toNum_n_54;
  wire toNum_n_55;
  wire toNum_n_56;
  wire toNum_n_57;
  wire toNum_n_58;
  wire toNum_n_59;
  wire toNum_n_6;
  wire toNum_n_60;
  wire toNum_n_61;
  wire toNum_n_62;
  wire toNum_n_63;
  wire toNum_n_64;
  wire toNum_n_65;
  wire toNum_n_66;
  wire toNum_n_67;
  wire toNum_n_68;
  wire toNum_n_69;
  wire toNum_n_7;
  wire toNum_n_70;
  wire toNum_n_71;
  wire toNum_n_72;
  wire toNum_n_73;
  wire toNum_n_74;
  wire toNum_n_75;
  wire toNum_n_76;
  wire toNum_n_77;
  wire toNum_n_78;
  wire toNum_n_79;
  wire toNum_n_8;
  wire toNum_n_80;
  wire toNum_n_81;
  wire toNum_n_82;
  wire toNum_n_83;
  wire toNum_n_84;
  wire toNum_n_85;
  wire toNum_n_86;
  wire toNum_n_87;
  wire toNum_n_88;
  wire toNum_n_89;
  wire toNum_n_9;
  wire toNum_n_90;
  wire toNum_n_91;
  wire toNum_n_92;
  wire toNum_n_93;
  wire toNum_n_94;
  wire toNum_n_95;
  wire toNum_n_96;
  wire toOp_n_10;
  wire toOp_n_11;
  wire toOp_n_12;
  wire toOp_n_13;
  wire toOp_n_2;
  wire toOp_n_3;
  wire toOp_n_4;
  wire toOp_n_5;
  wire toOp_n_6;
  wire toOp_n_7;
  wire toOp_n_8;
  wire toOp_n_9;
  wire transmitter_n_0;
  wire [3:0]\NLW_dig_reg[0]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_dig_reg[0]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_21_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_41_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[12]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[12]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[13]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_10_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[3]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_49_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[3]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[6]_i_17_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[6]_i_17_O_UNCONNECTED ;

  OBUF TxExtPort_OBUF_inst
       (.I(TxExtPort_OBUF),
        .O(TxExtPort));
  buttonInterface addBtn
       (.clkPort(clkPort),
        .mpDelayReg(mpDelayReg),
        .sumExtPort_IBUF(sumExtPort_IBUF));
  BUFG clkExtPort_IBUF_BUFG_inst
       (.I(clkExtPort_IBUF),
        .O(clkExtPort_IBUF_BUFG));
  IBUF clkExtPort_IBUF_inst
       (.I(clkExtPort),
        .O(clkExtPort_IBUF));
  clockGenerator clkGen
       (.clkExtPort_IBUF_BUFG(clkExtPort_IBUF_BUFG),
        .clkPort(clkPort));
  fsm controller
       (.A(A),
        .B({controller_n_30,controller_n_31,controller_n_32,controller_n_33,controller_n_34,controller_n_35,controller_n_36,controller_n_37,controller_n_38,controller_n_39,controller_n_40,controller_n_41,controller_n_42,controller_n_43,controller_n_44,controller_n_45}),
        .E(newNum),
        .\FSM_onehot_cs_reg[0] (controller_n_0),
        .\FSM_onehot_cs_reg[0]_0 (controller_n_6),
        .\FSM_onehot_cs_reg[0]_1 (controller_n_7),
        .\FSM_onehot_cs_reg[1] (toOp_n_2),
        .\FSM_sequential_cs_reg[0]_0 (controller_n_8),
        .\FSM_sequential_cs_reg[0]_1 (controller_n_28),
        .\FSM_sequential_cs_reg[0]_2 (transmitter_n_0),
        .\FSM_sequential_cs_reg[0]_3 (loadBtn_n_1),
        .\FSM_sequential_cs_reg[0]_4 (subBtn_n_0),
        .\FSM_sequential_cs_reg[0]_5 (resetBtn_n_1),
        .\FSM_sequential_cs_reg[1]_0 (subBtn_n_1),
        .\FSM_sequential_cs_reg[2]_0 (controller_n_26),
        .\FSM_sequential_cs_reg[3]_0 (intAns),
        .\FSM_sequential_cs_reg[4]_0 (cs),
        .\FSM_sequential_cs_reg[4]_1 (controller_n_46),
        .Q(toNum_n_31),
        .SR(controller_n_9),
        .clkPort(clkPort),
        .inputExtPort_IBUF(inputExtPort_IBUF),
        .loadExtPort_IBUF(loadExtPort_IBUF),
        .mpDelayReg(mpDelayReg_0),
        .mpDelayReg_0(mpDelayReg_1),
        .multExtPort_IBUF(multExtPort_IBUF),
        .newOpReg(newOpReg),
        .opPort(opPort),
        .regFill(regFill));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_22 
       (.I0(toAns_n_61),
        .I1(toAns_n_59),
        .O(\dig[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_23 
       (.I0(toAns_n_21),
        .I1(toAns_n_60),
        .O(\dig[0]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \dig[0]_i_24 
       (.I0(toAns_n_60),
        .I1(toAns_n_58),
        .I2(toAns_n_59),
        .O(\dig[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_25 
       (.I0(toAns_n_59),
        .I1(toAns_n_61),
        .I2(toAns_n_58),
        .I3(toAns_n_60),
        .O(\dig[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_26 
       (.I0(toAns_n_60),
        .I1(toAns_n_21),
        .I2(toAns_n_59),
        .I3(toAns_n_61),
        .O(\dig[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[0]_i_42 
       (.I0(toAns_n_61),
        .I1(toAns_n_58),
        .I2(toAns_n_22),
        .O(\dig[0]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[0]_i_43 
       (.I0(toAns_n_21),
        .I1(toAns_n_59),
        .I2(toAns_n_23),
        .O(\dig[0]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[0]_i_44 
       (.I0(toAns_n_22),
        .I1(toAns_n_60),
        .I2(toAns_n_24),
        .O(\dig[0]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[0]_i_45 
       (.I0(toAns_n_23),
        .I1(toAns_n_61),
        .I2(toAns_n_50),
        .O(\dig[0]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \dig[0]_i_46 
       (.I0(toAns_n_22),
        .I1(toAns_n_58),
        .I2(toAns_n_61),
        .I3(toAns_n_60),
        .I4(toAns_n_21),
        .O(\dig[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[0]_i_47 
       (.I0(toAns_n_23),
        .I1(toAns_n_59),
        .I2(toAns_n_21),
        .I3(toAns_n_58),
        .I4(toAns_n_61),
        .I5(toAns_n_22),
        .O(\dig[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[0]_i_48 
       (.I0(toAns_n_24),
        .I1(toAns_n_60),
        .I2(toAns_n_22),
        .I3(toAns_n_59),
        .I4(toAns_n_21),
        .I5(toAns_n_23),
        .O(\dig[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[0]_i_49 
       (.I0(toAns_n_50),
        .I1(toAns_n_61),
        .I2(toAns_n_23),
        .I3(toAns_n_60),
        .I4(toAns_n_24),
        .I5(toAns_n_22),
        .O(\dig[0]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[0]_i_65 
       (.I0(toAns_n_24),
        .I1(toAns_n_21),
        .I2(toAns_n_51),
        .O(\dig[0]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[0]_i_66 
       (.I0(toAns_n_51),
        .I1(toAns_n_24),
        .I2(toAns_n_21),
        .O(\dig[0]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[0]_i_67 
       (.I0(toAns_n_23),
        .I1(toAns_n_51),
        .O(\dig[0]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[0]_i_68 
       (.I0(toAns_n_51),
        .I1(toAns_n_21),
        .I2(toAns_n_24),
        .I3(toAns_n_61),
        .I4(toAns_n_50),
        .I5(toAns_n_23),
        .O(\dig[0]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \dig[0]_i_69 
       (.I0(toAns_n_21),
        .I1(toAns_n_24),
        .I2(toAns_n_51),
        .I3(toAns_n_50),
        .I4(toAns_n_22),
        .O(\dig[0]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[0]_i_70 
       (.I0(toAns_n_51),
        .I1(toAns_n_23),
        .I2(toAns_n_50),
        .I3(toAns_n_22),
        .O(\dig[0]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[0]_i_71 
       (.I0(toAns_n_23),
        .I1(toAns_n_51),
        .O(\dig[0]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_100 
       (.I0(toAns_n_16),
        .I1(toAns_n_43),
        .O(\dig[2]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[2]_i_103 
       (.I0(toAns_n_40),
        .I1(toAns_n_41),
        .O(\dig[2]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \dig[2]_i_117 
       (.I0(toAns_n_41),
        .I1(toAns_n_17),
        .I2(toAns_n_40),
        .O(\dig[2]_i_117_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_118 
       (.I0(toAns_n_40),
        .I1(toAns_n_18),
        .I2(toAns_n_41),
        .I3(toAns_n_17),
        .O(\dig[2]_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \dig[2]_i_119 
       (.I0(toAns_n_17),
        .I1(toAns_n_19),
        .I2(toAns_n_41),
        .I3(toAns_n_40),
        .I4(toAns_n_18),
        .O(\dig[2]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[2]_i_120 
       (.I0(toAns_n_18),
        .I1(toAns_n_20),
        .I2(toAns_n_40),
        .I3(toAns_n_41),
        .I4(toAns_n_17),
        .I5(toAns_n_19),
        .O(\dig[2]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[2]_i_124 
       (.I0(toAns_n_19),
        .I1(toAns_n_17),
        .I2(toAns_n_16),
        .I3(toAns_n_40),
        .I4(toAns_n_18),
        .I5(toAns_n_20),
        .O(\dig[2]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \dig[2]_i_125 
       (.I0(toAns_n_16),
        .I1(toAns_n_17),
        .I2(toAns_n_19),
        .I3(toAns_n_18),
        .I4(toAns_n_20),
        .O(\dig[2]_i_125_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_126 
       (.I0(toAns_n_16),
        .I1(toAns_n_19),
        .I2(toAns_n_20),
        .I3(toAns_n_18),
        .O(\dig[2]_i_126_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_127 
       (.I0(toAns_n_19),
        .I1(toAns_n_16),
        .O(\dig[2]_i_127_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \dig[2]_i_47 
       (.I0(toAns_n_39),
        .I1(toAns_n_38),
        .O(\dig[2]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[2]_i_48 
       (.I0(toAns_n_15),
        .I1(toAns_n_39),
        .I2(toAns_n_38),
        .O(\dig[2]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \dig[2]_i_69 
       (.I0(toAns_n_18),
        .I1(toAns_n_49),
        .I2(toAns_n_41),
        .I3(toAns_n_48),
        .I4(toAns_n_17),
        .O(\dig[2]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[2]_i_70 
       (.I0(toAns_n_19),
        .I1(toAns_n_44),
        .I2(toAns_n_40),
        .I3(toAns_n_49),
        .I4(toAns_n_41),
        .I5(toAns_n_18),
        .O(\dig[2]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[2]_i_71 
       (.I0(toAns_n_20),
        .I1(toAns_n_45),
        .I2(toAns_n_17),
        .I3(toAns_n_44),
        .I4(toAns_n_40),
        .I5(toAns_n_19),
        .O(\dig[2]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[2]_i_72 
       (.I0(toAns_n_16),
        .I1(toAns_n_46),
        .I2(toAns_n_18),
        .I3(toAns_n_45),
        .I4(toAns_n_17),
        .I5(toAns_n_20),
        .O(\dig[2]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \dig[2]_i_97 
       (.I0(toAns_n_46),
        .I1(toAns_n_16),
        .I2(toAns_n_18),
        .I3(toAns_n_19),
        .I4(toAns_n_47),
        .O(\dig[2]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_98 
       (.I0(toAns_n_20),
        .I1(toAns_n_42),
        .I2(toAns_n_47),
        .I3(toAns_n_19),
        .O(\dig[2]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_99 
       (.I0(toAns_n_16),
        .I1(toAns_n_43),
        .I2(toAns_n_42),
        .I3(toAns_n_20),
        .O(\dig[2]_i_99_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \dig[3]_i_22 
       (.I0(toNum_n_29),
        .I1(toNum_n_16),
        .I2(toNum_n_21),
        .I3(toNum_n_28),
        .I4(toNum_n_15),
        .O(\dig[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \dig[3]_i_23__0 
       (.I0(toNum_n_24),
        .I1(toNum_n_17),
        .I2(toNum_n_20),
        .I3(toNum_n_29),
        .I4(toNum_n_16),
        .I5(toNum_n_21),
        .O(\dig[3]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[3]_i_24 
       (.I0(toNum_n_15),
        .I1(toNum_n_18),
        .I2(toNum_n_25),
        .I3(toNum_n_24),
        .I4(toNum_n_17),
        .I5(toNum_n_20),
        .O(\dig[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[3]_i_25__0 
       (.I0(toNum_n_16),
        .I1(toNum_n_19),
        .I2(toNum_n_26),
        .I3(toNum_n_25),
        .I4(toNum_n_15),
        .I5(toNum_n_18),
        .O(\dig[3]_i_25__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[3]_i_41 
       (.I0(toNum_n_22),
        .I1(toNum_n_18),
        .O(\dig[3]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \dig[3]_i_43 
       (.I0(toNum_n_26),
        .I1(toNum_n_19),
        .I2(toNum_n_16),
        .I3(toNum_n_17),
        .I4(toNum_n_27),
        .O(\dig[3]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[3]_i_44 
       (.I0(toNum_n_18),
        .I1(toNum_n_22),
        .I2(toNum_n_17),
        .I3(toNum_n_27),
        .O(\dig[3]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[3]_i_45 
       (.I0(toNum_n_19),
        .I1(toNum_n_23),
        .I2(toNum_n_18),
        .I3(toNum_n_22),
        .O(\dig[3]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[3]_i_46 
       (.I0(toNum_n_19),
        .I1(toNum_n_23),
        .O(\dig[3]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[3]_i_49 
       (.I0(toNum_n_20),
        .I1(toNum_n_21),
        .O(\dig[3]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \dig[3]_i_68 
       (.I0(toNum_n_21),
        .I1(toNum_n_15),
        .I2(toNum_n_20),
        .O(\dig[3]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[3]_i_69 
       (.I0(toNum_n_20),
        .I1(toNum_n_16),
        .I2(toNum_n_15),
        .I3(toNum_n_21),
        .O(\dig[3]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \dig[3]_i_70 
       (.I0(toNum_n_15),
        .I1(toNum_n_17),
        .I2(toNum_n_21),
        .I3(toNum_n_16),
        .I4(toNum_n_20),
        .O(\dig[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[3]_i_71 
       (.I0(toNum_n_16),
        .I1(toNum_n_18),
        .I2(toNum_n_20),
        .I3(toNum_n_21),
        .I4(toNum_n_15),
        .I5(toNum_n_17),
        .O(\dig[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[3]_i_75 
       (.I0(toNum_n_17),
        .I1(toNum_n_15),
        .I2(toNum_n_19),
        .I3(toNum_n_20),
        .I4(toNum_n_18),
        .I5(toNum_n_16),
        .O(\dig[3]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \dig[3]_i_76 
       (.I0(toNum_n_15),
        .I1(toNum_n_19),
        .I2(toNum_n_17),
        .I3(toNum_n_18),
        .I4(toNum_n_16),
        .O(\dig[3]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[3]_i_77 
       (.I0(toNum_n_19),
        .I1(toNum_n_17),
        .I2(toNum_n_16),
        .I3(toNum_n_18),
        .O(\dig[3]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[3]_i_78 
       (.I0(toNum_n_17),
        .I1(toNum_n_19),
        .O(\dig[3]_i_78_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_11 
       (.CI(\dig_reg[0]_i_21_n_0 ),
        .CO(\NLW_dig_reg[0]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dig[0]_i_22_n_0 ,\dig[0]_i_23_n_0 }),
        .O({\NLW_dig_reg[0]_i_11_O_UNCONNECTED [3],\dig_reg[0]_i_11_n_5 ,\dig_reg[0]_i_11_n_6 ,\dig_reg[0]_i_11_n_7 }),
        .S({1'b0,\dig[0]_i_24_n_0 ,\dig[0]_i_25_n_0 ,\dig[0]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_21 
       (.CI(\dig_reg[0]_i_41_n_0 ),
        .CO({\dig_reg[0]_i_21_n_0 ,\NLW_dig_reg[0]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[0]_i_42_n_0 ,\dig[0]_i_43_n_0 ,\dig[0]_i_44_n_0 ,\dig[0]_i_45_n_0 }),
        .O({\dig_reg[0]_i_21_n_4 ,\dig_reg[0]_i_21_n_5 ,\dig_reg[0]_i_21_n_6 ,\dig_reg[0]_i_21_n_7 }),
        .S({\dig[0]_i_46_n_0 ,\dig[0]_i_47_n_0 ,\dig[0]_i_48_n_0 ,\dig[0]_i_49_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[0]_i_41 
       (.CI(1'b0),
        .CO({\dig_reg[0]_i_41_n_0 ,\NLW_dig_reg[0]_i_41_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[0]_i_65_n_0 ,\dig[0]_i_66_n_0 ,\dig[0]_i_67_n_0 ,1'b0}),
        .O({\dig_reg[0]_i_41_n_4 ,\dig_reg[0]_i_41_n_5 ,\dig_reg[0]_i_41_n_6 ,\dig_reg[0]_i_41_n_7 }),
        .S({\dig[0]_i_68_n_0 ,\dig[0]_i_69_n_0 ,\dig[0]_i_70_n_0 ,\dig[0]_i_71_n_0 }));
  IBUF \inputExtPort_IBUF[0]_inst 
       (.I(inputExtPort[0]),
        .O(inputExtPort_IBUF[0]));
  IBUF \inputExtPort_IBUF[10]_inst 
       (.I(inputExtPort[10]),
        .O(inputExtPort_IBUF[10]));
  IBUF \inputExtPort_IBUF[11]_inst 
       (.I(inputExtPort[11]),
        .O(inputExtPort_IBUF[11]));
  IBUF \inputExtPort_IBUF[12]_inst 
       (.I(inputExtPort[12]),
        .O(inputExtPort_IBUF[12]));
  IBUF \inputExtPort_IBUF[13]_inst 
       (.I(inputExtPort[13]),
        .O(inputExtPort_IBUF[13]));
  IBUF \inputExtPort_IBUF[14]_inst 
       (.I(inputExtPort[14]),
        .O(inputExtPort_IBUF[14]));
  IBUF \inputExtPort_IBUF[15]_inst 
       (.I(inputExtPort[15]),
        .O(inputExtPort_IBUF[15]));
  IBUF \inputExtPort_IBUF[1]_inst 
       (.I(inputExtPort[1]),
        .O(inputExtPort_IBUF[1]));
  IBUF \inputExtPort_IBUF[2]_inst 
       (.I(inputExtPort[2]),
        .O(inputExtPort_IBUF[2]));
  IBUF \inputExtPort_IBUF[3]_inst 
       (.I(inputExtPort[3]),
        .O(inputExtPort_IBUF[3]));
  IBUF \inputExtPort_IBUF[4]_inst 
       (.I(inputExtPort[4]),
        .O(inputExtPort_IBUF[4]));
  IBUF \inputExtPort_IBUF[5]_inst 
       (.I(inputExtPort[5]),
        .O(inputExtPort_IBUF[5]));
  IBUF \inputExtPort_IBUF[6]_inst 
       (.I(inputExtPort[6]),
        .O(inputExtPort_IBUF[6]));
  IBUF \inputExtPort_IBUF[7]_inst 
       (.I(inputExtPort[7]),
        .O(inputExtPort_IBUF[7]));
  IBUF \inputExtPort_IBUF[8]_inst 
       (.I(inputExtPort[8]),
        .O(inputExtPort_IBUF[8]));
  IBUF \inputExtPort_IBUF[9]_inst 
       (.I(inputExtPort[9]),
        .O(inputExtPort_IBUF[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_10 
       (.I0(num[8]),
        .O(\intData[12]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_11 
       (.I0(num[7]),
        .O(\intData[12]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_12 
       (.I0(num[6]),
        .O(\intData[12]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_13 
       (.I0(num[5]),
        .O(\intData[12]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_6 
       (.I0(num[12]),
        .O(\intData[12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_7 
       (.I0(num[11]),
        .O(\intData[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_8 
       (.I0(num[10]),
        .O(\intData[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_9 
       (.I0(num[9]),
        .O(\intData[12]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_12 
       (.I0(toNum_n_32),
        .O(\intData[13]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_13 
       (.I0(toNum_n_33),
        .O(\intData[13]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_14 
       (.I0(num[15]),
        .O(\intData[13]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_15 
       (.I0(num[14]),
        .O(\intData[13]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_16 
       (.I0(num[13]),
        .O(\intData[13]_i_16_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \intData[13]_i_17 
       (.I0(toAns_n_27),
        .I1(toAns_n_26),
        .O(\intData[13]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \intData[13]_i_18 
       (.I0(toAns_n_26),
        .I1(toAns_n_25),
        .O(\intData[13]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hF51A)) 
    \intData[13]_i_19 
       (.I0(\intData[13]_i_17_n_0 ),
        .I1(toAns_n_27),
        .I2(toAns_n_25),
        .I3(toAns_n_26),
        .O(\intData[13]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[13]_i_20__0 
       (.I0(\intData[13]_i_17_n_0 ),
        .I1(toAns_n_25),
        .I2(toAns_n_26),
        .I3(toAns_n_27),
        .O(\intData[13]_i_20__0_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \intData[13]_i_21__0 
       (.I0(toAns_n_27),
        .I1(toAns_n_26),
        .O(\intData[13]_i_21__0_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \intData[13]_i_22 
       (.I0(toNum_n_3),
        .I1(toNum_n_2),
        .O(\intData[13]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \intData[13]_i_23 
       (.I0(toNum_n_4),
        .I1(toNum_n_3),
        .I2(toNum_n_2),
        .O(\intData[13]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \intData[13]_i_24 
       (.I0(toNum_n_2),
        .I1(toNum_n_4),
        .I2(toNum_n_3),
        .O(\intData[13]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_26 
       (.I0(num[4]),
        .O(\intData[3]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_27 
       (.I0(num[3]),
        .O(\intData[3]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_28 
       (.I0(num[2]),
        .O(\intData[3]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_29 
       (.I0(num[1]),
        .O(\intData[3]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \intData[3]_i_59 
       (.I0(toNum_n_8),
        .I1(toNum_n_12),
        .I2(toNum_n_7),
        .I3(toNum_n_14),
        .O(\intData[3]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[3]_i_60 
       (.I0(toNum_n_9),
        .I1(toNum_n_13),
        .I2(toNum_n_12),
        .I3(toNum_n_8),
        .O(\intData[3]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_61 
       (.I0(toNum_n_9),
        .I1(toNum_n_13),
        .O(\intData[3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \intData[3]_i_65 
       (.I0(toNum_n_7),
        .I1(toNum_n_9),
        .I2(toNum_n_5),
        .I3(toNum_n_10),
        .I4(toNum_n_6),
        .I5(toNum_n_8),
        .O(\intData[3]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \intData[3]_i_66 
       (.I0(toNum_n_5),
        .I1(toNum_n_9),
        .I2(toNum_n_7),
        .I3(toNum_n_8),
        .I4(toNum_n_6),
        .O(\intData[3]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[3]_i_67 
       (.I0(toNum_n_9),
        .I1(toNum_n_7),
        .I2(toNum_n_6),
        .I3(toNum_n_8),
        .O(\intData[3]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_68 
       (.I0(toNum_n_7),
        .I1(toNum_n_9),
        .O(\intData[3]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \intData[3]_i_69 
       (.I0(toNum_n_38),
        .I1(toNum_n_35),
        .O(\intData[3]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \intData[3]_i_70 
       (.I0(toNum_n_34),
        .I1(toNum_n_37),
        .I2(toNum_n_36),
        .I3(toNum_n_35),
        .I4(toNum_n_39),
        .O(\intData[3]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[3]_i_71 
       (.I0(toNum_n_35),
        .I1(toNum_n_38),
        .I2(toNum_n_37),
        .I3(toNum_n_34),
        .O(\intData[3]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_72 
       (.I0(toNum_n_38),
        .I1(toNum_n_35),
        .O(\intData[3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \intData[3]_i_97 
       (.I0(toNum_n_6),
        .I1(toNum_n_8),
        .I2(toNum_n_10),
        .I3(toNum_n_11),
        .I4(toNum_n_7),
        .I5(toNum_n_5),
        .O(\intData[3]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \intData[6]_i_21 
       (.I0(toAns_n_56),
        .I1(toAns_n_53),
        .O(\intData[6]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \intData[6]_i_22 
       (.I0(toAns_n_55),
        .I1(toAns_n_52),
        .I2(toAns_n_54),
        .I3(toAns_n_57),
        .I4(toAns_n_53),
        .O(\intData[6]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[6]_i_23 
       (.I0(toAns_n_53),
        .I1(toAns_n_56),
        .I2(toAns_n_52),
        .I3(toAns_n_55),
        .O(\intData[6]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[6]_i_24 
       (.I0(toAns_n_56),
        .I1(toAns_n_53),
        .O(\intData[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \intData[6]_i_35 
       (.I0(toAns_n_30),
        .I1(toAns_n_28),
        .I2(toAns_n_32),
        .I3(toAns_n_31),
        .I4(toAns_n_33),
        .I5(toAns_n_29),
        .O(\intData[6]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h69699669)) 
    \intData[6]_i_36 
       (.I0(toAns_n_32),
        .I1(toAns_n_28),
        .I2(toAns_n_30),
        .I3(toAns_n_29),
        .I4(toAns_n_31),
        .O(\intData[6]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[6]_i_37 
       (.I0(toAns_n_32),
        .I1(toAns_n_30),
        .I2(toAns_n_31),
        .I3(toAns_n_29),
        .O(\intData[6]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[6]_i_38 
       (.I0(toAns_n_30),
        .I1(toAns_n_32),
        .O(\intData[6]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \intData[9]_i_15 
       (.I0(toAns_n_31),
        .I1(toAns_n_35),
        .I2(toAns_n_37),
        .I3(toAns_n_30),
        .O(\intData[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \intData[9]_i_16 
       (.I0(toAns_n_32),
        .I1(toAns_n_36),
        .I2(toAns_n_35),
        .I3(toAns_n_31),
        .O(\intData[9]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[9]_i_17 
       (.I0(toAns_n_32),
        .I1(toAns_n_36),
        .O(\intData[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \intData[9]_i_21 
       (.I0(toAns_n_29),
        .I1(toAns_n_31),
        .I2(toAns_n_33),
        .I3(toAns_n_34),
        .I4(toAns_n_28),
        .I5(toAns_n_30),
        .O(\intData[9]_i_21_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[12]_i_4 
       (.CI(\intData_reg[12]_i_5_n_0 ),
        .CO({\intData_reg[12]_i_4_n_0 ,\NLW_intData_reg[12]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(intData1[12:9]),
        .S({\intData[12]_i_6_n_0 ,\intData[12]_i_7_n_0 ,\intData[12]_i_8_n_0 ,\intData[12]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[12]_i_5 
       (.CI(\intData_reg[3]_i_10_n_0 ),
        .CO({\intData_reg[12]_i_5_n_0 ,\NLW_intData_reg[12]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(intData1[8:5]),
        .S({\intData[12]_i_10_n_0 ,\intData[12]_i_11_n_0 ,\intData[12]_i_12_n_0 ,\intData[12]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_8 
       (.CI(\intData_reg[12]_i_4_n_0 ),
        .CO(\NLW_intData_reg[13]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[13]_i_8_O_UNCONNECTED [3],intData1[15:13]}),
        .S({1'b0,\intData[13]_i_14_n_0 ,\intData[13]_i_15_n_0 ,\intData[13]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_10 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_10_n_0 ,\NLW_intData_reg[3]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(toNum_n_1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({intData1[4:2],\NLW_intData_reg[3]_i_10_O_UNCONNECTED [0]}),
        .S({\intData[3]_i_26_n_0 ,\intData[3]_i_27_n_0 ,\intData[3]_i_28_n_0 ,\intData[3]_i_29_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[3]_i_49 
       (.CI(1'b0),
        .CO(\NLW_intData_reg[3]_i_49_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData[3]_i_69_n_0 ,1'b0}),
        .O({\NLW_intData_reg[3]_i_49_O_UNCONNECTED [3],\intData_reg[3]_i_49_n_5 ,\intData_reg[3]_i_49_n_6 ,\intData_reg[3]_i_49_n_7 }),
        .S({1'b0,\intData[3]_i_70_n_0 ,\intData[3]_i_71_n_0 ,\intData[3]_i_72_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[6]_i_17 
       (.CI(1'b0),
        .CO(\NLW_intData_reg[6]_i_17_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData[6]_i_21_n_0 ,1'b0}),
        .O({\NLW_intData_reg[6]_i_17_O_UNCONNECTED [3],\intData_reg[6]_i_17_n_5 ,\intData_reg[6]_i_17_n_6 ,\intData_reg[6]_i_17_n_7 }),
        .S({1'b0,\intData[6]_i_22_n_0 ,\intData[6]_i_23_n_0 ,\intData[6]_i_24_n_0 }));
  buttonInterface_0 loadBtn
       (.clkPort(clkPort),
        .loadExtPort_IBUF(loadExtPort_IBUF),
        .mpDelayReg(mpDelayReg_0),
        .mpDelayReg_0(mpDelayReg_3),
        .mpDelayReg_reg_0(loadBtn_n_1),
        .resetExtPort_IBUF(resetExtPort_IBUF));
  IBUF loadExtPort_IBUF_inst
       (.I(loadExtPort),
        .O(loadExtPort_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[0] 
       (.CLR(1'b0),
        .D(toNum_n_96),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[1] 
       (.CLR(1'b0),
        .D(toOp_n_13),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[2] 
       (.CLR(1'b0),
        .D(toNum_n_95),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[3] 
       (.CLR(1'b0),
        .D(toNum_n_94),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[4] 
       (.CLR(1'b0),
        .D(toNum_n_93),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[5] 
       (.CLR(1'b0),
        .D(toNum_n_92),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[6] 
       (.CLR(1'b0),
        .D(toNum_n_91),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \maxAddr_reg[7] 
       (.CLR(1'b0),
        .D(toNum_n_90),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(maxAddr[7]));
  buttonInterface_1 multBtn
       (.clkPort(clkPort),
        .mpDelayReg(mpDelayReg_1),
        .multExtPort_IBUF(multExtPort_IBUF));
  IBUF multExtPort_IBUF_inst
       (.I(multExtPort),
        .O(multExtPort_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[0] 
       (.CLR(1'b0),
        .D(path_n_39),
        .G(newNum),
        .GE(1'b1),
        .Q(num[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[10] 
       (.CLR(1'b0),
        .D(path_n_29),
        .G(newNum),
        .GE(1'b1),
        .Q(num[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[11] 
       (.CLR(1'b0),
        .D(path_n_28),
        .G(newNum),
        .GE(1'b1),
        .Q(num[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[12] 
       (.CLR(1'b0),
        .D(path_n_27),
        .G(newNum),
        .GE(1'b1),
        .Q(num[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[13] 
       (.CLR(1'b0),
        .D(path_n_26),
        .G(newNum),
        .GE(1'b1),
        .Q(num[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[14] 
       (.CLR(1'b0),
        .D(path_n_25),
        .G(newNum),
        .GE(1'b1),
        .Q(num[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[15] 
       (.CLR(1'b0),
        .D(path_n_24),
        .G(newNum),
        .GE(1'b1),
        .Q(num[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[1] 
       (.CLR(1'b0),
        .D(path_n_38),
        .G(newNum),
        .GE(1'b1),
        .Q(num[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[2] 
       (.CLR(1'b0),
        .D(path_n_37),
        .G(newNum),
        .GE(1'b1),
        .Q(num[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[3] 
       (.CLR(1'b0),
        .D(path_n_36),
        .G(newNum),
        .GE(1'b1),
        .Q(num[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[4] 
       (.CLR(1'b0),
        .D(path_n_35),
        .G(newNum),
        .GE(1'b1),
        .Q(num[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[5] 
       (.CLR(1'b0),
        .D(path_n_34),
        .G(newNum),
        .GE(1'b1),
        .Q(num[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[6] 
       (.CLR(1'b0),
        .D(path_n_33),
        .G(newNum),
        .GE(1'b1),
        .Q(num[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[7] 
       (.CLR(1'b0),
        .D(path_n_32),
        .G(newNum),
        .GE(1'b1),
        .Q(num[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[8] 
       (.CLR(1'b0),
        .D(path_n_31),
        .G(newNum),
        .GE(1'b1),
        .Q(num[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \num_reg[9] 
       (.CLR(1'b0),
        .D(path_n_30),
        .G(newNum),
        .GE(1'b1),
        .Q(num[9]));
  datapath path
       (.A(A),
        .ARG_0(controller_n_8),
        .ARG_1({controller_n_30,controller_n_31,controller_n_32,controller_n_33,controller_n_34,controller_n_35,controller_n_36,controller_n_37,controller_n_38,controller_n_39,controller_n_40,controller_n_41,controller_n_42,controller_n_43,controller_n_44,controller_n_45}),
        .\A_reg[0]_0 (controller_n_46),
        .D({path_n_24,path_n_25,path_n_26,path_n_27,path_n_28,path_n_29,path_n_30,path_n_31,path_n_32,path_n_33,path_n_34,path_n_35,path_n_36,path_n_37,path_n_38,path_n_39}),
        .E(path_n_40),
        .\FSM_onehot_cs_reg[7] (path_n_0),
        .\FSM_onehot_cs_reg[7]_0 (path_n_21),
        .Q({convert,chNeg,count}),
        .SR(controller_n_9),
        .clkPort(clkPort),
        .inputExtPort_IBUF(inputExtPort_IBUF),
        .\intAns_reg[10]_0 (path_n_17),
        .\intAns_reg[11]_0 (path_n_18),
        .\intAns_reg[12]_0 (path_n_19),
        .\intAns_reg[13]_0 (path_n_20),
        .\intAns_reg[15]_0 ({intData1_2[15:14],intData1_2[3:2]}),
        .\intAns_reg[15]_1 ({ansPort[15:14],ansPort[3:0]}),
        .\intAns_reg[15]_2 (path_n_23),
        .\intAns_reg[15]_3 (intAns),
        .\intAns_reg[4]_0 (path_n_1),
        .\intAns_reg[5]_0 (path_n_12),
        .\intAns_reg[6]_0 (path_n_13),
        .\intAns_reg[7]_0 (path_n_14),
        .\intAns_reg[8]_0 (path_n_15),
        .\intAns_reg[9]_0 (path_n_16),
        .\numDig[0]_i_3__0_0 (path_n_22),
        .\num_reg[15] (controller_n_28),
        .opPort(opPort),
        .\op_reg[1]_0 (\intReg[0] ),
        .\op_reg[1]_1 (cs),
        .p_0_in(p_0_in),
        .regFill(regFill));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][0] 
       (.CLR(1'b0),
        .D(toOp_n_11),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][1] 
       (.CLR(1'b0),
        .D(toOp_n_10),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][2] 
       (.CLR(1'b0),
        .D(toOp_n_9),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][3] 
       (.CLR(1'b0),
        .D(toOp_n_8),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][4] 
       (.CLR(1'b0),
        .D(toOp_n_7),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][5] 
       (.CLR(1'b0),
        .D(toOp_n_6),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][6] 
       (.CLR(1'b0),
        .D(toOp_n_5),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[0][7] 
       (.CLR(1'b0),
        .D(toOp_n_4),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[0] [7]));
  BUFG \reg_reg[0][7]_i_2 
       (.I(toOp_n_3),
        .O(\reg[7]__0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][0] 
       (.CLR(1'b0),
        .D(toNum_n_46),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][1] 
       (.CLR(1'b0),
        .D(toNum_n_45),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][2] 
       (.CLR(1'b0),
        .D(toNum_n_44),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][3] 
       (.CLR(1'b0),
        .D(toNum_n_43),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][4] 
       (.CLR(1'b0),
        .D(toNum_n_42),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][5] 
       (.CLR(1'b0),
        .D(toOp_n_12),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[1][7] 
       (.CLR(1'b0),
        .D(toNum_n_41),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[1] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][0] 
       (.CLR(1'b0),
        .D(toNum_n_54),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][1] 
       (.CLR(1'b0),
        .D(toNum_n_53),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][2] 
       (.CLR(1'b0),
        .D(toNum_n_52),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][3] 
       (.CLR(1'b0),
        .D(toNum_n_51),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][4] 
       (.CLR(1'b0),
        .D(toNum_n_50),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][5] 
       (.CLR(1'b0),
        .D(toNum_n_49),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[2][7] 
       (.CLR(1'b0),
        .D(toNum_n_48),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[2] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][0] 
       (.CLR(1'b0),
        .D(toNum_n_61),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][1] 
       (.CLR(1'b0),
        .D(toNum_n_60),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][2] 
       (.CLR(1'b0),
        .D(toNum_n_59),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][3] 
       (.CLR(1'b0),
        .D(toNum_n_58),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][4] 
       (.CLR(1'b0),
        .D(toNum_n_57),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][5] 
       (.CLR(1'b0),
        .D(toNum_n_56),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[3][7] 
       (.CLR(1'b0),
        .D(toNum_n_55),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[3] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][0] 
       (.CLR(1'b0),
        .D(toNum_n_68),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][1] 
       (.CLR(1'b0),
        .D(toNum_n_67),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][2] 
       (.CLR(1'b0),
        .D(toNum_n_66),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][3] 
       (.CLR(1'b0),
        .D(toNum_n_65),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][4] 
       (.CLR(1'b0),
        .D(toNum_n_64),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][5] 
       (.CLR(1'b0),
        .D(toNum_n_63),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[4][7] 
       (.CLR(1'b0),
        .D(toNum_n_62),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[4] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][0] 
       (.CLR(1'b0),
        .D(toNum_n_75),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][1] 
       (.CLR(1'b0),
        .D(toNum_n_74),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][2] 
       (.CLR(1'b0),
        .D(toNum_n_73),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][3] 
       (.CLR(1'b0),
        .D(toNum_n_72),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][4] 
       (.CLR(1'b0),
        .D(toNum_n_71),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][5] 
       (.CLR(1'b0),
        .D(toNum_n_70),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[5][7] 
       (.CLR(1'b0),
        .D(toNum_n_69),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[5] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][0] 
       (.CLR(1'b0),
        .D(toNum_n_82),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][1] 
       (.CLR(1'b0),
        .D(toNum_n_81),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][2] 
       (.CLR(1'b0),
        .D(toNum_n_80),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][3] 
       (.CLR(1'b0),
        .D(toNum_n_79),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][4] 
       (.CLR(1'b0),
        .D(toNum_n_78),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][5] 
       (.CLR(1'b0),
        .D(toNum_n_77),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[6][7] 
       (.CLR(1'b0),
        .D(toNum_n_76),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[6] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][0] 
       (.CLR(1'b0),
        .D(toNum_n_89),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][1] 
       (.CLR(1'b0),
        .D(toNum_n_88),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][2] 
       (.CLR(1'b0),
        .D(toNum_n_87),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][3] 
       (.CLR(1'b0),
        .D(toNum_n_86),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][4] 
       (.CLR(1'b0),
        .D(toNum_n_85),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][5] 
       (.CLR(1'b0),
        .D(toNum_n_84),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_reg[7][7] 
       (.CLR(1'b0),
        .D(toNum_n_83),
        .G(\reg[7]__0 ),
        .GE(1'b1),
        .Q(\reg[7] [7]));
  buttonInterface_2 resetBtn
       (.\FSM_sequential_cs[4]_i_3 (subBtn_n_1),
        .\FSM_sequential_cs[4]_i_3_0 (cs[1]),
        .clkPort(clkPort),
        .mpDelayReg(mpDelayReg_3),
        .mpDelayReg_0(mpDelayReg_1),
        .mpDelayReg_reg_0(resetBtn_n_1),
        .multExtPort_IBUF(multExtPort_IBUF),
        .resetExtPort_IBUF(resetExtPort_IBUF));
  IBUF resetExtPort_IBUF_inst
       (.I(resetExtPort),
        .O(resetExtPort_IBUF));
  buttonInterface_3 subBtn
       (.clkPort(clkPort),
        .mpDelayReg(mpDelayReg),
        .mpDelayReg_reg_0(subBtn_n_0),
        .mpDelayReg_reg_1(subBtn_n_1),
        .subExtPort_IBUF(subExtPort_IBUF),
        .sumExtPort_IBUF(sumExtPort_IBUF));
  IBUF subExtPort_IBUF_inst
       (.I(subExtPort),
        .O(subExtPort_IBUF));
  IBUF sumExtPort_IBUF_inst
       (.I(sumExtPort),
        .O(sumExtPort_IBUF));
  toAnsReg toAns
       (.CO(toAns_n_34),
        .\FSM_onehot_cs_reg[0]_0 (cs[0]),
        .\FSM_onehot_cs_reg[0]_1 (controller_n_26),
        .O(toAns_n_15),
        .Q({newAnsReg,convert,chNeg,count}),
        .S({\intData[13]_i_18_n_0 ,\intData[13]_i_19_n_0 ,\intData[13]_i_20__0_n_0 ,\intData[13]_i_21__0_n_0 }),
        .ansMaxAddr(ansMaxAddr),
        .\ansReg[0] ({\ansReg[0] [7],\ansReg[0] [5:0]}),
        .\ansReg[1] ({\ansReg[1] [7],\ansReg[1] [5:0]}),
        .\ansReg[2] ({\ansReg[2] [7],\ansReg[2] [5:0]}),
        .\ansReg[3] ({\ansReg[3] [7],\ansReg[3] [5:0]}),
        .\ansReg[4] ({\ansReg[4] [7],\ansReg[4] [5:0]}),
        .\ansReg[5] ({\ansReg[5] [7],\ansReg[5] [5:0]}),
        .\ansReg[6] ({\ansReg[6] [7],\ansReg[6] [5:0]}),
        .\ansReg[7] ({\ansReg[7] [7],\ansReg[7] [5:0]}),
        .clkPort(clkPort),
        .\dig[2]_i_108_0 ({\dig[2]_i_97_n_0 ,\dig[2]_i_98_n_0 ,\dig[2]_i_99_n_0 ,\dig[2]_i_100_n_0 }),
        .\dig[2]_i_110_0 ({\dig[2]_i_124_n_0 ,\dig[2]_i_125_n_0 ,\dig[2]_i_126_n_0 ,\dig[2]_i_127_n_0 }),
        .\dig[2]_i_120 ({toAns_n_44,toAns_n_45,toAns_n_46,toAns_n_47}),
        .\dig[2]_i_127 ({toAns_n_42,toAns_n_43}),
        .\dig[2]_i_57_0 ({\dig[2]_i_47_n_0 ,\dig[2]_i_48_n_0 }),
        .\dig[2]_i_70 (\dig[2]_i_103_n_0 ),
        .\dig[2]_i_80_0 ({\dig[2]_i_69_n_0 ,\dig[2]_i_70_n_0 ,\dig[2]_i_71_n_0 ,\dig[2]_i_72_n_0 }),
        .\dig[2]_i_98 ({\dig[2]_i_117_n_0 ,\dig[2]_i_118_n_0 ,\dig[2]_i_119_n_0 ,\dig[2]_i_120_n_0 }),
        .\dig_reg[0]_0 ({\dig_reg[0]_i_11_n_5 ,\dig_reg[0]_i_11_n_6 ,\dig_reg[0]_i_11_n_7 }),
        .\dig_reg[0]_i_18_0 ({\dig_reg[0]_i_21_n_4 ,\dig_reg[0]_i_21_n_5 ,\dig_reg[0]_i_21_n_6 ,\dig_reg[0]_i_21_n_7 }),
        .\dig_reg[0]_i_32_0 ({\dig_reg[0]_i_41_n_4 ,\dig_reg[0]_i_41_n_5 ,\dig_reg[0]_i_41_n_6 ,\dig_reg[0]_i_41_n_7 }),
        .\intData[6]_i_13_0 ({\intData[9]_i_15_n_0 ,\intData[9]_i_16_n_0 ,\intData[9]_i_17_n_0 }),
        .\intData[6]_i_15_0 ({\intData[6]_i_35_n_0 ,\intData[6]_i_36_n_0 ,\intData[6]_i_37_n_0 ,\intData[6]_i_38_n_0 }),
        .\intData[6]_i_38 ({toAns_n_35,toAns_n_36}),
        .\intData[9]_i_15 (\intData[9]_i_21_n_0 ),
        .\intData[9]_i_21 (toAns_n_37),
        .\intData[9]_i_2__0_0 (path_n_16),
        .\intData_reg[10]_0 (path_n_17),
        .\intData_reg[11]_0 ({toAns_n_54,toAns_n_55,toAns_n_56,toAns_n_57}),
        .\intData_reg[11]_1 (path_n_18),
        .\intData_reg[12]_0 ({toAns_n_21,toAns_n_22,toAns_n_23,toAns_n_24}),
        .\intData_reg[12]_1 (path_n_19),
        .\intData_reg[13]_0 (toAns_n_27),
        .\intData_reg[13]_1 (path_n_20),
        .\intData_reg[13]_i_14_0 (\intData[13]_i_17_n_0 ),
        .\intData_reg[14]_0 ({toAns_n_17,toAns_n_18,toAns_n_19,toAns_n_20}),
        .\intData_reg[14]_1 ({toAns_n_25,toAns_n_26}),
        .\intData_reg[14]_2 ({toAns_n_28,toAns_n_29,toAns_n_30,toAns_n_31}),
        .\intData_reg[14]_3 ({toAns_n_38,toAns_n_39}),
        .\intData_reg[15]_0 (toAns_n_16),
        .\intData_reg[15]_1 (toAns_n_32),
        .\intData_reg[15]_2 (toAns_n_33),
        .\intData_reg[15]_3 (toAns_n_40),
        .\intData_reg[15]_4 (toAns_n_41),
        .\intData_reg[15]_5 ({toAns_n_48,toAns_n_49}),
        .\intData_reg[15]_6 ({toAns_n_58,toAns_n_59,toAns_n_60,toAns_n_61}),
        .\intData_reg[15]_7 ({ansPort[15:14],ansPort[3:0]}),
        .\intData_reg[15]_8 ({intData1_2[15:14],intData1_2[3:2]}),
        .\intData_reg[4]_0 (path_n_1),
        .\intData_reg[5]_0 (path_n_12),
        .\intData_reg[6]_0 ({toAns_n_50,toAns_n_51}),
        .\intData_reg[6]_1 ({toAns_n_52,toAns_n_53}),
        .\intData_reg[6]_2 (path_n_13),
        .\intData_reg[6]_i_5_0 ({\intData_reg[6]_i_17_n_5 ,\intData_reg[6]_i_17_n_6 ,\intData_reg[6]_i_17_n_7 }),
        .\intData_reg[7]_0 (path_n_14),
        .\intData_reg[8]_0 (path_n_15),
        .neg_reg_0(path_n_23),
        .\numDig_reg[0]_0 (path_n_0),
        .\numDig_reg[1]_0 (path_n_21),
        .\numDig_reg[2]_0 (path_n_22),
        .p_0_in(p_0_in));
  toNumReg toNum
       (.CO(toNum_n_11),
        .D({toNum_n_41,toNum_n_42,toNum_n_43,toNum_n_44,toNum_n_45,toNum_n_46}),
        .DI(\dig[3]_i_41_n_0 ),
        .\FSM_onehot_cs_reg[0]_0 (controller_n_0),
        .\FSM_onehot_cs_reg[8]_0 ({newRegPort,toNum_n_31}),
        .\FSM_onehot_cs_reg[8]_1 (toNum_n_40),
        .\FSM_sequential_cs_reg[0] (newAnsReg),
        .O({toNum_n_2,toNum_n_3}),
        .Q(maxAddrPort),
        .S({\intData[13]_i_22_n_0 ,\intData[13]_i_23_n_0 ,\intData[13]_i_24_n_0 }),
        .ansMaxAddr({ansMaxAddr[7:2],ansMaxAddr[0]}),
        .\ansReg[1] ({\ansReg[1] [7],\ansReg[1] [4:0]}),
        .\ansReg[2] ({\ansReg[2] [7],\ansReg[2] [5:0]}),
        .\ansReg[3] ({\ansReg[3] [7],\ansReg[3] [5:0]}),
        .\ansReg[4] ({\ansReg[4] [7],\ansReg[4] [5:0]}),
        .\ansReg[5] ({\ansReg[5] [7],\ansReg[5] [5:0]}),
        .\ansReg[6] ({\ansReg[6] [7],\ansReg[6] [5:0]}),
        .\ansReg[7] ({\ansReg[7] [7],\ansReg[7] [5:0]}),
        .clkPort(clkPort),
        .\dig[1]_i_167_0 ({\dig[3]_i_43_n_0 ,\dig[3]_i_44_n_0 ,\dig[3]_i_45_n_0 ,\dig[3]_i_46_n_0 }),
        .\dig[1]_i_169_0 ({\dig[3]_i_75_n_0 ,\dig[3]_i_76_n_0 ,\dig[3]_i_77_n_0 ,\dig[3]_i_78_n_0 }),
        .\dig[1]_i_95_0 ({\dig[3]_i_22_n_0 ,\dig[3]_i_23__0_n_0 ,\dig[3]_i_24_n_0 ,\dig[3]_i_25__0_n_0 }),
        .\dig[3]_i_22 (\dig[3]_i_49_n_0 ),
        .\dig[3]_i_44 ({\dig[3]_i_68_n_0 ,\dig[3]_i_69_n_0 ,\dig[3]_i_70_n_0 ,\dig[3]_i_71_n_0 }),
        .\dig[3]_i_71 ({toNum_n_24,toNum_n_25,toNum_n_26,toNum_n_27}),
        .\dig[3]_i_78 ({toNum_n_22,toNum_n_23}),
        .\intAddr_reg[7]_0 ({toNum_n_90,toNum_n_91,toNum_n_92,toNum_n_93,toNum_n_94,toNum_n_95,toNum_n_96}),
        .intData1(intData1),
        .\intData[12]_i_2_0 ({\intData[13]_i_12_n_0 ,\intData[13]_i_13_n_0 }),
        .\intData[3]_i_30__0_0 ({\intData[3]_i_59_n_0 ,\intData[3]_i_60_n_0 ,\intData[3]_i_61_n_0 }),
        .\intData[3]_i_32__0_0 ({\intData[3]_i_65_n_0 ,\intData[3]_i_66_n_0 ,\intData[3]_i_67_n_0 ,\intData[3]_i_68_n_0 }),
        .\intData[3]_i_59 (\intData[3]_i_97_n_0 ),
        .\intData[3]_i_68 ({toNum_n_12,toNum_n_13}),
        .\intData[3]_i_97 (toNum_n_14),
        .\intData_reg[13]_0 (toNum_n_4),
        .\intData_reg[13]_1 ({toNum_n_32,toNum_n_33}),
        .\intData_reg[14]_0 ({toNum_n_5,toNum_n_6,toNum_n_7,toNum_n_8}),
        .\intData_reg[14]_1 ({toNum_n_15,toNum_n_16,toNum_n_17,toNum_n_18}),
        .\intData_reg[15]_0 (toNum_n_9),
        .\intData_reg[15]_1 (toNum_n_10),
        .\intData_reg[15]_2 (toNum_n_19),
        .\intData_reg[15]_3 (toNum_n_20),
        .\intData_reg[15]_4 (toNum_n_21),
        .\intData_reg[15]_5 ({toNum_n_28,toNum_n_29}),
        .\intData_reg[3]_i_19_0 ({\intData_reg[3]_i_49_n_5 ,\intData_reg[3]_i_49_n_6 ,\intData_reg[3]_i_49_n_7 }),
        .\intData_reg[7]_0 ({toNum_n_34,toNum_n_35}),
        .\intData_reg[9]_0 ({toNum_n_36,toNum_n_37,toNum_n_38,toNum_n_39}),
        .\intReg_reg[1][5]_0 (\regPort[1] ),
        .\intReg_reg[2][7]_0 ({toNum_n_48,toNum_n_49,toNum_n_50,toNum_n_51,toNum_n_52,toNum_n_53,toNum_n_54}),
        .\intReg_reg[3][7]_0 ({toNum_n_55,toNum_n_56,toNum_n_57,toNum_n_58,toNum_n_59,toNum_n_60,toNum_n_61}),
        .\intReg_reg[4][7]_0 ({toNum_n_62,toNum_n_63,toNum_n_64,toNum_n_65,toNum_n_66,toNum_n_67,toNum_n_68}),
        .\intReg_reg[5][7]_0 ({toNum_n_69,toNum_n_70,toNum_n_71,toNum_n_72,toNum_n_73,toNum_n_74,toNum_n_75}),
        .\intReg_reg[6][7]_0 ({toNum_n_76,toNum_n_77,toNum_n_78,toNum_n_79,toNum_n_80,toNum_n_81,toNum_n_82}),
        .\intReg_reg[7][7]_0 ({toNum_n_83,toNum_n_84,toNum_n_85,toNum_n_86,toNum_n_87,toNum_n_88,toNum_n_89}),
        .neg_reg_0(num),
        .newOpReg(newOpReg),
        .\num_reg[0] (toNum_n_1),
        .\regPort[0] ({\regPort[0] [7],\regPort[0] [5:0]}));
  toOpReg toOp
       (.D({toOp_n_4,toOp_n_5,toOp_n_6,toOp_n_7,toOp_n_8,toOp_n_9,toOp_n_10,toOp_n_11}),
        .E(path_n_40),
        .\FSM_onehot_cs_reg[0]_0 (toOp_n_2),
        .\FSM_onehot_cs_reg[0]_1 (controller_n_7),
        .\FSM_onehot_cs_reg[1]_0 (controller_n_6),
        .\FSM_onehot_cs_reg[2]_0 (toOp_n_3),
        .Q(newAnsReg),
        .ansMaxAddr(ansMaxAddr[1]),
        .\ansReg[0] ({\ansReg[0] [7],\ansReg[0] [5:0]}),
        .\ansReg[1] (\ansReg[1] [5]),
        .clkPort(clkPort),
        .\intMaxAddr_reg[1]_0 (toOp_n_13),
        .\intMaxAddr_reg[1]_1 (maxAddrPort),
        .\intReg_reg[0][3]_0 (\intReg[0] ),
        .\intReg_reg[0][7] (newRegPort),
        .\intReg_reg[1][5]_0 (toOp_n_12),
        .\intReg_reg[1][5]_1 (\regPort[1] ),
        .newOpReg(newOpReg),
        .opPort(opPort),
        .regFill(regFill),
        .\regPort[0] ({\regPort[0] [7],\regPort[0] [5:0]}));
  trans transmitter
       (.\FSM_sequential_cs_reg[0] (toNum_n_40),
        .\FSM_sequential_cs_reg[1] (transmitter_n_0),
        .Q(maxAddr),
        .clkPort(clkPort),
        .\intData_reg[0] (TxExtPort_OBUF),
        .\intReg_reg[0][7] (\reg[0] ),
        .\intReg_reg[1][7] ({\reg[1] [7],\reg[1] [5:0]}),
        .\intReg_reg[2][7] ({\reg[2] [7],\reg[2] [5:0]}),
        .\intReg_reg[3][7] ({\reg[3] [7],\reg[3] [5:0]}),
        .\intReg_reg[4][7] ({\reg[4] [7],\reg[4] [5:0]}),
        .\intReg_reg[5][7] ({\reg[5] [7],\reg[5] [5:0]}),
        .\intReg_reg[6][7] ({\reg[6] [7],\reg[6] [5:0]}),
        .\intReg_reg[7][7] ({\reg[7] [7],\reg[7] [5:0]}));
endmodule

module clockGenerator
   (clkPort,
    clkExtPort_IBUF_BUFG);
  output clkPort;
  input clkExtPort_IBUF_BUFG;

  wire I;
  wire [5:0]clkDividerCtr;
  wire \clkDividerCtr[0]_i_1_n_0 ;
  wire \clkDividerCtr[5]_i_1_n_0 ;
  wire clkExtPort_IBUF_BUFG;
  wire clkPort;
  wire clkTog_i_1_n_0;
  wire clkTog_n_0;
  wire [5:1]data0;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkBuffer
       (.I(I),
        .O(clkPort));
  LUT1 #(
    .INIT(2'h1)) 
    \clkDividerCtr[0]_i_1 
       (.I0(clkDividerCtr[0]),
        .O(\clkDividerCtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkDividerCtr[1]_i_1 
       (.I0(clkDividerCtr[0]),
        .I1(clkDividerCtr[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clkDividerCtr[2]_i_1 
       (.I0(clkDividerCtr[0]),
        .I1(clkDividerCtr[1]),
        .I2(clkDividerCtr[2]),
        .O(data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkDividerCtr[3]_i_1 
       (.I0(clkDividerCtr[1]),
        .I1(clkDividerCtr[0]),
        .I2(clkDividerCtr[2]),
        .I3(clkDividerCtr[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clkDividerCtr[4]_i_1 
       (.I0(clkDividerCtr[2]),
        .I1(clkDividerCtr[0]),
        .I2(clkDividerCtr[1]),
        .I3(clkDividerCtr[3]),
        .I4(clkDividerCtr[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \clkDividerCtr[5]_i_1 
       (.I0(clkDividerCtr[5]),
        .I1(clkDividerCtr[4]),
        .I2(clkDividerCtr[1]),
        .I3(clkDividerCtr[2]),
        .I4(clkDividerCtr[3]),
        .I5(clkDividerCtr[0]),
        .O(\clkDividerCtr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clkDividerCtr[5]_i_2 
       (.I0(clkDividerCtr[3]),
        .I1(clkDividerCtr[1]),
        .I2(clkDividerCtr[0]),
        .I3(clkDividerCtr[2]),
        .I4(clkDividerCtr[4]),
        .I5(clkDividerCtr[5]),
        .O(data0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[0] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(\clkDividerCtr[0]_i_1_n_0 ),
        .Q(clkDividerCtr[0]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[1] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(clkDividerCtr[1]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[2] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(clkDividerCtr[2]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[3] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(clkDividerCtr[3]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[4] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(clkDividerCtr[4]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkDividerCtr_reg[5] 
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(clkDividerCtr[5]),
        .R(\clkDividerCtr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    clkTog
       (.I0(clkDividerCtr[1]),
        .I1(clkDividerCtr[2]),
        .O(clkTog_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    clkTog_i_1
       (.I0(clkDividerCtr[5]),
        .I1(clkDividerCtr[0]),
        .I2(clkDividerCtr[4]),
        .I3(clkTog_n_0),
        .I4(clkDividerCtr[3]),
        .I5(I),
        .O(clkTog_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkTog_reg
       (.C(clkExtPort_IBUF_BUFG),
        .CE(1'b1),
        .D(clkTog_i_1_n_0),
        .Q(I),
        .R(1'b0));
endmodule

module datapath
   (\FSM_onehot_cs_reg[7] ,
    \intAns_reg[4]_0 ,
    \intAns_reg[15]_0 ,
    \intAns_reg[15]_1 ,
    \intAns_reg[5]_0 ,
    \intAns_reg[6]_0 ,
    \intAns_reg[7]_0 ,
    \intAns_reg[8]_0 ,
    \intAns_reg[9]_0 ,
    \intAns_reg[10]_0 ,
    \intAns_reg[11]_0 ,
    \intAns_reg[12]_0 ,
    \intAns_reg[13]_0 ,
    \FSM_onehot_cs_reg[7]_0 ,
    \numDig[0]_i_3__0_0 ,
    \intAns_reg[15]_2 ,
    D,
    E,
    opPort,
    \op_reg[1]_0 ,
    \A_reg[0]_0 ,
    ARG_0,
    clkPort,
    ARG_1,
    A,
    Q,
    p_0_in,
    \num_reg[15] ,
    regFill,
    \op_reg[1]_1 ,
    inputExtPort_IBUF,
    SR,
    \intAns_reg[15]_3 );
  output \FSM_onehot_cs_reg[7] ;
  output \intAns_reg[4]_0 ;
  output [3:0]\intAns_reg[15]_0 ;
  output [5:0]\intAns_reg[15]_1 ;
  output \intAns_reg[5]_0 ;
  output \intAns_reg[6]_0 ;
  output \intAns_reg[7]_0 ;
  output \intAns_reg[8]_0 ;
  output \intAns_reg[9]_0 ;
  output \intAns_reg[10]_0 ;
  output \intAns_reg[11]_0 ;
  output \intAns_reg[12]_0 ;
  output \intAns_reg[13]_0 ;
  output \FSM_onehot_cs_reg[7]_0 ;
  output \numDig[0]_i_3__0_0 ;
  output \intAns_reg[15]_2 ;
  output [15:0]D;
  output [0:0]E;
  output [1:0]opPort;
  output [1:0]\op_reg[1]_0 ;
  input \A_reg[0]_0 ;
  input ARG_0;
  input clkPort;
  input [15:0]ARG_1;
  input [15:0]A;
  input [2:0]Q;
  input [2:0]p_0_in;
  input \num_reg[15] ;
  input regFill;
  input [4:0]\op_reg[1]_1 ;
  input [15:0]inputExtPort_IBUF;
  input [0:0]SR;
  input [0:0]\intAns_reg[15]_3 ;

  wire [15:0]A;
  wire ARG_0;
  wire [15:0]ARG_1;
  wire ARG_n_100;
  wire ARG_n_101;
  wire ARG_n_102;
  wire ARG_n_103;
  wire ARG_n_104;
  wire ARG_n_105;
  wire ARG_n_74;
  wire ARG_n_91;
  wire ARG_n_92;
  wire ARG_n_93;
  wire ARG_n_94;
  wire ARG_n_95;
  wire ARG_n_96;
  wire ARG_n_97;
  wire ARG_n_98;
  wire ARG_n_99;
  wire \A[15]_i_1_n_0 ;
  wire \A_reg[0]_0 ;
  wire \A_reg_n_0_[0] ;
  wire \A_reg_n_0_[10] ;
  wire \A_reg_n_0_[11] ;
  wire \A_reg_n_0_[12] ;
  wire \A_reg_n_0_[13] ;
  wire \A_reg_n_0_[14] ;
  wire \A_reg_n_0_[15] ;
  wire \A_reg_n_0_[1] ;
  wire \A_reg_n_0_[2] ;
  wire \A_reg_n_0_[3] ;
  wire \A_reg_n_0_[4] ;
  wire \A_reg_n_0_[5] ;
  wire \A_reg_n_0_[6] ;
  wire \A_reg_n_0_[7] ;
  wire \A_reg_n_0_[8] ;
  wire \A_reg_n_0_[9] ;
  wire [15:0]B;
  wire \B[15]_i_1_n_0 ;
  wire [15:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cs_reg[7] ;
  wire \FSM_onehot_cs_reg[7]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [13:4]ansPort;
  wire clkPort;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [15:0]inputExtPort_IBUF;
  wire [15:0]intAns0;
  wire [15:0]intAns01_in;
  wire intAns0_carry__0_i_1_n_0;
  wire intAns0_carry__0_i_2_n_0;
  wire intAns0_carry__0_i_3_n_0;
  wire intAns0_carry__0_i_4_n_0;
  wire intAns0_carry__0_n_0;
  wire intAns0_carry__1_i_1_n_0;
  wire intAns0_carry__1_i_2_n_0;
  wire intAns0_carry__1_i_3_n_0;
  wire intAns0_carry__1_i_4_n_0;
  wire intAns0_carry__1_n_0;
  wire intAns0_carry__2_i_1_n_0;
  wire intAns0_carry__2_i_2_n_0;
  wire intAns0_carry__2_i_3_n_0;
  wire intAns0_carry__2_i_4_n_0;
  wire intAns0_carry_i_1_n_0;
  wire intAns0_carry_i_2_n_0;
  wire intAns0_carry_i_3_n_0;
  wire intAns0_carry_i_4_n_0;
  wire intAns0_carry_n_0;
  wire \intAns0_inferred__0/i__carry__0_n_0 ;
  wire \intAns0_inferred__0/i__carry__1_n_0 ;
  wire \intAns0_inferred__0/i__carry_n_0 ;
  wire \intAns[0]_i_1_n_0 ;
  wire \intAns[10]_i_1_n_0 ;
  wire \intAns[11]_i_1_n_0 ;
  wire \intAns[12]_i_1_n_0 ;
  wire \intAns[13]_i_1_n_0 ;
  wire \intAns[14]_i_1_n_0 ;
  wire \intAns[15]_i_3_n_0 ;
  wire \intAns[1]_i_1_n_0 ;
  wire \intAns[2]_i_1_n_0 ;
  wire \intAns[3]_i_1_n_0 ;
  wire \intAns[4]_i_1_n_0 ;
  wire \intAns[5]_i_1_n_0 ;
  wire \intAns[6]_i_1_n_0 ;
  wire \intAns[7]_i_1_n_0 ;
  wire \intAns[8]_i_1_n_0 ;
  wire \intAns[9]_i_1_n_0 ;
  wire \intAns_reg[10]_0 ;
  wire \intAns_reg[11]_0 ;
  wire \intAns_reg[12]_0 ;
  wire \intAns_reg[13]_0 ;
  wire [3:0]\intAns_reg[15]_0 ;
  wire [5:0]\intAns_reg[15]_1 ;
  wire \intAns_reg[15]_2 ;
  wire [0:0]\intAns_reg[15]_3 ;
  wire \intAns_reg[4]_0 ;
  wire \intAns_reg[5]_0 ;
  wire \intAns_reg[6]_0 ;
  wire \intAns_reg[7]_0 ;
  wire \intAns_reg[8]_0 ;
  wire \intAns_reg[9]_0 ;
  wire \intData[12]_i_10__0_n_0 ;
  wire \intData[12]_i_11__0_n_0 ;
  wire \intData[12]_i_12__0_n_0 ;
  wire \intData[12]_i_5_n_0 ;
  wire \intData[12]_i_6__0_n_0 ;
  wire \intData[12]_i_7__0_n_0 ;
  wire \intData[12]_i_8__0_n_0 ;
  wire \intData[12]_i_9__0_n_0 ;
  wire \intData[15]_i_4_n_0 ;
  wire \intData[15]_i_5_n_0 ;
  wire \intData[15]_i_6_n_0 ;
  wire \intData[3]_i_23__0_n_0 ;
  wire \intData[3]_i_24__0_n_0 ;
  wire \intData[3]_i_25__0_n_0 ;
  wire \intData[3]_i_26__0_n_0 ;
  wire \intData[3]_i_27__0_n_0 ;
  wire \intData_reg[12]_i_3_n_0 ;
  wire \intData_reg[12]_i_4__0_n_0 ;
  wire \intData_reg[3]_i_13_n_0 ;
  wire \numDig[0]_i_10__0_n_0 ;
  wire \numDig[0]_i_11__0_n_0 ;
  wire \numDig[0]_i_12__0_n_0 ;
  wire \numDig[0]_i_13__0_n_0 ;
  wire \numDig[0]_i_15_n_0 ;
  wire \numDig[0]_i_16_n_0 ;
  wire \numDig[0]_i_17_n_0 ;
  wire \numDig[0]_i_19_n_0 ;
  wire \numDig[0]_i_21_n_0 ;
  wire \numDig[0]_i_22_n_0 ;
  wire \numDig[0]_i_23_n_0 ;
  wire \numDig[0]_i_24_n_0 ;
  wire \numDig[0]_i_25_n_0 ;
  wire \numDig[0]_i_26_n_0 ;
  wire \numDig[0]_i_27_n_0 ;
  wire \numDig[0]_i_28_n_0 ;
  wire \numDig[0]_i_29_n_0 ;
  wire \numDig[0]_i_2__0_n_0 ;
  wire \numDig[0]_i_30_n_0 ;
  wire \numDig[0]_i_31_n_0 ;
  wire \numDig[0]_i_32_n_0 ;
  wire \numDig[0]_i_33_n_0 ;
  wire \numDig[0]_i_3__0_0 ;
  wire \numDig[0]_i_3__0_n_0 ;
  wire \numDig[0]_i_4__0_n_0 ;
  wire \numDig[0]_i_5__0_n_0 ;
  wire \numDig[0]_i_6__0_n_0 ;
  wire \numDig[0]_i_7__0_n_0 ;
  wire \numDig[0]_i_8__0_n_0 ;
  wire \numDig[0]_i_9__0_n_0 ;
  wire \numDig[1]_i_10__0_n_0 ;
  wire \numDig[1]_i_11__0_n_0 ;
  wire \numDig[1]_i_13_n_0 ;
  wire \numDig[1]_i_14_n_0 ;
  wire \numDig[1]_i_15_n_0 ;
  wire \numDig[1]_i_16_n_0 ;
  wire \numDig[1]_i_17_n_0 ;
  wire \numDig[1]_i_3__0_n_0 ;
  wire \numDig[1]_i_4__0_n_0 ;
  wire \numDig[1]_i_5__0_n_0 ;
  wire \numDig[1]_i_6__0_n_0 ;
  wire \numDig[1]_i_7__0_n_0 ;
  wire \numDig[1]_i_8__0_n_0 ;
  wire \numDig[1]_i_9__0_n_0 ;
  wire \numDig_reg[0]_i_14_n_0 ;
  wire \numDig_reg[0]_i_18_n_0 ;
  wire \numDig_reg[0]_i_20_n_0 ;
  wire \numDig_reg[1]_i_12_n_0 ;
  wire \num_reg[15] ;
  wire [1:0]opPort;
  wire \op[0]_i_1_n_0 ;
  wire \op[1]_i_1_n_0 ;
  wire [1:0]\op_reg[1]_0 ;
  wire [4:0]\op_reg[1]_1 ;
  wire [2:0]p_0_in;
  wire regFill;
  wire [13:4]\toAns/intData1 ;
  wire [15:1]\toAns/numDig3 ;
  wire NLW_ARG_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ARG_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ARG_OVERFLOW_UNCONNECTED;
  wire NLW_ARG_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ARG_PATTERNDETECT_UNCONNECTED;
  wire NLW_ARG_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ARG_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ARG_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ARG_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_ARG_P_UNCONNECTED;
  wire [47:0]NLW_ARG_PCOUT_UNCONNECTED;
  wire [2:0]NLW_intAns0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_intAns0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_intAns0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_intAns0_carry__2_CO_UNCONNECTED;
  wire [2:0]\NLW_intAns0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_intAns0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_intAns0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_intAns0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[12]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[12]_i_4__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[15]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_13_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[3]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[0]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_numDig_reg[0]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[0]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[0]_i_20_CO_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[1]_i_12_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ARG
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ARG_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({ARG_1[15],ARG_1[15],ARG_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ARG_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ARG_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ARG_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(\A_reg[0]_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ARG_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clkPort),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ARG_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ARG_OVERFLOW_UNCONNECTED),
        .P({NLW_ARG_P_UNCONNECTED[47:32],ARG_n_74,NLW_ARG_P_UNCONNECTED[30:15],ARG_n_91,ARG_n_92,ARG_n_93,ARG_n_94,ARG_n_95,ARG_n_96,ARG_n_97,ARG_n_98,ARG_n_99,ARG_n_100,ARG_n_101,ARG_n_102,ARG_n_103,ARG_n_104,ARG_n_105}),
        .PATTERNBDETECT(NLW_ARG_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ARG_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_ARG_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ARG_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h00000001)) 
    \A[15]_i_1 
       (.I0(\op_reg[1]_1 [1]),
        .I1(\op_reg[1]_1 [0]),
        .I2(\op_reg[1]_1 [2]),
        .I3(\op_reg[1]_1 [3]),
        .I4(\op_reg[1]_1 [4]),
        .O(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[0] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[0]),
        .Q(\A_reg_n_0_[0] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[10] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[10]),
        .Q(\A_reg_n_0_[10] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[11] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[11]),
        .Q(\A_reg_n_0_[11] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[12] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[12]),
        .Q(\A_reg_n_0_[12] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[13] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[13]),
        .Q(\A_reg_n_0_[13] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[14] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[14]),
        .Q(\A_reg_n_0_[14] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[15] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[15]),
        .Q(\A_reg_n_0_[15] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[1] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[1]),
        .Q(\A_reg_n_0_[1] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[2] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[2]),
        .Q(\A_reg_n_0_[2] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[3] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[3]),
        .Q(\A_reg_n_0_[3] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[4] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[4]),
        .Q(\A_reg_n_0_[4] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[5] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[5]),
        .Q(\A_reg_n_0_[5] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[6] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[6]),
        .Q(\A_reg_n_0_[6] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[7] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[7]),
        .Q(\A_reg_n_0_[7] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[8] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[8]),
        .Q(\A_reg_n_0_[8] ),
        .R(\A[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A_reg[9] 
       (.C(clkPort),
        .CE(\A_reg[0]_0 ),
        .D(inputExtPort_IBUF[9]),
        .Q(\A_reg_n_0_[9] ),
        .R(\A[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \B[15]_i_1 
       (.I0(\op_reg[1]_1 [2]),
        .I1(\op_reg[1]_1 [1]),
        .I2(\op_reg[1]_1 [3]),
        .I3(\op_reg[1]_1 [4]),
        .I4(\op_reg[1]_1 [0]),
        .O(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[0] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[0]),
        .Q(B[0]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[10] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[10]),
        .Q(B[10]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[11] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[11]),
        .Q(B[11]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[12] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[12]),
        .Q(B[12]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[13] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[13]),
        .Q(B[13]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[14] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[14]),
        .Q(B[14]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[15] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[15]),
        .Q(B[15]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[1] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[1]),
        .Q(B[1]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[2] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[2]),
        .Q(B[2]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[3] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[3]),
        .Q(B[3]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[4] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[4]),
        .Q(B[4]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[5] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[5]),
        .Q(B[5]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[6] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[6]),
        .Q(B[6]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[7] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[7]),
        .Q(B[7]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[8] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[8]),
        .Q(B[8]),
        .R(\B[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_reg[9] 
       (.C(clkPort),
        .CE(ARG_0),
        .D(inputExtPort_IBUF[9]),
        .Q(B[9]),
        .R(\B[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(B[7]),
        .I1(\A_reg_n_0_[7] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(B[6]),
        .I1(\A_reg_n_0_[6] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(B[5]),
        .I1(\A_reg_n_0_[5] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(B[4]),
        .I1(\A_reg_n_0_[4] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(B[11]),
        .I1(\A_reg_n_0_[11] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(B[10]),
        .I1(\A_reg_n_0_[10] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(B[9]),
        .I1(\A_reg_n_0_[9] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(B[8]),
        .I1(\A_reg_n_0_[8] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(\A_reg_n_0_[15] ),
        .I1(B[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(B[14]),
        .I1(\A_reg_n_0_[14] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(B[13]),
        .I1(\A_reg_n_0_[13] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(B[12]),
        .I1(\A_reg_n_0_[12] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(B[3]),
        .I1(\A_reg_n_0_[3] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(B[2]),
        .I1(\A_reg_n_0_[2] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(B[1]),
        .I1(\A_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(B[0]),
        .I1(\A_reg_n_0_[0] ),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 intAns0_carry
       (.CI(1'b0),
        .CO({intAns0_carry_n_0,NLW_intAns0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[3] ,\A_reg_n_0_[2] ,\A_reg_n_0_[1] ,\A_reg_n_0_[0] }),
        .O(intAns0[3:0]),
        .S({intAns0_carry_i_1_n_0,intAns0_carry_i_2_n_0,intAns0_carry_i_3_n_0,intAns0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 intAns0_carry__0
       (.CI(intAns0_carry_n_0),
        .CO({intAns0_carry__0_n_0,NLW_intAns0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[7] ,\A_reg_n_0_[6] ,\A_reg_n_0_[5] ,\A_reg_n_0_[4] }),
        .O(intAns0[7:4]),
        .S({intAns0_carry__0_i_1_n_0,intAns0_carry__0_i_2_n_0,intAns0_carry__0_i_3_n_0,intAns0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__0_i_1
       (.I0(\A_reg_n_0_[7] ),
        .I1(B[7]),
        .O(intAns0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__0_i_2
       (.I0(\A_reg_n_0_[6] ),
        .I1(B[6]),
        .O(intAns0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__0_i_3
       (.I0(\A_reg_n_0_[5] ),
        .I1(B[5]),
        .O(intAns0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__0_i_4
       (.I0(\A_reg_n_0_[4] ),
        .I1(B[4]),
        .O(intAns0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 intAns0_carry__1
       (.CI(intAns0_carry__0_n_0),
        .CO({intAns0_carry__1_n_0,NLW_intAns0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[11] ,\A_reg_n_0_[10] ,\A_reg_n_0_[9] ,\A_reg_n_0_[8] }),
        .O(intAns0[11:8]),
        .S({intAns0_carry__1_i_1_n_0,intAns0_carry__1_i_2_n_0,intAns0_carry__1_i_3_n_0,intAns0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__1_i_1
       (.I0(\A_reg_n_0_[11] ),
        .I1(B[11]),
        .O(intAns0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__1_i_2
       (.I0(\A_reg_n_0_[10] ),
        .I1(B[10]),
        .O(intAns0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__1_i_3
       (.I0(\A_reg_n_0_[9] ),
        .I1(B[9]),
        .O(intAns0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__1_i_4
       (.I0(\A_reg_n_0_[8] ),
        .I1(B[8]),
        .O(intAns0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 intAns0_carry__2
       (.CI(intAns0_carry__1_n_0),
        .CO(NLW_intAns0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\A_reg_n_0_[14] ,\A_reg_n_0_[13] ,\A_reg_n_0_[12] }),
        .O(intAns0[15:12]),
        .S({intAns0_carry__2_i_1_n_0,intAns0_carry__2_i_2_n_0,intAns0_carry__2_i_3_n_0,intAns0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__2_i_1
       (.I0(B[15]),
        .I1(\A_reg_n_0_[15] ),
        .O(intAns0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__2_i_2
       (.I0(\A_reg_n_0_[14] ),
        .I1(B[14]),
        .O(intAns0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__2_i_3
       (.I0(\A_reg_n_0_[13] ),
        .I1(B[13]),
        .O(intAns0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry__2_i_4
       (.I0(\A_reg_n_0_[12] ),
        .I1(B[12]),
        .O(intAns0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry_i_1
       (.I0(\A_reg_n_0_[3] ),
        .I1(B[3]),
        .O(intAns0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry_i_2
       (.I0(\A_reg_n_0_[2] ),
        .I1(B[2]),
        .O(intAns0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry_i_3
       (.I0(\A_reg_n_0_[1] ),
        .I1(B[1]),
        .O(intAns0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    intAns0_carry_i_4
       (.I0(\A_reg_n_0_[0] ),
        .I1(B[0]),
        .O(intAns0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intAns0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\intAns0_inferred__0/i__carry_n_0 ,\NLW_intAns0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\A_reg_n_0_[3] ,\A_reg_n_0_[2] ,\A_reg_n_0_[1] ,\A_reg_n_0_[0] }),
        .O(intAns01_in[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intAns0_inferred__0/i__carry__0 
       (.CI(\intAns0_inferred__0/i__carry_n_0 ),
        .CO({\intAns0_inferred__0/i__carry__0_n_0 ,\NLW_intAns0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[7] ,\A_reg_n_0_[6] ,\A_reg_n_0_[5] ,\A_reg_n_0_[4] }),
        .O(intAns01_in[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intAns0_inferred__0/i__carry__1 
       (.CI(\intAns0_inferred__0/i__carry__0_n_0 ),
        .CO({\intAns0_inferred__0/i__carry__1_n_0 ,\NLW_intAns0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\A_reg_n_0_[11] ,\A_reg_n_0_[10] ,\A_reg_n_0_[9] ,\A_reg_n_0_[8] }),
        .O(intAns01_in[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intAns0_inferred__0/i__carry__2 
       (.CI(\intAns0_inferred__0/i__carry__1_n_0 ),
        .CO(\NLW_intAns0_inferred__0/i__carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\A_reg_n_0_[14] ,\A_reg_n_0_[13] ,\A_reg_n_0_[12] }),
        .O(intAns01_in[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[0]_i_1 
       (.I0(intAns01_in[0]),
        .I1(opPort[1]),
        .I2(ARG_n_105),
        .I3(opPort[0]),
        .I4(intAns0[0]),
        .O(\intAns[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[10]_i_1 
       (.I0(intAns01_in[10]),
        .I1(opPort[1]),
        .I2(ARG_n_95),
        .I3(opPort[0]),
        .I4(intAns0[10]),
        .O(\intAns[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[11]_i_1 
       (.I0(intAns01_in[11]),
        .I1(opPort[1]),
        .I2(ARG_n_94),
        .I3(opPort[0]),
        .I4(intAns0[11]),
        .O(\intAns[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[12]_i_1 
       (.I0(intAns01_in[12]),
        .I1(opPort[1]),
        .I2(ARG_n_93),
        .I3(opPort[0]),
        .I4(intAns0[12]),
        .O(\intAns[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[13]_i_1 
       (.I0(intAns01_in[13]),
        .I1(opPort[1]),
        .I2(ARG_n_92),
        .I3(opPort[0]),
        .I4(intAns0[13]),
        .O(\intAns[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[14]_i_1 
       (.I0(intAns01_in[14]),
        .I1(opPort[1]),
        .I2(ARG_n_91),
        .I3(opPort[0]),
        .I4(intAns0[14]),
        .O(\intAns[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[15]_i_3 
       (.I0(intAns01_in[15]),
        .I1(opPort[1]),
        .I2(ARG_n_74),
        .I3(opPort[0]),
        .I4(intAns0[15]),
        .O(\intAns[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[1]_i_1 
       (.I0(intAns01_in[1]),
        .I1(opPort[1]),
        .I2(ARG_n_104),
        .I3(opPort[0]),
        .I4(intAns0[1]),
        .O(\intAns[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[2]_i_1 
       (.I0(intAns01_in[2]),
        .I1(opPort[1]),
        .I2(ARG_n_103),
        .I3(opPort[0]),
        .I4(intAns0[2]),
        .O(\intAns[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[3]_i_1 
       (.I0(intAns01_in[3]),
        .I1(opPort[1]),
        .I2(ARG_n_102),
        .I3(opPort[0]),
        .I4(intAns0[3]),
        .O(\intAns[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[4]_i_1 
       (.I0(intAns01_in[4]),
        .I1(opPort[1]),
        .I2(ARG_n_101),
        .I3(opPort[0]),
        .I4(intAns0[4]),
        .O(\intAns[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[5]_i_1 
       (.I0(intAns01_in[5]),
        .I1(opPort[1]),
        .I2(ARG_n_100),
        .I3(opPort[0]),
        .I4(intAns0[5]),
        .O(\intAns[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[6]_i_1 
       (.I0(intAns01_in[6]),
        .I1(opPort[1]),
        .I2(ARG_n_99),
        .I3(opPort[0]),
        .I4(intAns0[6]),
        .O(\intAns[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[7]_i_1 
       (.I0(intAns01_in[7]),
        .I1(opPort[1]),
        .I2(ARG_n_98),
        .I3(opPort[0]),
        .I4(intAns0[7]),
        .O(\intAns[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[8]_i_1 
       (.I0(intAns01_in[8]),
        .I1(opPort[1]),
        .I2(ARG_n_97),
        .I3(opPort[0]),
        .I4(intAns0[8]),
        .O(\intAns[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intAns[9]_i_1 
       (.I0(intAns01_in[9]),
        .I1(opPort[1]),
        .I2(ARG_n_96),
        .I3(opPort[0]),
        .I4(intAns0[9]),
        .O(\intAns[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[0] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[0]_i_1_n_0 ),
        .Q(\intAns_reg[15]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[10] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[10]_i_1_n_0 ),
        .Q(ansPort[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[11] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[11]_i_1_n_0 ),
        .Q(ansPort[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[12] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[12]_i_1_n_0 ),
        .Q(ansPort[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[13] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[13]_i_1_n_0 ),
        .Q(ansPort[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[14] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[14]_i_1_n_0 ),
        .Q(\intAns_reg[15]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[15] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[15]_i_3_n_0 ),
        .Q(\intAns_reg[15]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[1] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[1]_i_1_n_0 ),
        .Q(\intAns_reg[15]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[2] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[2]_i_1_n_0 ),
        .Q(\intAns_reg[15]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[3] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[3]_i_1_n_0 ),
        .Q(\intAns_reg[15]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[4] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[4]_i_1_n_0 ),
        .Q(ansPort[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[5] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[5]_i_1_n_0 ),
        .Q(ansPort[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[6] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[6]_i_1_n_0 ),
        .Q(ansPort[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[7] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[7]_i_1_n_0 ),
        .Q(ansPort[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[8] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[8]_i_1_n_0 ),
        .Q(ansPort[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \intAns_reg[9] 
       (.C(clkPort),
        .CE(\intAns_reg[15]_3 ),
        .D(\intAns[9]_i_1_n_0 ),
        .Q(ansPort[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[10]_i_2__0 
       (.I0(\toAns/intData1 [10]),
        .I1(ansPort[10]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[11]_i_4 
       (.I0(\toAns/intData1 [11]),
        .I1(ansPort[11]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[11]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_10__0 
       (.I0(ansPort[7]),
        .O(\intData[12]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_11__0 
       (.I0(ansPort[6]),
        .O(\intData[12]_i_11__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_12__0 
       (.I0(ansPort[5]),
        .O(\intData[12]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[12]_i_2__0 
       (.I0(\toAns/intData1 [12]),
        .I1(ansPort[12]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[12]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_5 
       (.I0(ansPort[12]),
        .O(\intData[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_6__0 
       (.I0(ansPort[11]),
        .O(\intData[12]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_7__0 
       (.I0(ansPort[10]),
        .O(\intData[12]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_8__0 
       (.I0(ansPort[9]),
        .O(\intData[12]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[12]_i_9__0 
       (.I0(ansPort[8]),
        .O(\intData[12]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[13]_i_7 
       (.I0(\toAns/intData1 [13]),
        .I1(ansPort[13]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[13]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[15]_i_4 
       (.I0(\intAns_reg[15]_1 [5]),
        .O(\intData[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[15]_i_5 
       (.I0(\intAns_reg[15]_1 [4]),
        .O(\intData[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[15]_i_6 
       (.I0(ansPort[13]),
        .O(\intData[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_23__0 
       (.I0(\intAns_reg[15]_1 [0]),
        .O(\intData[3]_i_23__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_24__0 
       (.I0(ansPort[4]),
        .O(\intData[3]_i_24__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_25__0 
       (.I0(\intAns_reg[15]_1 [3]),
        .O(\intData[3]_i_25__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_26__0 
       (.I0(\intAns_reg[15]_1 [2]),
        .O(\intData[3]_i_26__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_27__0 
       (.I0(\intAns_reg[15]_1 [1]),
        .O(\intData[3]_i_27__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[4]_i_4__0 
       (.I0(\toAns/intData1 [4]),
        .I1(ansPort[4]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[5]_i_4__0 
       (.I0(\toAns/intData1 [5]),
        .I1(ansPort[5]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[6]_i_4__0 
       (.I0(\toAns/intData1 [6]),
        .I1(ansPort[6]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[7]_i_3__0 
       (.I0(\toAns/intData1 [7]),
        .I1(ansPort[7]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[8]_i_3__0 
       (.I0(\toAns/intData1 [8]),
        .I1(ansPort[8]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAA0A0AAACC0C0CCC)) 
    \intData[9]_i_7 
       (.I0(\toAns/intData1 [9]),
        .I1(ansPort[9]),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intAns_reg[15]_1 [5]),
        .O(\intAns_reg[9]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[12]_i_3 
       (.CI(\intData_reg[12]_i_4__0_n_0 ),
        .CO({\intData_reg[12]_i_3_n_0 ,\NLW_intData_reg[12]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\toAns/intData1 [12:9]),
        .S({\intData[12]_i_5_n_0 ,\intData[12]_i_6__0_n_0 ,\intData[12]_i_7__0_n_0 ,\intData[12]_i_8__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[12]_i_4__0 
       (.CI(\intData_reg[3]_i_13_n_0 ),
        .CO({\intData_reg[12]_i_4__0_n_0 ,\NLW_intData_reg[12]_i_4__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\toAns/intData1 [8:5]),
        .S({\intData[12]_i_9__0_n_0 ,\intData[12]_i_10__0_n_0 ,\intData[12]_i_11__0_n_0 ,\intData[12]_i_12__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[15]_i_2 
       (.CI(\intData_reg[12]_i_3_n_0 ),
        .CO(\NLW_intData_reg[15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[15]_i_2_O_UNCONNECTED [3],\intAns_reg[15]_0 [3:2],\toAns/intData1 [13]}),
        .S({1'b0,\intData[15]_i_4_n_0 ,\intData[15]_i_5_n_0 ,\intData[15]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_13 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_13_n_0 ,\NLW_intData_reg[3]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(\intData[3]_i_23__0_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\toAns/intData1 [4],\intAns_reg[15]_0 [1:0],\NLW_intData_reg[3]_i_13_O_UNCONNECTED [0]}),
        .S({\intData[3]_i_24__0_n_0 ,\intData[3]_i_25__0_n_0 ,\intData[3]_i_26__0_n_0 ,\intData[3]_i_27__0_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \intReg[0][2]_i_1__1 
       (.I0(opPort[0]),
        .I1(opPort[1]),
        .O(\op_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \intReg[0][3]_i_1__1 
       (.I0(opPort[1]),
        .I1(opPort[0]),
        .O(\op_reg[1]_0 [1]));
  LUT3 #(
    .INIT(8'h2A)) 
    \intReg[0][6]_i_1 
       (.I0(regFill),
        .I1(opPort[0]),
        .I2(opPort[1]),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    neg_i_1__0
       (.I0(\intAns_reg[15]_1 [5]),
        .I1(Q[1]),
        .O(\intAns_reg[15]_2 ));
  LUT6 #(
    .INIT(64'h00000000DDDFFFDF)) 
    \numDig[0]_i_10__0 
       (.I0(\numDig[0]_i_12__0_n_0 ),
        .I1(\numDig[0]_i_17_n_0 ),
        .I2(ansPort[10]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [10]),
        .I5(\numDig[0]_i_19_n_0 ),
        .O(\numDig[0]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \numDig[0]_i_11__0 
       (.I0(ansPort[12]),
        .I1(\toAns/numDig3 [12]),
        .I2(ansPort[11]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [11]),
        .O(\numDig[0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \numDig[0]_i_12__0 
       (.I0(\toAns/numDig3 [6]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[6]),
        .I3(\toAns/numDig3 [5]),
        .I4(ansPort[5]),
        .I5(\numDig[0]_i_21_n_0 ),
        .O(\numDig[0]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h47CF77FFFFFFFFFF)) 
    \numDig[0]_i_13__0 
       (.I0(\toAns/numDig3 [8]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[8]),
        .I3(\toAns/numDig3 [9]),
        .I4(ansPort[9]),
        .I5(\numDig[0]_i_22_n_0 ),
        .O(\numDig[0]_i_13__0_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \numDig[0]_i_15 
       (.I0(ansPort[5]),
        .I1(\toAns/numDig3 [5]),
        .I2(ansPort[6]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [6]),
        .O(\numDig[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \numDig[0]_i_16 
       (.I0(ansPort[4]),
        .I1(\toAns/numDig3 [4]),
        .I2(\intAns_reg[15]_1 [3]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [3]),
        .O(\numDig[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \numDig[0]_i_17 
       (.I0(ansPort[9]),
        .I1(\toAns/numDig3 [9]),
        .I2(ansPort[8]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [8]),
        .O(\numDig[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \numDig[0]_i_19 
       (.I0(\toAns/numDig3 [11]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[11]),
        .I3(\toAns/numDig3 [12]),
        .I4(ansPort[12]),
        .I5(\numDig[0]_i_8__0_n_0 ),
        .O(\numDig[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00A200FFAAA2AA00)) 
    \numDig[0]_i_1__0 
       (.I0(\numDig[0]_i_2__0_n_0 ),
        .I1(\numDig[0]_i_3__0_n_0 ),
        .I2(\numDig[0]_i_4__0_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(p_0_in[0]),
        .O(\FSM_onehot_cs_reg[7] ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \numDig[0]_i_21 
       (.I0(ansPort[4]),
        .I1(\toAns/numDig3 [4]),
        .I2(ansPort[7]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [7]),
        .O(\numDig[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \numDig[0]_i_22 
       (.I0(\toAns/numDig3 [10]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[10]),
        .O(\numDig[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_23 
       (.I0(\intAns_reg[15]_1 [5]),
        .O(\numDig[0]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_24 
       (.I0(\intAns_reg[15]_1 [4]),
        .O(\numDig[0]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_25 
       (.I0(ansPort[13]),
        .O(\numDig[0]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_26 
       (.I0(ansPort[8]),
        .O(\numDig[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_27 
       (.I0(ansPort[7]),
        .O(\numDig[0]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_28 
       (.I0(ansPort[6]),
        .O(\numDig[0]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_29 
       (.I0(ansPort[5]),
        .O(\numDig[0]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \numDig[0]_i_2__0 
       (.I0(\numDig[1]_i_3__0_n_0 ),
        .I1(\numDig[0]_i_4__0_n_0 ),
        .I2(\numDig[1]_i_4__0_n_0 ),
        .O(\numDig[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_30 
       (.I0(ansPort[12]),
        .O(\numDig[0]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_31 
       (.I0(ansPort[11]),
        .O(\numDig[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_32 
       (.I0(ansPort[10]),
        .O(\numDig[0]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[0]_i_33 
       (.I0(ansPort[9]),
        .O(\numDig[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5454545400000054)) 
    \numDig[0]_i_3__0 
       (.I0(\numDig[0]_i_5__0_n_0 ),
        .I1(\numDig[0]_i_6__0_n_0 ),
        .I2(\numDig[0]_i_7__0_n_0 ),
        .I3(\numDig[0]_i_8__0_n_0 ),
        .I4(\numDig[0]_i_9__0_n_0 ),
        .I5(\numDig[0]_i_10__0_n_0 ),
        .O(\numDig[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFCFCFFFEFCFC)) 
    \numDig[0]_i_4__0 
       (.I0(\numDig[0]_i_11__0_n_0 ),
        .I1(\numDig[0]_i_5__0_n_0 ),
        .I2(\numDig[0]_i_8__0_n_0 ),
        .I3(\numDig[0]_i_12__0_n_0 ),
        .I4(\numDig[0]_i_9__0_n_0 ),
        .I5(\numDig[0]_i_13__0_n_0 ),
        .O(\numDig[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \numDig[0]_i_5__0 
       (.I0(\numDig_reg[0]_i_14_n_0 ),
        .I1(\toAns/numDig3 [15]),
        .I2(\intAns_reg[15]_1 [5]),
        .O(\numDig[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404000000)) 
    \numDig[0]_i_6__0 
       (.I0(\numDig[0]_i_15_n_0 ),
        .I1(\numDig[0]_i_16_n_0 ),
        .I2(\numDig[0]_i_17_n_0 ),
        .I3(\toAns/numDig3 [7]),
        .I4(\intAns_reg[15]_1 [5]),
        .I5(ansPort[7]),
        .O(\numDig[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    \numDig[0]_i_7__0 
       (.I0(\numDig[0]_i_9__0_n_0 ),
        .I1(\numDig[0]_i_19_n_0 ),
        .I2(\toAns/numDig3 [10]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(ansPort[10]),
        .I5(\numDig[0]_i_5__0_n_0 ),
        .O(\numDig[0]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \numDig[0]_i_8__0 
       (.I0(\toAns/numDig3 [14]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(\intAns_reg[15]_1 [4]),
        .O(\numDig[0]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \numDig[0]_i_9__0 
       (.I0(\toAns/numDig3 [13]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[13]),
        .O(\numDig[0]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \numDig[1]_i_10__0 
       (.I0(\toAns/numDig3 [1]),
        .I1(\toAns/numDig3 [3]),
        .I2(\intAns_reg[15]_1 [5]),
        .I3(\intAns_reg[15]_1 [3]),
        .I4(\intAns_reg[15]_1 [1]),
        .O(\numDig[1]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8308800)) 
    \numDig[1]_i_11__0 
       (.I0(\toAns/numDig3 [3]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(\intAns_reg[15]_1 [3]),
        .I3(\toAns/numDig3 [2]),
        .I4(\intAns_reg[15]_1 [2]),
        .I5(\numDig[1]_i_7__0_n_0 ),
        .O(\numDig[1]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \numDig[1]_i_13 
       (.I0(\toAns/numDig3 [10]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[10]),
        .I3(\toAns/numDig3 [13]),
        .I4(ansPort[13]),
        .I5(\numDig[0]_i_5__0_n_0 ),
        .O(\numDig[1]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[1]_i_14 
       (.I0(ansPort[4]),
        .O(\numDig[1]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[1]_i_15 
       (.I0(\intAns_reg[15]_1 [3]),
        .O(\numDig[1]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[1]_i_16 
       (.I0(\intAns_reg[15]_1 [2]),
        .O(\numDig[1]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[1]_i_17 
       (.I0(\intAns_reg[15]_1 [1]),
        .O(\numDig[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \numDig[1]_i_2 
       (.I0(\numDig[1]_i_3__0_n_0 ),
        .I1(\numDig[1]_i_4__0_n_0 ),
        .O(\FSM_onehot_cs_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    \numDig[1]_i_3__0 
       (.I0(\numDig[1]_i_5__0_n_0 ),
        .I1(\numDig[1]_i_6__0_n_0 ),
        .I2(\numDig[0]_i_7__0_n_0 ),
        .I3(\numDig[1]_i_7__0_n_0 ),
        .I4(\numDig[1]_i_8__0_n_0 ),
        .I5(Q[2]),
        .O(\numDig[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \numDig[1]_i_4__0 
       (.I0(\numDig[1]_i_5__0_n_0 ),
        .I1(\numDig[1]_i_9__0_n_0 ),
        .I2(\numDig[1]_i_10__0_n_0 ),
        .I3(\numDig[1]_i_11__0_n_0 ),
        .I4(\numDig[0]_i_7__0_n_0 ),
        .I5(\numDig[0]_i_12__0_n_0 ),
        .O(\numDig[1]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \numDig[1]_i_5__0 
       (.I0(\numDig[0]_i_15_n_0 ),
        .I1(\toAns/numDig3 [2]),
        .I2(\intAns_reg[15]_1 [5]),
        .I3(\intAns_reg[15]_1 [2]),
        .I4(\numDig[0]_i_16_n_0 ),
        .O(\numDig[1]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \numDig[1]_i_6__0 
       (.I0(\toAns/numDig3 [7]),
        .I1(\intAns_reg[15]_1 [5]),
        .I2(ansPort[7]),
        .O(\numDig[1]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \numDig[1]_i_7__0 
       (.I0(ansPort[9]),
        .I1(\toAns/numDig3 [9]),
        .I2(ansPort[8]),
        .I3(\intAns_reg[15]_1 [5]),
        .I4(\toAns/numDig3 [8]),
        .O(\numDig[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444404444444444)) 
    \numDig[1]_i_8__0 
       (.I0(\numDig[0]_i_19_n_0 ),
        .I1(\numDig[1]_i_13_n_0 ),
        .I2(\numDig[0]_i_15_n_0 ),
        .I3(\numDig[1]_i_6__0_n_0 ),
        .I4(\numDig[0]_i_17_n_0 ),
        .I5(\numDig[0]_i_16_n_0 ),
        .O(\numDig[1]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \numDig[1]_i_9__0 
       (.I0(\numDig[1]_i_7__0_n_0 ),
        .I1(\numDig[1]_i_6__0_n_0 ),
        .I2(\numDig[0]_i_22_n_0 ),
        .I3(\numDig[0]_i_5__0_n_0 ),
        .I4(\numDig[0]_i_9__0_n_0 ),
        .I5(\numDig[0]_i_19_n_0 ),
        .O(\numDig[1]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \numDig[2]_i_2__0 
       (.I0(\numDig[0]_i_4__0_n_0 ),
        .I1(\numDig[0]_i_3__0_n_0 ),
        .O(\numDig[0]_i_3__0_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[0]_i_14 
       (.CI(\numDig_reg[0]_i_20_n_0 ),
        .CO({\numDig_reg[0]_i_14_n_0 ,\NLW_numDig_reg[0]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({\NLW_numDig_reg[0]_i_14_O_UNCONNECTED [3],\toAns/numDig3 [15:13]}),
        .S({1'b1,\numDig[0]_i_23_n_0 ,\numDig[0]_i_24_n_0 ,\numDig[0]_i_25_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[0]_i_18 
       (.CI(\numDig_reg[1]_i_12_n_0 ),
        .CO({\numDig_reg[0]_i_18_n_0 ,\NLW_numDig_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\toAns/numDig3 [8:5]),
        .S({\numDig[0]_i_26_n_0 ,\numDig[0]_i_27_n_0 ,\numDig[0]_i_28_n_0 ,\numDig[0]_i_29_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[0]_i_20 
       (.CI(\numDig_reg[0]_i_18_n_0 ),
        .CO({\numDig_reg[0]_i_20_n_0 ,\NLW_numDig_reg[0]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\toAns/numDig3 [12:9]),
        .S({\numDig[0]_i_30_n_0 ,\numDig[0]_i_31_n_0 ,\numDig[0]_i_32_n_0 ,\numDig[0]_i_33_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[1]_i_12 
       (.CI(1'b0),
        .CO({\numDig_reg[1]_i_12_n_0 ,\NLW_numDig_reg[1]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(\intData[3]_i_23__0_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\toAns/numDig3 [4:1]),
        .S({\numDig[1]_i_14_n_0 ,\numDig[1]_i_15_n_0 ,\numDig[1]_i_16_n_0 ,\numDig[1]_i_17_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[0]_i_1 
       (.I0(B[0]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[0] ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[10]_i_1 
       (.I0(B[10]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[10] ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[11]_i_1 
       (.I0(B[11]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[11] ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[12]_i_1 
       (.I0(B[12]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[12] ),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[13]_i_1 
       (.I0(B[13]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[13] ),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[14]_i_1 
       (.I0(B[14]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[14] ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[15]_i_1 
       (.I0(B[15]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[15] ),
        .O(D[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[1]_i_1 
       (.I0(B[1]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[1] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[2]_i_1 
       (.I0(B[2]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[2] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[3]_i_1 
       (.I0(B[3]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[3] ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[4]_i_1 
       (.I0(B[4]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[4] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[5]_i_1 
       (.I0(B[5]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[5] ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[6]_i_1 
       (.I0(B[6]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[6] ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[7]_i_1 
       (.I0(B[7]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[7] ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[8]_i_1 
       (.I0(B[8]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[8] ),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \num_reg[9]_i_1 
       (.I0(B[9]),
        .I1(\num_reg[15] ),
        .I2(\A_reg_n_0_[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFF7FFF700000010)) 
    \op[0]_i_1 
       (.I0(\op_reg[1]_1 [2]),
        .I1(\op_reg[1]_1 [1]),
        .I2(\op_reg[1]_1 [3]),
        .I3(\op_reg[1]_1 [4]),
        .I4(\op_reg[1]_1 [0]),
        .I5(opPort[0]),
        .O(\op[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE700080000)) 
    \op[1]_i_1 
       (.I0(\op_reg[1]_1 [2]),
        .I1(\op_reg[1]_1 [1]),
        .I2(\op_reg[1]_1 [3]),
        .I3(\op_reg[1]_1 [4]),
        .I4(\op_reg[1]_1 [0]),
        .I5(opPort[1]),
        .O(\op[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\op[0]_i_1_n_0 ),
        .Q(opPort[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\op[1]_i_1_n_0 ),
        .Q(opPort[1]),
        .R(1'b0));
endmodule

module fsm
   (\FSM_onehot_cs_reg[0] ,
    \FSM_sequential_cs_reg[4]_0 ,
    \FSM_onehot_cs_reg[0]_0 ,
    \FSM_onehot_cs_reg[0]_1 ,
    \FSM_sequential_cs_reg[0]_0 ,
    SR,
    A,
    \FSM_sequential_cs_reg[2]_0 ,
    E,
    \FSM_sequential_cs_reg[0]_1 ,
    \FSM_sequential_cs_reg[3]_0 ,
    B,
    \FSM_sequential_cs_reg[4]_1 ,
    Q,
    \FSM_onehot_cs_reg[1] ,
    newOpReg,
    regFill,
    \FSM_sequential_cs_reg[0]_2 ,
    inputExtPort_IBUF,
    \FSM_sequential_cs_reg[0]_3 ,
    opPort,
    \FSM_sequential_cs_reg[0]_4 ,
    \FSM_sequential_cs_reg[1]_0 ,
    mpDelayReg,
    loadExtPort_IBUF,
    mpDelayReg_0,
    multExtPort_IBUF,
    \FSM_sequential_cs_reg[0]_5 ,
    clkPort);
  output \FSM_onehot_cs_reg[0] ;
  output [4:0]\FSM_sequential_cs_reg[4]_0 ;
  output \FSM_onehot_cs_reg[0]_0 ;
  output \FSM_onehot_cs_reg[0]_1 ;
  output \FSM_sequential_cs_reg[0]_0 ;
  output [0:0]SR;
  output [15:0]A;
  output \FSM_sequential_cs_reg[2]_0 ;
  output [0:0]E;
  output \FSM_sequential_cs_reg[0]_1 ;
  output [0:0]\FSM_sequential_cs_reg[3]_0 ;
  output [15:0]B;
  output \FSM_sequential_cs_reg[4]_1 ;
  input [0:0]Q;
  input \FSM_onehot_cs_reg[1] ;
  input newOpReg;
  input regFill;
  input \FSM_sequential_cs_reg[0]_2 ;
  input [15:0]inputExtPort_IBUF;
  input \FSM_sequential_cs_reg[0]_3 ;
  input [1:0]opPort;
  input \FSM_sequential_cs_reg[0]_4 ;
  input \FSM_sequential_cs_reg[1]_0 ;
  input mpDelayReg;
  input loadExtPort_IBUF;
  input mpDelayReg_0;
  input multExtPort_IBUF;
  input \FSM_sequential_cs_reg[0]_5 ;
  input clkPort;

  wire [15:0]A;
  wire [15:0]B;
  wire [0:0]E;
  wire \FSM_onehot_cs[1]_i_2_n_0 ;
  wire \FSM_onehot_cs[1]_i_3_n_0 ;
  wire \FSM_onehot_cs_reg[0] ;
  wire \FSM_onehot_cs_reg[0]_0 ;
  wire \FSM_onehot_cs_reg[0]_1 ;
  wire \FSM_onehot_cs_reg[1] ;
  wire \FSM_sequential_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_cs[3]_i_2_n_0 ;
  wire \FSM_sequential_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_cs[4]_i_1_n_0 ;
  wire \FSM_sequential_cs[4]_i_3_n_0 ;
  wire \FSM_sequential_cs[4]_i_4_n_0 ;
  wire \FSM_sequential_cs[4]_i_6_n_0 ;
  wire \FSM_sequential_cs_reg[0]_0 ;
  wire \FSM_sequential_cs_reg[0]_1 ;
  wire \FSM_sequential_cs_reg[0]_2 ;
  wire \FSM_sequential_cs_reg[0]_3 ;
  wire \FSM_sequential_cs_reg[0]_4 ;
  wire \FSM_sequential_cs_reg[0]_5 ;
  wire \FSM_sequential_cs_reg[1]_0 ;
  wire \FSM_sequential_cs_reg[2]_0 ;
  wire [0:0]\FSM_sequential_cs_reg[3]_0 ;
  wire [4:0]\FSM_sequential_cs_reg[4]_0 ;
  wire \FSM_sequential_cs_reg[4]_1 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clkPort;
  wire [15:0]inputExtPort_IBUF;
  wire loadExtPort_IBUF;
  wire mpDelayReg;
  wire mpDelayReg_0;
  wire multExtPort_IBUF;
  wire newOpReg;
  wire [4:0]ns__0;
  wire [1:0]opPort;
  wire regFill;

  LUT4 #(
    .INIT(16'h0001)) 
    ARG_i_1
       (.I0(\FSM_sequential_cs_reg[4]_0 [4]),
        .I1(\FSM_sequential_cs_reg[4]_0 [3]),
        .I2(\FSM_sequential_cs_reg[4]_0 [2]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .O(\FSM_sequential_cs_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_10
       (.I0(inputExtPort_IBUF[8]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[8]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_11
       (.I0(inputExtPort_IBUF[7]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_12
       (.I0(inputExtPort_IBUF[6]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_13
       (.I0(inputExtPort_IBUF[5]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_14
       (.I0(inputExtPort_IBUF[4]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_15
       (.I0(inputExtPort_IBUF[3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_16
       (.I0(inputExtPort_IBUF[2]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_17
       (.I0(inputExtPort_IBUF[1]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[1]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_18
       (.I0(inputExtPort_IBUF[0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_19
       (.I0(inputExtPort_IBUF[15]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[15]));
  LUT5 #(
    .INIT(32'h00100001)) 
    ARG_i_2
       (.I0(\FSM_sequential_cs_reg[4]_0 [0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [3]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_20
       (.I0(inputExtPort_IBUF[14]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[14]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_21
       (.I0(inputExtPort_IBUF[13]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[13]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_22
       (.I0(inputExtPort_IBUF[12]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_23
       (.I0(inputExtPort_IBUF[11]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_24
       (.I0(inputExtPort_IBUF[10]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_25
       (.I0(inputExtPort_IBUF[9]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_26
       (.I0(inputExtPort_IBUF[8]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_27
       (.I0(inputExtPort_IBUF[7]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_28
       (.I0(inputExtPort_IBUF[6]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_29
       (.I0(inputExtPort_IBUF[5]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_3
       (.I0(inputExtPort_IBUF[15]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[15]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_30
       (.I0(inputExtPort_IBUF[4]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_31
       (.I0(inputExtPort_IBUF[3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_32
       (.I0(inputExtPort_IBUF[2]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_33
       (.I0(inputExtPort_IBUF[1]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    ARG_i_34
       (.I0(inputExtPort_IBUF[0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_4
       (.I0(inputExtPort_IBUF[14]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[14]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_5
       (.I0(inputExtPort_IBUF[13]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[13]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_6
       (.I0(inputExtPort_IBUF[12]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[12]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_7
       (.I0(inputExtPort_IBUF[11]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[11]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_8
       (.I0(inputExtPort_IBUF[10]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[10]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    ARG_i_9
       (.I0(inputExtPort_IBUF[9]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [3]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(B[9]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF4CCC)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs[1]_i_2_n_0 ),
        .I1(\FSM_onehot_cs_reg[1] ),
        .I2(\FSM_sequential_cs_reg[4]_0 [0]),
        .I3(\FSM_onehot_cs[1]_i_3_n_0 ),
        .I4(newOpReg),
        .I5(regFill),
        .O(\FSM_onehot_cs_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0008000000000800)) 
    \FSM_onehot_cs[10]_i_3 
       (.I0(Q),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(\FSM_onehot_cs_reg[0] ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_cs[10]_i_3__0 
       (.I0(\FSM_sequential_cs_reg[4]_0 [2]),
        .I1(\FSM_sequential_cs_reg[4]_0 [3]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .O(\FSM_sequential_cs_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCC8000)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs[1]_i_2_n_0 ),
        .I1(\FSM_onehot_cs_reg[1] ),
        .I2(\FSM_sequential_cs_reg[4]_0 [0]),
        .I3(\FSM_onehot_cs[1]_i_3_n_0 ),
        .I4(newOpReg),
        .I5(regFill),
        .O(\FSM_onehot_cs_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[1]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .O(\FSM_onehot_cs[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_cs[1]_i_3 
       (.I0(\FSM_sequential_cs_reg[4]_0 [1]),
        .I1(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_onehot_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000F000F0F0FAF2F)) 
    \FSM_sequential_cs[0]_i_1__0 
       (.I0(\FSM_sequential_cs_reg[4]_0 [2]),
        .I1(\FSM_sequential_cs_reg[0]_4 ),
        .I2(\FSM_sequential_cs_reg[4]_0 [0]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [3]),
        .I5(\FSM_sequential_cs_reg[4]_0 [4]),
        .O(ns__0[0]));
  LUT6 #(
    .INIT(64'h0530053005000700)) 
    \FSM_sequential_cs[1]_i_1__0 
       (.I0(\FSM_sequential_cs[1]_i_2_n_0 ),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[1]_0 ),
        .I5(\FSM_sequential_cs[1]_i_4_n_0 ),
        .O(ns__0[1]));
  LUT5 #(
    .INIT(32'h11111011)) 
    \FSM_sequential_cs[1]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [4]),
        .I1(\FSM_sequential_cs_reg[4]_0 [3]),
        .I2(mpDelayReg),
        .I3(loadExtPort_IBUF),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hD8FF)) 
    \FSM_sequential_cs[1]_i_4 
       (.I0(\FSM_sequential_cs_reg[4]_0 [4]),
        .I1(\FSM_sequential_cs_reg[4]_0 [1]),
        .I2(\FSM_sequential_cs_reg[4]_0 [3]),
        .I3(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000222022202220)) 
    \FSM_sequential_cs[2]_i_1__0 
       (.I0(\FSM_sequential_cs[3]_i_3_n_0 ),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs[2]_i_2_n_0 ),
        .I3(\FSM_sequential_cs_reg[4]_0 [2]),
        .I4(\FSM_sequential_cs[3]_i_4_n_0 ),
        .I5(\FSM_sequential_cs[2]_i_3_n_0 ),
        .O(ns__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [1]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .O(\FSM_sequential_cs[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \FSM_sequential_cs[2]_i_3 
       (.I0(\FSM_sequential_cs_reg[4]_0 [3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [1]),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .O(\FSM_sequential_cs[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h002F0022)) 
    \FSM_sequential_cs[3]_i_1 
       (.I0(\FSM_sequential_cs[3]_i_2_n_0 ),
        .I1(\FSM_sequential_cs[3]_i_3_n_0 ),
        .I2(\FSM_sequential_cs[3]_i_4_n_0 ),
        .I3(\FSM_sequential_cs_reg[4]_0 [4]),
        .I4(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(\FSM_sequential_cs[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_cs[3]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [1]),
        .I1(mpDelayReg_0),
        .I2(multExtPort_IBUF),
        .O(\FSM_sequential_cs[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF7F0F7F)) 
    \FSM_sequential_cs[3]_i_3 
       (.I0(\FSM_sequential_cs_reg[1]_0 ),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [2]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [4]),
        .I5(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(\FSM_sequential_cs[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88888088)) 
    \FSM_sequential_cs[3]_i_4 
       (.I0(\FSM_sequential_cs_reg[4]_0 [0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [1]),
        .I2(mpDelayReg),
        .I3(loadExtPort_IBUF),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAAEAEEEE)) 
    \FSM_sequential_cs[4]_i_1 
       (.I0(\FSM_sequential_cs[4]_i_3_n_0 ),
        .I1(\FSM_sequential_cs[4]_i_4_n_0 ),
        .I2(\FSM_sequential_cs_reg[4]_0 [4]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [0]),
        .I5(\FSM_sequential_cs_reg[0]_2 ),
        .O(\FSM_sequential_cs[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF8000)) 
    \FSM_sequential_cs[4]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [2]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [3]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [4]),
        .O(ns__0[4]));
  LUT6 #(
    .INIT(64'h4544454444444544)) 
    \FSM_sequential_cs[4]_i_3 
       (.I0(\FSM_sequential_cs_reg[4]_0 [4]),
        .I1(\FSM_sequential_cs[4]_i_6_n_0 ),
        .I2(\FSM_sequential_cs_reg[0]_5 ),
        .I3(\FSM_sequential_cs_reg[4]_0 [0]),
        .I4(\FSM_sequential_cs_reg[0]_3 ),
        .I5(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_cs[4]_i_4 
       (.I0(\FSM_sequential_cs_reg[4]_0 [3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [2]),
        .O(\FSM_sequential_cs[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1FF11FF31FF11FFF)) 
    \FSM_sequential_cs[4]_i_6 
       (.I0(\FSM_sequential_cs_reg[0]_2 ),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_sequential_cs_reg[4]_0 [3]),
        .I3(\FSM_sequential_cs_reg[4]_0 [1]),
        .I4(\FSM_sequential_cs_reg[4]_0 [2]),
        .I5(\FSM_sequential_cs_reg[0]_3 ),
        .O(\FSM_sequential_cs[4]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "sendb:01110,sendbmp:01101,acceptb:01100,sendcalc:10010,sendamp:00011,sendcalcmp:10001,accepta:00010,calc:10000,waita:00001,waitb:01011,reset:00000,sendop:01010,acceptsub:00111,acceptadd:00110,sendopmp:01001,acceptmult:01000,waitop:00101,senda:00100,waitcalc:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clkPort),
        .CE(\FSM_sequential_cs[4]_i_1_n_0 ),
        .D(ns__0[0]),
        .Q(\FSM_sequential_cs_reg[4]_0 [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendb:01110,sendbmp:01101,acceptb:01100,sendcalc:10010,sendamp:00011,sendcalcmp:10001,accepta:00010,calc:10000,waita:00001,waitb:01011,reset:00000,sendop:01010,acceptsub:00111,acceptadd:00110,sendopmp:01001,acceptmult:01000,waitop:00101,senda:00100,waitcalc:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clkPort),
        .CE(\FSM_sequential_cs[4]_i_1_n_0 ),
        .D(ns__0[1]),
        .Q(\FSM_sequential_cs_reg[4]_0 [1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendb:01110,sendbmp:01101,acceptb:01100,sendcalc:10010,sendamp:00011,sendcalcmp:10001,accepta:00010,calc:10000,waita:00001,waitb:01011,reset:00000,sendop:01010,acceptsub:00111,acceptadd:00110,sendopmp:01001,acceptmult:01000,waitop:00101,senda:00100,waitcalc:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clkPort),
        .CE(\FSM_sequential_cs[4]_i_1_n_0 ),
        .D(ns__0[2]),
        .Q(\FSM_sequential_cs_reg[4]_0 [2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendb:01110,sendbmp:01101,acceptb:01100,sendcalc:10010,sendamp:00011,sendcalcmp:10001,accepta:00010,calc:10000,waita:00001,waitb:01011,reset:00000,sendop:01010,acceptsub:00111,acceptadd:00110,sendopmp:01001,acceptmult:01000,waitop:00101,senda:00100,waitcalc:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[3] 
       (.C(clkPort),
        .CE(\FSM_sequential_cs[4]_i_1_n_0 ),
        .D(\FSM_sequential_cs[3]_i_1_n_0 ),
        .Q(\FSM_sequential_cs_reg[4]_0 [3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendb:01110,sendbmp:01101,acceptb:01100,sendcalc:10010,sendamp:00011,sendcalcmp:10001,accepta:00010,calc:10000,waita:00001,waitb:01011,reset:00000,sendop:01010,acceptsub:00111,acceptadd:00110,sendopmp:01001,acceptmult:01000,waitop:00101,senda:00100,waitcalc:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[4] 
       (.C(clkPort),
        .CE(\FSM_sequential_cs[4]_i_1_n_0 ),
        .D(ns__0[4]),
        .Q(\FSM_sequential_cs_reg[4]_0 [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \intAns[15]_i_1 
       (.I0(\FSM_sequential_cs_reg[4]_0 [0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [2]),
        .I2(\FSM_sequential_cs_reg[4]_0 [3]),
        .I3(\FSM_sequential_cs_reg[4]_0 [4]),
        .I4(\FSM_sequential_cs_reg[4]_0 [1]),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000100010001000)) 
    \intAns[15]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [0]),
        .I2(\FSM_onehot_cs[1]_i_3_n_0 ),
        .I3(\FSM_sequential_cs_reg[4]_0 [4]),
        .I4(opPort[1]),
        .I5(opPort[0]),
        .O(\FSM_sequential_cs_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h00180000)) 
    \num_reg[15]_i_2 
       (.I0(\FSM_sequential_cs_reg[4]_0 [3]),
        .I1(\FSM_sequential_cs_reg[4]_0 [2]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [4]),
        .I4(\FSM_sequential_cs_reg[4]_0 [0]),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \num_reg[15]_i_3 
       (.I0(\FSM_sequential_cs_reg[4]_0 [0]),
        .I1(\FSM_sequential_cs_reg[4]_0 [4]),
        .I2(\FSM_sequential_cs_reg[4]_0 [1]),
        .I3(\FSM_sequential_cs_reg[4]_0 [2]),
        .I4(\FSM_sequential_cs_reg[4]_0 [3]),
        .O(\FSM_sequential_cs_reg[0]_1 ));
endmodule

module toAnsReg
   (p_0_in,
    ansMaxAddr,
    Q,
    O,
    \intData_reg[15]_0 ,
    \intData_reg[14]_0 ,
    \intData_reg[12]_0 ,
    \intData_reg[14]_1 ,
    \intData_reg[13]_0 ,
    \intData_reg[14]_2 ,
    \intData_reg[15]_1 ,
    \intData_reg[15]_2 ,
    CO,
    \intData[6]_i_38 ,
    \intData[9]_i_21 ,
    \intData_reg[14]_3 ,
    \intData_reg[15]_3 ,
    \intData_reg[15]_4 ,
    \dig[2]_i_127 ,
    \dig[2]_i_120 ,
    \intData_reg[15]_5 ,
    \intData_reg[6]_0 ,
    \intData_reg[6]_1 ,
    \intData_reg[11]_0 ,
    \intData_reg[15]_6 ,
    \ansReg[0] ,
    \ansReg[1] ,
    \ansReg[2] ,
    \ansReg[3] ,
    \ansReg[4] ,
    \ansReg[5] ,
    \ansReg[6] ,
    \ansReg[7] ,
    clkPort,
    \numDig_reg[0]_0 ,
    neg_reg_0,
    \numDig_reg[2]_0 ,
    \numDig_reg[1]_0 ,
    \intData_reg[15]_7 ,
    \intData_reg[15]_8 ,
    \intData_reg[4]_0 ,
    \intData_reg[5]_0 ,
    \intData_reg[6]_2 ,
    \intData_reg[7]_0 ,
    \intData_reg[8]_0 ,
    \intData[9]_i_2__0_0 ,
    \intData_reg[10]_0 ,
    \intData_reg[11]_1 ,
    \intData_reg[12]_1 ,
    \intData_reg[13]_1 ,
    \intData_reg[13]_i_14_0 ,
    \intData_reg[6]_i_5_0 ,
    \dig_reg[0]_i_32_0 ,
    \dig_reg[0]_i_18_0 ,
    \dig_reg[0]_0 ,
    \FSM_onehot_cs_reg[0]_0 ,
    \FSM_onehot_cs_reg[0]_1 ,
    S,
    \intData[6]_i_15_0 ,
    \intData[9]_i_15 ,
    \intData[6]_i_13_0 ,
    \dig[2]_i_57_0 ,
    \dig[2]_i_110_0 ,
    \dig[2]_i_98 ,
    \dig[2]_i_70 ,
    \dig[2]_i_108_0 ,
    \dig[2]_i_80_0 );
  output [2:0]p_0_in;
  output [7:0]ansMaxAddr;
  output [3:0]Q;
  output [0:0]O;
  output [0:0]\intData_reg[15]_0 ;
  output [3:0]\intData_reg[14]_0 ;
  output [3:0]\intData_reg[12]_0 ;
  output [1:0]\intData_reg[14]_1 ;
  output [0:0]\intData_reg[13]_0 ;
  output [3:0]\intData_reg[14]_2 ;
  output [0:0]\intData_reg[15]_1 ;
  output [0:0]\intData_reg[15]_2 ;
  output [0:0]CO;
  output [1:0]\intData[6]_i_38 ;
  output [0:0]\intData[9]_i_21 ;
  output [1:0]\intData_reg[14]_3 ;
  output [0:0]\intData_reg[15]_3 ;
  output [0:0]\intData_reg[15]_4 ;
  output [1:0]\dig[2]_i_127 ;
  output [3:0]\dig[2]_i_120 ;
  output [1:0]\intData_reg[15]_5 ;
  output [1:0]\intData_reg[6]_0 ;
  output [1:0]\intData_reg[6]_1 ;
  output [3:0]\intData_reg[11]_0 ;
  output [3:0]\intData_reg[15]_6 ;
  output [6:0]\ansReg[0] ;
  output [6:0]\ansReg[1] ;
  output [6:0]\ansReg[2] ;
  output [6:0]\ansReg[3] ;
  output [6:0]\ansReg[4] ;
  output [6:0]\ansReg[5] ;
  output [6:0]\ansReg[6] ;
  output [6:0]\ansReg[7] ;
  input clkPort;
  input \numDig_reg[0]_0 ;
  input neg_reg_0;
  input \numDig_reg[2]_0 ;
  input \numDig_reg[1]_0 ;
  input [5:0]\intData_reg[15]_7 ;
  input [3:0]\intData_reg[15]_8 ;
  input \intData_reg[4]_0 ;
  input \intData_reg[5]_0 ;
  input \intData_reg[6]_2 ;
  input \intData_reg[7]_0 ;
  input \intData_reg[8]_0 ;
  input \intData[9]_i_2__0_0 ;
  input \intData_reg[10]_0 ;
  input \intData_reg[11]_1 ;
  input \intData_reg[12]_1 ;
  input \intData_reg[13]_1 ;
  input \intData_reg[13]_i_14_0 ;
  input [2:0]\intData_reg[6]_i_5_0 ;
  input [3:0]\dig_reg[0]_i_32_0 ;
  input [3:0]\dig_reg[0]_i_18_0 ;
  input [2:0]\dig_reg[0]_0 ;
  input [0:0]\FSM_onehot_cs_reg[0]_0 ;
  input \FSM_onehot_cs_reg[0]_1 ;
  input [3:0]S;
  input [3:0]\intData[6]_i_15_0 ;
  input [0:0]\intData[9]_i_15 ;
  input [2:0]\intData[6]_i_13_0 ;
  input [1:0]\dig[2]_i_57_0 ;
  input [3:0]\dig[2]_i_110_0 ;
  input [3:0]\dig[2]_i_98 ;
  input [0:0]\dig[2]_i_70 ;
  input [3:0]\dig[2]_i_108_0 ;
  input [3:0]\dig[2]_i_80_0 ;

  wire [0:0]CO;
  wire \FSM_onehot_cs[10]_i_1__0_n_0 ;
  wire \FSM_onehot_cs[10]_i_2__0_n_0 ;
  wire \FSM_onehot_cs[6]_i_1_n_0 ;
  wire \FSM_onehot_cs[7]_i_1__0_n_0 ;
  wire \FSM_onehot_cs[7]_i_2_n_0 ;
  wire \FSM_onehot_cs[9]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_cs_reg[0]_0 ;
  wire \FSM_onehot_cs_reg[0]_1 ;
  wire \FSM_onehot_cs_reg_n_0_[1] ;
  wire \FSM_onehot_cs_reg_n_0_[5] ;
  wire [0:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire [7:0]ansMaxAddr;
  wire [6:0]\ansReg[0] ;
  wire [6:0]\ansReg[1] ;
  wire [6:0]\ansReg[2] ;
  wire [6:0]\ansReg[3] ;
  wire [6:0]\ansReg[4] ;
  wire [6:0]\ansReg[5] ;
  wire [6:0]\ansReg[6] ;
  wire [6:0]\ansReg[7] ;
  wire clkPort;
  wire clr;
  wire [3:0]data0;
  wire [2:1]data1;
  wire [1:1]data2;
  wire dig;
  wire \dig[0]_i_12__0_n_0 ;
  wire \dig[0]_i_14__0_n_0 ;
  wire \dig[0]_i_15__0_n_0 ;
  wire \dig[0]_i_16__0_n_0 ;
  wire \dig[0]_i_17__0_n_0 ;
  wire \dig[0]_i_19_n_0 ;
  wire \dig[0]_i_1__0_n_0 ;
  wire \dig[0]_i_20_n_0 ;
  wire \dig[0]_i_28_n_0 ;
  wire \dig[0]_i_29_n_0 ;
  wire \dig[0]_i_2__0_n_0 ;
  wire \dig[0]_i_30_n_0 ;
  wire \dig[0]_i_31_n_0 ;
  wire \dig[0]_i_33_n_0 ;
  wire \dig[0]_i_34_n_0 ;
  wire \dig[0]_i_35_n_0 ;
  wire \dig[0]_i_36_n_0 ;
  wire \dig[0]_i_37_n_0 ;
  wire \dig[0]_i_38_n_0 ;
  wire \dig[0]_i_39_n_0 ;
  wire \dig[0]_i_3__0_n_0 ;
  wire \dig[0]_i_40_n_0 ;
  wire \dig[0]_i_4__0_n_0 ;
  wire \dig[0]_i_52_n_0 ;
  wire \dig[0]_i_53_n_0 ;
  wire \dig[0]_i_54_n_0 ;
  wire \dig[0]_i_55_n_0 ;
  wire \dig[0]_i_57_n_0 ;
  wire \dig[0]_i_58_n_0 ;
  wire \dig[0]_i_59_n_0 ;
  wire \dig[0]_i_5__0_n_0 ;
  wire \dig[0]_i_60_n_0 ;
  wire \dig[0]_i_61_n_0 ;
  wire \dig[0]_i_62_n_0 ;
  wire \dig[0]_i_63_n_0 ;
  wire \dig[0]_i_64_n_0 ;
  wire \dig[0]_i_6__0_n_0 ;
  wire \dig[0]_i_72_n_0 ;
  wire \dig[0]_i_73_n_0 ;
  wire \dig[0]_i_74_n_0 ;
  wire \dig[0]_i_75_n_0 ;
  wire \dig[0]_i_76_n_0 ;
  wire \dig[0]_i_77_n_0 ;
  wire \dig[0]_i_78_n_0 ;
  wire \dig[0]_i_79_n_0 ;
  wire \dig[0]_i_80_n_0 ;
  wire \dig[0]_i_81_n_0 ;
  wire \dig[0]_i_82_n_0 ;
  wire \dig[0]_i_83_n_0 ;
  wire \dig[0]_i_84_n_0 ;
  wire \dig[0]_i_85_n_0 ;
  wire \dig[0]_i_86_n_0 ;
  wire \dig[0]_i_87_n_0 ;
  wire \dig[0]_i_88_n_0 ;
  wire \dig[0]_i_89_n_0 ;
  wire \dig[0]_i_8__0_n_0 ;
  wire \dig[0]_i_9__0_n_0 ;
  wire \dig[1]_i_11_n_0 ;
  wire \dig[1]_i_12_n_0 ;
  wire \dig[1]_i_13_n_0 ;
  wire \dig[1]_i_14_n_0 ;
  wire \dig[1]_i_15_n_0 ;
  wire \dig[1]_i_16_n_0 ;
  wire \dig[1]_i_17_n_0 ;
  wire \dig[1]_i_18__0_n_0 ;
  wire \dig[1]_i_1__0_n_0 ;
  wire \dig[1]_i_20_n_0 ;
  wire \dig[1]_i_21__0_n_0 ;
  wire \dig[1]_i_22__0_n_0 ;
  wire \dig[1]_i_23__0_n_0 ;
  wire \dig[1]_i_24__0_n_0 ;
  wire \dig[1]_i_25__0_n_0 ;
  wire \dig[1]_i_26__0_n_0 ;
  wire \dig[1]_i_27_n_0 ;
  wire \dig[1]_i_29_n_0 ;
  wire \dig[1]_i_2__0_n_0 ;
  wire \dig[1]_i_30_n_0 ;
  wire \dig[1]_i_31_n_0 ;
  wire \dig[1]_i_32_n_0 ;
  wire \dig[1]_i_33__0_n_0 ;
  wire \dig[1]_i_34__0_n_0 ;
  wire \dig[1]_i_35_n_0 ;
  wire \dig[1]_i_36_n_0 ;
  wire \dig[1]_i_38_n_0 ;
  wire \dig[1]_i_39_n_0 ;
  wire \dig[1]_i_3__0_n_0 ;
  wire \dig[1]_i_40__0_n_0 ;
  wire \dig[1]_i_41__0_n_0 ;
  wire \dig[1]_i_42__0_n_0 ;
  wire \dig[1]_i_43__0_n_0 ;
  wire \dig[1]_i_45__0_n_0 ;
  wire \dig[1]_i_46__0_n_0 ;
  wire \dig[1]_i_47__0_n_0 ;
  wire \dig[1]_i_48_n_0 ;
  wire \dig[1]_i_49__0_n_0 ;
  wire \dig[1]_i_4__0_n_0 ;
  wire \dig[1]_i_50__0_n_0 ;
  wire \dig[1]_i_51__0_n_0 ;
  wire \dig[1]_i_52__0_n_0 ;
  wire \dig[1]_i_53__0_n_0 ;
  wire \dig[1]_i_54_n_0 ;
  wire \dig[1]_i_55__0_n_0 ;
  wire \dig[1]_i_56__0_n_0 ;
  wire \dig[1]_i_57__0_n_0 ;
  wire \dig[1]_i_58__0_n_0 ;
  wire \dig[1]_i_5__0_n_0 ;
  wire \dig[1]_i_60__0_n_0 ;
  wire \dig[1]_i_62__0_n_0 ;
  wire \dig[1]_i_63_n_0 ;
  wire \dig[1]_i_64__0_n_0 ;
  wire \dig[1]_i_65__0_n_0 ;
  wire \dig[1]_i_66_n_0 ;
  wire \dig[1]_i_67_n_0 ;
  wire \dig[1]_i_68_n_0 ;
  wire \dig[1]_i_69_n_0 ;
  wire \dig[1]_i_70_n_0 ;
  wire \dig[1]_i_71__0_n_0 ;
  wire \dig[1]_i_72__0_n_0 ;
  wire \dig[1]_i_7__0_n_0 ;
  wire \dig[1]_i_8__0_n_0 ;
  wire \dig[1]_i_9_n_0 ;
  wire \dig[2]_i_102_n_0 ;
  wire \dig[2]_i_104_n_0 ;
  wire \dig[2]_i_105_n_0 ;
  wire \dig[2]_i_106_n_0 ;
  wire \dig[2]_i_107_n_0 ;
  wire [3:0]\dig[2]_i_108_0 ;
  wire \dig[2]_i_108_n_0 ;
  wire \dig[2]_i_109_n_0 ;
  wire \dig[2]_i_10__0_n_0 ;
  wire [3:0]\dig[2]_i_110_0 ;
  wire \dig[2]_i_110_n_0 ;
  wire \dig[2]_i_111_n_0 ;
  wire \dig[2]_i_113_n_0 ;
  wire \dig[2]_i_114_n_0 ;
  wire \dig[2]_i_115_n_0 ;
  wire \dig[2]_i_116_n_0 ;
  wire \dig[2]_i_11__0_n_0 ;
  wire [3:0]\dig[2]_i_120 ;
  wire \dig[2]_i_121_n_0 ;
  wire \dig[2]_i_122_n_0 ;
  wire \dig[2]_i_123_n_0 ;
  wire [1:0]\dig[2]_i_127 ;
  wire \dig[2]_i_13__0_n_0 ;
  wire \dig[2]_i_14__0_n_0 ;
  wire \dig[2]_i_17__0_n_0 ;
  wire \dig[2]_i_18__0_n_0 ;
  wire \dig[2]_i_1__0_n_0 ;
  wire \dig[2]_i_24_n_0 ;
  wire \dig[2]_i_25_n_0 ;
  wire \dig[2]_i_26_n_0 ;
  wire \dig[2]_i_27_n_0 ;
  wire \dig[2]_i_28_n_0 ;
  wire \dig[2]_i_29_n_0 ;
  wire \dig[2]_i_2__0_n_0 ;
  wire \dig[2]_i_31_n_0 ;
  wire \dig[2]_i_32_n_0 ;
  wire \dig[2]_i_33_n_0 ;
  wire \dig[2]_i_35_n_0 ;
  wire \dig[2]_i_37_n_0 ;
  wire \dig[2]_i_38_n_0 ;
  wire \dig[2]_i_39_n_0 ;
  wire \dig[2]_i_3_n_0 ;
  wire \dig[2]_i_40_n_0 ;
  wire \dig[2]_i_41_n_0 ;
  wire \dig[2]_i_42_n_0 ;
  wire \dig[2]_i_43_n_0 ;
  wire \dig[2]_i_44_n_0 ;
  wire \dig[2]_i_45_n_0 ;
  wire \dig[2]_i_46_n_0 ;
  wire \dig[2]_i_49_n_0 ;
  wire \dig[2]_i_4__0_n_0 ;
  wire \dig[2]_i_51_n_0 ;
  wire \dig[2]_i_52_n_0 ;
  wire \dig[2]_i_53_n_0 ;
  wire \dig[2]_i_54_n_0 ;
  wire \dig[2]_i_55_n_0 ;
  wire \dig[2]_i_56_n_0 ;
  wire [1:0]\dig[2]_i_57_0 ;
  wire \dig[2]_i_57_n_0 ;
  wire \dig[2]_i_58_n_0 ;
  wire \dig[2]_i_60_n_0 ;
  wire \dig[2]_i_61_n_0 ;
  wire \dig[2]_i_62_n_0 ;
  wire \dig[2]_i_63_n_0 ;
  wire \dig[2]_i_65_n_0 ;
  wire \dig[2]_i_66_n_0 ;
  wire \dig[2]_i_67_n_0 ;
  wire \dig[2]_i_68_n_0 ;
  wire \dig[2]_i_6__0_n_0 ;
  wire [0:0]\dig[2]_i_70 ;
  wire \dig[2]_i_76_n_0 ;
  wire \dig[2]_i_77_n_0 ;
  wire \dig[2]_i_78_n_0 ;
  wire \dig[2]_i_79_n_0 ;
  wire \dig[2]_i_7__0_n_0 ;
  wire [3:0]\dig[2]_i_80_0 ;
  wire \dig[2]_i_80_n_0 ;
  wire \dig[2]_i_81_n_0 ;
  wire \dig[2]_i_82_n_0 ;
  wire \dig[2]_i_83_n_0 ;
  wire \dig[2]_i_84_n_0 ;
  wire \dig[2]_i_85_n_0 ;
  wire \dig[2]_i_86_n_0 ;
  wire \dig[2]_i_87_n_0 ;
  wire \dig[2]_i_88_n_0 ;
  wire \dig[2]_i_89_n_0 ;
  wire \dig[2]_i_8__0_n_0 ;
  wire \dig[2]_i_90_n_0 ;
  wire \dig[2]_i_91_n_0 ;
  wire \dig[2]_i_92_n_0 ;
  wire \dig[2]_i_93_n_0 ;
  wire \dig[2]_i_94_n_0 ;
  wire \dig[2]_i_95_n_0 ;
  wire \dig[2]_i_96_n_0 ;
  wire [3:0]\dig[2]_i_98 ;
  wire \dig[3]_i_10_n_0 ;
  wire \dig[3]_i_11__0_n_0 ;
  wire \dig[3]_i_12_n_0 ;
  wire \dig[3]_i_13_n_0 ;
  wire \dig[3]_i_14_n_0 ;
  wire \dig[3]_i_15_n_0 ;
  wire \dig[3]_i_16__0_n_0 ;
  wire \dig[3]_i_17_n_0 ;
  wire \dig[3]_i_18__0_n_0 ;
  wire \dig[3]_i_19__0_n_0 ;
  wire \dig[3]_i_1__0_n_0 ;
  wire \dig[3]_i_20__0_n_0 ;
  wire \dig[3]_i_21__0_n_0 ;
  wire \dig[3]_i_22__0_n_0 ;
  wire \dig[3]_i_23_n_0 ;
  wire \dig[3]_i_25_n_0 ;
  wire \dig[3]_i_26_n_0 ;
  wire \dig[3]_i_27_n_0 ;
  wire \dig[3]_i_28__0_n_0 ;
  wire \dig[3]_i_29__0_n_0 ;
  wire \dig[3]_i_2__0_n_0 ;
  wire \dig[3]_i_30__0_n_0 ;
  wire \dig[3]_i_31__0_n_0 ;
  wire \dig[3]_i_32__0_n_0 ;
  wire \dig[3]_i_33__0_n_0 ;
  wire \dig[3]_i_3__0_n_0 ;
  wire \dig[3]_i_4_n_0 ;
  wire \dig[3]_i_6_n_0 ;
  wire \dig[3]_i_7_n_0 ;
  wire \dig[3]_i_8__0_n_0 ;
  wire \dig[3]_i_9__0_n_0 ;
  wire [2:0]\dig_reg[0]_0 ;
  wire \dig_reg[0]_i_10_n_3 ;
  wire \dig_reg[0]_i_13_n_0 ;
  wire [3:0]\dig_reg[0]_i_18_0 ;
  wire \dig_reg[0]_i_18_n_0 ;
  wire \dig_reg[0]_i_27_n_0 ;
  wire [3:0]\dig_reg[0]_i_32_0 ;
  wire \dig_reg[0]_i_32_n_0 ;
  wire \dig_reg[0]_i_51_n_0 ;
  wire \dig_reg[0]_i_56_n_0 ;
  wire \dig_reg[0]_i_7_n_0 ;
  wire \dig_reg[1]_i_10__0_n_0 ;
  wire \dig_reg[1]_i_19_n_0 ;
  wire \dig_reg[1]_i_28__0_n_0 ;
  wire \dig_reg[1]_i_28__0_n_4 ;
  wire \dig_reg[1]_i_28__0_n_5 ;
  wire \dig_reg[1]_i_28__0_n_6 ;
  wire \dig_reg[1]_i_28__0_n_7 ;
  wire \dig_reg[1]_i_37_n_0 ;
  wire \dig_reg[1]_i_44__0_n_0 ;
  wire \dig_reg[1]_i_44__0_n_4 ;
  wire \dig_reg[1]_i_44__0_n_5 ;
  wire \dig_reg[1]_i_44__0_n_6 ;
  wire \dig_reg[1]_i_44__0_n_7 ;
  wire \dig_reg[1]_i_59_n_0 ;
  wire \dig_reg[1]_i_59_n_4 ;
  wire \dig_reg[1]_i_59_n_5 ;
  wire \dig_reg[1]_i_61_n_0 ;
  wire \dig_reg[1]_i_61_n_4 ;
  wire \dig_reg[1]_i_61_n_5 ;
  wire \dig_reg[1]_i_61_n_6 ;
  wire \dig_reg[1]_i_61_n_7 ;
  wire \dig_reg[1]_i_6_n_0 ;
  wire \dig_reg[2]_i_101_n_0 ;
  wire \dig_reg[2]_i_112_n_0 ;
  wire \dig_reg[2]_i_112_n_6 ;
  wire \dig_reg[2]_i_112_n_7 ;
  wire \dig_reg[2]_i_12_n_0 ;
  wire \dig_reg[2]_i_15_n_6 ;
  wire \dig_reg[2]_i_15_n_7 ;
  wire \dig_reg[2]_i_16_n_1 ;
  wire \dig_reg[2]_i_19_n_0 ;
  wire \dig_reg[2]_i_20_n_7 ;
  wire \dig_reg[2]_i_21_n_0 ;
  wire \dig_reg[2]_i_22_n_0 ;
  wire \dig_reg[2]_i_22_n_4 ;
  wire \dig_reg[2]_i_22_n_5 ;
  wire \dig_reg[2]_i_22_n_6 ;
  wire \dig_reg[2]_i_22_n_7 ;
  wire \dig_reg[2]_i_23_n_0 ;
  wire \dig_reg[2]_i_30_n_0 ;
  wire \dig_reg[2]_i_34_n_0 ;
  wire \dig_reg[2]_i_34_n_4 ;
  wire \dig_reg[2]_i_34_n_5 ;
  wire \dig_reg[2]_i_34_n_6 ;
  wire \dig_reg[2]_i_34_n_7 ;
  wire \dig_reg[2]_i_36_n_0 ;
  wire \dig_reg[2]_i_50_n_0 ;
  wire \dig_reg[2]_i_59_n_0 ;
  wire \dig_reg[2]_i_64_n_0 ;
  wire \dig_reg[2]_i_64_n_4 ;
  wire \dig_reg[2]_i_64_n_5 ;
  wire \dig_reg[2]_i_64_n_6 ;
  wire \dig_reg[2]_i_64_n_7 ;
  wire \dig_reg[2]_i_73_n_1 ;
  wire \dig_reg[2]_i_75_n_0 ;
  wire \dig_reg[3]_i_24_n_0 ;
  wire \dig_reg[3]_i_24_n_5 ;
  wire \dig_reg[3]_i_24_n_6 ;
  wire \dig_reg[3]_i_24_n_7 ;
  wire \dig_reg[3]_i_5_n_0 ;
  wire equal;
  wire [5:5]intAddr0_in;
  wire [7:0]intAddr2_in;
  wire \intAddr[1]_i_1__0_n_0 ;
  wire \intAddr[7]_i_2__0_n_0 ;
  wire \intAddr[7]_i_4__0_n_0 ;
  wire [13:6]intData;
  wire \intData[0]_i_1__0_n_0 ;
  wire \intData[0]_i_2__0_n_0 ;
  wire \intData[0]_i_4_n_0 ;
  wire \intData[0]_i_5_n_0 ;
  wire \intData[0]_i_6_n_0 ;
  wire \intData[0]_i_7_n_0 ;
  wire \intData[10]_i_1__0_n_0 ;
  wire \intData[11]_i_11_n_0 ;
  wire \intData[11]_i_12__0_n_0 ;
  wire \intData[11]_i_13__0_n_0 ;
  wire \intData[11]_i_14__0_n_0 ;
  wire \intData[11]_i_15__0_n_0 ;
  wire \intData[11]_i_17_n_0 ;
  wire \intData[11]_i_18__0_n_0 ;
  wire \intData[11]_i_19__0_n_0 ;
  wire \intData[11]_i_1__0_n_0 ;
  wire \intData[11]_i_21_n_0 ;
  wire \intData[11]_i_22__0_n_0 ;
  wire \intData[11]_i_23__0_n_0 ;
  wire \intData[11]_i_24__0_n_0 ;
  wire \intData[11]_i_26_n_0 ;
  wire \intData[11]_i_27__0_n_0 ;
  wire \intData[11]_i_28__0_n_0 ;
  wire \intData[11]_i_29__0_n_0 ;
  wire \intData[11]_i_31_n_0 ;
  wire \intData[11]_i_32__0_n_0 ;
  wire \intData[11]_i_33__0_n_0 ;
  wire \intData[11]_i_34__0_n_0 ;
  wire \intData[11]_i_35__0_n_0 ;
  wire \intData[11]_i_36__0_n_0 ;
  wire \intData[11]_i_37_n_0 ;
  wire \intData[11]_i_6_n_0 ;
  wire \intData[11]_i_7__0_n_0 ;
  wire \intData[11]_i_8__0_n_0 ;
  wire \intData[11]_i_9__0_n_0 ;
  wire \intData[12]_i_1__0_n_0 ;
  wire \intData[13]_i_10_n_0 ;
  wire \intData[13]_i_11__0_n_0 ;
  wire \intData[13]_i_12__0_n_0 ;
  wire \intData[13]_i_16__0_n_0 ;
  wire \intData[13]_i_22__0_n_0 ;
  wire \intData[13]_i_23__0_n_0 ;
  wire \intData[13]_i_2__0_n_0 ;
  wire \intData[13]_i_3__0_n_0 ;
  wire \intData[13]_i_5__0_n_0 ;
  wire \intData[13]_i_8_n_0 ;
  wire \intData[13]_i_9__0_n_0 ;
  wire \intData[14]_i_1__0_n_0 ;
  wire \intData[15]_i_1__0_n_0 ;
  wire \intData[15]_i_3_n_0 ;
  wire \intData[1]_i_1__0_n_0 ;
  wire \intData[1]_i_2__0_n_0 ;
  wire \intData[1]_i_3__0_n_0 ;
  wire \intData[2]_i_10__0_n_0 ;
  wire \intData[2]_i_11__0_n_0 ;
  wire \intData[2]_i_12__0_n_0 ;
  wire \intData[2]_i_15__0_n_0 ;
  wire \intData[2]_i_16__0_n_0 ;
  wire \intData[2]_i_17__0_n_0 ;
  wire \intData[2]_i_18_n_0 ;
  wire \intData[2]_i_19_n_0 ;
  wire \intData[2]_i_1__0_n_0 ;
  wire \intData[2]_i_20_n_0 ;
  wire \intData[2]_i_21_n_0 ;
  wire \intData[2]_i_22_n_0 ;
  wire \intData[2]_i_24_n_0 ;
  wire \intData[2]_i_25__0_n_0 ;
  wire \intData[2]_i_26__0_n_0 ;
  wire \intData[2]_i_27__0_n_0 ;
  wire \intData[2]_i_28__0_n_0 ;
  wire \intData[2]_i_29__0_n_0 ;
  wire \intData[2]_i_2__0_n_0 ;
  wire \intData[2]_i_30__0_n_0 ;
  wire \intData[2]_i_31__0_n_0 ;
  wire \intData[2]_i_34__0_n_0 ;
  wire \intData[2]_i_35__0_n_0 ;
  wire \intData[2]_i_36__0_n_0 ;
  wire \intData[2]_i_37__0_n_0 ;
  wire \intData[2]_i_39__0_n_0 ;
  wire \intData[2]_i_3__0_n_0 ;
  wire \intData[2]_i_40__0_n_0 ;
  wire \intData[2]_i_41__0_n_0 ;
  wire \intData[2]_i_42__0_n_0 ;
  wire \intData[2]_i_43__0_n_0 ;
  wire \intData[2]_i_44__0_n_0 ;
  wire \intData[2]_i_46_n_0 ;
  wire \intData[2]_i_47_n_0 ;
  wire \intData[2]_i_48_n_0 ;
  wire \intData[2]_i_49_n_0 ;
  wire \intData[2]_i_4__0_n_0 ;
  wire \intData[2]_i_50_n_0 ;
  wire \intData[2]_i_51_n_0 ;
  wire \intData[2]_i_52_n_0 ;
  wire \intData[2]_i_53_n_0 ;
  wire \intData[2]_i_54_n_0 ;
  wire \intData[2]_i_55_n_0 ;
  wire \intData[2]_i_56_n_0 ;
  wire \intData[2]_i_57_n_0 ;
  wire \intData[2]_i_58_n_0 ;
  wire \intData[2]_i_59_n_0 ;
  wire \intData[2]_i_5_n_0 ;
  wire \intData[2]_i_62_n_0 ;
  wire \intData[2]_i_63_n_0 ;
  wire \intData[2]_i_64_n_0 ;
  wire \intData[2]_i_65_n_0 ;
  wire \intData[2]_i_66_n_0 ;
  wire \intData[2]_i_67_n_0 ;
  wire \intData[2]_i_68_n_0 ;
  wire \intData[2]_i_69_n_0 ;
  wire \intData[2]_i_70_n_0 ;
  wire \intData[2]_i_71_n_0 ;
  wire \intData[2]_i_72_n_0 ;
  wire \intData[2]_i_7__0_n_0 ;
  wire \intData[2]_i_8__0_n_0 ;
  wire \intData[2]_i_9__0_n_0 ;
  wire \intData[3]_i_10_n_0 ;
  wire \intData[3]_i_11__0_n_0 ;
  wire \intData[3]_i_12__0_n_0 ;
  wire \intData[3]_i_14__0_n_0 ;
  wire \intData[3]_i_15__0_n_0 ;
  wire \intData[3]_i_17_n_0 ;
  wire \intData[3]_i_18_n_0 ;
  wire \intData[3]_i_19_n_0 ;
  wire \intData[3]_i_1__0_n_0 ;
  wire \intData[3]_i_20__0_n_0 ;
  wire \intData[3]_i_21__0_n_0 ;
  wire \intData[3]_i_22__0_n_0 ;
  wire \intData[3]_i_28__0_n_0 ;
  wire \intData[3]_i_29__0_n_0 ;
  wire \intData[3]_i_2__0_n_0 ;
  wire \intData[3]_i_30_n_0 ;
  wire \intData[3]_i_31_n_0 ;
  wire \intData[3]_i_32_n_0 ;
  wire \intData[3]_i_33_n_0 ;
  wire \intData[3]_i_34__0_n_0 ;
  wire \intData[3]_i_36_n_0 ;
  wire \intData[3]_i_37__0_n_0 ;
  wire \intData[3]_i_39_n_0 ;
  wire \intData[3]_i_40_n_0 ;
  wire \intData[3]_i_41_n_0 ;
  wire \intData[3]_i_42_n_0 ;
  wire \intData[3]_i_43_n_0 ;
  wire \intData[3]_i_45_n_0 ;
  wire \intData[3]_i_46_n_0 ;
  wire \intData[3]_i_47_n_0 ;
  wire \intData[3]_i_48_n_0 ;
  wire \intData[3]_i_49_n_0 ;
  wire \intData[3]_i_4__0_n_0 ;
  wire \intData[3]_i_50_n_0 ;
  wire \intData[3]_i_51__0_n_0 ;
  wire \intData[3]_i_5_n_0 ;
  wire \intData[3]_i_6__0_n_0 ;
  wire \intData[3]_i_7__0_n_0 ;
  wire \intData[3]_i_8__0_n_0 ;
  wire \intData[3]_i_9__0_n_0 ;
  wire \intData[4]_i_1__0_n_0 ;
  wire \intData[4]_i_2__0_n_0 ;
  wire \intData[4]_i_3__0_n_0 ;
  wire \intData[4]_i_5__0_n_0 ;
  wire \intData[5]_i_1__0_n_0 ;
  wire \intData[5]_i_2__0_n_0 ;
  wire \intData[5]_i_3__0_n_0 ;
  wire \intData[5]_i_5__0_n_0 ;
  wire \intData[5]_i_6__0_n_0 ;
  wire \intData[6]_i_10_n_0 ;
  wire \intData[6]_i_11_n_0 ;
  wire \intData[6]_i_12_n_0 ;
  wire [2:0]\intData[6]_i_13_0 ;
  wire \intData[6]_i_13_n_0 ;
  wire \intData[6]_i_14_n_0 ;
  wire [3:0]\intData[6]_i_15_0 ;
  wire \intData[6]_i_15_n_0 ;
  wire \intData[6]_i_16_n_0 ;
  wire \intData[6]_i_1__0_n_0 ;
  wire \intData[6]_i_25_n_0 ;
  wire \intData[6]_i_26_n_0 ;
  wire \intData[6]_i_27_n_0 ;
  wire \intData[6]_i_28_n_0 ;
  wire \intData[6]_i_29_n_0 ;
  wire \intData[6]_i_2__0_n_0 ;
  wire \intData[6]_i_30_n_0 ;
  wire \intData[6]_i_31_n_0 ;
  wire \intData[6]_i_32_n_0 ;
  wire \intData[6]_i_33_n_0 ;
  wire \intData[6]_i_34_n_0 ;
  wire [1:0]\intData[6]_i_38 ;
  wire \intData[6]_i_39_n_0 ;
  wire \intData[6]_i_3__0_n_0 ;
  wire \intData[6]_i_40_n_0 ;
  wire \intData[6]_i_41_n_0 ;
  wire \intData[6]_i_6__0_n_0 ;
  wire \intData[6]_i_8__0_n_0 ;
  wire \intData[6]_i_9__0_n_0 ;
  wire \intData[7]_i_1__0_n_0 ;
  wire \intData[7]_i_2__0_n_0 ;
  wire \intData[7]_i_4__0_n_0 ;
  wire \intData[7]_i_5__0_n_0 ;
  wire \intData[8]_i_1__0_n_0 ;
  wire \intData[8]_i_2__0_n_0 ;
  wire \intData[8]_i_4__0_n_0 ;
  wire \intData[9]_i_10_n_0 ;
  wire \intData[9]_i_12_n_0 ;
  wire \intData[9]_i_13_n_0 ;
  wire \intData[9]_i_14_n_0 ;
  wire [0:0]\intData[9]_i_15 ;
  wire \intData[9]_i_19_n_0 ;
  wire \intData[9]_i_1__0_n_0 ;
  wire \intData[9]_i_20_n_0 ;
  wire [0:0]\intData[9]_i_21 ;
  wire \intData[9]_i_2__0_0 ;
  wire \intData[9]_i_2__0_n_0 ;
  wire \intData[9]_i_3__0_n_0 ;
  wire \intData[9]_i_5__0_n_0 ;
  wire \intData[9]_i_6__0_n_0 ;
  wire \intData[9]_i_8_n_0 ;
  wire \intData[9]_i_9_n_0 ;
  wire \intData_reg[0]_i_3_n_0 ;
  wire \intData_reg[0]_i_3_n_4 ;
  wire \intData_reg[0]_i_3_n_5 ;
  wire \intData_reg[0]_i_3_n_6 ;
  wire \intData_reg[0]_i_3_n_7 ;
  wire \intData_reg[10]_0 ;
  wire [3:0]\intData_reg[11]_0 ;
  wire \intData_reg[11]_1 ;
  wire \intData_reg[11]_i_10_n_0 ;
  wire \intData_reg[11]_i_10_n_4 ;
  wire \intData_reg[11]_i_10_n_5 ;
  wire \intData_reg[11]_i_10_n_6 ;
  wire \intData_reg[11]_i_10_n_7 ;
  wire \intData_reg[11]_i_16_n_0 ;
  wire \intData_reg[11]_i_20_n_0 ;
  wire \intData_reg[11]_i_25_n_0 ;
  wire \intData_reg[11]_i_2_n_0 ;
  wire \intData_reg[11]_i_2_n_4 ;
  wire \intData_reg[11]_i_2_n_5 ;
  wire \intData_reg[11]_i_2_n_6 ;
  wire \intData_reg[11]_i_2_n_7 ;
  wire \intData_reg[11]_i_30_n_0 ;
  wire \intData_reg[11]_i_3_n_0 ;
  wire \intData_reg[11]_i_3_n_4 ;
  wire \intData_reg[11]_i_3_n_5 ;
  wire \intData_reg[11]_i_3_n_6 ;
  wire \intData_reg[11]_i_3_n_7 ;
  wire \intData_reg[11]_i_5__0_n_0 ;
  wire \intData_reg[11]_i_5__0_n_4 ;
  wire \intData_reg[11]_i_5__0_n_5 ;
  wire \intData_reg[11]_i_5__0_n_6 ;
  wire \intData_reg[11]_i_5__0_n_7 ;
  wire [3:0]\intData_reg[12]_0 ;
  wire \intData_reg[12]_1 ;
  wire [0:0]\intData_reg[13]_0 ;
  wire \intData_reg[13]_1 ;
  wire \intData_reg[13]_i_13_n_6 ;
  wire \intData_reg[13]_i_13_n_7 ;
  wire \intData_reg[13]_i_14_0 ;
  wire \intData_reg[13]_i_14_n_0 ;
  wire \intData_reg[13]_i_14_n_4 ;
  wire \intData_reg[13]_i_14_n_5 ;
  wire \intData_reg[13]_i_14_n_6 ;
  wire \intData_reg[13]_i_14_n_7 ;
  wire \intData_reg[13]_i_4_n_1 ;
  wire \intData_reg[13]_i_4_n_6 ;
  wire \intData_reg[13]_i_4_n_7 ;
  wire \intData_reg[13]_i_6__0_n_5 ;
  wire \intData_reg[13]_i_6__0_n_6 ;
  wire \intData_reg[13]_i_6__0_n_7 ;
  wire [3:0]\intData_reg[14]_0 ;
  wire [1:0]\intData_reg[14]_1 ;
  wire [3:0]\intData_reg[14]_2 ;
  wire [1:0]\intData_reg[14]_3 ;
  wire [0:0]\intData_reg[15]_0 ;
  wire [0:0]\intData_reg[15]_1 ;
  wire [0:0]\intData_reg[15]_2 ;
  wire [0:0]\intData_reg[15]_3 ;
  wire [0:0]\intData_reg[15]_4 ;
  wire [1:0]\intData_reg[15]_5 ;
  wire [3:0]\intData_reg[15]_6 ;
  wire [5:0]\intData_reg[15]_7 ;
  wire [3:0]\intData_reg[15]_8 ;
  wire \intData_reg[2]_i_13_n_0 ;
  wire \intData_reg[2]_i_14_n_0 ;
  wire \intData_reg[2]_i_23_n_0 ;
  wire \intData_reg[2]_i_32_n_0 ;
  wire \intData_reg[2]_i_32_n_4 ;
  wire \intData_reg[2]_i_32_n_5 ;
  wire \intData_reg[2]_i_32_n_6 ;
  wire \intData_reg[2]_i_32_n_7 ;
  wire \intData_reg[2]_i_33__0_n_0 ;
  wire \intData_reg[2]_i_33__0_n_5 ;
  wire \intData_reg[2]_i_33__0_n_6 ;
  wire \intData_reg[2]_i_33__0_n_7 ;
  wire \intData_reg[2]_i_38_n_0 ;
  wire \intData_reg[2]_i_45_n_0 ;
  wire \intData_reg[2]_i_45_n_4 ;
  wire \intData_reg[2]_i_45_n_5 ;
  wire \intData_reg[2]_i_45_n_6 ;
  wire \intData_reg[2]_i_45_n_7 ;
  wire \intData_reg[2]_i_60_n_0 ;
  wire \intData_reg[2]_i_60_n_4 ;
  wire \intData_reg[2]_i_60_n_5 ;
  wire \intData_reg[2]_i_61_n_0 ;
  wire \intData_reg[2]_i_61_n_4 ;
  wire \intData_reg[2]_i_61_n_5 ;
  wire \intData_reg[2]_i_61_n_6 ;
  wire \intData_reg[2]_i_61_n_7 ;
  wire \intData_reg[2]_i_6_n_0 ;
  wire \intData_reg[2]_i_6_n_4 ;
  wire \intData_reg[2]_i_6_n_5 ;
  wire \intData_reg[3]_i_16_n_0 ;
  wire \intData_reg[3]_i_16_n_4 ;
  wire \intData_reg[3]_i_35_n_0 ;
  wire \intData_reg[3]_i_38_n_0 ;
  wire \intData_reg[3]_i_44_n_0 ;
  wire \intData_reg[4]_0 ;
  wire \intData_reg[5]_0 ;
  wire [1:0]\intData_reg[6]_0 ;
  wire [1:0]\intData_reg[6]_1 ;
  wire \intData_reg[6]_2 ;
  wire \intData_reg[6]_i_19_n_0 ;
  wire \intData_reg[6]_i_19_n_6 ;
  wire \intData_reg[6]_i_19_n_7 ;
  wire \intData_reg[6]_i_20_n_0 ;
  wire [2:0]\intData_reg[6]_i_5_0 ;
  wire \intData_reg[6]_i_5_n_4 ;
  wire \intData_reg[6]_i_5_n_5 ;
  wire \intData_reg[6]_i_5_n_6 ;
  wire \intData_reg[6]_i_5_n_7 ;
  wire \intData_reg[6]_i_7_n_0 ;
  wire \intData_reg[6]_i_7_n_4 ;
  wire \intData_reg[6]_i_7_n_5 ;
  wire \intData_reg[6]_i_7_n_6 ;
  wire \intData_reg[6]_i_7_n_7 ;
  wire \intData_reg[7]_0 ;
  wire \intData_reg[8]_0 ;
  wire \intData_reg[9]_i_11_n_4 ;
  wire \intData_reg[9]_i_11_n_5 ;
  wire \intData_reg[9]_i_11_n_6 ;
  wire \intData_reg[9]_i_11_n_7 ;
  wire \intData_reg[9]_i_18_n_6 ;
  wire \intData_reg[9]_i_4_n_5 ;
  wire \intData_reg[9]_i_4_n_6 ;
  wire \intData_reg[9]_i_4_n_7 ;
  wire \intData_reg_n_0_[0] ;
  wire \intData_reg_n_0_[10] ;
  wire \intData_reg_n_0_[11] ;
  wire \intData_reg_n_0_[12] ;
  wire \intData_reg_n_0_[13] ;
  wire \intData_reg_n_0_[14] ;
  wire \intData_reg_n_0_[15] ;
  wire \intData_reg_n_0_[1] ;
  wire \intData_reg_n_0_[2] ;
  wire \intData_reg_n_0_[3] ;
  wire \intData_reg_n_0_[4] ;
  wire \intData_reg_n_0_[5] ;
  wire \intData_reg_n_0_[6] ;
  wire \intData_reg_n_0_[7] ;
  wire \intData_reg_n_0_[8] ;
  wire \intData_reg_n_0_[9] ;
  wire \intReg[0][0]_i_1__0_n_0 ;
  wire \intReg[0][1]_i_1__0_n_0 ;
  wire \intReg[0][1]_i_2__0_n_0 ;
  wire \intReg[0][2]_i_1__0_n_0 ;
  wire \intReg[0][2]_i_2__0_n_0 ;
  wire \intReg[0][2]_i_4__0_n_0 ;
  wire \intReg[0][2]_i_5_n_0 ;
  wire \intReg[0][7]_i_1__0_n_0 ;
  wire \intReg[0][7]_i_2__0_n_0 ;
  wire \intReg[0][7]_i_4__0_n_0 ;
  wire \intReg[0][7]_i_5__0_n_0 ;
  wire \intReg[0][7]_i_6__0_n_0 ;
  wire \intReg[0][7]_i_7_n_0 ;
  wire \intReg[0][7]_i_8_n_0 ;
  wire \intReg[1][0]_i_1__0_n_0 ;
  wire \intReg[1][0]_i_2__0_n_0 ;
  wire \intReg[1][0]_i_3_n_0 ;
  wire \intReg[1][1]_i_1__0_n_0 ;
  wire \intReg[1][2]_i_1__0_n_0 ;
  wire \intReg[1][2]_i_2_n_0 ;
  wire \intReg[1][2]_i_3_n_0 ;
  wire \intReg[1][3]_i_1__0_n_0 ;
  wire \intReg[1][3]_i_2_n_0 ;
  wire \intReg[1][4]_i_1__0_n_0 ;
  wire \intReg[1][5]_i_1__0_n_0 ;
  wire \intReg[1][7]_i_1__0_n_0 ;
  wire \intReg[1][7]_i_2__0_n_0 ;
  wire \intReg[1][7]_i_3__0_n_0 ;
  wire \intReg[1][7]_i_4_n_0 ;
  wire \intReg[2][0]_i_1__0_n_0 ;
  wire \intReg[2][0]_i_2__0_n_0 ;
  wire \intReg[2][1]_i_1__0_n_0 ;
  wire \intReg[2][1]_i_2__0_n_0 ;
  wire \intReg[2][2]_i_1__0_n_0 ;
  wire \intReg[2][2]_i_2__0_n_0 ;
  wire \intReg[2][2]_i_3_n_0 ;
  wire \intReg[2][3]_i_1__0_n_0 ;
  wire \intReg[2][4]_i_1__0_n_0 ;
  wire \intReg[2][5]_i_1__0_n_0 ;
  wire \intReg[2][5]_i_2_n_0 ;
  wire \intReg[2][7]_i_1__0_n_0 ;
  wire \intReg[2][7]_i_2__0_n_0 ;
  wire \intReg[2][7]_i_3__0_n_0 ;
  wire \intReg[2][7]_i_4__0_n_0 ;
  wire \intReg[3][0]_i_1__0_n_0 ;
  wire \intReg[3][0]_i_2__0_n_0 ;
  wire \intReg[3][1]_i_1__0_n_0 ;
  wire \intReg[3][2]_i_1__0_n_0 ;
  wire \intReg[3][2]_i_2_n_0 ;
  wire \intReg[3][3]_i_1__0_n_0 ;
  wire \intReg[3][4]_i_1__0_n_0 ;
  wire \intReg[3][5]_i_1__0_n_0 ;
  wire \intReg[3][7]_i_1__0_n_0 ;
  wire \intReg[3][7]_i_2__0_n_0 ;
  wire \intReg[3][7]_i_3__0_n_0 ;
  wire \intReg[3][7]_i_4_n_0 ;
  wire \intReg[4][0]_i_1__0_n_0 ;
  wire \intReg[4][0]_i_2__0_n_0 ;
  wire \intReg[4][1]_i_1__0_n_0 ;
  wire \intReg[4][1]_i_2__0_n_0 ;
  wire \intReg[4][2]_i_1__0_n_0 ;
  wire \intReg[4][2]_i_2__0_n_0 ;
  wire \intReg[4][2]_i_3_n_0 ;
  wire \intReg[4][3]_i_1__0_n_0 ;
  wire \intReg[4][3]_i_2_n_0 ;
  wire \intReg[4][4]_i_1__0_n_0 ;
  wire \intReg[4][5]_i_1__0_n_0 ;
  wire \intReg[4][7]_i_1__0_n_0 ;
  wire \intReg[4][7]_i_2__0_n_0 ;
  wire \intReg[4][7]_i_3__0_n_0 ;
  wire \intReg[4][7]_i_4__0_n_0 ;
  wire \intReg[5][0]_i_1__0_n_0 ;
  wire \intReg[5][0]_i_2__0_n_0 ;
  wire \intReg[5][1]_i_1__0_n_0 ;
  wire \intReg[5][2]_i_1__0_n_0 ;
  wire \intReg[5][2]_i_2_n_0 ;
  wire \intReg[5][3]_i_1__0_n_0 ;
  wire \intReg[5][4]_i_1__0_n_0 ;
  wire \intReg[5][5]_i_1__0_n_0 ;
  wire \intReg[5][7]_i_1__0_n_0 ;
  wire \intReg[5][7]_i_2__0_n_0 ;
  wire \intReg[5][7]_i_3__0_n_0 ;
  wire \intReg[5][7]_i_4_n_0 ;
  wire \intReg[6][0]_i_1__0_n_0 ;
  wire \intReg[6][0]_i_2_n_0 ;
  wire \intReg[6][1]_i_1__0_n_0 ;
  wire \intReg[6][1]_i_2_n_0 ;
  wire \intReg[6][2]_i_1__0_n_0 ;
  wire \intReg[6][2]_i_2_n_0 ;
  wire \intReg[6][2]_i_3_n_0 ;
  wire \intReg[6][3]_i_1_n_0 ;
  wire \intReg[6][4]_i_1_n_0 ;
  wire \intReg[6][5]_i_1_n_0 ;
  wire \intReg[6][7]_i_1__0_n_0 ;
  wire \intReg[6][7]_i_2_n_0 ;
  wire \intReg[6][7]_i_3_n_0 ;
  wire \intReg[7][0]_i_1__0_n_0 ;
  wire \intReg[7][0]_i_2_n_0 ;
  wire \intReg[7][1]_i_1__0_n_0 ;
  wire \intReg[7][2]_i_1__0_n_0 ;
  wire \intReg[7][3]_i_1_n_0 ;
  wire \intReg[7][4]_i_1_n_0 ;
  wire \intReg[7][5]_i_1_n_0 ;
  wire \intReg[7][7]_i_1__0_n_0 ;
  wire \intReg[7][7]_i_2_n_0 ;
  wire \intReg[7][7]_i_3_n_0 ;
  wire \intReg[7][7]_i_4_n_0 ;
  wire neg;
  wire neg_reg_0;
  wire newLine;
  wire \numDig[1]_i_1__0_n_0 ;
  wire \numDig[2]_i_1__0_n_0 ;
  wire \numDig_reg[0]_0 ;
  wire \numDig_reg[1]_0 ;
  wire \numDig_reg[2]_0 ;
  wire [2:0]p_0_in;
  wire [7:0]p_3_in;
  wire write;
  wire wtNeg;
  wire [3:1]\NLW_dig_reg[0]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_32_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_50_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_51_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_51_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_56_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[0]_i_56_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[0]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_10__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_10__0_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_28__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_37_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_37_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_44__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_59_CO_UNCONNECTED ;
  wire [1:0]\NLW_dig_reg[1]_i_59_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_6_CO_UNCONNECTED ;
  wire [1:0]\NLW_dig_reg[1]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_61_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_101_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_112_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_15_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[2]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_19_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_20_CO_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[2]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_22_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_30_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_30_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_34_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_50_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_50_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_59_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_59_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_64_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_73_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[2]_i_73_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_74_CO_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[2]_i_74_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[2]_i_75_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_75_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[2]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[2]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_24_CO_UNCONNECTED ;
  wire [3:3]\NLW_dig_reg[3]_i_24_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_25_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_30_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_30_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_5__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_13_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[13]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_15_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_6__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[13]_i_6__0_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_13_CO_UNCONNECTED ;
  wire [1:0]\NLW_intData_reg[2]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[2]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[2]_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_32_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_33__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[2]_i_33__0_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[2]_i_38_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_45_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_6_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[2]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_60_CO_UNCONNECTED ;
  wire [1:0]\NLW_intData_reg[2]_i_60_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_61_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_16_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[3]_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_35_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_35_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_38_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_38_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_44_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[6]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[6]_i_19_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[6]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[6]_i_42_CO_UNCONNECTED ;
  wire [3:1]\NLW_intData_reg[6]_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[6]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[6]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[9]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[9]_i_18_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[9]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[9]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cs[10]_i_1__0 
       (.I0(\FSM_onehot_cs[10]_i_2__0_n_0 ),
        .I1(equal),
        .I2(clr),
        .I3(\intAddr[7]_i_2__0_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_onehot_cs[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \FSM_onehot_cs[10]_i_2__0 
       (.I0(Q[3]),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(\FSM_onehot_cs_reg[0]_0 ),
        .I3(\FSM_onehot_cs_reg[0]_1 ),
        .I4(\FSM_onehot_cs_reg_n_0_[5] ),
        .I5(Q[0]),
        .O(\FSM_onehot_cs[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cs[6]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[5] ),
        .I1(neg),
        .O(\FSM_onehot_cs[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \FSM_onehot_cs[7]_i_1__0 
       (.I0(wtNeg),
        .I1(\FSM_onehot_cs_reg_n_0_[5] ),
        .I2(neg),
        .I3(write),
        .I4(\FSM_onehot_cs[7]_i_2_n_0 ),
        .O(\FSM_onehot_cs[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_cs[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .O(\FSM_onehot_cs[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_cs[9]_i_1 
       (.I0(write),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\FSM_onehot_cs[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(Q[3]),
        .Q(clr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[10] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(newLine),
        .Q(Q[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(clr),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_cs_reg_n_0_[1] ),
        .Q(equal),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(equal),
        .Q(Q[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[5] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(Q[1]),
        .Q(\FSM_onehot_cs_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[6] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_cs[6]_i_1_n_0 ),
        .Q(wtNeg),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[7] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_cs[7]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[8] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(Q[2]),
        .Q(write),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "countdig:00000001000,checkneg:00000010000,addeq:00000000100,send:10000000000,idle:00000000010,reset:00000000001,conv:00010000000,addnewline:01000000000,writeconv:00100000000,writeneg:00001000000,gotoneg:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[9] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1__0_n_0 ),
        .D(\FSM_onehot_cs[9]_i_1_n_0 ),
        .Q(newLine),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \dig[0]_i_12__0 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[2]_i_20_n_7 ),
        .I2(\dig_reg[2]_i_21_n_0 ),
        .O(\dig[0]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_14__0 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_14__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_15__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_15__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_16__0 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[0]_i_16__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_17__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[0]_i_17__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_19 
       (.I0(\dig_reg[0]_0 [1]),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \dig[0]_i_1__0 
       (.I0(\dig[0]_i_2__0_n_0 ),
        .I1(\dig[0]_i_3__0_n_0 ),
        .I2(\intData[2]_i_2__0_n_0 ),
        .I3(\dig[0]_i_4__0_n_0 ),
        .I4(dig),
        .I5(data0[0]),
        .O(\dig[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_20 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[0]_0 [1]),
        .I2(\dig_reg[0]_0 [2]),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_28 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_29 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEFEE)) 
    \dig[0]_i_2__0 
       (.I0(\dig[0]_i_5__0_n_0 ),
        .I1(\dig[0]_i_6__0_n_0 ),
        .I2(O),
        .I3(\dig[2]_i_8__0_n_0 ),
        .I4(\dig[0]_i_8__0_n_0 ),
        .I5(\dig[0]_i_9__0_n_0 ),
        .O(\dig[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_30 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_31 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_33 
       (.I0(\dig_reg[0]_0 [0]),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_34 
       (.I0(\dig_reg[0]_i_18_0 [3]),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_35 
       (.I0(\dig_reg[0]_i_18_0 [2]),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_36 
       (.I0(\dig_reg[0]_i_18_0 [1]),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_37 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[0]_0 [0]),
        .I2(\dig_reg[0]_0 [1]),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_38 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[0]_i_18_0 [3]),
        .I2(\dig_reg[0]_0 [0]),
        .I3(\intData_reg_n_0_[13] ),
        .O(\dig[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_39 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[0]_i_18_0 [2]),
        .I2(\dig_reg[0]_i_18_0 [3]),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[0]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \dig[0]_i_3__0 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\dig[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_40 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[0]_i_18_0 [1]),
        .I2(\dig_reg[0]_i_18_0 [2]),
        .I3(\intData_reg_n_0_[11] ),
        .O(\dig[0]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h80808880)) 
    \dig[0]_i_4__0 
       (.I0(\intData_reg[6]_0 [0]),
        .I1(\dig[3]_i_6_n_0 ),
        .I2(\dig_reg[0]_i_10_n_3 ),
        .I3(\dig_reg[0]_0 [2]),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_52 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[0]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_53 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[0]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_54 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[0]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_55 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[0]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_57 
       (.I0(\dig_reg[0]_i_18_0 [0]),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[0]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_58 
       (.I0(\dig_reg[0]_i_32_0 [3]),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[0]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_59 
       (.I0(\dig_reg[0]_i_32_0 [2]),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFF0100FF00010000)) 
    \dig[0]_i_5__0 
       (.I0(\dig[0]_i_12__0_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[15]_0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\intData_reg_n_0_[0] ),
        .O(\dig[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[0]_i_60 
       (.I0(\dig_reg[0]_i_32_0 [1]),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[0]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_61 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\dig_reg[0]_i_18_0 [0]),
        .I2(\dig_reg[0]_i_18_0 [1]),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_62 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[0]_i_32_0 [3]),
        .I2(\dig_reg[0]_i_18_0 [0]),
        .I3(\intData_reg_n_0_[9] ),
        .O(\dig[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_63 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig_reg[0]_i_32_0 [2]),
        .I2(\dig_reg[0]_i_32_0 [3]),
        .I3(\intData_reg_n_0_[8] ),
        .O(\dig[0]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[0]_i_64 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[0]_i_32_0 [1]),
        .I2(\dig_reg[0]_i_32_0 [2]),
        .I3(\intData_reg_n_0_[7] ),
        .O(\dig[0]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h80808880)) 
    \dig[0]_i_6__0 
       (.I0(\intData_reg[15]_0 ),
        .I1(\dig[2]_i_13__0_n_0 ),
        .I2(\dig_reg[2]_i_21_n_0 ),
        .I3(\dig_reg[2]_i_20_n_7 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_72 
       (.I0(\dig_reg[3]_i_24_n_0 ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h08E0800E)) 
    \dig[0]_i_73 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\dig_reg[3]_i_24_n_0 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h08E0800E)) 
    \dig[0]_i_74 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\dig_reg[3]_i_24_n_0 ),
        .I4(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dig[0]_i_75 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[3]_i_24_n_0 ),
        .O(\dig[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h70F1)) 
    \dig[0]_i_76 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[3]_i_24_n_0 ),
        .O(\dig[0]_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h077FE001)) 
    \dig[0]_i_77 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[3]_i_24_n_0 ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg_n_0_[13] ),
        .I4(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hC3D2B43CB43C3C2D)) 
    \dig[0]_i_78 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[3]_i_24_n_0 ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[14] ),
        .O(\dig[0]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_79 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[0]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[0]_i_80 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[0]_i_80_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[0]_i_81 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\dig[0]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[0]_i_82 
       (.I0(\dig_reg[0]_i_32_0 [0]),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[0]_i_82_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_83 
       (.I0(\intData_reg[12]_0 [0]),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[0]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[0]_i_84 
       (.I0(\intData_reg[6]_0 [1]),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[0]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[0]_i_85 
       (.I0(\intData_reg[6]_0 [0]),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[0]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[0]_i_86 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[0]_i_32_0 [0]),
        .I2(\dig_reg[0]_i_32_0 [1]),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[0]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[0]_i_87 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[12]_0 [0]),
        .I2(\dig_reg[0]_i_32_0 [0]),
        .I3(\intData_reg_n_0_[5] ),
        .O(\dig[0]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[0]_i_88 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[6]_0 [1]),
        .I2(\intData_reg[12]_0 [0]),
        .I3(\intData_reg_n_0_[4] ),
        .O(\dig[0]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[0]_i_89 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg[6]_0 [0]),
        .I2(\intData_reg[6]_0 [1]),
        .I3(\intData_reg_n_0_[3] ),
        .O(\dig[0]_i_89_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \dig[0]_i_8__0 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[2]_i_15_n_6 ),
        .I2(\dig_reg[2]_i_16_n_1 ),
        .O(\dig[0]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'h04040004)) 
    \dig[0]_i_9__0 
       (.I0(\intData_reg[6]_0 [0]),
        .I1(\dig[3]_i_6_n_0 ),
        .I2(\dig_reg[0]_i_10_n_3 ),
        .I3(\dig_reg[0]_0 [2]),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[0]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_11 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\dig_reg[1]_i_28__0_n_4 ),
        .I3(\intData_reg_n_0_[13] ),
        .I4(\dig[1]_i_29_n_0 ),
        .I5(\dig_reg[3]_i_24_n_7 ),
        .O(\dig[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_12 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\dig_reg[1]_i_28__0_n_5 ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\dig[1]_i_30_n_0 ),
        .I5(\dig_reg[1]_i_28__0_n_4 ),
        .O(\dig[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_13 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig_reg[1]_i_28__0_n_6 ),
        .I3(\intData_reg_n_0_[11] ),
        .I4(\dig[1]_i_31_n_0 ),
        .I5(\dig_reg[1]_i_28__0_n_5 ),
        .O(\dig[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_14 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\dig_reg[1]_i_28__0_n_7 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\dig[1]_i_32_n_0 ),
        .I5(\dig_reg[1]_i_28__0_n_6 ),
        .O(\dig[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_15 
       (.I0(\dig[1]_i_11_n_0 ),
        .I1(\dig[1]_i_33__0_n_0 ),
        .I2(\dig_reg[3]_i_24_n_6 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_16 
       (.I0(\dig[1]_i_12_n_0 ),
        .I1(\dig[1]_i_34__0_n_0 ),
        .I2(\dig_reg[3]_i_24_n_7 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData_reg_n_0_[7] ),
        .I5(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_17 
       (.I0(\dig[1]_i_13_n_0 ),
        .I1(\dig[1]_i_35_n_0 ),
        .I2(\dig_reg[1]_i_28__0_n_4 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_18__0 
       (.I0(\dig[1]_i_14_n_0 ),
        .I1(\dig[1]_i_36_n_0 ),
        .I2(\dig_reg[1]_i_28__0_n_5 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_18__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \dig[1]_i_1__0 
       (.I0(\dig[1]_i_2__0_n_0 ),
        .I1(\dig[1]_i_3__0_n_0 ),
        .I2(\dig[1]_i_4__0_n_0 ),
        .I3(dig),
        .I4(data0[1]),
        .O(\dig[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_20 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig_reg[1]_i_44__0_n_4 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[1]_i_45__0_n_0 ),
        .I5(\dig_reg[1]_i_28__0_n_7 ),
        .O(\dig[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[1]_i_21__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\dig_reg[1]_i_44__0_n_5 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\dig[1]_i_46__0_n_0 ),
        .I5(\dig_reg[1]_i_44__0_n_4 ),
        .O(\dig[1]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE28BE282828)) 
    \dig[1]_i_22__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig[1]_i_47__0_n_0 ),
        .I2(\dig_reg[1]_i_44__0_n_5 ),
        .I3(\dig_reg[1]_i_44__0_n_6 ),
        .I4(\intData_reg_n_0_[0] ),
        .I5(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \dig[1]_i_23__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\dig_reg[1]_i_44__0_n_6 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[1]_i_47__0_n_0 ),
        .I5(\dig_reg[1]_i_44__0_n_5 ),
        .O(\dig[1]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_24__0 
       (.I0(\dig[1]_i_20_n_0 ),
        .I1(\dig[1]_i_48_n_0 ),
        .I2(\dig_reg[1]_i_28__0_n_6 ),
        .I3(\intData_reg_n_0_[4] ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_25__0 
       (.I0(\dig[1]_i_21__0_n_0 ),
        .I1(\dig[1]_i_49__0_n_0 ),
        .I2(\dig_reg[1]_i_28__0_n_7 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[1]_i_26__0 
       (.I0(\dig[1]_i_22__0_n_0 ),
        .I1(\dig[1]_i_50__0_n_0 ),
        .I2(\dig_reg[1]_i_44__0_n_4 ),
        .I3(\intData_reg_n_0_[4] ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \dig[1]_i_27 
       (.I0(\dig[1]_i_51__0_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[0] ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\dig_reg[1]_i_44__0_n_6 ),
        .O(\dig[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_29 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFF04040404040404)) 
    \dig[1]_i_2__0 
       (.I0(\dig[1]_i_5__0_n_0 ),
        .I1(\dig[3]_i_6_n_0 ),
        .I2(\intData_reg[6]_0 [1]),
        .I3(\dig[1]_i_7__0_n_0 ),
        .I4(\dig[2]_i_8__0_n_0 ),
        .I5(\intData_reg[14]_3 [0]),
        .O(\dig[1]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_30 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_31 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_32 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_33__0 
       (.I0(\dig_reg[3]_i_24_n_7 ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_33__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_34__0 
       (.I0(\dig_reg[1]_i_28__0_n_4 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_34__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_35 
       (.I0(\dig_reg[1]_i_28__0_n_5 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_36 
       (.I0(\dig_reg[1]_i_28__0_n_6 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[1]_i_38 
       (.I0(\dig_reg[1]_i_44__0_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[1]_i_39 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[1]_i_44__0_n_7 ),
        .I2(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEFFAEAE)) 
    \dig[1]_i_3__0 
       (.I0(\dig[1]_i_8__0_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\dig[2]_i_11__0_n_0 ),
        .I3(\intData_reg[14]_0 [0]),
        .I4(\dig[2]_i_13__0_n_0 ),
        .I5(\dig[1]_i_9_n_0 ),
        .O(\dig[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \dig[1]_i_40__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig[1]_i_60__0_n_0 ),
        .I2(\dig_reg[1]_i_44__0_n_6 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\dig_reg[1]_i_44__0_n_7 ),
        .O(\dig[1]_i_40__0_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \dig[1]_i_41__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\dig_reg[1]_i_44__0_n_7 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg_n_0_[0] ),
        .I4(\dig_reg[1]_i_61_n_4 ),
        .O(\dig[1]_i_41__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[1]_i_42__0 
       (.I0(\dig_reg[1]_i_61_n_4 ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_42__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_43__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\dig_reg[1]_i_61_n_5 ),
        .O(\dig[1]_i_43__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_45__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_45__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_46__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_46__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_47__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_47__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_48 
       (.I0(\dig_reg[1]_i_28__0_n_7 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_49__0 
       (.I0(\dig_reg[1]_i_44__0_n_4 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_49__0_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \dig[1]_i_4__0 
       (.I0(\dig[1]_i_5__0_n_0 ),
        .I1(\intData_reg[6]_0 [1]),
        .I2(\intData[3]_i_10_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\dig[1]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[1]_i_50__0 
       (.I0(\dig_reg[1]_i_44__0_n_5 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_50__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[1]_i_51__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\dig_reg[1]_i_44__0_n_5 ),
        .O(\dig[1]_i_51__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_52__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_52__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_53__0 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_53__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_54 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_55__0 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_55__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_56__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\dig_reg[1]_i_61_n_6 ),
        .O(\dig[1]_i_56__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_57__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\dig_reg[1]_i_61_n_7 ),
        .O(\dig[1]_i_57__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_58__0 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\dig_reg[1]_i_59_n_4 ),
        .O(\dig[1]_i_58__0_n_0 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \dig[1]_i_5__0 
       (.I0(\dig_reg[0]_i_10_n_3 ),
        .I1(\dig_reg[0]_0 [2]),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg[6]_0 [0]),
        .O(\dig[1]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_60__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[0] ),
        .O(\dig[1]_i_60__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_62__0 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_62__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_63 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_64__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_64__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_65__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_65__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_66 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_67 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_68 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_69 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_70 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_71__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_71__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_72__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_72__0_n_0 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \dig[1]_i_7__0 
       (.I0(\dig_reg[2]_i_16_n_1 ),
        .I1(\dig_reg[2]_i_15_n_6 ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(O),
        .O(\dig[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040004040)) 
    \dig[1]_i_8__0 
       (.I0(\intData_reg[14]_3 [0]),
        .I1(\dig[2]_i_8__0_n_0 ),
        .I2(O),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\dig_reg[2]_i_15_n_6 ),
        .I5(\dig_reg[2]_i_16_n_1 ),
        .O(\dig[1]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \dig[1]_i_9 
       (.I0(\dig_reg[2]_i_21_n_0 ),
        .I1(\dig_reg[2]_i_20_n_7 ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg[15]_0 ),
        .O(\dig[1]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[2]_i_102 
       (.I0(\intData_reg[15]_4 ),
        .O(\dig[2]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_104 
       (.I0(\dig_reg[2]_i_112_n_6 ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[2]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_105 
       (.I0(\dig_reg[2]_i_112_n_7 ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[2]_i_105_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_106 
       (.I0(\intData_reg[14]_0 [0]),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[2]_i_106_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_107 
       (.I0(\intData_reg[15]_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[2]_i_107_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[2]_i_108 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[2]_i_112_n_6 ),
        .I2(\dig_reg[2]_i_64_n_7 ),
        .I3(\intData_reg_n_0_[7] ),
        .O(\dig[2]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[2]_i_109 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[2]_i_112_n_7 ),
        .I2(\dig_reg[2]_i_112_n_6 ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[2]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \dig[2]_i_10__0 
       (.I0(\intData_reg[14]_3 [1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\intData_reg[14]_3 [0]),
        .I5(\dig[1]_i_7__0_n_0 ),
        .O(\dig[2]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[2]_i_110 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[14]_0 [0]),
        .I2(\dig_reg[2]_i_112_n_7 ),
        .I3(\intData_reg_n_0_[5] ),
        .O(\dig[2]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_111 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[15]_0 ),
        .I2(\intData_reg[14]_0 [0]),
        .I3(\intData_reg_n_0_[4] ),
        .O(\dig[2]_i_111_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_113 
       (.I0(\intData_reg[14]_0 [3]),
        .I1(\intData_reg[15]_4 ),
        .O(\dig[2]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_114 
       (.I0(\intData_reg[14]_0 [2]),
        .I1(\intData_reg[15]_3 ),
        .O(\dig[2]_i_114_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[2]_i_115 
       (.I0(\intData_reg[15]_4 ),
        .I1(\intData_reg[14]_0 [1]),
        .I2(\intData_reg[14]_0 [3]),
        .O(\dig[2]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[2]_i_116 
       (.I0(\intData_reg[15]_3 ),
        .I1(\intData_reg[14]_0 [0]),
        .I2(\intData_reg[14]_0 [2]),
        .O(\dig[2]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_11__0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .O(\dig[2]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[2]_i_121 
       (.I0(\intData_reg[15]_0 ),
        .I1(\intData_reg[14]_0 [3]),
        .I2(\intData_reg[14]_0 [1]),
        .O(\dig[2]_i_121_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[2]_i_122 
       (.I0(\intData_reg[14]_0 [1]),
        .I1(\intData_reg[14]_0 [3]),
        .I2(\intData_reg[15]_0 ),
        .O(\dig[2]_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[2]_i_123 
       (.I0(\intData_reg[14]_0 [2]),
        .I1(\intData_reg[14]_0 [0]),
        .O(\dig[2]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \dig[2]_i_13__0 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\dig[2]_i_13__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF75FFFF)) 
    \dig[2]_i_14__0 
       (.I0(\intData_reg[15]_0 ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\dig_reg[2]_i_20_n_7 ),
        .I3(\dig_reg[2]_i_21_n_0 ),
        .I4(\intData_reg[14]_0 [0]),
        .O(\dig[2]_i_14__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[2]_i_17__0 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[2]_i_18__0 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\dig[2]_i_18__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \dig[2]_i_1__0 
       (.I0(\dig[2]_i_2__0_n_0 ),
        .I1(\dig[2]_i_3_n_0 ),
        .I2(\dig[2]_i_4__0_n_0 ),
        .I3(dig),
        .I4(data0[2]),
        .O(\dig[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_24 
       (.I0(\dig_reg[2]_i_15_n_7 ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[2]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_25 
       (.I0(\dig_reg[2]_i_22_n_4 ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[2]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_26 
       (.I0(\dig_reg[2]_i_22_n_5 ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_27 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[2]_i_15_n_7 ),
        .I2(\dig_reg[2]_i_15_n_6 ),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_28 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[2]_i_22_n_4 ),
        .I2(\dig_reg[2]_i_15_n_7 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[2]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[2]_i_29 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[2]_i_22_n_5 ),
        .I2(\dig_reg[2]_i_22_n_4 ),
        .I3(\intData_reg_n_0_[13] ),
        .O(\dig[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFF04040404040404)) 
    \dig[2]_i_2__0 
       (.I0(\dig[2]_i_6__0_n_0 ),
        .I1(\dig[3]_i_6_n_0 ),
        .I2(\intData_reg[12]_0 [0]),
        .I3(\dig[2]_i_7__0_n_0 ),
        .I4(\dig[2]_i_8__0_n_0 ),
        .I5(\intData_reg[14]_3 [1]),
        .O(\dig[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEFFAEAE)) 
    \dig[2]_i_3 
       (.I0(\dig[2]_i_10__0_n_0 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\dig[2]_i_11__0_n_0 ),
        .I3(\intData_reg[14]_0 [1]),
        .I4(\dig[2]_i_13__0_n_0 ),
        .I5(\dig[2]_i_14__0_n_0 ),
        .O(\dig[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_31 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[2]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_32 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[2]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_33 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[2]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \dig[2]_i_35 
       (.I0(\intData_reg[14]_0 [3]),
        .I1(\intData_reg[15]_5 [1]),
        .I2(\intData_reg[15]_3 ),
        .I3(\dig_reg[2]_i_73_n_1 ),
        .O(\dig[2]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_37 
       (.I0(\dig_reg[2]_i_34_n_4 ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[2]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_38 
       (.I0(\dig_reg[2]_i_34_n_5 ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[2]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_39 
       (.I0(\dig_reg[2]_i_34_n_6 ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[2]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_40 
       (.I0(\dig_reg[2]_i_34_n_7 ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[2]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_41 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[2]_i_34_n_4 ),
        .I2(\dig_reg[2]_i_20_n_7 ),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_42 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[2]_i_34_n_5 ),
        .I2(\dig_reg[2]_i_34_n_4 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[2]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_43 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[2]_i_34_n_6 ),
        .I2(\dig_reg[2]_i_34_n_5 ),
        .I3(\intData_reg_n_0_[13] ),
        .O(\dig[2]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_44 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[2]_i_34_n_7 ),
        .I2(\dig_reg[2]_i_34_n_6 ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[2]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[2]_i_45 
       (.I0(\intData_reg[14]_3 [0]),
        .I1(\intData_reg[14]_3 [1]),
        .I2(O),
        .O(\dig[2]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dig[2]_i_46 
       (.I0(\intData_reg[14]_3 [0]),
        .I1(O),
        .O(\dig[2]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[2]_i_49 
       (.I0(\dig[2]_i_46_n_0 ),
        .I1(\intData_reg[14]_3 [1]),
        .I2(O),
        .I3(\intData_reg[14]_3 [0]),
        .O(\dig[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000F00000)) 
    \dig[2]_i_4__0 
       (.I0(\dig[2]_i_6__0_n_0 ),
        .I1(\intData_reg[12]_0 [0]),
        .I2(\intData[3]_i_8__0_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\dig[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_51 
       (.I0(\dig_reg[2]_i_22_n_6 ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[2]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_52 
       (.I0(\dig_reg[2]_i_22_n_7 ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[2]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h6F)) 
    \dig[2]_i_53 
       (.I0(\intData_reg[14]_3 [0]),
        .I1(O),
        .I2(\intData_reg_n_0_[9] ),
        .O(\dig[2]_i_53_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_54 
       (.I0(O),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[2]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_55 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[2]_i_22_n_6 ),
        .I2(\dig_reg[2]_i_22_n_5 ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[2]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_56 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[2]_i_22_n_7 ),
        .I2(\dig_reg[2]_i_22_n_6 ),
        .I3(\intData_reg_n_0_[11] ),
        .O(\dig[2]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h7D82827D)) 
    \dig[2]_i_57 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(O),
        .I2(\intData_reg[14]_3 [0]),
        .I3(\dig_reg[2]_i_22_n_7 ),
        .I4(\intData_reg_n_0_[10] ),
        .O(\dig[2]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[2]_i_58 
       (.I0(\dig[2]_i_54_n_0 ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(O),
        .I3(\intData_reg[14]_3 [0]),
        .O(\dig[2]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h0CC8)) 
    \dig[2]_i_5__0 
       (.I0(p_0_in[0]),
        .I1(Q[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(dig));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_60 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[2]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_61 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[2]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_62 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[2]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_63 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[2]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[2]_i_65 
       (.I0(\intData_reg[15]_4 ),
        .I1(\intData_reg[15]_5 [0]),
        .I2(\intData_reg[14]_0 [2]),
        .O(\dig[2]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[2]_i_66 
       (.I0(\intData_reg[15]_3 ),
        .I1(\dig[2]_i_120 [3]),
        .I2(\intData_reg[14]_0 [1]),
        .O(\dig[2]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[2]_i_67 
       (.I0(\intData_reg[14]_0 [3]),
        .I1(\dig[2]_i_120 [2]),
        .I2(\intData_reg[14]_0 [0]),
        .O(\dig[2]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[2]_i_68 
       (.I0(\intData_reg[14]_0 [2]),
        .I1(\dig[2]_i_120 [1]),
        .I2(\intData_reg[15]_0 ),
        .O(\dig[2]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hFF75FFFF)) 
    \dig[2]_i_6__0 
       (.I0(\intData_reg[6]_0 [0]),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\dig_reg[0]_0 [2]),
        .I3(\dig_reg[0]_i_10_n_3 ),
        .I4(\intData_reg[6]_0 [1]),
        .O(\dig[2]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_76 
       (.I0(\dig_reg[2]_i_64_n_4 ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[2]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_77 
       (.I0(\dig_reg[2]_i_64_n_5 ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[2]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_78 
       (.I0(\dig_reg[2]_i_64_n_6 ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[2]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_79 
       (.I0(\dig_reg[2]_i_64_n_7 ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[2]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hFF75FFFF)) 
    \dig[2]_i_7__0 
       (.I0(O),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\dig_reg[2]_i_15_n_6 ),
        .I3(\dig_reg[2]_i_16_n_1 ),
        .I4(\intData_reg[14]_3 [0]),
        .O(\dig[2]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_80 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[2]_i_64_n_4 ),
        .I2(\dig_reg[2]_i_34_n_7 ),
        .I3(\intData_reg_n_0_[11] ),
        .O(\dig[2]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_81 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\dig_reg[2]_i_64_n_5 ),
        .I2(\dig_reg[2]_i_64_n_4 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[2]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[2]_i_82 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[2]_i_64_n_6 ),
        .I2(\dig_reg[2]_i_64_n_5 ),
        .I3(\intData_reg_n_0_[9] ),
        .O(\dig[2]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[2]_i_83 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig_reg[2]_i_64_n_7 ),
        .I2(\dig_reg[2]_i_64_n_6 ),
        .I3(\intData_reg_n_0_[8] ),
        .O(\dig[2]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_84 
       (.I0(\intData_reg[14]_3 [1]),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[2]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_85 
       (.I0(\intData_reg[14]_3 [0]),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[2]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_86 
       (.I0(O),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[2]_i_86_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_87 
       (.I0(O),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[2]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \dig[2]_i_88 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[14]_3 [1]),
        .I2(\intData_reg_n_0_[7] ),
        .O(\dig[2]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[2]_i_89 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[14]_3 [0]),
        .I2(\intData_reg[14]_3 [1]),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[2]_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \dig[2]_i_8__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(\dig[2]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[2]_i_90 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(O),
        .I2(\intData_reg[14]_3 [0]),
        .I3(\intData_reg_n_0_[5] ),
        .O(\dig[2]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_91 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[2]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_92 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\dig[2]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[2]_i_93 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[0] ),
        .O(\dig[2]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[2]_i_94 
       (.I0(\intData_reg[14]_0 [2]),
        .I1(\intData_reg[15]_0 ),
        .I2(\dig[2]_i_120 [1]),
        .O(\dig[2]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[2]_i_95 
       (.I0(\dig[2]_i_127 [1]),
        .I1(\intData_reg[14]_0 [0]),
        .O(\dig[2]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[2]_i_96 
       (.I0(\dig[2]_i_127 [0]),
        .I1(\intData_reg[15]_0 ),
        .O(\dig[2]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \dig[3]_i_10 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig[3]_i_21__0_n_0 ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[3]_i_22__0_n_0 ),
        .I5(\dig[3]_i_23_n_0 ),
        .O(\dig[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \dig[3]_i_11__0 
       (.I0(\dig[3]_i_21__0_n_0 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\dig[3]_i_22__0_n_0 ),
        .I4(\dig[3]_i_23_n_0 ),
        .I5(\intData_reg_n_0_[6] ),
        .O(\dig[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hF1080EF5508FEF70)) 
    \dig[3]_i_12 
       (.I0(\dig[3]_i_23_n_0 ),
        .I1(\dig[3]_i_21__0_n_0 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\dig[3]_i_22__0_n_0 ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[7] ),
        .O(\dig[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0E80800E)) 
    \dig[3]_i_13 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\dig_reg[3]_i_24_n_0 ),
        .I3(\intData_reg_n_0_[13] ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\dig[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E8E800E80000E8)) 
    \dig[3]_i_14 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\dig_reg[3]_i_24_n_5 ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\dig_reg[3]_i_24_n_0 ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\dig[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \dig[3]_i_15 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\dig_reg[3]_i_24_n_6 ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\dig[3]_i_25_n_0 ),
        .O(\dig[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \dig[3]_i_16__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\dig_reg[3]_i_24_n_7 ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\dig[3]_i_26_n_0 ),
        .I5(\dig_reg[3]_i_24_n_6 ),
        .O(\dig[3]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hCD32B34CB34C32CD)) 
    \dig[3]_i_17 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[12] ),
        .I2(\dig_reg[3]_i_24_n_0 ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[11] ),
        .I5(\intData_reg_n_0_[13] ),
        .O(\dig[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    \dig[3]_i_18__0 
       (.I0(\dig[3]_i_14_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\dig_reg[3]_i_24_n_0 ),
        .I4(\intData_reg_n_0_[13] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\dig[3]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \dig[3]_i_19__0 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig[3]_i_27_n_0 ),
        .I2(\dig[3]_i_28__0_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData_reg_n_0_[11] ),
        .I5(\dig_reg[3]_i_24_n_5 ),
        .O(\dig[3]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hB3AABEAA80AA82AA)) 
    \dig[3]_i_1__0 
       (.I0(data0[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(Q[2]),
        .I4(p_0_in[0]),
        .I5(\dig[3]_i_2__0_n_0 ),
        .O(\dig[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dig[3]_i_20__0 
       (.I0(\dig[3]_i_16__0_n_0 ),
        .I1(\dig[3]_i_27_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg_n_0_[11] ),
        .I4(\dig_reg[3]_i_24_n_5 ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_20__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[3]_i_21__0 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData[3]_i_37__0_n_0 ),
        .O(\dig[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \dig[3]_i_22__0 
       (.I0(\dig[3]_i_29__0_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\dig[3]_i_30__0_n_0 ),
        .I3(\intData[3]_i_37__0_n_0 ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[3]_i_22__0_n_0 ));
  LUT5 #(
    .INIT(32'hD24B2DB4)) 
    \dig[3]_i_23 
       (.I0(\intData[3]_i_37__0_n_0 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\dig[3]_i_30__0_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData_reg_n_0_[10] ),
        .O(\dig[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_25 
       (.I0(\dig_reg[3]_i_24_n_5 ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\intData_reg_n_0_[9] ),
        .O(\dig[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[3]_i_26 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[3]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \dig[3]_i_27 
       (.I0(\dig_reg[3]_i_24_n_6 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .O(\dig[3]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[3]_i_28__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[3]_i_24_n_0 ),
        .I2(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h9569966969569569)) 
    \dig[3]_i_29__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg_n_0_[13] ),
        .I4(\intData_reg_n_0_[14] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \dig[3]_i_2__0 
       (.I0(\dig[3]_i_3__0_n_0 ),
        .I1(\dig[0]_i_3__0_n_0 ),
        .I2(\dig[3]_i_4_n_0 ),
        .I3(\intData_reg[12]_0 [1]),
        .I4(\dig[3]_i_6_n_0 ),
        .I5(\dig[3]_i_7_n_0 ),
        .O(\dig[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h18EFF718108EE710)) 
    \dig[3]_i_30__0 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\dig[3]_i_30__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[3]_i_31__0 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_31__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[3]_i_32__0 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\dig[3]_i_32__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[3]_i_33__0 
       (.I0(\intData_reg_n_0_[13] ),
        .O(\dig[3]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEFFAEAE)) 
    \dig[3]_i_3__0 
       (.I0(\dig[3]_i_8__0_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\dig[2]_i_11__0_n_0 ),
        .I3(\intData_reg[14]_0 [2]),
        .I4(\dig[2]_i_13__0_n_0 ),
        .I5(\dig[3]_i_9__0_n_0 ),
        .O(\dig[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \dig[3]_i_4 
       (.I0(\dig[3]_i_10_n_0 ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig[3]_i_11__0_n_0 ),
        .I4(\dig[3]_i_12_n_0 ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\dig[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \dig[3]_i_6 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\dig[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDFDFFFFFFFFFFFF)) 
    \dig[3]_i_7 
       (.I0(\intData_reg[6]_0 [1]),
        .I1(\dig_reg[0]_i_10_n_3 ),
        .I2(\dig_reg[0]_0 [2]),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg[6]_0 [0]),
        .I5(\intData_reg[12]_0 [0]),
        .O(\dig[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \dig[3]_i_8__0 
       (.I0(\intData_reg[12]_0 [1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\intData_reg[12]_0 [0]),
        .I5(\dig[2]_i_6__0_n_0 ),
        .O(\dig[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDFDFFFFFFFFFFFF)) 
    \dig[3]_i_9__0 
       (.I0(\intData_reg[14]_0 [0]),
        .I1(\dig_reg[2]_i_21_n_0 ),
        .I2(\dig_reg[2]_i_20_n_7 ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg[15]_0 ),
        .I5(\intData_reg[14]_0 [1]),
        .O(\dig[3]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[0]_i_1__0_n_0 ),
        .Q(data0[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dig_reg[0]_i_10 
       (.CI(\dig_reg[0]_i_18_n_0 ),
        .CO({\NLW_dig_reg[0]_i_10_CO_UNCONNECTED [3:1],\dig_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig[0]_i_19_n_0 }),
        .O(\NLW_dig_reg[0]_i_10_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[0]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_13 
       (.CI(\dig_reg[0]_i_27_n_0 ),
        .CO({\dig_reg[0]_i_13_n_0 ,\NLW_dig_reg[0]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] }),
        .O(\NLW_dig_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_28_n_0 ,\dig[0]_i_29_n_0 ,\dig[0]_i_30_n_0 ,\dig[0]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_18 
       (.CI(\dig_reg[0]_i_32_n_0 ),
        .CO({\dig_reg[0]_i_18_n_0 ,\NLW_dig_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[0]_i_33_n_0 ,\dig[0]_i_34_n_0 ,\dig[0]_i_35_n_0 ,\dig[0]_i_36_n_0 }),
        .O(\NLW_dig_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_37_n_0 ,\dig[0]_i_38_n_0 ,\dig[0]_i_39_n_0 ,\dig[0]_i_40_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_27 
       (.CI(\dig_reg[0]_i_51_n_0 ),
        .CO({\dig_reg[0]_i_27_n_0 ,\NLW_dig_reg[0]_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] }),
        .O(\NLW_dig_reg[0]_i_27_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_52_n_0 ,\dig[0]_i_53_n_0 ,\dig[0]_i_54_n_0 ,\dig[0]_i_55_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_32 
       (.CI(\dig_reg[0]_i_56_n_0 ),
        .CO({\dig_reg[0]_i_32_n_0 ,\NLW_dig_reg[0]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[0]_i_57_n_0 ,\dig[0]_i_58_n_0 ,\dig[0]_i_59_n_0 ,\dig[0]_i_60_n_0 }),
        .O(\NLW_dig_reg[0]_i_32_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_61_n_0 ,\dig[0]_i_62_n_0 ,\dig[0]_i_63_n_0 ,\dig[0]_i_64_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_50 
       (.CI(\dig_reg[3]_i_5_n_0 ),
        .CO(\NLW_dig_reg[0]_i_50_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[0]_i_72_n_0 ,\dig[0]_i_73_n_0 ,\dig[0]_i_74_n_0 }),
        .O(\intData_reg[15]_6 ),
        .S({\dig[0]_i_75_n_0 ,\dig[0]_i_76_n_0 ,\dig[0]_i_77_n_0 ,\dig[0]_i_78_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_51 
       (.CI(1'b0),
        .CO({\dig_reg[0]_i_51_n_0 ,\NLW_dig_reg[0]_i_51_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0,1'b1}),
        .O(\NLW_dig_reg[0]_i_51_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_79_n_0 ,\dig[0]_i_80_n_0 ,\dig[0]_i_81_n_0 ,\intData_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_56 
       (.CI(1'b0),
        .CO({\dig_reg[0]_i_56_n_0 ,\NLW_dig_reg[0]_i_56_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[0]_i_82_n_0 ,\dig[0]_i_83_n_0 ,\dig[0]_i_84_n_0 ,\dig[0]_i_85_n_0 }),
        .O(\NLW_dig_reg[0]_i_56_O_UNCONNECTED [3:0]),
        .S({\dig[0]_i_86_n_0 ,\dig[0]_i_87_n_0 ,\dig[0]_i_88_n_0 ,\dig[0]_i_89_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[0]_i_7 
       (.CI(\dig_reg[0]_i_13_n_0 ),
        .CO({\dig_reg[0]_i_7_n_0 ,\NLW_dig_reg[0]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] }),
        .O({O,\NLW_dig_reg[0]_i_7_O_UNCONNECTED [2:0]}),
        .S({\dig[0]_i_14__0_n_0 ,\dig[0]_i_15__0_n_0 ,\dig[0]_i_16__0_n_0 ,\dig[0]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[1]_i_1__0_n_0 ),
        .Q(data0[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_10__0 
       (.CI(\dig_reg[1]_i_19_n_0 ),
        .CO({\dig_reg[1]_i_10__0_n_0 ,\NLW_dig_reg[1]_i_10__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_20_n_0 ,\dig[1]_i_21__0_n_0 ,\dig[1]_i_22__0_n_0 ,\dig[1]_i_23__0_n_0 }),
        .O(\NLW_dig_reg[1]_i_10__0_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_24__0_n_0 ,\dig[1]_i_25__0_n_0 ,\dig[1]_i_26__0_n_0 ,\dig[1]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_19 
       (.CI(\dig_reg[1]_i_37_n_0 ),
        .CO({\dig_reg[1]_i_19_n_0 ,\NLW_dig_reg[1]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_38_n_0 ,\dig[1]_i_39_n_0 ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] }),
        .O(\NLW_dig_reg[1]_i_19_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_40__0_n_0 ,\dig[1]_i_41__0_n_0 ,\dig[1]_i_42__0_n_0 ,\dig[1]_i_43__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_28__0 
       (.CI(\dig_reg[1]_i_44__0_n_0 ),
        .CO({\dig_reg[1]_i_28__0_n_0 ,\NLW_dig_reg[1]_i_28__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O({\dig_reg[1]_i_28__0_n_4 ,\dig_reg[1]_i_28__0_n_5 ,\dig_reg[1]_i_28__0_n_6 ,\dig_reg[1]_i_28__0_n_7 }),
        .S({\dig[1]_i_52__0_n_0 ,\dig[1]_i_53__0_n_0 ,\dig[1]_i_54_n_0 ,\dig[1]_i_55__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[1]_i_37 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_37_n_0 ,\NLW_dig_reg[1]_i_37_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0}),
        .O(\NLW_dig_reg[1]_i_37_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_56__0_n_0 ,\dig[1]_i_57__0_n_0 ,\dig[1]_i_58__0_n_0 ,\dig_reg[1]_i_59_n_5 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_44__0 
       (.CI(\dig_reg[1]_i_61_n_0 ),
        .CO({\dig_reg[1]_i_44__0_n_0 ,\NLW_dig_reg[1]_i_44__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] }),
        .O({\dig_reg[1]_i_44__0_n_4 ,\dig_reg[1]_i_44__0_n_5 ,\dig_reg[1]_i_44__0_n_6 ,\dig_reg[1]_i_44__0_n_7 }),
        .S({\dig[1]_i_62__0_n_0 ,\dig[1]_i_63_n_0 ,\dig[1]_i_64__0_n_0 ,\dig[1]_i_65__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_59 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_59_n_0 ,\NLW_dig_reg[1]_i_59_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[0] ,1'b0,1'b0,1'b1}),
        .O({\dig_reg[1]_i_59_n_4 ,\dig_reg[1]_i_59_n_5 ,\NLW_dig_reg[1]_i_59_O_UNCONNECTED [1:0]}),
        .S({\dig[1]_i_66_n_0 ,\dig[1]_i_67_n_0 ,\dig[1]_i_68_n_0 ,\intData_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_6 
       (.CI(\dig_reg[1]_i_10__0_n_0 ),
        .CO({\dig_reg[1]_i_6_n_0 ,\NLW_dig_reg[1]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_11_n_0 ,\dig[1]_i_12_n_0 ,\dig[1]_i_13_n_0 ,\dig[1]_i_14_n_0 }),
        .O({\intData_reg[6]_0 ,\NLW_dig_reg[1]_i_6_O_UNCONNECTED [1:0]}),
        .S({\dig[1]_i_15_n_0 ,\dig[1]_i_16_n_0 ,\dig[1]_i_17_n_0 ,\dig[1]_i_18__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_61 
       (.CI(\dig_reg[1]_i_59_n_0 ),
        .CO({\dig_reg[1]_i_61_n_0 ,\NLW_dig_reg[1]_i_61_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] }),
        .O({\dig_reg[1]_i_61_n_4 ,\dig_reg[1]_i_61_n_5 ,\dig_reg[1]_i_61_n_6 ,\dig_reg[1]_i_61_n_7 }),
        .S({\dig[1]_i_69_n_0 ,\dig[1]_i_70_n_0 ,\dig[1]_i_71__0_n_0 ,\dig[1]_i_72__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[2]_i_1__0_n_0 ),
        .Q(data0[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_101 
       (.CI(\dig_reg[2]_i_112_n_0 ),
        .CO({\dig_reg[2]_i_101_n_0 ,\NLW_dig_reg[2]_i_101_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_113_n_0 ,\dig[2]_i_114_n_0 ,\dig[2]_i_115_n_0 ,\dig[2]_i_116_n_0 }),
        .O(\dig[2]_i_120 ),
        .S(\dig[2]_i_98 ));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[2]_i_112 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_112_n_0 ,\NLW_dig_reg[2]_i_112_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_121_n_0 ,\dig[2]_i_122_n_0 ,\dig[2]_i_123_n_0 ,1'b0}),
        .O({\dig[2]_i_127 ,\dig_reg[2]_i_112_n_6 ,\dig_reg[2]_i_112_n_7 }),
        .S(\dig[2]_i_110_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_12 
       (.CI(\dig_reg[2]_i_19_n_0 ),
        .CO({\dig_reg[2]_i_12_n_0 ,\NLW_dig_reg[2]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\intData_reg[14]_0 ),
        .S({\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_15 
       (.CI(\dig_reg[2]_i_22_n_0 ),
        .CO(\NLW_dig_reg[2]_i_15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[2]_i_15_O_UNCONNECTED [3:2],\dig_reg[2]_i_15_n_6 ,\dig_reg[2]_i_15_n_7 }),
        .S({1'b0,1'b0,\intData_reg[14]_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_16 
       (.CI(\dig_reg[2]_i_23_n_0 ),
        .CO({\NLW_dig_reg[2]_i_16_CO_UNCONNECTED [3],\dig_reg[2]_i_16_n_1 ,\NLW_dig_reg[2]_i_16_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[2]_i_24_n_0 ,\dig[2]_i_25_n_0 ,\dig[2]_i_26_n_0 }),
        .O(\NLW_dig_reg[2]_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,\dig[2]_i_27_n_0 ,\dig[2]_i_28_n_0 ,\dig[2]_i_29_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_19 
       (.CI(\dig_reg[2]_i_30_n_0 ),
        .CO({\dig_reg[2]_i_19_n_0 ,\NLW_dig_reg[2]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\intData_reg[15]_0 ,\NLW_dig_reg[2]_i_19_O_UNCONNECTED [2:0]}),
        .S({\intData_reg_n_0_[10] ,\dig[2]_i_31_n_0 ,\dig[2]_i_32_n_0 ,\dig[2]_i_33_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dig_reg[2]_i_20 
       (.CI(\dig_reg[2]_i_34_n_0 ),
        .CO(\NLW_dig_reg[2]_i_20_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[2]_i_20_O_UNCONNECTED [3:1],\dig_reg[2]_i_20_n_7 }),
        .S({1'b0,1'b0,1'b0,\dig[2]_i_35_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_21 
       (.CI(\dig_reg[2]_i_36_n_0 ),
        .CO({\dig_reg[2]_i_21_n_0 ,\NLW_dig_reg[2]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_37_n_0 ,\dig[2]_i_38_n_0 ,\dig[2]_i_39_n_0 ,\dig[2]_i_40_n_0 }),
        .O(\NLW_dig_reg[2]_i_21_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_41_n_0 ,\dig[2]_i_42_n_0 ,\dig[2]_i_43_n_0 ,\dig[2]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_22 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_22_n_0 ,\NLW_dig_reg[2]_i_22_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg[14]_3 [1],\dig[2]_i_45_n_0 ,\dig[2]_i_46_n_0 }),
        .O({\dig_reg[2]_i_22_n_4 ,\dig_reg[2]_i_22_n_5 ,\dig_reg[2]_i_22_n_6 ,\dig_reg[2]_i_22_n_7 }),
        .S({O,\dig[2]_i_57_0 ,\dig[2]_i_49_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_23 
       (.CI(\dig_reg[2]_i_50_n_0 ),
        .CO({\dig_reg[2]_i_23_n_0 ,\NLW_dig_reg[2]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_51_n_0 ,\dig[2]_i_52_n_0 ,\dig[2]_i_53_n_0 ,\dig[2]_i_54_n_0 }),
        .O(\NLW_dig_reg[2]_i_23_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_55_n_0 ,\dig[2]_i_56_n_0 ,\dig[2]_i_57_n_0 ,\dig[2]_i_58_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_30 
       (.CI(\dig_reg[2]_i_59_n_0 ),
        .CO({\dig_reg[2]_i_30_n_0 ,\NLW_dig_reg[2]_i_30_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O(\NLW_dig_reg[2]_i_30_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_60_n_0 ,\dig[2]_i_61_n_0 ,\dig[2]_i_62_n_0 ,\dig[2]_i_63_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_34 
       (.CI(\dig_reg[2]_i_64_n_0 ),
        .CO({\dig_reg[2]_i_34_n_0 ,\NLW_dig_reg[2]_i_34_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_65_n_0 ,\dig[2]_i_66_n_0 ,\dig[2]_i_67_n_0 ,\dig[2]_i_68_n_0 }),
        .O({\dig_reg[2]_i_34_n_4 ,\dig_reg[2]_i_34_n_5 ,\dig_reg[2]_i_34_n_6 ,\dig_reg[2]_i_34_n_7 }),
        .S(\dig[2]_i_80_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_36 
       (.CI(\dig_reg[2]_i_75_n_0 ),
        .CO({\dig_reg[2]_i_36_n_0 ,\NLW_dig_reg[2]_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_76_n_0 ,\dig[2]_i_77_n_0 ,\dig[2]_i_78_n_0 ,\dig[2]_i_79_n_0 }),
        .O(\NLW_dig_reg[2]_i_36_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_80_n_0 ,\dig[2]_i_81_n_0 ,\dig[2]_i_82_n_0 ,\dig[2]_i_83_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_50 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_50_n_0 ,\NLW_dig_reg[2]_i_50_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[2]_i_84_n_0 ,\dig[2]_i_85_n_0 ,\dig[2]_i_86_n_0 }),
        .O(\NLW_dig_reg[2]_i_50_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_87_n_0 ,\dig[2]_i_88_n_0 ,\dig[2]_i_89_n_0 ,\dig[2]_i_90_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[2]_i_59 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_59_n_0 ,\NLW_dig_reg[2]_i_59_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,1'b0}),
        .O(\NLW_dig_reg[2]_i_59_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_91_n_0 ,\dig[2]_i_92_n_0 ,\dig[2]_i_93_n_0 ,\intData_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[2]_i_64 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_64_n_0 ,\NLW_dig_reg[2]_i_64_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_94_n_0 ,\dig[2]_i_95_n_0 ,\dig[2]_i_96_n_0 ,1'b0}),
        .O({\dig_reg[2]_i_64_n_4 ,\dig_reg[2]_i_64_n_5 ,\dig_reg[2]_i_64_n_6 ,\dig_reg[2]_i_64_n_7 }),
        .S(\dig[2]_i_108_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_73 
       (.CI(\dig_reg[2]_i_101_n_0 ),
        .CO({\NLW_dig_reg[2]_i_73_CO_UNCONNECTED [3],\dig_reg[2]_i_73_n_1 ,\NLW_dig_reg[2]_i_73_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg[15]_4 ,\intData_reg[15]_3 }),
        .O({\NLW_dig_reg[2]_i_73_O_UNCONNECTED [3:2],\intData_reg[15]_5 }),
        .S({1'b0,1'b1,\dig[2]_i_102_n_0 ,\dig[2]_i_70 }));
  CARRY4 \dig_reg[2]_i_74 
       (.CI(\dig_reg[2]_i_12_n_0 ),
        .CO({\NLW_dig_reg[2]_i_74_CO_UNCONNECTED [3:2],\intData_reg[15]_4 ,\NLW_dig_reg[2]_i_74_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[2]_i_74_O_UNCONNECTED [3:1],\intData_reg[15]_3 }),
        .S({1'b0,1'b0,1'b1,\intData_reg_n_0_[15] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_75 
       (.CI(1'b0),
        .CO({\dig_reg[2]_i_75_n_0 ,\NLW_dig_reg[2]_i_75_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[2]_i_104_n_0 ,\dig[2]_i_105_n_0 ,\dig[2]_i_106_n_0 ,\dig[2]_i_107_n_0 }),
        .O(\NLW_dig_reg[2]_i_75_O_UNCONNECTED [3:0]),
        .S({\dig[2]_i_108_n_0 ,\dig[2]_i_109_n_0 ,\dig[2]_i_110_n_0 ,\dig[2]_i_111_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[2]_i_9 
       (.CI(\dig_reg[0]_i_7_n_0 ),
        .CO(\NLW_dig_reg[2]_i_9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData_reg_n_0_[14] }),
        .O({\NLW_dig_reg[2]_i_9_O_UNCONNECTED [3:2],\intData_reg[14]_3 }),
        .S({1'b0,1'b0,\dig[2]_i_17__0_n_0 ,\dig[2]_i_18__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[3] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[3]_i_1__0_n_0 ),
        .Q(data0[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_24 
       (.CI(\dig_reg[1]_i_28__0_n_0 ),
        .CO({\dig_reg[3]_i_24_n_0 ,\NLW_dig_reg[3]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\NLW_dig_reg[3]_i_24_O_UNCONNECTED [3],\dig_reg[3]_i_24_n_5 ,\dig_reg[3]_i_24_n_6 ,\dig_reg[3]_i_24_n_7 }),
        .S({1'b1,\dig[3]_i_31__0_n_0 ,\dig[3]_i_32__0_n_0 ,\dig[3]_i_33__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_5 
       (.CI(\dig_reg[1]_i_6_n_0 ),
        .CO({\dig_reg[3]_i_5_n_0 ,\NLW_dig_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_13_n_0 ,\dig[3]_i_14_n_0 ,\dig[3]_i_15_n_0 ,\dig[3]_i_16__0_n_0 }),
        .O(\intData_reg[12]_0 ),
        .S({\dig[3]_i_17_n_0 ,\dig[3]_i_18__0_n_0 ,\dig[3]_i_19__0_n_0 ,\dig[3]_i_20__0_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \intAddr[0]_i_1__0 
       (.I0(ansMaxAddr[0]),
        .I1(newLine),
        .O(intAddr2_in[0]));
  LUT6 #(
    .INIT(64'h33AE33AE33AECCAE)) 
    \intAddr[1]_i_1__0 
       (.I0(equal),
        .I1(ansMaxAddr[1]),
        .I2(clr),
        .I3(\intAddr[7]_i_2__0_n_0 ),
        .I4(ansMaxAddr[0]),
        .I5(newLine),
        .O(\intAddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h5A6A)) 
    \intAddr[2]_i_1__0 
       (.I0(ansMaxAddr[2]),
        .I1(newLine),
        .I2(ansMaxAddr[1]),
        .I3(ansMaxAddr[0]),
        .O(intAddr2_in[2]));
  LUT5 #(
    .INIT(32'h66AA6AAA)) 
    \intAddr[3]_i_1__0 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[1]),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(newLine),
        .O(intAddr2_in[3]));
  LUT6 #(
    .INIT(64'h37FFFFFFC8000000)) 
    \intAddr[4]_i_1__0 
       (.I0(newLine),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[1]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[4]),
        .O(intAddr2_in[4]));
  LUT3 #(
    .INIT(8'h78)) 
    \intAddr[5]_i_1__0 
       (.I0(ansMaxAddr[4]),
        .I1(\intAddr[7]_i_4__0_n_0 ),
        .I2(ansMaxAddr[5]),
        .O(intAddr2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \intAddr[6]_i_1__0 
       (.I0(\intAddr[7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[5]),
        .I2(ansMaxAddr[4]),
        .I3(ansMaxAddr[6]),
        .O(intAddr2_in[6]));
  LUT5 #(
    .INIT(32'h0000000E)) 
    \intAddr[7]_i_1__0 
       (.I0(equal),
        .I1(clr),
        .I2(newLine),
        .I3(write),
        .I4(wtNeg),
        .O(intAddr0_in));
  LUT3 #(
    .INIT(8'hFE)) 
    \intAddr[7]_i_2__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(newLine),
        .O(\intAddr[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \intAddr[7]_i_3__0 
       (.I0(\intAddr[7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[4]),
        .I2(ansMaxAddr[5]),
        .I3(ansMaxAddr[6]),
        .I4(ansMaxAddr[7]),
        .O(intAddr2_in[7]));
  LUT5 #(
    .INIT(32'h88008000)) 
    \intAddr[7]_i_4__0 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[1]),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(newLine),
        .O(\intAddr[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[0] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[0]),
        .Q(ansMaxAddr[0]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intAddr[1]_i_1__0_n_0 ),
        .Q(ansMaxAddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[2] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[2]),
        .Q(ansMaxAddr[2]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[3] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[3]),
        .Q(ansMaxAddr[3]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[4] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[4]),
        .Q(ansMaxAddr[4]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[5] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[5]),
        .Q(ansMaxAddr[5]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[6] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[6]),
        .Q(ansMaxAddr[6]),
        .R(intAddr0_in));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[7] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2__0_n_0 ),
        .D(intAddr2_in[7]),
        .Q(ansMaxAddr[7]),
        .R(intAddr0_in));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \intData[0]_i_1__0 
       (.I0(\intData[0]_i_2__0_n_0 ),
        .I1(\intData_reg[0]_i_3_n_7 ),
        .I2(\intData[13]_i_5__0_n_0 ),
        .I3(intData[6]),
        .I4(\intData_reg_n_0_[0] ),
        .O(\intData[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA0CC0AAAAAAAAAA)) 
    \intData[0]_i_2__0 
       (.I0(\intData_reg[15]_7 [0]),
        .I1(\intData_reg_n_0_[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(Q[2]),
        .O(\intData[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[0]_i_4 
       (.I0(\intData_reg_n_0_[3] ),
        .O(\intData[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[0]_i_5 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[0]_i_6 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[0]_i_7 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[10]_i_1__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[11]_i_2_n_5 ),
        .I3(\intData_reg[11]_i_3_n_5 ),
        .I4(\intData_reg[10]_0 ),
        .O(\intData[10]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_11 
       (.I0(\intData_reg[11]_i_2_n_4 ),
        .O(\intData[11]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_12__0 
       (.I0(\intData_reg_n_0_[7] ),
        .O(\intData[11]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_13__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[14]_1 [1]),
        .O(\intData[11]_i_13__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_14__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[14]_1 [0]),
        .O(\intData[11]_i_14__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_15__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[13]_0 ),
        .O(\intData[11]_i_15__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_17 
       (.I0(\intData_reg[11]_i_5__0_n_4 ),
        .O(\intData[11]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_18__0 
       (.I0(\intData_reg[11]_i_5__0_n_5 ),
        .O(\intData[11]_i_18__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_19__0 
       (.I0(\intData_reg[11]_i_5__0_n_6 ),
        .O(\intData[11]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[11]_i_1__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[11]_i_2_n_4 ),
        .I3(\intData_reg[11]_i_3_n_4 ),
        .I4(\intData_reg[11]_1 ),
        .O(\intData[11]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_21 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\intData[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_22__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\intData[11]_i_22__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_23__0 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\intData[11]_i_23__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_24__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\intData[11]_i_24__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_26 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\intData[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_27__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[11]_i_27__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_28__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[11]_i_28__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_29__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[11]_i_29__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_31 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[11]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_32__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[11]_i_32__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_33__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[11]_i_33__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_34__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[11]_i_34__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_35__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[11]_i_35__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_36__0 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\intData[11]_i_36__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_37 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[11]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_6 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg[13]_i_14_n_5 ),
        .O(\intData[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_7__0 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg[13]_i_14_n_6 ),
        .O(\intData[11]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_8__0 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg[13]_i_14_n_7 ),
        .O(\intData[11]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_9__0 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg[13]_0 ),
        .O(\intData[11]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[12]_i_1__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[13]_i_6__0_n_7 ),
        .I3(\intData_reg[13]_i_4_n_7 ),
        .I4(\intData_reg[12]_1 ),
        .O(\intData[12]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_10 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg[13]_i_13_n_6 ),
        .O(\intData[13]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_11__0 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg[13]_i_13_n_7 ),
        .O(\intData[13]_i_11__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_12__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg[13]_i_14_n_4 ),
        .O(\intData[13]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFC8)) 
    \intData[13]_i_16__0 
       (.I0(\intData_reg[14]_1 [0]),
        .I1(\intData_reg[14]_1 [1]),
        .I2(\intData_reg[13]_0 ),
        .I3(\intData_reg[13]_i_14_0 ),
        .O(\intData[13]_i_16__0_n_0 ));
  LUT4 #(
    .INIT(16'h3400)) 
    \intData[13]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(Q[2]),
        .O(intData[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_22__0 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\intData[13]_i_22__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_23__0 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\intData[13]_i_23__0_n_0 ));
  LUT4 #(
    .INIT(16'hAEEA)) 
    \intData[13]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(\intData[13]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[13]_i_3__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[13]_i_6__0_n_6 ),
        .I3(\intData_reg[13]_i_4_n_6 ),
        .I4(\intData_reg[13]_1 ),
        .O(\intData[13]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \intData[13]_i_5__0 
       (.I0(Q[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(\intData[13]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_8 
       (.I0(\intData_reg[13]_i_6__0_n_5 ),
        .O(\intData[13]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_9__0 
       (.I0(\intData_reg[13]_i_6__0_n_7 ),
        .O(\intData[13]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE22E2200000000)) 
    \intData[14]_i_1__0 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(Q[1]),
        .I2(\intData_reg[15]_7 [5]),
        .I3(\intData_reg[15]_7 [4]),
        .I4(\intData_reg[15]_8 [2]),
        .I5(\intData[15]_i_3_n_0 ),
        .O(\intData[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hE2220000)) 
    \intData[15]_i_1__0 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(Q[1]),
        .I2(\intData_reg[15]_8 [3]),
        .I3(\intData_reg[15]_7 [5]),
        .I4(\intData[15]_i_3_n_0 ),
        .O(\intData[15]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \intData[15]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(Q[2]),
        .O(\intData[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBAEA)) 
    \intData[1]_i_1__0 
       (.I0(\intData[1]_i_2__0_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(intData[6]),
        .I3(\intData[2]_i_2__0_n_0 ),
        .O(\intData[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFAEFFAEAEAE)) 
    \intData[1]_i_2__0 
       (.I0(\intData[1]_i_3__0_n_0 ),
        .I1(\intData_reg[0]_i_3_n_6 ),
        .I2(\intData[13]_i_5__0_n_0 ),
        .I3(\intData[3]_i_12__0_n_0 ),
        .I4(\intData_reg[15]_7 [1]),
        .I5(\intData_reg[15]_7 [0]),
        .O(\intData[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \intData[1]_i_3__0 
       (.I0(\intData[3]_i_11__0_n_0 ),
        .I1(\intData_reg[15]_7 [1]),
        .I2(\intData[9]_i_5__0_n_0 ),
        .I3(data1[1]),
        .I4(data2),
        .I5(\intData[3]_i_14__0_n_0 ),
        .O(\intData[1]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_10__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg[6]_1 [0]),
        .O(\intData[2]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_11__0 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_11__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_12__0 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[2]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_15__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg[2]_i_32_n_4 ),
        .I3(\intData_reg_n_0_[13] ),
        .I4(\dig[1]_i_29_n_0 ),
        .I5(\intData_reg[2]_i_33__0_n_7 ),
        .O(\intData[2]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_16__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData_reg[2]_i_32_n_5 ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\dig[1]_i_30_n_0 ),
        .I5(\intData_reg[2]_i_32_n_4 ),
        .O(\intData[2]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_17__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg[2]_i_32_n_6 ),
        .I3(\intData_reg_n_0_[11] ),
        .I4(\dig[1]_i_31_n_0 ),
        .I5(\intData_reg[2]_i_32_n_5 ),
        .O(\intData[2]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_18 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg[2]_i_32_n_7 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\dig[1]_i_32_n_0 ),
        .I5(\intData_reg[2]_i_32_n_6 ),
        .O(\intData[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_19 
       (.I0(\intData[2]_i_15__0_n_0 ),
        .I1(\intData[2]_i_34__0_n_0 ),
        .I2(\intData_reg[2]_i_33__0_n_6 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[14] ),
        .O(\intData[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE010)) 
    \intData[2]_i_1__0 
       (.I0(\intData[2]_i_2__0_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(intData[6]),
        .I3(\intData[2]_i_3__0_n_0 ),
        .I4(\intData[2]_i_4__0_n_0 ),
        .I5(\intData[2]_i_5_n_0 ),
        .O(\intData[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_20 
       (.I0(\intData[2]_i_16__0_n_0 ),
        .I1(\intData[2]_i_35__0_n_0 ),
        .I2(\intData_reg[2]_i_33__0_n_7 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData_reg_n_0_[7] ),
        .I5(\intData_reg_n_0_[13] ),
        .O(\intData[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_21 
       (.I0(\intData[2]_i_17__0_n_0 ),
        .I1(\intData[2]_i_36__0_n_0 ),
        .I2(\intData_reg[2]_i_32_n_4 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_22 
       (.I0(\intData[2]_i_18_n_0 ),
        .I1(\intData[2]_i_37__0_n_0 ),
        .I2(\intData_reg[2]_i_32_n_5 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\intData[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_24 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg[2]_i_45_n_4 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[1]_i_45__0_n_0 ),
        .I5(\intData_reg[2]_i_32_n_7 ),
        .O(\intData[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[2]_i_25__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg[2]_i_45_n_5 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\dig[1]_i_46__0_n_0 ),
        .I5(\intData_reg[2]_i_45_n_4 ),
        .O(\intData[2]_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE28BE282828)) 
    \intData[2]_i_26__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig[1]_i_47__0_n_0 ),
        .I2(\intData_reg[2]_i_45_n_5 ),
        .I3(\intData_reg[2]_i_45_n_6 ),
        .I4(\intData_reg_n_0_[0] ),
        .I5(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \intData[2]_i_27__0 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg[2]_i_45_n_6 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[1]_i_47__0_n_0 ),
        .I5(\intData_reg[2]_i_45_n_5 ),
        .O(\intData[2]_i_27__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_28__0 
       (.I0(\intData[2]_i_24_n_0 ),
        .I1(\intData[2]_i_46_n_0 ),
        .I2(\intData_reg[2]_i_32_n_6 ),
        .I3(\intData_reg_n_0_[4] ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\intData[2]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_29__0 
       (.I0(\intData[2]_i_25__0_n_0 ),
        .I1(\intData[2]_i_47_n_0 ),
        .I2(\intData_reg[2]_i_32_n_7 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \intData[2]_i_2__0 
       (.I0(\intData[3]_i_9__0_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData[3]_i_8__0_n_0 ),
        .I3(\intData[3]_i_10_n_0 ),
        .I4(\intData_reg_n_0_[1] ),
        .I5(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[2]_i_30__0 
       (.I0(\intData[2]_i_26__0_n_0 ),
        .I1(\intData[2]_i_48_n_0 ),
        .I2(\intData_reg[2]_i_45_n_4 ),
        .I3(\intData_reg_n_0_[4] ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\intData[2]_i_30__0_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \intData[2]_i_31__0 
       (.I0(\intData[2]_i_49_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[0] ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\intData_reg[2]_i_45_n_6 ),
        .O(\intData[2]_i_31__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_34__0 
       (.I0(\intData_reg[2]_i_33__0_n_7 ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData_reg_n_0_[7] ),
        .O(\intData[2]_i_34__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_35__0 
       (.I0(\intData_reg[2]_i_32_n_4 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[6] ),
        .O(\intData[2]_i_35__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_36__0 
       (.I0(\intData_reg[2]_i_32_n_5 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData_reg_n_0_[5] ),
        .O(\intData[2]_i_36__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_37__0 
       (.I0(\intData_reg[2]_i_32_n_6 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[6] ),
        .O(\intData[2]_i_37__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[2]_i_39__0 
       (.I0(\intData_reg[2]_i_45_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\intData[2]_i_39__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[2]_i_3__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData[3]_i_10_n_0 ),
        .O(\intData[2]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[2]_i_40__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[2]_i_45_n_7 ),
        .I2(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \intData[2]_i_41__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig[1]_i_60__0_n_0 ),
        .I2(\intData_reg[2]_i_45_n_6 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg[2]_i_45_n_7 ),
        .O(\intData[2]_i_41__0_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \intData[2]_i_42__0 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg[2]_i_45_n_7 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg_n_0_[0] ),
        .I4(\intData_reg[2]_i_61_n_4 ),
        .O(\intData[2]_i_42__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[2]_i_43__0 
       (.I0(\intData_reg[2]_i_61_n_4 ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg_n_0_[4] ),
        .O(\intData[2]_i_43__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_44__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[2]_i_61_n_5 ),
        .O(\intData[2]_i_44__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_46 
       (.I0(\intData_reg[2]_i_32_n_7 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg_n_0_[5] ),
        .O(\intData[2]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_47 
       (.I0(\intData_reg[2]_i_45_n_4 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[2]_i_48 
       (.I0(\intData_reg[2]_i_45_n_5 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[2]_i_49 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg[2]_i_45_n_5 ),
        .O(\intData[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000600000000000)) 
    \intData[2]_i_4__0 
       (.I0(\intData_reg[2]_i_6_n_5 ),
        .I1(\intData[2]_i_7__0_n_0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(Q[2]),
        .O(\intData[2]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \intData[2]_i_5 
       (.I0(\intData_reg[0]_i_3_n_5 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData[3]_i_12__0_n_0 ),
        .I3(\intData_reg[15]_8 [0]),
        .I4(\intData[2]_i_8__0_n_0 ),
        .O(\intData[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_50 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\intData[2]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_51 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\intData[2]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_52 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\intData[2]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_53 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_54 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\intData[2]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_55 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\intData[2]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_56 
       (.I0(\intData_reg_n_0_[13] ),
        .O(\intData[2]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_57 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg[2]_i_61_n_6 ),
        .O(\intData[2]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_58 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg[2]_i_61_n_7 ),
        .O(\intData[2]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_59 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg[2]_i_60_n_4 ),
        .O(\intData[2]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_62 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\intData[2]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_63 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\intData[2]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_64 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_65 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[2]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_66 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[2]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_67 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_68 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_69 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[2]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_70 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\intData[2]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_71 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\intData[2]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_72 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[2]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \intData[2]_i_7__0 
       (.I0(\intData_reg[2]_i_6_n_4 ),
        .I1(\intData_reg[2]_i_6_n_5 ),
        .I2(\intData_reg[6]_i_5_n_7 ),
        .I3(\intData_reg[6]_i_5_n_5 ),
        .I4(\intData_reg[6]_i_5_n_6 ),
        .I5(\intData_reg[6]_i_5_n_4 ),
        .O(\intData[2]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \intData[2]_i_8__0 
       (.I0(data1[2]),
        .I1(\intData[9]_i_5__0_n_0 ),
        .I2(\intData_reg[15]_7 [2]),
        .I3(\intData[3]_i_11__0_n_0 ),
        .O(\intData[2]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_9__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[6]_1 [1]),
        .O(\intData[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \intData[3]_i_10 
       (.I0(\intData[3]_i_21__0_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\dig[3]_i_4_n_0 ),
        .I4(\intData[3]_i_22__0_n_0 ),
        .I5(\intData_reg_n_0_[2] ),
        .O(\intData[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00D7)) 
    \intData[3]_i_11__0 
       (.I0(Q[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\intData_reg[15]_7 [5]),
        .O(\intData[3]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hD700)) 
    \intData[3]_i_12__0 
       (.I0(Q[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\intData_reg[15]_7 [5]),
        .O(\intData[3]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \intData[3]_i_14__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[2]),
        .O(\intData[3]_i_14__0_n_0 ));
  LUT5 #(
    .INIT(32'hAABF0000)) 
    \intData[3]_i_15__0 
       (.I0(\intData_reg[2]_i_6_n_5 ),
        .I1(\intData_reg[6]_i_5_n_5 ),
        .I2(\intData_reg[6]_i_5_n_6 ),
        .I3(\intData_reg[6]_i_5_n_4 ),
        .I4(\intData_reg[2]_i_6_n_4 ),
        .O(\intData[3]_i_15__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \intData[3]_i_17 
       (.I0(\intData[3]_i_32_n_0 ),
        .I1(\intData_reg[6]_i_7_n_4 ),
        .I2(\intData_reg[9]_i_4_n_7 ),
        .I3(\intData_reg[9]_i_4_n_6 ),
        .I4(\intData_reg[9]_i_4_n_5 ),
        .O(\intData[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABFFF)) 
    \intData[3]_i_18 
       (.I0(\intData_reg[2]_i_6_n_5 ),
        .I1(\intData_reg[6]_i_5_n_7 ),
        .I2(\intData_reg[6]_i_5_n_5 ),
        .I3(\intData_reg[6]_i_5_n_6 ),
        .I4(\intData_reg[6]_i_5_n_4 ),
        .I5(\intData_reg[2]_i_6_n_4 ),
        .O(\intData[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_19 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\dig[3]_i_11__0_n_0 ),
        .O(\intData[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF84)) 
    \intData[3]_i_1__0 
       (.I0(\intData[3]_i_2__0_n_0 ),
        .I1(intData[6]),
        .I2(\intData[3]_i_4__0_n_0 ),
        .I3(\intData[3]_i_5_n_0 ),
        .I4(\intData[3]_i_6__0_n_0 ),
        .I5(\intData[3]_i_7__0_n_0 ),
        .O(\intData[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \intData[3]_i_20__0 
       (.I0(\intData[3]_i_33_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[3]_i_34__0_n_0 ),
        .I3(\dig[3]_i_11__0_n_0 ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[6] ),
        .O(\intData[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h55AA65996659AA55)) 
    \intData[3]_i_21__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig[3]_i_10_n_0 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\dig[3]_i_11__0_n_0 ),
        .I5(\dig[3]_i_12_n_0 ),
        .O(\intData[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'hF1080EF5508FEF70)) 
    \intData[3]_i_22__0 
       (.I0(\dig[3]_i_12_n_0 ),
        .I1(\dig[3]_i_10_n_0 ),
        .I2(\intData_reg_n_0_[4] ),
        .I3(\dig[3]_i_11__0_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData_reg_n_0_[5] ),
        .O(\intData[3]_i_22__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_28__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[15]_1 ),
        .O(\intData[3]_i_28__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_29__0 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[3]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'h7EFF9F9F060687FF)) 
    \intData[3]_i_2__0 
       (.I0(\intData[3]_i_8__0_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData[3]_i_9__0_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\intData[3]_i_10_n_0 ),
        .O(\intData[3]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_30 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[3]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_31 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[3]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \intData[3]_i_32 
       (.I0(\intData_reg[6]_i_7_n_6 ),
        .I1(\intData_reg[6]_i_7_n_5 ),
        .I2(\intData_reg[6]_i_7_n_7 ),
        .I3(\intData_reg[3]_i_16_n_4 ),
        .O(\intData[3]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_33 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\dig[3]_i_22__0_n_0 ),
        .O(\intData[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \intData[3]_i_34__0 
       (.I0(\intData[3]_i_36_n_0 ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData[3]_i_37__0_n_0 ),
        .I3(\dig[3]_i_22__0_n_0 ),
        .I4(\intData_reg_n_0_[7] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\intData[3]_i_34__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_36 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\dig[3]_i_30__0_n_0 ),
        .O(\intData[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h88EEEAA8EAA888EE)) 
    \intData[3]_i_37__0 
       (.I0(\intData[3]_i_42_n_0 ),
        .I1(\dig[3]_i_30__0_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData[3]_i_43_n_0 ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\intData[3]_i_37__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_39 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \intData[3]_i_3__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[2]),
        .O(intData[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_40 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[3]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_41 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE7188AE7AE7118AE)) 
    \intData[3]_i_42 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\intData[3]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h4FB44B24)) 
    \intData[3]_i_43 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\intData[3]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_45 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\intData[3]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_46 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\intData[3]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_47 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[3]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_48 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[3]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_49 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\intData[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h99696966)) 
    \intData[3]_i_4__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData[3]_i_8__0_n_0 ),
        .I2(\intData[3]_i_10_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData_reg_n_0_[2] ),
        .O(\intData[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \intData[3]_i_5 
       (.I0(\intData[3]_i_11__0_n_0 ),
        .I1(\intData_reg[15]_7 [3]),
        .I2(\intData[3]_i_12__0_n_0 ),
        .I3(\intData_reg[15]_8 [1]),
        .I4(\intData[3]_i_14__0_n_0 ),
        .I5(\intData[3]_i_15__0_n_0 ),
        .O(\intData[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_50 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\intData[3]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[3]_i_51__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[0] ),
        .O(\intData[3]_i_51__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000600000)) 
    \intData[3]_i_6__0 
       (.I0(\intData_reg[3]_i_16_n_4 ),
        .I1(\intData[3]_i_17_n_0 ),
        .I2(Q[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\intData[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0C40000000400000)) 
    \intData[3]_i_7__0 
       (.I0(\intData[3]_i_18_n_0 ),
        .I1(Q[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(\intData_reg[0]_i_3_n_4 ),
        .O(\intData[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h7E145614D795D781)) 
    \intData[3]_i_8__0 
       (.I0(\intData[3]_i_19_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_20__0_n_0 ),
        .I3(\dig[3]_i_4_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\intData[3]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_9__0 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[3]_i_4_n_0 ),
        .O(\intData[3]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \intData[4]_i_1__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData[13]_i_2__0_n_0 ),
        .I2(\intData[4]_i_2__0_n_0 ),
        .I3(\intData[4]_i_3__0_n_0 ),
        .I4(intData[6]),
        .O(\intData[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF90C0)) 
    \intData[4]_i_2__0 
       (.I0(\intData_reg[3]_i_16_n_4 ),
        .I1(\intData_reg[6]_i_7_n_7 ),
        .I2(\intData[9]_i_5__0_n_0 ),
        .I3(\intData[3]_i_17_n_0 ),
        .I4(\intData_reg[4]_0 ),
        .O(\intData[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \intData[4]_i_3__0 
       (.I0(\intData[4]_i_5__0_n_0 ),
        .I1(\intData_reg[13]_i_4_n_1 ),
        .I2(\intData[13]_i_5__0_n_0 ),
        .I3(\intData_reg[11]_i_5__0_n_7 ),
        .I4(\intData_reg[11]_i_10_n_7 ),
        .O(\intData[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000004000000)) 
    \intData[4]_i_5__0 
       (.I0(\intData[3]_i_18_n_0 ),
        .I1(Q[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\intData_reg[6]_i_5_n_7 ),
        .O(\intData[4]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \intData[5]_i_1__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData[13]_i_2__0_n_0 ),
        .I2(\intData[5]_i_2__0_n_0 ),
        .I3(\intData[5]_i_3__0_n_0 ),
        .I4(intData[6]),
        .O(\intData[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF48484888)) 
    \intData[5]_i_2__0 
       (.I0(\intData_reg[6]_i_7_n_6 ),
        .I1(\intData[9]_i_5__0_n_0 ),
        .I2(\intData[3]_i_17_n_0 ),
        .I3(\intData_reg[3]_i_16_n_4 ),
        .I4(\intData_reg[6]_i_7_n_7 ),
        .I5(\intData_reg[5]_0 ),
        .O(\intData[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \intData[5]_i_3__0 
       (.I0(\intData[5]_i_5__0_n_0 ),
        .I1(\intData_reg[13]_i_4_n_1 ),
        .I2(\intData[13]_i_5__0_n_0 ),
        .I3(\intData_reg[11]_i_5__0_n_6 ),
        .I4(\intData_reg[11]_i_10_n_6 ),
        .O(\intData[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800000004000000)) 
    \intData[5]_i_5__0 
       (.I0(\intData[5]_i_6__0_n_0 ),
        .I1(Q[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\intData_reg[6]_i_5_n_6 ),
        .O(\intData[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h15151515151515FF)) 
    \intData[5]_i_6__0 
       (.I0(\intData_reg[6]_i_5_n_4 ),
        .I1(\intData_reg[6]_i_5_n_6 ),
        .I2(\intData_reg[6]_i_5_n_5 ),
        .I3(\intData_reg[6]_i_5_n_7 ),
        .I4(\intData_reg[2]_i_6_n_5 ),
        .I5(\intData_reg[2]_i_6_n_4 ),
        .O(\intData[5]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_10 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[6]_i_5_0 [1]),
        .O(\intData[6]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_11 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[6]_i_5_0 [0]),
        .O(\intData[6]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_12 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[11]_0 [0]),
        .O(\intData[6]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_13 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg[9]_i_11_n_7 ),
        .O(\intData[6]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_14 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[6]_i_19_n_6 ),
        .O(\intData[6]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_15 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[6]_i_19_n_7 ),
        .O(\intData[6]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_16 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[14]_2 [0]),
        .O(\intData[6]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \intData[6]_i_1__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData[13]_i_2__0_n_0 ),
        .I2(\intData[6]_i_2__0_n_0 ),
        .I3(\intData[6]_i_3__0_n_0 ),
        .I4(intData[6]),
        .O(\intData[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00E8E800E80000E8)) 
    \intData[6]_i_25 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData_reg[2]_i_33__0_n_5 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg[2]_i_33__0_n_0 ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[6]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \intData[6]_i_26 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg[2]_i_33__0_n_6 ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData[6]_i_39_n_0 ),
        .O(\intData[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \intData[6]_i_27 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .I2(\intData_reg[2]_i_33__0_n_7 ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\dig[3]_i_26_n_0 ),
        .I5(\intData_reg[2]_i_33__0_n_6 ),
        .O(\intData[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hCD32B34CB34C32CD)) 
    \intData[6]_i_28 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[12] ),
        .I2(\intData_reg[2]_i_33__0_n_0 ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[11] ),
        .I5(\intData_reg_n_0_[13] ),
        .O(\intData[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969669)) 
    \intData[6]_i_29 
       (.I0(\intData[6]_i_25_n_0 ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg[2]_i_33__0_n_0 ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\intData[6]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[6]_i_2__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[11]_i_5__0_n_5 ),
        .I3(\intData_reg[11]_i_10_n_5 ),
        .I4(\intData_reg[6]_2 ),
        .O(\intData[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \intData[6]_i_30 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData[6]_i_40_n_0 ),
        .I2(\intData[6]_i_41_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData_reg_n_0_[11] ),
        .I5(\intData_reg[2]_i_33__0_n_5 ),
        .O(\intData[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \intData[6]_i_31 
       (.I0(\intData[6]_i_27_n_0 ),
        .I1(\intData[6]_i_40_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg_n_0_[11] ),
        .I4(\intData_reg[2]_i_33__0_n_5 ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[6]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \intData[6]_i_32 
       (.I0(\intData_reg[15]_1 ),
        .I1(\intData_reg[14]_2 [3]),
        .I2(\intData_reg[14]_2 [1]),
        .O(\intData[6]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[6]_i_33 
       (.I0(\intData_reg[14]_2 [1]),
        .I1(\intData_reg[14]_2 [3]),
        .I2(\intData_reg[15]_1 ),
        .O(\intData[6]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \intData[6]_i_34 
       (.I0(\intData_reg[14]_2 [1]),
        .I1(\intData_reg[15]_1 ),
        .O(\intData[6]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[6]_i_39 
       (.I0(\intData_reg[2]_i_33__0_n_5 ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\intData_reg_n_0_[9] ),
        .O(\intData[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFF84848484FF8484)) 
    \intData[6]_i_3__0 
       (.I0(\intData_reg[6]_i_5_n_5 ),
        .I1(\intData[3]_i_14__0_n_0 ),
        .I2(\intData[6]_i_6__0_n_0 ),
        .I3(\intData_reg[6]_i_7_n_5 ),
        .I4(\intData[9]_i_5__0_n_0 ),
        .I5(\intData[6]_i_8__0_n_0 ),
        .O(\intData[6]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[6]_i_40 
       (.I0(\intData_reg[2]_i_33__0_n_6 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .O(\intData[6]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[6]_i_41 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg[2]_i_33__0_n_0 ),
        .I2(\intData_reg_n_0_[10] ),
        .O(\intData[6]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h010101FFFFFFFFFF)) 
    \intData[6]_i_6__0 
       (.I0(\intData_reg[2]_i_6_n_4 ),
        .I1(\intData_reg[2]_i_6_n_5 ),
        .I2(\intData_reg[6]_i_5_n_7 ),
        .I3(\intData_reg[6]_i_5_n_5 ),
        .I4(\intData_reg[6]_i_5_n_4 ),
        .I5(\intData_reg[6]_i_5_n_6 ),
        .O(\intData[6]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \intData[6]_i_8__0 
       (.I0(\intData[3]_i_17_n_0 ),
        .I1(\intData_reg[3]_i_16_n_4 ),
        .I2(\intData_reg[6]_i_7_n_7 ),
        .I3(\intData_reg[6]_i_7_n_6 ),
        .O(\intData[6]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[6]_i_9__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg[6]_i_5_0 [2]),
        .O(\intData[6]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[7]_i_1__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(\intData[7]_i_2__0_n_0 ),
        .I3(Q[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEFEEEEFEEEE)) 
    \intData[7]_i_2__0 
       (.I0(\intData_reg[7]_0 ),
        .I1(\intData[7]_i_4__0_n_0 ),
        .I2(\intData_reg[13]_i_4_n_1 ),
        .I3(\intData[13]_i_5__0_n_0 ),
        .I4(\intData_reg[11]_i_5__0_n_4 ),
        .I5(\intData_reg[11]_i_10_n_4 ),
        .O(\intData[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000100000)) 
    \intData[7]_i_4__0 
       (.I0(\intData[7]_i_5__0_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(Q[2]),
        .I5(\intData_reg[6]_i_7_n_4 ),
        .O(\intData[7]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    \intData[7]_i_5__0 
       (.I0(\intData[3]_i_17_n_0 ),
        .I1(\intData_reg[3]_i_16_n_4 ),
        .I2(\intData_reg[6]_i_7_n_7 ),
        .I3(\intData_reg[6]_i_7_n_5 ),
        .I4(\intData_reg[6]_i_7_n_6 ),
        .O(\intData[7]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[8]_i_1__0 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(Q[1]),
        .I2(\intData[8]_i_2__0_n_0 ),
        .I3(Q[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEEAAFA)) 
    \intData[8]_i_2__0 
       (.I0(\intData_reg[8]_0 ),
        .I1(\intData_reg[11]_i_3_n_7 ),
        .I2(\intData_reg[11]_i_2_n_7 ),
        .I3(\intData[13]_i_5__0_n_0 ),
        .I4(\intData_reg[13]_i_4_n_1 ),
        .I5(\intData[8]_i_4__0_n_0 ),
        .O(\intData[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000100000)) 
    \intData[8]_i_4__0 
       (.I0(\intData[9]_i_6__0_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(Q[2]),
        .I5(\intData_reg[9]_i_4_n_7 ),
        .O(\intData[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[9]_i_10 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg[9]_i_11_n_6 ),
        .O(\intData[9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \intData[9]_i_12 
       (.I0(\intData[6]_i_38 [1]),
        .I1(\intData_reg[14]_2 [0]),
        .O(\intData[9]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \intData[9]_i_13 
       (.I0(\intData[6]_i_38 [0]),
        .I1(\intData_reg[15]_1 ),
        .O(\intData[9]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    \intData[9]_i_14 
       (.I0(\intData[9]_i_21 ),
        .I1(\intData_reg[14]_2 [1]),
        .I2(\intData_reg[9]_i_18_n_6 ),
        .I3(\intData_reg[14]_2 [2]),
        .I4(\intData_reg[15]_1 ),
        .O(\intData[9]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \intData[9]_i_19 
       (.I0(\intData_reg[15]_2 ),
        .I1(\intData_reg[14]_2 [0]),
        .I2(\intData_reg[14]_2 [2]),
        .O(\intData[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[9]_i_1__0 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(Q[1]),
        .I2(\intData[9]_i_2__0_n_0 ),
        .I3(Q[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[9]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h66969699)) 
    \intData[9]_i_20 
       (.I0(\intData_reg[14]_2 [2]),
        .I1(\intData_reg[15]_2 ),
        .I2(\intData_reg[14]_2 [3]),
        .I3(\intData_reg[14]_2 [1]),
        .I4(CO),
        .O(\intData[9]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hEAEABAEA)) 
    \intData[9]_i_2__0 
       (.I0(\intData[9]_i_3__0_n_0 ),
        .I1(\intData_reg[9]_i_4_n_6 ),
        .I2(\intData[9]_i_5__0_n_0 ),
        .I3(\intData_reg[9]_i_4_n_7 ),
        .I4(\intData[9]_i_6__0_n_0 ),
        .O(\intData[9]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \intData[9]_i_3__0 
       (.I0(\intData_reg[13]_i_4_n_1 ),
        .I1(\intData[13]_i_5__0_n_0 ),
        .I2(\intData_reg[11]_i_2_n_6 ),
        .I3(\intData_reg[11]_i_3_n_6 ),
        .I4(\intData[9]_i_2__0_0 ),
        .O(\intData[9]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \intData[9]_i_5__0 
       (.I0(Q[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(\intData[9]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \intData[9]_i_6__0 
       (.I0(\intData_reg[6]_i_7_n_6 ),
        .I1(\intData_reg[6]_i_7_n_5 ),
        .I2(\intData_reg[6]_i_7_n_7 ),
        .I3(\intData_reg[3]_i_16_n_4 ),
        .I4(\intData[3]_i_17_n_0 ),
        .I5(\intData_reg[6]_i_7_n_4 ),
        .O(\intData[9]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[9]_i_8 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg[9]_i_11_n_4 ),
        .O(\intData[9]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[9]_i_9 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg[9]_i_11_n_5 ),
        .O(\intData[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[0] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[0]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\intData_reg[0]_i_3_n_0 ,\NLW_intData_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[0]_i_3_n_4 ,\intData_reg[0]_i_3_n_5 ,\intData_reg[0]_i_3_n_6 ,\intData_reg[0]_i_3_n_7 }),
        .S({\intData[0]_i_4_n_0 ,\intData[0]_i_5_n_0 ,\intData[0]_i_6_n_0 ,\intData[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[10] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[10]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[10] ),
        .R(intData[13]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[11] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[11]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[11] ),
        .R(intData[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_10 
       (.CI(1'b0),
        .CO({\intData_reg[11]_i_10_n_0 ,\NLW_intData_reg[11]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,1'b1,1'b1,1'b0}),
        .O({\intData_reg[11]_i_10_n_4 ,\intData_reg[11]_i_10_n_5 ,\intData_reg[11]_i_10_n_6 ,\intData_reg[11]_i_10_n_7 }),
        .S({\intData[11]_i_17_n_0 ,\intData[11]_i_18__0_n_0 ,\intData[11]_i_19__0_n_0 ,\intData_reg[11]_i_5__0_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_16 
       (.CI(\intData_reg[11]_i_20_n_0 ),
        .CO({\intData_reg[11]_i_16_n_0 ,\NLW_intData_reg[11]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] }),
        .O({\intData_reg[13]_0 ,\NLW_intData_reg[11]_i_16_O_UNCONNECTED [2:0]}),
        .S({\intData[11]_i_21_n_0 ,\intData[11]_i_22__0_n_0 ,\intData[11]_i_23__0_n_0 ,\intData[11]_i_24__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_2 
       (.CI(\intData_reg[11]_i_5__0_n_0 ),
        .CO({\intData_reg[11]_i_2_n_0 ,\NLW_intData_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] }),
        .O({\intData_reg[11]_i_2_n_4 ,\intData_reg[11]_i_2_n_5 ,\intData_reg[11]_i_2_n_6 ,\intData_reg[11]_i_2_n_7 }),
        .S({\intData[11]_i_6_n_0 ,\intData[11]_i_7__0_n_0 ,\intData[11]_i_8__0_n_0 ,\intData[11]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_20 
       (.CI(\intData_reg[11]_i_25_n_0 ),
        .CO({\intData_reg[11]_i_20_n_0 ,\NLW_intData_reg[11]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] }),
        .O(\NLW_intData_reg[11]_i_20_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_26_n_0 ,\intData[11]_i_27__0_n_0 ,\intData[11]_i_28__0_n_0 ,\intData[11]_i_29__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_25 
       (.CI(\intData_reg[11]_i_30_n_0 ),
        .CO({\intData_reg[11]_i_25_n_0 ,\NLW_intData_reg[11]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] }),
        .O(\NLW_intData_reg[11]_i_25_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_31_n_0 ,\intData[11]_i_32__0_n_0 ,\intData[11]_i_33__0_n_0 ,\intData[11]_i_34__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_3 
       (.CI(\intData_reg[11]_i_10_n_0 ),
        .CO({\intData_reg[11]_i_3_n_0 ,\NLW_intData_reg[11]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\intData_reg[11]_i_3_n_4 ,\intData_reg[11]_i_3_n_5 ,\intData_reg[11]_i_3_n_6 ,\intData_reg[11]_i_3_n_7 }),
        .S({\intData[11]_i_11_n_0 ,\intData_reg[11]_i_2_n_5 ,\intData_reg[11]_i_2_n_6 ,\intData_reg[11]_i_2_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_30 
       (.CI(1'b0),
        .CO({\intData_reg[11]_i_30_n_0 ,\NLW_intData_reg[11]_i_30_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0,1'b1}),
        .O(\NLW_intData_reg[11]_i_30_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_35__0_n_0 ,\intData[11]_i_36__0_n_0 ,\intData[11]_i_37_n_0 ,\intData_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_5__0 
       (.CI(\intData_reg[0]_i_3_n_0 ),
        .CO({\intData_reg[11]_i_5__0_n_0 ,\NLW_intData_reg[11]_i_5__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[11]_i_5__0_n_4 ,\intData_reg[11]_i_5__0_n_5 ,\intData_reg[11]_i_5__0_n_6 ,\intData_reg[11]_i_5__0_n_7 }),
        .S({\intData[11]_i_12__0_n_0 ,\intData[11]_i_13__0_n_0 ,\intData[11]_i_14__0_n_0 ,\intData[11]_i_15__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[12] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[12]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[12] ),
        .R(intData[13]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[13] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[13]_i_3__0_n_0 ),
        .Q(\intData_reg_n_0_[13] ),
        .R(intData[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_13 
       (.CI(\intData_reg[13]_i_14_n_0 ),
        .CO(\NLW_intData_reg[13]_i_13_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[13]_i_13_O_UNCONNECTED [3:2],\intData_reg[13]_i_13_n_6 ,\intData_reg[13]_i_13_n_7 }),
        .S({1'b0,1'b0,\intData_reg[14]_1 [0],\intData_reg[13]_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[13]_i_14 
       (.CI(1'b0),
        .CO({\intData_reg[13]_i_14_n_0 ,\NLW_intData_reg[13]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg[14]_1 [1],\intData[13]_i_16__0_n_0 ,\intData_reg[13]_i_14_0 ,1'b0}),
        .O({\intData_reg[13]_i_14_n_4 ,\intData_reg[13]_i_14_n_5 ,\intData_reg[13]_i_14_n_6 ,\intData_reg[13]_i_14_n_7 }),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_15 
       (.CI(\intData_reg[11]_i_16_n_0 ),
        .CO(\NLW_intData_reg[13]_i_15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData_reg_n_0_[14] }),
        .O({\NLW_intData_reg[13]_i_15_O_UNCONNECTED [3:2],\intData_reg[14]_1 }),
        .S({1'b0,1'b0,\intData[13]_i_22__0_n_0 ,\intData[13]_i_23__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_4 
       (.CI(\intData_reg[11]_i_3_n_0 ),
        .CO({\NLW_intData_reg[13]_i_4_CO_UNCONNECTED [3],\intData_reg[13]_i_4_n_1 ,\NLW_intData_reg[13]_i_4_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b1}),
        .O({\NLW_intData_reg[13]_i_4_O_UNCONNECTED [3:2],\intData_reg[13]_i_4_n_6 ,\intData_reg[13]_i_4_n_7 }),
        .S({1'b0,\intData[13]_i_8_n_0 ,\intData_reg[13]_i_6__0_n_6 ,\intData[13]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_6__0 
       (.CI(\intData_reg[11]_i_2_n_0 ),
        .CO(\NLW_intData_reg[13]_i_6__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] }),
        .O({\NLW_intData_reg[13]_i_6__0_O_UNCONNECTED [3],\intData_reg[13]_i_6__0_n_5 ,\intData_reg[13]_i_6__0_n_6 ,\intData_reg[13]_i_6__0_n_7 }),
        .S({1'b0,\intData[13]_i_10_n_0 ,\intData[13]_i_11__0_n_0 ,\intData[13]_i_12__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[14] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[14]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[15] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[15]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[1] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[1]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[2] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[2]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[2] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_13 
       (.CI(\intData_reg[2]_i_14_n_0 ),
        .CO({\intData_reg[2]_i_13_n_0 ,\NLW_intData_reg[2]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[2]_i_15__0_n_0 ,\intData[2]_i_16__0_n_0 ,\intData[2]_i_17__0_n_0 ,\intData[2]_i_18_n_0 }),
        .O({\intData_reg[6]_1 ,\NLW_intData_reg[2]_i_13_O_UNCONNECTED [1:0]}),
        .S({\intData[2]_i_19_n_0 ,\intData[2]_i_20_n_0 ,\intData[2]_i_21_n_0 ,\intData[2]_i_22_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_14 
       (.CI(\intData_reg[2]_i_23_n_0 ),
        .CO({\intData_reg[2]_i_14_n_0 ,\NLW_intData_reg[2]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[2]_i_24_n_0 ,\intData[2]_i_25__0_n_0 ,\intData[2]_i_26__0_n_0 ,\intData[2]_i_27__0_n_0 }),
        .O(\NLW_intData_reg[2]_i_14_O_UNCONNECTED [3:0]),
        .S({\intData[2]_i_28__0_n_0 ,\intData[2]_i_29__0_n_0 ,\intData[2]_i_30__0_n_0 ,\intData[2]_i_31__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_23 
       (.CI(\intData_reg[2]_i_38_n_0 ),
        .CO({\intData_reg[2]_i_23_n_0 ,\NLW_intData_reg[2]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[2]_i_39__0_n_0 ,\intData[2]_i_40__0_n_0 ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] }),
        .O(\NLW_intData_reg[2]_i_23_O_UNCONNECTED [3:0]),
        .S({\intData[2]_i_41__0_n_0 ,\intData[2]_i_42__0_n_0 ,\intData[2]_i_43__0_n_0 ,\intData[2]_i_44__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_32 
       (.CI(\intData_reg[2]_i_45_n_0 ),
        .CO({\intData_reg[2]_i_32_n_0 ,\NLW_intData_reg[2]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O({\intData_reg[2]_i_32_n_4 ,\intData_reg[2]_i_32_n_5 ,\intData_reg[2]_i_32_n_6 ,\intData_reg[2]_i_32_n_7 }),
        .S({\intData[2]_i_50_n_0 ,\intData[2]_i_51_n_0 ,\intData[2]_i_52_n_0 ,\intData[2]_i_53_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_33__0 
       (.CI(\intData_reg[2]_i_32_n_0 ),
        .CO({\intData_reg[2]_i_33__0_n_0 ,\NLW_intData_reg[2]_i_33__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\NLW_intData_reg[2]_i_33__0_O_UNCONNECTED [3],\intData_reg[2]_i_33__0_n_5 ,\intData_reg[2]_i_33__0_n_6 ,\intData_reg[2]_i_33__0_n_7 }),
        .S({1'b1,\intData[2]_i_54_n_0 ,\intData[2]_i_55_n_0 ,\intData[2]_i_56_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[2]_i_38 
       (.CI(1'b0),
        .CO({\intData_reg[2]_i_38_n_0 ,\NLW_intData_reg[2]_i_38_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0}),
        .O(\NLW_intData_reg[2]_i_38_O_UNCONNECTED [3:0]),
        .S({\intData[2]_i_57_n_0 ,\intData[2]_i_58_n_0 ,\intData[2]_i_59_n_0 ,\intData_reg[2]_i_60_n_5 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_45 
       (.CI(\intData_reg[2]_i_61_n_0 ),
        .CO({\intData_reg[2]_i_45_n_0 ,\NLW_intData_reg[2]_i_45_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] }),
        .O({\intData_reg[2]_i_45_n_4 ,\intData_reg[2]_i_45_n_5 ,\intData_reg[2]_i_45_n_6 ,\intData_reg[2]_i_45_n_7 }),
        .S({\intData[2]_i_62_n_0 ,\intData[2]_i_63_n_0 ,\intData[2]_i_64_n_0 ,\intData[2]_i_65_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_6 
       (.CI(1'b0),
        .CO({\intData_reg[2]_i_6_n_0 ,\NLW_intData_reg[2]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[2]_i_6_n_4 ,\intData_reg[2]_i_6_n_5 ,data2,\NLW_intData_reg[2]_i_6_O_UNCONNECTED [0]}),
        .S({\intData[2]_i_9__0_n_0 ,\intData[2]_i_10__0_n_0 ,\intData[2]_i_11__0_n_0 ,\intData[2]_i_12__0_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_60 
       (.CI(1'b0),
        .CO({\intData_reg[2]_i_60_n_0 ,\NLW_intData_reg[2]_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[0] ,1'b0,1'b0,1'b1}),
        .O({\intData_reg[2]_i_60_n_4 ,\intData_reg[2]_i_60_n_5 ,\NLW_intData_reg[2]_i_60_O_UNCONNECTED [1:0]}),
        .S({\intData[2]_i_66_n_0 ,\intData[2]_i_67_n_0 ,\intData[2]_i_68_n_0 ,\intData_reg_n_0_[0] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_61 
       (.CI(\intData_reg[2]_i_60_n_0 ),
        .CO({\intData_reg[2]_i_61_n_0 ,\NLW_intData_reg[2]_i_61_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] }),
        .O({\intData_reg[2]_i_61_n_4 ,\intData_reg[2]_i_61_n_5 ,\intData_reg[2]_i_61_n_6 ,\intData_reg[2]_i_61_n_7 }),
        .S({\intData[2]_i_69_n_0 ,\intData[2]_i_70_n_0 ,\intData[2]_i_71_n_0 ,\intData[2]_i_72_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[3] 
       (.C(clkPort),
        .CE(\intData[13]_i_2__0_n_0 ),
        .D(\intData[3]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_16 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_16_n_0 ,\NLW_intData_reg[3]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[3]_i_16_n_4 ,data1,\NLW_intData_reg[3]_i_16_O_UNCONNECTED [0]}),
        .S({\intData[3]_i_28__0_n_0 ,\intData[3]_i_29__0_n_0 ,\intData[3]_i_30_n_0 ,\intData[3]_i_31_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_35 
       (.CI(\intData_reg[3]_i_38_n_0 ),
        .CO({\intData_reg[3]_i_35_n_0 ,\NLW_intData_reg[3]_i_35_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\intData_reg[15]_1 ,\NLW_intData_reg[3]_i_35_O_UNCONNECTED [2:0]}),
        .S({\intData_reg_n_0_[10] ,\intData[3]_i_39_n_0 ,\intData[3]_i_40_n_0 ,\intData[3]_i_41_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_38 
       (.CI(\intData_reg[3]_i_44_n_0 ),
        .CO({\intData_reg[3]_i_38_n_0 ,\NLW_intData_reg[3]_i_38_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O(\NLW_intData_reg[3]_i_38_O_UNCONNECTED [3:0]),
        .S({\intData[3]_i_45_n_0 ,\intData[3]_i_46_n_0 ,\intData[3]_i_47_n_0 ,\intData[3]_i_48_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[3]_i_44 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_44_n_0 ,\NLW_intData_reg[3]_i_44_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,1'b0}),
        .O(\NLW_intData_reg[3]_i_44_O_UNCONNECTED [3:0]),
        .S({\intData[3]_i_49_n_0 ,\intData[3]_i_50_n_0 ,\intData[3]_i_51__0_n_0 ,\intData_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[4] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[4]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[5] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[5]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[6] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[6]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[6] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[6]_i_18 
       (.CI(\intData_reg[2]_i_13_n_0 ),
        .CO(\NLW_intData_reg[6]_i_18_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData[6]_i_25_n_0 ,\intData[6]_i_26_n_0 ,\intData[6]_i_27_n_0 }),
        .O(\intData_reg[11]_0 ),
        .S({\intData[6]_i_28_n_0 ,\intData[6]_i_29_n_0 ,\intData[6]_i_30_n_0 ,\intData[6]_i_31_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[6]_i_19 
       (.CI(1'b0),
        .CO({\intData_reg[6]_i_19_n_0 ,\NLW_intData_reg[6]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[6]_i_32_n_0 ,\intData[6]_i_33_n_0 ,\intData[6]_i_34_n_0 ,1'b0}),
        .O({\intData[6]_i_38 ,\intData_reg[6]_i_19_n_6 ,\intData_reg[6]_i_19_n_7 }),
        .S(\intData[6]_i_15_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[6]_i_20 
       (.CI(\intData_reg[3]_i_35_n_0 ),
        .CO({\intData_reg[6]_i_20_n_0 ,\NLW_intData_reg[6]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\intData_reg[14]_2 ),
        .S({\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] }));
  CARRY4 \intData_reg[6]_i_42 
       (.CI(\intData_reg[6]_i_20_n_0 ),
        .CO({\NLW_intData_reg[6]_i_42_CO_UNCONNECTED [3:2],CO,\NLW_intData_reg[6]_i_42_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[6]_i_42_O_UNCONNECTED [3:1],\intData_reg[15]_2 }),
        .S({1'b0,1'b0,1'b1,\intData_reg_n_0_[15] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[6]_i_5 
       (.CI(\intData_reg[2]_i_6_n_0 ),
        .CO(\NLW_intData_reg[6]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[6]_i_5_n_4 ,\intData_reg[6]_i_5_n_5 ,\intData_reg[6]_i_5_n_6 ,\intData_reg[6]_i_5_n_7 }),
        .S({\intData[6]_i_9__0_n_0 ,\intData[6]_i_10_n_0 ,\intData[6]_i_11_n_0 ,\intData[6]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[6]_i_7 
       (.CI(\intData_reg[3]_i_16_n_0 ),
        .CO({\intData_reg[6]_i_7_n_0 ,\NLW_intData_reg[6]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[6]_i_7_n_4 ,\intData_reg[6]_i_7_n_5 ,\intData_reg[6]_i_7_n_6 ,\intData_reg[6]_i_7_n_7 }),
        .S({\intData[6]_i_13_n_0 ,\intData[6]_i_14_n_0 ,\intData[6]_i_15_n_0 ,\intData[6]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[7] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[7]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[8] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[8]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[9] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[9]_i_1__0_n_0 ),
        .Q(\intData_reg_n_0_[9] ),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[9]_i_11 
       (.CI(1'b0),
        .CO(\NLW_intData_reg[9]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData[9]_i_12_n_0 ,\intData[9]_i_13_n_0 ,1'b0}),
        .O({\intData_reg[9]_i_11_n_4 ,\intData_reg[9]_i_11_n_5 ,\intData_reg[9]_i_11_n_6 ,\intData_reg[9]_i_11_n_7 }),
        .S({\intData[9]_i_14_n_0 ,\intData[6]_i_13_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[9]_i_18 
       (.CI(\intData_reg[6]_i_19_n_0 ),
        .CO(\NLW_intData_reg[9]_i_18_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData[9]_i_19_n_0 }),
        .O({\NLW_intData_reg[9]_i_18_O_UNCONNECTED [3:2],\intData_reg[9]_i_18_n_6 ,\intData[9]_i_21 }),
        .S({1'b0,1'b0,\intData[9]_i_20_n_0 ,\intData[9]_i_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[9]_i_4 
       (.CI(\intData_reg[6]_i_7_n_0 ),
        .CO(\NLW_intData_reg[9]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] }),
        .O({\NLW_intData_reg[9]_i_4_O_UNCONNECTED [3],\intData_reg[9]_i_4_n_5 ,\intData_reg[9]_i_4_n_6 ,\intData_reg[9]_i_4_n_7 }),
        .S({1'b0,\intData[9]_i_8_n_0 ,\intData[9]_i_9_n_0 ,\intData[9]_i_10_n_0 }));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[0][0]_i_1__0 
       (.I0(\ansReg[0] [0]),
        .I1(\intReg[0][2]_i_2__0_n_0 ),
        .I2(\intReg[0][7]_i_2__0_n_0 ),
        .I3(p_3_in[0]),
        .I4(\intReg[0][2]_i_4__0_n_0 ),
        .O(\intReg[0][0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CCCCC)) 
    \intReg[0][0]_i_2__0 
       (.I0(data0[0]),
        .I1(equal),
        .I2(wtNeg),
        .I3(write),
        .I4(\intReg[0][7]_i_8_n_0 ),
        .O(p_3_in[0]));
  LUT6 #(
    .INIT(64'h00000000FECECECE)) 
    \intReg[0][1]_i_1__0 
       (.I0(\ansReg[0] [1]),
        .I1(\intReg[0][2]_i_2__0_n_0 ),
        .I2(\intReg[0][7]_i_2__0_n_0 ),
        .I3(\intReg[0][1]_i_2__0_n_0 ),
        .I4(\intReg[0][7]_i_8_n_0 ),
        .I5(\intReg[0][2]_i_4__0_n_0 ),
        .O(\intReg[0][1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intReg[0][1]_i_2__0 
       (.I0(data0[1]),
        .I1(write),
        .I2(wtNeg),
        .O(\intReg[0][1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[0][2]_i_1__0 
       (.I0(\ansReg[0] [2]),
        .I1(\intReg[0][2]_i_2__0_n_0 ),
        .I2(\intReg[0][7]_i_2__0_n_0 ),
        .I3(p_3_in[2]),
        .I4(\intReg[0][2]_i_4__0_n_0 ),
        .O(\intReg[0][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \intReg[0][2]_i_2__0 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(newLine),
        .I5(\intReg[0][7]_i_7_n_0 ),
        .O(\intReg[0][2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAFCF0F0)) 
    \intReg[0][2]_i_3 
       (.I0(data0[2]),
        .I1(wtNeg),
        .I2(equal),
        .I3(write),
        .I4(\intReg[0][7]_i_8_n_0 ),
        .O(p_3_in[2]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \intReg[0][2]_i_4__0 
       (.I0(\intReg[0][2]_i_5_n_0 ),
        .I1(ansMaxAddr[3]),
        .I2(ansMaxAddr[1]),
        .I3(newLine),
        .I4(ansMaxAddr[7]),
        .I5(\intReg[0][7]_i_5__0_n_0 ),
        .O(\intReg[0][2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \intReg[0][2]_i_5 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .O(\intReg[0][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CCCCC)) 
    \intReg[0][3]_i_1__0 
       (.I0(data0[3]),
        .I1(equal),
        .I2(wtNeg),
        .I3(write),
        .I4(\intReg[0][7]_i_8_n_0 ),
        .O(p_3_in[3]));
  LUT4 #(
    .INIT(16'hEEEA)) 
    \intReg[0][4]_i_1__0 
       (.I0(equal),
        .I1(\intReg[0][7]_i_8_n_0 ),
        .I2(write),
        .I3(wtNeg),
        .O(p_3_in[4]));
  LUT4 #(
    .INIT(16'hBF88)) 
    \intReg[0][5]_i_1__0 
       (.I0(write),
        .I1(\intReg[0][7]_i_8_n_0 ),
        .I2(wtNeg),
        .I3(equal),
        .O(p_3_in[5]));
  LUT6 #(
    .INIT(64'h080808080808FF08)) 
    \intReg[0][7]_i_1__0 
       (.I0(\intReg[0][7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[7]),
        .I2(\intReg[0][7]_i_5__0_n_0 ),
        .I3(\intReg[0][7]_i_6__0_n_0 ),
        .I4(\intReg[0][7]_i_7_n_0 ),
        .I5(ansMaxAddr[4]),
        .O(\intReg[0][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \intReg[0][7]_i_2__0 
       (.I0(equal),
        .I1(clr),
        .I2(\intReg[0][7]_i_8_n_0 ),
        .I3(write),
        .I4(wtNeg),
        .O(\intReg[0][7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[0][7]_i_3__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(\intReg[0][7]_i_8_n_0 ),
        .O(p_3_in[7]));
  LUT6 #(
    .INIT(64'h8800000000000004)) 
    \intReg[0][7]_i_4__0 
       (.I0(ansMaxAddr[1]),
        .I1(newLine),
        .I2(ansMaxAddr[4]),
        .I3(ansMaxAddr[3]),
        .I4(ansMaxAddr[2]),
        .I5(ansMaxAddr[0]),
        .O(\intReg[0][7]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \intReg[0][7]_i_5__0 
       (.I0(ansMaxAddr[4]),
        .I1(ansMaxAddr[5]),
        .I2(ansMaxAddr[6]),
        .O(\intReg[0][7]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \intReg[0][7]_i_6__0 
       (.I0(newLine),
        .I1(ansMaxAddr[4]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[0]),
        .O(\intReg[0][7]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \intReg[0][7]_i_7 
       (.I0(ansMaxAddr[6]),
        .I1(ansMaxAddr[7]),
        .I2(ansMaxAddr[5]),
        .I3(ansMaxAddr[1]),
        .O(\intReg[0][7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \intReg[0][7]_i_8 
       (.I0(ansMaxAddr[2]),
        .I1(ansMaxAddr[0]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(\intReg[0][7]_i_7_n_0 ),
        .O(\intReg[0][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE200E2E2E2FFE2E2)) 
    \intReg[1][0]_i_1__0 
       (.I0(\ansReg[1] [0]),
        .I1(\intReg[1][7]_i_2__0_n_0 ),
        .I2(\intReg[1][0]_i_2__0_n_0 ),
        .I3(\intReg[0][7]_i_7_n_0 ),
        .I4(\intReg[1][0]_i_3_n_0 ),
        .I5(ansMaxAddr[0]),
        .O(\intReg[1][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[1][0]_i_2__0 
       (.I0(\intReg[0][7]_i_7_n_0 ),
        .I1(\intReg[7][0]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[1][0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \intReg[1][0]_i_3 
       (.I0(ansMaxAddr[2]),
        .I1(ansMaxAddr[3]),
        .I2(ansMaxAddr[4]),
        .I3(newLine),
        .O(\intReg[1][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECECECE)) 
    \intReg[1][1]_i_1__0 
       (.I0(\ansReg[1] [1]),
        .I1(\intReg[1][2]_i_2_n_0 ),
        .I2(\intReg[1][7]_i_2__0_n_0 ),
        .I3(\intReg[0][1]_i_2__0_n_0 ),
        .I4(\intReg[1][7]_i_4_n_0 ),
        .I5(\intReg[0][2]_i_2__0_n_0 ),
        .O(\intReg[1][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[1][2]_i_1__0 
       (.I0(\ansReg[1] [2]),
        .I1(\intReg[1][2]_i_2_n_0 ),
        .I2(\intReg[1][7]_i_2__0_n_0 ),
        .I3(\intReg[1][2]_i_3_n_0 ),
        .I4(\intReg[1][7]_i_4_n_0 ),
        .I5(\intReg[0][2]_i_2__0_n_0 ),
        .O(\intReg[1][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \intReg[1][2]_i_2 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(newLine),
        .I5(\intReg[0][7]_i_7_n_0 ),
        .O(\intReg[1][2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intReg[1][2]_i_3 
       (.I0(data0[2]),
        .I1(write),
        .I2(wtNeg),
        .O(\intReg[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[1][3]_i_1__0 
       (.I0(\intReg[0][7]_i_7_n_0 ),
        .I1(\intReg[1][3]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[1][3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[1][3]_i_2 
       (.I0(data0[3]),
        .I1(write),
        .O(\intReg[1][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \intReg[1][4]_i_1__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[1][7]_i_4_n_0 ),
        .O(\intReg[1][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFA2A)) 
    \intReg[1][5]_i_1__0 
       (.I0(equal),
        .I1(wtNeg),
        .I2(\intReg[1][7]_i_4_n_0 ),
        .I3(write),
        .O(\intReg[1][5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \intReg[1][7]_i_1__0 
       (.I0(newLine),
        .I1(ansMaxAddr[4]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[2]),
        .I4(\intReg[0][7]_i_7_n_0 ),
        .O(\intReg[1][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \intReg[1][7]_i_2__0 
       (.I0(\intReg[1][7]_i_4_n_0 ),
        .I1(write),
        .I2(wtNeg),
        .I3(equal),
        .I4(clr),
        .O(\intReg[1][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \intReg[1][7]_i_3__0 
       (.I0(\intReg[1][7]_i_4_n_0 ),
        .I1(wtNeg),
        .I2(write),
        .O(\intReg[1][7]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \intReg[1][7]_i_4 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(\intReg[0][7]_i_7_n_0 ),
        .O(\intReg[1][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[2][0]_i_1__0 
       (.I0(\ansReg[2] [0]),
        .I1(\intReg[2][2]_i_2__0_n_0 ),
        .I2(\intReg[2][7]_i_2__0_n_0 ),
        .I3(\intReg[2][0]_i_2__0_n_0 ),
        .I4(\intReg[1][2]_i_2_n_0 ),
        .O(\intReg[2][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \intReg[2][0]_i_2__0 
       (.I0(\intReg[2][5]_i_2_n_0 ),
        .I1(\intReg[7][0]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[4]),
        .O(\intReg[2][0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000FECE)) 
    \intReg[2][1]_i_1__0 
       (.I0(\ansReg[2] [1]),
        .I1(\intReg[2][2]_i_2__0_n_0 ),
        .I2(\intReg[2][7]_i_2__0_n_0 ),
        .I3(\intReg[2][1]_i_2__0_n_0 ),
        .I4(\intReg[1][2]_i_2_n_0 ),
        .O(\intReg[2][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000020002)) 
    \intReg[2][1]_i_2__0 
       (.I0(wtNeg),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[2][7]_i_4__0_n_0 ),
        .I4(data0[1]),
        .I5(write),
        .O(\intReg[2][1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[2][2]_i_1__0 
       (.I0(\ansReg[2] [2]),
        .I1(\intReg[2][2]_i_2__0_n_0 ),
        .I2(\intReg[2][7]_i_2__0_n_0 ),
        .I3(\intReg[2][2]_i_3_n_0 ),
        .I4(\intReg[1][2]_i_2_n_0 ),
        .O(\intReg[2][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \intReg[2][2]_i_2__0 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(newLine),
        .I5(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[2][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000020002)) 
    \intReg[2][2]_i_3 
       (.I0(wtNeg),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[2][7]_i_4__0_n_0 ),
        .I4(data0[2]),
        .I5(write),
        .O(\intReg[2][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \intReg[2][3]_i_1__0 
       (.I0(\intReg[2][5]_i_2_n_0 ),
        .I1(\intReg[1][3]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[4]),
        .O(\intReg[2][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    \intReg[2][4]_i_1__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(ansMaxAddr[0]),
        .I4(ansMaxAddr[2]),
        .O(\intReg[2][4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \intReg[2][5]_i_1__0 
       (.I0(write),
        .I1(\intReg[2][5]_i_2_n_0 ),
        .I2(ansMaxAddr[4]),
        .I3(ansMaxAddr[3]),
        .I4(ansMaxAddr[0]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[2][5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \intReg[2][5]_i_2 
       (.I0(ansMaxAddr[6]),
        .I1(ansMaxAddr[7]),
        .I2(ansMaxAddr[5]),
        .I3(ansMaxAddr[1]),
        .O(\intReg[2][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \intReg[2][7]_i_1__0 
       (.I0(\intReg[1][0]_i_3_n_0 ),
        .I1(ansMaxAddr[0]),
        .I2(ansMaxAddr[1]),
        .I3(ansMaxAddr[5]),
        .I4(ansMaxAddr[7]),
        .I5(ansMaxAddr[6]),
        .O(\intReg[2][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01010100)) 
    \intReg[2][7]_i_2__0 
       (.I0(ansMaxAddr[2]),
        .I1(ansMaxAddr[0]),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(write),
        .I4(wtNeg),
        .I5(clr),
        .O(\intReg[2][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \intReg[2][7]_i_3__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(ansMaxAddr[0]),
        .I4(ansMaxAddr[2]),
        .O(\intReg[2][7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \intReg[2][7]_i_4__0 
       (.I0(ansMaxAddr[1]),
        .I1(ansMaxAddr[5]),
        .I2(ansMaxAddr[7]),
        .I3(ansMaxAddr[6]),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[2][7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hE200E2E2E2FFE2E2)) 
    \intReg[3][0]_i_1__0 
       (.I0(\ansReg[3] [0]),
        .I1(\intReg[3][7]_i_2__0_n_0 ),
        .I2(\intReg[3][0]_i_2__0_n_0 ),
        .I3(\intReg[2][5]_i_2_n_0 ),
        .I4(\intReg[1][0]_i_3_n_0 ),
        .I5(ansMaxAddr[0]),
        .O(\intReg[3][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[3][0]_i_2__0 
       (.I0(\intReg[2][5]_i_2_n_0 ),
        .I1(\intReg[7][0]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[3][0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CECEFECE)) 
    \intReg[3][1]_i_1__0 
       (.I0(\ansReg[3] [1]),
        .I1(\intReg[3][2]_i_2_n_0 ),
        .I2(\intReg[3][7]_i_2__0_n_0 ),
        .I3(\intReg[0][1]_i_2__0_n_0 ),
        .I4(\intReg[3][7]_i_4_n_0 ),
        .I5(\intReg[2][2]_i_2__0_n_0 ),
        .O(\intReg[3][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02023202)) 
    \intReg[3][2]_i_1__0 
       (.I0(\ansReg[3] [2]),
        .I1(\intReg[3][2]_i_2_n_0 ),
        .I2(\intReg[3][7]_i_2__0_n_0 ),
        .I3(\intReg[1][2]_i_3_n_0 ),
        .I4(\intReg[3][7]_i_4_n_0 ),
        .I5(\intReg[2][2]_i_2__0_n_0 ),
        .O(\intReg[3][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[3][2]_i_2 
       (.I0(\intReg[2][5]_i_2_n_0 ),
        .I1(ansMaxAddr[0]),
        .I2(newLine),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[3][3]_i_1__0 
       (.I0(\intReg[2][5]_i_2_n_0 ),
        .I1(\intReg[1][3]_i_2_n_0 ),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[3][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \intReg[3][4]_i_1__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[3][7]_i_4_n_0 ),
        .O(\intReg[3][4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \intReg[3][5]_i_1__0 
       (.I0(write),
        .I1(\intReg[2][5]_i_2_n_0 ),
        .I2(ansMaxAddr[4]),
        .I3(ansMaxAddr[3]),
        .I4(ansMaxAddr[2]),
        .I5(ansMaxAddr[0]),
        .O(\intReg[3][5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \intReg[3][7]_i_1__0 
       (.I0(newLine),
        .I1(ansMaxAddr[4]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[2]),
        .I4(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[3][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \intReg[3][7]_i_2__0 
       (.I0(\intReg[3][7]_i_4_n_0 ),
        .I1(write),
        .I2(wtNeg),
        .I3(clr),
        .O(\intReg[3][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \intReg[3][7]_i_3__0 
       (.I0(write),
        .I1(\intReg[3][7]_i_4_n_0 ),
        .I2(wtNeg),
        .O(\intReg[3][7]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \intReg[3][7]_i_4 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[3][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[4][0]_i_1__0 
       (.I0(\ansReg[4] [0]),
        .I1(\intReg[4][2]_i_2__0_n_0 ),
        .I2(\intReg[4][7]_i_2__0_n_0 ),
        .I3(\intReg[4][0]_i_2__0_n_0 ),
        .I4(\intReg[4][3]_i_2_n_0 ),
        .I5(\intReg[3][2]_i_2_n_0 ),
        .O(\intReg[4][0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \intReg[4][0]_i_2__0 
       (.I0(write),
        .I1(data0[0]),
        .I2(ansMaxAddr[2]),
        .I3(ansMaxAddr[0]),
        .O(\intReg[4][0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000FECE)) 
    \intReg[4][1]_i_1__0 
       (.I0(\ansReg[4] [1]),
        .I1(\intReg[4][2]_i_2__0_n_0 ),
        .I2(\intReg[4][7]_i_2__0_n_0 ),
        .I3(\intReg[4][1]_i_2__0_n_0 ),
        .I4(\intReg[3][2]_i_2_n_0 ),
        .O(\intReg[4][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000200020)) 
    \intReg[4][1]_i_2__0 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_4__0_n_0 ),
        .I2(ansMaxAddr[2]),
        .I3(ansMaxAddr[0]),
        .I4(data0[1]),
        .I5(write),
        .O(\intReg[4][1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[4][2]_i_1__0 
       (.I0(\ansReg[4] [2]),
        .I1(\intReg[4][2]_i_2__0_n_0 ),
        .I2(\intReg[4][7]_i_2__0_n_0 ),
        .I3(\intReg[4][2]_i_3_n_0 ),
        .I4(\intReg[3][2]_i_2_n_0 ),
        .O(\intReg[4][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \intReg[4][2]_i_2__0 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(newLine),
        .I3(\intReg[0][7]_i_7_n_0 ),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[4][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000200020)) 
    \intReg[4][2]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_4__0_n_0 ),
        .I2(ansMaxAddr[2]),
        .I3(ansMaxAddr[0]),
        .I4(data0[2]),
        .I5(write),
        .O(\intReg[4][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \intReg[4][3]_i_1__0 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(data0[3]),
        .I3(write),
        .I4(\intReg[4][3]_i_2_n_0 ),
        .O(\intReg[4][3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \intReg[4][3]_i_2 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[4]),
        .I2(ansMaxAddr[6]),
        .I3(ansMaxAddr[7]),
        .I4(ansMaxAddr[5]),
        .I5(ansMaxAddr[1]),
        .O(\intReg[4][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000E00)) 
    \intReg[4][4]_i_1__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(\intReg[4][7]_i_4__0_n_0 ),
        .O(\intReg[4][4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \intReg[4][5]_i_1__0 
       (.I0(write),
        .I1(ansMaxAddr[0]),
        .I2(ansMaxAddr[2]),
        .I3(\intReg[0][7]_i_7_n_0 ),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[4][5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0000)) 
    \intReg[4][7]_i_1__0 
       (.I0(\intReg[4][7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[3][7]_i_4_n_0 ),
        .I4(newLine),
        .O(\intReg[4][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04040400)) 
    \intReg[4][7]_i_2__0 
       (.I0(\intReg[4][7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(write),
        .I4(wtNeg),
        .I5(clr),
        .O(\intReg[4][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \intReg[4][7]_i_3__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(ansMaxAddr[0]),
        .I3(ansMaxAddr[2]),
        .I4(\intReg[4][7]_i_4__0_n_0 ),
        .O(\intReg[4][7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \intReg[4][7]_i_4__0 
       (.I0(ansMaxAddr[1]),
        .I1(ansMaxAddr[5]),
        .I2(ansMaxAddr[7]),
        .I3(ansMaxAddr[6]),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[4][7]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE02)) 
    \intReg[5][0]_i_1__0 
       (.I0(\ansReg[5] [0]),
        .I1(\intReg[5][2]_i_2_n_0 ),
        .I2(\intReg[5][7]_i_2__0_n_0 ),
        .I3(\intReg[5][0]_i_2__0_n_0 ),
        .I4(\intReg[4][2]_i_2__0_n_0 ),
        .O(\intReg[5][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \intReg[5][0]_i_2__0 
       (.I0(write),
        .I1(data0[0]),
        .I2(\intReg[4][3]_i_2_n_0 ),
        .I3(newLine),
        .I4(ansMaxAddr[2]),
        .I5(ansMaxAddr[0]),
        .O(\intReg[5][0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CECEFECE)) 
    \intReg[5][1]_i_1__0 
       (.I0(\ansReg[5] [1]),
        .I1(\intReg[5][2]_i_2_n_0 ),
        .I2(\intReg[5][7]_i_2__0_n_0 ),
        .I3(\intReg[0][1]_i_2__0_n_0 ),
        .I4(\intReg[5][7]_i_4_n_0 ),
        .I5(\intReg[4][2]_i_2__0_n_0 ),
        .O(\intReg[5][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02023202)) 
    \intReg[5][2]_i_1__0 
       (.I0(\ansReg[5] [2]),
        .I1(\intReg[5][2]_i_2_n_0 ),
        .I2(\intReg[5][7]_i_2__0_n_0 ),
        .I3(\intReg[1][2]_i_3_n_0 ),
        .I4(\intReg[5][7]_i_4_n_0 ),
        .I5(\intReg[4][2]_i_2__0_n_0 ),
        .O(\intReg[5][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \intReg[5][2]_i_2 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(newLine),
        .I3(\intReg[0][7]_i_7_n_0 ),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[5][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \intReg[5][3]_i_1__0 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(data0[3]),
        .I3(write),
        .I4(\intReg[4][3]_i_2_n_0 ),
        .O(\intReg[5][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \intReg[5][4]_i_1__0 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[5][7]_i_4_n_0 ),
        .O(\intReg[5][4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \intReg[5][5]_i_1__0 
       (.I0(write),
        .I1(ansMaxAddr[0]),
        .I2(ansMaxAddr[2]),
        .I3(\intReg[0][7]_i_7_n_0 ),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[5][5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \intReg[5][7]_i_1__0 
       (.I0(newLine),
        .I1(ansMaxAddr[2]),
        .I2(\intReg[0][7]_i_7_n_0 ),
        .I3(ansMaxAddr[4]),
        .I4(ansMaxAddr[3]),
        .O(\intReg[5][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \intReg[5][7]_i_2__0 
       (.I0(\intReg[5][7]_i_4_n_0 ),
        .I1(write),
        .I2(wtNeg),
        .I3(clr),
        .O(\intReg[5][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \intReg[5][7]_i_3__0 
       (.I0(write),
        .I1(\intReg[5][7]_i_4_n_0 ),
        .I2(wtNeg),
        .O(\intReg[5][7]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \intReg[5][7]_i_4 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[4]),
        .I2(\intReg[0][7]_i_7_n_0 ),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[0]),
        .O(\intReg[5][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02023202)) 
    \intReg[6][0]_i_1__0 
       (.I0(\ansReg[6] [0]),
        .I1(\intReg[6][2]_i_2_n_0 ),
        .I2(\intReg[6][7]_i_2_n_0 ),
        .I3(\intReg[6][0]_i_2_n_0 ),
        .I4(\intReg[2][5]_i_2_n_0 ),
        .I5(\intReg[5][2]_i_2_n_0 ),
        .O(\intReg[6][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \intReg[6][0]_i_2 
       (.I0(ansMaxAddr[0]),
        .I1(ansMaxAddr[2]),
        .I2(data0[0]),
        .I3(write),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[6][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FECE)) 
    \intReg[6][1]_i_1__0 
       (.I0(\ansReg[6] [1]),
        .I1(\intReg[6][2]_i_2_n_0 ),
        .I2(\intReg[6][7]_i_2_n_0 ),
        .I3(\intReg[6][1]_i_2_n_0 ),
        .I4(\intReg[5][2]_i_2_n_0 ),
        .O(\intReg[6][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000C000000080008)) 
    \intReg[6][1]_i_2 
       (.I0(wtNeg),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[2][7]_i_4__0_n_0 ),
        .I4(data0[1]),
        .I5(write),
        .O(\intReg[6][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3202)) 
    \intReg[6][2]_i_1__0 
       (.I0(\ansReg[6] [2]),
        .I1(\intReg[6][2]_i_2_n_0 ),
        .I2(\intReg[6][7]_i_2_n_0 ),
        .I3(\intReg[6][2]_i_3_n_0 ),
        .I4(\intReg[5][2]_i_2_n_0 ),
        .O(\intReg[6][2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \intReg[6][2]_i_2 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[4]),
        .I2(newLine),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[0]),
        .I5(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000000080008)) 
    \intReg[6][2]_i_3 
       (.I0(wtNeg),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[2][7]_i_4__0_n_0 ),
        .I4(data0[2]),
        .I5(write),
        .O(\intReg[6][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \intReg[6][3]_i_1 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[4]),
        .I2(\intReg[1][3]_i_2_n_0 ),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[0]),
        .I5(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h000E0000)) 
    \intReg[6][4]_i_1 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(ansMaxAddr[0]),
        .I4(ansMaxAddr[2]),
        .O(\intReg[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \intReg[6][5]_i_1 
       (.I0(write),
        .I1(\intReg[2][5]_i_2_n_0 ),
        .I2(ansMaxAddr[4]),
        .I3(ansMaxAddr[3]),
        .I4(ansMaxAddr[0]),
        .I5(ansMaxAddr[2]),
        .O(\intReg[6][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0000)) 
    \intReg[6][7]_i_1__0 
       (.I0(\intReg[2][7]_i_4__0_n_0 ),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[0]),
        .I3(\intReg[5][7]_i_4_n_0 ),
        .I4(newLine),
        .O(\intReg[6][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02020200)) 
    \intReg[6][7]_i_2 
       (.I0(ansMaxAddr[2]),
        .I1(ansMaxAddr[0]),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(write),
        .I4(wtNeg),
        .I5(clr),
        .O(\intReg[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \intReg[6][7]_i_3 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[2][7]_i_4__0_n_0 ),
        .I3(ansMaxAddr[0]),
        .I4(ansMaxAddr[2]),
        .O(\intReg[6][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03A200A2)) 
    \intReg[7][0]_i_1__0 
       (.I0(\ansReg[7] [0]),
        .I1(newLine),
        .I2(\intReg[7][7]_i_4_n_0 ),
        .I3(\intReg[7][7]_i_2_n_0 ),
        .I4(\intReg[7][0]_i_2_n_0 ),
        .I5(\intReg[6][2]_i_2_n_0 ),
        .O(\intReg[7][0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[7][0]_i_2 
       (.I0(data0[0]),
        .I1(write),
        .O(\intReg[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FAE0CAE)) 
    \intReg[7][1]_i_1__0 
       (.I0(\ansReg[7] [1]),
        .I1(newLine),
        .I2(\intReg[7][7]_i_4_n_0 ),
        .I3(\intReg[7][7]_i_2_n_0 ),
        .I4(\intReg[0][1]_i_2__0_n_0 ),
        .I5(\intReg[6][2]_i_2_n_0 ),
        .O(\intReg[7][1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03A200A2)) 
    \intReg[7][2]_i_1__0 
       (.I0(\ansReg[7] [2]),
        .I1(newLine),
        .I2(\intReg[7][7]_i_4_n_0 ),
        .I3(\intReg[7][7]_i_2_n_0 ),
        .I4(\intReg[1][2]_i_3_n_0 ),
        .I5(\intReg[6][2]_i_2_n_0 ),
        .O(\intReg[7][2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \intReg[7][3]_i_1 
       (.I0(write),
        .I1(data0[3]),
        .I2(\intReg[7][7]_i_4_n_0 ),
        .O(\intReg[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \intReg[7][4]_i_1 
       (.I0(wtNeg),
        .I1(write),
        .I2(\intReg[7][7]_i_4_n_0 ),
        .O(\intReg[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \intReg[7][5]_i_1 
       (.I0(write),
        .I1(ansMaxAddr[0]),
        .I2(ansMaxAddr[2]),
        .I3(\intReg[2][5]_i_2_n_0 ),
        .I4(ansMaxAddr[4]),
        .I5(ansMaxAddr[3]),
        .O(\intReg[7][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \intReg[7][7]_i_1__0 
       (.I0(newLine),
        .I1(ansMaxAddr[2]),
        .I2(ansMaxAddr[3]),
        .I3(ansMaxAddr[4]),
        .I4(\intReg[2][5]_i_2_n_0 ),
        .O(\intReg[7][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \intReg[7][7]_i_2 
       (.I0(\intReg[7][7]_i_4_n_0 ),
        .I1(write),
        .I2(wtNeg),
        .I3(clr),
        .O(\intReg[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \intReg[7][7]_i_3 
       (.I0(write),
        .I1(\intReg[7][7]_i_4_n_0 ),
        .I2(wtNeg),
        .O(\intReg[7][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \intReg[7][7]_i_4 
       (.I0(ansMaxAddr[3]),
        .I1(ansMaxAddr[4]),
        .I2(\intReg[2][5]_i_2_n_0 ),
        .I3(ansMaxAddr[2]),
        .I4(ansMaxAddr[0]),
        .O(\intReg[7][7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][0]_i_1__0_n_0 ),
        .Q(\ansReg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][1]_i_1__0_n_0 ),
        .Q(\ansReg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][2]_i_1__0_n_0 ),
        .Q(\ansReg[0] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[0][3] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2__0_n_0 ),
        .D(p_3_in[3]),
        .Q(\ansReg[0] [3]),
        .S(\intReg[0][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][4] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2__0_n_0 ),
        .D(p_3_in[4]),
        .Q(\ansReg[0] [4]),
        .R(\intReg[0][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][5] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2__0_n_0 ),
        .D(p_3_in[5]),
        .Q(\ansReg[0] [5]),
        .R(\intReg[0][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][7] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2__0_n_0 ),
        .D(p_3_in[7]),
        .Q(\ansReg[0] [6]),
        .R(\intReg[0][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][0]_i_1__0_n_0 ),
        .Q(\ansReg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][1]_i_1__0_n_0 ),
        .Q(\ansReg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][2]_i_1__0_n_0 ),
        .Q(\ansReg[1] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[1][3] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2__0_n_0 ),
        .D(\intReg[1][3]_i_1__0_n_0 ),
        .Q(\ansReg[1] [3]),
        .S(\intReg[1][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][4] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2__0_n_0 ),
        .D(\intReg[1][4]_i_1__0_n_0 ),
        .Q(\ansReg[1] [4]),
        .R(\intReg[1][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][5] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2__0_n_0 ),
        .D(\intReg[1][5]_i_1__0_n_0 ),
        .Q(\ansReg[1] [5]),
        .R(\intReg[1][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][7] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2__0_n_0 ),
        .D(\intReg[1][7]_i_3__0_n_0 ),
        .Q(\ansReg[1] [6]),
        .R(\intReg[1][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][0]_i_1__0_n_0 ),
        .Q(\ansReg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][1]_i_1__0_n_0 ),
        .Q(\ansReg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][2]_i_1__0_n_0 ),
        .Q(\ansReg[2] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[2][3] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2__0_n_0 ),
        .D(\intReg[2][3]_i_1__0_n_0 ),
        .Q(\ansReg[2] [3]),
        .S(\intReg[2][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][4] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2__0_n_0 ),
        .D(\intReg[2][4]_i_1__0_n_0 ),
        .Q(\ansReg[2] [4]),
        .R(\intReg[2][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][5] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2__0_n_0 ),
        .D(\intReg[2][5]_i_1__0_n_0 ),
        .Q(\ansReg[2] [5]),
        .R(\intReg[2][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][7] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2__0_n_0 ),
        .D(\intReg[2][7]_i_3__0_n_0 ),
        .Q(\ansReg[2] [6]),
        .R(\intReg[2][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][0]_i_1__0_n_0 ),
        .Q(\ansReg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][1]_i_1__0_n_0 ),
        .Q(\ansReg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][2]_i_1__0_n_0 ),
        .Q(\ansReg[3] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[3][3] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2__0_n_0 ),
        .D(\intReg[3][3]_i_1__0_n_0 ),
        .Q(\ansReg[3] [3]),
        .S(\intReg[3][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][4] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2__0_n_0 ),
        .D(\intReg[3][4]_i_1__0_n_0 ),
        .Q(\ansReg[3] [4]),
        .R(\intReg[3][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][5] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2__0_n_0 ),
        .D(\intReg[3][5]_i_1__0_n_0 ),
        .Q(\ansReg[3] [5]),
        .R(\intReg[3][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][7] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2__0_n_0 ),
        .D(\intReg[3][7]_i_3__0_n_0 ),
        .Q(\ansReg[3] [6]),
        .R(\intReg[3][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][0]_i_1__0_n_0 ),
        .Q(\ansReg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][1]_i_1__0_n_0 ),
        .Q(\ansReg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][2]_i_1__0_n_0 ),
        .Q(\ansReg[4] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[4][3] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2__0_n_0 ),
        .D(\intReg[4][3]_i_1__0_n_0 ),
        .Q(\ansReg[4] [3]),
        .S(\intReg[4][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][4] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2__0_n_0 ),
        .D(\intReg[4][4]_i_1__0_n_0 ),
        .Q(\ansReg[4] [4]),
        .R(\intReg[4][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][5] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2__0_n_0 ),
        .D(\intReg[4][5]_i_1__0_n_0 ),
        .Q(\ansReg[4] [5]),
        .R(\intReg[4][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][7] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2__0_n_0 ),
        .D(\intReg[4][7]_i_3__0_n_0 ),
        .Q(\ansReg[4] [6]),
        .R(\intReg[4][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][0]_i_1__0_n_0 ),
        .Q(\ansReg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][1]_i_1__0_n_0 ),
        .Q(\ansReg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][2]_i_1__0_n_0 ),
        .Q(\ansReg[5] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[5][3] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2__0_n_0 ),
        .D(\intReg[5][3]_i_1__0_n_0 ),
        .Q(\ansReg[5] [3]),
        .S(\intReg[5][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][4] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2__0_n_0 ),
        .D(\intReg[5][4]_i_1__0_n_0 ),
        .Q(\ansReg[5] [4]),
        .R(\intReg[5][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][5] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2__0_n_0 ),
        .D(\intReg[5][5]_i_1__0_n_0 ),
        .Q(\ansReg[5] [5]),
        .R(\intReg[5][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][7] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2__0_n_0 ),
        .D(\intReg[5][7]_i_3__0_n_0 ),
        .Q(\ansReg[5] [6]),
        .R(\intReg[5][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][0]_i_1__0_n_0 ),
        .Q(\ansReg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][1]_i_1__0_n_0 ),
        .Q(\ansReg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][2]_i_1__0_n_0 ),
        .Q(\ansReg[6] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[6][3] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2_n_0 ),
        .D(\intReg[6][3]_i_1_n_0 ),
        .Q(\ansReg[6] [3]),
        .S(\intReg[6][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][4] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2_n_0 ),
        .D(\intReg[6][4]_i_1_n_0 ),
        .Q(\ansReg[6] [4]),
        .R(\intReg[6][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][5] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2_n_0 ),
        .D(\intReg[6][5]_i_1_n_0 ),
        .Q(\ansReg[6] [5]),
        .R(\intReg[6][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][7] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2_n_0 ),
        .D(\intReg[6][7]_i_3_n_0 ),
        .Q(\ansReg[6] [6]),
        .R(\intReg[6][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][0]_i_1__0_n_0 ),
        .Q(\ansReg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][1]_i_1__0_n_0 ),
        .Q(\ansReg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][2]_i_1__0_n_0 ),
        .Q(\ansReg[7] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[7][3] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2_n_0 ),
        .D(\intReg[7][3]_i_1_n_0 ),
        .Q(\ansReg[7] [3]),
        .S(\intReg[7][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][4] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2_n_0 ),
        .D(\intReg[7][4]_i_1_n_0 ),
        .Q(\ansReg[7] [4]),
        .R(\intReg[7][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][5] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2_n_0 ),
        .D(\intReg[7][5]_i_1_n_0 ),
        .Q(\ansReg[7] [5]),
        .R(\intReg[7][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][7] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2_n_0 ),
        .D(\intReg[7][7]_i_3_n_0 ),
        .Q(\ansReg[7] [6]),
        .R(\intReg[7][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    neg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(neg_reg_0),
        .Q(neg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h880C88FF440C4400)) 
    \numDig[1]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(\numDig_reg[1]_0 ),
        .I2(\numDig_reg[2]_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(p_0_in[1]),
        .O(\numDig[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCAAFCFF03AA0300)) 
    \numDig[2]_i_1__0 
       (.I0(\numDig_reg[2]_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(p_0_in[2]),
        .O(\numDig[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig_reg[0]_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig[1]_i_1__0_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig[2]_i_1__0_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

module toNumReg
   (Q,
    \num_reg[0] ,
    O,
    \intData_reg[13]_0 ,
    \intData_reg[14]_0 ,
    \intData_reg[15]_0 ,
    \intData_reg[15]_1 ,
    CO,
    \intData[3]_i_68 ,
    \intData[3]_i_97 ,
    \intData_reg[14]_1 ,
    \intData_reg[15]_2 ,
    \intData_reg[15]_3 ,
    \intData_reg[15]_4 ,
    \dig[3]_i_78 ,
    \dig[3]_i_71 ,
    \intData_reg[15]_5 ,
    \FSM_onehot_cs_reg[8]_0 ,
    \intData_reg[13]_1 ,
    \intData_reg[7]_0 ,
    \intData_reg[9]_0 ,
    \FSM_onehot_cs_reg[8]_1 ,
    D,
    \intReg_reg[1][5]_0 ,
    \intReg_reg[2][7]_0 ,
    \intReg_reg[3][7]_0 ,
    \intReg_reg[4][7]_0 ,
    \intReg_reg[5][7]_0 ,
    \intReg_reg[6][7]_0 ,
    \intReg_reg[7][7]_0 ,
    \intAddr_reg[7]_0 ,
    \regPort[0] ,
    clkPort,
    neg_reg_0,
    \intData_reg[3]_i_19_0 ,
    \FSM_onehot_cs_reg[0]_0 ,
    intData1,
    S,
    \intData[12]_i_2_0 ,
    \intData[3]_i_32__0_0 ,
    \intData[3]_i_59 ,
    \intData[3]_i_30__0_0 ,
    \dig[1]_i_169_0 ,
    \dig[3]_i_44 ,
    \dig[3]_i_22 ,
    DI,
    \dig[1]_i_167_0 ,
    \dig[1]_i_95_0 ,
    \FSM_sequential_cs_reg[0] ,
    newOpReg,
    \ansReg[1] ,
    \ansReg[2] ,
    \ansReg[3] ,
    \ansReg[4] ,
    \ansReg[5] ,
    \ansReg[6] ,
    \ansReg[7] ,
    ansMaxAddr);
  output [0:0]Q;
  output \num_reg[0] ;
  output [1:0]O;
  output [0:0]\intData_reg[13]_0 ;
  output [3:0]\intData_reg[14]_0 ;
  output [0:0]\intData_reg[15]_0 ;
  output [0:0]\intData_reg[15]_1 ;
  output [0:0]CO;
  output [1:0]\intData[3]_i_68 ;
  output [0:0]\intData[3]_i_97 ;
  output [3:0]\intData_reg[14]_1 ;
  output [0:0]\intData_reg[15]_2 ;
  output [0:0]\intData_reg[15]_3 ;
  output [0:0]\intData_reg[15]_4 ;
  output [1:0]\dig[3]_i_78 ;
  output [3:0]\dig[3]_i_71 ;
  output [1:0]\intData_reg[15]_5 ;
  output [1:0]\FSM_onehot_cs_reg[8]_0 ;
  output [1:0]\intData_reg[13]_1 ;
  output [1:0]\intData_reg[7]_0 ;
  output [3:0]\intData_reg[9]_0 ;
  output \FSM_onehot_cs_reg[8]_1 ;
  output [5:0]D;
  output [0:0]\intReg_reg[1][5]_0 ;
  output [6:0]\intReg_reg[2][7]_0 ;
  output [6:0]\intReg_reg[3][7]_0 ;
  output [6:0]\intReg_reg[4][7]_0 ;
  output [6:0]\intReg_reg[5][7]_0 ;
  output [6:0]\intReg_reg[6][7]_0 ;
  output [6:0]\intReg_reg[7][7]_0 ;
  output [6:0]\intAddr_reg[7]_0 ;
  output [6:0]\regPort[0] ;
  input clkPort;
  input [15:0]neg_reg_0;
  input [2:0]\intData_reg[3]_i_19_0 ;
  input \FSM_onehot_cs_reg[0]_0 ;
  input [13:0]intData1;
  input [2:0]S;
  input [1:0]\intData[12]_i_2_0 ;
  input [3:0]\intData[3]_i_32__0_0 ;
  input [0:0]\intData[3]_i_59 ;
  input [2:0]\intData[3]_i_30__0_0 ;
  input [3:0]\dig[1]_i_169_0 ;
  input [3:0]\dig[3]_i_44 ;
  input [0:0]\dig[3]_i_22 ;
  input [0:0]DI;
  input [3:0]\dig[1]_i_167_0 ;
  input [3:0]\dig[1]_i_95_0 ;
  input [0:0]\FSM_sequential_cs_reg[0] ;
  input newOpReg;
  input [5:0]\ansReg[1] ;
  input [6:0]\ansReg[2] ;
  input [6:0]\ansReg[3] ;
  input [6:0]\ansReg[4] ;
  input [6:0]\ansReg[5] ;
  input [6:0]\ansReg[6] ;
  input [6:0]\ansReg[7] ;
  input [6:0]ansMaxAddr;

  wire [0:0]CO;
  wire [5:0]D;
  wire [0:0]DI;
  wire \FSM_onehot_cs[10]_i_1_n_0 ;
  wire \FSM_onehot_cs[10]_i_2_n_0 ;
  wire \FSM_onehot_cs[4]_i_1_n_0 ;
  wire \FSM_onehot_cs[5]_i_1_n_0 ;
  wire \FSM_onehot_cs[5]_i_2_n_0 ;
  wire \FSM_onehot_cs[7]_i_1_n_0 ;
  wire \FSM_onehot_cs_reg[0]_0 ;
  wire [1:0]\FSM_onehot_cs_reg[8]_0 ;
  wire \FSM_onehot_cs_reg[8]_1 ;
  wire \FSM_onehot_cs_reg_n_0_[3] ;
  wire \FSM_onehot_cs_reg_n_0_[9] ;
  wire [0:0]\FSM_sequential_cs_reg[0] ;
  wire [1:0]O;
  wire [0:0]Q;
  wire [2:0]S;
  wire [6:0]ansMaxAddr;
  wire [5:0]\ansReg[1] ;
  wire [6:0]\ansReg[2] ;
  wire [6:0]\ansReg[3] ;
  wire [6:0]\ansReg[4] ;
  wire [6:0]\ansReg[5] ;
  wire [6:0]\ansReg[6] ;
  wire [6:0]\ansReg[7] ;
  wire chNeg;
  wire clkPort;
  wire clr;
  wire convert;
  wire count;
  wire [3:0]data0;
  wire [2:1]data1;
  wire [1:1]data2;
  wire dig;
  wire \dig[0]_i_10_n_0 ;
  wire \dig[0]_i_11_n_0 ;
  wire \dig[0]_i_12_n_0 ;
  wire \dig[0]_i_13_n_0 ;
  wire \dig[0]_i_14_n_0 ;
  wire \dig[0]_i_15_n_0 ;
  wire \dig[0]_i_16_n_0 ;
  wire \dig[0]_i_17_n_0 ;
  wire \dig[0]_i_18_n_0 ;
  wire \dig[0]_i_1_n_0 ;
  wire \dig[0]_i_2_n_0 ;
  wire \dig[0]_i_3_n_0 ;
  wire \dig[0]_i_4_n_0 ;
  wire \dig[0]_i_5_n_0 ;
  wire \dig[0]_i_6_n_0 ;
  wire \dig[0]_i_7_n_0 ;
  wire \dig[0]_i_8_n_0 ;
  wire \dig[0]_i_9_n_0 ;
  wire \dig[1]_i_100_n_0 ;
  wire \dig[1]_i_101_n_0 ;
  wire \dig[1]_i_102_n_0 ;
  wire \dig[1]_i_103_n_0 ;
  wire \dig[1]_i_105_n_0 ;
  wire \dig[1]_i_106_n_0 ;
  wire \dig[1]_i_107_n_0 ;
  wire \dig[1]_i_108_n_0 ;
  wire \dig[1]_i_109_n_0 ;
  wire \dig[1]_i_110_n_0 ;
  wire \dig[1]_i_111_n_0 ;
  wire \dig[1]_i_112_n_0 ;
  wire \dig[1]_i_115_n_0 ;
  wire \dig[1]_i_116_n_0 ;
  wire \dig[1]_i_117_n_0 ;
  wire \dig[1]_i_118_n_0 ;
  wire \dig[1]_i_119_n_0 ;
  wire \dig[1]_i_120_n_0 ;
  wire \dig[1]_i_121_n_0 ;
  wire \dig[1]_i_122_n_0 ;
  wire \dig[1]_i_124_n_0 ;
  wire \dig[1]_i_125_n_0 ;
  wire \dig[1]_i_127_n_0 ;
  wire \dig[1]_i_128_n_0 ;
  wire \dig[1]_i_129_n_0 ;
  wire \dig[1]_i_130_n_0 ;
  wire \dig[1]_i_131_n_0 ;
  wire \dig[1]_i_132_n_0 ;
  wire \dig[1]_i_133_n_0 ;
  wire \dig[1]_i_134_n_0 ;
  wire \dig[1]_i_135_n_0 ;
  wire \dig[1]_i_136_n_0 ;
  wire \dig[1]_i_137_n_0 ;
  wire \dig[1]_i_138_n_0 ;
  wire \dig[1]_i_139_n_0 ;
  wire \dig[1]_i_140_n_0 ;
  wire \dig[1]_i_142_n_0 ;
  wire \dig[1]_i_143_n_0 ;
  wire \dig[1]_i_144_n_0 ;
  wire \dig[1]_i_145_n_0 ;
  wire \dig[1]_i_146_n_0 ;
  wire \dig[1]_i_147_n_0 ;
  wire \dig[1]_i_148_n_0 ;
  wire \dig[1]_i_149_n_0 ;
  wire \dig[1]_i_150_n_0 ;
  wire \dig[1]_i_151_n_0 ;
  wire \dig[1]_i_152_n_0 ;
  wire \dig[1]_i_153_n_0 ;
  wire \dig[1]_i_154_n_0 ;
  wire \dig[1]_i_155_n_0 ;
  wire \dig[1]_i_156_n_0 ;
  wire \dig[1]_i_157_n_0 ;
  wire \dig[1]_i_159_n_0 ;
  wire \dig[1]_i_160_n_0 ;
  wire \dig[1]_i_161_n_0 ;
  wire \dig[1]_i_162_n_0 ;
  wire \dig[1]_i_163_n_0 ;
  wire \dig[1]_i_164_n_0 ;
  wire \dig[1]_i_165_n_0 ;
  wire \dig[1]_i_166_n_0 ;
  wire [3:0]\dig[1]_i_167_0 ;
  wire \dig[1]_i_167_n_0 ;
  wire \dig[1]_i_168_n_0 ;
  wire [3:0]\dig[1]_i_169_0 ;
  wire \dig[1]_i_169_n_0 ;
  wire \dig[1]_i_170_n_0 ;
  wire \dig[1]_i_171_n_0 ;
  wire \dig[1]_i_172_n_0 ;
  wire \dig[1]_i_173_n_0 ;
  wire \dig[1]_i_174_n_0 ;
  wire \dig[1]_i_175_n_0 ;
  wire \dig[1]_i_176_n_0 ;
  wire \dig[1]_i_177_n_0 ;
  wire \dig[1]_i_178_n_0 ;
  wire \dig[1]_i_179_n_0 ;
  wire \dig[1]_i_180_n_0 ;
  wire \dig[1]_i_181_n_0 ;
  wire \dig[1]_i_182_n_0 ;
  wire \dig[1]_i_183_n_0 ;
  wire \dig[1]_i_184_n_0 ;
  wire \dig[1]_i_185_n_0 ;
  wire \dig[1]_i_186_n_0 ;
  wire \dig[1]_i_187_n_0 ;
  wire \dig[1]_i_189_n_0 ;
  wire \dig[1]_i_18_n_0 ;
  wire \dig[1]_i_190_n_0 ;
  wire \dig[1]_i_191_n_0 ;
  wire \dig[1]_i_192_n_0 ;
  wire \dig[1]_i_193_n_0 ;
  wire \dig[1]_i_194_n_0 ;
  wire \dig[1]_i_195_n_0 ;
  wire \dig[1]_i_197_n_0 ;
  wire \dig[1]_i_198_n_0 ;
  wire \dig[1]_i_199_n_0 ;
  wire \dig[1]_i_19_n_0 ;
  wire \dig[1]_i_1_n_0 ;
  wire \dig[1]_i_200_n_0 ;
  wire \dig[1]_i_201_n_0 ;
  wire \dig[1]_i_202_n_0 ;
  wire \dig[1]_i_203_n_0 ;
  wire \dig[1]_i_204_n_0 ;
  wire \dig[1]_i_205_n_0 ;
  wire \dig[1]_i_206_n_0 ;
  wire \dig[1]_i_207_n_0 ;
  wire \dig[1]_i_208_n_0 ;
  wire \dig[1]_i_209_n_0 ;
  wire \dig[1]_i_210_n_0 ;
  wire \dig[1]_i_211_n_0 ;
  wire \dig[1]_i_212_n_0 ;
  wire \dig[1]_i_213_n_0 ;
  wire \dig[1]_i_214_n_0 ;
  wire \dig[1]_i_215_n_0 ;
  wire \dig[1]_i_217_n_0 ;
  wire \dig[1]_i_218_n_0 ;
  wire \dig[1]_i_219_n_0 ;
  wire \dig[1]_i_21_n_0 ;
  wire \dig[1]_i_220_n_0 ;
  wire \dig[1]_i_221_n_0 ;
  wire \dig[1]_i_222_n_0 ;
  wire \dig[1]_i_223_n_0 ;
  wire \dig[1]_i_224_n_0 ;
  wire \dig[1]_i_225_n_0 ;
  wire \dig[1]_i_226_n_0 ;
  wire \dig[1]_i_227_n_0 ;
  wire \dig[1]_i_228_n_0 ;
  wire \dig[1]_i_229_n_0 ;
  wire \dig[1]_i_22_n_0 ;
  wire \dig[1]_i_230_n_0 ;
  wire \dig[1]_i_233_n_0 ;
  wire \dig[1]_i_234_n_0 ;
  wire \dig[1]_i_235_n_0 ;
  wire \dig[1]_i_236_n_0 ;
  wire \dig[1]_i_237_n_0 ;
  wire \dig[1]_i_238_n_0 ;
  wire \dig[1]_i_239_n_0 ;
  wire \dig[1]_i_23_n_0 ;
  wire \dig[1]_i_240_n_0 ;
  wire \dig[1]_i_241_n_0 ;
  wire \dig[1]_i_242_n_0 ;
  wire \dig[1]_i_243_n_0 ;
  wire \dig[1]_i_244_n_0 ;
  wire \dig[1]_i_245_n_0 ;
  wire \dig[1]_i_246_n_0 ;
  wire \dig[1]_i_247_n_0 ;
  wire \dig[1]_i_248_n_0 ;
  wire \dig[1]_i_249_n_0 ;
  wire \dig[1]_i_24_n_0 ;
  wire \dig[1]_i_250_n_0 ;
  wire \dig[1]_i_251_n_0 ;
  wire \dig[1]_i_25_n_0 ;
  wire \dig[1]_i_26_n_0 ;
  wire \dig[1]_i_29__0_n_0 ;
  wire \dig[1]_i_2_n_0 ;
  wire \dig[1]_i_30__0_n_0 ;
  wire \dig[1]_i_31__0_n_0 ;
  wire \dig[1]_i_32__0_n_0 ;
  wire \dig[1]_i_33_n_0 ;
  wire \dig[1]_i_34_n_0 ;
  wire \dig[1]_i_36__0_n_0 ;
  wire \dig[1]_i_37_n_0 ;
  wire \dig[1]_i_38__0_n_0 ;
  wire \dig[1]_i_39__0_n_0 ;
  wire \dig[1]_i_3_n_0 ;
  wire \dig[1]_i_40_n_0 ;
  wire \dig[1]_i_41_n_0 ;
  wire \dig[1]_i_42_n_0 ;
  wire \dig[1]_i_43_n_0 ;
  wire \dig[1]_i_45_n_0 ;
  wire \dig[1]_i_46_n_0 ;
  wire \dig[1]_i_47_n_0 ;
  wire \dig[1]_i_49_n_0 ;
  wire \dig[1]_i_50_n_0 ;
  wire \dig[1]_i_51_n_0 ;
  wire \dig[1]_i_52_n_0 ;
  wire \dig[1]_i_53_n_0 ;
  wire \dig[1]_i_55_n_0 ;
  wire \dig[1]_i_56_n_0 ;
  wire \dig[1]_i_57_n_0 ;
  wire \dig[1]_i_58_n_0 ;
  wire \dig[1]_i_59_n_0 ;
  wire \dig[1]_i_5_n_0 ;
  wire \dig[1]_i_60_n_0 ;
  wire \dig[1]_i_61_n_0 ;
  wire \dig[1]_i_62_n_0 ;
  wire \dig[1]_i_64_n_0 ;
  wire \dig[1]_i_65_n_0 ;
  wire \dig[1]_i_66__0_n_0 ;
  wire \dig[1]_i_67__0_n_0 ;
  wire \dig[1]_i_68__0_n_0 ;
  wire \dig[1]_i_69__0_n_0 ;
  wire \dig[1]_i_6_n_0 ;
  wire \dig[1]_i_71_n_0 ;
  wire \dig[1]_i_72_n_0 ;
  wire \dig[1]_i_73_n_0 ;
  wire \dig[1]_i_74_n_0 ;
  wire \dig[1]_i_75_n_0 ;
  wire \dig[1]_i_76_n_0 ;
  wire \dig[1]_i_77_n_0 ;
  wire \dig[1]_i_78_n_0 ;
  wire \dig[1]_i_79_n_0 ;
  wire \dig[1]_i_7_n_0 ;
  wire \dig[1]_i_80_n_0 ;
  wire \dig[1]_i_81_n_0 ;
  wire \dig[1]_i_82_n_0 ;
  wire \dig[1]_i_83_n_0 ;
  wire \dig[1]_i_84_n_0 ;
  wire \dig[1]_i_86_n_0 ;
  wire \dig[1]_i_87_n_0 ;
  wire \dig[1]_i_88_n_0 ;
  wire \dig[1]_i_89_n_0 ;
  wire \dig[1]_i_8_n_0 ;
  wire \dig[1]_i_91_n_0 ;
  wire \dig[1]_i_92_n_0 ;
  wire \dig[1]_i_93_n_0 ;
  wire \dig[1]_i_94_n_0 ;
  wire [3:0]\dig[1]_i_95_0 ;
  wire \dig[1]_i_95_n_0 ;
  wire \dig[1]_i_96_n_0 ;
  wire \dig[1]_i_97_n_0 ;
  wire \dig[1]_i_98_n_0 ;
  wire \dig[2]_i_10_n_0 ;
  wire \dig[2]_i_11_n_0 ;
  wire \dig[2]_i_12_n_0 ;
  wire \dig[2]_i_13_n_0 ;
  wire \dig[2]_i_14_n_0 ;
  wire \dig[2]_i_15_n_0 ;
  wire \dig[2]_i_16_n_0 ;
  wire \dig[2]_i_17_n_0 ;
  wire \dig[2]_i_18_n_0 ;
  wire \dig[2]_i_19_n_0 ;
  wire \dig[2]_i_1_n_0 ;
  wire \dig[2]_i_20_n_0 ;
  wire \dig[2]_i_21_n_0 ;
  wire \dig[2]_i_2_n_0 ;
  wire \dig[2]_i_4_n_0 ;
  wire \dig[2]_i_5_n_0 ;
  wire \dig[2]_i_6_n_0 ;
  wire \dig[2]_i_7_n_0 ;
  wire \dig[2]_i_8_n_0 ;
  wire \dig[2]_i_9_n_0 ;
  wire \dig[3]_i_11_n_0 ;
  wire \dig[3]_i_12__0_n_0 ;
  wire \dig[3]_i_13__0_n_0 ;
  wire \dig[3]_i_14__0_n_0 ;
  wire \dig[3]_i_16_n_0 ;
  wire \dig[3]_i_18_n_0 ;
  wire \dig[3]_i_19_n_0 ;
  wire \dig[3]_i_1_n_0 ;
  wire \dig[3]_i_20_n_0 ;
  wire \dig[3]_i_21_n_0 ;
  wire [0:0]\dig[3]_i_22 ;
  wire \dig[3]_i_28_n_0 ;
  wire \dig[3]_i_29_n_0 ;
  wire \dig[3]_i_2_n_0 ;
  wire \dig[3]_i_30_n_0 ;
  wire \dig[3]_i_31_n_0 ;
  wire \dig[3]_i_32_n_0 ;
  wire \dig[3]_i_33_n_0 ;
  wire \dig[3]_i_34_n_0 ;
  wire \dig[3]_i_35_n_0 ;
  wire \dig[3]_i_36_n_0 ;
  wire \dig[3]_i_37_n_0 ;
  wire \dig[3]_i_38_n_0 ;
  wire \dig[3]_i_39_n_0 ;
  wire \dig[3]_i_3_n_0 ;
  wire \dig[3]_i_40_n_0 ;
  wire \dig[3]_i_42_n_0 ;
  wire [3:0]\dig[3]_i_44 ;
  wire \dig[3]_i_48_n_0 ;
  wire \dig[3]_i_50_n_0 ;
  wire \dig[3]_i_51_n_0 ;
  wire \dig[3]_i_52_n_0 ;
  wire \dig[3]_i_53_n_0 ;
  wire \dig[3]_i_54_n_0 ;
  wire \dig[3]_i_55_n_0 ;
  wire \dig[3]_i_56_n_0 ;
  wire \dig[3]_i_57_n_0 ;
  wire \dig[3]_i_58_n_0 ;
  wire \dig[3]_i_59_n_0 ;
  wire \dig[3]_i_5_n_0 ;
  wire \dig[3]_i_60_n_0 ;
  wire \dig[3]_i_61_n_0 ;
  wire \dig[3]_i_62_n_0 ;
  wire \dig[3]_i_64_n_0 ;
  wire \dig[3]_i_65_n_0 ;
  wire \dig[3]_i_66_n_0 ;
  wire \dig[3]_i_67_n_0 ;
  wire [3:0]\dig[3]_i_71 ;
  wire \dig[3]_i_72_n_0 ;
  wire \dig[3]_i_73_n_0 ;
  wire \dig[3]_i_74_n_0 ;
  wire [1:0]\dig[3]_i_78 ;
  wire \dig[3]_i_8_n_0 ;
  wire \dig[3]_i_9_n_0 ;
  wire \dig_reg[1]_i_104_n_0 ;
  wire \dig_reg[1]_i_104_n_4 ;
  wire \dig_reg[1]_i_104_n_5 ;
  wire \dig_reg[1]_i_104_n_6 ;
  wire \dig_reg[1]_i_104_n_7 ;
  wire \dig_reg[1]_i_10_n_6 ;
  wire \dig_reg[1]_i_10_n_7 ;
  wire \dig_reg[1]_i_113_n_4 ;
  wire \dig_reg[1]_i_113_n_5 ;
  wire \dig_reg[1]_i_113_n_6 ;
  wire \dig_reg[1]_i_113_n_7 ;
  wire \dig_reg[1]_i_114_n_0 ;
  wire \dig_reg[1]_i_11_n_0 ;
  wire \dig_reg[1]_i_11_n_4 ;
  wire \dig_reg[1]_i_123_n_0 ;
  wire \dig_reg[1]_i_123_n_5 ;
  wire \dig_reg[1]_i_123_n_6 ;
  wire \dig_reg[1]_i_123_n_7 ;
  wire \dig_reg[1]_i_126_n_0 ;
  wire \dig_reg[1]_i_126_n_4 ;
  wire \dig_reg[1]_i_126_n_5 ;
  wire \dig_reg[1]_i_126_n_6 ;
  wire \dig_reg[1]_i_126_n_7 ;
  wire \dig_reg[1]_i_12_n_6 ;
  wire \dig_reg[1]_i_12_n_7 ;
  wire \dig_reg[1]_i_13_n_0 ;
  wire \dig_reg[1]_i_141_n_0 ;
  wire \dig_reg[1]_i_14_n_0 ;
  wire \dig_reg[1]_i_158_n_0 ;
  wire \dig_reg[1]_i_15_n_5 ;
  wire \dig_reg[1]_i_15_n_6 ;
  wire \dig_reg[1]_i_15_n_7 ;
  wire \dig_reg[1]_i_16_n_0 ;
  wire \dig_reg[1]_i_16_n_4 ;
  wire \dig_reg[1]_i_16_n_5 ;
  wire \dig_reg[1]_i_17_n_3 ;
  wire \dig_reg[1]_i_188_n_0 ;
  wire \dig_reg[1]_i_196_n_0 ;
  wire \dig_reg[1]_i_196_n_4 ;
  wire \dig_reg[1]_i_196_n_5 ;
  wire \dig_reg[1]_i_196_n_6 ;
  wire \dig_reg[1]_i_196_n_7 ;
  wire \dig_reg[1]_i_20_n_0 ;
  wire \dig_reg[1]_i_216_n_0 ;
  wire \dig_reg[1]_i_231_n_0 ;
  wire \dig_reg[1]_i_231_n_4 ;
  wire \dig_reg[1]_i_231_n_5 ;
  wire \dig_reg[1]_i_232_n_0 ;
  wire \dig_reg[1]_i_232_n_4 ;
  wire \dig_reg[1]_i_232_n_5 ;
  wire \dig_reg[1]_i_232_n_6 ;
  wire \dig_reg[1]_i_232_n_7 ;
  wire \dig_reg[1]_i_27_n_0 ;
  wire \dig_reg[1]_i_27_n_4 ;
  wire \dig_reg[1]_i_27_n_5 ;
  wire \dig_reg[1]_i_27_n_6 ;
  wire \dig_reg[1]_i_27_n_7 ;
  wire \dig_reg[1]_i_28_n_0 ;
  wire \dig_reg[1]_i_35_n_0 ;
  wire \dig_reg[1]_i_44_n_0 ;
  wire \dig_reg[1]_i_48_n_0 ;
  wire \dig_reg[1]_i_48_n_4 ;
  wire \dig_reg[1]_i_48_n_5 ;
  wire \dig_reg[1]_i_48_n_6 ;
  wire \dig_reg[1]_i_48_n_7 ;
  wire \dig_reg[1]_i_54_n_0 ;
  wire \dig_reg[1]_i_63_n_0 ;
  wire \dig_reg[1]_i_70_n_0 ;
  wire \dig_reg[1]_i_85_n_0 ;
  wire \dig_reg[1]_i_90_n_0 ;
  wire \dig_reg[1]_i_99_n_0 ;
  wire \dig_reg[1]_i_9_n_1 ;
  wire \dig_reg[2]_i_3_n_0 ;
  wire \dig_reg[3]_i_10_n_0 ;
  wire \dig_reg[3]_i_10_n_4 ;
  wire \dig_reg[3]_i_10_n_5 ;
  wire \dig_reg[3]_i_10_n_6 ;
  wire \dig_reg[3]_i_10_n_7 ;
  wire \dig_reg[3]_i_15_n_0 ;
  wire \dig_reg[3]_i_15_n_4 ;
  wire \dig_reg[3]_i_15_n_5 ;
  wire \dig_reg[3]_i_15_n_6 ;
  wire \dig_reg[3]_i_15_n_7 ;
  wire \dig_reg[3]_i_17_n_0 ;
  wire \dig_reg[3]_i_17_n_4 ;
  wire \dig_reg[3]_i_17_n_5 ;
  wire \dig_reg[3]_i_17_n_6 ;
  wire \dig_reg[3]_i_17_n_7 ;
  wire \dig_reg[3]_i_26_n_1 ;
  wire \dig_reg[3]_i_47_n_0 ;
  wire \dig_reg[3]_i_4_n_0 ;
  wire \dig_reg[3]_i_63_n_0 ;
  wire \dig_reg[3]_i_63_n_6 ;
  wire \dig_reg[3]_i_63_n_7 ;
  wire \dig_reg[3]_i_6_n_7 ;
  wire \dig_reg[3]_i_7_n_0 ;
  wire intAddr;
  wire \intAddr[5]_i_2_n_0 ;
  wire \intAddr[6]_i_2_n_0 ;
  wire \intAddr[7]_i_2_n_0 ;
  wire \intAddr[7]_i_4_n_0 ;
  wire [7:0]intAddr__0;
  wire [6:0]\intAddr_reg[7]_0 ;
  wire [13:6]intData;
  wire [13:0]intData1;
  wire \intData[0]_i_1_n_0 ;
  wire \intData[0]_i_2_n_0 ;
  wire \intData[10]_i_1_n_0 ;
  wire \intData[10]_i_2_n_0 ;
  wire \intData[10]_i_3_n_0 ;
  wire \intData[11]_i_10_n_0 ;
  wire \intData[11]_i_12_n_0 ;
  wire \intData[11]_i_13_n_0 ;
  wire \intData[11]_i_14_n_0 ;
  wire \intData[11]_i_15_n_0 ;
  wire \intData[11]_i_16_n_0 ;
  wire \intData[11]_i_18_n_0 ;
  wire \intData[11]_i_19_n_0 ;
  wire \intData[11]_i_1_n_0 ;
  wire \intData[11]_i_20_n_0 ;
  wire \intData[11]_i_22_n_0 ;
  wire \intData[11]_i_23_n_0 ;
  wire \intData[11]_i_24_n_0 ;
  wire \intData[11]_i_25_n_0 ;
  wire \intData[11]_i_27_n_0 ;
  wire \intData[11]_i_28_n_0 ;
  wire \intData[11]_i_29_n_0 ;
  wire \intData[11]_i_2_n_0 ;
  wire \intData[11]_i_30_n_0 ;
  wire \intData[11]_i_32_n_0 ;
  wire \intData[11]_i_33_n_0 ;
  wire \intData[11]_i_34_n_0 ;
  wire \intData[11]_i_35_n_0 ;
  wire \intData[11]_i_36_n_0 ;
  wire \intData[11]_i_37__0_n_0 ;
  wire \intData[11]_i_38_n_0 ;
  wire \intData[11]_i_3_n_0 ;
  wire \intData[11]_i_7_n_0 ;
  wire \intData[11]_i_8_n_0 ;
  wire \intData[11]_i_9_n_0 ;
  wire \intData[12]_i_1_n_0 ;
  wire [1:0]\intData[12]_i_2_0 ;
  wire \intData[12]_i_2_n_0 ;
  wire \intData[12]_i_3_n_0 ;
  wire \intData[13]_i_10__0_n_0 ;
  wire \intData[13]_i_11_n_0 ;
  wire \intData[13]_i_20_n_0 ;
  wire \intData[13]_i_21_n_0 ;
  wire \intData[13]_i_25_n_0 ;
  wire \intData[13]_i_26_n_0 ;
  wire \intData[13]_i_27_n_0 ;
  wire \intData[13]_i_2_n_0 ;
  wire \intData[13]_i_3_n_0 ;
  wire \intData[13]_i_4_n_0 ;
  wire \intData[13]_i_5_n_0 ;
  wire \intData[13]_i_9_n_0 ;
  wire \intData[14]_i_1_n_0 ;
  wire \intData[14]_i_2_n_0 ;
  wire \intData[15]_i_1_n_0 ;
  wire \intData[15]_i_2_n_0 ;
  wire \intData[1]_i_100_n_0 ;
  wire \intData[1]_i_101_n_0 ;
  wire \intData[1]_i_102_n_0 ;
  wire \intData[1]_i_103_n_0 ;
  wire \intData[1]_i_104_n_0 ;
  wire \intData[1]_i_105_n_0 ;
  wire \intData[1]_i_106_n_0 ;
  wire \intData[1]_i_107_n_0 ;
  wire \intData[1]_i_108_n_0 ;
  wire \intData[1]_i_109_n_0 ;
  wire \intData[1]_i_10_n_0 ;
  wire \intData[1]_i_110_n_0 ;
  wire \intData[1]_i_113_n_0 ;
  wire \intData[1]_i_114_n_0 ;
  wire \intData[1]_i_115_n_0 ;
  wire \intData[1]_i_116_n_0 ;
  wire \intData[1]_i_117_n_0 ;
  wire \intData[1]_i_118_n_0 ;
  wire \intData[1]_i_119_n_0 ;
  wire \intData[1]_i_11_n_0 ;
  wire \intData[1]_i_120_n_0 ;
  wire \intData[1]_i_121_n_0 ;
  wire \intData[1]_i_122_n_0 ;
  wire \intData[1]_i_123_n_0 ;
  wire \intData[1]_i_12_n_0 ;
  wire \intData[1]_i_13_n_0 ;
  wire \intData[1]_i_14_n_0 ;
  wire \intData[1]_i_15_n_0 ;
  wire \intData[1]_i_16_n_0 ;
  wire \intData[1]_i_17_n_0 ;
  wire \intData[1]_i_19_n_0 ;
  wire \intData[1]_i_1_n_0 ;
  wire \intData[1]_i_20_n_0 ;
  wire \intData[1]_i_21_n_0 ;
  wire \intData[1]_i_22_n_0 ;
  wire \intData[1]_i_23_n_0 ;
  wire \intData[1]_i_24_n_0 ;
  wire \intData[1]_i_25_n_0 ;
  wire \intData[1]_i_26_n_0 ;
  wire \intData[1]_i_27_n_0 ;
  wire \intData[1]_i_28_n_0 ;
  wire \intData[1]_i_2_n_0 ;
  wire \intData[1]_i_30_n_0 ;
  wire \intData[1]_i_31_n_0 ;
  wire \intData[1]_i_32_n_0 ;
  wire \intData[1]_i_33_n_0 ;
  wire \intData[1]_i_34_n_0 ;
  wire \intData[1]_i_35_n_0 ;
  wire \intData[1]_i_36_n_0 ;
  wire \intData[1]_i_37_n_0 ;
  wire \intData[1]_i_38_n_0 ;
  wire \intData[1]_i_39_n_0 ;
  wire \intData[1]_i_3_n_0 ;
  wire \intData[1]_i_40_n_0 ;
  wire \intData[1]_i_41_n_0 ;
  wire \intData[1]_i_42_n_0 ;
  wire \intData[1]_i_43_n_0 ;
  wire \intData[1]_i_44_n_0 ;
  wire \intData[1]_i_45_n_0 ;
  wire \intData[1]_i_46_n_0 ;
  wire \intData[1]_i_47_n_0 ;
  wire \intData[1]_i_49_n_0 ;
  wire \intData[1]_i_4_n_0 ;
  wire \intData[1]_i_50_n_0 ;
  wire \intData[1]_i_51_n_0 ;
  wire \intData[1]_i_52_n_0 ;
  wire \intData[1]_i_53_n_0 ;
  wire \intData[1]_i_54_n_0 ;
  wire \intData[1]_i_55_n_0 ;
  wire \intData[1]_i_56_n_0 ;
  wire \intData[1]_i_57_n_0 ;
  wire \intData[1]_i_58_n_0 ;
  wire \intData[1]_i_59_n_0 ;
  wire \intData[1]_i_61_n_0 ;
  wire \intData[1]_i_62_n_0 ;
  wire \intData[1]_i_63_n_0 ;
  wire \intData[1]_i_64_n_0 ;
  wire \intData[1]_i_65_n_0 ;
  wire \intData[1]_i_66_n_0 ;
  wire \intData[1]_i_68_n_0 ;
  wire \intData[1]_i_69_n_0 ;
  wire \intData[1]_i_70_n_0 ;
  wire \intData[1]_i_71_n_0 ;
  wire \intData[1]_i_72_n_0 ;
  wire \intData[1]_i_73_n_0 ;
  wire \intData[1]_i_74_n_0 ;
  wire \intData[1]_i_75_n_0 ;
  wire \intData[1]_i_76_n_0 ;
  wire \intData[1]_i_77_n_0 ;
  wire \intData[1]_i_78_n_0 ;
  wire \intData[1]_i_79_n_0 ;
  wire \intData[1]_i_7_n_0 ;
  wire \intData[1]_i_81_n_0 ;
  wire \intData[1]_i_82_n_0 ;
  wire \intData[1]_i_83_n_0 ;
  wire \intData[1]_i_84_n_0 ;
  wire \intData[1]_i_85_n_0 ;
  wire \intData[1]_i_86_n_0 ;
  wire \intData[1]_i_87_n_0 ;
  wire \intData[1]_i_88_n_0 ;
  wire \intData[1]_i_89_n_0 ;
  wire \intData[1]_i_8_n_0 ;
  wire \intData[1]_i_91_n_0 ;
  wire \intData[1]_i_92_n_0 ;
  wire \intData[1]_i_93_n_0 ;
  wire \intData[1]_i_94_n_0 ;
  wire \intData[1]_i_95_n_0 ;
  wire \intData[1]_i_96_n_0 ;
  wire \intData[1]_i_97_n_0 ;
  wire \intData[1]_i_98_n_0 ;
  wire \intData[1]_i_99_n_0 ;
  wire \intData[1]_i_9_n_0 ;
  wire \intData[2]_i_10_n_0 ;
  wire \intData[2]_i_11_n_0 ;
  wire \intData[2]_i_12_n_0 ;
  wire \intData[2]_i_13_n_0 ;
  wire \intData[2]_i_14_n_0 ;
  wire \intData[2]_i_15_n_0 ;
  wire \intData[2]_i_16_n_0 ;
  wire \intData[2]_i_17_n_0 ;
  wire \intData[2]_i_19__0_n_0 ;
  wire \intData[2]_i_1_n_0 ;
  wire \intData[2]_i_20__0_n_0 ;
  wire \intData[2]_i_21__0_n_0 ;
  wire \intData[2]_i_22__0_n_0 ;
  wire \intData[2]_i_23_n_0 ;
  wire \intData[2]_i_25_n_0 ;
  wire \intData[2]_i_26_n_0 ;
  wire \intData[2]_i_27_n_0 ;
  wire \intData[2]_i_28_n_0 ;
  wire \intData[2]_i_29_n_0 ;
  wire \intData[2]_i_2_n_0 ;
  wire \intData[2]_i_30_n_0 ;
  wire \intData[2]_i_31_n_0 ;
  wire \intData[2]_i_32_n_0 ;
  wire \intData[2]_i_34_n_0 ;
  wire \intData[2]_i_35_n_0 ;
  wire \intData[2]_i_36_n_0 ;
  wire \intData[2]_i_37_n_0 ;
  wire \intData[2]_i_38_n_0 ;
  wire \intData[2]_i_39_n_0 ;
  wire \intData[2]_i_3_n_0 ;
  wire \intData[2]_i_40_n_0 ;
  wire \intData[2]_i_41_n_0 ;
  wire \intData[2]_i_42_n_0 ;
  wire \intData[2]_i_43_n_0 ;
  wire \intData[2]_i_44_n_0 ;
  wire \intData[2]_i_45_n_0 ;
  wire \intData[2]_i_4_n_0 ;
  wire \intData[2]_i_6_n_0 ;
  wire \intData[2]_i_7_n_0 ;
  wire \intData[2]_i_8_n_0 ;
  wire \intData[2]_i_9_n_0 ;
  wire \intData[3]_i_11_n_0 ;
  wire \intData[3]_i_12_n_0 ;
  wire \intData[3]_i_13_n_0 ;
  wire \intData[3]_i_14_n_0 ;
  wire \intData[3]_i_15_n_0 ;
  wire \intData[3]_i_16_n_0 ;
  wire \intData[3]_i_1_n_0 ;
  wire \intData[3]_i_20_n_0 ;
  wire \intData[3]_i_21_n_0 ;
  wire \intData[3]_i_22_n_0 ;
  wire \intData[3]_i_23_n_0 ;
  wire \intData[3]_i_24_n_0 ;
  wire \intData[3]_i_2_n_0 ;
  wire [2:0]\intData[3]_i_30__0_0 ;
  wire \intData[3]_i_30__0_n_0 ;
  wire \intData[3]_i_31__0_n_0 ;
  wire [3:0]\intData[3]_i_32__0_0 ;
  wire \intData[3]_i_32__0_n_0 ;
  wire \intData[3]_i_33__0_n_0 ;
  wire \intData[3]_i_34_n_0 ;
  wire \intData[3]_i_35_n_0 ;
  wire \intData[3]_i_36__0_n_0 ;
  wire \intData[3]_i_37_n_0 ;
  wire \intData[3]_i_38_n_0 ;
  wire \intData[3]_i_39__0_n_0 ;
  wire \intData[3]_i_3_n_0 ;
  wire \intData[3]_i_40__0_n_0 ;
  wire \intData[3]_i_41__0_n_0 ;
  wire \intData[3]_i_42__0_n_0 ;
  wire \intData[3]_i_43__0_n_0 ;
  wire \intData[3]_i_44_n_0 ;
  wire \intData[3]_i_45__0_n_0 ;
  wire \intData[3]_i_4_n_0 ;
  wire \intData[3]_i_51_n_0 ;
  wire \intData[3]_i_52_n_0 ;
  wire \intData[3]_i_53_n_0 ;
  wire \intData[3]_i_54_n_0 ;
  wire \intData[3]_i_55_n_0 ;
  wire \intData[3]_i_56_n_0 ;
  wire \intData[3]_i_57_n_0 ;
  wire \intData[3]_i_58_n_0 ;
  wire [0:0]\intData[3]_i_59 ;
  wire \intData[3]_i_62_n_0 ;
  wire \intData[3]_i_63_n_0 ;
  wire \intData[3]_i_64_n_0 ;
  wire [1:0]\intData[3]_i_68 ;
  wire \intData[3]_i_6_n_0 ;
  wire \intData[3]_i_73_n_0 ;
  wire \intData[3]_i_74_n_0 ;
  wire \intData[3]_i_75_n_0 ;
  wire \intData[3]_i_76_n_0 ;
  wire \intData[3]_i_77_n_0 ;
  wire \intData[3]_i_78_n_0 ;
  wire \intData[3]_i_79_n_0 ;
  wire \intData[3]_i_7_n_0 ;
  wire \intData[3]_i_80_n_0 ;
  wire \intData[3]_i_81_n_0 ;
  wire \intData[3]_i_82_n_0 ;
  wire \intData[3]_i_83_n_0 ;
  wire \intData[3]_i_84_n_0 ;
  wire \intData[3]_i_87_n_0 ;
  wire \intData[3]_i_88_n_0 ;
  wire \intData[3]_i_89_n_0 ;
  wire \intData[3]_i_8_n_0 ;
  wire \intData[3]_i_90_n_0 ;
  wire \intData[3]_i_91_n_0 ;
  wire \intData[3]_i_92_n_0 ;
  wire \intData[3]_i_93_n_0 ;
  wire \intData[3]_i_94_n_0 ;
  wire \intData[3]_i_95_n_0 ;
  wire \intData[3]_i_96_n_0 ;
  wire [0:0]\intData[3]_i_97 ;
  wire \intData[3]_i_9_n_0 ;
  wire \intData[4]_i_1_n_0 ;
  wire \intData[4]_i_2_n_0 ;
  wire \intData[4]_i_3_n_0 ;
  wire \intData[4]_i_4_n_0 ;
  wire \intData[4]_i_5_n_0 ;
  wire \intData[4]_i_6_n_0 ;
  wire \intData[4]_i_7_n_0 ;
  wire \intData[5]_i_1_n_0 ;
  wire \intData[5]_i_2_n_0 ;
  wire \intData[5]_i_3_n_0 ;
  wire \intData[5]_i_4_n_0 ;
  wire \intData[5]_i_5_n_0 ;
  wire \intData[5]_i_6_n_0 ;
  wire \intData[5]_i_7_n_0 ;
  wire \intData[5]_i_8_n_0 ;
  wire \intData[6]_i_1_n_0 ;
  wire \intData[6]_i_2_n_0 ;
  wire \intData[6]_i_4_n_0 ;
  wire \intData[6]_i_5_n_0 ;
  wire \intData[6]_i_6_n_0 ;
  wire \intData[6]_i_7_n_0 ;
  wire \intData[6]_i_8_n_0 ;
  wire \intData[6]_i_9_n_0 ;
  wire \intData[7]_i_1_n_0 ;
  wire \intData[7]_i_2_n_0 ;
  wire \intData[7]_i_3_n_0 ;
  wire \intData[7]_i_4_n_0 ;
  wire \intData[7]_i_5_n_0 ;
  wire \intData[7]_i_6_n_0 ;
  wire \intData[8]_i_1_n_0 ;
  wire \intData[8]_i_2_n_0 ;
  wire \intData[8]_i_3_n_0 ;
  wire \intData[8]_i_4_n_0 ;
  wire \intData[8]_i_5_n_0 ;
  wire \intData[8]_i_6_n_0 ;
  wire \intData[9]_i_1_n_0 ;
  wire \intData[9]_i_2_n_0 ;
  wire \intData[9]_i_3_n_0 ;
  wire \intData[9]_i_4_n_0 ;
  wire \intData[9]_i_5_n_0 ;
  wire \intData[9]_i_6_n_0 ;
  wire \intData_reg[11]_i_11_n_0 ;
  wire \intData_reg[11]_i_11_n_4 ;
  wire \intData_reg[11]_i_11_n_5 ;
  wire \intData_reg[11]_i_11_n_6 ;
  wire \intData_reg[11]_i_11_n_7 ;
  wire \intData_reg[11]_i_17_n_0 ;
  wire \intData_reg[11]_i_21_n_0 ;
  wire \intData_reg[11]_i_26_n_0 ;
  wire \intData_reg[11]_i_31_n_0 ;
  wire \intData_reg[11]_i_4_n_0 ;
  wire \intData_reg[11]_i_4_n_4 ;
  wire \intData_reg[11]_i_4_n_5 ;
  wire \intData_reg[11]_i_4_n_6 ;
  wire \intData_reg[11]_i_4_n_7 ;
  wire \intData_reg[11]_i_5_n_0 ;
  wire \intData_reg[11]_i_5_n_4 ;
  wire \intData_reg[11]_i_5_n_5 ;
  wire \intData_reg[11]_i_5_n_6 ;
  wire \intData_reg[11]_i_5_n_7 ;
  wire \intData_reg[11]_i_6_n_0 ;
  wire \intData_reg[11]_i_6_n_4 ;
  wire \intData_reg[11]_i_6_n_5 ;
  wire \intData_reg[11]_i_6_n_6 ;
  wire \intData_reg[11]_i_6_n_7 ;
  wire [0:0]\intData_reg[13]_0 ;
  wire [1:0]\intData_reg[13]_1 ;
  wire \intData_reg[13]_i_17_n_6 ;
  wire \intData_reg[13]_i_17_n_7 ;
  wire \intData_reg[13]_i_18_n_0 ;
  wire \intData_reg[13]_i_18_n_4 ;
  wire \intData_reg[13]_i_18_n_5 ;
  wire \intData_reg[13]_i_18_n_6 ;
  wire \intData_reg[13]_i_18_n_7 ;
  wire \intData_reg[13]_i_6_n_6 ;
  wire \intData_reg[13]_i_7_n_1 ;
  wire \intData_reg[13]_i_7_n_6 ;
  wire \intData_reg[13]_i_7_n_7 ;
  wire [3:0]\intData_reg[14]_0 ;
  wire [3:0]\intData_reg[14]_1 ;
  wire [0:0]\intData_reg[15]_0 ;
  wire [0:0]\intData_reg[15]_1 ;
  wire [0:0]\intData_reg[15]_2 ;
  wire [0:0]\intData_reg[15]_3 ;
  wire [0:0]\intData_reg[15]_4 ;
  wire [1:0]\intData_reg[15]_5 ;
  wire \intData_reg[1]_i_111_n_0 ;
  wire \intData_reg[1]_i_111_n_4 ;
  wire \intData_reg[1]_i_111_n_5 ;
  wire \intData_reg[1]_i_112_n_0 ;
  wire \intData_reg[1]_i_112_n_4 ;
  wire \intData_reg[1]_i_112_n_5 ;
  wire \intData_reg[1]_i_112_n_6 ;
  wire \intData_reg[1]_i_112_n_7 ;
  wire \intData_reg[1]_i_18_n_0 ;
  wire \intData_reg[1]_i_29_n_0 ;
  wire \intData_reg[1]_i_48_n_0 ;
  wire \intData_reg[1]_i_5_n_0 ;
  wire \intData_reg[1]_i_5_n_4 ;
  wire \intData_reg[1]_i_5_n_5 ;
  wire \intData_reg[1]_i_60_n_0 ;
  wire \intData_reg[1]_i_60_n_4 ;
  wire \intData_reg[1]_i_60_n_5 ;
  wire \intData_reg[1]_i_60_n_6 ;
  wire \intData_reg[1]_i_60_n_7 ;
  wire \intData_reg[1]_i_67_n_0 ;
  wire \intData_reg[1]_i_67_n_5 ;
  wire \intData_reg[1]_i_67_n_6 ;
  wire \intData_reg[1]_i_67_n_7 ;
  wire \intData_reg[1]_i_6_n_0 ;
  wire \intData_reg[1]_i_80_n_0 ;
  wire \intData_reg[1]_i_90_n_0 ;
  wire \intData_reg[1]_i_90_n_4 ;
  wire \intData_reg[1]_i_90_n_5 ;
  wire \intData_reg[1]_i_90_n_6 ;
  wire \intData_reg[1]_i_90_n_7 ;
  wire \intData_reg[2]_i_18_n_0 ;
  wire \intData_reg[2]_i_24_n_0 ;
  wire \intData_reg[2]_i_33_n_0 ;
  wire \intData_reg[2]_i_5_n_0 ;
  wire \intData_reg[2]_i_5_n_4 ;
  wire \intData_reg[3]_i_17_n_0 ;
  wire \intData_reg[3]_i_17_n_4 ;
  wire \intData_reg[3]_i_17_n_5 ;
  wire \intData_reg[3]_i_17_n_6 ;
  wire \intData_reg[3]_i_17_n_7 ;
  wire \intData_reg[3]_i_18_n_5 ;
  wire \intData_reg[3]_i_18_n_6 ;
  wire \intData_reg[3]_i_18_n_7 ;
  wire [2:0]\intData_reg[3]_i_19_0 ;
  wire \intData_reg[3]_i_19_n_4 ;
  wire \intData_reg[3]_i_19_n_5 ;
  wire \intData_reg[3]_i_19_n_6 ;
  wire \intData_reg[3]_i_19_n_7 ;
  wire \intData_reg[3]_i_46_n_4 ;
  wire \intData_reg[3]_i_46_n_5 ;
  wire \intData_reg[3]_i_46_n_6 ;
  wire \intData_reg[3]_i_46_n_7 ;
  wire \intData_reg[3]_i_47_n_0 ;
  wire \intData_reg[3]_i_47_n_6 ;
  wire \intData_reg[3]_i_47_n_7 ;
  wire \intData_reg[3]_i_48_n_0 ;
  wire \intData_reg[3]_i_5_n_0 ;
  wire \intData_reg[3]_i_5_n_4 ;
  wire \intData_reg[3]_i_5_n_5 ;
  wire \intData_reg[3]_i_5_n_6 ;
  wire \intData_reg[3]_i_5_n_7 ;
  wire \intData_reg[3]_i_85_n_6 ;
  wire [1:0]\intData_reg[7]_0 ;
  wire [3:0]\intData_reg[9]_0 ;
  wire \intData_reg_n_0_[0] ;
  wire \intData_reg_n_0_[10] ;
  wire \intData_reg_n_0_[11] ;
  wire \intData_reg_n_0_[12] ;
  wire \intData_reg_n_0_[13] ;
  wire \intData_reg_n_0_[14] ;
  wire \intData_reg_n_0_[15] ;
  wire \intData_reg_n_0_[1] ;
  wire \intData_reg_n_0_[2] ;
  wire \intData_reg_n_0_[3] ;
  wire \intData_reg_n_0_[4] ;
  wire \intData_reg_n_0_[5] ;
  wire \intData_reg_n_0_[6] ;
  wire \intData_reg_n_0_[7] ;
  wire \intData_reg_n_0_[8] ;
  wire \intData_reg_n_0_[9] ;
  wire \intReg[0][0]_i_1_n_0 ;
  wire \intReg[0][0]_i_2_n_0 ;
  wire \intReg[0][1]_i_1_n_0 ;
  wire \intReg[0][1]_i_2_n_0 ;
  wire \intReg[0][2]_i_1_n_0 ;
  wire \intReg[0][2]_i_2_n_0 ;
  wire \intReg[0][2]_i_3__0_n_0 ;
  wire \intReg[0][2]_i_4_n_0 ;
  wire \intReg[0][7]_i_1_n_0 ;
  wire \intReg[0][7]_i_2_n_0 ;
  wire \intReg[0][7]_i_4_n_0 ;
  wire \intReg[0][7]_i_5_n_0 ;
  wire \intReg[0][7]_i_6_n_0 ;
  wire \intReg[1][0]_i_1_n_0 ;
  wire \intReg[1][0]_i_2_n_0 ;
  wire \intReg[1][1]_i_1_n_0 ;
  wire \intReg[1][1]_i_2_n_0 ;
  wire \intReg[1][2]_i_1_n_0 ;
  wire \intReg[1][2]_i_2__0_n_0 ;
  wire \intReg[1][3]_i_1_n_0 ;
  wire \intReg[1][4]_i_1_n_0 ;
  wire \intReg[1][5]_i_1_n_0 ;
  wire \intReg[1][7]_i_1_n_0 ;
  wire \intReg[1][7]_i_2_n_0 ;
  wire \intReg[1][7]_i_3_n_0 ;
  wire \intReg[2][0]_i_1_n_0 ;
  wire \intReg[2][0]_i_2_n_0 ;
  wire \intReg[2][1]_i_1_n_0 ;
  wire \intReg[2][1]_i_2_n_0 ;
  wire \intReg[2][2]_i_1_n_0 ;
  wire \intReg[2][2]_i_2_n_0 ;
  wire \intReg[2][2]_i_3__0_n_0 ;
  wire \intReg[2][3]_i_1_n_0 ;
  wire \intReg[2][4]_i_1_n_0 ;
  wire \intReg[2][5]_i_1_n_0 ;
  wire \intReg[2][7]_i_1_n_0 ;
  wire \intReg[2][7]_i_2_n_0 ;
  wire \intReg[2][7]_i_3_n_0 ;
  wire \intReg[2][7]_i_4_n_0 ;
  wire \intReg[2][7]_i_5_n_0 ;
  wire \intReg[3][0]_i_1_n_0 ;
  wire \intReg[3][0]_i_2_n_0 ;
  wire \intReg[3][1]_i_1_n_0 ;
  wire \intReg[3][1]_i_2_n_0 ;
  wire \intReg[3][2]_i_1_n_0 ;
  wire \intReg[3][2]_i_2__0_n_0 ;
  wire \intReg[3][3]_i_1_n_0 ;
  wire \intReg[3][4]_i_1_n_0 ;
  wire \intReg[3][5]_i_1_n_0 ;
  wire \intReg[3][7]_i_1_n_0 ;
  wire \intReg[3][7]_i_2_n_0 ;
  wire \intReg[3][7]_i_3_n_0 ;
  wire \intReg[4][0]_i_1_n_0 ;
  wire \intReg[4][0]_i_2_n_0 ;
  wire \intReg[4][1]_i_1_n_0 ;
  wire \intReg[4][1]_i_2_n_0 ;
  wire \intReg[4][2]_i_1_n_0 ;
  wire \intReg[4][2]_i_2_n_0 ;
  wire \intReg[4][2]_i_3__0_n_0 ;
  wire \intReg[4][3]_i_1_n_0 ;
  wire \intReg[4][4]_i_1_n_0 ;
  wire \intReg[4][5]_i_1_n_0 ;
  wire \intReg[4][7]_i_1_n_0 ;
  wire \intReg[4][7]_i_2_n_0 ;
  wire \intReg[4][7]_i_3_n_0 ;
  wire \intReg[4][7]_i_4_n_0 ;
  wire \intReg[4][7]_i_5_n_0 ;
  wire \intReg[5][0]_i_1_n_0 ;
  wire \intReg[5][0]_i_2_n_0 ;
  wire \intReg[5][1]_i_1_n_0 ;
  wire \intReg[5][1]_i_2_n_0 ;
  wire \intReg[5][2]_i_1_n_0 ;
  wire \intReg[5][2]_i_2__0_n_0 ;
  wire \intReg[5][3]_i_1_n_0 ;
  wire \intReg[5][4]_i_1_n_0 ;
  wire \intReg[5][5]_i_1_n_0 ;
  wire \intReg[5][7]_i_1_n_0 ;
  wire \intReg[5][7]_i_2_n_0 ;
  wire \intReg[5][7]_i_3_n_0 ;
  wire \intReg[6][0]_i_1_n_0 ;
  wire \intReg[6][0]_i_2__0_n_0 ;
  wire \intReg[6][1]_i_1_n_0 ;
  wire \intReg[6][1]_i_2__0_n_0 ;
  wire \intReg[6][2]_i_1_n_0 ;
  wire \intReg[6][2]_i_2__0_n_0 ;
  wire \intReg[6][2]_i_3__0_n_0 ;
  wire \intReg[6][3]_i_1__0_n_0 ;
  wire \intReg[6][4]_i_1__0_n_0 ;
  wire \intReg[6][5]_i_1__0_n_0 ;
  wire \intReg[6][7]_i_1_n_0 ;
  wire \intReg[6][7]_i_2__0_n_0 ;
  wire \intReg[6][7]_i_3__0_n_0 ;
  wire \intReg[6][7]_i_4_n_0 ;
  wire \intReg[6][7]_i_5_n_0 ;
  wire \intReg[7][0]_i_1_n_0 ;
  wire \intReg[7][0]_i_2__0_n_0 ;
  wire \intReg[7][1]_i_1_n_0 ;
  wire \intReg[7][1]_i_2_n_0 ;
  wire \intReg[7][2]_i_1_n_0 ;
  wire \intReg[7][2]_i_2_n_0 ;
  wire \intReg[7][2]_i_3_n_0 ;
  wire \intReg[7][3]_i_1__0_n_0 ;
  wire \intReg[7][4]_i_1__0_n_0 ;
  wire \intReg[7][5]_i_1__0_n_0 ;
  wire \intReg[7][7]_i_1_n_0 ;
  wire \intReg[7][7]_i_2__0_n_0 ;
  wire \intReg[7][7]_i_3__0_n_0 ;
  wire [0:0]\intReg_reg[1][5]_0 ;
  wire [6:0]\intReg_reg[2][7]_0 ;
  wire [6:0]\intReg_reg[3][7]_0 ;
  wire [6:0]\intReg_reg[4][7]_0 ;
  wire [6:0]\intReg_reg[5][7]_0 ;
  wire [6:0]\intReg_reg[6][7]_0 ;
  wire [6:0]\intReg_reg[7][7]_0 ;
  wire [7:0]maxAddrPort;
  wire neg;
  wire neg_i_1_n_0;
  wire [15:0]neg_reg_0;
  wire newOpReg;
  wire [15:1]numDig3;
  wire \numDig[0]_i_10_n_0 ;
  wire \numDig[0]_i_11_n_0 ;
  wire \numDig[0]_i_12_n_0 ;
  wire \numDig[0]_i_13_n_0 ;
  wire \numDig[0]_i_1_n_0 ;
  wire \numDig[0]_i_2_n_0 ;
  wire \numDig[0]_i_3_n_0 ;
  wire \numDig[0]_i_4_n_0 ;
  wire \numDig[0]_i_5_n_0 ;
  wire \numDig[0]_i_6_n_0 ;
  wire \numDig[0]_i_7_n_0 ;
  wire \numDig[0]_i_8_n_0 ;
  wire \numDig[0]_i_9_n_0 ;
  wire \numDig[1]_i_10_n_0 ;
  wire \numDig[1]_i_11_n_0 ;
  wire \numDig[1]_i_1_n_0 ;
  wire \numDig[1]_i_3_n_0 ;
  wire \numDig[1]_i_4_n_0 ;
  wire \numDig[1]_i_5_n_0 ;
  wire \numDig[1]_i_6_n_0 ;
  wire \numDig[1]_i_7_n_0 ;
  wire \numDig[1]_i_8_n_0 ;
  wire \numDig[1]_i_9_n_0 ;
  wire \numDig[2]_i_10_n_0 ;
  wire \numDig[2]_i_11_n_0 ;
  wire \numDig[2]_i_13_n_0 ;
  wire \numDig[2]_i_14_n_0 ;
  wire \numDig[2]_i_15_n_0 ;
  wire \numDig[2]_i_16_n_0 ;
  wire \numDig[2]_i_18_n_0 ;
  wire \numDig[2]_i_19_n_0 ;
  wire \numDig[2]_i_1_n_0 ;
  wire \numDig[2]_i_20_n_0 ;
  wire \numDig[2]_i_21_n_0 ;
  wire \numDig[2]_i_22_n_0 ;
  wire \numDig[2]_i_23_n_0 ;
  wire \numDig[2]_i_24_n_0 ;
  wire \numDig[2]_i_25_n_0 ;
  wire \numDig[2]_i_26_n_0 ;
  wire \numDig[2]_i_2_n_0 ;
  wire \numDig[2]_i_4_n_0 ;
  wire \numDig[2]_i_5_n_0 ;
  wire \numDig[2]_i_7_n_0 ;
  wire \numDig[2]_i_8_n_0 ;
  wire \numDig[2]_i_9_n_0 ;
  wire \numDig_reg[1]_i_2_n_0 ;
  wire \numDig_reg[2]_i_12_n_0 ;
  wire \numDig_reg[2]_i_17_n_0 ;
  wire \numDig_reg[2]_i_3_n_0 ;
  wire \numDig_reg[2]_i_6_n_0 ;
  wire \num_reg[0] ;
  wire [2:0]p_0_in;
  wire [7:3]p_3_in;
  wire [6:0]\regPort[0] ;
  wire [7:0]\regPort[1] ;
  wire [7:0]\regPort[2] ;
  wire [7:0]\regPort[3] ;
  wire [7:0]\regPort[4] ;
  wire [7:0]\regPort[5] ;
  wire [7:0]\regPort[6] ;
  wire [7:0]\regPort[7] ;
  wire space;
  wire write;
  wire wtNeg;
  wire [3:0]\NLW_dig_reg[1]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[1]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_104_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_113_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_114_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_114_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_12_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[1]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_123_CO_UNCONNECTED ;
  wire [3:3]\NLW_dig_reg[1]_i_123_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_126_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_141_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_141_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_15_CO_UNCONNECTED ;
  wire [3:3]\NLW_dig_reg[1]_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_158_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_158_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_16_CO_UNCONNECTED ;
  wire [1:0]\NLW_dig_reg[1]_i_16_O_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[1]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_188_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_188_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_196_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_20_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_216_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_216_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_231_CO_UNCONNECTED ;
  wire [1:0]\NLW_dig_reg[1]_i_231_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_232_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_27_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_28_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_35_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_35_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_44_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_44_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_48_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_54_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_54_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_63_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_63_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_70_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_70_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_85_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_85_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_90_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_90_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[1]_i_99_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[1]_i_99_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_15_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[3]_i_26_CO_UNCONNECTED ;
  wire [3:2]\NLW_dig_reg[3]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[3]_i_27_CO_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[3]_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_47_CO_UNCONNECTED ;
  wire [3:0]\NLW_dig_reg[3]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_dig_reg[3]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_63_CO_UNCONNECTED ;
  wire [2:0]\NLW_dig_reg[3]_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_26_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_26_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_31_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[11]_i_31_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_17_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[13]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_19_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[13]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[13]_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[13]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_111_CO_UNCONNECTED ;
  wire [1:0]\NLW_intData_reg[1]_i_111_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_112_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_18_CO_UNCONNECTED ;
  wire [1:0]\NLW_intData_reg[1]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[1]_i_29_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_48_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[1]_i_48_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_5_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[1]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_60_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_67_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[1]_i_67_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_80_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[1]_i_80_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[1]_i_90_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[2]_i_24_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[2]_i_33_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[2]_i_5_CO_UNCONNECTED ;
  wire [0:0]\NLW_intData_reg[2]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_18_CO_UNCONNECTED ;
  wire [3:3]\NLW_intData_reg[3]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_46_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_47_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_48_CO_UNCONNECTED ;
  wire [2:0]\NLW_intData_reg[3]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_50_CO_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_85_CO_UNCONNECTED ;
  wire [3:2]\NLW_intData_reg[3]_i_85_O_UNCONNECTED ;
  wire [3:0]\NLW_intData_reg[3]_i_86_CO_UNCONNECTED ;
  wire [3:1]\NLW_intData_reg[3]_i_86_O_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[2]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[2]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_numDig_reg[2]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_numDig_reg[2]_i_6_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cs[10]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[9] ),
        .I1(convert),
        .I2(\FSM_onehot_cs[10]_i_2_n_0 ),
        .I3(write),
        .I4(\FSM_onehot_cs_reg[8]_0 [1]),
        .I5(clr),
        .O(\FSM_onehot_cs[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cs[10]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(count),
        .I2(\FSM_onehot_cs_reg[0]_0 ),
        .I3(space),
        .I4(chNeg),
        .I5(wtNeg),
        .O(\FSM_onehot_cs[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(neg),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\FSM_onehot_cs[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0FFE0E0)) 
    \FSM_onehot_cs[5]_i_1 
       (.I0(p_0_in[2]),
        .I1(\FSM_onehot_cs[5]_i_2_n_0 ),
        .I2(write),
        .I3(neg),
        .I4(\FSM_onehot_cs_reg_n_0_[3] ),
        .I5(wtNeg),
        .O(\FSM_onehot_cs[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cs[5]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\FSM_onehot_cs[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_cs[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(write),
        .O(\FSM_onehot_cs[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(clr),
        .Q(\FSM_onehot_cs_reg[8]_0 [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[10] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs_reg_n_0_[9] ),
        .Q(clr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs_reg[8]_0 [0]),
        .Q(count),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(count),
        .Q(chNeg),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(chNeg),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs[4]_i_1_n_0 ),
        .Q(wtNeg),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[5] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs[5]_i_1_n_0 ),
        .Q(convert),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[6] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(convert),
        .Q(write),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[7] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs[7]_i_1_n_0 ),
        .Q(space),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[8] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(space),
        .Q(\FSM_onehot_cs_reg[8]_0 [1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "checkneg:00000000100,gotoneg:00000001000,countdig:00000000010,send:00100000000,idle:00000000001,reset:10000000000,writeconv:00001000000,waittoclear:01000000000,conv:00000100000,addspace:00010000000,writeneg:00000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[9] 
       (.C(clkPort),
        .CE(\FSM_onehot_cs[10]_i_1_n_0 ),
        .D(\FSM_onehot_cs_reg[8]_0 [1]),
        .Q(\FSM_onehot_cs_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_cs[0]_i_2__0 
       (.I0(\FSM_onehot_cs_reg[8]_0 [1]),
        .I1(\FSM_sequential_cs_reg[0] ),
        .I2(newOpReg),
        .O(\FSM_onehot_cs_reg[8]_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[0]_i_1 
       (.I0(\dig[0]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(\dig[0]_i_3_n_0 ),
        .I3(dig),
        .I4(data0[0]),
        .O(\dig[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[0]_i_10 
       (.I0(\dig[0]_i_14_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\dig[0]_i_15_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[0]_i_16_n_0 ),
        .O(\dig[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[0]_i_11 
       (.I0(\dig[0]_i_17_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\dig[0]_i_16_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[0]_i_14_n_0 ),
        .O(\dig[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[0]_i_12 
       (.I0(\dig[0]_i_15_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\dig[0]_i_17_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[0]_i_18_n_0 ),
        .O(\dig[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[0]_i_13 
       (.I0(\dig[0]_i_18_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\dig[0]_i_14_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[0]_i_17_n_0 ),
        .O(\dig[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[0]_i_14 
       (.I0(\dig[2]_i_13_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[2]_i_14_n_0 ),
        .O(\dig[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[0]_i_15 
       (.I0(\dig[2]_i_14_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[2]_i_15_n_0 ),
        .O(\dig[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[0]_i_16 
       (.I0(\dig[2]_i_16_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[2]_i_12_n_0 ),
        .O(\dig[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[0]_i_17 
       (.I0(\dig[2]_i_15_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[2]_i_16_n_0 ),
        .O(\dig[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[0]_i_18 
       (.I0(\dig[2]_i_12_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[2]_i_13_n_0 ),
        .O(\dig[0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dig[0]_i_2 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(p_0_in[1]),
        .I2(\dig[0]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .I4(\dig[0]_i_5_n_0 ),
        .O(\dig[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[0]_i_3 
       (.I0(\dig[0]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(\dig[0]_i_7_n_0 ),
        .I3(p_0_in[1]),
        .I4(\intData_reg_n_0_[0] ),
        .O(\dig[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAA59)) 
    \dig[0]_i_4 
       (.I0(\dig_reg[1]_i_11_n_4 ),
        .I1(\dig_reg[1]_i_10_n_6 ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[1]_i_9_n_1 ),
        .O(\dig[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF40B)) 
    \dig[0]_i_5 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[3]_i_6_n_7 ),
        .I2(\dig_reg[1]_i_13_n_0 ),
        .I3(\intData_reg[15]_2 ),
        .O(\dig[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF40B)) 
    \dig[0]_i_6 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[1]_i_15_n_5 ),
        .I2(\dig_reg[1]_i_17_n_3 ),
        .I3(\dig_reg[1]_i_16_n_5 ),
        .O(\dig[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[0]_i_7 
       (.I0(\dig[0]_i_8_n_0 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\dig[0]_i_9_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData[1]_i_7_n_0 ),
        .O(\dig[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[0]_i_8 
       (.I0(\dig[0]_i_10_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\dig[0]_i_11_n_0 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\dig[2]_i_8_n_0 ),
        .O(\dig[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[0]_i_9 
       (.I0(\dig[0]_i_12_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\dig[0]_i_11_n_0 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\dig[0]_i_13_n_0 ),
        .O(\dig[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[1]_i_1 
       (.I0(\dig[1]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(\dig[1]_i_3_n_0 ),
        .I3(dig),
        .I4(data0[1]),
        .O(\dig[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_100 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_101 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_102 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_103 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[1]_i_105 
       (.I0(\dig_reg[1]_i_113_n_4 ),
        .I1(\dig_reg[3]_i_15_n_5 ),
        .I2(\dig_reg[1]_i_113_n_7 ),
        .O(\dig[1]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[1]_i_106 
       (.I0(\dig_reg[1]_i_113_n_5 ),
        .I1(\dig_reg[3]_i_15_n_6 ),
        .I2(\dig_reg[3]_i_15_n_4 ),
        .O(\dig[1]_i_106_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[1]_i_107 
       (.I0(\dig_reg[1]_i_113_n_6 ),
        .I1(\dig_reg[3]_i_15_n_7 ),
        .I2(\dig_reg[3]_i_15_n_5 ),
        .O(\dig[1]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[1]_i_108 
       (.I0(\dig_reg[1]_i_113_n_7 ),
        .I1(\dig_reg[1]_i_16_n_4 ),
        .I2(\dig_reg[3]_i_15_n_6 ),
        .O(\dig[1]_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \dig[1]_i_109 
       (.I0(\dig_reg[1]_i_113_n_7 ),
        .I1(\dig_reg[3]_i_15_n_5 ),
        .I2(\dig_reg[1]_i_113_n_4 ),
        .I3(\dig_reg[3]_i_15_n_4 ),
        .I4(\dig_reg[1]_i_113_n_6 ),
        .O(\dig[1]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[1]_i_110 
       (.I0(\dig_reg[3]_i_15_n_4 ),
        .I1(\dig_reg[3]_i_15_n_6 ),
        .I2(\dig_reg[1]_i_113_n_5 ),
        .I3(\dig_reg[1]_i_113_n_4 ),
        .I4(\dig_reg[3]_i_15_n_5 ),
        .I5(\dig_reg[1]_i_113_n_7 ),
        .O(\dig[1]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[1]_i_111 
       (.I0(\dig_reg[3]_i_15_n_5 ),
        .I1(\dig_reg[3]_i_15_n_7 ),
        .I2(\dig_reg[1]_i_113_n_6 ),
        .I3(\dig_reg[1]_i_113_n_5 ),
        .I4(\dig_reg[3]_i_15_n_6 ),
        .I5(\dig_reg[3]_i_15_n_4 ),
        .O(\dig[1]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[1]_i_112 
       (.I0(\dig_reg[3]_i_15_n_6 ),
        .I1(\dig_reg[1]_i_16_n_4 ),
        .I2(\dig_reg[1]_i_113_n_7 ),
        .I3(\dig_reg[1]_i_113_n_6 ),
        .I4(\dig_reg[3]_i_15_n_7 ),
        .I5(\dig_reg[3]_i_15_n_5 ),
        .O(\dig[1]_i_112_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[1]_i_115 
       (.I0(\dig[1]_i_195_n_0 ),
        .I1(\dig_reg[1]_i_196_n_4 ),
        .I2(\dig[1]_i_197_n_0 ),
        .O(\dig[1]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dig[1]_i_116 
       (.I0(\dig[1]_i_198_n_0 ),
        .I1(\dig_reg[1]_i_196_n_5 ),
        .I2(\dig[1]_i_199_n_0 ),
        .O(\dig[1]_i_116_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \dig[1]_i_117 
       (.I0(\dig_reg[1]_i_196_n_5 ),
        .I1(\dig[1]_i_200_n_0 ),
        .I2(\intData_reg_n_0_[1] ),
        .I3(\dig[1]_i_201_n_0 ),
        .O(\dig[1]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \dig[1]_i_118 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\dig_reg[1]_i_196_n_6 ),
        .I3(\dig[1]_i_202_n_0 ),
        .I4(\intData_reg_n_0_[1] ),
        .I5(\dig_reg[1]_i_196_n_5 ),
        .O(\dig[1]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \dig[1]_i_119 
       (.I0(\dig[1]_i_115_n_0 ),
        .I1(\dig[1]_i_203_n_0 ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\dig[1]_i_204_n_0 ),
        .I5(\dig_reg[1]_i_126_n_7 ),
        .O(\dig[1]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h474747B8B8B847B8)) 
    \dig[1]_i_120 
       (.I0(\dig[1]_i_198_n_0 ),
        .I1(\dig_reg[1]_i_196_n_5 ),
        .I2(\dig[1]_i_199_n_0 ),
        .I3(\dig[1]_i_205_n_0 ),
        .I4(\dig_reg[1]_i_196_n_4 ),
        .I5(\dig[1]_i_206_n_0 ),
        .O(\dig[1]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h47471DE2B8B81DE2)) 
    \dig[1]_i_121 
       (.I0(\dig[1]_i_201_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\dig[1]_i_200_n_0 ),
        .I3(\dig[1]_i_207_n_0 ),
        .I4(\dig_reg[1]_i_196_n_5 ),
        .I5(\dig[1]_i_208_n_0 ),
        .O(\dig[1]_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h6A9A9A6A)) 
    \dig[1]_i_122 
       (.I0(\dig[1]_i_118_n_0 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[0] ),
        .I4(\dig_reg[1]_i_196_n_6 ),
        .O(\dig[1]_i_122_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \dig[1]_i_124 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\dig_reg[1]_i_126_n_4 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \dig[1]_i_125 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\dig_reg[1]_i_126_n_4 ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_125_n_0 ));
  LUT4 #(
    .INIT(16'hF9F6)) 
    \dig[1]_i_127 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_126_n_4 ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'h9060)) 
    \dig[1]_i_128 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_126_n_4 ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \dig[1]_i_129 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig_reg[1]_i_126_n_6 ),
        .I3(\intData_reg_n_0_[6] ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_129_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \dig[1]_i_130 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig_reg[1]_i_126_n_6 ),
        .I3(\intData_reg_n_0_[6] ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_130_n_0 ));
  LUT4 #(
    .INIT(16'hF9F6)) 
    \dig[1]_i_131 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[1]_i_126_n_6 ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_131_n_0 ));
  LUT4 #(
    .INIT(16'h9060)) 
    \dig[1]_i_132 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[1]_i_126_n_6 ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_132_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[1]_i_133 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\dig_reg[1]_i_123_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \dig[1]_i_134 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\dig_reg[1]_i_123_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_134_n_0 ));
  LUT5 #(
    .INIT(32'hA596965A)) 
    \dig[1]_i_135 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\dig_reg[1]_i_126_n_4 ),
        .I4(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_135_n_0 ));
  LUT5 #(
    .INIT(32'h5A6969A5)) 
    \dig[1]_i_136 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\dig_reg[1]_i_126_n_4 ),
        .O(\dig[1]_i_136_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[1]_i_137 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_126_n_4 ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_137_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \dig[1]_i_138 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_126_n_4 ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_138_n_0 ));
  LUT5 #(
    .INIT(32'hA596965A)) 
    \dig[1]_i_139 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig_reg[1]_i_126_n_6 ),
        .I4(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_139_n_0 ));
  LUT5 #(
    .INIT(32'h5A6969A5)) 
    \dig[1]_i_140 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData_reg_n_0_[6] ),
        .I4(\dig_reg[1]_i_126_n_6 ),
        .O(\dig[1]_i_140_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_142 
       (.I0(\dig_reg[1]_i_15_n_7 ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_142_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_143 
       (.I0(\dig_reg[1]_i_48_n_4 ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_143_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_144 
       (.I0(\dig_reg[1]_i_48_n_5 ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_145 
       (.I0(\dig_reg[1]_i_48_n_6 ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_145_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_146 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[1]_i_15_n_7 ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\dig_reg[1]_i_15_n_6 ),
        .O(\dig[1]_i_146_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_147 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[1]_i_48_n_4 ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\dig_reg[1]_i_15_n_7 ),
        .O(\dig[1]_i_147_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_148 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[1]_i_48_n_5 ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\dig_reg[1]_i_48_n_4 ),
        .O(\dig[1]_i_148_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_149 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[1]_i_48_n_6 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig_reg[1]_i_48_n_5 ),
        .O(\dig[1]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[1]_i_150 
       (.I0(\dig[3]_i_54_n_0 ),
        .I1(\dig[3]_i_50_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[3]_i_51_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[3]_i_52_n_0 ),
        .O(\dig[1]_i_150_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_151 
       (.I0(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_151_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_152 
       (.I0(\dig_reg[1]_i_12_n_7 ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_152_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_153 
       (.I0(\dig_reg[1]_i_11_n_4 ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_154 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .O(\dig[1]_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \dig[1]_i_155 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_12_n_6 ),
        .I2(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_155_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_156 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[1]_i_12_n_7 ),
        .I2(\dig_reg[1]_i_12_n_6 ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_156_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_157 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig_reg[1]_i_12_n_7 ),
        .O(\dig[1]_i_157_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_159 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_159_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_160 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_160_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_161 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_161_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_162 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_162_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_163 
       (.I0(\dig_reg[3]_i_63_n_6 ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_163_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_164 
       (.I0(\dig_reg[3]_i_63_n_7 ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_164_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_165 
       (.I0(\intData_reg[14]_1 [0]),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_165_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_166 
       (.I0(\intData_reg[15]_2 ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_166_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[1]_i_167 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[3]_i_63_n_6 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\dig_reg[3]_i_17_n_7 ),
        .O(\dig[1]_i_167_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[1]_i_168 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[3]_i_63_n_7 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\dig_reg[3]_i_63_n_6 ),
        .O(\dig[1]_i_168_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[1]_i_169 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[14]_1 [0]),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig_reg[3]_i_63_n_7 ),
        .O(\dig[1]_i_169_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_170 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[15]_2 ),
        .I2(\intData_reg[14]_1 [0]),
        .I3(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_170_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_171 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_171_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_172 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_172_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_173 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[0] ),
        .O(\dig[1]_i_173_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[1]_i_174 
       (.I0(\dig_reg[3]_i_15_n_4 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .O(\dig[1]_i_174_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[1]_i_175 
       (.I0(\dig_reg[3]_i_15_n_4 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .O(\dig[1]_i_175_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_176 
       (.I0(\dig_reg[3]_i_15_n_6 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .O(\dig[1]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dig[1]_i_177 
       (.I0(\dig_reg[3]_i_15_n_7 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .I2(\dig_reg[3]_i_15_n_4 ),
        .I3(\dig_reg[1]_i_113_n_7 ),
        .I4(\dig_reg[1]_i_16_n_4 ),
        .I5(\dig_reg[3]_i_15_n_6 ),
        .O(\dig[1]_i_177_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \dig[1]_i_178 
       (.I0(\dig_reg[3]_i_15_n_4 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .I3(\dig_reg[1]_i_16_n_4 ),
        .I4(\dig_reg[3]_i_15_n_5 ),
        .O(\dig[1]_i_178_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_179 
       (.I0(\dig_reg[1]_i_16_n_5 ),
        .I1(\dig_reg[3]_i_15_n_6 ),
        .I2(\dig_reg[1]_i_16_n_4 ),
        .I3(\dig_reg[3]_i_15_n_5 ),
        .O(\dig[1]_i_179_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[1]_i_18 
       (.I0(\dig[1]_i_66__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\dig[1]_i_67__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[1]_i_68__0_n_0 ),
        .O(\dig[1]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_180 
       (.I0(\dig_reg[3]_i_15_n_6 ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .O(\dig[1]_i_180_n_0 ));
  LUT4 #(
    .INIT(16'h80FE)) 
    \dig[1]_i_181 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[1]_i_123_n_0 ),
        .O(\dig[1]_i_181_n_0 ));
  LUT5 #(
    .INIT(32'h62209110)) 
    \dig[1]_i_182 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[1]_i_123_n_0 ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_182_n_0 ));
  LUT5 #(
    .INIT(32'h38832002)) 
    \dig[1]_i_183 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[1]_i_123_n_0 ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_183_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dig[1]_i_184 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[1]_i_123_n_0 ),
        .O(\dig[1]_i_184_n_0 ));
  LUT4 #(
    .INIT(16'h70F1)) 
    \dig[1]_i_185 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg_n_0_[13] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[1]_i_123_n_0 ),
        .O(\dig[1]_i_185_n_0 ));
  LUT5 #(
    .INIT(32'h1C3870F1)) 
    \dig[1]_i_186 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\dig_reg[1]_i_123_n_0 ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_186_n_0 ));
  LUT6 #(
    .INIT(64'hC993C3333CCC6CC9)) 
    \dig[1]_i_187 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\dig_reg[1]_i_123_n_0 ),
        .I5(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_187_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[1]_i_189 
       (.I0(\dig_reg[1]_i_196_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_189_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[1]_i_19 
       (.I0(\dig[1]_i_69__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\dig[1]_i_68__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[1]_i_66__0_n_0 ),
        .O(\dig[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[1]_i_190 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\dig_reg[1]_i_196_n_7 ),
        .O(\dig[1]_i_190_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \dig[1]_i_191 
       (.I0(\dig[1]_i_189_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig_reg[1]_i_196_n_7 ),
        .O(\dig[1]_i_191_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \dig[1]_i_192 
       (.I0(\dig_reg[1]_i_196_n_7 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig_reg[1]_i_232_n_4 ),
        .I4(\intData_reg_n_0_[0] ),
        .O(\dig[1]_i_192_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[1]_i_193 
       (.I0(\dig_reg[1]_i_232_n_4 ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_193_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_194 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\dig_reg[1]_i_232_n_5 ),
        .O(\dig[1]_i_194_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEBBEC33C8228)) 
    \dig[1]_i_195 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\dig_reg[1]_i_126_n_7 ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'hF88F80088FF80880)) 
    \dig[1]_i_197 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\dig_reg[1]_i_126_n_7 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[9] ),
        .I5(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBC382FFBE3C28)) 
    \dig[1]_i_198 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\dig_reg[1]_i_196_n_4 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_198_n_0 ));
  LUT6 #(
    .INIT(64'hF88F80088FF80880)) 
    \dig[1]_i_199 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\dig_reg[1]_i_196_n_4 ),
        .I3(\intData_reg_n_0_[2] ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_199_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dig[1]_i_2 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(\dig[1]_i_5_n_0 ),
        .I3(p_0_in[0]),
        .I4(\dig[1]_i_6_n_0 ),
        .O(\dig[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \dig[1]_i_200 
       (.I0(\dig_reg[1]_i_196_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_200_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \dig[1]_i_201 
       (.I0(\dig_reg[1]_i_196_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_201_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_202 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_202_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \dig[1]_i_203 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[1]_i_126_n_6 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_203_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \dig[1]_i_204 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[1]_i_126_n_6 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_204_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \dig[1]_i_205 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\dig_reg[1]_i_126_n_7 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_205_n_0 ));
  LUT6 #(
    .INIT(64'hC33C3CC396696996)) 
    \dig[1]_i_206 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\dig_reg[1]_i_126_n_7 ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData_reg_n_0_[9] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_206_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \dig[1]_i_207 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\dig_reg[1]_i_196_n_4 ),
        .I3(\intData_reg_n_0_[2] ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_207_n_0 ));
  LUT6 #(
    .INIT(64'hC3963C693C69C396)) 
    \dig[1]_i_208 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\dig_reg[1]_i_196_n_4 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_208_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_209 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_209_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_21 
       (.I0(\dig_reg[1]_i_10_n_7 ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_210 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_210_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_211 
       (.I0(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_211_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_212 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_212_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_213 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_213_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_214 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_214_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_215 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_215_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_217 
       (.I0(\dig_reg[1]_i_48_n_7 ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_217_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_218 
       (.I0(\dig_reg[1]_i_104_n_4 ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_218_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_219 
       (.I0(\dig_reg[1]_i_104_n_5 ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_219_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_22 
       (.I0(\dig_reg[1]_i_27_n_4 ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_220 
       (.I0(\dig_reg[1]_i_104_n_6 ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_220_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_221 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\dig_reg[1]_i_48_n_7 ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[1]_i_48_n_6 ),
        .O(\dig[1]_i_221_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_222 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[1]_i_104_n_4 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig_reg[1]_i_48_n_7 ),
        .O(\dig[1]_i_222_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_223 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig_reg[1]_i_104_n_5 ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\dig_reg[1]_i_104_n_4 ),
        .O(\dig[1]_i_223_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_224 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\dig_reg[1]_i_104_n_6 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\dig_reg[1]_i_104_n_5 ),
        .O(\dig[1]_i_224_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_225 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_225_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_226 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_226_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_227 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_227_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_228 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\dig_reg[1]_i_232_n_6 ),
        .O(\dig[1]_i_228_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_229 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\dig_reg[1]_i_232_n_7 ),
        .O(\dig[1]_i_229_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_23 
       (.I0(\dig_reg[1]_i_27_n_5 ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_230 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\dig_reg[1]_i_231_n_4 ),
        .O(\dig[1]_i_230_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_233 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_233_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_234 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_234_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_235 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_235_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_236 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_236_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_237 
       (.I0(\dig_reg[1]_i_104_n_7 ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_237_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_238 
       (.I0(\dig_reg[3]_i_15_n_7 ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_238_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_239 
       (.I0(\dig_reg[1]_i_16_n_4 ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_239_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_24 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[1]_i_10_n_7 ),
        .I2(\dig_reg[1]_i_10_n_6 ),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_240 
       (.I0(\dig_reg[1]_i_16_n_5 ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_240_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[1]_i_241 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\dig_reg[1]_i_104_n_7 ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\dig_reg[1]_i_104_n_6 ),
        .O(\dig[1]_i_241_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[1]_i_242 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\dig_reg[3]_i_15_n_7 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig_reg[1]_i_104_n_7 ),
        .O(\dig[1]_i_242_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_243 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\dig_reg[1]_i_16_n_4 ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .I3(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_243_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_244 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\dig_reg[1]_i_16_n_5 ),
        .I2(\dig_reg[1]_i_16_n_4 ),
        .I3(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_244_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_245 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\dig[1]_i_245_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_246 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\dig[1]_i_246_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_247 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_247_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_248 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_248_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_249 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\dig[1]_i_249_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_25 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[1]_i_27_n_4 ),
        .I2(\dig_reg[1]_i_10_n_7 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_250 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\dig[1]_i_250_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_251 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\dig[1]_i_251_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \dig[1]_i_26 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[1]_i_27_n_5 ),
        .I2(\dig_reg[1]_i_27_n_4 ),
        .I3(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_29__0 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_29__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dig[1]_i_3 
       (.I0(\dig[1]_i_7_n_0 ),
        .I1(p_0_in[0]),
        .I2(\dig[1]_i_8_n_0 ),
        .I3(p_0_in[1]),
        .I4(\intData_reg_n_0_[1] ),
        .O(\dig[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_30__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_30__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_31__0 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_31__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_32__0 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_32__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_33 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[1]_i_34 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_36__0 
       (.I0(\dig_reg[3]_i_10_n_4 ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_36__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_37 
       (.I0(\dig_reg[3]_i_10_n_5 ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\dig[1]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_38__0 
       (.I0(\dig_reg[3]_i_10_n_6 ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_38__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_39__0 
       (.I0(\dig_reg[3]_i_10_n_7 ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_39__0_n_0 ));
  LUT4 #(
    .INIT(16'h5E00)) 
    \dig[1]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(convert),
        .O(dig));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_40 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[3]_i_10_n_4 ),
        .I2(\dig_reg[3]_i_6_n_7 ),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_41 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\dig_reg[3]_i_10_n_5 ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\dig_reg[3]_i_10_n_4 ),
        .O(\dig[1]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_42 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\dig_reg[3]_i_10_n_6 ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\dig_reg[3]_i_10_n_5 ),
        .O(\dig[1]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_43 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[3]_i_10_n_7 ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\dig_reg[3]_i_10_n_6 ),
        .O(\dig[1]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_45 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_46 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_47 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_49 
       (.I0(\dig_reg[1]_i_113_n_7 ),
        .I1(\dig_reg[1]_i_113_n_5 ),
        .O(\dig[1]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hAEFF5100)) 
    \dig[1]_i_5 
       (.I0(\dig_reg[1]_i_9_n_1 ),
        .I1(\dig_reg[1]_i_10_n_6 ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\dig_reg[1]_i_11_n_4 ),
        .I4(\dig_reg[1]_i_12_n_7 ),
        .O(\dig[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_50 
       (.I0(\dig_reg[3]_i_15_n_4 ),
        .I1(\dig_reg[1]_i_113_n_6 ),
        .O(\dig[1]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \dig[1]_i_51 
       (.I0(\dig_reg[1]_i_113_n_5 ),
        .I1(\dig_reg[1]_i_113_n_6 ),
        .I2(\dig_reg[1]_i_113_n_4 ),
        .O(\dig[1]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_52 
       (.I0(\dig_reg[1]_i_113_n_5 ),
        .I1(\dig_reg[1]_i_113_n_7 ),
        .I2(\dig_reg[1]_i_113_n_6 ),
        .I3(\dig_reg[1]_i_113_n_4 ),
        .O(\dig[1]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_53 
       (.I0(\dig_reg[1]_i_113_n_6 ),
        .I1(\dig_reg[3]_i_15_n_4 ),
        .I2(\dig_reg[1]_i_113_n_7 ),
        .I3(\dig_reg[1]_i_113_n_5 ),
        .O(\dig[1]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \dig[1]_i_55 
       (.I0(\dig_reg[1]_i_123_n_7 ),
        .I1(\dig[1]_i_124_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\dig[1]_i_125_n_0 ),
        .O(\dig[1]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \dig[1]_i_56 
       (.I0(\dig_reg[1]_i_126_n_5 ),
        .I1(\dig[1]_i_127_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\dig[1]_i_128_n_0 ),
        .O(\dig[1]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \dig[1]_i_57 
       (.I0(\dig_reg[1]_i_126_n_5 ),
        .I1(\dig[1]_i_129_n_0 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig[1]_i_130_n_0 ),
        .O(\dig[1]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \dig[1]_i_58 
       (.I0(\dig_reg[1]_i_126_n_7 ),
        .I1(\dig[1]_i_131_n_0 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\dig[1]_i_132_n_0 ),
        .O(\dig[1]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \dig[1]_i_59 
       (.I0(\dig[1]_i_55_n_0 ),
        .I1(\dig[1]_i_133_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[1]_i_134_n_0 ),
        .I5(\dig_reg[1]_i_123_n_7 ),
        .O(\dig[1]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hF4FF0B00)) 
    \dig[1]_i_6 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[3]_i_6_n_7 ),
        .I2(\dig_reg[1]_i_13_n_0 ),
        .I3(\intData_reg[15]_2 ),
        .I4(\intData_reg[14]_1 [0]),
        .O(\dig[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \dig[1]_i_60 
       (.I0(\dig[1]_i_56_n_0 ),
        .I1(\dig[1]_i_135_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\dig[1]_i_136_n_0 ),
        .I4(\dig_reg[1]_i_123_n_7 ),
        .O(\dig[1]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \dig[1]_i_61 
       (.I0(\dig[1]_i_57_n_0 ),
        .I1(\dig[1]_i_137_n_0 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[1]_i_138_n_0 ),
        .I5(\dig_reg[1]_i_126_n_5 ),
        .O(\dig[1]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \dig[1]_i_62 
       (.I0(\dig[1]_i_58_n_0 ),
        .I1(\dig[1]_i_139_n_0 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\dig[1]_i_140_n_0 ),
        .I4(\dig_reg[1]_i_126_n_5 ),
        .O(\dig[1]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_64 
       (.I0(\dig_reg[1]_i_15_n_6 ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\dig[1]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_65 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\dig_reg[1]_i_15_n_6 ),
        .I2(\dig_reg[1]_i_15_n_5 ),
        .I3(\intData_reg_n_0_[15] ),
        .O(\dig[1]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \dig[1]_i_66__0 
       (.I0(\dig[3]_i_31_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[3]_i_28_n_0 ),
        .I3(\dig[3]_i_30_n_0 ),
        .I4(\dig[3]_i_29_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_66__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \dig[1]_i_67__0 
       (.I0(\dig[1]_i_150_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[3]_i_30_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[3]_i_29_n_0 ),
        .I5(\dig[3]_i_31_n_0 ),
        .O(\dig[1]_i_67__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \dig[1]_i_68__0 
       (.I0(\dig[3]_i_31_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[3]_i_28_n_0 ),
        .I3(\dig[1]_i_150_n_0 ),
        .I4(\dig[3]_i_30_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_68__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \dig[1]_i_69__0 
       (.I0(\dig[3]_i_30_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\dig[3]_i_29_n_0 ),
        .I3(\dig[3]_i_28_n_0 ),
        .I4(\dig[1]_i_150_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_69__0_n_0 ));
  LUT5 #(
    .INIT(32'hF04BF0F0)) 
    \dig[1]_i_7 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[1]_i_15_n_5 ),
        .I2(\dig_reg[1]_i_16_n_4 ),
        .I3(\dig_reg[1]_i_17_n_3 ),
        .I4(\dig_reg[1]_i_16_n_5 ),
        .O(\dig[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_71 
       (.I0(\dig_reg[1]_i_27_n_6 ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_72 
       (.I0(\dig_reg[1]_i_27_n_7 ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h6F)) 
    \dig[1]_i_73 
       (.I0(\dig_reg[1]_i_12_n_7 ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .I2(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_74 
       (.I0(\dig_reg[1]_i_11_n_4 ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_75 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\dig_reg[1]_i_27_n_6 ),
        .I2(\dig_reg[1]_i_27_n_5 ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\dig[1]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_76 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[1]_i_27_n_7 ),
        .I2(\dig_reg[1]_i_27_n_6 ),
        .I3(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h7D82827D)) 
    \dig[1]_i_77 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .I2(\dig_reg[1]_i_12_n_7 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\dig_reg[1]_i_27_n_7 ),
        .O(\dig[1]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dig[1]_i_78 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .I2(\dig_reg[1]_i_12_n_7 ),
        .I3(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dig[1]_i_79 
       (.I0(\dig_reg[1]_i_12_n_6 ),
        .I1(\dig_reg[1]_i_12_n_7 ),
        .O(\dig[1]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[1]_i_8 
       (.I0(\dig[1]_i_18_n_0 ),
        .I1(\dig[1]_i_19_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[2]_i_15_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[2]_i_16_n_0 ),
        .O(\dig[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig[1]_i_80 
       (.I0(\dig_reg[1]_i_12_n_7 ),
        .I1(\dig_reg[1]_i_12_n_6 ),
        .O(\dig[1]_i_80_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dig[1]_i_81 
       (.I0(\dig_reg[1]_i_12_n_7 ),
        .I1(\dig_reg[1]_i_11_n_4 ),
        .O(\dig[1]_i_81_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \dig[1]_i_82 
       (.I0(\dig_reg[1]_i_12_n_7 ),
        .I1(\dig_reg[1]_i_12_n_6 ),
        .O(\dig[1]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[1]_i_83 
       (.I0(\dig_reg[1]_i_11_n_4 ),
        .I1(\dig_reg[1]_i_12_n_6 ),
        .I2(\dig_reg[1]_i_12_n_7 ),
        .O(\dig[1]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \dig[1]_i_84 
       (.I0(\dig_reg[1]_i_11_n_4 ),
        .I1(\dig_reg[1]_i_12_n_6 ),
        .I2(\dig_reg[1]_i_12_n_7 ),
        .O(\dig[1]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_86 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\dig[1]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_87 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_88 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[1]_i_89 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[1]_i_91 
       (.I0(\dig_reg[3]_i_17_n_4 ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\dig[1]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_92 
       (.I0(\dig_reg[3]_i_17_n_5 ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\dig[1]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_93 
       (.I0(\dig_reg[3]_i_17_n_6 ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\dig[1]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[1]_i_94 
       (.I0(\dig_reg[3]_i_17_n_7 ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\dig[1]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \dig[1]_i_95 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\dig_reg[3]_i_17_n_4 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig_reg[3]_i_10_n_7 ),
        .O(\dig[1]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dig[1]_i_96 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\dig_reg[3]_i_17_n_5 ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[3]_i_17_n_4 ),
        .O(\dig[1]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[1]_i_97 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\dig_reg[3]_i_17_n_6 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig_reg[3]_i_17_n_5 ),
        .O(\dig[1]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \dig[1]_i_98 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\dig_reg[3]_i_17_n_7 ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\dig_reg[3]_i_17_n_6 ),
        .O(\dig[1]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hEEABFFFF22A80000)) 
    \dig[2]_i_1 
       (.I0(\dig[2]_i_2_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(convert),
        .I5(data0[2]),
        .O(\dig[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_10 
       (.I0(\dig[2]_i_16_n_0 ),
        .I1(\dig[2]_i_12_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig[2]_i_13_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\dig[2]_i_14_n_0 ),
        .O(\dig[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_11 
       (.I0(\dig[2]_i_14_n_0 ),
        .I1(\dig[2]_i_15_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig[2]_i_16_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\dig[2]_i_12_n_0 ),
        .O(\dig[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_12 
       (.I0(\dig[2]_i_17_n_0 ),
        .I1(\dig[2]_i_18_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[2]_i_19_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[2]_i_20_n_0 ),
        .O(\dig[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_13 
       (.I0(\dig[2]_i_21_n_0 ),
        .I1(\dig[2]_i_17_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[2]_i_18_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[2]_i_19_n_0 ),
        .O(\dig[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_14 
       (.I0(\dig[2]_i_20_n_0 ),
        .I1(\dig[2]_i_21_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[2]_i_17_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[2]_i_18_n_0 ),
        .O(\dig[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_15 
       (.I0(\dig[2]_i_19_n_0 ),
        .I1(\dig[2]_i_20_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[2]_i_21_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[2]_i_17_n_0 ),
        .O(\dig[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_16 
       (.I0(\dig[2]_i_18_n_0 ),
        .I1(\dig[2]_i_19_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[2]_i_20_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[2]_i_21_n_0 ),
        .O(\dig[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9A59AE9AE7AE75E7)) 
    \dig[2]_i_17 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAEE79AAE7559E775)) 
    \dig[2]_i_18 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE775599AAEE77559)) 
    \dig[2]_i_19 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\dig[2]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[2]_i_2 
       (.I0(\dig_reg[2]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\dig[2]_i_4_n_0 ),
        .I3(p_0_in[1]),
        .I4(\intData_reg_n_0_[2] ),
        .O(\dig[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75E759759A59AE9A)) 
    \dig[2]_i_20 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h599A7559AEE79AAE)) 
    \dig[2]_i_21 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[2]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dig[2]_i_4 
       (.I0(\dig[2]_i_7_n_0 ),
        .I1(p_0_in[0]),
        .I2(\dig[2]_i_8_n_0 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData[1]_i_16_n_0 ),
        .O(\dig[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFFFFF0B000000)) 
    \dig[2]_i_5 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[3]_i_6_n_7 ),
        .I2(\dig_reg[1]_i_13_n_0 ),
        .I3(\intData_reg[14]_1 [0]),
        .I4(\intData_reg[15]_2 ),
        .I5(\intData_reg[14]_1 [1]),
        .O(\dig[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFFFFF45000000)) 
    \dig[2]_i_6 
       (.I0(\dig_reg[1]_i_9_n_1 ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\dig_reg[1]_i_10_n_6 ),
        .I3(\dig_reg[1]_i_12_n_7 ),
        .I4(\dig_reg[1]_i_11_n_4 ),
        .I5(\dig_reg[1]_i_12_n_6 ),
        .O(\dig[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF04BF0F0F0F0F0F0)) 
    \dig[2]_i_7 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\dig_reg[1]_i_15_n_5 ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .I3(\dig_reg[1]_i_17_n_3 ),
        .I4(\dig_reg[1]_i_16_n_5 ),
        .I5(\dig_reg[1]_i_16_n_4 ),
        .O(\dig[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[2]_i_8 
       (.I0(\dig[2]_i_9_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\dig[2]_i_10_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[2]_i_11_n_0 ),
        .O(\dig[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[2]_i_9 
       (.I0(\dig[2]_i_12_n_0 ),
        .I1(\dig[2]_i_13_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig[2]_i_14_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\dig[2]_i_15_n_0 ),
        .O(\dig[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE2EEAA2A2222A)) 
    \dig[3]_i_1 
       (.I0(data0[3]),
        .I1(convert),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\dig[3]_i_2_n_0 ),
        .O(\dig[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \dig[3]_i_11 
       (.I0(\dig_reg[3]_i_26_n_1 ),
        .I1(\intData_reg[15]_3 ),
        .I2(\intData_reg[14]_1 [3]),
        .I3(\intData_reg[15]_5 [1]),
        .O(\dig[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \dig[3]_i_12__0 
       (.I0(\dig[3]_i_28_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_32_n_0 ),
        .I3(\dig[3]_i_29_n_0 ),
        .I4(\intData[2]_i_28_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[3]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \dig[3]_i_13__0 
       (.I0(\dig[3]_i_30_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_31_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\dig[3]_i_31_n_0 ),
        .I5(\intData[2]_i_29_n_0 ),
        .O(\dig[3]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \dig[3]_i_14__0 
       (.I0(\dig[3]_i_28_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_32_n_0 ),
        .I3(\dig[3]_i_30_n_0 ),
        .I4(\intData[2]_i_31_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[3]_i_14__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[3]_i_16 
       (.I0(\dig_reg[1]_i_16_n_5 ),
        .I1(\dig_reg[1]_i_17_n_3 ),
        .O(\dig[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[3]_i_18 
       (.I0(\intData_reg[15]_4 ),
        .I1(\intData_reg[14]_1 [2]),
        .I2(\intData_reg[15]_5 [0]),
        .O(\dig[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dig[3]_i_19 
       (.I0(\intData_reg[15]_3 ),
        .I1(\intData_reg[14]_1 [1]),
        .I2(\dig[3]_i_71 [3]),
        .O(\dig[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[3]_i_2 
       (.I0(\dig[3]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\dig_reg[3]_i_4_n_0 ),
        .I3(p_0_in[1]),
        .I4(\intData_reg_n_0_[3] ),
        .O(\dig[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[3]_i_20 
       (.I0(\dig[3]_i_71 [2]),
        .I1(\intData_reg[14]_1 [0]),
        .I2(\intData_reg[14]_1 [3]),
        .O(\dig[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[3]_i_21 
       (.I0(\dig[3]_i_71 [1]),
        .I1(\intData_reg[15]_2 ),
        .I2(\intData_reg[14]_1 [2]),
        .O(\dig[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[3]_i_28 
       (.I0(\dig[3]_i_50_n_0 ),
        .I1(\dig[3]_i_51_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[3]_i_52_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[3]_i_53_n_0 ),
        .O(\dig[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[3]_i_29 
       (.I0(\dig[3]_i_52_n_0 ),
        .I1(\dig[3]_i_53_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[3]_i_54_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[3]_i_50_n_0 ),
        .O(\dig[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAE2)) 
    \dig[3]_i_3 
       (.I0(\dig[3]_i_5_n_0 ),
        .I1(\dig_reg[3]_i_6_n_7 ),
        .I2(\intData_reg[14]_1 [2]),
        .I3(\intData_reg_n_0_[15] ),
        .I4(p_0_in[0]),
        .O(\dig[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[3]_i_30 
       (.I0(\dig[3]_i_53_n_0 ),
        .I1(\dig[3]_i_54_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[3]_i_50_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[3]_i_51_n_0 ),
        .O(\dig[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dig[3]_i_31 
       (.I0(\dig[3]_i_51_n_0 ),
        .I1(\dig[3]_i_52_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\dig[3]_i_53_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\dig[3]_i_54_n_0 ),
        .O(\dig[3]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h60009990)) 
    \dig[3]_i_32 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\dig_reg[1]_i_123_n_0 ),
        .O(\dig[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E00E08808008)) 
    \dig[3]_i_33 
       (.I0(\dig_reg[1]_i_123_n_5 ),
        .I1(\intData_reg_n_0_[11] ),
        .I2(\dig_reg[1]_i_123_n_0 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\dig[3]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \dig[3]_i_34 
       (.I0(\dig_reg[1]_i_123_n_5 ),
        .I1(\dig[3]_i_55_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig[3]_i_56_n_0 ),
        .O(\dig[3]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \dig[3]_i_35 
       (.I0(\dig_reg[1]_i_123_n_7 ),
        .I1(\dig[3]_i_57_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[3]_i_58_n_0 ),
        .O(\dig[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC3D2B43CB43C3C2D)) 
    \dig[3]_i_36 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[12] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\dig_reg[1]_i_123_n_0 ),
        .I4(\intData_reg_n_0_[13] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\dig[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    \dig[3]_i_37 
       (.I0(\dig[3]_i_33_n_0 ),
        .I1(\intData_reg_n_0_[12] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[1]_i_123_n_0 ),
        .I4(\intData_reg_n_0_[13] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\dig[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \dig[3]_i_38 
       (.I0(\dig[3]_i_34_n_0 ),
        .I1(\dig[3]_i_59_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg_n_0_[11] ),
        .I4(\dig[3]_i_60_n_0 ),
        .I5(\dig_reg[1]_i_123_n_5 ),
        .O(\dig[3]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \dig[3]_i_39 
       (.I0(\dig[3]_i_35_n_0 ),
        .I1(\dig[3]_i_61_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\dig[3]_i_62_n_0 ),
        .I4(\dig_reg[1]_i_123_n_5 ),
        .O(\dig[3]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[3]_i_40 
       (.I0(\dig[3]_i_71 [1]),
        .I1(\intData_reg[15]_2 ),
        .I2(\intData_reg[14]_1 [2]),
        .O(\dig[3]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dig[3]_i_42 
       (.I0(\dig[3]_i_78 [0]),
        .I1(\intData_reg[15]_2 ),
        .O(\dig[3]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dig[3]_i_48 
       (.I0(\intData_reg[15]_4 ),
        .O(\dig[3]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \dig[3]_i_5 
       (.I0(\dig_reg[1]_i_13_n_0 ),
        .I1(\intData_reg[14]_1 [1]),
        .I2(\intData_reg[14]_1 [0]),
        .I3(\intData_reg[15]_2 ),
        .I4(\intData_reg[14]_1 [2]),
        .O(\dig[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB66DCBB6D33C6DD3)) 
    \dig[3]_i_50 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h6DD3B66D3CCBD33C)) 
    \dig[3]_i_51 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hD3CB3CB66D3CD3CB)) 
    \dig[3]_i_52 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3BC6C6BDDC3B3BC6)) 
    \dig[3]_i_53 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hCBB63CCB6DD3B66D)) 
    \dig[3]_i_54 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \dig[3]_i_55 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[1]_i_123_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hFEA8EA80)) 
    \dig[3]_i_56 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\dig_reg[1]_i_123_n_6 ),
        .O(\dig[3]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'hFF96)) 
    \dig[3]_i_57 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\dig_reg[1]_i_123_n_6 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[3]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9600)) 
    \dig[3]_i_58 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\dig_reg[1]_i_123_n_6 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\dig[3]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[3]_i_59 
       (.I0(\dig_reg[1]_i_123_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig[3]_i_60 
       (.I0(\dig_reg[1]_i_123_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg_n_0_[12] ),
        .O(\dig[3]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hA995566A)) 
    \dig[3]_i_61 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[1]_i_123_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h566AA995)) 
    \dig[3]_i_62 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\dig_reg[1]_i_123_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\dig[3]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[3]_i_64 
       (.I0(\intData_reg[14]_1 [3]),
        .I1(\intData_reg[15]_4 ),
        .O(\dig[3]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dig[3]_i_65 
       (.I0(\intData_reg[14]_1 [2]),
        .I1(\intData_reg[15]_3 ),
        .O(\dig[3]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[3]_i_66 
       (.I0(\intData_reg[15]_4 ),
        .I1(\intData_reg[14]_1 [1]),
        .I2(\intData_reg[14]_1 [3]),
        .O(\dig[3]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[3]_i_67 
       (.I0(\intData_reg[15]_3 ),
        .I1(\intData_reg[14]_1 [0]),
        .I2(\intData_reg[14]_1 [2]),
        .O(\dig[3]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \dig[3]_i_72 
       (.I0(\intData_reg[15]_2 ),
        .I1(\intData_reg[14]_1 [3]),
        .I2(\intData_reg[14]_1 [1]),
        .O(\dig[3]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig[3]_i_73 
       (.I0(\intData_reg[14]_1 [3]),
        .I1(\intData_reg[15]_2 ),
        .I2(\intData_reg[14]_1 [1]),
        .O(\dig[3]_i_73_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig[3]_i_74 
       (.I0(\intData_reg[14]_1 [0]),
        .I1(\intData_reg[14]_1 [2]),
        .O(\dig[3]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \dig[3]_i_8 
       (.I0(\dig[3]_i_12__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\dig[3]_i_13__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\dig[3]_i_14__0_n_0 ),
        .O(\dig[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA5AAAAAAA)) 
    \dig[3]_i_9 
       (.I0(\dig_reg[3]_i_15_n_6 ),
        .I1(\intData_reg_n_0_[15] ),
        .I2(\dig_reg[3]_i_15_n_7 ),
        .I3(\dig[3]_i_16_n_0 ),
        .I4(\dig_reg[1]_i_16_n_4 ),
        .I5(\dig_reg[1]_i_15_n_5 ),
        .O(\dig[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[0]_i_1_n_0 ),
        .Q(data0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[1]_i_1_n_0 ),
        .Q(data0[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_10 
       (.CI(\dig_reg[1]_i_27_n_0 ),
        .CO(\NLW_dig_reg[1]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[1]_i_10_O_UNCONNECTED [3:2],\dig_reg[1]_i_10_n_6 ,\dig_reg[1]_i_10_n_7 }),
        .S({1'b0,1'b0,\dig_reg[1]_i_12_n_6 ,\dig_reg[1]_i_12_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[1]_i_104 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_104_n_0 ,\NLW_dig_reg[1]_i_104_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_174_n_0 ,\dig[1]_i_175_n_0 ,\dig[1]_i_176_n_0 ,1'b0}),
        .O({\dig_reg[1]_i_104_n_4 ,\dig_reg[1]_i_104_n_5 ,\dig_reg[1]_i_104_n_6 ,\dig_reg[1]_i_104_n_7 }),
        .S({\dig[1]_i_177_n_0 ,\dig[1]_i_178_n_0 ,\dig[1]_i_179_n_0 ,\dig[1]_i_180_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_11 
       (.CI(\dig_reg[1]_i_28_n_0 ),
        .CO({\dig_reg[1]_i_11_n_0 ,\NLW_dig_reg[1]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] }),
        .O({\dig_reg[1]_i_11_n_4 ,\NLW_dig_reg[1]_i_11_O_UNCONNECTED [2:0]}),
        .S({\dig[1]_i_29__0_n_0 ,\dig[1]_i_30__0_n_0 ,\dig[1]_i_31__0_n_0 ,\dig[1]_i_32__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_113 
       (.CI(\dig_reg[3]_i_15_n_0 ),
        .CO(\NLW_dig_reg[1]_i_113_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[1]_i_181_n_0 ,\dig[1]_i_182_n_0 ,\dig[1]_i_183_n_0 }),
        .O({\dig_reg[1]_i_113_n_4 ,\dig_reg[1]_i_113_n_5 ,\dig_reg[1]_i_113_n_6 ,\dig_reg[1]_i_113_n_7 }),
        .S({\dig[1]_i_184_n_0 ,\dig[1]_i_185_n_0 ,\dig[1]_i_186_n_0 ,\dig[1]_i_187_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_114 
       (.CI(\dig_reg[1]_i_188_n_0 ),
        .CO({\dig_reg[1]_i_114_n_0 ,\NLW_dig_reg[1]_i_114_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_189_n_0 ,\dig[1]_i_190_n_0 ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] }),
        .O(\NLW_dig_reg[1]_i_114_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_191_n_0 ,\dig[1]_i_192_n_0 ,\dig[1]_i_193_n_0 ,\dig[1]_i_194_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_12 
       (.CI(\dig_reg[1]_i_11_n_0 ),
        .CO(\NLW_dig_reg[1]_i_12_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData_reg_n_0_[14] }),
        .O({\NLW_dig_reg[1]_i_12_O_UNCONNECTED [3:2],\dig_reg[1]_i_12_n_6 ,\dig_reg[1]_i_12_n_7 }),
        .S({1'b0,1'b0,\dig[1]_i_33_n_0 ,\dig[1]_i_34_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_123 
       (.CI(\dig_reg[1]_i_126_n_0 ),
        .CO({\dig_reg[1]_i_123_n_0 ,\NLW_dig_reg[1]_i_123_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\NLW_dig_reg[1]_i_123_O_UNCONNECTED [3],\dig_reg[1]_i_123_n_5 ,\dig_reg[1]_i_123_n_6 ,\dig_reg[1]_i_123_n_7 }),
        .S({1'b1,\dig[1]_i_209_n_0 ,\dig[1]_i_210_n_0 ,\dig[1]_i_211_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_126 
       (.CI(\dig_reg[1]_i_196_n_0 ),
        .CO({\dig_reg[1]_i_126_n_0 ,\NLW_dig_reg[1]_i_126_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O({\dig_reg[1]_i_126_n_4 ,\dig_reg[1]_i_126_n_5 ,\dig_reg[1]_i_126_n_6 ,\dig_reg[1]_i_126_n_7 }),
        .S({\dig[1]_i_212_n_0 ,\dig[1]_i_213_n_0 ,\dig[1]_i_214_n_0 ,\dig[1]_i_215_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_13 
       (.CI(\dig_reg[1]_i_35_n_0 ),
        .CO({\dig_reg[1]_i_13_n_0 ,\NLW_dig_reg[1]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_36__0_n_0 ,\dig[1]_i_37_n_0 ,\dig[1]_i_38__0_n_0 ,\dig[1]_i_39__0_n_0 }),
        .O(\NLW_dig_reg[1]_i_13_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_40_n_0 ,\dig[1]_i_41_n_0 ,\dig[1]_i_42_n_0 ,\dig[1]_i_43_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_14 
       (.CI(\dig_reg[1]_i_44_n_0 ),
        .CO({\dig_reg[1]_i_14_n_0 ,\NLW_dig_reg[1]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\intData_reg[15]_2 ,\NLW_dig_reg[1]_i_14_O_UNCONNECTED [2:0]}),
        .S({\intData_reg_n_0_[10] ,\dig[1]_i_45_n_0 ,\dig[1]_i_46_n_0 ,\dig[1]_i_47_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_141 
       (.CI(\dig_reg[1]_i_216_n_0 ),
        .CO({\dig_reg[1]_i_141_n_0 ,\NLW_dig_reg[1]_i_141_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_217_n_0 ,\dig[1]_i_218_n_0 ,\dig[1]_i_219_n_0 ,\dig[1]_i_220_n_0 }),
        .O(\NLW_dig_reg[1]_i_141_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_221_n_0 ,\dig[1]_i_222_n_0 ,\dig[1]_i_223_n_0 ,\dig[1]_i_224_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_15 
       (.CI(\dig_reg[1]_i_48_n_0 ),
        .CO(\NLW_dig_reg[1]_i_15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dig[1]_i_49_n_0 ,\dig[1]_i_50_n_0 }),
        .O({\NLW_dig_reg[1]_i_15_O_UNCONNECTED [3],\dig_reg[1]_i_15_n_5 ,\dig_reg[1]_i_15_n_6 ,\dig_reg[1]_i_15_n_7 }),
        .S({1'b0,\dig[1]_i_51_n_0 ,\dig[1]_i_52_n_0 ,\dig[1]_i_53_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_158 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_158_n_0 ,\NLW_dig_reg[1]_i_158_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0,1'b1}),
        .O(\NLW_dig_reg[1]_i_158_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_225_n_0 ,\dig[1]_i_226_n_0 ,\dig[1]_i_227_n_0 ,\intData_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_16 
       (.CI(\dig_reg[1]_i_54_n_0 ),
        .CO({\dig_reg[1]_i_16_n_0 ,\NLW_dig_reg[1]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_55_n_0 ,\dig[1]_i_56_n_0 ,\dig[1]_i_57_n_0 ,\dig[1]_i_58_n_0 }),
        .O({\dig_reg[1]_i_16_n_4 ,\dig_reg[1]_i_16_n_5 ,\NLW_dig_reg[1]_i_16_O_UNCONNECTED [1:0]}),
        .S({\dig[1]_i_59_n_0 ,\dig[1]_i_60_n_0 ,\dig[1]_i_61_n_0 ,\dig[1]_i_62_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dig_reg[1]_i_17 
       (.CI(\dig_reg[1]_i_63_n_0 ),
        .CO({\NLW_dig_reg[1]_i_17_CO_UNCONNECTED [3:1],\dig_reg[1]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dig[1]_i_64_n_0 }),
        .O(\NLW_dig_reg[1]_i_17_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dig[1]_i_65_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[1]_i_188 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_188_n_0 ,\NLW_dig_reg[1]_i_188_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0}),
        .O(\NLW_dig_reg[1]_i_188_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_228_n_0 ,\dig[1]_i_229_n_0 ,\dig[1]_i_230_n_0 ,\dig_reg[1]_i_231_n_5 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_196 
       (.CI(\dig_reg[1]_i_232_n_0 ),
        .CO({\dig_reg[1]_i_196_n_0 ,\NLW_dig_reg[1]_i_196_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] }),
        .O({\dig_reg[1]_i_196_n_4 ,\dig_reg[1]_i_196_n_5 ,\dig_reg[1]_i_196_n_6 ,\dig_reg[1]_i_196_n_7 }),
        .S({\dig[1]_i_233_n_0 ,\dig[1]_i_234_n_0 ,\dig[1]_i_235_n_0 ,\dig[1]_i_236_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_20 
       (.CI(\dig_reg[1]_i_70_n_0 ),
        .CO({\dig_reg[1]_i_20_n_0 ,\NLW_dig_reg[1]_i_20_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_71_n_0 ,\dig[1]_i_72_n_0 ,\dig[1]_i_73_n_0 ,\dig[1]_i_74_n_0 }),
        .O(\NLW_dig_reg[1]_i_20_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_75_n_0 ,\dig[1]_i_76_n_0 ,\dig[1]_i_77_n_0 ,\dig[1]_i_78_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_216 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_216_n_0 ,\NLW_dig_reg[1]_i_216_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_237_n_0 ,\dig[1]_i_238_n_0 ,\dig[1]_i_239_n_0 ,\dig[1]_i_240_n_0 }),
        .O(\NLW_dig_reg[1]_i_216_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_241_n_0 ,\dig[1]_i_242_n_0 ,\dig[1]_i_243_n_0 ,\dig[1]_i_244_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_231 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_231_n_0 ,\NLW_dig_reg[1]_i_231_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[0] ,1'b0,1'b0,1'b1}),
        .O({\dig_reg[1]_i_231_n_4 ,\dig_reg[1]_i_231_n_5 ,\NLW_dig_reg[1]_i_231_O_UNCONNECTED [1:0]}),
        .S({\dig[1]_i_245_n_0 ,\dig[1]_i_246_n_0 ,\dig[1]_i_247_n_0 ,\intData_reg_n_0_[0] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_232 
       (.CI(\dig_reg[1]_i_231_n_0 ),
        .CO({\dig_reg[1]_i_232_n_0 ,\NLW_dig_reg[1]_i_232_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] }),
        .O({\dig_reg[1]_i_232_n_4 ,\dig_reg[1]_i_232_n_5 ,\dig_reg[1]_i_232_n_6 ,\dig_reg[1]_i_232_n_7 }),
        .S({\dig[1]_i_248_n_0 ,\dig[1]_i_249_n_0 ,\dig[1]_i_250_n_0 ,\dig[1]_i_251_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_27 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_27_n_0 ,\NLW_dig_reg[1]_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[1]_i_79_n_0 ,\dig[1]_i_80_n_0 ,\dig[1]_i_81_n_0 }),
        .O({\dig_reg[1]_i_27_n_4 ,\dig_reg[1]_i_27_n_5 ,\dig_reg[1]_i_27_n_6 ,\dig_reg[1]_i_27_n_7 }),
        .S({\dig_reg[1]_i_11_n_4 ,\dig[1]_i_82_n_0 ,\dig[1]_i_83_n_0 ,\dig[1]_i_84_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_28 
       (.CI(\dig_reg[1]_i_85_n_0 ),
        .CO({\dig_reg[1]_i_28_n_0 ,\NLW_dig_reg[1]_i_28_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] }),
        .O(\NLW_dig_reg[1]_i_28_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_86_n_0 ,\dig[1]_i_87_n_0 ,\dig[1]_i_88_n_0 ,\dig[1]_i_89_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_35 
       (.CI(\dig_reg[1]_i_90_n_0 ),
        .CO({\dig_reg[1]_i_35_n_0 ,\NLW_dig_reg[1]_i_35_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_91_n_0 ,\dig[1]_i_92_n_0 ,\dig[1]_i_93_n_0 ,\dig[1]_i_94_n_0 }),
        .O(\NLW_dig_reg[1]_i_35_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_95_n_0 ,\dig[1]_i_96_n_0 ,\dig[1]_i_97_n_0 ,\dig[1]_i_98_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_44 
       (.CI(\dig_reg[1]_i_99_n_0 ),
        .CO({\dig_reg[1]_i_44_n_0 ,\NLW_dig_reg[1]_i_44_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O(\NLW_dig_reg[1]_i_44_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_100_n_0 ,\dig[1]_i_101_n_0 ,\dig[1]_i_102_n_0 ,\dig[1]_i_103_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_48 
       (.CI(\dig_reg[1]_i_104_n_0 ),
        .CO({\dig_reg[1]_i_48_n_0 ,\NLW_dig_reg[1]_i_48_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_105_n_0 ,\dig[1]_i_106_n_0 ,\dig[1]_i_107_n_0 ,\dig[1]_i_108_n_0 }),
        .O({\dig_reg[1]_i_48_n_4 ,\dig_reg[1]_i_48_n_5 ,\dig_reg[1]_i_48_n_6 ,\dig_reg[1]_i_48_n_7 }),
        .S({\dig[1]_i_109_n_0 ,\dig[1]_i_110_n_0 ,\dig[1]_i_111_n_0 ,\dig[1]_i_112_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_54 
       (.CI(\dig_reg[1]_i_114_n_0 ),
        .CO({\dig_reg[1]_i_54_n_0 ,\NLW_dig_reg[1]_i_54_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_115_n_0 ,\dig[1]_i_116_n_0 ,\dig[1]_i_117_n_0 ,\dig[1]_i_118_n_0 }),
        .O(\NLW_dig_reg[1]_i_54_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_119_n_0 ,\dig[1]_i_120_n_0 ,\dig[1]_i_121_n_0 ,\dig[1]_i_122_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_63 
       (.CI(\dig_reg[1]_i_141_n_0 ),
        .CO({\dig_reg[1]_i_63_n_0 ,\NLW_dig_reg[1]_i_63_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_142_n_0 ,\dig[1]_i_143_n_0 ,\dig[1]_i_144_n_0 ,\dig[1]_i_145_n_0 }),
        .O(\NLW_dig_reg[1]_i_63_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_146_n_0 ,\dig[1]_i_147_n_0 ,\dig[1]_i_148_n_0 ,\dig[1]_i_149_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_70 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_70_n_0 ,\NLW_dig_reg[1]_i_70_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[1]_i_151_n_0 ,\dig[1]_i_152_n_0 ,\dig[1]_i_153_n_0 }),
        .O(\NLW_dig_reg[1]_i_70_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_154_n_0 ,\dig[1]_i_155_n_0 ,\dig[1]_i_156_n_0 ,\dig[1]_i_157_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_85 
       (.CI(\dig_reg[1]_i_158_n_0 ),
        .CO({\dig_reg[1]_i_85_n_0 ,\NLW_dig_reg[1]_i_85_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] }),
        .O(\NLW_dig_reg[1]_i_85_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_159_n_0 ,\dig[1]_i_160_n_0 ,\dig[1]_i_161_n_0 ,\dig[1]_i_162_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_9 
       (.CI(\dig_reg[1]_i_20_n_0 ),
        .CO({\NLW_dig_reg[1]_i_9_CO_UNCONNECTED [3],\dig_reg[1]_i_9_n_1 ,\NLW_dig_reg[1]_i_9_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\dig[1]_i_21_n_0 ,\dig[1]_i_22_n_0 ,\dig[1]_i_23_n_0 }),
        .O(\NLW_dig_reg[1]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,\dig[1]_i_24_n_0 ,\dig[1]_i_25_n_0 ,\dig[1]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[1]_i_90 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_90_n_0 ,\NLW_dig_reg[1]_i_90_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[1]_i_163_n_0 ,\dig[1]_i_164_n_0 ,\dig[1]_i_165_n_0 ,\dig[1]_i_166_n_0 }),
        .O(\NLW_dig_reg[1]_i_90_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_167_n_0 ,\dig[1]_i_168_n_0 ,\dig[1]_i_169_n_0 ,\dig[1]_i_170_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[1]_i_99 
       (.CI(1'b0),
        .CO({\dig_reg[1]_i_99_n_0 ,\NLW_dig_reg[1]_i_99_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,1'b0}),
        .O(\NLW_dig_reg[1]_i_99_O_UNCONNECTED [3:0]),
        .S({\dig[1]_i_171_n_0 ,\dig[1]_i_172_n_0 ,\dig[1]_i_173_n_0 ,\intData_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[2]_i_1_n_0 ),
        .Q(data0[2]),
        .R(1'b0));
  MUXF7 \dig_reg[2]_i_3 
       (.I0(\dig[2]_i_5_n_0 ),
        .I1(\dig[2]_i_6_n_0 ),
        .O(\dig_reg[2]_i_3_n_0 ),
        .S(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \dig_reg[3] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\dig[3]_i_1_n_0 ),
        .Q(data0[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_10 
       (.CI(\dig_reg[3]_i_17_n_0 ),
        .CO({\dig_reg[3]_i_10_n_0 ,\NLW_dig_reg[3]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_18_n_0 ,\dig[3]_i_19_n_0 ,\dig[3]_i_20_n_0 ,\dig[3]_i_21_n_0 }),
        .O({\dig_reg[3]_i_10_n_4 ,\dig_reg[3]_i_10_n_5 ,\dig_reg[3]_i_10_n_6 ,\dig_reg[3]_i_10_n_7 }),
        .S(\dig[1]_i_95_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_15 
       (.CI(\dig_reg[1]_i_16_n_0 ),
        .CO({\dig_reg[3]_i_15_n_0 ,\NLW_dig_reg[3]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_32_n_0 ,\dig[3]_i_33_n_0 ,\dig[3]_i_34_n_0 ,\dig[3]_i_35_n_0 }),
        .O({\dig_reg[3]_i_15_n_4 ,\dig_reg[3]_i_15_n_5 ,\dig_reg[3]_i_15_n_6 ,\dig_reg[3]_i_15_n_7 }),
        .S({\dig[3]_i_36_n_0 ,\dig[3]_i_37_n_0 ,\dig[3]_i_38_n_0 ,\dig[3]_i_39_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[3]_i_17 
       (.CI(1'b0),
        .CO({\dig_reg[3]_i_17_n_0 ,\NLW_dig_reg[3]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_40_n_0 ,DI,\dig[3]_i_42_n_0 ,1'b0}),
        .O({\dig_reg[3]_i_17_n_4 ,\dig_reg[3]_i_17_n_5 ,\dig_reg[3]_i_17_n_6 ,\dig_reg[3]_i_17_n_7 }),
        .S(\dig[1]_i_167_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_26 
       (.CI(\dig_reg[3]_i_47_n_0 ),
        .CO({\NLW_dig_reg[3]_i_26_CO_UNCONNECTED [3],\dig_reg[3]_i_26_n_1 ,\NLW_dig_reg[3]_i_26_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg[15]_4 ,\intData_reg[15]_3 }),
        .O({\NLW_dig_reg[3]_i_26_O_UNCONNECTED [3:2],\intData_reg[15]_5 }),
        .S({1'b0,1'b1,\dig[3]_i_48_n_0 ,\dig[3]_i_22 }));
  CARRY4 \dig_reg[3]_i_27 
       (.CI(\dig_reg[3]_i_7_n_0 ),
        .CO({\NLW_dig_reg[3]_i_27_CO_UNCONNECTED [3:2],\intData_reg[15]_4 ,\NLW_dig_reg[3]_i_27_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[3]_i_27_O_UNCONNECTED [3:1],\intData_reg[15]_3 }),
        .S({1'b0,1'b0,1'b1,\intData_reg_n_0_[15] }));
  MUXF7 \dig_reg[3]_i_4 
       (.I0(\dig[3]_i_8_n_0 ),
        .I1(\dig[3]_i_9_n_0 ),
        .O(\dig_reg[3]_i_4_n_0 ),
        .S(p_0_in[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_47 
       (.CI(\dig_reg[3]_i_63_n_0 ),
        .CO({\dig_reg[3]_i_47_n_0 ,\NLW_dig_reg[3]_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_64_n_0 ,\dig[3]_i_65_n_0 ,\dig[3]_i_66_n_0 ,\dig[3]_i_67_n_0 }),
        .O(\dig[3]_i_71 ),
        .S(\dig[3]_i_44 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dig_reg[3]_i_6 
       (.CI(\dig_reg[3]_i_10_n_0 ),
        .CO(\NLW_dig_reg[3]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dig_reg[3]_i_6_O_UNCONNECTED [3:1],\dig_reg[3]_i_6_n_7 }),
        .S({1'b0,1'b0,1'b0,\dig[3]_i_11_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \dig_reg[3]_i_63 
       (.CI(1'b0),
        .CO({\dig_reg[3]_i_63_n_0 ,\NLW_dig_reg[3]_i_63_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\dig[3]_i_72_n_0 ,\dig[3]_i_73_n_0 ,\dig[3]_i_74_n_0 ,1'b0}),
        .O({\dig[3]_i_78 ,\dig_reg[3]_i_63_n_6 ,\dig_reg[3]_i_63_n_7 }),
        .S(\dig[1]_i_169_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \dig_reg[3]_i_7 
       (.CI(\dig_reg[1]_i_14_n_0 ),
        .CO({\dig_reg[3]_i_7_n_0 ,\NLW_dig_reg[3]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\intData_reg[14]_1 ),
        .S({\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] }));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \intAddr[0]_i_1 
       (.I0(space),
        .I1(maxAddrPort[0]),
        .O(intAddr__0[0]));
  LUT3 #(
    .INIT(8'h1E)) 
    \intAddr[1]_i_1 
       (.I0(space),
        .I1(maxAddrPort[0]),
        .I2(Q),
        .O(intAddr__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h37C8)) 
    \intAddr[2]_i_1 
       (.I0(space),
        .I1(Q),
        .I2(maxAddrPort[0]),
        .I3(maxAddrPort[2]),
        .O(intAddr__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h3F7FC080)) 
    \intAddr[3]_i_1 
       (.I0(space),
        .I1(maxAddrPort[2]),
        .I2(Q),
        .I3(maxAddrPort[0]),
        .I4(maxAddrPort[3]),
        .O(intAddr__0[3]));
  LUT6 #(
    .INIT(64'h3FFF7FFFC0008000)) 
    \intAddr[4]_i_1 
       (.I0(space),
        .I1(maxAddrPort[3]),
        .I2(maxAddrPort[2]),
        .I3(Q),
        .I4(maxAddrPort[0]),
        .I5(maxAddrPort[4]),
        .O(intAddr__0[4]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \intAddr[5]_i_1 
       (.I0(space),
        .I1(\intAddr[5]_i_2_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(maxAddrPort[5]),
        .O(intAddr__0[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \intAddr[5]_i_2 
       (.I0(maxAddrPort[4]),
        .I1(maxAddrPort[3]),
        .I2(maxAddrPort[2]),
        .I3(Q),
        .I4(maxAddrPort[5]),
        .O(\intAddr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \intAddr[6]_i_1 
       (.I0(space),
        .I1(\intAddr[6]_i_2_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(maxAddrPort[6]),
        .O(intAddr__0[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \intAddr[6]_i_2 
       (.I0(maxAddrPort[5]),
        .I1(maxAddrPort[4]),
        .I2(maxAddrPort[3]),
        .I3(maxAddrPort[2]),
        .I4(Q),
        .I5(maxAddrPort[6]),
        .O(\intAddr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \intAddr[7]_i_1 
       (.I0(write),
        .I1(space),
        .I2(wtNeg),
        .I3(clr),
        .O(intAddr));
  LUT3 #(
    .INIT(8'hFE)) 
    \intAddr[7]_i_2 
       (.I0(space),
        .I1(wtNeg),
        .I2(write),
        .O(\intAddr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \intAddr[7]_i_3 
       (.I0(space),
        .I1(\intAddr[7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(maxAddrPort[7]),
        .O(intAddr__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \intAddr[7]_i_4 
       (.I0(\intReg[0][7]_i_6_n_0 ),
        .I1(maxAddrPort[4]),
        .I2(maxAddrPort[3]),
        .I3(maxAddrPort[2]),
        .I4(Q),
        .I5(maxAddrPort[7]),
        .O(\intAddr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[0] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[0]),
        .Q(maxAddrPort[0]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[1] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[1]),
        .Q(Q),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[2] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[2]),
        .Q(maxAddrPort[2]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[3] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[3]),
        .Q(maxAddrPort[3]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[4] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[4]),
        .Q(maxAddrPort[4]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[5] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[5]),
        .Q(maxAddrPort[5]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[6] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[6]),
        .Q(maxAddrPort[6]),
        .R(intAddr));
  FDRE #(
    .INIT(1'b0)) 
    \intAddr_reg[7] 
       (.C(clkPort),
        .CE(\intAddr[7]_i_2_n_0 ),
        .D(intAddr__0[7]),
        .Q(maxAddrPort[7]),
        .R(intAddr));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[0]_i_1 
       (.I0(\intData[0]_i_2_n_0 ),
        .I1(convert),
        .I2(neg_reg_0[0]),
        .O(\intData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0BF8F0F00B080)) 
    \intData[0]_i_2 
       (.I0(\intData_reg[3]_i_5_n_7 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(\intData_reg_n_0_[0] ),
        .I4(p_0_in[1]),
        .I5(neg_reg_0[0]),
        .O(\intData[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[10]_i_1 
       (.I0(\intData[10]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[10]_i_3_n_0 ),
        .O(\intData[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \intData[10]_i_2 
       (.I0(\intData_reg[11]_i_4_n_5 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_5_n_5 ),
        .I3(p_0_in[0]),
        .O(\intData[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[10]_i_3 
       (.I0(intData1[8]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[10]),
        .O(\intData[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[11]_i_1 
       (.I0(\intData[11]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[11]_i_3_n_0 ),
        .O(\intData[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_10 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg[13]_0 ),
        .O(\intData[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_12 
       (.I0(\intData_reg[11]_i_4_n_4 ),
        .O(\intData[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_13 
       (.I0(\intData_reg_n_0_[7] ),
        .O(\intData[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_14 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(O[1]),
        .O(\intData[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_15 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(O[0]),
        .O(\intData[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_16 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[13]_0 ),
        .O(\intData[11]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_18 
       (.I0(\intData_reg[11]_i_6_n_4 ),
        .O(\intData[11]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_19 
       (.I0(\intData_reg[11]_i_6_n_5 ),
        .O(\intData[11]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \intData[11]_i_2 
       (.I0(\intData_reg[11]_i_4_n_4 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_5_n_4 ),
        .I3(p_0_in[0]),
        .O(\intData[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_20 
       (.I0(\intData_reg[11]_i_6_n_6 ),
        .O(\intData[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_22 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[15] ),
        .O(\intData[11]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_23 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\intData[11]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_24 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\intData[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_25 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\intData[11]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_27 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\intData[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_28 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\intData[11]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_29 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[11]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[11]_i_3 
       (.I0(intData1[9]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[11]),
        .O(\intData[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_30 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[11]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_32 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[11]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_33 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\intData[11]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_34 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\intData[11]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_35 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[11]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_36 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[11]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_37__0 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\intData[11]_i_37__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[11]_i_38 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[11]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_7 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg[13]_i_18_n_5 ),
        .O(\intData[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_8 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg[13]_i_18_n_6 ),
        .O(\intData[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[11]_i_9 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg[13]_i_18_n_7 ),
        .O(\intData[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[12]_i_1 
       (.I0(\intData[12]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[12]_i_3_n_0 ),
        .O(\intData[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \intData[12]_i_2 
       (.I0(\intData_reg[13]_1 [0]),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[13]_i_7_n_7 ),
        .I3(p_0_in[0]),
        .O(\intData[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[12]_i_3 
       (.I0(intData1[10]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[12]),
        .O(\intData[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2600)) 
    \intData[13]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(convert),
        .O(intData[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_10__0 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg[13]_i_17_n_7 ),
        .O(\intData[13]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_11 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg[13]_i_18_n_4 ),
        .O(\intData[13]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFF60)) 
    \intData[13]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(convert),
        .I3(chNeg),
        .O(\intData[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \intData[13]_i_20 
       (.I0(O[1]),
        .I1(\intData_reg[13]_0 ),
        .I2(O[0]),
        .O(\intData[13]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intData[13]_i_21 
       (.I0(\intData_reg[13]_0 ),
        .I1(O[0]),
        .O(\intData[13]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[13]_i_25 
       (.I0(O[0]),
        .I1(\intData_reg[13]_0 ),
        .O(\intData[13]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_26 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\intData[13]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[13]_i_27 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\intData[13]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[13]_i_3 
       (.I0(\intData[13]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[13]_i_5_n_0 ),
        .O(\intData[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \intData[13]_i_4 
       (.I0(\intData_reg[13]_i_6_n_6 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[13]_i_7_n_6 ),
        .I3(p_0_in[0]),
        .O(\intData[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[13]_i_5 
       (.I0(intData1[11]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[13]),
        .O(\intData[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[13]_i_9 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg[13]_i_17_n_6 ),
        .O(\intData[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE2E200E200E2E2E2)) 
    \intData[14]_i_1 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(chNeg),
        .I2(\intData[14]_i_2_n_0 ),
        .I3(convert),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\intData[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \intData[14]_i_2 
       (.I0(intData1[12]),
        .I1(neg_reg_0[14]),
        .I2(neg_reg_0[15]),
        .O(\intData[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2E200E200E2E2E2)) 
    \intData[15]_i_1 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(chNeg),
        .I2(\intData[15]_i_2_n_0 ),
        .I3(convert),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\intData[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intData[15]_i_2 
       (.I0(neg_reg_0[15]),
        .I1(intData1[13]),
        .O(\intData[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[1]_i_1 
       (.I0(\intData[1]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[1]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[1]_i_4_n_0 ),
        .O(\intData[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_10 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC3963C693C69C396)) 
    \intData[1]_i_100 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg[1]_i_90_n_4 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\intData[1]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_101 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\intData[1]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_102 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[14] ),
        .O(\intData[1]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_103 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[13] ),
        .O(\intData[1]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_104 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[12] ),
        .O(\intData[1]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_105 
       (.I0(\intData_reg_n_0_[15] ),
        .O(\intData[1]_i_105_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_106 
       (.I0(\intData_reg_n_0_[14] ),
        .O(\intData[1]_i_106_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_107 
       (.I0(\intData_reg_n_0_[13] ),
        .O(\intData[1]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[1]_i_108 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg[1]_i_112_n_6 ),
        .O(\intData[1]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[1]_i_109 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg[1]_i_112_n_7 ),
        .O(\intData[1]_i_109_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_11 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[1]_i_110 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg[1]_i_111_n_4 ),
        .O(\intData[1]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_113 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[11] ),
        .O(\intData[1]_i_113_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_114 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[10] ),
        .O(\intData[1]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_115 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[1]_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_116 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[1]_i_116_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_117 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[1]_i_117_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_118 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[1]_i_118_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[1]_i_119 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[1]_i_119_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_12 
       (.I0(\intData[1]_i_19_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData[1]_i_20_n_0 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData[1]_i_21_n_0 ),
        .O(\intData[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_120 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[1]_i_120_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_121 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\intData[1]_i_121_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_122 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\intData[1]_i_122_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_123 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[1]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_13 
       (.I0(\intData[1]_i_20_n_0 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData[1]_i_22_n_0 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData[1]_i_23_n_0 ),
        .O(\intData[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_14 
       (.I0(\intData[1]_i_24_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[1]_i_25_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[1]_i_26_n_0 ),
        .O(\intData[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_15 
       (.I0(\intData[1]_i_27_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[1]_i_26_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[1]_i_24_n_0 ),
        .O(\intData[1]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_16 
       (.I0(\intData[1]_i_25_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[1]_i_27_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[1]_i_28_n_0 ),
        .O(\intData[1]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_17 
       (.I0(\intData[1]_i_26_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[1]_i_28_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[1]_i_25_n_0 ),
        .O(\intData[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_19 
       (.I0(\intData[1]_i_38_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[1]_i_39_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[1]_i_40_n_0 ),
        .O(\intData[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_2 
       (.I0(\intData_reg[3]_i_5_n_6 ),
        .I1(p_0_in[0]),
        .I2(data1[1]),
        .O(\intData[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_20 
       (.I0(\intData[1]_i_39_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[1]_i_41_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[1]_i_42_n_0 ),
        .O(\intData[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_21 
       (.I0(\intData[1]_i_40_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[1]_i_42_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[1]_i_39_n_0 ),
        .O(\intData[1]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_22 
       (.I0(\intData[1]_i_41_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[1]_i_40_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[1]_i_38_n_0 ),
        .O(\intData[1]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[1]_i_23 
       (.I0(\intData[1]_i_42_n_0 ),
        .I1(\intData_reg_n_0_[7] ),
        .I2(\intData[1]_i_38_n_0 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[1]_i_41_n_0 ),
        .O(\intData[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_24 
       (.I0(\intData[1]_i_43_n_0 ),
        .I1(\intData[1]_i_44_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_45_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData[1]_i_46_n_0 ),
        .O(\intData[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_25 
       (.I0(\intData[1]_i_47_n_0 ),
        .I1(\intData[1]_i_43_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_44_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData[1]_i_45_n_0 ),
        .O(\intData[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_26 
       (.I0(\intData[1]_i_45_n_0 ),
        .I1(\intData[1]_i_46_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_47_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData[1]_i_43_n_0 ),
        .O(\intData[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_27 
       (.I0(\intData[1]_i_46_n_0 ),
        .I1(\intData[1]_i_47_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_43_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData[1]_i_44_n_0 ),
        .O(\intData[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_28 
       (.I0(\intData[1]_i_44_n_0 ),
        .I1(\intData[1]_i_45_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_46_n_0 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData[1]_i_47_n_0 ),
        .O(\intData[1]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intData[1]_i_3 
       (.I0(data2),
        .I1(p_0_in[0]),
        .I2(\intData_reg[1]_i_6_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData[1]_i_7_n_0 ),
        .O(\intData[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \intData[1]_i_30 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData[1]_i_57_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_58_n_0 ),
        .O(\intData[1]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \intData[1]_i_31 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData[1]_i_59_n_0 ),
        .I2(\intData_reg[1]_i_60_n_5 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[1]_i_61_n_0 ),
        .O(\intData[1]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \intData[1]_i_32 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData[1]_i_62_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\intData[1]_i_63_n_0 ),
        .O(\intData[1]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \intData[1]_i_33 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData[1]_i_64_n_0 ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg[1]_i_60_n_7 ),
        .I4(\intData[1]_i_65_n_0 ),
        .O(\intData[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \intData[1]_i_34 
       (.I0(\intData[1]_i_30_n_0 ),
        .I1(\intData[1]_i_66_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData_reg[1]_i_67_n_7 ),
        .I4(\intData[1]_i_68_n_0 ),
        .I5(\intData_reg_n_0_[7] ),
        .O(\intData[1]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \intData[1]_i_35 
       (.I0(\intData[1]_i_31_n_0 ),
        .I1(\intData[1]_i_69_n_0 ),
        .I2(\intData_reg_n_0_[9] ),
        .I3(\intData[1]_i_70_n_0 ),
        .I4(\intData_reg_n_0_[7] ),
        .O(\intData[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \intData[1]_i_36 
       (.I0(\intData[1]_i_32_n_0 ),
        .I1(\intData[1]_i_71_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\intData_reg[1]_i_60_n_5 ),
        .I4(\intData[1]_i_72_n_0 ),
        .I5(\intData_reg_n_0_[5] ),
        .O(\intData[1]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \intData[1]_i_37 
       (.I0(\intData[1]_i_33_n_0 ),
        .I1(\intData[1]_i_73_n_0 ),
        .I2(\intData_reg_n_0_[7] ),
        .I3(\intData[1]_i_74_n_0 ),
        .I4(\intData_reg_n_0_[5] ),
        .O(\intData[1]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_38 
       (.I0(\intData[1]_i_46_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[1]_i_47_n_0 ),
        .O(\intData[1]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_39 
       (.I0(\intData[1]_i_47_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[1]_i_43_n_0 ),
        .O(\intData[1]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \intData[1]_i_4 
       (.I0(neg_reg_0[0]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[1]),
        .O(\intData[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_40 
       (.I0(\intData[1]_i_44_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[1]_i_45_n_0 ),
        .O(\intData[1]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_41 
       (.I0(\intData[1]_i_43_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[1]_i_44_n_0 ),
        .O(\intData[1]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_42 
       (.I0(\intData[1]_i_45_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[1]_i_46_n_0 ),
        .O(\intData[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_43 
       (.I0(\intData[1]_i_75_n_0 ),
        .I1(\intData[1]_i_76_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[1]_i_77_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[1]_i_78_n_0 ),
        .O(\intData[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_44 
       (.I0(\intData[1]_i_79_n_0 ),
        .I1(\intData[1]_i_75_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[1]_i_76_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[1]_i_77_n_0 ),
        .O(\intData[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_45 
       (.I0(\intData[1]_i_78_n_0 ),
        .I1(\intData[1]_i_79_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[1]_i_75_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[1]_i_76_n_0 ),
        .O(\intData[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_46 
       (.I0(\intData[1]_i_77_n_0 ),
        .I1(\intData[1]_i_78_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[1]_i_79_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[1]_i_75_n_0 ),
        .O(\intData[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_47 
       (.I0(\intData[1]_i_76_n_0 ),
        .I1(\intData[1]_i_77_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[1]_i_78_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[1]_i_79_n_0 ),
        .O(\intData[1]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_49 
       (.I0(\intData[1]_i_87_n_0 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData[1]_i_88_n_0 ),
        .O(\intData[1]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[1]_i_50 
       (.I0(\intData[1]_i_89_n_0 ),
        .I1(\intData_reg[1]_i_90_n_5 ),
        .I2(\intData[1]_i_91_n_0 ),
        .O(\intData[1]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \intData[1]_i_51 
       (.I0(\intData_reg[1]_i_90_n_5 ),
        .I1(\intData[1]_i_92_n_0 ),
        .I2(\intData_reg_n_0_[1] ),
        .I3(\intData[1]_i_93_n_0 ),
        .O(\intData[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \intData[1]_i_52 
       (.I0(\intData_reg[1]_i_90_n_6 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[0] ),
        .I3(\intData_reg[1]_i_90_n_5 ),
        .I4(\intData_reg_n_0_[7] ),
        .I5(\intData[1]_i_94_n_0 ),
        .O(\intData[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \intData[1]_i_53 
       (.I0(\intData[1]_i_49_n_0 ),
        .I1(\intData[1]_i_95_n_0 ),
        .I2(\intData_reg[1]_i_60_n_7 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData[1]_i_96_n_0 ),
        .I5(\intData_reg_n_0_[3] ),
        .O(\intData[1]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h474747B8B8B847B8)) 
    \intData[1]_i_54 
       (.I0(\intData[1]_i_89_n_0 ),
        .I1(\intData_reg[1]_i_90_n_5 ),
        .I2(\intData[1]_i_91_n_0 ),
        .I3(\intData[1]_i_97_n_0 ),
        .I4(\intData_reg_n_0_[2] ),
        .I5(\intData[1]_i_98_n_0 ),
        .O(\intData[1]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h47471DE2B8B81DE2)) 
    \intData[1]_i_55 
       (.I0(\intData[1]_i_93_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData[1]_i_92_n_0 ),
        .I3(\intData[1]_i_99_n_0 ),
        .I4(\intData_reg[1]_i_90_n_5 ),
        .I5(\intData[1]_i_100_n_0 ),
        .O(\intData[1]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h6A9A9A6A)) 
    \intData[1]_i_56 
       (.I0(\intData[1]_i_52_n_0 ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg[1]_i_90_n_6 ),
        .I4(\intData_reg_n_0_[0] ),
        .O(\intData[1]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \intData[1]_i_57 
       (.I0(\intData_reg[1]_i_67_n_7 ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\intData_reg[1]_i_60_n_4 ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\intData[1]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \intData[1]_i_58 
       (.I0(\intData_reg[1]_i_67_n_7 ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[8] ),
        .I3(\intData_reg[1]_i_60_n_4 ),
        .I4(\intData_reg_n_0_[13] ),
        .O(\intData[1]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'hFF96)) 
    \intData[1]_i_59 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg[1]_i_60_n_4 ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\intData[1]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h9600)) 
    \intData[1]_i_61 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg[1]_i_60_n_4 ),
        .I3(\intData_reg_n_0_[12] ),
        .O(\intData[1]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \intData[1]_i_62 
       (.I0(\intData_reg[1]_i_60_n_5 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg[1]_i_60_n_6 ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\intData[1]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \intData[1]_i_63 
       (.I0(\intData_reg[1]_i_60_n_5 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[6] ),
        .I3(\intData_reg[1]_i_60_n_6 ),
        .I4(\intData_reg_n_0_[11] ),
        .O(\intData[1]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hF9F6)) 
    \intData[1]_i_64 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_60_n_6 ),
        .O(\intData[1]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9060)) 
    \intData[1]_i_65 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_60_n_6 ),
        .O(\intData[1]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[1]_i_66 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg[1]_i_67_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\intData[1]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \intData[1]_i_68 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[14] ),
        .I2(\intData_reg[1]_i_67_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\intData[1]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hA596965A)) 
    \intData[1]_i_69 
       (.I0(\intData_reg[1]_i_67_n_7 ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg_n_0_[8] ),
        .I4(\intData_reg[1]_i_60_n_4 ),
        .O(\intData[1]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_7 
       (.I0(\intData[1]_i_14_n_0 ),
        .I1(\intData[1]_i_15_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[1]_i_16_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[1]_i_17_n_0 ),
        .O(\intData[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5A6969A5)) 
    \intData[1]_i_70 
       (.I0(\intData_reg[1]_i_67_n_7 ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg_n_0_[13] ),
        .I3(\intData_reg[1]_i_60_n_4 ),
        .I4(\intData_reg_n_0_[8] ),
        .O(\intData[1]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[1]_i_71 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\intData_reg[1]_i_60_n_4 ),
        .O(\intData[1]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \intData[1]_i_72 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[12] ),
        .I3(\intData_reg[1]_i_60_n_4 ),
        .O(\intData[1]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hA596965A)) 
    \intData[1]_i_73 
       (.I0(\intData_reg[1]_i_60_n_5 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData_reg_n_0_[6] ),
        .I4(\intData_reg[1]_i_60_n_6 ),
        .O(\intData[1]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h5A6969A5)) 
    \intData[1]_i_74 
       (.I0(\intData_reg[1]_i_60_n_5 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData_reg[1]_i_60_n_6 ),
        .I4(\intData_reg_n_0_[6] ),
        .O(\intData[1]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h51188AA66551188A)) 
    \intData[1]_i_75 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[1]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h188A5118A6658AA6)) 
    \intData[1]_i_76 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[1]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h8A18A68A65A65165)) 
    \intData[1]_i_77 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[1]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hA6658AA651186551)) 
    \intData[1]_i_78 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[1]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h65A6516518518A18)) 
    \intData[1]_i_79 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[1]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_8 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[7]_0 [1]),
        .O(\intData[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[1]_i_81 
       (.I0(\intData_reg[1]_i_90_n_6 ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData_reg_n_0_[6] ),
        .O(\intData[1]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[1]_i_82 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg[1]_i_90_n_7 ),
        .O(\intData[1]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \intData[1]_i_83 
       (.I0(\intData[1]_i_81_n_0 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg[1]_i_90_n_7 ),
        .O(\intData[1]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \intData[1]_i_84 
       (.I0(\intData_reg[1]_i_90_n_7 ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[5] ),
        .I3(\intData_reg[1]_i_112_n_4 ),
        .I4(\intData_reg_n_0_[0] ),
        .O(\intData[1]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[1]_i_85 
       (.I0(\intData_reg[1]_i_112_n_4 ),
        .I1(\intData_reg_n_0_[0] ),
        .I2(\intData_reg_n_0_[4] ),
        .O(\intData[1]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[1]_i_86 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[1]_i_112_n_5 ),
        .O(\intData[1]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEBBEC33C8228)) 
    \intData[1]_i_87 
       (.I0(\intData_reg[1]_i_90_n_4 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg[1]_i_60_n_7 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[1]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hF88F80088FF80880)) 
    \intData[1]_i_88 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[1]_i_90_n_4 ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\intData_reg[1]_i_60_n_7 ),
        .I4(\intData_reg_n_0_[9] ),
        .I5(\intData_reg_n_0_[5] ),
        .O(\intData[1]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBC382FFBE3C28)) 
    \intData[1]_i_89 
       (.I0(\intData_reg_n_0_[1] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg[1]_i_90_n_4 ),
        .I3(\intData_reg_n_0_[3] ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\intData[1]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[1]_i_9 
       (.I0(\intData_reg_n_0_[2] ),
        .I1(\intData_reg[7]_0 [0]),
        .O(\intData[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF88F80088FF80880)) 
    \intData[1]_i_91 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData_reg[1]_i_90_n_4 ),
        .I4(\intData_reg_n_0_[8] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\intData[1]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    \intData[1]_i_92 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg[1]_i_90_n_6 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[3] ),
        .O(\intData[1]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \intData[1]_i_93 
       (.I0(\intData_reg_n_0_[0] ),
        .I1(\intData_reg_n_0_[2] ),
        .I2(\intData_reg[1]_i_90_n_6 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData_reg_n_0_[3] ),
        .O(\intData[1]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[1]_i_94 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\intData[1]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \intData[1]_i_95 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg[1]_i_60_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\intData[1]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \intData[1]_i_96 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg_n_0_[6] ),
        .I2(\intData_reg[1]_i_60_n_6 ),
        .I3(\intData_reg_n_0_[10] ),
        .O(\intData[1]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \intData[1]_i_97 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[1]_i_90_n_4 ),
        .I2(\intData_reg_n_0_[3] ),
        .I3(\intData_reg[1]_i_60_n_7 ),
        .I4(\intData_reg_n_0_[5] ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[1]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hC33C3CC396696996)) 
    \intData[1]_i_98 
       (.I0(\intData_reg[1]_i_90_n_4 ),
        .I1(\intData_reg_n_0_[3] ),
        .I2(\intData_reg[1]_i_60_n_7 ),
        .I3(\intData_reg_n_0_[5] ),
        .I4(\intData_reg_n_0_[9] ),
        .I5(\intData_reg_n_0_[4] ),
        .O(\intData[1]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \intData[1]_i_99 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg_n_0_[1] ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData_reg[1]_i_90_n_4 ),
        .I4(\intData_reg_n_0_[4] ),
        .I5(\intData_reg_n_0_[8] ),
        .O(\intData[1]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[2]_i_1 
       (.I0(\intData[2]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[2]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[2]_i_4_n_0 ),
        .O(\intData[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_10 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_11 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[2]_i_12 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[2]_i_13 
       (.I0(\intData[2]_i_19__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[2]_i_20__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[2]_i_21__0_n_0 ),
        .O(\intData[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[2]_i_14 
       (.I0(\intData[2]_i_22__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[2]_i_21__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[2]_i_19__0_n_0 ),
        .O(\intData[2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[2]_i_15 
       (.I0(\intData[2]_i_20__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[2]_i_22__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[2]_i_23_n_0 ),
        .O(\intData[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[2]_i_16 
       (.I0(\intData[2]_i_21__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[2]_i_23_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[2]_i_20__0_n_0 ),
        .O(\intData[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[2]_i_17 
       (.I0(\intData[2]_i_23_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[2]_i_19__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[2]_i_22__0_n_0 ),
        .O(\intData[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \intData[2]_i_19__0 
       (.I0(\intData[2]_i_28_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_29_n_0 ),
        .I3(\intData[2]_i_30_n_0 ),
        .I4(\intData[2]_i_31_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_19__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[2]_i_2 
       (.I0(\intData_reg[3]_i_5_n_5 ),
        .I1(p_0_in[0]),
        .I2(data1[2]),
        .O(\intData[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[2]_i_20__0 
       (.I0(\intData[2]_i_32_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_30_n_0 ),
        .I3(\intData[2]_i_31_n_0 ),
        .I4(\intData[2]_i_28_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[2]_i_21__0 
       (.I0(\intData[2]_i_28_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_29_n_0 ),
        .I3(\intData[2]_i_32_n_0 ),
        .I4(\intData[2]_i_30_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[2]_i_22__0 
       (.I0(\intData[2]_i_29_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_32_n_0 ),
        .I3(\intData[2]_i_30_n_0 ),
        .I4(\intData[2]_i_31_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \intData[2]_i_23 
       (.I0(\intData[2]_i_29_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[2]_i_32_n_0 ),
        .I3(\intData[2]_i_31_n_0 ),
        .I4(\intData[2]_i_28_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_25 
       (.I0(\intData_reg_n_0_[15] ),
        .I1(\intData_reg_n_0_[9] ),
        .O(\intData[2]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_26 
       (.I0(\intData_reg_n_0_[14] ),
        .I1(\intData_reg_n_0_[8] ),
        .O(\intData[2]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_27 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_28 
       (.I0(\intData[2]_i_38_n_0 ),
        .I1(\intData[2]_i_39_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[2]_i_40_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[2]_i_41_n_0 ),
        .O(\intData[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_29 
       (.I0(\intData[2]_i_42_n_0 ),
        .I1(\intData[2]_i_38_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[2]_i_39_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[2]_i_40_n_0 ),
        .O(\intData[2]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intData[2]_i_3 
       (.I0(\intData[2]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData[2]_i_7_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData[2]_i_8_n_0 ),
        .O(\intData[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_30 
       (.I0(\intData[2]_i_40_n_0 ),
        .I1(\intData[2]_i_41_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[2]_i_42_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[2]_i_38_n_0 ),
        .O(\intData[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_31 
       (.I0(\intData[2]_i_39_n_0 ),
        .I1(\intData[2]_i_40_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[2]_i_41_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[2]_i_42_n_0 ),
        .O(\intData[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_32 
       (.I0(\intData[2]_i_41_n_0 ),
        .I1(\intData[2]_i_42_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[2]_i_38_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[2]_i_39_n_0 ),
        .O(\intData[2]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_34 
       (.I0(\intData_reg_n_0_[12] ),
        .I1(\intData_reg_n_0_[6] ),
        .O(\intData[2]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_35 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[5] ),
        .O(\intData[2]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_36 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg_n_0_[4] ),
        .O(\intData[2]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_37 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg_n_0_[3] ),
        .O(\intData[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h922CC33449922CC3)) 
    \intData[2]_i_38 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h2C34C34992C32C34)) 
    \intData[2]_i_39 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[2]_i_4 
       (.I0(intData1[0]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[2]),
        .O(\intData[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC439394223C4C439)) 
    \intData[2]_i_40 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[15] ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3449922CC3344992)) 
    \intData[2]_i_41 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h499234492CC3922C)) 
    \intData[2]_i_42 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[15] ),
        .O(\intData[2]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_43 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[2] ),
        .O(\intData[2]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_44 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg_n_0_[1] ),
        .O(\intData[2]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \intData[2]_i_45 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg_n_0_[0] ),
        .O(\intData[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h555555555AAA4AAA)) 
    \intData[2]_i_6 
       (.I0(\intData_reg[1]_i_5_n_5 ),
        .I1(\intData_reg[1]_i_5_n_4 ),
        .I2(\intData_reg[3]_i_19_n_5 ),
        .I3(\intData_reg[3]_i_19_n_6 ),
        .I4(\intData_reg[3]_i_19_n_7 ),
        .I5(\intData_reg[3]_i_19_n_4 ),
        .O(\intData[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_7 
       (.I0(\intData[2]_i_13_n_0 ),
        .I1(\intData[2]_i_14_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[2]_i_15_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[2]_i_16_n_0 ),
        .O(\intData[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_8 
       (.I0(\intData[2]_i_16_n_0 ),
        .I1(\intData[2]_i_13_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[2]_i_17_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[2]_i_15_n_0 ),
        .O(\intData[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[2]_i_9 
       (.I0(\intData_reg_n_0_[3] ),
        .I1(\intData_reg[15]_0 ),
        .O(\intData[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[3]_i_1 
       (.I0(\intData[3]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[3]_i_3_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[3]_i_4_n_0 ),
        .O(\intData[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_11 
       (.I0(\intData_reg_n_0_[3] ),
        .O(\intData[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_12 
       (.I0(\intData_reg_n_0_[2] ),
        .O(\intData[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_13 
       (.I0(\intData_reg_n_0_[1] ),
        .O(\intData[3]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_14 
       (.I0(\intData_reg_n_0_[0] ),
        .O(\intData[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \intData[3]_i_15 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_18_n_5 ),
        .O(\intData[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \intData[3]_i_16 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_18_n_5 ),
        .O(\intData[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[3]_i_2 
       (.I0(\intData_reg[3]_i_5_n_4 ),
        .I1(p_0_in[0]),
        .I2(\intData[3]_i_6_n_0 ),
        .O(\intData[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[3]_i_20 
       (.I0(\intData[3]_i_41__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_42__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[3]_i_43__0_n_0 ),
        .O(\intData[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[3]_i_21 
       (.I0(\intData[3]_i_44_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_43__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[3]_i_41__0_n_0 ),
        .O(\intData[3]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[3]_i_22 
       (.I0(\intData[3]_i_42__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_44_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[3]_i_45__0_n_0 ),
        .O(\intData[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[3]_i_23 
       (.I0(\intData[3]_i_43__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_45__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[3]_i_42__0_n_0 ),
        .O(\intData[3]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \intData[3]_i_24 
       (.I0(\intData[3]_i_45__0_n_0 ),
        .I1(\intData_reg_n_0_[5] ),
        .I2(\intData[3]_i_41__0_n_0 ),
        .I3(\intData_reg_n_0_[7] ),
        .I4(\intData[3]_i_44_n_0 ),
        .O(\intData[3]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \intData[3]_i_25 
       (.I0(neg_reg_0[0]),
        .O(\num_reg[0] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intData[3]_i_3 
       (.I0(\intData[3]_i_7_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData[3]_i_8_n_0 ),
        .I3(\intData_reg_n_0_[1] ),
        .I4(\intData[3]_i_9_n_0 ),
        .O(\intData[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_30__0 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData_reg[3]_i_46_n_7 ),
        .O(\intData[3]_i_30__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_31__0 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[3]_i_47_n_6 ),
        .O(\intData[3]_i_31__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_32__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[3]_i_47_n_7 ),
        .O(\intData[3]_i_32__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_33__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[14]_0 [0]),
        .O(\intData[3]_i_33__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_34 
       (.I0(\intData_reg_n_0_[10] ),
        .I1(\intData_reg[3]_i_46_n_4 ),
        .O(\intData[3]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_35 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg[3]_i_46_n_5 ),
        .O(\intData[3]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_36__0 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg[3]_i_46_n_6 ),
        .O(\intData[3]_i_36__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_37 
       (.I0(\intData_reg[3]_i_19_0 [2]),
        .I1(\intData_reg_n_0_[7] ),
        .O(\intData[3]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_38 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData_reg[3]_i_19_0 [1]),
        .O(\intData[3]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_39__0 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData_reg[3]_i_19_0 [0]),
        .O(\intData[3]_i_39__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[3]_i_4 
       (.I0(intData1[1]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[3]),
        .O(\intData[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_40__0 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData_reg[9]_0 [0]),
        .O(\intData[3]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \intData[3]_i_41__0 
       (.I0(\intData[3]_i_51_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[3]_i_52_n_0 ),
        .I3(\intData[3]_i_53_n_0 ),
        .I4(\intData[3]_i_54_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[3]_i_42__0 
       (.I0(\intData[3]_i_55_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[3]_i_53_n_0 ),
        .I3(\intData[3]_i_54_n_0 ),
        .I4(\intData[3]_i_51_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_42__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[3]_i_43__0 
       (.I0(\intData[3]_i_51_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[3]_i_52_n_0 ),
        .I3(\intData[3]_i_55_n_0 ),
        .I4(\intData[3]_i_53_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_43__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \intData[3]_i_44 
       (.I0(\intData[3]_i_52_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[3]_i_55_n_0 ),
        .I3(\intData[3]_i_53_n_0 ),
        .I4(\intData[3]_i_54_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \intData[3]_i_45__0 
       (.I0(\intData[3]_i_52_n_0 ),
        .I1(\intData_reg_n_0_[4] ),
        .I2(\intData[3]_i_55_n_0 ),
        .I3(\intData[3]_i_54_n_0 ),
        .I4(\intData[3]_i_51_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_45__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_51 
       (.I0(\intData[3]_i_80_n_0 ),
        .I1(\intData[3]_i_81_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_82_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[3]_i_83_n_0 ),
        .O(\intData[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_52 
       (.I0(\intData[3]_i_84_n_0 ),
        .I1(\intData[3]_i_80_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_81_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[3]_i_82_n_0 ),
        .O(\intData[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_53 
       (.I0(\intData[3]_i_82_n_0 ),
        .I1(\intData[3]_i_83_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_84_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[3]_i_80_n_0 ),
        .O(\intData[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_54 
       (.I0(\intData[3]_i_81_n_0 ),
        .I1(\intData[3]_i_82_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_83_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[3]_i_84_n_0 ),
        .O(\intData[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_55 
       (.I0(\intData[3]_i_83_n_0 ),
        .I1(\intData[3]_i_84_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_80_n_0 ),
        .I4(\intData_reg_n_0_[6] ),
        .I5(\intData[3]_i_81_n_0 ),
        .O(\intData[3]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \intData[3]_i_56 
       (.I0(\intData[3]_i_68 [1]),
        .I1(\intData_reg[14]_0 [0]),
        .O(\intData[3]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \intData[3]_i_57 
       (.I0(\intData[3]_i_68 [0]),
        .I1(\intData_reg[15]_0 ),
        .O(\intData[3]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h659A9A65)) 
    \intData[3]_i_58 
       (.I0(\intData_reg[14]_0 [2]),
        .I1(\intData_reg[14]_0 [1]),
        .I2(\intData[3]_i_97 ),
        .I3(\intData_reg[15]_0 ),
        .I4(\intData_reg[3]_i_85_n_6 ),
        .O(\intData[3]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \intData[3]_i_6 
       (.I0(\intData[3]_i_15_n_0 ),
        .I1(\intData_reg[2]_i_5_n_4 ),
        .I2(\intData[3]_i_16_n_0 ),
        .I3(\intData_reg[3]_i_17_n_7 ),
        .I4(\intData_reg[3]_i_18_n_5 ),
        .O(\intData[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \intData[3]_i_62 
       (.I0(\intData_reg[14]_0 [3]),
        .I1(\intData_reg[15]_0 ),
        .I2(\intData_reg[14]_0 [1]),
        .O(\intData[3]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_63 
       (.I0(\intData_reg[14]_0 [3]),
        .I1(\intData_reg[15]_0 ),
        .I2(\intData_reg[14]_0 [1]),
        .O(\intData[3]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \intData[3]_i_64 
       (.I0(\intData_reg[14]_0 [0]),
        .I1(\intData_reg[14]_0 [2]),
        .O(\intData[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h999999999CCC8CCC)) 
    \intData[3]_i_7 
       (.I0(\intData_reg[1]_i_5_n_5 ),
        .I1(\intData_reg[1]_i_5_n_4 ),
        .I2(\intData_reg[3]_i_19_n_5 ),
        .I3(\intData_reg[3]_i_19_n_6 ),
        .I4(\intData_reg[3]_i_19_n_7 ),
        .I5(\intData_reg[3]_i_19_n_4 ),
        .O(\intData[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0E00E08808008)) 
    \intData[3]_i_73 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData_reg[1]_i_67_n_5 ),
        .I2(\intData_reg[1]_i_67_n_0 ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\intData[3]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \intData[3]_i_74 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(\intData[3]_i_87_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_88_n_0 ),
        .O(\intData[3]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hCDDFC880)) 
    \intData[3]_i_75 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(\intData[3]_i_89_n_0 ),
        .I2(\intData_reg[1]_i_67_n_7 ),
        .I3(\intData_reg_n_0_[9] ),
        .I4(\intData[3]_i_90_n_0 ),
        .O(\intData[3]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hE817887777887E81)) 
    \intData[3]_i_76 
       (.I0(\intData_reg_n_0_[11] ),
        .I1(\intData_reg_n_0_[13] ),
        .I2(\intData_reg[1]_i_67_n_0 ),
        .I3(\intData_reg_n_0_[14] ),
        .I4(\intData_reg_n_0_[10] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    \intData[3]_i_77 
       (.I0(\intData[3]_i_73_n_0 ),
        .I1(\intData_reg_n_0_[12] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_67_n_0 ),
        .I4(\intData_reg_n_0_[13] ),
        .I5(\intData_reg_n_0_[11] ),
        .O(\intData[3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA65666A666)) 
    \intData[3]_i_78 
       (.I0(\intData[3]_i_74_n_0 ),
        .I1(\intData[3]_i_91_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData_reg[1]_i_67_n_5 ),
        .I4(\intData[3]_i_92_n_0 ),
        .I5(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h656A56A6)) 
    \intData[3]_i_79 
       (.I0(\intData[3]_i_75_n_0 ),
        .I1(\intData[3]_i_93_n_0 ),
        .I2(\intData_reg_n_0_[11] ),
        .I3(\intData[3]_i_94_n_0 ),
        .I4(\intData_reg_n_0_[9] ),
        .O(\intData[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_8 
       (.I0(\intData[3]_i_20_n_0 ),
        .I1(\intData[3]_i_21_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[3]_i_22_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[3]_i_23_n_0 ),
        .O(\intData[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2441100882244110)) 
    \intData[3]_i_80 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h4110088224411008)) 
    \intData[3]_i_81 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h1041820808102482)) 
    \intData[3]_i_82 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[12] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\intData[3]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0824108282410824)) 
    \intData[3]_i_83 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg_n_0_[12] ),
        .I5(\intData_reg_n_0_[10] ),
        .O(\intData[3]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h8224411008822441)) 
    \intData[3]_i_84 
       (.I0(\intData_reg_n_0_[13] ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[14] ),
        .I3(\intData_reg_n_0_[10] ),
        .I4(\intData_reg_n_0_[15] ),
        .I5(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hFDD55440)) 
    \intData[3]_i_87 
       (.I0(\intData_reg[1]_i_67_n_5 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_67_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\intData[3]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'hFEA8EA80)) 
    \intData[3]_i_88 
       (.I0(\intData_reg[1]_i_67_n_5 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg_n_0_[15] ),
        .I4(\intData_reg[1]_i_67_n_6 ),
        .O(\intData[3]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'hFF96)) 
    \intData[3]_i_89 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg[1]_i_67_n_6 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\intData[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_9 
       (.I0(\intData[3]_i_23_n_0 ),
        .I1(\intData[3]_i_20_n_0 ),
        .I2(\intData_reg_n_0_[2] ),
        .I3(\intData[3]_i_24_n_0 ),
        .I4(\intData_reg_n_0_[3] ),
        .I5(\intData[3]_i_22_n_0 ),
        .O(\intData[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9600)) 
    \intData[3]_i_90 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg[1]_i_67_n_6 ),
        .I3(\intData_reg_n_0_[14] ),
        .O(\intData[3]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \intData[3]_i_91 
       (.I0(\intData_reg[1]_i_67_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \intData[3]_i_92 
       (.I0(\intData_reg[1]_i_67_n_0 ),
        .I1(\intData_reg_n_0_[10] ),
        .I2(\intData_reg_n_0_[12] ),
        .O(\intData[3]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hA995566A)) 
    \intData[3]_i_93 
       (.I0(\intData_reg[1]_i_67_n_5 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_67_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\intData[3]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h566AA995)) 
    \intData[3]_i_94 
       (.I0(\intData_reg[1]_i_67_n_5 ),
        .I1(\intData_reg_n_0_[8] ),
        .I2(\intData_reg_n_0_[10] ),
        .I3(\intData_reg[1]_i_67_n_6 ),
        .I4(\intData_reg_n_0_[15] ),
        .O(\intData[3]_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \intData[3]_i_95 
       (.I0(\intData_reg[15]_1 ),
        .I1(\intData_reg[14]_0 [0]),
        .I2(\intData_reg[14]_0 [2]),
        .O(\intData[3]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'h69669969)) 
    \intData[3]_i_96 
       (.I0(\intData_reg[15]_1 ),
        .I1(\intData_reg[14]_0 [2]),
        .I2(CO),
        .I3(\intData_reg[14]_0 [3]),
        .I4(\intData_reg[14]_0 [1]),
        .O(\intData[3]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intData[4]_i_1 
       (.I0(\intData_reg_n_0_[4] ),
        .I1(\intData[13]_i_2_n_0 ),
        .I2(\intData[4]_i_2_n_0 ),
        .I3(intData[6]),
        .O(\intData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[4]_i_2 
       (.I0(\intData[4]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[4]_i_4_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[4]_i_5_n_0 ),
        .O(\intData[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88B8BBBB88888)) 
    \intData[4]_i_3 
       (.I0(\intData[4]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[3]_i_15_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_18_n_5 ),
        .O(\intData[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCE200000000)) 
    \intData[4]_i_4 
       (.I0(\intData_reg[3]_i_19_n_4 ),
        .I1(\intData_reg[3]_i_19_n_7 ),
        .I2(\intData[4]_i_7_n_0 ),
        .I3(\intData_reg[1]_i_5_n_4 ),
        .I4(\intData_reg[1]_i_5_n_5 ),
        .I5(p_0_in[0]),
        .O(\intData[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[4]_i_5 
       (.I0(intData1[2]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[4]),
        .O(\intData[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[4]_i_6 
       (.I0(\intData_reg[11]_i_11_n_7 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_6_n_7 ),
        .O(\intData[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \intData[4]_i_7 
       (.I0(\intData_reg[3]_i_19_n_5 ),
        .I1(\intData_reg[3]_i_19_n_6 ),
        .I2(\intData_reg[3]_i_19_n_4 ),
        .O(\intData[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intData[5]_i_1 
       (.I0(\intData_reg_n_0_[5] ),
        .I1(\intData[13]_i_2_n_0 ),
        .I2(\intData[5]_i_2_n_0 ),
        .I3(intData[6]),
        .O(\intData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[5]_i_2 
       (.I0(\intData[5]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[5]_i_4_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[5]_i_5_n_0 ),
        .O(\intData[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \intData[5]_i_3 
       (.I0(\intData[5]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[5]_i_7_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_17_n_6 ),
        .O(\intData[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0E200000000)) 
    \intData[5]_i_4 
       (.I0(\intData_reg[3]_i_19_n_6 ),
        .I1(\intData_reg[3]_i_19_n_7 ),
        .I2(\intData[5]_i_8_n_0 ),
        .I3(\intData_reg[1]_i_5_n_4 ),
        .I4(\intData_reg[1]_i_5_n_5 ),
        .I5(p_0_in[0]),
        .O(\intData[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[5]_i_5 
       (.I0(intData1[3]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[5]),
        .O(\intData[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[5]_i_6 
       (.I0(\intData_reg[11]_i_11_n_6 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_6_n_6 ),
        .O(\intData[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF7FFF0000)) 
    \intData[5]_i_7 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_18_n_5 ),
        .O(\intData[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \intData[5]_i_8 
       (.I0(\intData_reg[3]_i_19_n_5 ),
        .I1(\intData_reg[3]_i_19_n_6 ),
        .I2(\intData_reg[3]_i_19_n_4 ),
        .O(\intData[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intData[6]_i_1 
       (.I0(\intData_reg_n_0_[6] ),
        .I1(\intData[13]_i_2_n_0 ),
        .I2(\intData[6]_i_2_n_0 ),
        .I3(intData[6]),
        .O(\intData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFF30880000)) 
    \intData[6]_i_2 
       (.I0(\intData[6]_i_4_n_0 ),
        .I1(p_0_in[2]),
        .I2(\intData[6]_i_5_n_0 ),
        .I3(p_0_in[1]),
        .I4(convert),
        .I5(\intData[6]_i_6_n_0 ),
        .O(\intData[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \intData[6]_i_3 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(convert),
        .O(intData[6]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \intData[6]_i_4 
       (.I0(\intData[6]_i_7_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[6]_i_8_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_17_n_5 ),
        .O(\intData[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0E200000000)) 
    \intData[6]_i_5 
       (.I0(\intData_reg[3]_i_19_n_5 ),
        .I1(\intData_reg[3]_i_19_n_7 ),
        .I2(\intData[6]_i_9_n_0 ),
        .I3(\intData_reg[1]_i_5_n_4 ),
        .I4(\intData_reg[1]_i_5_n_5 ),
        .I5(p_0_in[0]),
        .O(\intData[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[6]_i_6 
       (.I0(intData1[4]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[6]),
        .O(\intData[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[6]_i_7 
       (.I0(\intData_reg[11]_i_11_n_5 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_6_n_5 ),
        .O(\intData[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h007FFFFFFF000000)) 
    \intData[6]_i_8 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_18_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_17_n_5 ),
        .O(\intData[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \intData[6]_i_9 
       (.I0(\intData_reg[3]_i_19_n_4 ),
        .I1(\intData_reg[3]_i_19_n_6 ),
        .I2(\intData_reg[3]_i_19_n_5 ),
        .O(\intData[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[7]_i_1 
       (.I0(\intData_reg_n_0_[7] ),
        .I1(chNeg),
        .I2(\intData[7]_i_2_n_0 ),
        .I3(convert),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[7]_i_2 
       (.I0(\intData[7]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[7]_i_4_n_0 ),
        .O(\intData[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \intData[7]_i_3 
       (.I0(\intData[7]_i_5_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[7]_i_6_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_17_n_4 ),
        .O(\intData[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[7]_i_4 
       (.I0(intData1[5]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[7]),
        .O(\intData[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[7]_i_5 
       (.I0(\intData_reg[11]_i_11_n_4 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_6_n_4 ),
        .O(\intData[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h07FFFFFFF0000000)) 
    \intData[7]_i_6 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_18_n_5 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_17_n_4 ),
        .O(\intData[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[8]_i_1 
       (.I0(\intData_reg_n_0_[8] ),
        .I1(chNeg),
        .I2(\intData[8]_i_2_n_0 ),
        .I3(convert),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[8]_i_2 
       (.I0(\intData[8]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[8]_i_4_n_0 ),
        .O(\intData[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \intData[8]_i_3 
       (.I0(\intData[8]_i_5_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[8]_i_6_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_18_n_7 ),
        .O(\intData[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[8]_i_4 
       (.I0(intData1[6]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[8]),
        .O(\intData[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[8]_i_5 
       (.I0(\intData_reg[11]_i_5_n_7 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_4_n_7 ),
        .O(\intData[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFC0000000)) 
    \intData[8]_i_6 
       (.I0(\intData_reg[3]_i_18_n_6 ),
        .I1(\intData_reg[3]_i_18_n_5 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_18_n_7 ),
        .O(\intData[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2F0E200E2E2E2)) 
    \intData[9]_i_1 
       (.I0(\intData_reg_n_0_[9] ),
        .I1(chNeg),
        .I2(\intData[9]_i_2_n_0 ),
        .I3(convert),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\intData[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCBFF0800)) 
    \intData[9]_i_2 
       (.I0(\intData[9]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(convert),
        .I4(\intData[9]_i_4_n_0 ),
        .O(\intData[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \intData[9]_i_3 
       (.I0(\intData[9]_i_5_n_0 ),
        .I1(p_0_in[0]),
        .I2(\intData_reg[2]_i_5_n_4 ),
        .I3(\intData[9]_i_6_n_0 ),
        .I4(\intData_reg[3]_i_17_n_7 ),
        .I5(\intData_reg[3]_i_18_n_6 ),
        .O(\intData[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[9]_i_4 
       (.I0(intData1[7]),
        .I1(neg_reg_0[15]),
        .I2(neg_reg_0[9]),
        .O(\intData[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \intData[9]_i_5 
       (.I0(\intData_reg[11]_i_5_n_6 ),
        .I1(\intData_reg[13]_i_7_n_1 ),
        .I2(\intData_reg[11]_i_4_n_6 ),
        .O(\intData[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFFFFF80000000)) 
    \intData[9]_i_6 
       (.I0(\intData_reg[3]_i_18_n_5 ),
        .I1(\intData_reg[3]_i_18_n_7 ),
        .I2(\intData_reg[3]_i_17_n_4 ),
        .I3(\intData_reg[3]_i_17_n_5 ),
        .I4(\intData_reg[3]_i_17_n_6 ),
        .I5(\intData_reg[3]_i_18_n_6 ),
        .O(\intData[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[0] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[0]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[10] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[10]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[10] ),
        .R(intData[13]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[11] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[11]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[11] ),
        .R(intData[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_11 
       (.CI(1'b0),
        .CO({\intData_reg[11]_i_11_n_0 ,\NLW_intData_reg[11]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,1'b1,1'b1,1'b0}),
        .O({\intData_reg[11]_i_11_n_4 ,\intData_reg[11]_i_11_n_5 ,\intData_reg[11]_i_11_n_6 ,\intData_reg[11]_i_11_n_7 }),
        .S({\intData[11]_i_18_n_0 ,\intData[11]_i_19_n_0 ,\intData[11]_i_20_n_0 ,\intData_reg[11]_i_6_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_17 
       (.CI(\intData_reg[11]_i_21_n_0 ),
        .CO({\intData_reg[11]_i_17_n_0 ,\NLW_intData_reg[11]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] }),
        .O({\intData_reg[13]_0 ,\NLW_intData_reg[11]_i_17_O_UNCONNECTED [2:0]}),
        .S({\intData[11]_i_22_n_0 ,\intData[11]_i_23_n_0 ,\intData[11]_i_24_n_0 ,\intData[11]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_21 
       (.CI(\intData_reg[11]_i_26_n_0 ),
        .CO({\intData_reg[11]_i_21_n_0 ,\NLW_intData_reg[11]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] }),
        .O(\NLW_intData_reg[11]_i_21_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_27_n_0 ,\intData[11]_i_28_n_0 ,\intData[11]_i_29_n_0 ,\intData[11]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_26 
       (.CI(\intData_reg[11]_i_31_n_0 ),
        .CO({\intData_reg[11]_i_26_n_0 ,\NLW_intData_reg[11]_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] }),
        .O(\NLW_intData_reg[11]_i_26_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_32_n_0 ,\intData[11]_i_33_n_0 ,\intData[11]_i_34_n_0 ,\intData[11]_i_35_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_31 
       (.CI(1'b0),
        .CO({\intData_reg[11]_i_31_n_0 ,\NLW_intData_reg[11]_i_31_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0,1'b1}),
        .O(\NLW_intData_reg[11]_i_31_O_UNCONNECTED [3:0]),
        .S({\intData[11]_i_36_n_0 ,\intData[11]_i_37__0_n_0 ,\intData[11]_i_38_n_0 ,\intData_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_4 
       (.CI(\intData_reg[11]_i_6_n_0 ),
        .CO({\intData_reg[11]_i_4_n_0 ,\NLW_intData_reg[11]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] }),
        .O({\intData_reg[11]_i_4_n_4 ,\intData_reg[11]_i_4_n_5 ,\intData_reg[11]_i_4_n_6 ,\intData_reg[11]_i_4_n_7 }),
        .S({\intData[11]_i_7_n_0 ,\intData[11]_i_8_n_0 ,\intData[11]_i_9_n_0 ,\intData[11]_i_10_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_5 
       (.CI(\intData_reg[11]_i_11_n_0 ),
        .CO({\intData_reg[11]_i_5_n_0 ,\NLW_intData_reg[11]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\intData_reg[11]_i_5_n_4 ,\intData_reg[11]_i_5_n_5 ,\intData_reg[11]_i_5_n_6 ,\intData_reg[11]_i_5_n_7 }),
        .S({\intData[11]_i_12_n_0 ,\intData_reg[11]_i_4_n_5 ,\intData_reg[11]_i_4_n_6 ,\intData_reg[11]_i_4_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[11]_i_6 
       (.CI(\intData_reg[3]_i_5_n_0 ),
        .CO({\intData_reg[11]_i_6_n_0 ,\NLW_intData_reg[11]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[11]_i_6_n_4 ,\intData_reg[11]_i_6_n_5 ,\intData_reg[11]_i_6_n_6 ,\intData_reg[11]_i_6_n_7 }),
        .S({\intData[11]_i_13_n_0 ,\intData[11]_i_14_n_0 ,\intData[11]_i_15_n_0 ,\intData[11]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[12] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[12]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[12] ),
        .R(intData[13]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[13] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[13]_i_3_n_0 ),
        .Q(\intData_reg_n_0_[13] ),
        .R(intData[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_17 
       (.CI(\intData_reg[13]_i_18_n_0 ),
        .CO(\NLW_intData_reg[13]_i_17_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[13]_i_17_O_UNCONNECTED [3:2],\intData_reg[13]_i_17_n_6 ,\intData_reg[13]_i_17_n_7 }),
        .S({1'b0,1'b0,O[0],\intData_reg[13]_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[13]_i_18 
       (.CI(1'b0),
        .CO({\intData_reg[13]_i_18_n_0 ,\NLW_intData_reg[13]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({O[1],\intData[13]_i_20_n_0 ,\intData[13]_i_21_n_0 ,1'b0}),
        .O({\intData_reg[13]_i_18_n_4 ,\intData_reg[13]_i_18_n_5 ,\intData_reg[13]_i_18_n_6 ,\intData_reg[13]_i_18_n_7 }),
        .S({S,\intData[13]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_19 
       (.CI(\intData_reg[11]_i_17_n_0 ),
        .CO(\NLW_intData_reg[13]_i_19_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData_reg_n_0_[14] }),
        .O({\NLW_intData_reg[13]_i_19_O_UNCONNECTED [3:2],O}),
        .S({1'b0,1'b0,\intData[13]_i_26_n_0 ,\intData[13]_i_27_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_6 
       (.CI(\intData_reg[11]_i_4_n_0 ),
        .CO(\NLW_intData_reg[13]_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] }),
        .O({\NLW_intData_reg[13]_i_6_O_UNCONNECTED [3],\intData_reg[13]_1 [1],\intData_reg[13]_i_6_n_6 ,\intData_reg[13]_1 [0]}),
        .S({1'b0,\intData[13]_i_9_n_0 ,\intData[13]_i_10__0_n_0 ,\intData[13]_i_11_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[13]_i_7 
       (.CI(\intData_reg[11]_i_5_n_0 ),
        .CO({\NLW_intData_reg[13]_i_7_CO_UNCONNECTED [3],\intData_reg[13]_i_7_n_1 ,\NLW_intData_reg[13]_i_7_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b1}),
        .O({\NLW_intData_reg[13]_i_7_O_UNCONNECTED [3:2],\intData_reg[13]_i_7_n_6 ,\intData_reg[13]_i_7_n_7 }),
        .S({1'b0,\intData[12]_i_2_0 [1],\intData_reg[13]_i_6_n_6 ,\intData[12]_i_2_0 [0]}));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[14] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[14]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[15] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[15]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[1] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[1]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[1] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_111 
       (.CI(1'b0),
        .CO({\intData_reg[1]_i_111_n_0 ,\NLW_intData_reg[1]_i_111_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[0] ,1'b0,1'b0,1'b1}),
        .O({\intData_reg[1]_i_111_n_4 ,\intData_reg[1]_i_111_n_5 ,\NLW_intData_reg[1]_i_111_O_UNCONNECTED [1:0]}),
        .S({\intData[1]_i_117_n_0 ,\intData[1]_i_118_n_0 ,\intData[1]_i_119_n_0 ,\intData_reg_n_0_[0] }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_112 
       (.CI(\intData_reg[1]_i_111_n_0 ),
        .CO({\intData_reg[1]_i_112_n_0 ,\NLW_intData_reg[1]_i_112_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] }),
        .O({\intData_reg[1]_i_112_n_4 ,\intData_reg[1]_i_112_n_5 ,\intData_reg[1]_i_112_n_6 ,\intData_reg[1]_i_112_n_7 }),
        .S({\intData[1]_i_120_n_0 ,\intData[1]_i_121_n_0 ,\intData[1]_i_122_n_0 ,\intData[1]_i_123_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_18 
       (.CI(\intData_reg[1]_i_29_n_0 ),
        .CO({\intData_reg[1]_i_18_n_0 ,\NLW_intData_reg[1]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[1]_i_30_n_0 ,\intData[1]_i_31_n_0 ,\intData[1]_i_32_n_0 ,\intData[1]_i_33_n_0 }),
        .O({\intData_reg[7]_0 ,\NLW_intData_reg[1]_i_18_O_UNCONNECTED [1:0]}),
        .S({\intData[1]_i_34_n_0 ,\intData[1]_i_35_n_0 ,\intData[1]_i_36_n_0 ,\intData[1]_i_37_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_29 
       (.CI(\intData_reg[1]_i_48_n_0 ),
        .CO({\intData_reg[1]_i_29_n_0 ,\NLW_intData_reg[1]_i_29_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[1]_i_49_n_0 ,\intData[1]_i_50_n_0 ,\intData[1]_i_51_n_0 ,\intData[1]_i_52_n_0 }),
        .O(\NLW_intData_reg[1]_i_29_O_UNCONNECTED [3:0]),
        .S({\intData[1]_i_53_n_0 ,\intData[1]_i_54_n_0 ,\intData[1]_i_55_n_0 ,\intData[1]_i_56_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_48 
       (.CI(\intData_reg[1]_i_80_n_0 ),
        .CO({\intData_reg[1]_i_48_n_0 ,\NLW_intData_reg[1]_i_48_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[1]_i_81_n_0 ,\intData[1]_i_82_n_0 ,\intData_reg_n_0_[4] ,\intData_reg_n_0_[3] }),
        .O(\NLW_intData_reg[1]_i_48_O_UNCONNECTED [3:0]),
        .S({\intData[1]_i_83_n_0 ,\intData[1]_i_84_n_0 ,\intData[1]_i_85_n_0 ,\intData[1]_i_86_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_5 
       (.CI(1'b0),
        .CO({\intData_reg[1]_i_5_n_0 ,\NLW_intData_reg[1]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[1]_i_5_n_4 ,\intData_reg[1]_i_5_n_5 ,data2,\NLW_intData_reg[1]_i_5_O_UNCONNECTED [0]}),
        .S({\intData[1]_i_8_n_0 ,\intData[1]_i_9_n_0 ,\intData[1]_i_10_n_0 ,\intData[1]_i_11_n_0 }));
  MUXF7 \intData_reg[1]_i_6 
       (.I0(\intData[1]_i_12_n_0 ),
        .I1(\intData[1]_i_13_n_0 ),
        .O(\intData_reg[1]_i_6_n_0 ),
        .S(\intData_reg_n_0_[2] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_60 
       (.CI(\intData_reg[1]_i_90_n_0 ),
        .CO({\intData_reg[1]_i_60_n_0 ,\NLW_intData_reg[1]_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O({\intData_reg[1]_i_60_n_4 ,\intData_reg[1]_i_60_n_5 ,\intData_reg[1]_i_60_n_6 ,\intData_reg[1]_i_60_n_7 }),
        .S({\intData[1]_i_101_n_0 ,\intData[1]_i_102_n_0 ,\intData[1]_i_103_n_0 ,\intData[1]_i_104_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_67 
       (.CI(\intData_reg[1]_i_60_n_0 ),
        .CO({\intData_reg[1]_i_67_n_0 ,\NLW_intData_reg[1]_i_67_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\NLW_intData_reg[1]_i_67_O_UNCONNECTED [3],\intData_reg[1]_i_67_n_5 ,\intData_reg[1]_i_67_n_6 ,\intData_reg[1]_i_67_n_7 }),
        .S({1'b1,\intData[1]_i_105_n_0 ,\intData[1]_i_106_n_0 ,\intData[1]_i_107_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[1]_i_80 
       (.CI(1'b0),
        .CO({\intData_reg[1]_i_80_n_0 ,\NLW_intData_reg[1]_i_80_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] ,1'b0}),
        .O(\NLW_intData_reg[1]_i_80_O_UNCONNECTED [3:0]),
        .S({\intData[1]_i_108_n_0 ,\intData[1]_i_109_n_0 ,\intData[1]_i_110_n_0 ,\intData_reg[1]_i_111_n_5 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[1]_i_90 
       (.CI(\intData_reg[1]_i_112_n_0 ),
        .CO({\intData_reg[1]_i_90_n_0 ,\NLW_intData_reg[1]_i_90_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] }),
        .O({\intData_reg[1]_i_90_n_4 ,\intData_reg[1]_i_90_n_5 ,\intData_reg[1]_i_90_n_6 ,\intData_reg[1]_i_90_n_7 }),
        .S({\intData[1]_i_113_n_0 ,\intData[1]_i_114_n_0 ,\intData[1]_i_115_n_0 ,\intData[1]_i_116_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[2] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[2]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[2] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_18 
       (.CI(\intData_reg[2]_i_24_n_0 ),
        .CO({\intData_reg[2]_i_18_n_0 ,\NLW_intData_reg[2]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[15] ,\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] }),
        .O({\intData_reg[15]_0 ,\NLW_intData_reg[2]_i_18_O_UNCONNECTED [2:0]}),
        .S({\intData_reg_n_0_[10] ,\intData[2]_i_25_n_0 ,\intData[2]_i_26_n_0 ,\intData[2]_i_27_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_24 
       (.CI(\intData_reg[2]_i_33_n_0 ),
        .CO({\intData_reg[2]_i_24_n_0 ,\NLW_intData_reg[2]_i_24_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] ,\intData_reg_n_0_[10] ,\intData_reg_n_0_[9] }),
        .O(\NLW_intData_reg[2]_i_24_O_UNCONNECTED [3:0]),
        .S({\intData[2]_i_34_n_0 ,\intData[2]_i_35_n_0 ,\intData[2]_i_36_n_0 ,\intData[2]_i_37_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[2]_i_33 
       (.CI(1'b0),
        .CO({\intData_reg[2]_i_33_n_0 ,\NLW_intData_reg[2]_i_33_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[8] ,\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,1'b0}),
        .O(\NLW_intData_reg[2]_i_33_O_UNCONNECTED [3:0]),
        .S({\intData[2]_i_43_n_0 ,\intData[2]_i_44_n_0 ,\intData[2]_i_45_n_0 ,\intData_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[2]_i_5 
       (.CI(1'b0),
        .CO({\intData_reg[2]_i_5_n_0 ,\NLW_intData_reg[2]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[2]_i_5_n_4 ,data1,\NLW_intData_reg[2]_i_5_O_UNCONNECTED [0]}),
        .S({\intData[2]_i_9_n_0 ,\intData[2]_i_10_n_0 ,\intData[2]_i_11_n_0 ,\intData[2]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[3] 
       (.C(clkPort),
        .CE(\intData[13]_i_2_n_0 ),
        .D(\intData[3]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_17 
       (.CI(\intData_reg[2]_i_5_n_0 ),
        .CO({\intData_reg[3]_i_17_n_0 ,\NLW_intData_reg[3]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData_reg_n_0_[7] ,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[3]_i_17_n_4 ,\intData_reg[3]_i_17_n_5 ,\intData_reg[3]_i_17_n_6 ,\intData_reg[3]_i_17_n_7 }),
        .S({\intData[3]_i_30__0_n_0 ,\intData[3]_i_31__0_n_0 ,\intData[3]_i_32__0_n_0 ,\intData[3]_i_33__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_18 
       (.CI(\intData_reg[3]_i_17_n_0 ),
        .CO(\NLW_intData_reg[3]_i_18_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\intData_reg_n_0_[9] ,\intData_reg_n_0_[8] }),
        .O({\NLW_intData_reg[3]_i_18_O_UNCONNECTED [3],\intData_reg[3]_i_18_n_5 ,\intData_reg[3]_i_18_n_6 ,\intData_reg[3]_i_18_n_7 }),
        .S({1'b0,\intData[3]_i_34_n_0 ,\intData[3]_i_35_n_0 ,\intData[3]_i_36__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_19 
       (.CI(\intData_reg[1]_i_5_n_0 ),
        .CO(\NLW_intData_reg[3]_i_19_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData_reg_n_0_[6] ,\intData_reg_n_0_[5] ,\intData_reg_n_0_[4] }),
        .O({\intData_reg[3]_i_19_n_4 ,\intData_reg[3]_i_19_n_5 ,\intData_reg[3]_i_19_n_6 ,\intData_reg[3]_i_19_n_7 }),
        .S({\intData[3]_i_37_n_0 ,\intData[3]_i_38_n_0 ,\intData[3]_i_39__0_n_0 ,\intData[3]_i_40__0_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[3]_i_46 
       (.CI(1'b0),
        .CO(\NLW_intData_reg[3]_i_46_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData[3]_i_56_n_0 ,\intData[3]_i_57_n_0 ,1'b0}),
        .O({\intData_reg[3]_i_46_n_4 ,\intData_reg[3]_i_46_n_5 ,\intData_reg[3]_i_46_n_6 ,\intData_reg[3]_i_46_n_7 }),
        .S({\intData[3]_i_58_n_0 ,\intData[3]_i_30__0_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \intData_reg[3]_i_47 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_47_n_0 ,\NLW_intData_reg[3]_i_47_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\intData[3]_i_62_n_0 ,\intData[3]_i_63_n_0 ,\intData[3]_i_64_n_0 ,1'b0}),
        .O({\intData[3]_i_68 ,\intData_reg[3]_i_47_n_6 ,\intData_reg[3]_i_47_n_7 }),
        .S(\intData[3]_i_32__0_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_48 
       (.CI(\intData_reg[2]_i_18_n_0 ),
        .CO({\intData_reg[3]_i_48_n_0 ,\NLW_intData_reg[3]_i_48_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\intData_reg[14]_0 ),
        .S({\intData_reg_n_0_[14] ,\intData_reg_n_0_[13] ,\intData_reg_n_0_[12] ,\intData_reg_n_0_[11] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\intData_reg[3]_i_5_n_0 ,\NLW_intData_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\intData_reg_n_0_[3] ,\intData_reg_n_0_[2] ,\intData_reg_n_0_[1] ,\intData_reg_n_0_[0] }),
        .O({\intData_reg[3]_i_5_n_4 ,\intData_reg[3]_i_5_n_5 ,\intData_reg[3]_i_5_n_6 ,\intData_reg[3]_i_5_n_7 }),
        .S({\intData[3]_i_11_n_0 ,\intData[3]_i_12_n_0 ,\intData[3]_i_13_n_0 ,\intData[3]_i_14_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_50 
       (.CI(\intData_reg[1]_i_18_n_0 ),
        .CO(\NLW_intData_reg[3]_i_50_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\intData[3]_i_73_n_0 ,\intData[3]_i_74_n_0 ,\intData[3]_i_75_n_0 }),
        .O(\intData_reg[9]_0 ),
        .S({\intData[3]_i_76_n_0 ,\intData[3]_i_77_n_0 ,\intData[3]_i_78_n_0 ,\intData[3]_i_79_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \intData_reg[3]_i_85 
       (.CI(\intData_reg[3]_i_47_n_0 ),
        .CO(\NLW_intData_reg[3]_i_85_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\intData[3]_i_95_n_0 }),
        .O({\NLW_intData_reg[3]_i_85_O_UNCONNECTED [3:2],\intData_reg[3]_i_85_n_6 ,\intData[3]_i_97 }),
        .S({1'b0,1'b0,\intData[3]_i_96_n_0 ,\intData[3]_i_59 }));
  CARRY4 \intData_reg[3]_i_86 
       (.CI(\intData_reg[3]_i_48_n_0 ),
        .CO({\NLW_intData_reg[3]_i_86_CO_UNCONNECTED [3:2],CO,\NLW_intData_reg[3]_i_86_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_intData_reg[3]_i_86_O_UNCONNECTED [3:1],\intData_reg[15]_1 }),
        .S({1'b0,1'b0,1'b1,\intData_reg_n_0_[15] }));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[4] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[4]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[5] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[5]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[6] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[6]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[7] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[7]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[8] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[8]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[9] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData[9]_i_1_n_0 ),
        .Q(\intData_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[0][0]_i_1 
       (.I0(\regPort[0] [0]),
        .I1(\intReg[0][0]_i_2_n_0 ),
        .I2(\intReg[0][7]_i_2_n_0 ),
        .I3(p_3_in[5]),
        .I4(data0[0]),
        .I5(\intReg[0][2]_i_4_n_0 ),
        .O(\intReg[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[0][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(space),
        .O(\intReg[0][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intReg[0][1]_i_1 
       (.I0(\regPort[0] [1]),
        .I1(\intReg[0][2]_i_2_n_0 ),
        .I2(\intReg[0][1]_i_2_n_0 ),
        .I3(\intReg[0][2]_i_4_n_0 ),
        .O(\intReg[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE40000)) 
    \intReg[0][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[0][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \intReg[0][2]_i_1 
       (.I0(\regPort[0] [2]),
        .I1(\intReg[0][2]_i_2_n_0 ),
        .I2(\intReg[0][2]_i_3__0_n_0 ),
        .I3(\intReg[0][2]_i_4_n_0 ),
        .O(\intReg[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
    \intReg[0][2]_i_2 
       (.I0(clr),
        .I1(write),
        .I2(wtNeg),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E40000)) 
    \intReg[0][2]_i_3__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[0][2]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[0][2]_i_4 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[0][7]_i_5_n_0 ),
        .I2(space),
        .O(\intReg[0][2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \intReg[0][3]_i_1 
       (.I0(write),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(p_3_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \intReg[0][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[0][7]_i_4_n_0 ),
        .I3(wtNeg),
        .O(p_3_in[4]));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[0][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(write),
        .O(p_3_in[5]));
  LUT4 #(
    .INIT(16'hE200)) 
    \intReg[0][7]_i_1 
       (.I0(\intReg[0][7]_i_4_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(\intReg[0][7]_i_5_n_0 ),
        .I3(space),
        .O(\intReg[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0C08)) 
    \intReg[0][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \intReg[0][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(p_3_in[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \intReg[0][7]_i_4 
       (.I0(\intReg[2][7]_i_4_n_0 ),
        .I1(Q),
        .O(\intReg[0][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \intReg[0][7]_i_5 
       (.I0(maxAddrPort[2]),
        .I1(maxAddrPort[4]),
        .I2(\intReg[0][7]_i_6_n_0 ),
        .I3(maxAddrPort[7]),
        .I4(maxAddrPort[3]),
        .I5(Q),
        .O(\intReg[0][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[0][7]_i_6 
       (.I0(maxAddrPort[5]),
        .I1(maxAddrPort[6]),
        .O(\intReg[0][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[1][0]_i_1 
       (.I0(\regPort[1] [0]),
        .I1(\intReg[1][0]_i_2_n_0 ),
        .I2(\intReg[1][7]_i_2_n_0 ),
        .I3(\intReg[1][5]_i_1_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[0][0]_i_2_n_0 ),
        .O(\intReg[1][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[1][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(space),
        .O(\intReg[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E200E2E2E2)) 
    \intReg[1][1]_i_1 
       (.I0(\regPort[1] [1]),
        .I1(\intReg[1][7]_i_2_n_0 ),
        .I2(\intReg[1][1]_i_2_n_0 ),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE4000000000000)) 
    \intReg[1][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E2FFE2E2E2)) 
    \intReg[1][2]_i_1 
       (.I0(\regPort[1] [2]),
        .I1(\intReg[1][7]_i_2_n_0 ),
        .I2(\intReg[1][2]_i_2__0_n_0 ),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E4000000000000)) 
    \intReg[1][2]_i_2__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[0][7]_i_4_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[1][2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \intReg[1][3]_i_1 
       (.I0(write),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(\intReg[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \intReg[1][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[0][7]_i_4_n_0 ),
        .I3(wtNeg),
        .O(\intReg[1][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[1][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(write),
        .O(\intReg[1][5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[1][7]_i_1 
       (.I0(\intReg[0][7]_i_4_n_0 ),
        .I1(space),
        .O(\intReg[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC080)) 
    \intReg[1][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \intReg[1][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[0][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(\intReg[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[2][0]_i_1 
       (.I0(\regPort[2] [0]),
        .I1(\intReg[2][0]_i_2_n_0 ),
        .I2(\intReg[2][7]_i_2_n_0 ),
        .I3(\intReg[2][5]_i_1_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[1][0]_i_2_n_0 ),
        .O(\intReg[2][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[2][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(space),
        .O(\intReg[2][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intReg[2][1]_i_1 
       (.I0(\regPort[2] [1]),
        .I1(\intReg[2][2]_i_2_n_0 ),
        .I2(\intReg[2][1]_i_2_n_0 ),
        .I3(\intReg[1][0]_i_2_n_0 ),
        .O(\intReg[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE40000)) 
    \intReg[2][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[2][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \intReg[2][2]_i_1 
       (.I0(\regPort[2] [2]),
        .I1(\intReg[2][2]_i_2_n_0 ),
        .I2(\intReg[2][2]_i_3__0_n_0 ),
        .I3(\intReg[1][0]_i_2_n_0 ),
        .O(\intReg[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
    \intReg[2][2]_i_2 
       (.I0(clr),
        .I1(write),
        .I2(wtNeg),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E40000)) 
    \intReg[2][2]_i_3__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[2][2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \intReg[2][3]_i_1 
       (.I0(write),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(\intReg[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \intReg[2][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[2][7]_i_5_n_0 ),
        .I3(wtNeg),
        .O(\intReg[2][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[2][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(write),
        .O(\intReg[2][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4800)) 
    \intReg[2][7]_i_1 
       (.I0(Q),
        .I1(\intReg[2][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(space),
        .O(\intReg[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0C08)) 
    \intReg[2][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \intReg[2][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(\intReg[2][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \intReg[2][7]_i_4 
       (.I0(maxAddrPort[3]),
        .I1(maxAddrPort[7]),
        .I2(maxAddrPort[5]),
        .I3(maxAddrPort[6]),
        .I4(maxAddrPort[4]),
        .I5(maxAddrPort[2]),
        .O(\intReg[2][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[2][7]_i_5 
       (.I0(\intReg[2][7]_i_4_n_0 ),
        .I1(Q),
        .O(\intReg[2][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[3][0]_i_1 
       (.I0(\regPort[3] [0]),
        .I1(\intReg[3][0]_i_2_n_0 ),
        .I2(\intReg[3][7]_i_2_n_0 ),
        .I3(\intReg[3][5]_i_1_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[2][0]_i_2_n_0 ),
        .O(\intReg[3][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[3][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(space),
        .O(\intReg[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E200E2E2E2)) 
    \intReg[3][1]_i_1 
       (.I0(\regPort[3] [1]),
        .I1(\intReg[3][7]_i_2_n_0 ),
        .I2(\intReg[3][1]_i_2_n_0 ),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE4000000000000)) 
    \intReg[3][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E2FFE2E2E2)) 
    \intReg[3][2]_i_1 
       (.I0(\regPort[3] [2]),
        .I1(\intReg[3][7]_i_2_n_0 ),
        .I2(\intReg[3][2]_i_2__0_n_0 ),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E4000000000000)) 
    \intReg[3][2]_i_2__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[2][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[3][2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \intReg[3][3]_i_1 
       (.I0(write),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(\intReg[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \intReg[3][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[2][7]_i_5_n_0 ),
        .I3(wtNeg),
        .O(\intReg[3][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[3][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(write),
        .O(\intReg[3][5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[3][7]_i_1 
       (.I0(\intReg[2][7]_i_5_n_0 ),
        .I1(space),
        .O(\intReg[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC080)) 
    \intReg[3][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \intReg[3][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[2][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(\intReg[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[4][0]_i_1 
       (.I0(\regPort[4] [0]),
        .I1(\intReg[4][0]_i_2_n_0 ),
        .I2(\intReg[4][7]_i_2_n_0 ),
        .I3(\intReg[4][5]_i_1_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[3][0]_i_2_n_0 ),
        .O(\intReg[4][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[4][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(space),
        .O(\intReg[4][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intReg[4][1]_i_1 
       (.I0(\regPort[4] [1]),
        .I1(\intReg[4][2]_i_2_n_0 ),
        .I2(\intReg[4][1]_i_2_n_0 ),
        .I3(\intReg[3][0]_i_2_n_0 ),
        .O(\intReg[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE40000)) 
    \intReg[4][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[4][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \intReg[4][2]_i_1 
       (.I0(\regPort[4] [2]),
        .I1(\intReg[4][2]_i_2_n_0 ),
        .I2(\intReg[4][2]_i_3__0_n_0 ),
        .I3(\intReg[3][0]_i_2_n_0 ),
        .O(\intReg[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
    \intReg[4][2]_i_2 
       (.I0(clr),
        .I1(write),
        .I2(wtNeg),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E40000)) 
    \intReg[4][2]_i_3__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[4][2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \intReg[4][3]_i_1 
       (.I0(write),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(\intReg[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \intReg[4][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[4][7]_i_5_n_0 ),
        .I3(wtNeg),
        .O(\intReg[4][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \intReg[4][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(write),
        .O(\intReg[4][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08400000)) 
    \intReg[4][7]_i_1 
       (.I0(Q),
        .I1(\intReg[4][7]_i_4_n_0 ),
        .I2(maxAddrPort[2]),
        .I3(maxAddrPort[0]),
        .I4(space),
        .O(\intReg[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0C08)) 
    \intReg[4][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \intReg[4][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(\intReg[4][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \intReg[4][7]_i_4 
       (.I0(maxAddrPort[4]),
        .I1(maxAddrPort[6]),
        .I2(maxAddrPort[5]),
        .I3(maxAddrPort[7]),
        .I4(maxAddrPort[3]),
        .O(\intReg[4][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \intReg[4][7]_i_5 
       (.I0(\intReg[6][7]_i_4_n_0 ),
        .I1(Q),
        .O(\intReg[4][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[5][0]_i_1 
       (.I0(\regPort[5] [0]),
        .I1(\intReg[5][0]_i_2_n_0 ),
        .I2(\intReg[5][7]_i_2_n_0 ),
        .I3(\intReg[5][5]_i_1_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[4][0]_i_2_n_0 ),
        .O(\intReg[5][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[5][0]_i_2 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(space),
        .O(\intReg[5][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E200E2E2E2)) 
    \intReg[5][1]_i_1 
       (.I0(\regPort[5] [1]),
        .I1(\intReg[5][7]_i_2_n_0 ),
        .I2(\intReg[5][1]_i_2_n_0 ),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE4000000000000)) 
    \intReg[5][1]_i_2 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[1]),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2E2E2FFE2E2E2)) 
    \intReg[5][2]_i_1 
       (.I0(\regPort[5] [2]),
        .I1(\intReg[5][7]_i_2_n_0 ),
        .I2(\intReg[5][2]_i_2__0_n_0 ),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E4000000000000)) 
    \intReg[5][2]_i_2__0 
       (.I0(write),
        .I1(wtNeg),
        .I2(data0[2]),
        .I3(space),
        .I4(\intReg[4][7]_i_5_n_0 ),
        .I5(maxAddrPort[0]),
        .O(\intReg[5][2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \intReg[5][3]_i_1 
       (.I0(write),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(data0[3]),
        .O(\intReg[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \intReg[5][4]_i_1 
       (.I0(write),
        .I1(maxAddrPort[0]),
        .I2(\intReg[4][7]_i_5_n_0 ),
        .I3(wtNeg),
        .O(\intReg[5][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[5][5]_i_1 
       (.I0(maxAddrPort[0]),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(write),
        .O(\intReg[5][5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[5][7]_i_1 
       (.I0(\intReg[4][7]_i_5_n_0 ),
        .I1(space),
        .O(\intReg[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC080)) 
    \intReg[5][7]_i_2 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .I4(clr),
        .O(\intReg[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \intReg[5][7]_i_3 
       (.I0(wtNeg),
        .I1(\intReg[4][7]_i_5_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(write),
        .O(\intReg[5][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[6][0]_i_1 
       (.I0(\regPort[6] [0]),
        .I1(\intReg[6][0]_i_2__0_n_0 ),
        .I2(\intReg[6][7]_i_2__0_n_0 ),
        .I3(\intReg[6][5]_i_1__0_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[5][0]_i_2_n_0 ),
        .O(\intReg[6][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \intReg[6][0]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(space),
        .O(\intReg[6][0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intReg[6][1]_i_1 
       (.I0(\regPort[6] [1]),
        .I1(\intReg[6][2]_i_2__0_n_0 ),
        .I2(\intReg[6][1]_i_2__0_n_0 ),
        .I3(\intReg[5][0]_i_2_n_0 ),
        .O(\intReg[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222200200)) 
    \intReg[6][1]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(data0[1]),
        .I5(space),
        .O(\intReg[6][1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \intReg[6][2]_i_1 
       (.I0(\regPort[6] [2]),
        .I1(\intReg[6][2]_i_2__0_n_0 ),
        .I2(\intReg[6][2]_i_3__0_n_0 ),
        .I3(\intReg[5][0]_i_2_n_0 ),
        .O(\intReg[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2F2F2F2F2F0)) 
    \intReg[6][2]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(clr),
        .I3(write),
        .I4(wtNeg),
        .I5(space),
        .O(\intReg[6][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022200200)) 
    \intReg[6][2]_i_3__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(data0[2]),
        .I5(space),
        .O(\intReg[6][2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \intReg[6][3]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(data0[3]),
        .O(\intReg[6][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \intReg[6][4]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .O(\intReg[6][4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \intReg[6][5]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .O(\intReg[6][5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4800)) 
    \intReg[6][7]_i_1 
       (.I0(Q),
        .I1(\intReg[6][7]_i_4_n_0 ),
        .I2(maxAddrPort[0]),
        .I3(space),
        .O(\intReg[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2220)) 
    \intReg[6][7]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(clr),
        .O(\intReg[6][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \intReg[6][7]_i_3__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(wtNeg),
        .I3(write),
        .O(\intReg[6][7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \intReg[6][7]_i_4 
       (.I0(maxAddrPort[3]),
        .I1(maxAddrPort[7]),
        .I2(maxAddrPort[5]),
        .I3(maxAddrPort[6]),
        .I4(maxAddrPort[4]),
        .I5(maxAddrPort[2]),
        .O(\intReg[6][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[6][7]_i_5 
       (.I0(\intReg[6][7]_i_4_n_0 ),
        .I1(Q),
        .O(\intReg[6][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32020202)) 
    \intReg[7][0]_i_1 
       (.I0(\regPort[7] [0]),
        .I1(\intReg[7][0]_i_2__0_n_0 ),
        .I2(\intReg[7][7]_i_2__0_n_0 ),
        .I3(\intReg[7][5]_i_1__0_n_0 ),
        .I4(data0[0]),
        .I5(\intReg[6][0]_i_2__0_n_0 ),
        .O(\intReg[7][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[7][0]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(space),
        .O(\intReg[7][0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \intReg[7][1]_i_1 
       (.I0(\regPort[7] [1]),
        .I1(\intReg[7][2]_i_2_n_0 ),
        .I2(\intReg[7][1]_i_2_n_0 ),
        .I3(\intReg[6][0]_i_2__0_n_0 ),
        .O(\intReg[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888800800)) 
    \intReg[7][1]_i_2 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(data0[1]),
        .I5(space),
        .O(\intReg[7][1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \intReg[7][2]_i_1 
       (.I0(\regPort[7] [2]),
        .I1(\intReg[7][2]_i_2_n_0 ),
        .I2(\intReg[7][2]_i_3_n_0 ),
        .I3(\intReg[6][0]_i_2__0_n_0 ),
        .O(\intReg[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F8F0)) 
    \intReg[7][2]_i_2 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(clr),
        .I3(write),
        .I4(wtNeg),
        .I5(space),
        .O(\intReg[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088800800)) 
    \intReg[7][2]_i_3 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(data0[2]),
        .I5(space),
        .O(\intReg[7][2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \intReg[7][3]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(data0[3]),
        .O(\intReg[7][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \intReg[7][4]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .O(\intReg[7][4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \intReg[7][5]_i_1__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .O(\intReg[7][5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \intReg[7][7]_i_1 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(space),
        .O(\intReg[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    \intReg[7][7]_i_2__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(write),
        .I3(wtNeg),
        .I4(clr),
        .O(\intReg[7][7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \intReg[7][7]_i_3__0 
       (.I0(\intReg[6][7]_i_5_n_0 ),
        .I1(maxAddrPort[0]),
        .I2(wtNeg),
        .I3(write),
        .O(\intReg[7][7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][0]_i_1_n_0 ),
        .Q(\regPort[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][1]_i_1_n_0 ),
        .Q(\regPort[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][2]_i_1_n_0 ),
        .Q(\regPort[0] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[0][3] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2_n_0 ),
        .D(p_3_in[3]),
        .Q(\regPort[0] [3]),
        .S(\intReg[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][4] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2_n_0 ),
        .D(p_3_in[4]),
        .Q(\regPort[0] [4]),
        .R(\intReg[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][5] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2_n_0 ),
        .D(p_3_in[5]),
        .Q(\regPort[0] [5]),
        .R(\intReg[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][7] 
       (.C(clkPort),
        .CE(\intReg[0][7]_i_2_n_0 ),
        .D(p_3_in[7]),
        .Q(\regPort[0] [6]),
        .R(\intReg[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][0]_i_1_n_0 ),
        .Q(\regPort[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][1]_i_1_n_0 ),
        .Q(\regPort[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][2]_i_1_n_0 ),
        .Q(\regPort[1] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[1][3] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2_n_0 ),
        .D(\intReg[1][3]_i_1_n_0 ),
        .Q(\regPort[1] [3]),
        .S(\intReg[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][4] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2_n_0 ),
        .D(\intReg[1][4]_i_1_n_0 ),
        .Q(\regPort[1] [4]),
        .R(\intReg[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][5] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2_n_0 ),
        .D(\intReg[1][5]_i_1_n_0 ),
        .Q(\intReg_reg[1][5]_0 ),
        .R(\intReg[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][7] 
       (.C(clkPort),
        .CE(\intReg[1][7]_i_2_n_0 ),
        .D(\intReg[1][7]_i_3_n_0 ),
        .Q(\regPort[1] [7]),
        .R(\intReg[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][0]_i_1_n_0 ),
        .Q(\regPort[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][1]_i_1_n_0 ),
        .Q(\regPort[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[2][2]_i_1_n_0 ),
        .Q(\regPort[2] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[2][3] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2_n_0 ),
        .D(\intReg[2][3]_i_1_n_0 ),
        .Q(\regPort[2] [3]),
        .S(\intReg[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][4] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2_n_0 ),
        .D(\intReg[2][4]_i_1_n_0 ),
        .Q(\regPort[2] [4]),
        .R(\intReg[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][5] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2_n_0 ),
        .D(\intReg[2][5]_i_1_n_0 ),
        .Q(\regPort[2] [5]),
        .R(\intReg[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][7] 
       (.C(clkPort),
        .CE(\intReg[2][7]_i_2_n_0 ),
        .D(\intReg[2][7]_i_3_n_0 ),
        .Q(\regPort[2] [7]),
        .R(\intReg[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][0]_i_1_n_0 ),
        .Q(\regPort[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][1]_i_1_n_0 ),
        .Q(\regPort[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[3][2]_i_1_n_0 ),
        .Q(\regPort[3] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[3][3] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2_n_0 ),
        .D(\intReg[3][3]_i_1_n_0 ),
        .Q(\regPort[3] [3]),
        .S(\intReg[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][4] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2_n_0 ),
        .D(\intReg[3][4]_i_1_n_0 ),
        .Q(\regPort[3] [4]),
        .R(\intReg[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][5] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2_n_0 ),
        .D(\intReg[3][5]_i_1_n_0 ),
        .Q(\regPort[3] [5]),
        .R(\intReg[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][7] 
       (.C(clkPort),
        .CE(\intReg[3][7]_i_2_n_0 ),
        .D(\intReg[3][7]_i_3_n_0 ),
        .Q(\regPort[3] [7]),
        .R(\intReg[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][0]_i_1_n_0 ),
        .Q(\regPort[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][1]_i_1_n_0 ),
        .Q(\regPort[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[4][2]_i_1_n_0 ),
        .Q(\regPort[4] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[4][3] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2_n_0 ),
        .D(\intReg[4][3]_i_1_n_0 ),
        .Q(\regPort[4] [3]),
        .S(\intReg[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][4] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2_n_0 ),
        .D(\intReg[4][4]_i_1_n_0 ),
        .Q(\regPort[4] [4]),
        .R(\intReg[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][5] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2_n_0 ),
        .D(\intReg[4][5]_i_1_n_0 ),
        .Q(\regPort[4] [5]),
        .R(\intReg[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][7] 
       (.C(clkPort),
        .CE(\intReg[4][7]_i_2_n_0 ),
        .D(\intReg[4][7]_i_3_n_0 ),
        .Q(\regPort[4] [7]),
        .R(\intReg[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][0]_i_1_n_0 ),
        .Q(\regPort[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][1]_i_1_n_0 ),
        .Q(\regPort[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[5][2]_i_1_n_0 ),
        .Q(\regPort[5] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[5][3] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2_n_0 ),
        .D(\intReg[5][3]_i_1_n_0 ),
        .Q(\regPort[5] [3]),
        .S(\intReg[5][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][4] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2_n_0 ),
        .D(\intReg[5][4]_i_1_n_0 ),
        .Q(\regPort[5] [4]),
        .R(\intReg[5][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][5] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2_n_0 ),
        .D(\intReg[5][5]_i_1_n_0 ),
        .Q(\regPort[5] [5]),
        .R(\intReg[5][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][7] 
       (.C(clkPort),
        .CE(\intReg[5][7]_i_2_n_0 ),
        .D(\intReg[5][7]_i_3_n_0 ),
        .Q(\regPort[5] [7]),
        .R(\intReg[5][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][0]_i_1_n_0 ),
        .Q(\regPort[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][1]_i_1_n_0 ),
        .Q(\regPort[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[6][2]_i_1_n_0 ),
        .Q(\regPort[6] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[6][3] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2__0_n_0 ),
        .D(\intReg[6][3]_i_1__0_n_0 ),
        .Q(\regPort[6] [3]),
        .S(\intReg[6][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][4] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2__0_n_0 ),
        .D(\intReg[6][4]_i_1__0_n_0 ),
        .Q(\regPort[6] [4]),
        .R(\intReg[6][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][5] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2__0_n_0 ),
        .D(\intReg[6][5]_i_1__0_n_0 ),
        .Q(\regPort[6] [5]),
        .R(\intReg[6][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][7] 
       (.C(clkPort),
        .CE(\intReg[6][7]_i_2__0_n_0 ),
        .D(\intReg[6][7]_i_3__0_n_0 ),
        .Q(\regPort[6] [7]),
        .R(\intReg[6][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][0]_i_1_n_0 ),
        .Q(\regPort[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][1]_i_1_n_0 ),
        .Q(\regPort[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[7][2]_i_1_n_0 ),
        .Q(\regPort[7] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \intReg_reg[7][3] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2__0_n_0 ),
        .D(\intReg[7][3]_i_1__0_n_0 ),
        .Q(\regPort[7] [3]),
        .S(\intReg[7][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][4] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2__0_n_0 ),
        .D(\intReg[7][4]_i_1__0_n_0 ),
        .Q(\regPort[7] [4]),
        .R(\intReg[7][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][5] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2__0_n_0 ),
        .D(\intReg[7][5]_i_1__0_n_0 ),
        .Q(\regPort[7] [5]),
        .R(\intReg[7][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][7] 
       (.C(clkPort),
        .CE(\intReg[7][7]_i_2__0_n_0 ),
        .D(\intReg[7][7]_i_3__0_n_0 ),
        .Q(\regPort[7] [7]),
        .R(\intReg[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[0]_i_1 
       (.I0(ansMaxAddr[0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[0]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[2]_i_1 
       (.I0(ansMaxAddr[1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[2]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[3]_i_1 
       (.I0(ansMaxAddr[2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[3]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[4]_i_1 
       (.I0(ansMaxAddr[3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[4]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[5]_i_1 
       (.I0(ansMaxAddr[4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[5]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[6]_i_1 
       (.I0(ansMaxAddr[5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[6]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \maxAddr_reg[7]_i_1 
       (.I0(ansMaxAddr[6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(maxAddrPort[7]),
        .I3(newOpReg),
        .O(\intAddr_reg[7]_0 [6]));
  LUT2 #(
    .INIT(4'h8)) 
    neg_i_1
       (.I0(chNeg),
        .I1(neg_reg_0[15]),
        .O(neg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    neg_reg
       (.C(clkPort),
        .CE(1'b1),
        .D(neg_i_1_n_0),
        .Q(neg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0BF8)) 
    \numDig[0]_i_1 
       (.I0(\numDig[0]_i_2_n_0 ),
        .I1(count),
        .I2(convert),
        .I3(p_0_in[0]),
        .O(\numDig[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \numDig[0]_i_10 
       (.I0(neg_reg_0[8]),
        .I1(neg_reg_0[7]),
        .I2(neg_reg_0[4]),
        .I3(neg_reg_0[6]),
        .I4(neg_reg_0[5]),
        .I5(neg_reg_0[9]),
        .O(\numDig[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB888B8)) 
    \numDig[0]_i_11 
       (.I0(\numDig[1]_i_8_n_0 ),
        .I1(neg_reg_0[9]),
        .I2(\numDig[0]_i_12_n_0 ),
        .I3(neg_reg_0[5]),
        .I4(\numDig[0]_i_13_n_0 ),
        .I5(neg_reg_0[8]),
        .O(\numDig[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001115)) 
    \numDig[0]_i_12 
       (.I0(neg_reg_0[6]),
        .I1(neg_reg_0[3]),
        .I2(neg_reg_0[1]),
        .I3(neg_reg_0[2]),
        .I4(neg_reg_0[4]),
        .I5(neg_reg_0[7]),
        .O(\numDig[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \numDig[0]_i_13 
       (.I0(neg_reg_0[6]),
        .I1(neg_reg_0[3]),
        .I2(neg_reg_0[2]),
        .I3(neg_reg_0[4]),
        .I4(neg_reg_0[7]),
        .O(\numDig[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \numDig[0]_i_2 
       (.I0(numDig3[15]),
        .I1(\numDig[0]_i_3_n_0 ),
        .I2(\numDig_reg[2]_i_3_n_0 ),
        .I3(numDig3[14]),
        .I4(neg_reg_0[15]),
        .I5(\numDig[0]_i_4_n_0 ),
        .O(\numDig[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC8C8C3C0)) 
    \numDig[0]_i_3 
       (.I0(\numDig[0]_i_5_n_0 ),
        .I1(numDig3[13]),
        .I2(numDig3[12]),
        .I3(\numDig[0]_i_6_n_0 ),
        .I4(numDig3[10]),
        .I5(numDig3[11]),
        .O(\numDig[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \numDig[0]_i_4 
       (.I0(\numDig[0]_i_7_n_0 ),
        .I1(neg_reg_0[14]),
        .O(\numDig[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \numDig[0]_i_5 
       (.I0(numDig3[8]),
        .I1(numDig3[7]),
        .I2(numDig3[4]),
        .I3(numDig3[6]),
        .I4(numDig3[5]),
        .I5(numDig3[9]),
        .O(\numDig[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB888B8)) 
    \numDig[0]_i_6 
       (.I0(\numDig[1]_i_9_n_0 ),
        .I1(numDig3[9]),
        .I2(\numDig[0]_i_8_n_0 ),
        .I3(numDig3[5]),
        .I4(\numDig[0]_i_9_n_0 ),
        .I5(numDig3[8]),
        .O(\numDig[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC8C8C3C0)) 
    \numDig[0]_i_7 
       (.I0(\numDig[0]_i_10_n_0 ),
        .I1(neg_reg_0[13]),
        .I2(neg_reg_0[12]),
        .I3(\numDig[0]_i_11_n_0 ),
        .I4(neg_reg_0[10]),
        .I5(neg_reg_0[11]),
        .O(\numDig[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001115)) 
    \numDig[0]_i_8 
       (.I0(numDig3[6]),
        .I1(numDig3[3]),
        .I2(numDig3[1]),
        .I3(numDig3[2]),
        .I4(numDig3[4]),
        .I5(numDig3[7]),
        .O(\numDig[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \numDig[0]_i_9 
       (.I0(numDig3[6]),
        .I1(numDig3[3]),
        .I2(numDig3[2]),
        .I3(numDig3[4]),
        .I4(numDig3[7]),
        .O(\numDig[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAACF55C0)) 
    \numDig[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(\numDig_reg[1]_i_2_n_0 ),
        .I2(count),
        .I3(convert),
        .I4(p_0_in[1]),
        .O(\numDig[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \numDig[1]_i_10 
       (.I0(numDig3[7]),
        .I1(numDig3[4]),
        .I2(\numDig[1]_i_11_n_0 ),
        .I3(numDig3[3]),
        .I4(numDig3[6]),
        .I5(numDig3[5]),
        .O(\numDig[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \numDig[1]_i_11 
       (.I0(numDig3[2]),
        .I1(numDig3[1]),
        .O(\numDig[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \numDig[1]_i_3 
       (.I0(neg_reg_0[13]),
        .I1(neg_reg_0[12]),
        .I2(\numDig[1]_i_5_n_0 ),
        .I3(neg_reg_0[11]),
        .I4(neg_reg_0[14]),
        .O(\numDig[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \numDig[1]_i_4 
       (.I0(numDig3[15]),
        .I1(numDig3[13]),
        .I2(\numDig[1]_i_6_n_0 ),
        .I3(numDig3[11]),
        .I4(\numDig_reg[2]_i_3_n_0 ),
        .I5(numDig3[14]),
        .O(\numDig[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \numDig[1]_i_5 
       (.I0(neg_reg_0[8]),
        .I1(\numDig[1]_i_7_n_0 ),
        .I2(neg_reg_0[5]),
        .I3(neg_reg_0[9]),
        .I4(\numDig[1]_i_8_n_0 ),
        .I5(neg_reg_0[10]),
        .O(\numDig[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045454540)) 
    \numDig[1]_i_6 
       (.I0(numDig3[10]),
        .I1(\numDig[1]_i_9_n_0 ),
        .I2(numDig3[9]),
        .I3(\numDig[1]_i_10_n_0 ),
        .I4(numDig3[8]),
        .I5(numDig3[12]),
        .O(\numDig[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \numDig[1]_i_7 
       (.I0(neg_reg_0[6]),
        .I1(neg_reg_0[3]),
        .I2(neg_reg_0[2]),
        .I3(neg_reg_0[1]),
        .I4(neg_reg_0[4]),
        .I5(neg_reg_0[7]),
        .O(\numDig[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \numDig[1]_i_8 
       (.I0(neg_reg_0[5]),
        .I1(neg_reg_0[6]),
        .I2(neg_reg_0[4]),
        .I3(neg_reg_0[3]),
        .I4(neg_reg_0[7]),
        .I5(neg_reg_0[8]),
        .O(\numDig[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    \numDig[1]_i_9 
       (.I0(numDig3[5]),
        .I1(numDig3[6]),
        .I2(numDig3[4]),
        .I3(numDig3[3]),
        .I4(numDig3[7]),
        .I5(numDig3[8]),
        .O(\numDig[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEF0FF1111F000)) 
    \numDig[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\numDig[2]_i_2_n_0 ),
        .I3(count),
        .I4(convert),
        .I5(p_0_in[2]),
        .O(\numDig[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \numDig[2]_i_10 
       (.I0(numDig3[5]),
        .I1(numDig3[6]),
        .I2(numDig3[3]),
        .I3(numDig3[4]),
        .I4(numDig3[7]),
        .I5(numDig3[8]),
        .O(\numDig[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \numDig[2]_i_11 
       (.I0(neg_reg_0[8]),
        .I1(neg_reg_0[7]),
        .I2(\numDig[2]_i_18_n_0 ),
        .I3(neg_reg_0[6]),
        .I4(neg_reg_0[5]),
        .I5(neg_reg_0[9]),
        .O(\numDig[2]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_13 
       (.I0(neg_reg_0[12]),
        .O(\numDig[2]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_14 
       (.I0(neg_reg_0[11]),
        .O(\numDig[2]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_15 
       (.I0(neg_reg_0[10]),
        .O(\numDig[2]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_16 
       (.I0(neg_reg_0[9]),
        .O(\numDig[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \numDig[2]_i_18 
       (.I0(neg_reg_0[3]),
        .I1(neg_reg_0[4]),
        .O(\numDig[2]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_19 
       (.I0(neg_reg_0[8]),
        .O(\numDig[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \numDig[2]_i_2 
       (.I0(numDig3[15]),
        .I1(\numDig[2]_i_4_n_0 ),
        .I2(\numDig_reg[2]_i_3_n_0 ),
        .I3(numDig3[14]),
        .I4(neg_reg_0[15]),
        .I5(\numDig[2]_i_5_n_0 ),
        .O(\numDig[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_20 
       (.I0(neg_reg_0[7]),
        .O(\numDig[2]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_21 
       (.I0(neg_reg_0[6]),
        .O(\numDig[2]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_22 
       (.I0(neg_reg_0[5]),
        .O(\numDig[2]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_23 
       (.I0(neg_reg_0[4]),
        .O(\numDig[2]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_24 
       (.I0(neg_reg_0[3]),
        .O(\numDig[2]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_25 
       (.I0(neg_reg_0[2]),
        .O(\numDig[2]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_26 
       (.I0(neg_reg_0[1]),
        .O(\numDig[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \numDig[2]_i_4 
       (.I0(numDig3[11]),
        .I1(numDig3[10]),
        .I2(\numDig[2]_i_10_n_0 ),
        .I3(numDig3[9]),
        .I4(numDig3[12]),
        .I5(numDig3[13]),
        .O(\numDig[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \numDig[2]_i_5 
       (.I0(neg_reg_0[13]),
        .I1(neg_reg_0[12]),
        .I2(\numDig[2]_i_11_n_0 ),
        .I3(neg_reg_0[10]),
        .I4(neg_reg_0[11]),
        .I5(neg_reg_0[14]),
        .O(\numDig[2]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_7 
       (.I0(neg_reg_0[15]),
        .O(\numDig[2]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_8 
       (.I0(neg_reg_0[14]),
        .O(\numDig[2]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \numDig[2]_i_9 
       (.I0(neg_reg_0[13]),
        .O(\numDig[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig[0]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig[1]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  MUXF7 \numDig_reg[1]_i_2 
       (.I0(\numDig[1]_i_3_n_0 ),
        .I1(\numDig[1]_i_4_n_0 ),
        .O(\numDig_reg[1]_i_2_n_0 ),
        .S(neg_reg_0[15]));
  FDRE #(
    .INIT(1'b0)) 
    \numDig_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\numDig[2]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[2]_i_12 
       (.CI(\numDig_reg[2]_i_17_n_0 ),
        .CO({\numDig_reg[2]_i_12_n_0 ,\NLW_numDig_reg[2]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(numDig3[8:5]),
        .S({\numDig[2]_i_19_n_0 ,\numDig[2]_i_20_n_0 ,\numDig[2]_i_21_n_0 ,\numDig[2]_i_22_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[2]_i_17 
       (.CI(1'b0),
        .CO({\numDig_reg[2]_i_17_n_0 ,\NLW_numDig_reg[2]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(\num_reg[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(numDig3[4:1]),
        .S({\numDig[2]_i_23_n_0 ,\numDig[2]_i_24_n_0 ,\numDig[2]_i_25_n_0 ,\numDig[2]_i_26_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[2]_i_3 
       (.CI(\numDig_reg[2]_i_6_n_0 ),
        .CO({\numDig_reg[2]_i_3_n_0 ,\NLW_numDig_reg[2]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b0}),
        .O({\NLW_numDig_reg[2]_i_3_O_UNCONNECTED [3],numDig3[15:13]}),
        .S({1'b1,\numDig[2]_i_7_n_0 ,\numDig[2]_i_8_n_0 ,\numDig[2]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \numDig_reg[2]_i_6 
       (.CI(\numDig_reg[2]_i_12_n_0 ),
        .CO({\numDig_reg[2]_i_6_n_0 ,\NLW_numDig_reg[2]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(numDig3[12:9]),
        .S({\numDig[2]_i_13_n_0 ,\numDig[2]_i_14_n_0 ,\numDig[2]_i_15_n_0 ,\numDig[2]_i_16_n_0 }));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][0]_i_1 
       (.I0(\ansReg[1] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [0]),
        .I3(newOpReg),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][1]_i_1 
       (.I0(\ansReg[1] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [1]),
        .I3(newOpReg),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][2]_i_1 
       (.I0(\ansReg[1] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [2]),
        .I3(newOpReg),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][3]_i_1 
       (.I0(\ansReg[1] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [3]),
        .I3(newOpReg),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][4]_i_1 
       (.I0(\ansReg[1] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [4]),
        .I3(newOpReg),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[1][7]_i_1 
       (.I0(\ansReg[1] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[1] [7]),
        .I3(newOpReg),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][0]_i_1 
       (.I0(\ansReg[2] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][1]_i_1 
       (.I0(\ansReg[2] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][2]_i_1 
       (.I0(\ansReg[2] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][3]_i_1 
       (.I0(\ansReg[2] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][4]_i_1 
       (.I0(\ansReg[2] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][5]_i_1 
       (.I0(\ansReg[2] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[2][7]_i_1 
       (.I0(\ansReg[2] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[2] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[2][7]_0 [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][0]_i_1 
       (.I0(\ansReg[3] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][1]_i_1 
       (.I0(\ansReg[3] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][2]_i_1 
       (.I0(\ansReg[3] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][3]_i_1 
       (.I0(\ansReg[3] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][4]_i_1 
       (.I0(\ansReg[3] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][5]_i_1 
       (.I0(\ansReg[3] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[3][7]_i_1 
       (.I0(\ansReg[3] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[3] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[3][7]_0 [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][0]_i_1 
       (.I0(\ansReg[4] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][1]_i_1 
       (.I0(\ansReg[4] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][2]_i_1 
       (.I0(\ansReg[4] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][3]_i_1 
       (.I0(\ansReg[4] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][4]_i_1 
       (.I0(\ansReg[4] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][5]_i_1 
       (.I0(\ansReg[4] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[4][7]_i_1 
       (.I0(\ansReg[4] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[4] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[4][7]_0 [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][0]_i_1 
       (.I0(\ansReg[5] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][1]_i_1 
       (.I0(\ansReg[5] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][2]_i_1 
       (.I0(\ansReg[5] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][3]_i_1 
       (.I0(\ansReg[5] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][4]_i_1 
       (.I0(\ansReg[5] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][5]_i_1 
       (.I0(\ansReg[5] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[5][7]_i_1 
       (.I0(\ansReg[5] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[5] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[5][7]_0 [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][0]_i_1 
       (.I0(\ansReg[6] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][1]_i_1 
       (.I0(\ansReg[6] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][2]_i_1 
       (.I0(\ansReg[6] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][3]_i_1 
       (.I0(\ansReg[6] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][4]_i_1 
       (.I0(\ansReg[6] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][5]_i_1 
       (.I0(\ansReg[6] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[6][7]_i_1 
       (.I0(\ansReg[6] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[6] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[6][7]_0 [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][0]_i_1 
       (.I0(\ansReg[7] [0]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [0]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][1]_i_1 
       (.I0(\ansReg[7] [1]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [1]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][2]_i_1 
       (.I0(\ansReg[7] [2]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [2]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][3]_i_1 
       (.I0(\ansReg[7] [3]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [3]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][4]_i_1 
       (.I0(\ansReg[7] [4]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [4]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][5]_i_1 
       (.I0(\ansReg[7] [5]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [5]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_reg[7][7]_i_1 
       (.I0(\ansReg[7] [6]),
        .I1(\FSM_onehot_cs_reg[8]_0 [1]),
        .I2(\regPort[7] [7]),
        .I3(newOpReg),
        .O(\intReg_reg[7][7]_0 [6]));
endmodule

module toOpReg
   (newOpReg,
    regFill,
    \FSM_onehot_cs_reg[0]_0 ,
    \FSM_onehot_cs_reg[2]_0 ,
    D,
    \intReg_reg[1][5]_0 ,
    \intMaxAddr_reg[1]_0 ,
    clkPort,
    \FSM_onehot_cs_reg[1]_0 ,
    \FSM_onehot_cs_reg[0]_1 ,
    Q,
    \intReg_reg[0][7] ,
    \regPort[0] ,
    \ansReg[0] ,
    \intReg_reg[1][5]_1 ,
    \ansReg[1] ,
    \intMaxAddr_reg[1]_1 ,
    ansMaxAddr,
    opPort,
    E,
    \intReg_reg[0][3]_0 );
  output newOpReg;
  output regFill;
  output \FSM_onehot_cs_reg[0]_0 ;
  output \FSM_onehot_cs_reg[2]_0 ;
  output [7:0]D;
  output [0:0]\intReg_reg[1][5]_0 ;
  output [0:0]\intMaxAddr_reg[1]_0 ;
  input clkPort;
  input \FSM_onehot_cs_reg[1]_0 ;
  input \FSM_onehot_cs_reg[0]_1 ;
  input [0:0]Q;
  input [0:0]\intReg_reg[0][7] ;
  input [6:0]\regPort[0] ;
  input [6:0]\ansReg[0] ;
  input [0:0]\intReg_reg[1][5]_1 ;
  input [0:0]\ansReg[1] ;
  input [0:0]\intMaxAddr_reg[1]_1 ;
  input [0:0]ansMaxAddr;
  input [1:0]opPort;
  input [0:0]E;
  input [1:0]\intReg_reg[0][3]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cs_reg[0]_0 ;
  wire \FSM_onehot_cs_reg[0]_1 ;
  wire \FSM_onehot_cs_reg[1]_0 ;
  wire \FSM_onehot_cs_reg[2]_0 ;
  wire [0:0]Q;
  wire [0:0]ansMaxAddr;
  wire [6:0]\ansReg[0] ;
  wire [0:0]\ansReg[1] ;
  wire clkPort;
  wire [1:1]intMaxAddr;
  wire \intMaxAddr[1]_i_1_n_0 ;
  wire [0:0]\intMaxAddr_reg[1]_0 ;
  wire [0:0]\intMaxAddr_reg[1]_1 ;
  wire \intReg[0][0]_i_1_n_0 ;
  wire \intReg[1][5]_i_1__1_n_0 ;
  wire [6:0]\intReg_reg[0] ;
  wire [1:0]\intReg_reg[0][3]_0 ;
  wire [0:0]\intReg_reg[0][7] ;
  wire [5:5]\intReg_reg[1] ;
  wire [0:0]\intReg_reg[1][5]_0 ;
  wire [0:0]\intReg_reg[1][5]_1 ;
  wire newOpReg;
  wire [1:0]opPort;
  wire regFill;
  wire [6:0]\regPort[0] ;

  (* FSM_ENCODED_STATES = "idle:001,fillreg:010,send:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\FSM_onehot_cs_reg[0]_1 ),
        .Q(\FSM_onehot_cs_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,fillreg:010,send:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\FSM_onehot_cs_reg[1]_0 ),
        .Q(regFill),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,fillreg:010,send:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(regFill),
        .Q(newOpReg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \intMaxAddr[1]_i_1 
       (.I0(regFill),
        .I1(intMaxAddr),
        .O(\intMaxAddr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intMaxAddr[1]_i_1_n_0 ),
        .Q(intMaxAddr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hA2EE)) 
    \intReg[0][0]_i_1 
       (.I0(\intReg_reg[0] [0]),
        .I1(regFill),
        .I2(opPort[0]),
        .I3(opPort[1]),
        .O(\intReg[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \intReg[1][5]_i_1__1 
       (.I0(\intReg_reg[1] ),
        .I1(opPort[1]),
        .I2(opPort[0]),
        .I3(regFill),
        .O(\intReg[1][5]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[0][0]_i_1_n_0 ),
        .Q(\intReg_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][1] 
       (.C(clkPort),
        .CE(E),
        .D(1'b1),
        .Q(\intReg_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][2] 
       (.C(clkPort),
        .CE(E),
        .D(\intReg_reg[0][3]_0 [0]),
        .Q(\intReg_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][3] 
       (.C(clkPort),
        .CE(E),
        .D(\intReg_reg[0][3]_0 [1]),
        .Q(\intReg_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][6] 
       (.C(clkPort),
        .CE(E),
        .D(opPort[0]),
        .Q(\intReg_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][5] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intReg[1][5]_i_1__1_n_0 ),
        .Q(\intReg_reg[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \maxAddr_reg[1]_i_1 
       (.I0(intMaxAddr),
        .I1(newOpReg),
        .I2(\intMaxAddr_reg[1]_1 ),
        .I3(\intReg_reg[0][7] ),
        .I4(ansMaxAddr),
        .O(\intMaxAddr_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][0]_i_1 
       (.I0(\intReg_reg[0] [0]),
        .I1(newOpReg),
        .I2(\regPort[0] [0]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][1]_i_1 
       (.I0(\intReg_reg[0] [1]),
        .I1(newOpReg),
        .I2(\regPort[0] [1]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][2]_i_1 
       (.I0(\intReg_reg[0] [2]),
        .I1(newOpReg),
        .I2(\regPort[0] [2]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][3]_i_1 
       (.I0(\intReg_reg[0] [3]),
        .I1(newOpReg),
        .I2(\regPort[0] [3]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][4]_i_1 
       (.I0(\intReg_reg[0] [2]),
        .I1(newOpReg),
        .I2(\regPort[0] [4]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][5]_i_1 
       (.I0(\intReg_reg[0] [3]),
        .I1(newOpReg),
        .I2(\regPort[0] [5]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_reg[0][6]_i_1 
       (.I0(newOpReg),
        .I1(\intReg_reg[0] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[0][7]_i_1 
       (.I0(\intReg_reg[0] [2]),
        .I1(newOpReg),
        .I2(\regPort[0] [6]),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[0] [6]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_reg[0][7]_i_3 
       (.I0(newOpReg),
        .I1(Q),
        .I2(\intReg_reg[0][7] ),
        .O(\FSM_onehot_cs_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_reg[1][5]_i_1 
       (.I0(\intReg_reg[1] ),
        .I1(newOpReg),
        .I2(\intReg_reg[1][5]_1 ),
        .I3(\intReg_reg[0][7] ),
        .I4(\ansReg[1] ),
        .O(\intReg_reg[1][5]_0 ));
endmodule

module toOutput
   (D,
    newData,
    \FSM_sequential_cs_reg[0]_0 ,
    SR,
    \FSM_sequential_cs_reg[1]_0 ,
    \FSM_sequential_cs_reg[0]_1 ,
    \intData_reg[7]_0 ,
    Q,
    TxReady,
    \FSM_sequential_cs_reg[0]_2 ,
    tcBaud,
    clkPort,
    \intMaxAddr_reg[7]_0 ,
    \intReg_reg[0][7]_0 ,
    \intReg_reg[1][7]_0 ,
    \intReg_reg[2][7]_0 ,
    \intReg_reg[3][7]_0 ,
    \intReg_reg[4][7]_0 ,
    \intReg_reg[5][7]_0 ,
    \intReg_reg[6][7]_0 ,
    \intReg_reg[7][7]_0 );
  output [7:0]D;
  output newData;
  output \FSM_sequential_cs_reg[0]_0 ;
  output [0:0]SR;
  output \FSM_sequential_cs_reg[1]_0 ;
  output \FSM_sequential_cs_reg[0]_1 ;
  input \intData_reg[7]_0 ;
  input [6:0]Q;
  input TxReady;
  input \FSM_sequential_cs_reg[0]_2 ;
  input tcBaud;
  input clkPort;
  input [7:0]\intMaxAddr_reg[7]_0 ;
  input [7:0]\intReg_reg[0][7]_0 ;
  input [6:0]\intReg_reg[1][7]_0 ;
  input [6:0]\intReg_reg[2][7]_0 ;
  input [6:0]\intReg_reg[3][7]_0 ;
  input [6:0]\intReg_reg[4][7]_0 ;
  input [6:0]\intReg_reg[5][7]_0 ;
  input [6:0]\intReg_reg[6][7]_0 ;
  input [6:0]\intReg_reg[7][7]_0 ;

  wire [7:0]D;
  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_cs[2]_i_2__0_n_0 ;
  wire \FSM_sequential_cs[2]_i_3__0_n_0 ;
  wire \FSM_sequential_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_cs[2]_i_5_n_0 ;
  wire \FSM_sequential_cs_reg[0]_0 ;
  wire \FSM_sequential_cs_reg[0]_1 ;
  wire \FSM_sequential_cs_reg[0]_2 ;
  wire \FSM_sequential_cs_reg[1]_0 ;
  wire [6:0]Q;
  wire [0:0]SR;
  wire TxReady;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[7]_i_2_n_0 ;
  wire [7:0]addr_reg;
  wire clkPort;
  wire [2:0]cs;
  wire [7:0]intData;
  wire \intData[0]_i_2__1_n_0 ;
  wire \intData[0]_i_3_n_0 ;
  wire \intData[1]_i_2__1_n_0 ;
  wire \intData[1]_i_3__1_n_0 ;
  wire \intData[2]_i_2__1_n_0 ;
  wire \intData[2]_i_3__1_n_0 ;
  wire \intData[3]_i_2__1_n_0 ;
  wire \intData[3]_i_3__1_n_0 ;
  wire \intData[4]_i_2__1_n_0 ;
  wire \intData[4]_i_3__1_n_0 ;
  wire \intData[5]_i_2__1_n_0 ;
  wire \intData[5]_i_3__1_n_0 ;
  wire \intData[7]_i_1__2_n_0 ;
  wire \intData[7]_i_3__1_n_0 ;
  wire \intData[7]_i_4__1_n_0 ;
  wire \intData_reg[7]_0 ;
  wire [7:0]\intMaxAddr_reg[7]_0 ;
  wire \intMaxAddr_reg_n_0_[0] ;
  wire \intMaxAddr_reg_n_0_[1] ;
  wire \intMaxAddr_reg_n_0_[2] ;
  wire \intMaxAddr_reg_n_0_[3] ;
  wire \intMaxAddr_reg_n_0_[4] ;
  wire \intMaxAddr_reg_n_0_[5] ;
  wire \intMaxAddr_reg_n_0_[6] ;
  wire \intMaxAddr_reg_n_0_[7] ;
  wire [7:0]\intReg[0]_0 ;
  wire [7:0]\intReg_reg[0][7]_0 ;
  wire [6:0]\intReg_reg[1][7]_0 ;
  wire [7:0]\intReg_reg[2] ;
  wire [6:0]\intReg_reg[2][7]_0 ;
  wire [7:0]\intReg_reg[3] ;
  wire [6:0]\intReg_reg[3][7]_0 ;
  wire [7:0]\intReg_reg[4] ;
  wire [6:0]\intReg_reg[4][7]_0 ;
  wire [7:0]\intReg_reg[5] ;
  wire [6:0]\intReg_reg[5][7]_0 ;
  wire [7:0]\intReg_reg[6] ;
  wire [6:0]\intReg_reg[6][7]_0 ;
  wire [7:0]\intReg_reg[7] ;
  wire [6:0]\intReg_reg[7][7]_0 ;
  wire \intReg_reg_n_0_[0][0] ;
  wire \intReg_reg_n_0_[0][1] ;
  wire \intReg_reg_n_0_[0][2] ;
  wire \intReg_reg_n_0_[0][3] ;
  wire \intReg_reg_n_0_[0][4] ;
  wire \intReg_reg_n_0_[0][5] ;
  wire \intReg_reg_n_0_[0][6] ;
  wire \intReg_reg_n_0_[0][7] ;
  wire \intReg_reg_n_0_[1][0] ;
  wire \intReg_reg_n_0_[1][1] ;
  wire \intReg_reg_n_0_[1][2] ;
  wire \intReg_reg_n_0_[1][3] ;
  wire \intReg_reg_n_0_[1][4] ;
  wire \intReg_reg_n_0_[1][5] ;
  wire \intReg_reg_n_0_[1][7] ;
  wire load;
  wire newData;
  wire [7:0]plusOp;
  wire tcBaud;

  LUT5 #(
    .INIT(32'h003CFDFD)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(\FSM_sequential_cs_reg[0]_2 ),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(TxReady),
        .I4(cs[0]),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h387C)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(TxReady),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(\FSM_sequential_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CFFFFFFAA080000)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(cs[1]),
        .I1(\FSM_sequential_cs[2]_i_2__0_n_0 ),
        .I2(\FSM_sequential_cs[2]_i_3__0_n_0 ),
        .I3(cs[0]),
        .I4(\FSM_sequential_cs[2]_i_4_n_0 ),
        .I5(cs[2]),
        .O(\FSM_sequential_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_cs[2]_i_2__0 
       (.I0(\intMaxAddr_reg_n_0_[3] ),
        .I1(addr_reg[3]),
        .I2(addr_reg[0]),
        .I3(\intMaxAddr_reg_n_0_[0] ),
        .I4(addr_reg[7]),
        .I5(\intMaxAddr_reg_n_0_[7] ),
        .O(\FSM_sequential_cs[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \FSM_sequential_cs[2]_i_3__0 
       (.I0(\FSM_sequential_cs[2]_i_5_n_0 ),
        .I1(cs[1]),
        .I2(\intMaxAddr_reg_n_0_[6] ),
        .I3(addr_reg[6]),
        .I4(addr_reg[1]),
        .I5(\intMaxAddr_reg_n_0_[1] ),
        .O(\FSM_sequential_cs[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFBBCFBBF)) 
    \FSM_sequential_cs[2]_i_4 
       (.I0(TxReady),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(\FSM_sequential_cs_reg[0]_2 ),
        .O(\FSM_sequential_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_sequential_cs[2]_i_5 
       (.I0(\intMaxAddr_reg_n_0_[4] ),
        .I1(addr_reg[4]),
        .I2(addr_reg[2]),
        .I3(\intMaxAddr_reg_n_0_[2] ),
        .I4(addr_reg[5]),
        .I5(\intMaxAddr_reg_n_0_[5] ),
        .O(\FSM_sequential_cs[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_cs[4]_i_5 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .O(\FSM_sequential_cs_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "reset:111,idle:000,latch:001,waittosend:011,sendtosci:100,sending:101,loaddata:010,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:111,idle:000,latch:001,waittosend:011,sendtosci:100,sending:101,loaddata:010,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\FSM_sequential_cs[1]_i_1_n_0 ),
        .Q(cs[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:111,idle:000,latch:001,waittosend:011,sendtosci:100,sending:101,loaddata:010,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\FSM_sequential_cs[2]_i_1_n_0 ),
        .Q(cs[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addr[0]_i_1 
       (.I0(addr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr[1]_i_1 
       (.I0(addr_reg[1]),
        .I1(addr_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr[2]_i_1 
       (.I0(addr_reg[2]),
        .I1(addr_reg[0]),
        .I2(addr_reg[1]),
        .O(\addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addr[3]_i_1 
       (.I0(addr_reg[3]),
        .I1(addr_reg[2]),
        .I2(addr_reg[1]),
        .I3(addr_reg[0]),
        .O(\addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addr[4]_i_1 
       (.I0(addr_reg[4]),
        .I1(addr_reg[0]),
        .I2(addr_reg[1]),
        .I3(addr_reg[2]),
        .I4(addr_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addr[5]_i_1 
       (.I0(addr_reg[5]),
        .I1(addr_reg[3]),
        .I2(addr_reg[2]),
        .I3(addr_reg[1]),
        .I4(addr_reg[0]),
        .I5(addr_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr[6]_i_1 
       (.I0(addr_reg[6]),
        .I1(\addr[7]_i_2_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addr[7]_i_1 
       (.I0(addr_reg[7]),
        .I1(\addr[7]_i_2_n_0 ),
        .I2(addr_reg[6]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr[7]_i_2 
       (.I0(addr_reg[5]),
        .I1(addr_reg[3]),
        .I2(addr_reg[2]),
        .I3(addr_reg[1]),
        .I4(addr_reg[0]),
        .I5(addr_reg[4]),
        .O(\addr[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[0]),
        .Q(addr_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[1]),
        .Q(addr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(addr_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[4]),
        .Q(addr_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[5]),
        .Q(addr_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[6]),
        .Q(addr_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(plusOp[7]),
        .Q(addr_reg[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \bitCtr[4]_i_1 
       (.I0(tcBaud),
        .I1(TxReady),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \intData[0]_i_1__1 
       (.I0(Q[0]),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[0]_i_2__1 
       (.I0(\intReg_reg[3] [0]),
        .I1(\intReg_reg[2] [0]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][0] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][0] ),
        .O(\intData[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[0]_i_3 
       (.I0(\intReg_reg[7] [0]),
        .I1(\intReg_reg[6] [0]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [0]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [0]),
        .O(\intData[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[1]_i_1__1 
       (.I0(intData[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_2__1 
       (.I0(\intReg_reg[3] [1]),
        .I1(\intReg_reg[2] [1]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][1] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][1] ),
        .O(\intData[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[1]_i_3__1 
       (.I0(\intReg_reg[7] [1]),
        .I1(\intReg_reg[6] [1]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [1]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [1]),
        .O(\intData[1]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[2]_i_1__1 
       (.I0(intData[1]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_2__1 
       (.I0(\intReg_reg[3] [2]),
        .I1(\intReg_reg[2] [2]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][2] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][2] ),
        .O(\intData[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[2]_i_3__1 
       (.I0(\intReg_reg[7] [2]),
        .I1(\intReg_reg[6] [2]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [2]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [2]),
        .O(\intData[2]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[3]_i_1__1 
       (.I0(intData[2]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_2__1 
       (.I0(\intReg_reg[3] [3]),
        .I1(\intReg_reg[2] [3]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][3] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][3] ),
        .O(\intData[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[3]_i_3__1 
       (.I0(\intReg_reg[7] [3]),
        .I1(\intReg_reg[6] [3]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [3]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [3]),
        .O(\intData[3]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[4]_i_1__1 
       (.I0(intData[3]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[4]_i_2__1 
       (.I0(\intReg_reg[3] [4]),
        .I1(\intReg_reg[2] [4]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][4] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][4] ),
        .O(\intData[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[4]_i_3__1 
       (.I0(\intReg_reg[7] [4]),
        .I1(\intReg_reg[6] [4]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [4]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [4]),
        .O(\intData[4]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[5]_i_1__1 
       (.I0(intData[4]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[5]_i_2__1 
       (.I0(\intReg_reg[3] [5]),
        .I1(\intReg_reg[2] [5]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][5] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][5] ),
        .O(\intData[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[5]_i_3__1 
       (.I0(\intReg_reg[7] [5]),
        .I1(\intReg_reg[6] [5]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [5]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [5]),
        .O(\intData[5]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[6]_i_1__1 
       (.I0(intData[5]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \intData[6]_i_1__2 
       (.I0(addr_reg[0]),
        .I1(\intReg_reg_n_0_[0][6] ),
        .I2(addr_reg[2]),
        .I3(addr_reg[1]),
        .O(\intReg[0]_0 [6]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \intData[7]_i_1__1 
       (.I0(tcBaud),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .O(\FSM_sequential_cs_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \intData[7]_i_1__2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\intData[7]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \intData[7]_i_2__1 
       (.I0(intData[6]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(\intData_reg[7]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[7]_i_3__1 
       (.I0(\intReg_reg[3] [7]),
        .I1(\intReg_reg[2] [7]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg_n_0_[1][7] ),
        .I4(addr_reg[0]),
        .I5(\intReg_reg_n_0_[0][7] ),
        .O(\intData[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \intData[7]_i_4__1 
       (.I0(\intReg_reg[7] [7]),
        .I1(\intReg_reg[6] [7]),
        .I2(addr_reg[1]),
        .I3(\intReg_reg[5] [7]),
        .I4(addr_reg[0]),
        .I5(\intReg_reg[4] [7]),
        .O(\intData[7]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAABAFFCFAA8A)) 
    \intData[8]_i_1__1 
       (.I0(tcBaud),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(\intData_reg[7]_0 ),
        .I5(intData[7]),
        .O(\FSM_sequential_cs_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[0] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [0]),
        .Q(intData[0]),
        .R(1'b0));
  MUXF7 \intData_reg[0]_i_1 
       (.I0(\intData[0]_i_2__1_n_0 ),
        .I1(\intData[0]_i_3_n_0 ),
        .O(\intReg[0]_0 [0]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[1] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [1]),
        .Q(intData[1]),
        .R(1'b0));
  MUXF7 \intData_reg[1]_i_1 
       (.I0(\intData[1]_i_2__1_n_0 ),
        .I1(\intData[1]_i_3__1_n_0 ),
        .O(\intReg[0]_0 [1]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[2] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [2]),
        .Q(intData[2]),
        .R(1'b0));
  MUXF7 \intData_reg[2]_i_1 
       (.I0(\intData[2]_i_2__1_n_0 ),
        .I1(\intData[2]_i_3__1_n_0 ),
        .O(\intReg[0]_0 [2]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[3] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [3]),
        .Q(intData[3]),
        .R(1'b0));
  MUXF7 \intData_reg[3]_i_1 
       (.I0(\intData[3]_i_2__1_n_0 ),
        .I1(\intData[3]_i_3__1_n_0 ),
        .O(\intReg[0]_0 [3]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[4] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [4]),
        .Q(intData[4]),
        .R(1'b0));
  MUXF7 \intData_reg[4]_i_1 
       (.I0(\intData[4]_i_2__1_n_0 ),
        .I1(\intData[4]_i_3__1_n_0 ),
        .O(\intReg[0]_0 [4]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[5] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [5]),
        .Q(intData[5]),
        .R(1'b0));
  MUXF7 \intData_reg[5]_i_1 
       (.I0(\intData[5]_i_2__1_n_0 ),
        .I1(\intData[5]_i_3__1_n_0 ),
        .O(\intReg[0]_0 [5]),
        .S(addr_reg[2]));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[6] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [6]),
        .Q(intData[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intData_reg[7] 
       (.C(clkPort),
        .CE(\intData[7]_i_1__2_n_0 ),
        .D(\intReg[0]_0 [7]),
        .Q(intData[7]),
        .R(1'b0));
  MUXF7 \intData_reg[7]_i_2 
       (.I0(\intData[7]_i_3__1_n_0 ),
        .I1(\intData[7]_i_4__1_n_0 ),
        .O(\intReg[0]_0 [7]),
        .S(addr_reg[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \intMaxAddr[7]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(load));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[0] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [0]),
        .Q(\intMaxAddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[1] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [1]),
        .Q(\intMaxAddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[2] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [2]),
        .Q(\intMaxAddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[3] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [3]),
        .Q(\intMaxAddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[4] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [4]),
        .Q(\intMaxAddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[5] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [5]),
        .Q(\intMaxAddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[6] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [6]),
        .Q(\intMaxAddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intMaxAddr_reg[7] 
       (.C(clkPort),
        .CE(load),
        .D(\intMaxAddr_reg[7]_0 [7]),
        .Q(\intMaxAddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [0]),
        .Q(\intReg_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [1]),
        .Q(\intReg_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [2]),
        .Q(\intReg_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [3]),
        .Q(\intReg_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [4]),
        .Q(\intReg_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [5]),
        .Q(\intReg_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][6] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [6]),
        .Q(\intReg_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[0][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[0][7]_0 [7]),
        .Q(\intReg_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [0]),
        .Q(\intReg_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [1]),
        .Q(\intReg_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [2]),
        .Q(\intReg_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [3]),
        .Q(\intReg_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [4]),
        .Q(\intReg_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [5]),
        .Q(\intReg_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[1][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[1][7]_0 [6]),
        .Q(\intReg_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [0]),
        .Q(\intReg_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [1]),
        .Q(\intReg_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [2]),
        .Q(\intReg_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [3]),
        .Q(\intReg_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [4]),
        .Q(\intReg_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [5]),
        .Q(\intReg_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[2][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[2][7]_0 [6]),
        .Q(\intReg_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [0]),
        .Q(\intReg_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [1]),
        .Q(\intReg_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [2]),
        .Q(\intReg_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [3]),
        .Q(\intReg_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [4]),
        .Q(\intReg_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [5]),
        .Q(\intReg_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[3][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[3][7]_0 [6]),
        .Q(\intReg_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [0]),
        .Q(\intReg_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [1]),
        .Q(\intReg_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [2]),
        .Q(\intReg_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [3]),
        .Q(\intReg_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [4]),
        .Q(\intReg_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [5]),
        .Q(\intReg_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[4][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[4][7]_0 [6]),
        .Q(\intReg_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [0]),
        .Q(\intReg_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [1]),
        .Q(\intReg_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [2]),
        .Q(\intReg_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [3]),
        .Q(\intReg_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [4]),
        .Q(\intReg_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [5]),
        .Q(\intReg_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[5][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[5][7]_0 [6]),
        .Q(\intReg_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [0]),
        .Q(\intReg_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [1]),
        .Q(\intReg_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [2]),
        .Q(\intReg_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [3]),
        .Q(\intReg_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [4]),
        .Q(\intReg_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [5]),
        .Q(\intReg_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[6][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[6][7]_0 [6]),
        .Q(\intReg_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][0] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [0]),
        .Q(\intReg_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][1] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [1]),
        .Q(\intReg_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][2] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [2]),
        .Q(\intReg_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][3] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [3]),
        .Q(\intReg_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][4] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [4]),
        .Q(\intReg_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][5] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [5]),
        .Q(\intReg_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intReg_reg[7][7] 
       (.C(clkPort),
        .CE(load),
        .D(\intReg_reg[7][7]_0 [6]),
        .Q(\intReg_reg[7] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    tcBit_reg_i_2
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .O(newData));
endmodule

module trans
   (\FSM_sequential_cs_reg[1] ,
    \intData_reg[0] ,
    clkPort,
    \FSM_sequential_cs_reg[0] ,
    Q,
    \intReg_reg[0][7] ,
    \intReg_reg[1][7] ,
    \intReg_reg[2][7] ,
    \intReg_reg[3][7] ,
    \intReg_reg[4][7] ,
    \intReg_reg[5][7] ,
    \intReg_reg[6][7] ,
    \intReg_reg[7][7] );
  output \FSM_sequential_cs_reg[1] ;
  output [0:0]\intData_reg[0] ;
  input clkPort;
  input \FSM_sequential_cs_reg[0] ;
  input [7:0]Q;
  input [7:0]\intReg_reg[0][7] ;
  input [6:0]\intReg_reg[1][7] ;
  input [6:0]\intReg_reg[2][7] ;
  input [6:0]\intReg_reg[3][7] ;
  input [6:0]\intReg_reg[4][7] ;
  input [6:0]\intReg_reg[5][7] ;
  input [6:0]\intReg_reg[6][7] ;
  input [6:0]\intReg_reg[7][7] ;

  wire \FSM_sequential_cs_reg[0] ;
  wire \FSM_sequential_cs_reg[1] ;
  wire [7:0]Q;
  wire TxReady;
  wire clkPort;
  wire [0:0]\intData_reg[0] ;
  wire [7:0]\intReg_reg[0][7] ;
  wire [6:0]\intReg_reg[1][7] ;
  wire [6:0]\intReg_reg[2][7] ;
  wire [6:0]\intReg_reg[3][7] ;
  wire [6:0]\intReg_reg[4][7] ;
  wire [6:0]\intReg_reg[5][7] ;
  wire [6:0]\intReg_reg[6][7] ;
  wire [6:0]\intReg_reg[7][7] ;
  wire newData;
  wire tcBaud;
  wire toOout_n_0;
  wire toOout_n_1;
  wire toOout_n_10;
  wire toOout_n_12;
  wire toOout_n_2;
  wire toOout_n_3;
  wire toOout_n_4;
  wire toOout_n_5;
  wire toOout_n_6;
  wire toOout_n_7;
  wire toOout_n_9;
  wire tr_n_10;
  wire tr_n_2;
  wire tr_n_3;
  wire tr_n_4;
  wire tr_n_5;
  wire tr_n_6;
  wire tr_n_7;
  wire tr_n_8;

  toOutput toOout
       (.D({toOout_n_0,toOout_n_1,toOout_n_2,toOout_n_3,toOout_n_4,toOout_n_5,toOout_n_6,toOout_n_7}),
        .\FSM_sequential_cs_reg[0]_0 (toOout_n_9),
        .\FSM_sequential_cs_reg[0]_1 (toOout_n_12),
        .\FSM_sequential_cs_reg[0]_2 (\FSM_sequential_cs_reg[0] ),
        .\FSM_sequential_cs_reg[1]_0 (\FSM_sequential_cs_reg[1] ),
        .Q({tr_n_2,tr_n_3,tr_n_4,tr_n_5,tr_n_6,tr_n_7,tr_n_8}),
        .SR(toOout_n_10),
        .TxReady(TxReady),
        .clkPort(clkPort),
        .\intData_reg[7]_0 (tr_n_10),
        .\intMaxAddr_reg[7]_0 (Q),
        .\intReg_reg[0][7]_0 (\intReg_reg[0][7] ),
        .\intReg_reg[1][7]_0 (\intReg_reg[1][7] ),
        .\intReg_reg[2][7]_0 (\intReg_reg[2][7] ),
        .\intReg_reg[3][7]_0 (\intReg_reg[3][7] ),
        .\intReg_reg[4][7]_0 (\intReg_reg[4][7] ),
        .\intReg_reg[5][7]_0 (\intReg_reg[5][7] ),
        .\intReg_reg[6][7]_0 (\intReg_reg[6][7] ),
        .\intReg_reg[7][7]_0 (\intReg_reg[7][7] ),
        .newData(newData),
        .tcBaud(tcBaud));
  transmitter tr
       (.D({toOout_n_0,toOout_n_1,toOout_n_2,toOout_n_3,toOout_n_4,toOout_n_5,toOout_n_6,toOout_n_7}),
        .E(tcBaud),
        .Q({tr_n_2,tr_n_3,tr_n_4,tr_n_5,tr_n_6,tr_n_7,tr_n_8,\intData_reg[0] }),
        .SR(toOout_n_10),
        .TxReady(TxReady),
        .clkPort(clkPort),
        .\intData_reg[0]_0 (toOout_n_9),
        .\intData_reg[8]_0 (tr_n_10),
        .\intData_reg[8]_1 (toOout_n_12),
        .newData(newData));
endmodule

module transmitter
   (TxReady,
    E,
    Q,
    \intData_reg[8]_0 ,
    newData,
    \intData_reg[0]_0 ,
    clkPort,
    D,
    \intData_reg[8]_1 ,
    SR);
  output TxReady;
  output [0:0]E;
  output [7:0]Q;
  output \intData_reg[8]_0 ;
  input newData;
  input \intData_reg[0]_0 ;
  input clkPort;
  input [7:0]D;
  input \intData_reg[8]_1 ;
  input [0:0]SR;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire TxReady;
  wire \baudCtr[0]_i_2_n_0 ;
  wire [13:0]baudCtr_reg;
  wire \baudCtr_reg[0]_i_1_n_0 ;
  wire \baudCtr_reg[0]_i_1_n_4 ;
  wire \baudCtr_reg[0]_i_1_n_5 ;
  wire \baudCtr_reg[0]_i_1_n_6 ;
  wire \baudCtr_reg[0]_i_1_n_7 ;
  wire \baudCtr_reg[12]_i_1_n_6 ;
  wire \baudCtr_reg[12]_i_1_n_7 ;
  wire \baudCtr_reg[4]_i_1_n_0 ;
  wire \baudCtr_reg[4]_i_1_n_4 ;
  wire \baudCtr_reg[4]_i_1_n_5 ;
  wire \baudCtr_reg[4]_i_1_n_6 ;
  wire \baudCtr_reg[4]_i_1_n_7 ;
  wire \baudCtr_reg[8]_i_1_n_0 ;
  wire \baudCtr_reg[8]_i_1_n_4 ;
  wire \baudCtr_reg[8]_i_1_n_5 ;
  wire \baudCtr_reg[8]_i_1_n_6 ;
  wire \baudCtr_reg[8]_i_1_n_7 ;
  wire \bitCtr[3]_i_1_n_0 ;
  wire \bitCtr[4]_i_4_n_0 ;
  wire \bitCtr[4]_i_5_n_0 ;
  wire [4:0]bitCtr_reg;
  wire clkPort;
  wire \intData_reg[0]_0 ;
  wire \intData_reg[8]_0 ;
  wire \intData_reg[8]_1 ;
  wire newData;
  wire [4:0]plusOp__0;
  wire tcBit_reg_i_1_n_0;
  wire [2:0]\NLW_baudCtr_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_baudCtr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_baudCtr_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_baudCtr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_baudCtr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \baudCtr[0]_i_2 
       (.I0(baudCtr_reg[0]),
        .O(\baudCtr[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[0] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[0]_i_1_n_7 ),
        .Q(baudCtr_reg[0]),
        .R(\intData_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \baudCtr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\baudCtr_reg[0]_i_1_n_0 ,\NLW_baudCtr_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\baudCtr_reg[0]_i_1_n_4 ,\baudCtr_reg[0]_i_1_n_5 ,\baudCtr_reg[0]_i_1_n_6 ,\baudCtr_reg[0]_i_1_n_7 }),
        .S({baudCtr_reg[3:1],\baudCtr[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[10] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[8]_i_1_n_5 ),
        .Q(baudCtr_reg[10]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[11] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[8]_i_1_n_4 ),
        .Q(baudCtr_reg[11]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[12] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[12]_i_1_n_7 ),
        .Q(baudCtr_reg[12]),
        .R(\intData_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \baudCtr_reg[12]_i_1 
       (.CI(\baudCtr_reg[8]_i_1_n_0 ),
        .CO(\NLW_baudCtr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_baudCtr_reg[12]_i_1_O_UNCONNECTED [3:2],\baudCtr_reg[12]_i_1_n_6 ,\baudCtr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,baudCtr_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[13] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[12]_i_1_n_6 ),
        .Q(baudCtr_reg[13]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[1] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[0]_i_1_n_6 ),
        .Q(baudCtr_reg[1]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[2] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[0]_i_1_n_5 ),
        .Q(baudCtr_reg[2]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[3] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[0]_i_1_n_4 ),
        .Q(baudCtr_reg[3]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[4] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[4]_i_1_n_7 ),
        .Q(baudCtr_reg[4]),
        .R(\intData_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \baudCtr_reg[4]_i_1 
       (.CI(\baudCtr_reg[0]_i_1_n_0 ),
        .CO({\baudCtr_reg[4]_i_1_n_0 ,\NLW_baudCtr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baudCtr_reg[4]_i_1_n_4 ,\baudCtr_reg[4]_i_1_n_5 ,\baudCtr_reg[4]_i_1_n_6 ,\baudCtr_reg[4]_i_1_n_7 }),
        .S(baudCtr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[5] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[4]_i_1_n_6 ),
        .Q(baudCtr_reg[5]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[6] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[4]_i_1_n_5 ),
        .Q(baudCtr_reg[6]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[7] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[4]_i_1_n_4 ),
        .Q(baudCtr_reg[7]),
        .R(\intData_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[8] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[8]_i_1_n_7 ),
        .Q(baudCtr_reg[8]),
        .R(\intData_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \baudCtr_reg[8]_i_1 
       (.CI(\baudCtr_reg[4]_i_1_n_0 ),
        .CO({\baudCtr_reg[8]_i_1_n_0 ,\NLW_baudCtr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\baudCtr_reg[8]_i_1_n_4 ,\baudCtr_reg[8]_i_1_n_5 ,\baudCtr_reg[8]_i_1_n_6 ,\baudCtr_reg[8]_i_1_n_7 }),
        .S(baudCtr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \baudCtr_reg[9] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\baudCtr_reg[8]_i_1_n_6 ),
        .Q(baudCtr_reg[9]),
        .R(\intData_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitCtr[0]_i_1 
       (.I0(bitCtr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitCtr[1]_i_1 
       (.I0(bitCtr_reg[0]),
        .I1(bitCtr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bitCtr[2]_i_1 
       (.I0(bitCtr_reg[2]),
        .I1(bitCtr_reg[0]),
        .I2(bitCtr_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bitCtr[3]_i_1 
       (.I0(bitCtr_reg[3]),
        .I1(bitCtr_reg[2]),
        .I2(bitCtr_reg[0]),
        .I3(bitCtr_reg[1]),
        .O(\bitCtr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \bitCtr[4]_i_2 
       (.I0(\bitCtr[4]_i_4_n_0 ),
        .I1(\bitCtr[4]_i_5_n_0 ),
        .I2(baudCtr_reg[6]),
        .I3(baudCtr_reg[1]),
        .I4(baudCtr_reg[10]),
        .I5(baudCtr_reg[4]),
        .O(E));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bitCtr[4]_i_3 
       (.I0(bitCtr_reg[4]),
        .I1(bitCtr_reg[1]),
        .I2(bitCtr_reg[0]),
        .I3(bitCtr_reg[2]),
        .I4(bitCtr_reg[3]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bitCtr[4]_i_4 
       (.I0(baudCtr_reg[9]),
        .I1(baudCtr_reg[11]),
        .I2(baudCtr_reg[2]),
        .I3(baudCtr_reg[7]),
        .I4(baudCtr_reg[0]),
        .I5(baudCtr_reg[13]),
        .O(\bitCtr[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \bitCtr[4]_i_5 
       (.I0(baudCtr_reg[3]),
        .I1(baudCtr_reg[12]),
        .I2(baudCtr_reg[5]),
        .I3(baudCtr_reg[8]),
        .O(\bitCtr[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitCtr_reg[0] 
       (.C(clkPort),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(bitCtr_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bitCtr_reg[1] 
       (.C(clkPort),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(bitCtr_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bitCtr_reg[2] 
       (.C(clkPort),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(bitCtr_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bitCtr_reg[3] 
       (.C(clkPort),
        .CE(E),
        .D(\bitCtr[3]_i_1_n_0 ),
        .Q(bitCtr_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bitCtr_reg[4] 
       (.C(clkPort),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(bitCtr_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[0] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[1] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[2] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[3] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[4] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[5] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[6] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[7] 
       (.C(clkPort),
        .CE(\intData_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \intData_reg[8] 
       (.C(clkPort),
        .CE(1'b1),
        .D(\intData_reg[8]_1 ),
        .Q(\intData_reg[8]_0 ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    tcBit_reg
       (.CLR(newData),
        .D(1'b1),
        .G(tcBit_reg_i_1_n_0),
        .GE(1'b1),
        .Q(TxReady));
  LUT5 #(
    .INIT(32'h00000040)) 
    tcBit_reg_i_1
       (.I0(bitCtr_reg[0]),
        .I1(bitCtr_reg[1]),
        .I2(bitCtr_reg[3]),
        .I3(bitCtr_reg[2]),
        .I4(bitCtr_reg[4]),
        .O(tcBit_reg_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
