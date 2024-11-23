// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Jan 10 20:16:24 2024
// Host        : DELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/szlj/vivado_save/bigwork/bigwork.srcs/sources_1/ip/blk_mem_gen_4/blk_mem_gen_4_sim_netlist.v
// Design      : blk_mem_gen_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_4,blk_mem_gen_v8_3_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_4
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.51015 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_4.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_4.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8000" *) 
  (* C_READ_DEPTH_B = "8000" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8000" *) 
  (* C_WRITE_DEPTH_B = "8000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_4_blk_mem_gen_v8_3_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_4_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [0:0]ena_array;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;

  blk_mem_gen_4_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 (\ramloop[5].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 (\ramloop[4].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOADO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .DOPADOP(\ramloop[3].ram.r_n_8 ),
        .addra(addra[12]),
        .clka(clka),
        .douta(douta[31:6]));
  blk_mem_gen_4_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[1:0]));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[5:2]));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .\douta[13] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[14] (\ramloop[2].ram.r_n_8 ),
        .ena_array(ena_array));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOADO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .DOPADOP(\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .\douta[22] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[23] (\ramloop[4].ram.r_n_8 ),
        .ena_array(ena_array));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[22] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[23] (\ramloop[5].ram.r_n_8 ));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[31] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .ena_array(ena_array));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[31] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_4_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 );
  output [25:0]douta;
  input [0:0]addra;
  input clka;
  input [7:0]DOADO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]DOPADOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [0:0]addra;
  wire clka;
  wire [25:0]douta;
  wire sel_pipe;
  wire sel_pipe_d1;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[10]_INST_0 
       (.I0(DOADO[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I2(sel_pipe_d1),
        .O(douta[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[11]_INST_0 
       (.I0(DOADO[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I2(sel_pipe_d1),
        .O(douta[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[12]_INST_0 
       (.I0(DOADO[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I2(sel_pipe_d1),
        .O(douta[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[13]_INST_0 
       (.I0(DOADO[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .I2(sel_pipe_d1),
        .O(douta[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[14]_INST_0 
       (.I0(DOPADOP),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .I2(sel_pipe_d1),
        .O(douta[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[15]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [0]),
        .I2(sel_pipe_d1),
        .O(douta[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[16]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [1]),
        .I2(sel_pipe_d1),
        .O(douta[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[17]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [2]),
        .I2(sel_pipe_d1),
        .O(douta[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[18]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [3]),
        .I2(sel_pipe_d1),
        .O(douta[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[19]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [4]),
        .I2(sel_pipe_d1),
        .O(douta[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[20]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [5]),
        .I2(sel_pipe_d1),
        .O(douta[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[21]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [6]),
        .I2(sel_pipe_d1),
        .O(douta[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[22]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [7]),
        .I2(sel_pipe_d1),
        .O(douta[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[23]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ),
        .I2(sel_pipe_d1),
        .O(douta[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[24]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [0]),
        .I2(sel_pipe_d1),
        .O(douta[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[25]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [1]),
        .I2(sel_pipe_d1),
        .O(douta[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[26]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [2]),
        .I2(sel_pipe_d1),
        .O(douta[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[27]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [3]),
        .I2(sel_pipe_d1),
        .O(douta[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[28]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [4]),
        .I2(sel_pipe_d1),
        .O(douta[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[29]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [5]),
        .I2(sel_pipe_d1),
        .O(douta[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[30]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [6]),
        .I2(sel_pipe_d1),
        .O(douta[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[31]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6 [7]),
        .I2(sel_pipe_d1),
        .O(douta[25]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[6]_INST_0 
       (.I0(DOADO[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I2(sel_pipe_d1),
        .O(douta[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[7]_INST_0 
       (.I0(DOADO[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I2(sel_pipe_d1),
        .O(douta[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[8]_INST_0 
       (.I0(DOADO[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I2(sel_pipe_d1),
        .O(douta[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \douta[9]_INST_0 
       (.I0(DOADO[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I2(sel_pipe_d1),
        .O(douta[3]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe),
        .Q(sel_pipe_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra),
        .Q(sel_pipe),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized1
   (\douta[13] ,
    \douta[14] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire [0:0]ena_array;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[13] (\douta[13] ),
        .\douta[14] (\douta[14] ),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized2
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [12:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized3
   (\douta[22] ,
    \douta[23] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire [0:0]ena_array;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized4
   (\douta[22] ,
    \douta[23] ,
    clka,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[22] (\douta[22] ),
        .\douta[23] (\douta[23] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized5
   (\douta[31] ,
    ena_array,
    clka,
    addra);
  output [7:0]\douta[31] ;
  output [0:0]ena_array;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[31] ;
  wire [0:0]ena_array;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[31] (\douta[31] ),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized6
   (\douta[31] ,
    clka,
    addra);
  output [7:0]\douta[31] ;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[31] ;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[31] (\douta[31] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [1:0]douta;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hCC33CC3CC33CF3CF000F30C000300C330003C33CF30000000000000000000C00),
    .INIT_01(256'h6CFFFFF3C033FFCCF3FC030F30C030C0300FCF30CF0CFF3F00003CC33CF30F33),
    .INIT_02(256'hCA05CE827DF9353D19F889A42CA5F282DCC6ED297903B85ADD86F1AFE458D549),
    .INIT_03(256'h4CF02BBA810332AE9BDEB3DA756B61F5C9D395298ED8579FA0D15E18CE3153EE),
    .INIT_04(256'hC43246E5B896C971331EBE65864106CDCE2A53618E586414D0CB81C40057C0F3),
    .INIT_05(256'h2A9AE6BC659C90E8C19CD123A2581D65CB19CC2DDF96B342E2D031E9066A34B5),
    .INIT_06(256'hFFB58A87452EF4A6D845DDBD1293198A9D056239385F9E94B0D611AC9EC6FEAD),
    .INIT_07(256'h3113107A6482F659D302A8E5E520335FB1584CBEB9493C364B1EB9D1AB928B69),
    .INIT_08(256'h25A894108C44E82FB57423514632BD1D1B921E4A1868495E0C9354F0DE4B6B0F),
    .INIT_09(256'h118ABDACC91CFAC04153FE50787C4C49BB92ACF3D49DC805200E5DB82CD83C68),
    .INIT_0A(256'h1D2C41DFD74FDA98B67144D79AFE5C6FE79CCC6363C921CADCDAA4C0C316FF47),
    .INIT_0B(256'hA94F827F2C6B100393760A5E97C96E8289AE0553636E6E5A98F0E352D995A1C1),
    .INIT_0C(256'h8DAAFB5D96FE01BE24DB109B7069BC02390BB873FA383673ACC46B597E0B106E),
    .INIT_0D(256'h8B3E65DE8BC42D162498E2D617EC6F26A73187D61B0FA5643DC375AFAD0BC6CD),
    .INIT_0E(256'h38E0E775B0C819F9849126A1BC33B44686732FB1943BD0EA9B56E82FB022112E),
    .INIT_0F(256'h4269C57A7BDEB0C63716DB3EF91EA6276CDBE3C75E441693A2E43AF79046717E),
    .INIT_10(256'hBE26D103EA37C8DDCC0C24456EC96F13DD176DA69D851F024B003F9F38D6998A),
    .INIT_11(256'h01ED35BFC1B85C0B7A37E29E70651A8F8B7540987A754C0906449B3A1B94DFED),
    .INIT_12(256'h2B12F4925D30DC8505F1BC572BAF59848B4405A4D10D9F2B2490415B741DB6E0),
    .INIT_13(256'hBF401E48D336590C5258F079689371586B0B327AA454F7AD9A8E546C4AEC0E2E),
    .INIT_14(256'hB78611047E116B79B7179A6AAA9F645DF50EEC8B08EF00BBDEC09D58B8653BE3),
    .INIT_15(256'h1E5E310574592C55A4955EF52BC7FBA8A200FD73181B5F91A4B0EA7AA397AC43),
    .INIT_16(256'h9213D90CD3A71A53B24756B8E2B24256C5DAADFEA2D9458A983D6CA645CE7B52),
    .INIT_17(256'h7EF85E6EB88572F1BFF5867DDBF12F63030636971DBE82CAEC794D47CC64A0DC),
    .INIT_18(256'h789DD18F8D14827A700910DA9581FD98449E84BABD8D4B96C80B094AF960E22E),
    .INIT_19(256'h708C6AED30A7E028E13BDD7BAF9C3F66C952896072DA0D99B4A3AD01233647B8),
    .INIT_1A(256'h1FF8EEA3C41659843F27DA843A6FA73531DADF1CE8D92D3D9E42F82E6BAF1015),
    .INIT_1B(256'hBF8C12B1177B00D37DB1C826A58E8D3B11E766F8ACD257B4DFED052CBBC37BCA),
    .INIT_1C(256'h6456C42E64D31FBF51772B02EF15C2497467730316155597738D06DA62DD8E28),
    .INIT_1D(256'hE3929C1ED6F5FFF40E0570586E853714A159FD16B1E3BD2568C8BD44CBB52E8D),
    .INIT_1E(256'h1ADDDF7E5B0D3CAA2EF2F02D243AC15B6CC01B063F62E0FCB32999C6D4384725),
    .INIT_1F(256'h4B1322C645F241C03B802523F4E367347F2E6FB24C38CED3288C3F82B5E79D43),
    .INIT_20(256'h65E416B5A6FAA0B89BBFDB4DBD5BFC277A637DD994AFC64EDCB5A02BD86B1B54),
    .INIT_21(256'h11786C00352AC5F38FEBD7AE557E0E2A87FAF3CF1BBB44130D64A38C263E2D8D),
    .INIT_22(256'hC0D03F6322C838DC525F0B6F2E0AEE189D1F2336E45BE2FA75D26A7CF5765E2E),
    .INIT_23(256'hCB421094EE92D3CCFD488E185EA61EF1D375A5FACF4395B77906FEBB6A5BCF7E),
    .INIT_24(256'h437766211967E928C07E16382A508E8CB1CF16EE515C24CA55E410962F4F871B),
    .INIT_25(256'h6704F8A6CE389A57287049416C678E7D7B7F4A9AE3C0310EDBE70820D7D43E5A),
    .INIT_26(256'h1D1766F8454E240D347E649836D9DB43D162B3D925FD55E2BDE760D60DCEEED0),
    .INIT_27(256'hD23214714362ABD8DA591C6130DC28ADBBF8FE3298BF20DF7AE4C6E78B863F1E),
    .INIT_28(256'h6946DCDE2A5CC3AB87023D12D0C9490C7F81D382D0B252E7B06861665667D40C),
    .INIT_29(256'hBE641D3CEF41E3B594553D2C17EA9253F56B821F8212EABFB976CA8D2E6E8BDB),
    .INIT_2A(256'h4B1A066FF558EB539D7AF4A81CA7C3812A15D74457DBCF9BFDD11BE20CBDB1AA),
    .INIT_2B(256'hDF88B490984B15BA062B8618AB74810EB75BCF8EEA32D89EC951CC94E1B75731),
    .INIT_2C(256'h080882022071AD1A561FD7CC81A46110C8A25B638C0EC92607D60BC97FCADB6E),
    .INIT_2D(256'h25004033B1E7E2312667C9B90F23DF7C4D77DAF88278273924F917D38E984D94),
    .INIT_2E(256'h000000038692EA8DC723BF777016429DC7442F9DBFDDA61267053DE62301B557),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [3:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000FF00F0FF0FF0F00000000000000000000000000000000000000F00000),
    .INIT_01(256'hF0F00F0FF0F00FF0F00F0FF0FF0FF0FF000000FF0F00F00000000F0000F00F0F),
    .INIT_02(256'h0F0000FFF0FF0F00F0FF00F0FFFF0FFF000000000FF0F00F0FF0FF0F00FF0F0F),
    .INIT_03(256'hFFF0FFFFFFFFFF0FF0000F0FFFFFF0F0FF0FFFF0000F00FF0F00F0000F00F000),
    .INIT_04(256'h803CD26919CF7A3CA19A3CAD9B3FC1F042F112310244432222221111000000FF),
    .INIT_05(256'h2CF589299095DF90E5F1ADF8A3CC3AE61F41C64C43D57F2A03D0F70E51A32C72),
    .INIT_06(256'hF5BD0AD0A6DB70C6EFA017B4AD39A31D31B65E43E3812816C4483294C42B42AF),
    .INIT_07(256'hCF1DD3D8F97FA5BC8E07CF9E08A0DC4EA52F52B26D25B182152F84C30B33BD2C),
    .INIT_08(256'h1CE6FD2BD3EAFDA32A01C13CB1BC4BA2FE43B24E43C1412700A4270E54D21935),
    .INIT_09(256'h2A247EE42D1E921BFEAF2AAE7BF88CAA2E911C32BE2D05CE61272E55F41A13D0),
    .INIT_0A(256'h488FE41F5E70FB0F7C1BF29AFBAEC8FD900D12E15F24D1524721A73B7065F36E),
    .INIT_0B(256'h085ECA0A5BB8CB49DAF0BE1015FE50F6107617839B36B79E85FCB2C7DE9ED26A),
    .INIT_0C(256'hA2CE5D9FEB0C37949A34A88D76B89EA8DEC21D33F35F28FF6FE5E9FF90F49E8B),
    .INIT_0D(256'h14A3055397E23165E0526A2263594054197156146016F160173F54065D12D24A),
    .INIT_0E(256'h3DD2FE62B1FC229AD8CF65867B72654A84898E0AD0BF2DE2ED52F8717937B238),
    .INIT_0F(256'h496394F20D21ABC8DF99A8B0A6B77FB5897D09CFBF3EBFCA0DA0EB22D13BF2CF),
    .INIT_10(256'hCB2C90FB11ADFADF98B9A0DBECE41EFDC33E01F5933713C62964CD7CE7BE89C6),
    .INIT_11(256'h3DD2FC11C00C0F9AA57D65966CA7975CD7AB8D3FE0D072140075F22D34E13CD3),
    .INIT_12(256'h163F42E45035013E03EF1EF53132175141E58113D06202EE64E31D4822402600),
    .INIT_13(256'h2F2EC32F21D13F02DF0CCFB9C97DC9B96BD8AB7B1ED0DD42E1DB34F34F3A5561),
    .INIT_14(256'hC75A9565F23FFFBBEBAB88B99CBACB8CC9BB6BFCD0CD42F2DB11DFFAF4002EE3),
    .INIT_15(256'hD1FDFC8E0DFFBE1EE0BAFDBEDCF0E11F10CDFCE0DF4336217747517B8AB79FB9),
    .INIT_16(256'h4230C12F11DF310FCCEA9965997A97AA8BB8ADAC0EF21055375157344F04112D),
    .INIT_17(256'h85254231D152340054230E22132035444244234013FD0EC0EC0FC00BE3014104),
    .INIT_18(256'h0342440131340054341F2100C9CCAAA68A89866977B99EED00E01E0202522765),
    .INIT_19(256'hBACC8AB8872130F1DBEECCA79BBCB8ADDDDA9CBBC89DCCFECF1EFFCE0DE31152),
    .INIT_1A(256'h33123022F01F020033342F00F10DF1133EE1FFFBACDDFEC0213424645867A98C),
    .INIT_1B(256'h3652552341240F11020DEECDB78AABB89AACC98BABEB8CEE22F1434621432320),
    .INIT_1C(256'h756766623423522543554541232441144563244452F10DEDABEE00DD0F031F34),
    .INIT_1D(256'h01033013124113213213322200FCBB9AB98A9AC97888BA79CCF2FE1013103447),
    .INIT_1E(256'h7AA88A9AB8775551EFEDFFCDDAAA89B99BBBDCABBACB89A9CDAACCDEB9CCD0FD),
    .INIT_1F(256'h2FF00241F10020E01022133232000FF0FF1FF0ECEDABCADFCCEE141022366356),
    .INIT_20(256'hE0F253221242F0FE11DDDDEEBAA89A87998999BA9A98BC9ACACFDE0F042F00E1),
    .INIT_21(256'h03644544653322542343565444563332253355465355232EEFCBCCCFECDCCF0D),
    .INIT_22(256'hEDEFEF32121133121F24212124210EDECAA99BBAAA9AA79A9ACABFFF00F22012),
    .INIT_23(256'h3423666876997642330FECDFDCBAAB98977AB9BBACDBBB9AB89BA9BA9BBABB9C),
    .INIT_24(256'hDEFDE0EE1101FDF0EFFDF211100220FDDEEDDCBDDCCB9AB9ABABEDCFFE11F132),
    .INIT_25(256'hCABDDD00022122110DDFEDECBDCCB98AA99868A9998ABAAA99BAACCCFFE00F00),
    .INIT_26(256'hF0EE10F11F22111F010120033342122220EF0000F02221EF0ECC98ABABA9BB9A),
    .INIT_27(256'hCCDCD000221343342330122243244321EEECCB89AABB989999779AABCBEFEFFE),
    .INIT_28(256'h31133344367789778644100EEFFFFDBBBBBA8ABBCDBCEEEFCABBABA8ABBCCABC),
    .INIT_29(256'hEFFEFECDEE00F01000EE0FF00022233221FEFEEDBBCCDDBABBBCBABCDF0F0212),
    .INIT_2A(256'hBBDBACDDEFE02244322100ECDDCDDDEDBBBAAA9999ABA9BBBCB89AABCBCFF12F),
    .INIT_2B(256'h31F00010EE00231121231011122234455333111001001123200FEFD99AABCAAC),
    .INIT_2C(256'hBDDDEECDEE020023454222232123355444221EDDBABBABBABBABA99AABDCDF01),
    .INIT_2D(256'h235433324534667A8787775110F00EEEEEFDCCBBCBBCCCEFEFFDDCBBB99AABDC),
    .INIT_2E(256'h443343320F0F0210222431111331133565454331FFDDEEDDDDDEDDDCCDDEFFF2),
    .INIT_2F(256'hCDDDEEDEEDE0FF12355444332FFEDE0FEEEF0FEDCDEDCCCDEFEEEDEEDDEDE011),
    .INIT_30(256'h0012122111FFFEF11012243222123223356655434311112322223321FDDDCBCC),
    .INIT_31(256'hCCCEFFF0F010021134356555455333346555555420EDDDBBBBCDCCCBBCBBCCCF),
    .INIT_32(256'hE122344455443355567678777532000FEEEEFFEDDDDDCCCCEFFEFEFFEDCAABBB),
    .INIT_33(256'h0F121344332110F00F12123223333223235555544421FDEEDDDCDFEEEDDEEDEE),
    .INIT_34(256'hCBBCDDDEDEFFFFEF01133345433210FFFFEFFF00FFFFFEDDDCDEEEEDEFFEEDDF),
    .INIT_35(256'hCDEEF00122110F0FEFFF011122232222222244444444332111112112211FEDDC),
    .INIT_36(256'hCBCCBCEEF000111210132343455443343333344444321FEECBBAACCBCBBCCCCC),
    .INIT_37(256'hDDCDF0022244444344334345666533200EDEEDEEDEEEEDDDDCCDDEEEEFEEECBB),
    .INIT_38(256'hDDEEF00022333221110EF00011122221112123234432110FFEDCCCBCCDDDDDDD),
    .INIT_39(256'hECCCBBCCCEEEFFF00F01012123333211100FEEFEFFFF000FEEEDDDDDDEEEEEEE),
    .INIT_3A(256'hCCCCDDDFFF01111000000FFF00122233321223343345554433221011111111FF),
    .INIT_3B(256'hCCCAABBABCCEFFF0011001111112334433223322334432110FDCCCBBBABBCCCC),
    .INIT_3C(256'hEDCDCDEEEF0023334333334323444433211FEDDDDEDDDEEEDDDDDDDCCDDDEDDD),
    .INIT_3D(256'hDDDDDDCDDEF00011110F0FEFFEF0F01122111122113333211000FDDDCDDCCDDD),
    .INIT_3E(256'hFEEDCBAABBABCCEFFFF0000001011122211100EEEDDEEEFFFFFEDDDDDCBCCDED),
    .INIT_3F(256'hDDCCDDEDDDEEF100111210100110011232222222222233444333222000001FF0),
    .INIT_40(256'hDDDDEDCBBABCBCDEF111111222222333343443332233333222110EDCCCCBBBBC),
    .INIT_41(256'hDDEEDDDDEEDDEE022233344333344334333210FEEEDDDDDEEEEEEEDDDCCDDDED),
    .INIT_42(256'hEEDDDDEEDDEDE0FF111221100110000022122233222123233222210FFEDDDDCD),
    .INIT_43(256'h000FFEDDCBBCBBCCDEFF00011111013223223321000FEEEEF0000FFFFFEDDDDD),
    .INIT_44(256'hCCCDDDDDEEEDEDEFFF0112211111100111332332332221243344444332111000),
    .INIT_45(256'hDEEFFFFFEDDCCCCBDDEF011222332323444444444432332232233210FFEDDCBC),
    .INIT_46(256'hCDEDEEEEEEEEDDEEE000233344443343333344210FFFEDDCDEEEFFFFFFEDDDDD),
    .INIT_47(256'hDDDDDEFEEEEEEEEFEEF00121122111010012233334333223222223322100FEED),
    .INIT_48(256'h0FFFFFEEEDDCBBAABBBCDDE00011010011122234322100FEEDDEFFFFF00FFEDD),
    .INIT_49(256'hCCCBCCCCEEEEEDEEEEEEF0001112211101112223433332222222333444332211),
    .INIT_4A(256'hDCCCCCDDEFEDDDCCBABBBDEEF011221222222343454443332221122221000FED),
    .INIT_4B(256'hFEDCDDDEDDEFEEEDDEDEFEF11233344343233233222100FEEDCDDDEEEFFFFEDD),
    .INIT_4C(256'hDDDCCCCBCCDDDDDDDDDCCDDEFFF00010FFFFF000223433322211121222221110),
    .INIT_4D(256'h2100FEEDDDDCCCCCBAAAABBBCDEF00F00F00FF00122222110EEDCDDDDEEEFFFE),
    .INIT_4E(256'hEDCBBAABAABCDDEDDDCDDCCDEE00F00010FFFF01012223322211111111223322),
    .INIT_4F(256'hEEEDDCCBCCCDDCDDDDCAAAAABBBCDEF0F000110011133233322100F00FF0FFFF),
    .INIT_50(256'h210FEEEDCDDCDEEEEEEEDDEDDEFF011122332111111000000FEDDDDCCDDEFFEF),
    .INIT_51(256'hEEEEEEDCBBBCBCCCDDDDDCBCBCDCCDEEF0FEFFFFFEF012322333221112222212),
    .INIT_52(256'h112210FEEEDCCBBCCCCBBBBAAAABCCDEEEFFFFFEEFF000011110FEDDDDCCCDEE),
    .INIT_53(256'hFFEEEDDDCBAABBBCCCCDEEEDCDEDEEEF00010FFFFFFF00023222222100001111),
    .INIT_54(256'hEEEEFFEDCCCCCCCCCDDCCCBBBBAAABCCDEEF011110000121232332110F0FEEEE),
    .INIT_55(256'h2222210FFFEDDCCDDDEEEFFFEEDDEEFFF012222111110FF00000FFFEEEDCCDEE),
    .INIT_56(256'hEEEEFFFFEEDCCDCCCCCDEDEDCDDDCCBCDEEFFF00F0FFF0011123334333323222),
    .INIT_57(256'h122234332111FEEDCDDDDDCCDCCCBBCCDEEE00000000000001112111000FEEDD),
    .INIT_58(256'hFFF0FF0FFFEDDCCCCCCDDEEEEFEF0FFFFF000110110000011122244444333222),
    .INIT_59(256'hFFEF0001000FFFEDEDDEEDEEDDDDDDCCDDDEFF01122112122223334433322100),
    .INIT_5A(256'h4433333222110FFFEFFEFFF010000F000000122343332220010011011100FFFF),
    .INIT_5B(256'h0FFFFF0001100FFEEDEEDEFEEFFEFEEEEDEEEF0F021110011111234345445445),
    .INIT_5C(256'h3432333443332210FEDDDDDEDDEDDDDCDDDDEEF000110110100011221121110F),
    .INIT_5D(256'h000000000000000EDDDCCDDDEEEFFFF0F00F0000100110100011222344554444),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[13] ,
    \douta[14] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[13] ;
  output [0:0]\douta[14] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[13] ;
  wire [0:0]\douta[14] ;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hEFFD85FADE13484843B4B2F700696D35A5A696DB034804250196D00000000020),
    .INITP_01(256'hF91CF3BCA2E53CF745ADABCEA5D1884566E460955E5A45754DE503921F77A5C9),
    .INITP_02(256'h1E9121C718056E694BF798195EDCA0D6AD971C0B77D7075C12DD9A848DDE3E4D),
    .INITP_03(256'h8CB3071744E503AD9AE1B9C1E7C5560846904CCA36C1AE3FB6EF91CE88C51AEA),
    .INITP_04(256'h4B8230F9F9B2FFA4AF97EFEBBB2F0BD3401CCE5C242608129185D4CAC29243F6),
    .INITP_05(256'h43FF149C4024E629711804E02CD2C7B906A8239D7BE272B21CD96816A184EA7B),
    .INITP_06(256'hB27E5C4FCFADFB5C95279081EEEEF34BEB470FD72946B79E329BA1206BE854FE),
    .INITP_07(256'hBD403D24FF723BC4A7E80579014E336EA5C23940DEF41E4F031601BA772DFAA1),
    .INITP_08(256'hA4B0C6C0770454A64369F6A8B7175FBE9B634AE1C361CBCC389407E39F38A3CF),
    .INITP_09(256'hCA126DB2C5AB26C9B83C572D155348A1321E4BC4BCC11D1909F3C51A3EB6D1C5),
    .INITP_0A(256'h0FC806775A852039C80CFB094A301E8BC885703414E473016792A48E486F5C04),
    .INITP_0B(256'h246594186DC83B56125825B8C4AD54C79B066FDE3C3B89FAC3FC9D91E94E7832),
    .INITP_0C(256'h6727FCE0AC2F95BFC1AFFDC5370FDC357B62A5120DB4A0B36F21D5D105973548),
    .INITP_0D(256'hBD32368CE747CD73187357094884DAB56255EDAB3FDAF4B1BE9CA42E24BE8651),
    .INITP_0E(256'hF89EB884BFA2BC12E696AE3398B9AF985FF69AC828E91C660D8A3BC393829AAA),
    .INITP_0F(256'hD9A9D77CB93C5EDAAAA9D78DF3BCA6AEC5C5763953D9560A2F45E6612F8BB161),
    .INIT_00(256'h0000000400040000040000000004000000000400000000000004FF0000000400),
    .INIT_01(256'h04080408000404FFFF0000FF00FFFB04FFFF00FF000000000000000000000000),
    .INIT_02(256'h040404100010FFFB10F70C00FB1000000400000408FF04000010FF0408FB08FF),
    .INIT_03(256'hE710E31404F710DFF308F70804FBFB10FF0810DB00FFEF0CF3EF0CFBFB08FFF7),
    .INIT_04(256'h10400C24042034042CEBF314FB2830DB14F3E328C3FB00D70810F3F308E714EF),
    .INIT_05(256'h40E310000414A3D7BF0CDFE304CF3810F728E3BB3420EF30E7D3FFDF00EFDBEB),
    .INIT_06(256'hDFE324B3F7E7FF24200C04FF1818F7F33CE32470D7640C2868F71004F7344C18),
    .INIT_07(256'hB7B7FF50C7FB6FFB93DB7FD7C77B18E7DF2C041874F718E3F7D3EBD39B006B10),
    .INIT_08(256'hB4104BE4949CE00C6C505C283CE80C8874E8A010C4EC7054345418E8F8801F9B),
    .INIT_09(256'hA744FC0377844F7B0C273BEF23833457F328B7C3A01F9BABEBE7D46FBF9CC3E8),
    .INIT_0A(256'h0CEF309CBF5498BBE0CC8B8CD03718543C005024AB74045F8CB4F328AC03F400),
    .INIT_0B(256'hD0870BD8371FD48F232C4BEFBBF30FF053B7DB84434BFBAF4FF45B4BDCBF43E4),
    .INIT_0C(256'hBC9C37AC202FBCA4B3343C7CC49C1070941C1490A40430DCC3E0607FD86CCB83),
    .INIT_0D(256'hAFE4034B086713A053E3937FA38CCBBB731737AC98232F648FF7D0771BD4C4D3),
    .INIT_0E(256'hDF1C744310E03390B4A7DC1C879450740404BCBFE0E0CFE010474890BF2B74C7),
    .INIT_0F(256'hAF7BB0137310BF87F3CFB7BFB783F3AF0F8BB41BFB37E3DB58231F70CB2714C7),
    .INIT_10(256'h3B6798780744300794889F3C20241444C07008782C08C40F94B0F3809C1B0C4C),
    .INIT_11(256'h8CAB17507F035803B3948F777B1BAB7C00AFB408FF48D42713D0C357C4AF63F8),
    .INIT_12(256'h40576760E033A4A86F3B5027B89C0B5B5CC4508C6CEFB084D714440BA8B0C7C0),
    .INIT_13(256'h78F0AC0CDC2B871030E7BCDBCB14507B4393C3FB98AF873723375F9BA3B7EF6F),
    .INIT_14(256'h3358543FA4CC63AC2CB370D06388E4D09CDCE44C9CD874E0A818E8E8174C4817),
    .INIT_15(256'h983C1C5383CC2C339C1313883BB7DC8B77B3D863BFA837F7130F1FEF6FDF6FA7),
    .INIT_16(256'h74D4E8A4283CACBC90A4AC0CA8D4081CAC90E4C0005900B01C587058B8703CE4),
    .INIT_17(256'hA893B3BF731F50FFB3FFCFF7DBFB4377EB135B44B757D4ECCCBC930B6C04ABAC),
    .INIT_18(256'hDF579F7070BF8C8CA3B4584F4810C33F4CA36BAC27278BA367F40F1BFFEFC793),
    .INIT_19(256'h9738DB27F0DB1F57FFB704CB5F5383731F3F17E7F72F9FA33707275B8BAFCFA3),
    .INIT_1A(256'h0C78E40C94BCC050603C300423F4B860B4C04C63A07C3C80AC1394AC0B203047),
    .INIT_1B(256'h84AC20C81C84707C7C24A334501CBC5C4B542CCCBC58DC680CE49C3404EC3C20),
    .INIT_1C(256'h7703B7FFF7CF48A3C7F4DFAFD8439388BF3F00C0EB44D810B4007CA0241068EC),
    .INIT_1D(256'h00170394CB1F0CD8A304CBAF14E8473B3717734FBB2333D7FB7763DBE35FBFBB),
    .INIT_1E(256'hFF0F1B53A0737F4FCB2390E3BB638BBB18A39FECABA328F8735C48E3A718DFF7),
    .INIT_1F(256'h6094F43C8CECB3E0A8CBE4A4C7675F37DF2BFB139727B788F353EB5F8F4BC3AB),
    .INIT_20(256'h6FE87C131C10EFB4803C4088A03890905C80DCD4F4C8902C18C488C8C4D84860),
    .INIT_21(256'hCB73A01F9F0C0F73942443A74FFBFF779BD76FAFBBB097274B9B0714C413ABBF),
    .INIT_22(256'hFFBF2B832FA7148BF30CFB44582CF0DC70708C24AFA4B49754201F5448130BC0),
    .INIT_23(256'hD4F7BBACB3C770BC2F8C8CC74CAFAB2F1327AF938BB39B93435F9F6B93AF6B1B),
    .INIT_24(256'h18C4A75C48E024DCA3ECF84C741CB32348A037C88443B400CC38BC3858F8A8F8),
    .INIT_25(256'h90F8ECF308B06FAC1C54B0704084249714F823F3304FE3A0ECF09C88A06CFCEC),
    .INIT_26(256'hDF73576FEB0B2F1BD0278F8CBB6B94DCDF9CEFC79CD82FDC44575838B47CB464),
    .INIT_27(256'h086B908B5FC0884F3008BB6C84C708BCD727A0577F6B27AF9FAFB727838B576F),
    .INIT_28(256'hABA3E373EB732FCF0BC4138B9C94932C530794BC373707F34F2058B8DCFF6F20),
    .INIT_29(256'hDC385468A494A8BC27C050F393CBFF7FDF8F431BEF17C35B677303239B23A323),
    .INIT_2A(256'h3C0CABDB7F5B27302F4F8C502C3070B8340C443038E0F08468542CF0380CF02C),
    .INIT_2B(256'h67F873AF3BAB2303902737274B6714D3A3F4BFF737E323E353DF9F88CF30D0E3),
    .INIT_2C(256'h3B2B8BBBA38F870F50071F3070DC38B0A0981CB83C34AC78FC5FB4B494A83C3B),
    .INIT_2D(256'hB4543498FBE4A0E78CC01B57589CE4F71F23A3C7473F9F1367DF8793730377AF),
    .INIT_2E(256'h20B47038AC201C10ACA0E30B60ABE36CFFA3CC53BB1030CFFFECE0E4F40C44CC),
    .INIT_2F(256'hCC08A06070440074731C64DC2C8838C8D09CD8689CC380688060502804EC50C0),
    .INIT_30(256'h43EB7B1B4F9BEF5F6F7F3B7F67B39F67C8288B9C74BBC868B84CA8ACC08C44C4),
    .INIT_31(256'h249808ECA81C3058A0502478D8F42814E0888C3FE828FC3CE38B3FD7D3EB97DB),
    .INIT_32(256'h1723A7F737A3035F7387834FBB2F535BD79F7C93DB33B713B41723D8F8C0FC8C),
    .INIT_33(256'h9810E06C08245008B88078A43CC03B307B97372FFBFFC7BFFBB71FDBE39387E3),
    .INIT_34(256'hE4937BD073D3336FEF2B937F6BF37FECB464ECDC6CA46CB004704C44BC009860),
    .INIT_35(256'h40E85CACA030F0201B0CE4EB70C848D4F8DCE4A4582BB890AFE4E4A7E7C07C70),
    .INIT_36(256'h37EB774717DBCB3F1F1FCBDBDFB32F3744DCEB282460B03C24C0A8342C88C8D4),
    .INIT_37(256'h40F450F878B89CBC38182028B4EBDCF460D4F08BD7579F732FD7BFF333D34BBF),
    .INIT_38(256'hE4681CD0B0D0DC0CF09C0B684CBBA3973BB7D7E7A44017D7B48FC4A4C89324FC),
    .INIT_39(256'hA89898AC609CBCB8B09CC894F81C180CAC50D08818140C940400D058E02C30A8),
    .INIT_3A(256'hD377576B47AF072BBBBF8BB7BB2B3F37EBC7A76CDFE3A098D0B8C4080C5C9C90),
    .INIT_3B(256'hFC3CD8B0D86080BCC8A87470988094C03830489054E04C98D8B857372F271B47),
    .INIT_3C(256'hEFE7BFB3A3E39B13639B83C36F7347EBCBF3072F770FC3DF83E7031B9F241337),
    .INIT_3D(256'hC4242C0C3C9C0C1C88B448547CDC5408EF4BA71BA30F0B7F0303878793EFF74F),
    .INIT_3E(256'hC3C32CC77750A78B5B0757432BE3F763CF63E7275040DC40286CB09840340C68),
    .INIT_3F(256'hF8872F7000984038D3F07C80CC04D334900800582CE8A4B410D8E44840CF7B38),
    .INIT_40(256'h8BA76707A3833F6B974BDB0F77FFD347E35733BF9F17B02BD430080BECD04F0C),
    .INIT_41(256'h57DC731CF8202C5478506C347F6CFB534084232BA7D36F7787BB03AFC7E7C753),
    .INIT_42(256'h9C60449448ECEC04B0F430547CCCB003F3D35F73931333CB1BBBE7133FB3F4CF),
    .INIT_43(256'h60805048243CBC50C4240C047884047410C05C141C6404E87C7CB0C058AC7C74),
    .INIT_44(256'h37A387B3038727C38BE7473BC7EBDBABF767337BAF13430B301C3B5460CC2460),
    .INIT_45(256'h7B0F43778FB3A4ECA880A098D49CB8A4A09388741C34089028840C30C01B8F4B),
    .INIT_46(256'h5B8FC393CF7F332B8793E3CB7B3BA72B27C753BF63D3437F33DBCB1F9307A3D7),
    .INIT_47(256'h9C84F010C41494D460F80C9870C8F42440F4DC8F7753837FA3CFB7D30F2B9B1B),
    .INIT_48(256'h171F6BE7937FD72BAB3323878BCB07FFBF4FAFF7A3EBAF7F27D3349C0F6020F8),
    .INIT_49(256'h6B2B1FBB93ACE7777CD8D43CE33F73CC5B3B6F1B6314847860403028D46CA7AB),
    .INIT_4A(256'hF36F23273737AF537FCFCF4BC3030F3783F34FF33BCF87E30F7F2FE87CBF34D8),
    .INIT_4B(256'h9B1B8FCBC307A4CCE024C454643C00C0985B27FFC3B303A7472F274FCF0767D3),
    .INIT_4C(256'h60A4276724D8B8A413243CE4A08C0F4F44F733F75F3BB323ABEB1BFB1B77DFDB),
    .INIT_4D(256'h9720D3CB9484EF20C0BB2CE0285444534420CCE0D038EC6C647024B4507850FC),
    .INIT_4E(256'h97A7E743E7FB671713575F77A783B35337271FD3D34B839387AB9F97337F77D7),
    .INIT_4F(256'h4F6BEFDB1B0854BC10B83CE050D0440088908C408884707054B06808F8B8C054),
    .INIT_50(256'h6737837723B3B7CF879FE3A7A31F0B274B1B2BC717137727B3473BF7E3634FB7),
    .INIT_51(256'h4C5C48581C88F810443CC088841CFCA0A0687830F8D044E347F38B638B1F179F),
    .INIT_52(256'hE4A4130B87D363AFFB770BB3C7BFCB9FD7A3A7F3D3270BA7533F48BF60802028),
    .INIT_53(256'h8B7FF78757ABBFFFC37FC4944BFC40DC24948F2FBCF747148438D81C788C5CD8),
    .INIT_54(256'hD337DBA373336737DF535367677763DF1FCBB76317C347C35BCF2B8BFF88D023),
    .INIT_55(256'h07F3979F0B3F534B93479FDCD85C1460A830F81CD018DF939BF7AFA35FEB9FE7),
    .INIT_56(256'h8C944418C46CF0E864844CDC145CF8681824FCA36F876B9B1F2FD3A327B36BF7),
    .INIT_57(256'h94485B50601070ECC7FFBC60088094A02C1C94DC3C00389054604CE01860005C),
    .INIT_58(256'hBC58A8A8D82F6BC347E3C7235F3F67274B67C7C31B7BF7F737BB2FAF1723284C),
    .INIT_59(256'h1387EBB3AFE3537FDBEBE8F05854C4EC4CF43CC0B0A06C9C58588828B450E884),
    .INIT_5A(256'h579793F3FFAFA36B3B7F3F4387E74F97FFF7934F97C773CBD31777836F170F0F),
    .INIT_5B(256'hB034748C84B898307850745870D0EC2C845C983460E048C090945F80B02B7F47),
    .INIT_5C(256'h581C98387C2C1CA84BEF8FC79F33CBA3CF53A303075317ABDF9B3BD7FBDF4F68),
    .INIT_5D(256'h84C854809CB45C18584FEC13C454F49064641C28A4F84408A460648CD44CBC88),
    .INIT_5E(256'h7F9F6F6320D30F13EF8F035BEB734B5BEB734FABFF63DBFFCB5F7B47B34498F4),
    .INIT_5F(256'h6377AB0F672FFB8BABAF5B448F5FF01824ACF898E4E444D8509F83BB235374B7),
    .INIT_60(256'hCC40B040E04824F8403030F414009020682400BC14D8E4AC1F17A3EB37AF33A3),
    .INIT_61(256'h24E4182CA8F0D80850B8377343A75BA0B4ECE81C88D0ACA89CF44018F0540818),
    .INIT_62(256'h444060780C6404A48850D79BC35B93FB6BCF0FAB077F53B747CB7B8F4B9BEBC7),
    .INIT_63(256'h3B0713E3B75B87B4576838F0C8547CA878A4103820A49C6C4070D45814D0A478),
    .INIT_64(256'hBB3F3BD71B43DF6F7FDB235F9303BB6FF3EBFFCFA34F5BB3EBAF2B771FFB0BFF),
    .INIT_65(256'h5710D48454A4002C68FCFC6060241CC070A8E8E010C8D058B88CC4DC780C087B),
    .INIT_66(256'hCCE824E0808420F874E85C7827D75B2343B373139FABF3072B175F5F43670F0B),
    .INIT_67(256'h089B58F4F4389810D44C685430C0BB288873B888C0680CACF87850B40C04BCC4),
    .INIT_68(256'h23271F5B1B47F04493CBDFB313EBA7FF9B6713736F1FBBF32F0FBF37135B83BB),
    .INIT_69(256'hBB13138F4337730F274BD79B230FB347D0C4789074489CD8E4D8580488A85B2B),
    .INIT_6A(256'hD8BC98F4B4205888345CBCC088C4708004D01804289C0C44109028AB779B8F33),
    .INIT_6B(256'h1F2F33D34BF800F8180C787C94D724477B33DF1B78A0081CFC7448DCC4B89C48),
    .INIT_6C(256'h94903814382C781454400C0040CFE33B7BB307BFB3EB9BABF773D7FB7BD32B1F),
    .INIT_6D(256'hF36B73BF2F6B33EFCF0860E02C44D8F430D0DC98A47CA494A090A024E048B450),
    .INIT_6E(256'hC4FFB31B5F83DB0F8BCFE32F378B6387A7B787EB5B6BA7E7278B13E343537743),
    .INIT_6F(256'h5F2BFB439BA0E81808FC0C4C54B05424E81844F8E4641454E40474C0D09844FC),
    .INIT_70(256'h6CA4E4D0F8D878ACCC6CC4702CE07897334F7BF3A38B839B7B2F5B6F6FEF0F1F),
    .INIT_71(256'h634B83BF3F98FC3CDC20509C7C1CC02C884488C37B7420C4E8D43010A8F434E0),
    .INIT_72(256'hC48C2C7FD727E3470B7363F7F4C434E3ABEB13DB6BC7B75313F3EFA70BE78B6B),
    .INIT_73(256'h8FD30BB7375B9BAF23ABD75F0F0FF7C44C5F740CDC445088846414C4C87C3074),
    .INIT_74(256'h6C7C9C68A430BC54F850D438ACF8A480B82488F4BC54E09C4CD068B898F0E317),
    .INIT_75(256'h237F4B43C7076F07337FFCD8E4F4A43C78880844E01707EB80E8549C8C6CBC1C),
    .INIT_76(256'h20E47C2878DC94E07C7C44F884D050D85CC77F23B32F3F87E34BF31BE3036F47),
    .INIT_77(256'hFF27EF5777533BAF6B8BD3C74F0B43883CF8D8E09C8CA02434B05C3440F0D0E0),
    .INIT_78(256'hD080D467FBF7A75BF3ABFF2F17F3E7B73B4743131B7B07DF2B7F87DBCBDB530B),
    .INIT_79(256'h677F3F9B9F07977BA7B76088A87C684CF818A42CC07C00A0E03CDC5CE894C480),
    .INIT_7A(256'h4C1C04A8542CB02420F8B83C5C48A45844ACCC40BFDFD37F0327273F5F53D3FF),
    .INIT_7B(256'hA3DF5387578F7F6F0FD3C7A87400F4B8AC4460C360FBD3FB27CBBF0C878020CC),
    .INIT_7C(256'h50ECF8AC388C539B6317E70BBB7BDFDBDBB787FF8F432B37AF6FD73F7B37DB47),
    .INIT_7D(256'h9FAFB3730B6B53E74B33CF7363132B53077BFB0068FCAC903014C0DC3894F880),
    .INIT_7E(256'h74547C2C10809010007C80E060DCDC34D07C3CB4ACB01C044C0C84181C8F7B08),
    .INIT_7F(256'h5F23A737479B2F0F6BE7B717A35C288828CC4C14180C5C147C1CCCF020B4486C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[13] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[14] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [12:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h31696918FD3C8D896DC50DE03501EB53E555B5BE6C89321AF3903C3586B5E381),
    .INITP_01(256'hED5E33809D4AEA532EB3062BCAF305C2B2EADFFB7C99D3034658A71660216F92),
    .INITP_02(256'h04080448414B23E329D567BB27BC707011FADDD0585B4B5E359417A5562B34AF),
    .INITP_03(256'h9A497E31A4546CE97ED2BB1030B099BA9AB3500A8FB71046C75EBDD6012F903A),
    .INITP_04(256'h20F551A82218D4A2A39993563D80C5BD9C71429EED5FA24154FE4AC0844908B1),
    .INITP_05(256'hD68504BB8B27DC0508EA61A757428B5635DED2A88DB01B88AD306E2D0142F2DC),
    .INITP_06(256'h724041CBCC9E11D12A828427D6F105B08CFA89039D0129AEE0412F805DE10AE9),
    .INITP_07(256'h000000000000000000000000000000000000EDCB3877C25633227CB50BE0721F),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9094C86CE0ACC874DC18743C6080F06CF89C1014A02737834F571323C3A3335B),
    .INIT_01(256'h5F5B1B871FA3E33F93BB437F2B07638F1FB00C18DCF4E0C4B8C0BC4CC88C5C70),
    .INIT_02(256'h4468E8440C301BA777572F8F07A3FB67235F63F33BEBB36B3BD707ABDF1BC393),
    .INIT_03(256'hEF332FB393EF2B63F34737FF57DBD84454145C041028A8AC0C2088009CD4C48C),
    .INIT_04(256'h643C04087C48E03CB88CD48CC8DCD410487CF0606CA4ACEB1F6F43AFA3F33F4B),
    .INIT_05(256'hE7F76B0FAF933FCB3F9B07A30B2C47B70C18408CB060DC4450C460F0283CC498),
    .INIT_06(256'hE828AC3CD8243498709C2C5BBF836BDFFF58746878576F0B7B477BE71BE7E7E3),
    .INIT_07(256'hDC7C6C1B139BD7275F173FFF27733BF71723BB270830A864584CE4F884103894),
    .INIT_08(256'h4C4410DC6C882418D81C98E4740CBC384C403CD814BC6CA074E888D8E45CD4C4),
    .INIT_09(256'hBBE3938717DF7FCBE3F76F3F775BCB373F03C0D42CCCCCD8EC8480B49060A83C),
    .INIT_0A(256'h609CE8BCD41058A06C0060302854DC943014584CF0E014D8EFEF279B639F2333),
    .INIT_0B(256'hD3D79B2FEF2B174BBB0FB7DB7FCB5B7743639B8BE8944078DCA4CC94B4D4C02C),
    .INIT_0C(256'h642034C8FCD4EC7020CFB3AB971B279FE783FF3733BF07AF27CF4FE397FF0387),
    .INIT_0D(256'hB3CB879F33CFE34383930B7BB39F8B173BA4ECB840F0506878E054C0C00C4C18),
    .INIT_0E(256'h487880480888EC58584878749CE82040081C78FC18D018A408F838C00753976F),
    .INIT_0F(256'h832B97177BFB371B675FCB273FBFFFE37FD777CC20F81858FCA428C4409CB4F4),
    .INIT_10(256'hF044C06C6000F46840B45CE0A8CC3FBB0BA7E7C32B43C32303F838EF070B7B67),
    .INIT_11(256'hB4BB331B0FAF078B3BEF97AB23470B4B1F27DF8F733B6F0C6088808C887CEC64),
    .INIT_12(256'h1C90E0745C9414648C8CD8E8D8D4E8E07CF800ECAC30FCF85824E804CCEC7488),
    .INIT_13(256'h7BC3538BA713FFE3BBDFFFCFFB6F7BAF6F13E71BD30C681C70CC8488F4E4E488),
    .INIT_14(256'hF02894B4C80094A46480A4AC8808F0D49028308CE0B44CACD484E81C1CBBAB8F),
    .INIT_15(256'hDBDB9BBFBB8B4B1BA7372BFFBB038F5353DF334783437F53D310480440C04414),
    .INIT_16(256'h0008B880C4281C78A84464F44094336F67033FA7FF63D777A3B35387EF43DBFB),
    .INIT_17(256'h1723277FEB4FFF5BFF57537383DB07377B77431BAF73FB64D400D8089458E034),
    .INIT_18(256'hCF6FBF1BBF7CB8B454E800B870F438B00CF438989850702C30A0C860FC682C5C),
    .INIT_19(256'hEB535FD783573BEFDF632F239FAF97F35B57071F13AF634F43AFAF4820E8581C),
    .INIT_1A(256'h2CA3D8C8ABCB006854785098342CD0A894C7CF7313CFEBEBA3C3635FBB63DF5F),
    .INIT_1B(256'h6C18BC606B8F57DBBFB73BFB03CFA3CB23C717E78F770FBBA33B235B98907B14),
    .INIT_1C(256'h58145B7BFF93D86CB08440EC1034D4B49094B8A080CC8844E8DCCCC068F488A4),
    .INIT_1D(256'hFB4717DF1BE31B5B6B43FFD77F2FA3030B57F793AB1717CBBF633860C3C0B8F4),
    .INIT_1E(256'h2FDC6040A0D4AC2CC4F4507800589C386C7898F44C543F70A8EF7394EF7F576F),
    .INIT_1F(256'h6F739FAF636797CF3B1B7B7BCF6F7363BF8FF7EBE3D7F30F7397F3C3E3F31BF0),
    .INIT_20(256'hA4C84420982498B0802450905CB0A0C418078BD713CF271BA3938763E3572B37),
    .INIT_21(256'h9C3C5C07F3E7E75B23B3A733D7AF23278F5F83130BA38B671303F347F44404AC),
    .INIT_22(256'hC748AFD37B83EB07CFF76770E8F4149C7478D420F898005C487830804CFCA064),
    .INIT_23(256'hD7F75763C723D7AB1FCF17038FA76FF3B32703534F0BEF5B078F339787AFCF33),
    .INIT_24(256'hE30B33378743EF9747EFD38040AC24F070200428D7CF1B1FAF839713CFA35B73),
    .INIT_25(256'h086C344CB480139F1B93FF638B93376F87EBA3734BC30F634BD7B7EBE33773FB),
    .INIT_26(256'h546CEC8098B7EF6BB7475713D84844E0E49030F8BC107C64744478A4F8E0FC64),
    .INIT_27(256'hB37FFBF71B0377BFA7B77F070B07EF13EBBB57EFC34B67B3F363277B078FEFDB),
    .INIT_28(256'h8393AF5B1C6824488894986814942038F054448CC0A08830CC93801BAF8363EF),
    .INIT_29(256'h2BBBFF7B07B34B57E77B9377CBFF1F3307E3DFABEF0B0B0B8327C7B773937B7F),
    .INIT_2A(256'hBF3CDC000C28D4F0B8D8E07038CBFB58C49830AC03F31FEB0FFF1B03CFBF234F),
    .INIT_2B(256'h1C0818D0FC4C2C2FEB2BE7EF3BAB4BB7FF0FB35BDB63776BC323FF8F3BE3075F),
    .INIT_2C(256'h7F4F43C33BDB94BC432CBB37E3FCD818B08C3CC800FCF8D8388030B8F0E0A034),
    .INIT_2D(256'h5B1FE76727437FABE3D7337B5FB333039F5F8FBB574757BF378BAF9FFBEF437F),
    .INIT_2E(256'h473FB7830CF0B0402804341060CCBCDC38B4DC9418E430C030E4286B6B53833F),
    .INIT_2F(256'hD0A48468D02C74245400F848AFCF63DBAB671B7747FFEFDB67DF4F274B171B27),
    .INIT_30(256'h6B8BC4D800C0046438447C9474546CE444F4C018CC70BC2CE8A050A48C1870A0),
    .INIT_31(256'hA7576B8CFB4BAC778B97135B873FAF1313F34717E3A7CBD7274F174790A7577B),
    .INIT_32(256'h73979B5FB7A7A4EC4C40489014E89848F0ACE8B024D4209CAC54E040CC08D4DC),
    .INIT_33(256'h3F4BAF8774FC5C64B078C4A33BFB1F1F0BABCB73FFFFB3FF97F3C703C3CB3B8F),
    .INIT_34(256'hBC9C9CF4C4803CA4E8445438E808B0985C7C209CB48024E8A428982CAB7F679B),
    .INIT_35(256'h08F49C5CB0C08C74D4B408C4FC57373F4FBBF35FDF1F0788D8E430E0F83F40C4),
    .INIT_36(256'hDB578B9723F73CD710904098D8846C6018407C3CA8B4A030609C1CA8BC547CDC),
    .INIT_37(256'h901B4FFF372F5478D8D08C600803FBF7B7EBA7073B0F1F7377FFF7FFEB8357C3),
    .INIT_38(256'h23C3538F7397733C544898A0C09090B41450F89C0094A080606CB0B41C902847),
    .INIT_39(256'h48D0E0B088F8B030ECF8782428CC88947767CF53A7CF0B0B27739F7F036F8FCB),
    .INIT_3A(256'h97C8E83BBC989438F48CCCC87CDC641468F0A010E85424904898BCE0E4501048),
    .INIT_3B(256'h000000000000000000000000000000CF1BC7DBDBEF1353435FA70F9B5BD35FB8),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra[12]),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[22] ,
    \douta[23] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h804B6F943C0694B3E56965A67AD2D22B4B5D2582D6B1FB4B5204210012000041),
    .INITP_01(256'h26DFFFFB2498249A6DF64DB2490001249B7DDF6C9248324936FB6FB440000007),
    .INITP_02(256'hDBFFFFFF9240000002DBB6F9241020934CFFEFBEC9A60966DB7CD36C10400249),
    .INITP_03(256'h00976DB7ED1241049927FFFFFF6DB26FB659A408000000036DBFEFFE4822C936),
    .INITP_04(256'hB24DFFFFFFDBFE9B6C934C00000000001937FFFFFB40924DB77FFFFFFEC10000),
    .INITP_05(256'h5BA619000000000012EFFFFFFFC820C32C9BFFFFFFA2000000005B04BB64920C),
    .INITP_06(256'h009F7FFFFFFE41BE09A0DFFFFFFC00000000020837FF3ED9679B7FFFFFF27FB0),
    .INITP_07(256'hF00413FFFFFFE0000000001B01FFE1A20FFFFFFFFFFE9BFFC26C000000000000),
    .INITP_08(256'h00000002C83FFB0400FFDA3FFFFFF0FFFC110000000000000006FBFFFFFFF00C),
    .INITP_09(256'h32CFFECBFFFFFFDFFC800000000008000000FFFFFFFFFF01FF8820FFFFFFFE00),
    .INITP_0A(256'hFFE00000000003C0000007FFFFFFFFE00FF0019FFFFFFFE000000000120FFFFC),
    .INITP_0B(256'h0000003FFFFFFFFE00700000FFFFFFFC0000000003FFFFFFE79A7FC03FFFFFFF),
    .INITP_0C(256'hC00F00001FFFFFFF80000000001FFFFFFFFFE3FE03FFFFFFFFFC000000000018),
    .INITP_0D(256'hF80000000007FFFFFFFFF80D80FFFFFFFFFFC00000000007C0000007FFFFFFFF),
    .INITP_0E(256'hFFFFFF00200FFFFFFFFFFC0000000000FC0000003FFFFFFFFE01200007FFFFFF),
    .INITP_0F(256'hFFFFFF00000000001FC0000007FFFFFFFFC00D0001FFFFFFFF00000000003FFF),
    .INIT_00(256'h000000FE0000FE000000000000000000000000000000000000FE0100000000FE),
    .INIT_01(256'h00FE00FE0000FE010100000100FF01000101FE01000000FE0000000000000000),
    .INIT_02(256'hFEFE00FE00FEFF01FE01FEFE010000FEFEFEFEFEFE01FEFE00FE0100FE01FEFF),
    .INIT_03(256'h01FE0100FE01FEFF01FE01FEFEFF01FE0100FE0100FF01FEFF0100010100FF01),
    .INIT_04(256'h00FEFEFEFE00FE00FEFF01FE0100FE01FEFF01FE0101FE010000FF01FE01FEFF),
    .INIT_05(256'hFEFFFE0000FE01FF01FEFF01FE0100FE01FEFF0100FE01FEFF01FF0100FFFF01),
    .INIT_06(256'h0101FEFFFFFF01000000000100FEFF01FE0100FE01FE0000FE01FEFE0100FEFE),
    .INIT_07(256'hFF0101000101010101FF0101FF01FEFF01FEFE00FEFFFEFFFF0101FF01FE0100),
    .INIT_08(256'h13FF0B0D111B0C07172123221C1716161414110B0B0C0A070203020300FCFBFC),
    .INIT_09(256'h051FE0F011B2CC0FCCE7FBB8D51DE2D30ECDD218E1D2F1CFDF1DF8E20BFD0326),
    .INIT_0A(256'hFD270BE63827E3251BED2B3CFA104E001D6DFEFA3C03F32F11D11E17E33B17C7),
    .INIT_0B(256'hE60230C6CD16CCD002D1ADECF9C702F2AFFD0AD5ECFCC1CE1CE0E016D6F43409),
    .INIT_0C(256'h09D83130F5221CF31A45080B3A03275B121A390E0D401DDF2110E02A19DC031D),
    .INIT_0D(256'h2DE0F00DDAF112E2C3FDEDCB16F4C30101DC070EB5D517C7DD0CC0C81006E718),
    .INIT_0E(256'h1F0AF52508D40B2BE3041FCEFC370900250CF64024E72106E11E1FE4F316E702),
    .INIT_0F(256'h0921FB0235FDD60EE1D011E3BAE6EAC8F0FEB6DBF1BDEAF2B7C2F5DCD418E7C9),
    .INIT_10(256'h06352DF427380A382BF21D381923470D0C5A2A1B420AFD3629F01B19D8243AF2),
    .INIT_11(256'hD9EE2EF2E80FD6E514EAD1F4E6C9120CC8FC04DB0216DAD80DDFE727E6DF2011),
    .INIT_12(256'hFACB0E0AE52116E1FB1BF30933E8F8390B133A0EEA2121EF15FFC7020DE4F907),
    .INIT_13(256'h33F50422E6E21701D5F2DBB3F7ECBCE1DDBEE609CBCCF2BFDC02C7C8EDD6D915),
    .INIT_14(256'h110AFA2C2EFE132C012336F50B24071B3B10FB361E033F14E21619F1101ED6F8),
    .INIT_15(256'h313A09093012FF2BEECF14FAD803F4C3F81FDFFB11D0F01EEED9FFE6D21B07DB),
    .INIT_16(256'hC00914E30619E9203DFC082B0C124E2B0949382A5F4521434725444805243D14),
    .INIT_17(256'hDFCA04EBD903D7C5EFDBC6E7D7A4D5EABFE1E0B4D2EDCDCFE9ACACFDCEB9F4D2),
    .INIT_18(256'h11E60F15EC1F320A1922F50B4505F42BFBF73416ED1315EA1914CDF30BDBEE12),
    .INIT_19(256'h22E9F630FBE810FCE810F8C1F5F4BDE8F7BCCE00DAD5FFCAC9FED8D2F9D8C504),
    .INIT_1A(256'h3D36023250242A40121E4B1E233C0A154F3C1D3F34154A4A1A2F24012737F3F6),
    .INIT_1B(256'hE71CEFE30AFBEB2014E207FFE5130ED8FA21F10C38FC063715143414FC332B04),
    .INIT_1C(256'hABDAE9C9E9FECDE30DE6F303DAE107EFDD0BEFCF1617EA0805D9F613DCE7FBC2),
    .INIT_1D(256'hFF0320F9F0381AEF1800DC0D0CD0E1ECB6DCFAB7BBE0C3BEE9CFA6D2CDB4E1CF),
    .INIT_1E(256'hF6D2FC0ED2F01BF8042301F21C11FB1E02EE221802261EF81B2D011314E70624),
    .INIT_1F(256'h4D261B5034193716FD2720F607FFD3FC10E3F202DBEE24F9DF0EEAD915FACCF2),
    .INIT_20(256'hDEE6BCDCEDD4FC1EF2F62503043C11FC362D1948481E4C663B505F2E3B5C3D2E),
    .INIT_21(256'hDA15EDDC07E9CCFD01D5EAE9B6D2E2B5B9C8A5ADE3C7BBDDBBBBE8D7C1D5C0AA),
    .INIT_22(256'hC3E0ECC8EC1AFBF818FD06310F031B02FA2512E8090EEF1517E90016EFFA15D9),
    .INIT_23(256'h111026FFE7100EEF0E01D8FF02DDEFEDB5CEFBC6C5EABFBAEDE1C5DECEB0E2EF),
    .INIT_24(256'h2501314B1C2D4713205332273F2416453A1238391544582D374E333F53211F37),
    .INIT_25(256'h13F3DC07F8E2140DE60B1AFE0E12E8FC18F60516EEF82B1F0F2C1A0535311532),
    .INIT_26(256'hC0D9B8CDDCB3CEFCE8E201E8D904F6DAF5DAC3F4FCDCFB08E20023FCFC0EEFF5),
    .INIT_27(256'hF20AF1E91203EF0D07F00E14E7F401DDEAF0C0BCDBBFB0D6B297CECEB2CDC2A1),
    .INIT_28(256'hF005FECEE201EAF20DE8E21D0EFA1802E80D15F6070AE80522050917FBF81605),
    .INIT_29(256'h43375A4C364941253C421F2C30111D2807FC11FBF816F8EF1005011C0BE8070E),
    .INIT_2A(256'hE2BAC2DCCCD7EED5D600FD041E06FB212817302C0D304937485536456B504867),
    .INIT_2B(256'h1609FB0EFDE4070BF20905EBFE0BE2E3EEC1BDDDBDAFCBC4BCDADBC1D9DEC7E0),
    .INIT_2C(256'hCFD7BBD1EDC9CDF1E8EF0F02F20C14092418F2081702090CEFF311070C17F7F8),
    .INIT_2D(256'h2D391BF9130CF300FBE0EF00EEF1F2D7E1EED0CFDDC7BCDAD2BCD5CEBFDDD6BC),
    .INIT_2E(256'h11232A101A29151D3421102A26203F31192F2C1B373D142141303A4F342A403B),
    .INIT_2F(256'h08F508FFF50AFDDBF208F60412F4FB150A0711FAF0130BFA130D011B25121B1E),
    .INIT_30(256'hDAC9CFD6C5CEEBD9D2F2EAE90D08F80402F3FFFDDCE6F1DEF309F3EE0D080721),
    .INIT_31(256'h03FEF40700E6F3FDEE030AF1F409FEFE08ECE1F3E3DBE1C1AFC4C6B7C6C9B3C8),
    .INIT_32(256'h1011F3F400EAE5EBD3D5F4EDE5F9F5E6040BEFF8FEEBFA0BF1EE06F8F91604F1),
    .INIT_33(256'h506861495756425557363945313746291D2F231A2411FA090C02120EF608170C),
    .INIT_34(256'hC6CCE0D3D5E1C9C0DAE1DDEFEFE607140D1D1F13263A282C3D303E5B4C4B5B52),
    .INIT_35(256'h10030C06FA0E10F7FD04F8041401010AFDFC02E6D1D9CCBDCFC8B1C1CFC7D9E1),
    .INIT_36(256'hD5CDD5D8BFB8CCC5C3DED5C4E4F5F10204F20517070D11F3F008FDF1FFF9F30F),
    .INIT_37(256'h4F4738474026271EFC0011FAEFFFF9F405FBEAF1E9E1F1E0C6D1D9CDD6DDC9CB),
    .INIT_38(256'h29372D232F2A2E3E2A1C2E2E222D28141D292933311B233025283D2B23434842),
    .INIT_39(256'hECFC0B070F07F50009F6FF0AF6F819150919130E1B13051213071C2911142B25),
    .INIT_3A(256'hADA9BABAC5D2C4BFCECCCFE8EBD7EB01FD0913FEFB00F3F2F7D4CAE2E1E1F6F6),
    .INIT_3B(256'h1304100EEFEAEEE0E9EFD6D9F1E8E6FAF0E8FBFFF4F7ECDCE4DCC3C1C1AEB5C1),
    .INIT_3C(256'h1108081D150401F2E8F0E1CBD5DCDCF2FEEEF000000D15FFFA06FF041608F80C),
    .INIT_3D(256'h6162525F6B6672725C5C645551563B262F291D2A230C1816010606F1FB0CFFFE),
    .INIT_3E(256'hABBEBBB8C8C2BCD1CEBFCACDC4DBEDE2EAFDFD0D20120B181C273B372B3C464B),
    .INIT_3F(256'hE6E6F2F3071402000801061404F8080C09160EFE0600F2F1E0C3BCB6A4A6B1A4),
    .INIT_40(256'hDDD7DFD4CBD1C4B8C1B6AFC1C8BECBD9D5E6FCFB030F091024150106FBEF0301),
    .INIT_41(256'h312D404F42403F303334160001F2EF07FFECF6FAF701FFEAEBF1E0E3E9D3CFE1),
    .INIT_42(256'h291B13262C293531273134242D2C151925130D181619292520271D1A2C2A1E2A),
    .INIT_43(256'hE4F6EBF1FEFC03130F090BFD011308FF090904171D0E0C0A04151A060A160D15),
    .INIT_44(256'hBAC1B7B2C6C9BFC8D1D3DDD9CAD8E4DFECFBEFF109090208FFF4FBF0DCDEDBCE),
    .INIT_45(256'h020D10020A190C00FEF3F4FFF3EBF4ECE6FE05F5FD08FF091203F9F3DEDEE1C9),
    .INIT_46(256'hF8F40D0DFD0B0F020B0AF3EAE6D7DBE3D5D5E6EBEE01FEF6030A090D05FC0B0D),
    .INIT_47(256'h3F323C4F4E5560585B68686562534D554935352919262F1E1D1C0F101604FF05),
    .INIT_48(256'hB4AFA4AFAEACC1C8BFC5C9C4CDD5C8CBD7D2DBF2F0EBFE0604151B121F292B38),
    .INIT_49(256'hF3F5E8EBF2E6E9FBFE010C04FD0808030A04F9050E040303F3F1F5E1D1C6B1A8),
    .INIT_4A(256'hCFD4CBC0CFD4C7C5C3B4B9C1B5B4B9B0B7C8C7C4D6DFE9FF04020A0C08110AF5),
    .INIT_4B(256'h18233125243131353E362A291E191905F0F4F9EEF6FBEBEDF9F1F3F2E0D9E4DA),
    .INIT_4C(256'h1009181D151F2117222F282A291C232C1A0F1506FF10120912191925291D1E23),
    .INIT_4D(256'hEEDCDCE8E2EA0001FB090A0C18170A0E0C030E140406100E13170C081211131D),
    .INIT_4E(256'hE3D5C5CCC5ACB3BFBBC0CAC5C9D5D3D6DDD1D2E9EBE4F1F1EEFF07FBF9F5E7EC),
    .INIT_4F(256'h0101F7FA0C04FE02FFFD0501F5F4EFE8F4F3E3E7EDE6F205FFFB0704FE04F5E2),
    .INIT_50(256'h091008FB0304FC061103000AFDF7FBEADCE4DDD6E3DED5E8F6F0F6FCF6FE0A03),
    .INIT_51(256'h22283C3C3D4844445D675D62625D64695C544939393B28212621212B22161810),
    .INIT_52(256'hD9C0BBB4AAB2B8AEB4C0BFC5D4CDCBD6D5D5DCD9D1E0E7E5F2FCF60215151C29),
    .INIT_53(256'h170E0703F6EFF5F2F1FBFBF4040E0A0D0D0209150A0609FDFC0D06F8F9ECDFE2),
    .INIT_54(256'hEDE2D6DDE0D0CED0C2C8D4C7BFC5C0BDC9C5B8C4C7C3D1DBD8EAFE000B160E0E),
    .INIT_55(256'h1A221A1420201C2829222D342F2C281B1A1A0C0905F4F0FBF9F6F9F0EDFBF9EE),
    .INIT_56(256'h0A151A141615090F1D1A1A231C1E2B271C1E170B100AF6F9FCF80411080D1B18),
    .INIT_57(256'hF6EEEEE6E4EFE8DEECF6F5020A040F181417180A0B160E0910060111140C1313),
    .INIT_58(256'h0F02FEF2DDD9DAC8C1C7BCBBCCD0CED7D4D0DFE2DCE3E3DBE6F3ECEEF6F4F9FF),
    .INIT_59(256'hFEFAFA0400FAFEFCF80305FAFC00FC0103F9F7FBF5F7FAEFEBFB00000C0C040C),
    .INIT_5A(256'h1A190B080A00FFFCEFEFFCF8F4FAF4ECF2F3E8E7DFD2DBE0D4DAE2DCE2F7F7F7),
    .INIT_5B(256'h0D1E26283231313F46404D55515D68625E635A5958453635281C242013191E1A),
    .INIT_5C(256'hF5F1EFE1DAD6C4BCC3BCBAC4C1BFCED7D7DDDFD9DFE4E1E3E5DCE2F2F4F90504),
    .INIT_5D(256'h151218150A0E0C0203FDF3F90502060F0D111D19171B15101A15080C0B020808),
    .INIT_5E(256'hF8F2F5F6ECE7E5DBD7DBD1C5CBCCC9CECDC3CACFCBCFCFC2CAD8D8E1EFF1F90D),
    .INIT_5F(256'h1512101E231D2220141D271E23271F202A242225160D120D0303FCF3F7FBF5F6),
    .INIT_60(256'h131C1A1C221C1C231D171D1D1A252924292A272B291A1712060403F6F503060A),
    .INIT_61(256'hF1F7F9F8FCF5E8EFF2EDF0F4EDF302080C17151623201D21190F17190D10160E),
    .INIT_62(256'h080B0C050200F4E8E6D8CBCBC7BEC5C8C7CED4D2DAE1DDE5EBE3E1EDEAEBF5F5),
    .INIT_63(256'hE7E6F2F7F3FBFCF7FFFEF2F2FAF6F6FEF6F3FD010102FAF3F7F8F2F9FBF4FA07),
    .INIT_64(256'h221B181F1D1A190C070801F8F8F4EDEEF0ECEAECEBE9E6DFDFE1D9D6DEDAD7E0),
    .INIT_65(256'hFC0205131E253136343D42434B5553556064666D686061594D4B3E2724282120),
    .INIT_66(256'h030701FEFFF0E4E0DDD7D5C9BCC2C6C2CBD1CED7E3E2E5EAE7E6ECE8E7EFF0F2),
    .INIT_67(256'hE9F701020D130D0C0C050607F8F5FEFF010A0D0A1316191C1D14171611131507),
    .INIT_68(256'hF9F8FDF8F3F4F5F1F0E8DDD9D7D1D0CFC6C3C9C9CED2CCCDD2D0D0D6D2D5E3E9),
    .INIT_69(256'hFDF800080A1115141B1F19181D16171E1813181A18211E1415150C0F0AFEFAFC),
    .INIT_6A(256'h1C1610161A1E26252324231F23221A1A2121242B262524211F190C0200F9F7FC),
    .INIT_6B(256'hEAEEECF4F6F5F6F7F4F6F6F1F1F6F3F2FAFF000D15161C212126271D1D1D1416),
    .INIT_6C(256'hFB0204070C0C0602FEFAF6EDE1D8D1CBCDCFCBCAD1D4D8DFDEDFE3E0E3EBE9E4),
    .INIT_6D(256'hD8E1E2DFE3E9ECF4F7F4F9F8F2F6FAF2EEF9F9F4FA00000708050401FBFF03FC),
    .INIT_6E(256'h1C191F1D161918161917100D04FDFEFBEDE6E7E3E3E6E5E5E1DEE3E5DDDBDCDB),
    .INIT_6F(256'hEDE8F0F8FB0210191F292E373D3C3E49494B555A595D6263625C524C45372F2B),
    .INIT_70(256'h110B070906FEFCFCF6EEE7E1DFD6CECDC8BFC2CCCDCCD2D9DFE6E6E7E6E3E4EC),
    .INIT_71(256'hD7DBDDE9F6F7FB02060B0F0A080803FF0200FB0308090C1517181A1A1A181210),
    .INIT_72(256'h0406FEF9FBFBF4F5F4F1EFEAE5E1D8D0CCCBC4C2C3C1C1C8CDCECECCCFD5D3D2),
    .INIT_73(256'hF7F7FAF7F4FC01070F141619191D201C16171511141713141A1B191815121109),
    .INIT_74(256'h211B1D1C1B1B1E1E2227292B292628282121231E1F2426232525232018100A00),
    .INIT_75(256'hE2E1E2E5E4E8F1F2F4F7F5F6F9F9F6F7F3F0F6FBFAFF060F1621252626272829),
    .INIT_76(256'h0700FF050401020809090603FBF4F1EBE1D4CECECCC9CBCED1D5DADDDEDDDFE3),
    .INIT_77(256'hE0DED8DDE0E0E0E5EAEEF4F6F8F8F5F7FAF6F0F4F7F2F7FC010306090C0D0B06),
    .INIT_78(256'h3C362C23211D15181D1A1B1A1617140C0700F6F0EFE7DEDFE3E3E2E0E1E2E2E0),
    .INIT_79(256'hEAECEDEBEEF4F4F60411171F262F363B3F4342434B5253545B5D60635E585046),
    .INIT_7A(256'h1912110B050607FEFBFDFAF7F3EFE8E1D8D5D3CBC5C6C5C4CAD2D7DAE2E8ECED),
    .INIT_7B(256'hD6D8DADDDDE0E6ECF1FA0102060B0B0806020001FCFD00FF000A0E0E1216191A),
    .INIT_7C(256'h100D0B0A04FEFBFBF5F4FBF9F2F3F0EBE6E0D9D2CBC7C8C4C0C3C9CDCFD4D9D7),
    .INIT_7D(256'h130D05FDF9F2F1F4F7F901080D13191B1B1A1B18150E0C0F0C0A0E100F111714),
    .INIT_7E(256'h2B2B2A2924201D1C1F1E1F2327292E33312C292928252021211C212622211F18),
    .INIT_7F(256'hE5E3E0E1E2E2E1E0E4E7E7ECF5F4F5F8F9F8F9F6F6F9F6F9000206101A1D2329),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[22] ,
    \douta[23] ,
    clka,
    addra);
  output [7:0]\douta[22] ;
  output [0:0]\douta[23] ;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[22] ;
  wire [0:0]\douta[23] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h01FE0000003FFFFFFFFE0320003FFFFFFFE00000000007FFFFFFFFF80001FFFF),
    .INITP_01(256'hFFFFF800000FFFFFFFFE00000000007FFFFFFFFF8000DFFFFFFFFFE000000000),
    .INITP_02(256'hFFFFC00000000007FFFFFFFFF00006FFFFFFFFCE0000000000FFE000000FFFFF),
    .INITP_03(256'hFFFFFFFFFFC001FFFFFFFFFE00000000001FFF0006007FFFFFFFFF4000007FFF),
    .INITP_04(256'hFFFFFFFFC00000000007FFF800C007FFFFFFFFFE000003FFFFFFF80000000000),
    .INITP_05(256'h00003FFF0002007FFFFFFFFFC000007FFFFFF000000000001FFFFFFFFFF8007F),
    .INITP_06(256'hFFFFFFFFFA000007FFFFF0000000000000FFFFFFFFFF8001FFFFFFFFF0000000),
    .INITP_07(256'h000000000000000000000000000000000001FFFFFE00000000000FFFF800F807),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0E0F0F0C0809090505060503060902FEFAF5EEE7DED9D0CBCDD1CFCCD2D7D9E1),
    .INIT_01(256'hDADCDDDEDEDDDBD8D7DDE2E3E4ECEFF0F5F6F4F2F1EFEEEDEDF1F5F6FC04070A),
    .INIT_02(256'h524E4A40362E282118141914131416171617110A03F8F4EEE2E0DCD7D6DDDDD9),
    .INIT_03(256'hE0E8F1F1F0EFEFF4F8F4FB01050C1E262A32383C43454748494B515453565C58),
    .INIT_04(256'h1714181817150F0B0B03FFFEFCF6F6F8F1EAE9E3DDD8D3CECAC5C6CECECED8DE),
    .INIT_05(256'hD4D3D5DADBDFE3E2E2E5E3E8F4F8F9010202090C0700FEFD0101FE0306040A15),
    .INIT_06(256'h0C0E0C1314110D080704FFFAFDFDF6F8FAF4F0F1EBE1D8D1CECCC3C1C4C2C2CD),
    .INIT_07(256'h1D1B12100F0901F8F5F4F5F3F6FCFE020E17191B1D1A181817130A04060C0D0B),
    .INIT_08(256'h1523272B2F2E2C2B2B2826201D212724282E2F2E32302D2D2A27241F1A20201D),
    .INIT_09(256'hD0D4DFE1DFE2E1DFE1E2E1E3DFE1EAEFEEF3F5F4F9FFFFFDFBF9FE0003081110),
    .INIT_0A(256'hFF03090A0D0E1515130E080907050704FEFC00FCF8F7EDE4E0DBD6D4D3CFD0D4),
    .INIT_0B(256'hDBD5D6DADADADEDEDEDEDADBDDDFE0E7E8E7EEF7F7F6F7F3F1F3F4F0EFECF0F9),
    .INIT_0C(256'h524E4B4D4D463F372D29221E1A1710131714161B1814120D04FFF4EBE7DFD9DC),
    .INIT_0D(256'hD2D9DAE1EBEDEEF2F7F6F9F9F9FDFF030C151C272E33394145464845464A4D4E),
    .INIT_0E(256'h00080D0E1415121313130F06FEFFFDF8FBF9F0EEF3F0EBE8E3DDD8D2D1D0D1CF),
    .INIT_0F(256'hC0C7CACBD1D9DDDCE3E7E7E8E7E9ECEEEEF7FBF9FF0707050605020000030503),
    .INIT_10(256'h0302060500060D0C0C0D0703FEFEFEFAF3F2F4F3F2F5EEE6E4E1DAD4CBC4C5C3),
    .INIT_11(256'h1F171417130D0F07FCFAF9F5F1ECEDF1F2F2FD05070F1617161614120E060504),
    .INIT_12(256'h040509131A1D262D2B2C2E2E2E2823232322242D2B282E343232332A26252121),
    .INIT_13(256'hD7D5D3D6DEDBD9DEE3E3E2E4E1DFE0E3E4E7E4EAF1F2F5FDFFFD0101FFFCFF01),
    .INIT_14(256'hF0F4F4F90009080E1718161817130E0D0D0B020002FFFD00FDF2EEECE8E4DED6),
    .INIT_15(256'hE2E0DFD4D0D4D4D5DADCD9DBDDDEDFDEDCE1E3E4EBF2F1F3F8FBF9F8F9F5F1F1),
    .INIT_16(256'h47464848464849433E3F362F28241E181410100F0F14161012150E0804FDF3E9),
    .INIT_17(256'hD7D1D0D2D5D8E2E8E7EEF5F6FAFFFCFAFBFF070C0F1521272E3A3E3E43464849),
    .INIT_18(256'h0303020609060A11101014120E0C0A0903FDFAFCF5F1F3F0EDEFEEE9E2DFDCD9),
    .INIT_19(256'hCDC5C1C3C6C4C4CFD2D5DFE5E3E5E6E9EAECEBEDF0F0F4FE03FE050706080807),
    .INIT_1A(256'h0D09040101FFFA01070705090B06060501FEFAF8FBF6F0F2F6EFEAEAE4DFDAD5),
    .INIT_1B(256'h2923201A16140F090A0B01FBF8F3EEEFEBE9E6E9EEF6F7FD060A0F141613100E),
    .INIT_1C(256'h02030100040C12151A25282D333435332F2C2D29262A29262D33303034322E2C),
    .INIT_1D(256'hE5E1DDDBD4D3D5D5D3D8DAD7DAE0DEDDDCDADDDFE0E1E2E2E7F3F6F7F8FEFE01),
    .INIT_1E(256'hEFECEBEDECEDEEF5F7FE090D0C13151313130F0B040100FEF9F8FBF4F1F3EEE8),
    .INIT_1F(256'hFEF9F1E8E2DAD4D2D0CDD1D4D2D5D6D7D7D6D9D8D8D8DDE2E4E6ECECECF0F6F3),
    .INIT_20(256'h404046484645404142413C3C37303330271E181514100D0E0E0C1114100B0B06),
    .INIT_21(256'hECE4E1DEDBDAD8D5DBE0E1E7EEEFF3FCFDFBFBFDFF02060812181C2632343A40),
    .INIT_22(256'h0809050707040908090B0A0B10151313120C09090401FAF4F5F6F3F0F2F0EDEE),
    .INIT_23(256'hE3DED6D0CFCAC6C3C0C6CDCDD3DBDDE0E6E9E7E9E9E9E8E9E9EEF2F3F8FCFA01),
    .INIT_24(256'h0E12100B0B080403FDFB000001050804070C080302FCFBFAF8F6F7F1EDF1EEE6),
    .INIT_25(256'h2B2D2F2925201B16140D090901FBFFFAF2F3F3ECEBEBE8EAEFF1F7FFFE061111),
    .INIT_26(256'hFEFC0408040407090D10141B1E212933323334322C2F2F2D2A26292D2D2D3130),
    .INIT_27(256'hF3EDEBEAE5DFDEDCDAD6D2D3D8D6D6DCDAD7DBDFDCDADCDBDDDFE0E7ECEFF3FE),
    .INIT_28(256'hF0F1EFF0F0EAE9EBECEEEFF1FB01020D1310101617110C0700FFFAF9F8F4ECF1),
    .INIT_29(256'h0D0A01FEFEF6EFE9E1D9D7D0CFD2CECCD4D8D5D7DAD7D5D9D9DBDDDDE2E9E7EB),
    .INIT_2A(256'h2D373B3B4145424142413E3A383837312E312A24221F1612100E0D09070C0C0B),
    .INIT_2B(256'hF0F2F6F0EEECE7E0E0E0E2E4E0E5EFF1F5FDFFFC0004020407060A11131D2428),
    .INIT_2C(256'hF5F70103010409060708080B0B080C110E0F15100A0C0C0602FFFAF8F6F4F9F6),
    .INIT_2D(256'hF2EDEBECE2D8D7D3CDC9C4C1C5C7CAD4D6D6DEE7E7E9EAE8E7E7E7E8EBE9EFF4),
    .INIT_2E(256'h06090811141110110D0807010101FD010500020A0904060500FEFDFAF9F6F1F3),
    .INIT_2F(256'h3334312F32302A2B271E1A16131108020301FAFAFAF2ECF1EEEDEDEDECF4F9FD),
    .INIT_30(256'hE8F0F7F80005010308090B0D0E12181B212A2C2E393932333632312E2C2D2E2E),
    .INIT_31(256'hF8F7F8F5F3F7F2EBEBE8E4E2DFDADDDADBDFDEDBDCE0DEDDDFDEDBDADCE0E7E5),
    .INIT_32(256'hE1E3EBEDEBEEF0ECEDEEEDE8EBEDF2F8FA000B0F11191A1617160E0B070301FE),
    .INIT_33(256'h0F0D0E130C0A0A04FEFDF7EAE2DCD9D9D6D1D3D6D3D7DDD8D4DADBD8DADCDDE0),
    .INIT_34(256'h1E21232D33343A433E3C42403D3D39373632303330282B29211E1D1712110F10),
    .INIT_35(256'hFBFCF9F8FEFBF6FAF9F1F1EEEAEBEDEBEFF1F2FA0001020908080F0E0D0F1317),
    .INIT_36(256'hEDF1F0F2FB00FF030A0A0A0E0D090A0A0D0E0F0D12120F13120A080903FFFFFA),
    .INIT_37(256'hF6F5F5F1EEF1ECE7E6E1D6D5D3CBC8CBC9CED4D6DDE5E7E8F3F3EDEFF1ECEEEF),
    .INIT_38(256'hEEF0F8FFFF040A0B0D1511080B090001FEFAFAFCFF0304000207020100FCF8F8),
    .INIT_39(256'h37323335343536352E302F26231E16110C060400FDFBFCF8F2F6F2EDEEEFEBEC),
    .INIT_3A(256'hDEE3E4E8EFF2FB0304060F0E0E121515161B1F272A2D343A393D403C37393935),
    .INIT_3B(256'h000000000000000000000000000000E0DDDDD8D9DCDADBE0DEDBE1E1DCDCDFDC),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[22] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[23] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra[12]),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized5
   (\douta[31] ,
    ena_array,
    clka,
    addra);
  output [7:0]\douta[31] ;
  output [0:0]ena_array;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[31] ;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000FF0000FF010000000001000000000000000000000001FF0000000100FF),
    .INIT_01(256'h00FE00FE0000FF000101000100FF01000001FF00000000FF0000000000000000),
    .INIT_02(256'hFFFE01FC00FCFC03FC02FFFD040000FFFEFDFFFFFD00FFFF03FE0001FE02FFFF),
    .INIT_03(256'h04F80502FF06F9FF03FD01FFFBFC02FE0305F80302FE06FEFD0500010401FE00),
    .INIT_04(256'h08F7FBF4FF07FF0CFDFE07FF0A0CF706FDF90DF30305FB080900FE03FA06FCFA),
    .INIT_05(256'hE9F9FC0410F706FF10FFFC03F30C01F905F2E80A07FB0DFCF805FF0A04FDFD02),
    .INIT_06(256'h0713F1FFF9FE06050103030B0AFFFB0BF20214ED11FB0415F901FDF70305F6FF),
    .INIT_07(256'h03172F112203250A1BFF1106ED10FEF604F5F60CF0FCF3FEFA0607FD19F41B0B),
    .INIT_08(256'h2837A29AA73A855C97A423EFE33A666C5610B7EBB5550A7BFB2ADD9B36997702),
    .INIT_09(256'h2C8D33007812C92AB2BA2E82E21AE8519F3D3DBA20030B1CD23F569776A7E250),
    .INIT_0A(256'h6000E6F158640DF523BE5132A2C3941242A1A5DEBB88F9E13ED32D16201111FE),
    .INIT_0B(256'h6F2FEC00744CA47FB8769FD3F7E4EC1259DF097E8E54CFE0B18AD0C825EF06C6),
    .INIT_0C(256'hC5467C6A6456E8FCB112F060E7D17784D05B579458B6BCB69D412E7BA272F95C),
    .INIT_0D(256'h652B3D45E2F441B7996C908749FE4BF99DA42712ED8A475C67073D030873C69E),
    .INIT_0E(256'h447F8215429C250E0A31D9BAC1CE262F9F3265469F5174757F41D00587FA6B93),
    .INIT_0F(256'hE9C3D6FE02FC4048390B79D98B107630FE8C8B5801E92AEDAD3CA9B2B525C3B3),
    .INIT_10(256'h36DAAA7D09875E75A2C00B1CCE608DBA299EB0903AD5C98771EF305CD027F82F),
    .INIT_11(256'h5FAA83AC1AD7C59C82CDB585A3CDAA4E14FBAA9C7968DB9ECF302BFC35956F26),
    .INIT_12(256'h9177F42D823FBD0F8DBF39A2D44576D5F26E9D78F9A6D226E14CE3B5645AFD54),
    .INIT_13(256'h93D0D9FE7BCE11CD05C486768E15AD99A733FB554ED2CBE83629ADC3168E4D4C),
    .INIT_14(256'hDDA967EA77494B42FC569A6584E036D257C5E63BFC0839B36BF9821D6C34D0FC),
    .INIT_15(256'h1C2E9E5CBC80C1D4EADAB479C6CE5B74CA653819458AF83C1474985C81D63A1D),
    .INIT_16(256'h9E94C977E3EF72824551BDDDFE54587F0F4286A6E84BEF725789F3083DC5E359),
    .INIT_17(256'h5B9FDAE260B1DB57783C70A30CF79E1DDCD9F3010BD8C17A0233532B3CBB10A2),
    .INIT_18(256'hCD281271F87F189C0899DBDBD6D857B12149BC8DAD6618A3416D3E0541C96227),
    .INIT_19(256'h09D3B55A268BF84E0A1295C739594EE7BA2A5681CA652FEF73926A67EF770805),
    .INIT_1A(256'hF73795DE1BCCF1DA4C30CF6349639E552A65DB458BF53C11BA92026232D11C32),
    .INIT_1B(256'h0E44BE42669227A11583CD3419F938B7DE4FF9B86569930DB271090AC3B473C5),
    .INIT_1C(256'h0717F1869ADC6FF901E0813A8D8B443472484DB20879C710ECD8E5A1A8A48DFA),
    .INIT_1D(256'h6E1CBD3A5211883D780F2E934D0B8647A020A9A13AD377449409C16C491CF64B),
    .INIT_1E(256'h59014871FA9BE273D3EFA3DED5B56732AD2A809C8C728A44A9793013E0FB5603),
    .INIT_1F(256'h34AB043930A0E268800EC94E45164761434A2E8CE70655EC351EE9717C9CB978),
    .INIT_20(256'h0A8763BBED41D432FBFA718B97192A58641F425546EEF3A41851A0B97B6407AE),
    .INIT_21(256'hA8D06F67E0F275A3B713A9DCB0A7FBFE47B000223EE56530C0A7D41F0F0CF549),
    .INIT_22(256'hE40245F6073C992AA06FE5FF0134AB80F221C82DDB156A072491546D7A55F9C7),
    .INIT_23(256'h9576FAC83F6705C55E35E0CCA11D0A51E0240A91F98A5B31E809E430CC716D09),
    .INIT_24(256'h704210E11923E59E3478FD815C3B2DD0BAE4E809B895A25A61C03D1DA6CFF78A),
    .INIT_25(256'h055897008B129CEE1C2222B9C89EF1F1374A86D9A0382BD4386AD0AAC4D072B2),
    .INIT_26(256'hFF7DABDC1C8D0FEF01C12624111F9A435DB5E5EE5D3D005F3240E006D3647A1F),
    .INIT_27(256'hD731B698C14033D3DE0CE879D68655F3AD95305A8F9BB101E293103AC8933E14),
    .INIT_28(256'h87335F1D14A76620F193AAC2E963AC40221838F8DCC0A6B61E82E9FB1352C435),
    .INIT_29(256'hCC2AC6C232C0E8E6AF6A4137E52C06BF26D1BF47D28D372CBBFB39CD424817D1),
    .INIT_2A(256'h4405CA47DC8FDC23749F37C3F83042C053EBD555797A7C2ECEF0B1BCD91EB222),
    .INIT_2B(256'h280AEF092A0336CD600CE715B209A520678A5934A48BFB9866F0B17D8CB6EE71),
    .INIT_2C(256'h85BAC9F5D7D18CFE5B9F209D3CFEB4F02442501B544F5B9624182C488FE4DDFF),
    .INIT_2D(256'hE9CBDDEF71F47133D6A95786CB66B48E5748FE4C0420B1CDBCCD813D9724D512),
    .INIT_2E(256'h3156F17C8B6B3C21B3DEEFC803159F0871CE30849EE277C1690176780376D05D),
    .INIT_2F(256'h3F00A9586B9D38B5579C278A66DB822C60072879FD7EB585ABB693BF15E46BBD),
    .INIT_30(256'h290D52871244B7B8D5EA7296B4D60B685A0BAE59615B302FB9B126F74F3CFF0E),
    .INIT_31(256'h61AFF11890532965F9E1F24CDCCBB89090DD8583DF6197F2359DB749010F4042),
    .INIT_32(256'hE606D200EDC771D9249E38D0695561F00C2DA7E78E5D7CBC497DE147C7DE5591),
    .INIT_33(256'hA7E6B421AA824C1FA2B7544DF7423FE984052F4838E6AE16C2CB040F8230D213),
    .INIT_34(256'hB4250A99D3445455C3BA7AE0866F24F1A859D431BD50FCEF6423461BE037E9F6),
    .INIT_35(256'h695E55147A7919BE06F69D7C00D40A13A31F74AF06CB7D31DD89308B609D2455),
    .INIT_36(256'h5FC0CE4708C99A4681699DF6F89A30EFC8B6B1073A91FD64831B2C111260C617),
    .INIT_37(256'hF9D48241F45721205FD3FD16AF425293C3DE65B75CCD0EBCB4E4998784651115),
    .INIT_38(256'h6CDC03CFB7CA8351D0252C4BCF853D6A8EFB518302714DB3AFFA926E98F9D02E),
    .INIT_39(256'h58914BDB3795658151AE0C478BA93A24E002FA154527BA6C3225BFD52A0D0CA7),
    .INIT_3A(256'hB45D96D91DFCA41A174E48E3366427A19D9E305B1E34141101CC202A892DC7E3),
    .INIT_3B(256'hF5E5DE9C80A9B2AB3C27137C8328DC98C61494E1A7B6780550E522E5600DB09B),
    .INIT_3C(256'h9A97C549990E1C8BA94CDC69EBE004AD6300C6684035060E768E54117B41248C),
    .INIT_3D(256'hC951B0FCAAD473C9173C9666F34AFAAEC7412D10C5B91AC0B22753CA153E9FC1),
    .INIT_3E(256'h1E344BA07D9E8EA42031B7BA7DEEC6865E5134CADE2448582F39BB47E68A926A),
    .INIT_3F(256'h45A4196C5D1A1927F98C595D41279E1A7DA4875A72E80AB3D2B02BDD24C2AB8D),
    .INIT_40(256'h1D216A61BFFC405514D5B3CA9FBBD6B4FAF0EEC63872550333A871A66E0781F8),
    .INIT_41(256'h85B140234C4A8769520F0E1BCB54C26EB4082EFA7AA6EF47E49DD9A30E5A3A16),
    .INIT_42(256'h547D0F6401D238710AAA25F99C8D9EA5927F026923639FC370901D0A93CCEB56),
    .INIT_43(256'h6420A87ACE3DCDFD44AA8EC92F436716C3D6B8267C550218D9A716ED466CC03C),
    .INIT_44(256'hB19123371EE67522E425CEF6FBDDCDAB47A242EEF382A9D4B4A5F8830D2E3194),
    .INIT_45(256'hE8D1588C62BA1D1A89910E4E5788564C10035228FB34D85962B9A57DC810D06F),
    .INIT_46(256'h0BDEC0262203EB89BEBAE1B04E916148326DE300790947CBBF98DEDF7F1D2C79),
    .INIT_47(256'h16A9298799CE94EC3E89831332AF05E2F7F2954773A0BE913AC83F62E5C150A9),
    .INIT_48(256'hB85A28CDE894B18EDD70C714D7A6555A6E1D828CA0A89BCD5E7C137453588EA8),
    .INIT_49(256'h0C548CAE617A143905EDF7BD77DB9C2166FB72086445694C4E710EE0FD742C8C),
    .INIT_4A(256'h4EEBDC0ACF141CBE94C7F29DF7210817D9E179EBCDE34CC6A652E334780052DC),
    .INIT_4B(256'hB2B632F260A7E1BDC23699CB3A02364E03E85BBADF8C50EA67F40C8104F2AE58),
    .INIT_4C(256'h5AD05D17FF6377E588644C53B3112C88C79F889808165AFE56511A589788F3A6),
    .INIT_4D(256'hBDB5CEA7B51BE4396305E9669B7B5FA2E34253895C537B1133B859D4422FCB5D),
    .INIT_4E(256'h62FAC7226C634C7A55F65346382C803B5E4F808710D859F7505C6496E3677EA8),
    .INIT_4F(256'hA67914E915E153FFD82E8FBF3049F6BCCC9A0496DD5A19944095EE1AF38CDFBB),
    .INIT_50(256'hE861322C764306FAA5BDA514D84DC618930FD69550B1C8587137F5CA4A8B10FF),
    .INIT_51(256'h198A928FA9254EC3AD09F6C7A10BF159137587147A211CD6E44A5D869BF14F7E),
    .INIT_52(256'h5E84B0D9F7F2D68017DC42EE20E2E56F9517F20FA54E9F32E8E9F7613FC0861E),
    .INIT_53(256'h3D5223D5B0788DCB9FD93CC03FACA5C9938AFB606E685742C593185A97325EF5),
    .INIT_54(256'h88A610A22F5F8775CC55CBF030E41EB7C411FB24471CA7C7C83D3226909DC591),
    .INIT_55(256'h1CC61623ADCFA6072C06F1A91CF89F973217A0368E90A6D1EA52FAC3D803D791),
    .INIT_56(256'hF9507C17496C3BAEFC84AA39D0C9ED86FC9D17DBB078942E8E1C85643192C968),
    .INIT_57(256'h3B908B59C0B808B8F76EFBD48D690B6A0D7CC1F4E47F071E17B89F452AD9D8CB),
    .INIT_58(256'hAE5B47EC2591E0CFD9587DC0424045435CB4204093BD6E674F547D53669A153C),
    .INIT_59(256'h4CDA98BAD113F38117E1FF7D87E1904EF692246EC96DA25988FD984066F1EAB7),
    .INIT_5A(256'hCC3890AE377E93F3C7710EF8D7F8E814A6E19D772D83C80CC72EBC336C42E55C),
    .INIT_5B(256'h38B50B1D17AE2AFE0CE6634E3719E92CAFAE83150F813FA90DD14F10C7B19C19),
    .INIT_5C(256'hBA48F4A288BFAFFC8A8CFDCBC94C45B350EC1620DFA644E7B393A66DC1E847D0),
    .INIT_5D(256'h1FE7E139E3D76BB3949A10D38025266D1F7E3DFA9B8346C022424F63CD99C119),
    .INIT_5E(256'h8EA5B3BD3301120D6D5E34F2D116578817E37ECA62DCD5F531BBE28CEF7131B4),
    .INIT_5F(256'hA962B7A213CFF80C3E8E36BA0FDBB8E7BCFA656DFACC248225AFE991C2BECE81),
    .INIT_60(256'h292B53C7907F108D6366FA9F4D38053B6641E3E27FBA0B35AA48AE89E53D3D67),
    .INIT_61(256'hDDA372DCCC8AC5C3F8C4F4E1E07F9D57F85B3F384D8537CDE24A60789B61585F),
    .INIT_62(256'h6065489301F42163897C48F1CADBC3C7B8C1B98434166B1AB672EC3EC4AFDFA8),
    .INIT_63(256'h10E47D6E95065BC912AE122B2A12B072BA51653B2A918E38D95D611191488EB1),
    .INIT_64(256'h6B581183BD4869E64229E730AEE15397F10999690BB76B395CCF05217A201B72),
    .INIT_65(256'hFEACD9B1A0955EB0E215F77517BA4D4BA3819CDC6B063D7A658C0EFD955CF640),
    .INIT_66(256'h515DC80B12E761F61411A9DEB96533B54FBBE984316CDA2C03E1D96A6B539093),
    .INIT_67(256'hCA9C4183E1AC9AC0F3F951246DDC246F0906264363DA12E73DAF5070757701D0),
    .INIT_68(256'hA4004795B0953F954B638DA83A39099606CD43B5081496EEC07F9A88E72B6840),
    .INIT_69(256'h1ABD495496E8C31D5A24A6F11C91AF07579EF847C17B83441C2ED80FEF97B9FB),
    .INIT_6A(256'hB8E5858BAC9559D667BBDCE2B76F2BF7A7436910920536F739CBB7EB30963712),
    .INIT_6B(256'h73A5F011EB9FADD3202AE5C6854BDBCBE62BD8C1C2E5C494F4F558B86148EE72),
    .INIT_6C(256'hEC592F3833244E046E8E79A62F64E4D19E8C652199B5C1822EFAF5C3AD85BB4F),
    .INIT_6D(256'h391C6BFFFAF1FD2EF2D53ED2A356B35DC306A4F2FC46672216F6D2A6C96CB7DD),
    .INIT_6E(256'hACB09A534A0D374EB8D4AAA264B98B97A95DA5E5DC9AFC1A995F684DED1FE482),
    .INIT_6F(256'h8E4F39A272D6B31FC4498AF4E552E80B8E2FB24681D8323906B698577324A931),
    .INIT_70(256'hD99B038E8978844C664E357E48FC581918FCDC421F63CC999C80EB34D3EB30B3),
    .INIT_71(256'hA00E1AA30FFF7C086CC34A5516AD7156AC46C1096566EDC9422ABD7FC4A65C90),
    .INIT_72(256'h851B7A24F6D6FBD4D6ECC0CE8A7BE22ABEAEAE3A6878E084FD75578EF17FF833),
    .INIT_73(256'h6CE53810ED6B7C04FEB64C52D05D578BEDE7501B45F1E58150317E2E4C80A487),
    .INIT_74(256'h86BC57C131AC2B823E82AD21839C350CFC0811673D5F089442D8901ADCB46D3C),
    .INIT_75(256'hE5796DFA7A4E2D570411B306839ED065747496F6AA4178322128CC71E3C56C00),
    .INIT_76(256'h567C7D95FFEAFD50AF427422F8EB324A143CF8E86DA4560A3D73009E39F6E5F0),
    .INIT_77(256'h8106F971A4160B6739BC307A3731AF4C1738D9531C4304ED45CF74270BF005D3),
    .INIT_78(256'hFCA103786F07E754CFFE6E43E5A858638CFAC51976F69EC9153B3ECB9D61ABEA),
    .INIT_79(256'h0C0BA95649B9235734294D06251D1C8E342E57BCF45F3D6338D7140AD9B16E26),
    .INIT_7A(256'h2BEB908075722A63C4818C6BFEC384F2FED244679F10A923D3F663F59E2B0B15),
    .INIT_7B(256'h9832A3964B0DE326360CC8602D5554FCA25BF18598F7530E7FCEC08AA5913B13),
    .INIT_7C(256'hAE855E38F563FB1B8AE79F56A92306B97F51691F7C610AE184CFED0C3E7D33AE),
    .INIT_7D(256'hB39A37E096936AD1E82C1F48471FB9F16F8B4F92A1719A4224506FE4C9E10374),
    .INIT_7E(256'h97ACEAE0AE8FB2CAC0002EA38FF6E9BD2B27DC7F8A9C8F7205E17C21F2224E95),
    .INIT_7F(256'h1F81EFD63BF5FBA6C296AAE940087E788C55265DF583929A3EDE53CE58FBD3C6),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[31] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[31] ,
    clka,
    addra);
  output [7:0]\douta[31] ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[31] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5DB44B268CE4610C54C61B33E00E12261F4E6BCFAE22CCD98E6717F58936F335),
    .INIT_01(256'hC4A39CB2C287CE90AC8ABF3E5E40F5B59FA1975A64AED6EE88BD12067A03792F),
    .INIT_02(256'h86B440F6DE7B348821E638DF5DF2FD76A247DEA619605A18E220D34164DDBCD1),
    .INIT_03(256'h757257B73E6B3FC89DE328E807CD0E401A3D7BAA9E9127DBBE1D93628170319B),
    .INIT_04(256'h1EF266ADA83955C635A00DA2140B6F048BAD530D667E7C7185770123E3E03057),
    .INIT_05(256'h97C89A42CC151852F3319FD97E38921393162237D9EE28DD2410143E188C9F60),
    .INIT_06(256'hF164DF328DC8977F3D688415706A9C32020E8F3316FCA2684455EC145ACE6590),
    .INIT_07(256'h040F2F1EA60F35A80327C8F184E01C26C8EEAAEB924DA989150FD5C3E5DE8B61),
    .INIT_08(256'hD316F13F6A5117C69BC2656B1BD9557B348BD3AB64E1B8421EB0601FCD2D7110),
    .INIT_09(256'hAAFF8F32B1198C28CE89DF09BCA183A8573DBF90BA4823AD95F50A7D42BF061A),
    .INIT_0A(256'h328D43E262FA13024627F1C6826353B98FBF0B94FB64C29558B70A2E0144F629),
    .INIT_0B(256'h569286EA7AB5B5997A424222CAA7D8976DBA3547CEBA325D285C00D6C1886CB6),
    .INIT_0C(256'h6F9E0244C033C87ECF2BCC3592CEE52A5099533B163533C1B73559BCD3E7F03F),
    .INIT_0D(256'h85D9A7C292D8A7D608795D7875565A298AB71996EF9418438DF9407D9FEC6BF2),
    .INIT_0E(256'hF77425C8F4EB62339E2291EEDF8B714F4D4D7155071A67A5FE5A67D778DE333A),
    .INIT_0F(256'h3565CE8277D546F2D2220729AC4DC71BCD035BF966B88DEE463B32598DCF7A0D),
    .INIT_10(256'h2A743C33E5232D16325AFADBEB165835E827A2DD1A0A46A90C12C86EAD140880),
    .INIT_11(256'h52A1E1E552EA45CAD8B299736C8599AA43E0B54E2889785E5BECF71806DE76AF),
    .INIT_12(256'hBEECB9D430C41B1DDF5058DF2F989834F511E49BF9D8D32A58AE9DF8482AFFFE),
    .INIT_13(256'h32C67DD00E4462E1CF1CA0234999730FE684DB3A8443C87356B31D8DA1F90BEB),
    .INIT_14(256'h7E15D71DA920B9171A03731A4C56961B352C852D4EF3B975D0E8AC514B5E30F8),
    .INIT_15(256'h656D1FA4CC7679A7D0BEB7025C0AB91A89158033BA205B2AF7EB85B9E6AADE5A),
    .INIT_16(256'h9359E3ADCBE1844AAA025F42C82A7DF526BBB8A0C1BA03CB5E3EB5B8780900FD),
    .INIT_17(256'h276947F92C61FC24AD17E7711A7F7C11C68D7FEA9FC478F47B17D898327468A9),
    .INIT_18(256'hD2081D77772B1C5035A68DC4AFDFB513A42B9F23C41536DFAD1E520443F337FF),
    .INIT_19(256'h2AC7220E8385A824BAF23842B6299E42CD2C09BCD98BC8D901E219CB28038C09),
    .INIT_1A(256'h05EC876EC1DFCF10D224268E3AA89FCA9B4E9E892C9DBEEB09ACB041033AAB31),
    .INIT_1B(256'h1BC2136E68DAC488A241474384E7D429923AAB29B26DF5001C950BACCEBC3F32),
    .INIT_1C(256'hE856DDF820147654908B624BF6EC248CBF8353B3D65DF6C2D7911734556A2105),
    .INIT_1D(256'hD0C6E0254446FB8697477DFB9A48943008981ACC077BEEE4F88DEE0CE28CC9A4),
    .INIT_1E(256'h923E740FC96ED064AF3BDFA67D0FE2DD9C542836E376543145BAC79B8D609F87),
    .INIT_1F(256'h430DB87A46D6684008BDA5749407DAA40DE36EADAB5068BF968E54F66DD116C6),
    .INIT_20(256'hA5FC7827A24D2C9FED27B76B2F93772280C3DBC65FC99D277266315426BCD7C1),
    .INIT_21(256'h304AB34D7B2200D1882B45AEE1E6A046EB19FFD543D66BFC3C2543EE27822FC1),
    .INIT_22(256'h6011BCCEAFE7256219F0F364C0EC493E7E40679775029DC8D9C6FEE4B3186AA4),
    .INIT_23(256'hF2EB0D7A9D1817C1DD9C75BC76B5EE3084141370F68DE823659B96A642AFED27),
    .INIT_24(256'hBA6C63D0BBEFDA1C232E02D8179E2B274E103DF91B9C095232215A9715357843),
    .INIT_25(256'h500E3FA94EB3B5D641CDC40A3B9E5AA7ADED73123CBB7F072167DB3FD7280043),
    .INIT_26(256'h2B75580B67D7D71C1A581D9ED364E4916898E407E2401605014403D68B358F19),
    .INIT_27(256'h9481723D0EC4849F84E857EF19149383D0FFFEAF016721DEB5B0357FD327EF0D),
    .INIT_28(256'hC16543AD1D89ED5F06639086278DEA3C960C06431025566F9FADDF8CDE43B859),
    .INIT_29(256'h91C6EB0165DA347061C92DB3DB40A876613027856866AF3198715091794CDB57),
    .INIT_2A(256'h25A7ED7B1C56097D3DA781DC66E9FE86943A9394C018394F55C3E47CF794BD40),
    .INIT_2B(256'h6C7222F75A855CD87CB7DD11999227941255D8A30820C8132B766F18E504C905),
    .INIT_2C(256'h1D9E4C5870A75092F98D3C415D558C9400AB6E9DC4B72032F0FB231D37D95864),
    .INIT_2D(256'h8C25F85F2C41908E3CA848DB8FCAD81950045D8E7A89D73363DCFDEC0F84386D),
    .INIT_2E(256'h8C8B1C13601E27EC6CC28EE95450F12737F9690CCAC8ADC91F698016F5215D6A),
    .INIT_2F(256'h523B19C79C5FF8590D6C3D417A1ED6640B106FF1BD0CB22BB071FE83D21C54E7),
    .INIT_30(256'h30D45572B5D8E1CD94B804983647CDEF581E70A524CD95D642D599DCB8F85263),
    .INIT_31(256'h30131325C59B195B4EF2C75267AD0AD7A0B2DEA46C7498FEF528DFED63990EE8),
    .INIT_32(256'hBC9CB0CD2131DEB471EE59D9DAFABCD8BCB7B6779E7459054F41F4528C51C2D7),
    .INIT_33(256'hE545AC65F51E6CF1502E73EAD19A6DB42A367A46DB89C393C50E70B7E406020F),
    .INIT_34(256'h31875152F2268E170F953026747C85048EFA99F32FA10984BF03253640C4F230),
    .INIT_35(256'h5E17B1F632A8BE98AFDF58CF858D36FA4591776DB631A58658B1526D0A95685D),
    .INIT_36(256'hC601C8526E6E58350B13391B1D4428B00BCC399F4F8C7800806617F2FC9E81D9),
    .INIT_37(256'h8AE1942C3485380804ACE47F5EAE9F3BB414807796ED62E3ADCCFCFD1F561B7B),
    .INIT_38(256'hC97C0C394B34BE34A05778E38827C8887D5CD59115954E3D737283546F6CAD78),
    .INIT_39(256'h15FA3B90331BDD83A93EE9CB4FA7957661A933E739DFF908B544A35301619639),
    .INIT_3A(256'h4D0C1DD2862343A53BAB74CF3CCBEE71E2896858CE8B66636821B029E1DB3BDA),
    .INIT_3B(256'h000000000000000000000000000000E7F572A2AD80A6E56E2B8F17A92A495790),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[31] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra[12]),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_4_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_4_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.51015 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_4.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_4.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "8000" *) (* C_READ_DEPTH_B = "8000" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "8000" *) (* C_WRITE_DEPTH_B = "8000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_4_blk_mem_gen_v8_3_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_4_blk_mem_gen_v8_3_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_3_synth" *) 
module blk_mem_gen_4_blk_mem_gen_v8_3_3_synth
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_4_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
