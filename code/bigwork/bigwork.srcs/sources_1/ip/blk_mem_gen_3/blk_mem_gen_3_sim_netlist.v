// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Jan 10 19:47:21 2024
// Host        : DELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/szlj/vivado_save/bigwork/bigwork.srcs/sources_1/ip/blk_mem_gen_3/blk_mem_gen_3_sim_netlist.v
// Design      : blk_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_3,blk_mem_gen_v8_3_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.898385 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_3.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6000" *) 
  (* C_READ_DEPTH_B = "6000" *) 
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
  (* C_WRITE_DEPTH_A = "6000" *) 
  (* C_WRITE_DEPTH_B = "6000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_3_blk_mem_gen_v8_3_3 U0
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
module blk_mem_gen_3_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [12:0]addra;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [8:0]ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_18 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
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
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;

  blk_mem_gen_3_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 (\ramloop[3].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 }),
        .addra(addra[12:11]),
        .clka(clka),
        .douta(douta),
        .ram_douta(ram_douta));
  blk_mem_gen_3_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[3].ram.r_n_9 ),
        .clka(clka),
        .ram_douta(ram_douta));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[1].ram.r_n_18 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 }),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[3].ram.r_n_9 ),
        .clka(clka),
        .\douta[16] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[17] (\ramloop[2].ram.r_n_8 ));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[3].ram.r_n_9 ),
        .addra(addra),
        .clka(clka),
        .\douta[25] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[26] (\ramloop[3].ram.r_n_8 ));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (\ramloop[1].ram.r_n_18 ),
        .clka(clka),
        .\douta[31] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .\addra[12] (\ramloop[3].ram.r_n_9 ),
        .clka(clka),
        .\douta[31] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 }));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_3_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    ram_douta,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 );
  output [31:0]douta;
  input [1:0]addra;
  input clka;
  input [15:0]DOADO;
  input [8:0]ram_douta;
  input [1:0]DOPADOP;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [13:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [8:0]ram_douta;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[0]),
        .O(douta[0]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[10]_INST_0 
       (.I0(DOADO[9]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .O(douta[10]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[11]_INST_0 
       (.I0(DOADO[10]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .O(douta[11]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[12]_INST_0 
       (.I0(DOADO[11]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .O(douta[12]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[13]_INST_0 
       (.I0(DOADO[12]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .O(douta[13]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[14]_INST_0 
       (.I0(DOADO[13]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .O(douta[14]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[15]_INST_0 
       (.I0(DOADO[14]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[16]_INST_0 
       (.I0(DOADO[15]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7]),
        .O(douta[16]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[17]_INST_0 
       (.I0(DOPADOP[1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[17]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[18]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [0]),
        .O(douta[18]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[19]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [1]),
        .O(douta[19]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[1]),
        .O(douta[1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[20]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [2]),
        .O(douta[20]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[21]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [3]),
        .O(douta[21]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[22]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [4]),
        .O(douta[22]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[23]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [5]),
        .O(douta[23]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[24]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [6]),
        .O(douta[24]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[25]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [7]),
        .O(douta[25]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[26]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [8]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ),
        .O(douta[26]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[27]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [9]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [0]),
        .O(douta[27]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[28]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [10]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [1]),
        .O(douta[28]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[29]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [11]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [2]),
        .O(douta[29]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[2]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[30]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [12]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [3]),
        .O(douta[30]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[31]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [13]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [4]),
        .O(douta[31]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[3]),
        .O(douta[3]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[4]),
        .O(douta[4]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[5]),
        .O(douta[5]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[6]),
        .O(douta[6]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[7]),
        .O(douta[7]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[8]_INST_0 
       (.I0(DOPADOP[0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(ram_douta[8]),
        .O(douta[8]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[9]_INST_0 
       (.I0(DOADO[8]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \addra[12] ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [8:0]ram_douta;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    addra);
  output [15:0]DOADO;
  output [1:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [12:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized1
   (\douta[16] ,
    \douta[17] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[16] ;
  output [0:0]\douta[17] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[16] (\douta[16] ),
        .\douta[17] (\douta[17] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized2
   (\douta[25] ,
    \douta[26] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    addra);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized3
   (\douta[31] ,
    clka,
    \addra[11] ,
    addra);
  output [13:0]\douta[31] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [13:0]\douta[31] ;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .\douta[31] (\douta[31] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized4
   (\douta[31] ,
    clka,
    \addra[12] ,
    addra);
  output [4:0]\douta[31] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [4:0]\douta[31] ;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[12] (\addra[12] ),
        .clka(clka),
        .\douta[31] (\douta[31] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \addra[12] ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [8:0]ram_douta;
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
    .INITP_00(256'h404091C9565040E020021088800001C1545207212C425895882769CFDA888748),
    .INITP_01(256'h5284D140222410244A00905111080391C50398427289940E624528845A28A14B),
    .INITP_02(256'hA84AA389B2868D01114144594346808894346288B694268241012084244A0090),
    .INITP_03(256'h9AA08F9080200452BFD7FAB1562AC54A2AD5047CA026A823E420400488424446),
    .INITP_04(256'h25CA026A823E5012C55E07F8A128210462000000010020040094D193C0897280),
    .INITP_05(256'h944A8804CA002A094AA04A3D557168A88B08CA4AF5ABFD7FAD56B55AC3528AAD),
    .INITP_06(256'hA247D30D128915555144809944AA8044A25454440A8904C0144026514C825009),
    .INITP_07(256'h1257240D49929ABAE44E41528908B39ABAE8834913902C7118BD2B5A4274EBD3),
    .INITP_08(256'h89C9013884072390A67270D111328A0A028E10044E69028140004805146802B5),
    .INITP_09(256'h24000FC0A551C5751C5754A2110814A1094A1094A50916915201225140480843),
    .INITP_0A(256'h000010E2094CC471541040008C562512994D200057D40844D46A38AC4A251089),
    .INITP_0B(256'h191000A299A8E2B1581002253351C562B12894FC1645229040C070180C88523E),
    .INITP_0C(256'h4C20C214954C20CA5F1C7FC20C214914C20CA54154D28CA54154D294A00AA002),
    .INITP_0D(256'h21A252021F9E411098A4023E821910550582191000853083297D754D28CA5411),
    .INITP_0E(256'h000A256F4A96952D2A5A40412140102E081FA51FA50050008404005000002500),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4083194700310000594B5D007F0079C021FE00040003304C6F72FF0054010664),
    .INIT_01(256'h87314B4880484B314B4A804A4B3140810D63000D4030000F9080504F31408131),
    .INIT_02(256'h0C40810D630031404E803C3E314E900C40810D630031404F803E3F314F900040),
    .INIT_03(256'h5690004081404F5D0C4081404056802B0040523900470031404A803A3C314A90),
    .INIT_04(256'h90244051404081194083405D000D405240408140522B005790802E000D404A40),
    .INIT_05(256'h43569000408142462E0040834056900C40810D630040405B8026000D4051405D),
    .INIT_06(256'h539024404F4B4081194083485B000D40504740814650320057908035000D404A),
    .INIT_07(256'h57802B000D4048505490004024504A57803000504059003F9080292F4D40814C),
    .INIT_08(256'h0D404556408154453100404C5025005040578033305057900C40810D63005040),
    .INIT_09(256'h39604081810040810D6300605B000D40515E40815C512C0063005A4055803400),
    .INIT_0A(256'h0D6390803739605B000D404F803E436040810D630060404F5440810D6390803E),
    .INIT_0B(256'h9080454A6040328045426040810D639080363232802D2A602A007F4E5B004081),
    .INIT_0C(256'h37000059402400401D003F00502100501A2D0040810D63908036396040810D63),
    .INIT_0D(256'h37802B00403240265C00408140324037803A006D00408140324032802B000059),
    .INIT_0E(256'h3900630040834032403790390063004083402E402600402E4039803C007D0040),
    .INIT_0F(256'h324032802B004032902B00402D401F0040401F401F2B004032401F004081401F),
    .INIT_10(256'h4081403C007D004037802B00403240265C00408140324037803A006D00408140),
    .INIT_11(256'h004081401F3C00630040834037403A903C006300408340374026004037401F00),
    .INIT_12(256'h504270900040403E802B00503E902B004037401F0040401F401F2B004037401F),
    .INIT_13(256'h900C81403E5046008119404042802B005050401F46006300503E1F2B58004081),
    .INIT_14(256'h3E5046008119404042802B005050402664004081501F0050401F480063005045),
    .INIT_15(256'h1F42006300503E900063000D40430C5700503E1F2B58004081504270900C8140),
    .INIT_16(256'h634270900C81403E5C46008119404042802B005654402664004081501F005040),
    .INIT_17(256'h6400403E702600704390008140426D1F006D401F46006300693E1F2B58004081),
    .INIT_18(256'h708340458026007045900C814043802B00703E1F2B5800403C70480070704026),
    .INIT_19(256'h809080005E401F004043701FFD0070469002404A00401A704A00194046804F00),
    .INIT_1A(256'h402B805B5C5C5D2B000D401F5E405E405E1F900C4081077107715E5F5E005790),
    .INIT_1B(256'h000D40585E1F9006405E405E1F900C4081077107715E5B5A005790809080005E),
    .INIT_1C(256'h1F9012405E405E405E405E1F9012405E405E405E405E1F9000404A004700704A),
    .INIT_1D(256'h9012405E405E405E405E1F9012405E405E405E405E1F9012405E405E405E405E),
    .INIT_1E(256'h701F00704343006B07715E4343005F0771077107715E432B004047802B007047),
    .INIT_1F(256'h401F5E405E405E1F900C4081077107715E5F5E005790809080005E401F004043),
    .INIT_20(256'h405E595A006B07715E5B2B0063005E402B809080005E402B805B5C5C5D2B000D),
    .INIT_21(256'h43433E3E372B0019404F004083704F0070401F802B0007405E592B800007405E),
    .INIT_22(256'h535454562B0007401F3E43433E3E372B0007401F3E43433E3E372B0007401F3E),
    .INIT_23(256'h8090802B0005401F3E4040414143434545474748484A4A4C4C4D4D4F4F515153),
    .INIT_24(256'h5E1F9000404B0057000D408170500070402B8090809080908090809080908090),
    .INIT_25(256'h5E704A000D40435E1F900A405E405E405E405E405E405E405E405E405E405E40),
    .INIT_26(256'h4081077107715E6160005790809080005E402B80616262632B000D404F004081),
    .INIT_27(256'h1F2B80005E402B809080005E402B805D5E5E5F2B000D401F5E405E405E1F900C),
    .INIT_28(256'h405E405E405E405E1F9000404A004700704A000D405B5E1F900C405E405E405E),
    .INIT_29(256'h5E1F9006405E405E1F9006405E405E1F9006405E405E1F9006405E405E1F9012),
    .INIT_2A(256'h405E405E1F9006405E405E1F9012405E405E405E405E1F9012405E405E405E40),
    .INIT_2B(256'h5E442B0047005E401F0040435E1F4F0070401F0040445E1F2B802B0070479006),
    .INIT_2C(256'h2B000D4046691F9000408167432B00470062401F802B001940415E1F90004083),
    .INIT_2D(256'h00704B52805290004045701F0019408370401F00470070432B0063006D401F80),
    .INIT_2E(256'h70401F004083705B000D408170404C704C5780579000630019408370401F0047),
    .INIT_2F(256'h401F004083705B00194059004700705690004056802B0070502B00404F701F00),
    .INIT_30(256'h59802B0070401F00630070505E0C4081704056802B00704F2B00404F701F0070),
    .INIT_31(256'h710771705690004056802B0070502B00404F701F0070401F004083705B000D40),
    .INIT_32(256'h704E2B004081705B9000404F802B00704A2B00404F701F00704059005F077107),
    .INIT_33(256'h4083705B0019405B00470070569000404F802B90006300704F90004056802B00),
    .INIT_34(256'h83705B0019405B004700705690004056802B00704D2B004050701F0070401F00),
    .INIT_35(256'h00404D701F000D405C802B0070401F00630070522B00404F701F0070401F0040),
    .INIT_36(256'h1F0070401F004083705D0019405C004700705690004056802B90006300705690),
    .INIT_37(256'h70629000405B802B0070561F0040704070401F701F0070401F00408170401F70),
    .INIT_38(256'h2B802B00705E9006407040706690064070407064900640704070639006407040),
    .INIT_39(256'h3EFE19404062001F0019408321401F211F2B802B9000470019408354401F5E1F),
    .INIT_3A(256'h41350040810D639080352D40480019408340403940404046002F908037FE0040),
    .INIT_3B(256'h900C5790803E90184B90803A90184046803E2E404B0040404D404D3580353940),
    .INIT_3C(256'h80373C4040810D630040434A804A48404081404047003F90803B354040814043),
    .INIT_3D(256'h4B90803E3540463A0040810D6390802E0040404F404F378037900063000D4048),
    .INIT_3E(256'h00403E438043454040810D63000D40458034314040814045900C5790803A9018),
    .INIT_3F(256'h004046803A37803700604A90182F9080363940422D802D3240452D0057900063),
    .INIT_40(256'h48350040484040810D6390006300405100194046405290004081404043404F90),
    .INIT_41(256'h00404A3E00404B40402E402E00404B350040810D6300404D350040810D630040),
    .INIT_42(256'h0D404F003F90803B3544402F402F0040473A0040810D63004048350040811947),
    .INIT_43(256'h408160483700404B6040810D6390803000604F90004083584048544853803E00),
    .INIT_44(256'h4968559024405580373D6440810D630060580019404B8037000D404A60569000),
    .INIT_45(256'h403E803E377040810D639080322D70705B007F405B487F006C4058803D000D40),
    .INIT_46(256'h4081817F5B000140560C40810D6390803E397040810D6390802D26007F515B00),
    .INIT_47(256'h80393E7040810D639080322D707062007F405B0040267040810D639080373270),
    .INIT_48(256'h263C004081503E40438046006D004081503E4043802B00504390004056540F90),
    .INIT_49(256'h3E40428045006D004081781F00508140480063005045902B00403E501F005040),
    .INIT_4A(256'h603E902B00403E501F0050814046006300504390004040428045006D00408150),
    .INIT_4B(256'h2B0060419000814040802B006040900081403F802B00603F900081403E802B00),
    .INIT_4C(256'h004081644C0064401F00403F621F00623F2B004041802B006041900081404180),
    .INIT_4D(256'h0C4046809080006A46900C40458090800068459000404A006300664A000D404C),
    .INIT_4E(256'h402670262B802B90004700610C4048809080006E48900C4047809080006C4790),
    .INIT_4F(256'h404F802B0070466A006F90809080908090809080908090809080680019408370),
    .INIT_50(256'h70405400630070482E70405200630070462E7040810D4052802E007040810140),
    .INIT_51(256'h63900040477053000D63900040487054000D6390802130004081704E90802130),
    .INIT_52(256'h00630070549080908090004056802F00704D327040810D40538032007040810D),
    .INIT_53(256'h8024007040810D4054802400704030703030640040817054000D408170402457),
    .INIT_54(256'h63007052908033240040817057908033247040540063007048247040810D4057),
    .INIT_55(256'h817051900063000D404A0057007070222E640040817052000D40817040225600),
    .INIT_56(256'h7F1E007040810D40518021007040810D63900040457051000D63908031210040),
    .INIT_57(256'h404E1E2A2A00704070407040704070401E0040817F56000D6390801E2A0C404A),
    .INIT_58(256'h4081704F90802E1F7040520C4081704A2B900063000D4046704F908090809006),
    .INIT_59(256'h518021007040810D63900040457051000D6390803021004081705190802E1F00),
    .INIT_5A(256'h6B0771705690803223704056006300704A237040810D404F8023007040810D40),
    .INIT_5B(256'h7054908033247040540063007048247040810D40548024007040704070405900),
    .INIT_5C(256'h24007040810D63900040487054000D6390803324004081705790803324004081),
    .INIT_5D(256'h8170569080322270405D0063007051227040810D405B8022007040810D405780),
    .INIT_5E(256'h801E007040810D63900040567062000D6390802D1E004081705A908032220040),
    .INIT_5F(256'h405A006300705690004056802600704E260C404E7F1A0070405B802D000D405A),
    .INIT_60(256'h404A80520070405D006B0771705A9000405A802600705126004051701A007081),
    .INIT_61(256'h0063000D404F006300704A900063000D639000404A005700704A2B900063000D),
    .INIT_62(256'h00704E900063000D639000404E006300704E000D63900081404E802D00704E90),
    .INIT_63(256'h63900040530063007053000D63900081404A802F00704A900063000D40510063),
    .INIT_64(256'h704F000D63900081404F803000704F900063000D40560063007053900063000D),
    .INIT_65(256'h007054908090809006404F80908000704F90809080908090809000404F006300),
    .INIT_66(256'h40570063007054900063000D639000404F006300704F000D6390008140548030),
    .INIT_67(256'h0063000D639000404F006300704F000D63900081404F802E00704F900063000D),
    .INIT_68(256'h4C006300704C000D63900081404C802D00704C900063000D4052006300704F90),
    .INIT_69(256'h0081404E802A00704E908090809006404C80908000704C900063000D63900040),
    .INIT_6A(256'h1E1E2A2A2A004051802A007051900063000D63900040510063007051000D6390),
    .INIT_6B(256'h1F0070462E802E90801F2E00404F802E00704F90801F2B64004046701F007046),
    .INIT_6C(256'h70213000404880300070489080212D6400404870210070482E802E9000404A80),
    .INIT_6D(256'h704A237040235300408170530070402D702D2100404870540070407040704021),
    .INIT_6E(256'h705700704070407040590040704070590070402F702F2370402F00404A702F00),
    .INIT_6F(256'h5700408170570070403070302470403000404870300070482470402457004081),
    .INIT_70(256'h817040810D405400408170540070408119404057006300705700077107710D40),
    .INIT_71(256'h4081705D007040811940405B006300705B000D408170405B0040817057000D40),
    .INIT_72(256'h9000405A0063007E5A000D408170405B0040817056000D40817040810D405D00),
    .INIT_73(256'h7E4F1E00407E407E5D000D63908090809000405A0063007E5A000D6390809080),
    .INIT_74(256'h5A006D00405B0040817E1A007E4F40210040518026007E560007405680908000),
    .INIT_75(256'h1F2B802B90004700194083764026802B007E56000771077107405A006B07717E),
    .INIT_76(256'h1F211F2B802B9000470019408332401F3B1F2B802B9000470019408354401F5D),
    .INIT_77(256'h0000000000000000000000002F2B0000404F211F2B802B900047001940832140),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
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
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [15:0]DOADO;
  output [1:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]DOADO;
  wire [1:0]DOPADOP;
  wire [12:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[10:0],1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
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
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra[11]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[16] ,
    \douta[17] ,
    clka,
    \addra[12] ,
    addra);
  output [7:0]\douta[16] ;
  output [0:0]\douta[17] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [7:0]\douta[16] ;
  wire [0:0]\douta[17] ;
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
    .INITP_00(256'h1228211229A49005545148341345221A28808008B41148200A08A01069100570),
    .INITP_01(256'h04292295552AA40A10402806604024261048024485C228909CAC8080201008A4),
    .INITP_02(256'h522405054D3860A408B282869C10521469C1050508214914AA2945204A104028),
    .INITP_03(256'h414F1AC52BD7F80040280500A0140294D50A78D6151053C6B1444A654A308090),
    .INITP_04(256'hB5615D05446B0AE51AA0000051D2AAAA942082082ED5DABB57290A5C2F1D5854),
    .INITP_05(256'h2984482914D205A289401410A8A38F551C5114010A14028050A1428500A53540),
    .INITP_06(256'h12A8245245108828A2014522994480914CA20A251442294FE24148A600450452),
    .INITP_07(256'h928841128A20204108A09004248A4024012424820022909222D237A451000408),
    .INITP_08(256'h2213048228504C3028848108884832D041108A4110920C028240000008005008),
    .INITP_09(256'h1880001A40A1485096A588D4A4142110040184610212882A054A50A420140204),
    .INITP_0A(256'h64001305000008000B2829A140808048240210508020261329040101008A4C26),
    .INITP_0B(256'h388C520C22530502820130904820080004024004E08A4C200008000141142D01),
    .INITP_0C(256'hB253308028000010808200000108B00B2533080000000000B28B250B0A710025),
    .INITP_0D(256'h4248A48420A092292149048100002008401080A54422C94CC200000000000B28),
    .INITP_0E(256'h000144B489E91AD227A3BF8E82B08DCB50B546B546A8A699498A680689480840),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2798A0C1981280007F480020036058007F81040209A83CAFBB23808026000034),
    .INIT_01(256'h1818C80C97C8C01FC8129FC8C0252698A0C098A0200020C006B1C8C027269826),
    .INIT_02(256'h20291820C018291E00ABC8C01F8006A02A9820C0982A1F00ABC8C01F80182025),
    .INIT_03(256'h0006A027A02DC800A00FA0282F00B100202BC800A0C118281D00ABC8C01E8006),
    .INIT_04(256'h06A02BC0150F20200F200F00A0202FC01113202FC806204006B10020A02BC015),
    .INIT_05(256'h19800620232129C800202520110006202720A04020271300B100A0202EC01900),
    .INIT_06(256'h0006A029C01A1DA5A011A41100A4A02EC01417232EC806A0C006B100A2202BC0),
    .INIT_07(256'h00B100A8202AC01200062018C02BC800B100A8251300A0C006B1C8C01719262C),
    .INIT_08(256'hA028C01812AA28C800202AC01800A8261900ABC8C0180006A027A82040A82715),
    .INIT_09(256'hC01C1BB0302016B0A040B01380BF202EC01A18AE2EC80020402D261A00B100AC),
    .INIT_0A(256'h204006B1C8C01C80BF202B009FC8C02122B0204030272B062013B0A04006B1C8),
    .INIT_0B(256'h06B1C8C025220087C8C0211F30A04006B1B84806B1C8C019003F2BC800A016B0),
    .INIT_0C(256'h002000FF1300A00F00204E281100A80EC82A2027B0204006B1C8C01C1F302040),
    .INIT_0D(256'h00B100201BC81500412019A01BC81D00B10020412019A01BC81B00B100A0007F),
    .INIT_0E(256'h0020402019201BC01D00B60020402019A019C01500A019C81E00B1002040A01D),
    .INIT_0F(256'hC81B00B100A01B00BE002019C01500201615C015C800201BC01500A019A0132E),
    .INIT_10(256'h1BA00F002040A01D00B100201BC81500412019A01BC81D00B10020412019A01B),
    .INIT_11(256'h201BA0132E002040A01B201DC01F00B6002040A01B201DC01500201DC81500A0),
    .INIT_12(256'h2200400C200F2100B100A82100BE00201DC01500201B15C015C800201DC01500),
    .INIT_13(256'h0CA02021C0150028A8A00F2200B100281F0F15AC0020402821B8C80640201FA8),
    .INIT_14(256'hC0150028A8A00F2200B100281F0F150040201DA81300281D15B2002040A82400),
    .INIT_15(256'hB200A040A8210006A040A8A02300A0402821B8C80640201FA82200400CA02021),
    .INIT_16(256'h2280C00CA02021C015002EADA00F2200B1002B1F0F150040201DA81300281D15),
    .INIT_17(256'h402021C015003823000CA02022C01580B62115AC0020C03421B8C80640201FB1),
    .INIT_18(256'h21202500A3003825000CA0202300B1003821B8C80640A021C01500381E0F1500),
    .INIT_19(256'h380338AF3015002023C0154881B8250000AC27002013C0270038A02500A30038),
    .INIT_1A(256'h2D00ABC8C0C8C000AF2015C02E2E2E2F150006A00FAF202FA0AF0FC806A04003),
    .INIT_1B(256'hB8A00FC0150003A00F2C2D150006A00FAF202FA0AF0FC806A04003380338AF2E),
    .INIT_1C(256'h0003A00F292727252523150003A00F2321211F1F1D15000CA02700A041B82700),
    .INIT_1D(256'h03A00F212121212121150003A00F212121212127150003A00F2F2D2D2B2B2915),
    .INIT_1E(256'h15003823C803A0AFA0AF0FC809A0AFA0AFA0AFA0AF0FC800202500B100382500),
    .INIT_1F(256'h15C02E2E2E2F150006A00FAF202FA0AF0FC806A04003380338AF3015002023C0),
    .INIT_20(256'h1515C803A02FA0AF0FC8002040AF2D2D00350338AF2E2D00ABC8C0C8C000AF20),
    .INIT_21(256'hC0C8C0C8C000AFA00F002021B80F0038211500B1002FA02C0FC800382FA02C0F),
    .INIT_22(256'h4840C840002F2015C0C8C0C8C0C8C000AF2015C0C8C0C8C0C8C000AF2015C0C8),
    .INIT_23(256'h0706B1002F2015404840C840C8404840C840C8404840C840C8404840C840C840),
    .INIT_24(256'h150006A028002040AFA00FB80F00B82224002F01080207010701070207010701),
    .INIT_25(256'h0F2700B8A00FC0150001A00F22232324242525262626262727282829292A2A2B),
    .INIT_26(256'h0FAF202FA0AF0FC806A04003380338AF313000ABC8C0C8C000AFA00F002021AF),
    .INIT_27(256'hC80038AF2E2E00350338AF2F2E00ABC8C0C8C000AF2015C02F2F2F30150006A0),
    .INIT_28(256'h0F211F1F1D1D1B15000CA02700A041B82700B8A00FC0150003A00F2E2E2E2E15),
    .INIT_29(256'h150003A00F2D2B150003A00F2927150003A00F2725150003A00F2321150003A0),
    .INIT_2A(256'h0F2121150003A00F2125150003A00F212121212121150003A00F212121212127),
    .INIT_2B(256'h0FC800A041AF2115062023C015B80038211506A023C015C800B10038250003A0),
    .INIT_2C(256'h8035A00FC0158006A021B30FC800A041B1211500A300AFA00FC015000CA022AF),
    .INIT_2D(256'hB82BC800A3000CA028C01500B8202238221500A041B827C800A0C0B6201500B1),
    .INIT_2E(256'h2715002027B80F00B8202738272CC02CC800B10006204038202538251500A041),
    .INIT_2F(256'h15002027B80F00B8A00F00A041B82C000CA02E00A300382BC800A02BC0150038),
    .INIT_30(256'h00B100B82615002040B82EC800A00F38292D00B100B82BC800A02BC015003827),
    .INIT_31(256'hB8A0B82C000CA02E00A300382BC800A02BC01500382715002027B80F00B8A00F),
    .INIT_32(256'h2BC800A027B80F0006A02B00B1003827C800A02BC0150038270F00A0B8A0B8A0),
    .INIT_33(256'h27B80F00B8A00F00A041B82D0006A02B00AB0006A040B82B000CA02D00A30038),
    .INIT_34(256'hB80F00B8A00F00A041B82D000CA02C00A300B82BC800202BC015003828150020),
    .INIT_35(256'hA02CC01500B8A00F00B100382815002040B82FC800A02BC01500382715002027),
    .INIT_36(256'h00382915002028B80F00B8A00F002041B82E0006A02D00AB0006A040B82D0006),
    .INIT_37(256'h15000CA03100A300382DC809A02B0F151515C01500B82B15062029B80F15C015),
    .INIT_38(256'h00A300B8310003202D0F15150003202C0F15150003A02B0F15150003202B0F15),
    .INIT_39(256'h4881A00F3300A0C190A00F900F15C015C800A3000CA0C1A1A00FAA0F15C015C8),
    .INIT_3A(256'hC812A020A0204006B1C8C01600A02023202322C0221C1D0020410CA348812021),
    .INIT_3B(256'h06204006B1000620400CA30006A02400A5C8C0170020201AC01AC806ABC8C01C),
    .INIT_3C(256'h9FC8C01E1BA02040A024C80C97C8C0242320231A00A04006B1C8C01A17A02300),
    .INIT_3D(256'h4006B1C8C01AC80C202020A04006B10020201EC01EC800B10006204020A02500),
    .INIT_3E(256'h2021C8069DC8C01E1CA0A040A0202400A5C8C01816A0240006204006B1000620),
    .INIT_3F(256'hA0250CA3C800A3003027000C204106B1C8C01CC806ABC8C019C8062040062040),
    .INIT_40(256'hC812A026C01A1E20A04006A040A02A00202029C01D0006A01CA02227C01C0000),
    .INIT_41(256'h2026C80C2029C01F1DC01D002029C8062026A02040A02AC806A024A0A040A026),
    .INIT_42(256'hA02900A04006B1C8C01A1DC01D00A026C806A0242020402026C80CA025A02041),
    .INIT_43(256'h24B02AC8122027C01B1E30A04006B100B02A000C201F2C252AC02AC800B100A8),
    .INIT_44(256'hC0200006A02C009FC8C01E1BB1A040B02D00B0A02B243F00B0A02BC01B000620),
    .INIT_45(256'h27243FC8C01B1CB8A04006B1C8C0161380BF271B00A041B6271E00B10035202A),
    .INIT_46(256'h16B83830803FA02D00201338A04006B1C8C01C1B38204006B1B8803F2BC800A0),
    .INIT_47(256'hB1C8C01F1CB8204006B1C8C01613803F2B3000201FC01F1BB8A04006B1C8C019),
    .INIT_48(256'h0041201FA821C82300B1002841201FA821C82300B100BC230000A02D06204006),
    .INIT_49(256'hC82200B1002841A01FBC1300A81FA00F002040A82400BE002021C01500A81F15),
    .INIT_4A(256'h2100BE002022C01500A81FA00F002040A8230018200F2200B1002841A01F2821),
    .INIT_4B(256'h00B023000CA0202200B1003022000CA0A02200B100B022000CA0202100B10030),
    .INIT_4C(256'hA020B20F00B22015002021C015003121C800202300B1003023000CA0A02300B1),
    .INIT_4D(256'hA02600B500BBB5260000202500B500BB34250006A02600A040B32600B3A00F00),
    .INIT_4E(256'h15C015C800B1000C20413841A02700B500BBB7270000202600B500BB36260000),
    .INIT_4F(256'h2900B1803827C81E2042032D032D032D032D032D0338033803384138A013B813),
    .INIT_50(256'h18100020403828C8C0170F0020403827C8C0170FB8202B00B10038250FB8A00F),
    .INIT_51(256'h4006A027C01100B82040062028C0100038204006B1C800202238280006B1C8C0),
    .INIT_52(256'hA040382B000338033806A02C00B100B82BC8C01911B8202B00B100B82511B820),
    .INIT_53(256'hB100B82719B8202B00B100382519C019C80040A02438120038A018B81818B200),
    .INIT_54(256'h40382B0006B1C800A027382D0006B1C8C012190020403827C8C01219B8202D00),
    .INIT_55(256'hB82A00062040382029062040382517C80040A023381100382017381717B20020),
    .INIT_56(256'h1500B82518B8A02A00B100B82418B8A04006A026C01800B8A04006B1C800A024),
    .INIT_57(256'h2BC0C8C00038270F0F15150F0F15151506A0253F0F0038204006B1C8002028C0),
    .INIT_58(256'h23B8290006B1C8C00F2B00A00F3829B80006A040B82027C02900033803380320),
    .INIT_59(256'h00B100B8241838A04006A027C01800B8A04006B1C800A024B82A0006B1C800A0),
    .INIT_5A(256'hB8A0B82C0006B1C8C011190020403829C8C0111938A02900B100B8231838A02A),
    .INIT_5B(256'h2B0006B1C8C012190020403827C8C01219B8202B00B1003825111117171100A0),
    .INIT_5C(256'h00B82719B82040062027C0190038204006B1C800A027382D0006B1C800202538),
    .INIT_5D(256'h382D0006B1C8C0111900A040B82DC8C0111938202F00B100B82919B8202D00B1),
    .INIT_5E(256'hB100382816B8204006202EC0160038204006B1C8002028382E0006B1C8002027),
    .INIT_5F(256'h0D0020C03F2D003C202D00B180382BC800202BC0130038271600B100B8202E00),
    .INIT_60(256'h2700B10038230D00A03820382E0006202E00B100B82DC800A02DC01300382820),
    .INIT_61(256'hA040B8A02900204038270006A040B8A04006202706A0403827B80006A040B820),
    .INIT_62(256'h38280006A040B8A04006A02800A040B82800B8A0400CA0202800B10038280006),
    .INIT_63(256'h4006A02B002040B82B0038A0400CA0A02700B100B8270006A040B8A02A002040),
    .INIT_64(256'h2A003820400C20A02A00B100B82A0006A040B8A02C00A040B82B0006A040B8A0),
    .INIT_65(256'hB82B000338033803A02A00350338B82A00033803380338033806202A00204038),
    .INIT_66(256'h2D00A040B82B0006204038204006202A002040382A003820400C20A02B00B100),
    .INIT_67(256'h20403820400620290020403829003820400C20202900B1003829000620403820),
    .INIT_68(256'h00A040B82800B8A0400CA0A02800B100B8280006204038202B00204038290006),
    .INIT_69(256'h20202800B1003828000338033803A02800350338B8280006A040B8A04006A028),
    .INIT_6A(256'hC0C8C0C800202B00B100382B0006204038204006202B002040382B003820400C),
    .INIT_6B(256'h00B825C800B10006B1C800202900B10038290006B1C80040A025C01500B825C8),
    .INIT_6C(256'h16C800A02700B100B8270006B1C80040A027C01600B827C800B10006202700B1),
    .INIT_6D(256'h27C8C01117B2002023B81100382318C018C800A027C0100038241010161616C0),
    .INIT_6E(256'h1200B825111117171100A02611171700B82619C019C8C0111900A027C01900B8),
    .INIT_6F(256'h00A025381200B82519C019C8C0121900A025C01900B825C8C01218B200A02538),
    .INIT_70(256'hB8181238A01800A024B81800B824123820122D00A040382D00B8203820382012),
    .INIT_71(256'h283817003828113820112F002040382F0038A018B81812002027382D00B8A018),
    .INIT_72(256'h06202E00A0403F2E00BF2017381711002027382D00B820173817113820170020),
    .INIT_73(256'h2BC80320280F151500BF20400338033806202E00A0403F2E00BF204003380338),
    .INIT_74(256'h00BF41A00D0020273F10003F29C81300202B00B1003F2D003F202D00350338BF),
    .INIT_75(256'hC800A3800CA041B7A00FBB0F1500A300BF2D00BF203F203F202E00A03F203F2E),
    .INIT_76(256'hC015C800A3800CA04195A00F990F15C015C800A3800CA041A6A00FAA0F15C015),
    .INIT_77(256'h0000000000000000000000007F00412029C015C800A3800CA0C190A00F900F15),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[16] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[17] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
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
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[25] ,
    \douta[26] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [12:0]addra;
  wire clka;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
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
    .INITP_00(256'h20605149C4424860002095000894808040511101420294051044510882005901),
    .INITP_01(256'h29428400881108402100402800A411108A2110AC23410144441A48A292810042),
    .INITP_02(256'h04A200586089C20040040C3004A10020004A0018604214210142284200210040),
    .INITP_03(256'h2BA08E08402005293546AED51ABB5421085104096B4AE8238208908000040821),
    .INITP_04(256'h4B96B4AA8200B58221488888D40147E1F555555558AB1562AC10988540A2A5AD),
    .INITP_05(256'h1221044009080A441402208A82140C22A28882A450A3546AC58B9528D58842B5),
    .INITP_06(256'h450682A88A440A82002A080122114420910A200A210440A008220048AA02A880),
    .INITP_07(256'h00220808111010A2C00C005410112210128800001309402444205042A2448932),
    .INITP_08(256'h110622111862212A44418AA01320450208891528A840522010104820444105A0),
    .INITP_09(256'h713333250A02D8B60C03023012004A5294A508421020211022148508C0881480),
    .INITP_0A(256'h02A880C8D028020400500200800850211028610101C810280200001080542050),
    .INITP_0B(256'h53B009405184C8002100814222090088028102AA084021102802041018888072),
    .INITP_0C(256'h00006000520800A5391066000A10002008464204000006014134C22054020008),
    .INITP_0D(256'h8505080855494142021420542521081201001200094D32928418300000600040),
    .INITP_0E(256'h00040A0814102821704740A1A4483258A59F119F118500400414850842141080),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE013120C0A24C8BF4000C0022C00004000D686D6173F595C59C3EE9A78000055),
    .INIT_01(256'h0F4006906006D14003D060035864E01313CC13130CD0094C1060035864E01064),
    .INIT_02(256'h15E00F0E8C15640390600358408CD015E00F0F0C156403D060035840CC100CE0),
    .INIT_03(256'h90D016E0070003500AE01764009020D017000610144C15640390600358408C90),
    .INIT_04(256'h9017004F64E0070AE00A00901408005564E00900039011D0902090110A005800),
    .INIT_05(256'hC0909014E00880069015E00B00909016E00C0B50166400D020D0130C00580050),
    .INIT_06(256'h535016004F64E00E0BE00B00D2130A005564E00B8003501391502051130C0058),
    .INIT_07(256'hD020D4120900580014901200550003D02014156409D0139350A0035864E00C00),
    .INIT_08(256'h0C005564E0090006501600D10014156403D020035800D4D016E00A0C14166400),
    .INIT_09(256'h5864E00D0C4CE00B0A980AC09F130D005564E00C000310131616640050205612),
    .INIT_0A(256'h0C98D0200358C09F130F00D020035864E0111298156400500CE01110D8902003),
    .INIT_0B(256'h5020035864159020035864E00F0E589020200050200358009816C0009013E00B),
    .INIT_0C(256'h900BBF5000D008001006940900D40700039015E00B0C989020035864E00F1098),
    .INIT_0D(256'h9020D00E004400D0500DE00E00DB009020D00C500DE00E00DB0090209007BF00),
    .INIT_0E(256'h900C500D640E0058009020900C500D640D005800D00D005F009020500DD00700),
    .INIT_0F(256'hDB0090209007009020D00D005800900C6400580003D00E005800900D640A0020),
    .INIT_10(256'hE00A00500DD007009020D00E004400D0500DE00E00DB009020D00C500DE00E00),
    .INIT_11(256'h0E640A0020500D100E640F005800D020500D100E640F005800D00F005F00100E),
    .INIT_12(256'h0094D4D009590090209407009420D00F005800900E6400580003D00F00580090),
    .INIT_13(256'hD00711005800D40F070A5600902054105C640320D00FD411002006D05010E00A),
    .INIT_14(256'h5800D40F070A5600902054105C6400D0D00FE00A00D40F6400205010D4070094),
    .INIT_15(256'h20900ED4070054D007D4070A009007D411002006D05010E00A0094D4D0071100),
    .INIT_16(256'hC098D8D00711005800D70F070A560090A055105C6400D0D00FE00A00D40F6400),
    .INIT_17(256'h9011005800DC12009CD007120058401B11640320D00FDA1140E006D05010E00A),
    .INIT_18(256'h64130090209C13009CD007120090209C11002006D010110058005C105C6400D0),
    .INIT_19(256'hD710D7076400D01200D10000D61300DC407F005010009F005C101300D0209C11),
    .INIT_1A(256'h03D0A0019C019CD717170055E460E4608097500AE0171717170A8003D00797D0),
    .INIT_1B(256'h100A00588017500AE0E4608097500AE0161616160A8003D00797D0D710D70764),
    .INIT_1C(256'h97900AE0E460E460E4608097900AE0E460E460E4608097D007009010DC07009C),
    .INIT_1D(256'hD00AE0E460E460E46080D7D00AE0E460E460E46080D7900AE0E460E460E46080),
    .INIT_1E(256'h00DC120001D00710100A8001D0071010101010100A8003D014001020DC14001C),
    .INIT_1F(256'h0055E460E4608097500AE0171717170A8003D00797D0D710D7076400D01200D1),
    .INIT_20(256'h608001D00716160A8003D016D707E401D0D710D7076403D0A0019C019CD71717),
    .INIT_21(256'h9C019C019CD70D0A009011E00A009C11640010A0D7160760800190D71687E0E4),
    .INIT_22(256'h01870087D7158F0097019C019C019CD70D8F0097019C019C019CD70D8F009701),
    .INIT_23(256'h1710A0D70F0F0082018700870187018700870187018700870187018700870187),
    .INIT_24(256'h8097D00700D011D7070AE00A00DC11E404D017909710175057D0D75057D0D710),
    .INIT_25(256'h5C009C100A005880D7500A6024A0A4A024A0A4A024A0A4A024A0A4A024A0A4A0),
    .INIT_26(256'hE0171818180A8003D00717505790D7076403D0A0019C019CD7180A039011E00A),
    .INIT_27(256'h01D0D707E401D05790D7076403D0A0019C019CD717170055E460E4608017D00A),
    .INIT_28(256'hE0E460E460E46080D7D007009010DC07009C100A005880D7100A60E46064E080),
    .INIT_29(256'h80D7D00AE0E4608097900AE0E46080D7D00AE0E4608097900AE0E46080D7D00A),
    .INIT_2A(256'hE0E46080D7D00AE0E4608097D00AE0E460E460E46080D7D00AE0E460E460E460),
    .INIT_2B(256'h8006D010D7076400D012005580209C116400101200558003D020DC14001CD00A),
    .INIT_2C(256'hDA110A0058409AD007E00AC006D010D8076400D0A0D7100A00D18057D007E00A),
    .INIT_2D(256'h07000690209CD00700D1005C1114E0146400D010DC070003D010DB07640010E0),
    .INIT_2E(256'h6400D015E00A009C1316E0166400580003D020DC90129C1215E0156400D012DC),
    .INIT_2F(256'h00D015E00A009C130A009013DC07005CD007001020DC170006D01600D100DC15),
    .INIT_30(256'h5020DC1664001014DC070003900AE0176400D020DC160006D01600D100DC1564),
    .INIT_31(256'h070A0A005CD007001020DC170006D01600D100DC156400D015E00A009C130A00),
    .INIT_32(256'h0003D016E00A00DCD007009020DC150006D01600D100DC15E4049013070A0A07),
    .INIT_33(256'hE00A009C130A009013DC0700DCD007009020DCD007DC07009CD007009020DC16),
    .INIT_34(256'h0A009C130A009013DC0700DCD007005020DC160006D01700D1001C156400D015),
    .INIT_35(256'h070058005C130A001020DC1764009014DC070003D016005800DC156400D015E0),
    .INIT_36(256'h9C1564005015E00A009C140A009014DC07001CD00700D020DCD007DC0700DCD0),
    .INIT_37(256'h009CD007009020DC180001D016E0E46064005800DC1664009015E00A64005800),
    .INIT_38(256'hD020DC1900DCD019E0E460009CD019E0E460001CD018E0E46000DCD018E0E460),
    .INIT_39(256'h00D60A4A009016C8070AE00A6400D14006D0A0CCD007D0070AE00A6400D18006),
    .INIT_3A(256'h031011E00D0F10502003580050100EE00E6403555C6406D00F90D02000D61100),
    .INIT_3B(256'h901290902010501250902090901200502006D10010116400D100035020035800),
    .INIT_3C(256'h20035864E00D0C101200069020035864E00F6409D01050D020035864E00B0050),
    .INIT_3D(256'h509020035800039011E00E0D50902090116400D10003D020D0D012D0120D00D0),
    .INIT_3E(256'h0900065020095264E00E0DD0110D001020035864E00B00105012509020905011),
    .INIT_3F(256'h1300902006D020D0140098901090902003580003502003580003D00F50900990),
    .INIT_40(256'h031014004F64E00F0D50500B500B0050120E00D100905011E01464005800D090),
    .INIT_41(256'h150003D01500526400D100D01500035015E00D0F101600035013E00D0E501400),
    .INIT_42(256'h0D00501153D020035864005800D01300031013E00E0F901500039013E00D0E90),
    .INIT_43(256'hE00F0003D015004F64E00F0DD81020181500D89012E0156400580003D020D411),
    .INIT_44(256'h58005AD01600D0A0035864E00D0C58090058130D001020D8120D00580098D015),
    .INIT_45(256'h069020035864E00E0DDC902003585CC09F146400D009DB16640010A01A131000),
    .INIT_46(256'hE00B09C09F151700500CE00C0E5C9020035864E00D0C9C5020205F16C0009014),
    .INIT_47(256'h20035864E00E0D9C902003585CC05F1664009015129F64E00D0E5CD020035864),
    .INIT_48(256'hD05010E01100DB009020D40F5010E01100DB0090209E07009490170090099C50),
    .INIT_49(256'hDB009020940F9010E00A009410640A00500FD407009420D01100580094106400),
    .INIT_4A(256'h009820D0120058001411640A00D00FD4070094D009CF009020940F9010E01100),
    .INIT_4B(256'hD8120058D00712001020D8120018D0071100D020D81100D8D00711009020D811),
    .INIT_4C(256'h10E00A0059106400D012005880D8128003D012009020D8120098D00712005020),
    .INIT_4D(256'h1300D0DFD0DF1380DAD0130090DFD0DF13009AD007001010D9078019100A0050),
    .INIT_4E(256'h0058000390209CD009DC09D0140050DFD0DF14805BD0140010DFD0DF14001BD0),
    .INIT_4F(256'h0090E0DF14000990069CD0DC909C909CD0DC909C909CD0DC909C9C060AE00A64),
    .INIT_50(256'h640050125C150003586400D011DC1400035864E0070B0090209C1464E0070A5F),
    .INIT_51(256'h9CD014005800DC110C1C50150058005C120C1C5020035013E00C005C50200358),
    .INIT_52(256'h121C0900DCD0DCD0DCD008005020DC1600035864E0080C0090209C1464E0080C),
    .INIT_53(256'h20DC1564E00C0900D020DC156400580006101013E00C00DC120CE00C64002010),
    .INIT_54(256'h9C08009CD02003D015E00900DCD02003586400D012DC1500035864E00C0900D0),
    .INIT_55(256'h08005C900B9C0B150090089C145C0006909013E00B00DC110CE00C6400209012),
    .INIT_56(256'hC09C1464E00C080050205C1464E00C085C50140058001C11085C5020035014E0),
    .INIT_57(256'h001A011C9C15E460E460E460E46064009014E00A005C12079C90200090150058),
    .INIT_58(256'hE007009C902003586400900AE0150020DCD007DC07140058009C909C909C9016),
    .INIT_59(256'h10201C1464E00C085C10140058009C11085C1020031014E008001C9020039013),
    .INIT_5A(256'h080B0B005C902003586400D0129C1500035864E00C0800D020DC1364E00C0800),
    .INIT_5B(256'h00DCD02003586400D012DC1500035864E00C0900D020DC15E460E460E4019013),
    .INIT_5C(256'hDC1564E00C091CD015005800DC12091CD02003D015E00900DCD02003D015E009),
    .INIT_5D(256'h0800DC90200358640090149C1700035864E00C080090209C1664E00C0900D020),
    .INIT_5E(256'h205C1664E00B079C50180058005C15079C5020035016E007005C902003D015E0),
    .INIT_5F(256'h0390139F06009C90060090E09F16001E90160058C09C156400D020DC13070050),
    .INIT_60(256'h009020DC12E4019014060909005C90060050209C17000390170058005C166409),
    .INIT_61(256'h0A9C0A07009011DC14009C900A9C0A07DC901400D0079C140020DCD007DC0714),
    .INIT_62(256'h15001C100B1C0B085C100B0010111C0B001C11085C5008150010205C15001C90),
    .INIT_63(256'hDC900B00D0129C0B00DC1208DCD0081400D020DC1400DC100B1C0B080090125C),
    .INIT_64(256'h00DC12091C10091500D0201C1500DC900B9C0B0800D013DC16005C900B9C0B08),
    .INIT_65(256'h1600DC101C101C101500D01C101C1500DC101C101C101C101CD00C00D012DC0C),
    .INIT_66(256'h0010131C1600DCD00CDC0C091CD00C00D012DC0C00DC12091C10091600D0201C),
    .INIT_67(256'h0B9C0B089C900B0090119C0B009C11089C9008150090209C15009CD00CDC0C09),
    .INIT_68(256'h50115C0B005C11085C5008150050205C15005C900B9C0B0800D0129C15009C90),
    .INIT_69(256'h07150090209C15009C505C505C501500505C505C15005C500B5C0B085C500B00),
    .INIT_6A(256'h1C011C0390160090209C16009C500A5C0A079C500A0090125C0A009C12079C90),
    .INIT_6B(256'h9C130003D020DCD02003D015009020DC15009CD02006D090130058009C130001),
    .INIT_6C(256'h000350140050205C14005C5020065010140058001C140003D020DCD014009020),
    .INIT_6D(256'h000358640020D012E00B00DC12640058000310140058005C13E460E460640058),
    .INIT_6E(256'h001C13E460E460E4019014E0E460009C14640058000358640090140058009C14),
    .INIT_6F(256'h1013E00C001C13640058000358640010130058001C130003586400201013E00C),
    .INIT_70(256'h0C64E0090C00D012E00C00DC1264E0090C590010131C09001C1309090C0C0C00),
    .INIT_71(256'hE00C009C1564E0080B590090149C08009C140CE00C6400D015E009001C130CE0),
    .INIT_72(256'h90070090149F07809F140CE00C64009014E008009C130CE00C64E0080C009015),
    .INIT_73(256'h80015015E0E460809F14099F909F909F90070090149F07809F14099F909F909F),
    .INIT_74(256'h9F149008009014E00980DF1580DB0090160090A05F06805F138700D09F909F16),
    .INIT_75(256'h06D060D9D007DB070AE00A6400D0A09F07809F13060609098600901406090980),
    .INIT_76(256'hD14006D060C8D007CA070AE00A6400D1C006D0E0D0D007D3070AE00A6400D140),
    .INIT_77(256'h00000000000000000000000000D0D015004F4006D060C8D007C8070AE00A6400),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[25] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[26] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
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
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[31] ,
    clka,
    \addra[11] ,
    addra);
  output [13:0]\douta[31] ;
  input clka;
  input \addra[11] ;
  input [10:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [13:0]\douta[31] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_37 ,\douta[31] [13:7],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ,\douta[31] [6:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[11] ),
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
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[31] ,
    clka,
    \addra[12] ,
    addra);
  output [4:0]\douta[31] ;
  input clka;
  input \addra[12] ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_46 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_47 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire \addra[12] ;
  wire clka;
  wire [4:0]\douta[31] ;
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
    .INIT_00(256'h0812100600001F0006000B0000000000001F001F00000C0E0D00070E00000009),
    .INIT_01(256'h00060807060810060807060810010C1210071204080510090A060810010C0003),
    .INIT_02(256'h000A12100700010809060810060907000A121007000108090608100609070001),
    .INIT_03(256'h0903000C0008080A000A0001080A08030008080A100700010808060810060807),
    .INIT_04(256'h05000810010C12000800080A12010810010C0008080A100505080A1200081008),
    .INIT_05(256'h080904000C00080804000800080906000A12100500010809080B12000810080A),
    .INIT_06(256'h0906000810010C12000800090A12010810010C0008080B100606080B12000810),
    .INIT_07(256'h090A0A120008100A090A0108100A08090A040001080A100405090810010C0009),
    .INIT_08(256'h010810010C000A08040008100A0B000108090A08100A0905000A121006000108),
    .INIT_09(256'h10010C0E12010C121006000F0A12010810010C000B080B1005000108090B0A12),
    .INIT_0A(256'h1006060C08100F0A1204080B0C0810010C121009000008080001121008070C08),
    .INIT_0B(256'h080C08100108040C0810010C121007060C0C08050C08100C04000F080A010C12),
    .INIT_0C(256'h0612001008040008031004000A03000A080B0001121006060C0810010C121008),
    .INIT_0D(256'h060803000810080307000C000810080608061207000C00081008050804120008),
    .INIT_0E(256'h061007000D000810080608061007000D00081008030008100806080712050008),
    .INIT_0F(256'h1008050804000805080300081008060001081008080300081008070002000808),
    .INIT_10(256'h0C00080712050008060803000810080307000C000810080608061207000C0008),
    .INIT_11(256'h0002000808071007000D000810080608071007000D0008100803000810080700),
    .INIT_12(256'h0A070305001008070A04000A0708030008100807000108100808030008100807),
    .INIT_13(256'h050B0008100A080E12011008070A080010030808081005000A0A080308000C00),
    .INIT_14(256'h100A080E12011008070A08001003080308000C000A0800030808081005000A08),
    .INIT_15(256'h08071005000A07051005120008071005000A0A080308000C000A0703050B0008),
    .INIT_16(256'h0C0703050B0008100B080E12011008070A08001003080308000C000A08000308),
    .INIT_17(256'h090008100E03000E07050C0008100D0900030808081005000D0C080308000C00),
    .INIT_18(256'h0F0008080E03000E08050B0008070E09000E0E0803090008100E080010030803),
    .INIT_19(256'h0B0C05000308090008100E001F000E081F0308080908100E08120008080E0900),
    .INIT_1A(256'h08030B080B080B0312010810000E000E0B0B0B000A12101210000B0805100B0B),
    .INIT_1B(256'h120008100B0B0B000D000E0B0B0B000A12101210000B0805100B0B0B0B050001),
    .INIT_1C(256'h0A0A000B000E000E000E0B0808000B000E000E000E0B07050008081005000E08),
    .INIT_1D(256'h08000B000E000E000E0B0808000B000E000E000E0B090B000B000E000E000E0B),
    .INIT_1E(256'h0E09000E0805101210000B080510121012101210000B08030008080E03000E08),
    .INIT_1F(256'h0810000E000E0B0B0B000A12101210000B0805100B0B0B0C0500030809000810),
    .INIT_20(256'h0E0B0805101210000B08031005000008030B0B05000108030B080B080B031201),
    .INIT_21(256'h0B080B080B03120008090008000E090001080B0B0312000E0B080B0512000D00),
    .INIT_22(256'h080B080B031202080B080B080B080B031202080B080B080B080B031202080B08),
    .INIT_23(256'h0A070B031202080B080B080B080B080B080B080B080B080B080B080B080B080B),
    .INIT_24(256'h0B0A05010808100512000C000E09000008030909090909090909090A0A0A0A0A),
    .INIT_25(256'h100E08120008100B080800020002000200020002000200020002000200020002),
    .INIT_26(256'h0A12101210000B0805100C0C0C0C05000108030B080B080B0312000809000A00),
    .INIT_27(256'h080305000008030B0B05000108030B080B080B0312010810000E000E0B0C0B00),
    .INIT_28(256'h0B000E000E000E0B06050008081005000E08120008100B0B0B000C000E010D0B),
    .INIT_29(256'h0B090B000D000E0B0A0A000D000E0B0909000D000E0B0908000D000E0B080800),
    .INIT_2A(256'h0D000E0B0808000D000E0B0908000B000E000E000E0B0808000B000E000E000E),
    .INIT_2B(256'h0B08031005000108090008100B0E090001080A0008100B08030E03000E080800),
    .INIT_2C(256'h03120008100D0805000C000C08031005000308080B03120008100B0805000800),
    .INIT_2D(256'h000E08080E08050008100E0A120008000308091005000E08031005000108080D),
    .INIT_2E(256'h03080B0008000E0A12000C000108100E08090E090A100A1200080003080A1005),
    .INIT_2F(256'h080B0008000E0A1200080A1005000E090500080A0E03000E08030008100E0B00),
    .INIT_30(256'h090E030001080B1005000E080A000A000108090E03000E08030008100E0B0003),
    .INIT_31(256'h1210000E090500080A0E03000E08030008100E0B0003080B0008000E0A120008),
    .INIT_32(256'h0E0803000C000E09050008090E03000E08030008100E0B0000080A1012101210),
    .INIT_33(256'h08000E0A1200080A1005000E09050108090E03051005000E09050008090E0300),
    .INIT_34(256'h000E0A1200080A1005000E09050008090E03000E08030008100E0B0003080B00),
    .INIT_35(256'h0008100E0B1200080A0E030001080B1005000E08030008100E0B0003080B0008),
    .INIT_36(256'h0B0003080B0008000E0A1200080A1005000E0A050108090E03051005000E0905),
    .INIT_37(256'h0E0A0500080A0E03000E080C000B000E0108100E0C0001080B000A000108100E),
    .INIT_38(256'h030E03000E0B03000D000E0E0B03000D000E0E0B03000D000E0E0A03000D000E),
    .INIT_39(256'h001F0010080B1005120008000308100408030603051005120008000308100B08),
    .INIT_3A(256'h08090007121007060808100808120008000108101003080810070608001F0008),
    .INIT_3B(256'h0710070708090610060708090700080808081008090003081008080808081008),
    .INIT_3C(256'h080810010C12100600080807080810010C00010808100607080810010C000808),
    .INIT_3D(256'h0607080810080809000912100605080900030810080809080907100712040808),
    .INIT_3E(256'h00080807080810010C12100612030808080810010C0008080610060708090610),
    .INIT_3F(256'h0008070808050805000C08061006060808100808080808100808081005061006),
    .INIT_40(256'h080A000810010C1210060710070008091200081008080A010A0001081008080A),
    .INIT_41(256'h0008080A000810030810080A0008080B000A1210070008080A000A1210070008),
    .INIT_42(256'h040809100607090810010810080A0008080A000A1210070008080A0009121007),
    .INIT_43(256'h0C000C080A000810010C121006060C04000C090A0305000108100A08080A0A12),
    .INIT_44(256'h100D09060008090C0810010C121006000C0A120008040C0A120008100C090700),
    .INIT_45(256'h08040E0810010C121006060E0810100F0A000308091006000108090D0B120008),
    .INIT_46(256'h0C0E000F0A1200080A0A01121007070E0810010C121006050E0E0B000F080A00),
    .INIT_47(256'h0E0810010C121006060E0810100F0B0000080A030810010C121007060E081001),
    .INIT_48(256'h0308000C000A1008070A081208000C000A1008070F04000A070C000806100607),
    .INIT_49(256'h1008070A081208000C000F08000F0008081005000A0708030008100A08000608),
    .INIT_4A(256'h0C0708030008100A09000F0008081005000A0705001008070A081208000C000A),
    .INIT_4B(256'h03000C07050C0008070C03000C07050C0008070C03000C07050C0008070C0300),
    .INIT_4C(256'h000C000C09000108090008100C09000C08030008070C03000C07050C0008070C),
    .INIT_4D(256'h000808050303000D0805000808050303000D08050008081005000C0812000809),
    .INIT_4E(256'h08100E08040E040510051205000808050303000D0805000808050303000D0805),
    .INIT_4F(256'h08080F03000E0804100D0C0C0C0C0B0B0B0B0A0A0A0A09090909041200080001),
    .INIT_50(256'h01080A1004000E08100108091003000E0810010C120008090E0A00010C120010),
    .INIT_51(256'h06040008100E09121006040008100E0A121006040E080A000C000E08040E0810),
    .INIT_52(256'h1006000E0904040505050008090E04000E0810010C120008090E0A00010C1210),
    .INIT_53(256'h0E0B00010C120008090E0A000108100E08040A000C000E0912000C000308080A),
    .INIT_54(256'h05000E09060E080B000C000E09060E08100108091006000E0810010C12000809),
    .INIT_55(256'h000E0906100612000805100A00100E08040A000C000E0912000C000308080A10),
    .INIT_56(256'h0F0A00010C120008090E0A00010C121004060008100E09121004060E080A000C),
    .INIT_57(256'h080E080E0B00000E000E000E000E00080A000C000E0A121003030E0803000810),
    .INIT_58(256'h0C000E08050E0810010809000A000E0E03051005120008100E08030305050300),
    .INIT_59(256'h090E0A00010C121004060008100E09121004060E080A000C000E09050E080A00),
    .INIT_5A(256'h1210000E09060E081001080A1006000E0810010C120008080E0A00010C120008),
    .INIT_5B(256'h0E09060E08100108091006000E0810010C120008090E0A00000E000E00080A10),
    .INIT_5C(256'h0B00010C121004060008100E09121004060E080B000C000E09060E080A000C00),
    .INIT_5D(256'h000E09060E081001080B1006000E0810010C1200080A0E0B00010C120008090E),
    .INIT_5E(256'h0E0B00010C121003050008100E0B121003050E080B000C000E0A060E080B000C),
    .INIT_5F(256'h080A1004000E09040108090F03000E08030008100F0B000108090E0B1200080A),
    .INIT_60(256'h08080E090000080B101210000E0A0400080A0E03000E08030008100E0B000E00),
    .INIT_61(256'h1005120008091003000E080510051210030A000805100A000E0E030510051200),
    .INIT_62(256'h000E09061006121004060008091006000E09121004050C0008090E04000E0905),
    .INIT_63(256'h04060008091006000E09121004050C0008080E04000E08061006120008091004),
    .INIT_64(256'h0E09121004060C0008090E04000E090610061200080A1004000E090610061210),
    .INIT_65(256'h000E090404060604000809040606000E09040406060404060606000809100600),
    .INIT_66(256'h080A1004000E09061006121004060008091006000E09121004060C0008090E04),
    .INIT_67(256'h1006121004060008091006000E09121004050C0008090E04000E090610061200),
    .INIT_68(256'h091006000E09121004050C0008090E04000E09061006120008091004000E0906),
    .INIT_69(256'h0C0008090E03000E090404050504000809040505000E09061006121004060008),
    .INIT_6A(256'h0E080E08030008090E03000E09051005121003050008091005000E0912100305),
    .INIT_6B(256'h0A000E08050E05030E08050008090E05000E09030E08030A0008100E0A000E08),
    .INIT_6C(256'h0E08050008080E05000E08040E08040A0008100E0A000E08050E05030008080E),
    .INIT_6D(256'h0E081003080809000C000E09000108100E080A0008100E0A00000E000E010810),
    .INIT_6E(256'h0E0A00000E000E00080A000D000E0E0A000108100E081001080A0008100E0A00),
    .INIT_6F(256'h0A000C000E0A000108100E081001080A0008100E0A000E08100308080A000C00),
    .INIT_70(256'h00010C12000809000C000E0900010C120010080A1006000E0A12101210120008),
    .INIT_71(256'h0C000E0B00010C120010080A1005000E0A12000C0001080A000C000E0A12000C),
    .INIT_72(256'h0500080A1005000F0A12000C0001080A000C000E0A12000C00010C1200080B00),
    .INIT_73(256'h0F080B000D000E0F0A121004030304040500080A1005000F0A12100403030404),
    .INIT_74(256'h0A120400080A000C000F0B000F1008030008090F04000F0A1200080903050500),
    .INIT_75(256'h08030C03051005120008000308030F04000F0A121012101200080A101210000F),
    .INIT_76(256'h100408030403051005120008000308100708030803051005120008000308100B),
    .INIT_77(256'h00000000000000000000000008030B0008130408030403051005120008000308),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_46 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_47 ,\douta[31] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[12] ),
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
module blk_mem_gen_3_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [12:0]addra;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_3_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "6" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.898385 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_3.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "6000" *) (* C_READ_DEPTH_B = "6000" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "6000" *) (* C_WRITE_DEPTH_B = "6000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_3_blk_mem_gen_v8_3_3
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
  blk_mem_gen_3_blk_mem_gen_v8_3_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_3_synth" *) 
module blk_mem_gen_3_blk_mem_gen_v8_3_3_synth
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [12:0]addra;
  input clka;

  wire [12:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_3_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
