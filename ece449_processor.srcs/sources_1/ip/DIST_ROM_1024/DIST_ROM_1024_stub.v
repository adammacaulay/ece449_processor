// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr  1 01:23:12 2021
// Host        : Adam-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/amaca/Documents/6B/ECE
//               449/Project/VHDL/ece449_processor/ece449_processor.srcs/sources_1/ip/DIST_ROM_1024/DIST_ROM_1024_stub.v}
// Design      : DIST_ROM_1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1" *)
module DIST_ROM_1024(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[8:0],spo[15:0]" */;
  input [8:0]a;
  output [15:0]spo;
endmodule
