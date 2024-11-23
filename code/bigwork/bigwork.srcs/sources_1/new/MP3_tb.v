`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/23 18:09:46
// Design Name: 
// Module Name: MP3_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MP3_tb();
reg clk,rst,play,SO,DREQ;
reg [3:0] music_id;
wire XCS,XDCS,SCK,SI,XRESET;
MP3 uut_mp3(
    .clk(clk),
    .rst( rst),
    .play(play),
    .SO(SO),
    .DREQ(DREQ),
    .XCS(XCS),
    .XDCS(XDCS),
    .SCK(SCK),
    .SI(SI),
    .XRESET(XRESET),
    .music_id(music_id)
);
  always 
  begin
    clk = 0;
    #81 clk = ~clk;
  end
  initial begin
    # 1
    rst = 1;
    play = 0;
    SO = 0;
    DREQ = 0;
    music_id = 4'b0000;
    #50 play = 1;
    /*    #100;
        play = 0;
    
        // Finish simulation after some cycles
        #500 $finish;*/
  end
endmodule
