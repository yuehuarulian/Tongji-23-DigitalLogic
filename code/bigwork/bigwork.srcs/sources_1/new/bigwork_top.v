`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/23 19:06:32
// Design Name: 
// Module Name: bigwork_top
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


module GAME_TOP(
    //时钟
    input           clk_100,                //100Mhz:E3
    //复位控制
    input           rst,                    //复位:J15
    input           game_start,             //开始游戏 L16
    //VGA
    output [3:0]    color_r,                //R
    output [3:0]    color_g,                //G
    output [3:0]    color_b,                //B
    output          hs,                     //行同
    output          vs,                     //场同
    //七段数码管
    output [7:0] shift,
    output [6:0] oData,
    //MP3
    input           SO,                     //传出:G17
    input           DREQ,                   //数据请求，高电平时可传输数据:F18
    output          XCS,                    //片???SCI 传输读 写指令:C17
    output          XDCS,                   //片???SDI 传输数据:D17
    output          SCK,                    //时钟:D18
    output          SI,                     //传入mp3:E18
    output          XRESET,                 //硬件复位，低电平有效:E17
    //按键
    input [3:0]     music_id,              //第几首歌  v10 U11 U12 H6
    input [3:0]     button                 //按键控制游戏方块  3210 依次为左：P17 右M7 旋转N7 加速向下P8

    );
    //时钟
    wire clk_65,clk_12,clk_1000,clk_2,locked;
    //游戏是否结束
    wire gameover;
/*    //键盘输入
    wire [8:0] keys;
    wire key_state;*/
    //得分
    wire [31:0] score;
    //分频1
    clk_wiz_0 uut(
        .clk_in1(clk_100),
        .clk_out1(clk_65),
        .clk_out2(clk_12),//MP3
        .reset(~rst),//1有效
        .locked(locked)
    );

    //分频器2
    Divider uut_divider(
        .clk12Mhz(clk_12),
        .clk1000hz(clk_1000),
        .clk2Mhz(clk_2)
    );

    //VGA
    VGA uut_vga(
        .clk(clk_65),
        .rst(locked),
        .color_r(color_r),
        .color_g(color_g),
        .color_b(color_b),
        .hs(hs),
        .vs(vs),
        .game_over(game_over),
        .game_start(game_start),
        .button(button),
        .score(score)
    );
    
    //MP3
    MP3 uut_mp3(
        .clk(clk_2),
        .rst( rst),
        .play(game_start),
        .SO(SO),
        .DREQ(DREQ),
        .XCS(XCS),
        .XDCS(XDCS),
        .SCK(SCK),
        .SI(SI),
        .XRESET(XRESET),
        .music_id(music_id)
    );
    

    //数码管显示分数
    display_score uut_score(
        .clk_1000hz(clk_1000),
        .score(score),
        .shift(shift),//第几个数码管(片选)
        .oData(oData)
    );

endmodule
