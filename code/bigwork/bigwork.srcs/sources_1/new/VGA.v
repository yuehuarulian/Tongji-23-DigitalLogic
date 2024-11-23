`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/23 23:20:51
// Design Name: 
// Module Name: VGA
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

module VGA(
    input               game_start,        //游戏开始，1为开始，0为未开始：L16
    input               clk,               //25MHZ时钟
    input               rst,               //置位
    input [3:0]         button,            //按键  3210 依次为左 右 旋转 加速向下
    output reg [3:0]    color_r,    //R
    output reg [3:0]    color_g,    //G
    output reg [3:0]    color_b,    //B
    output               hs,        //行同步
    output               vs,        //场同步
    output               game_over, //游戏结束
    output      [32:0]   score      //得分
    );
    //1024*768/60Hz  
    //行时序常数
    parameter  HS_SYNC     = 136,   //同步脉冲
                HS_BACK     = 160,   //显示后沿
                HS_ACTIVE   = 1024,  //分辨率/显示区域
                HS_FRONT    = 24;    //显示前沿
    //场时序常数
    parameter  VS_SYNC     = 6,     //同步脉冲
                VS_BACK     = 29,    //显示后沿
                VS_ACTIVE   = 768,   //分辨率
                VS_FRONT    = 3;     //显示前沿
    //帧长
    parameter   COL = 1344,ROW = 806,FRAM = 60;
    //计数器
    reg [11:0]  h_cnt = 12'd0;      //行计数器
    reg [11:0]  v_cnt = 12'd0;      //场计数器
    reg [11:0]  f_cnt = 12'b0;      //帧计数器，用来控制方块下落
    reg clk1s = 0;
    //计数器转坐标
    wire [11:0] x;
    wire [11:0] y;//坐标
    wire active;//显示是否可用

    wire [199:0] tetris_whole;     //记录已经有的方块 10*20
    wire [199:0] tetris_new;      //记录下落的方块  
     
    //记录每一格子的像素
    parameter Tetris_Size = 38;
    //记录格子位置
    reg[4:0] tetris_x;
    reg[4:0] tetris_y;
    //得分反馈
    //wire [3:0] msg;
        
    //开始显示
    always @(posedge clk) begin
        if(active) begin
            //tetris[0]=1;/////
            color_r = 4'd0;color_g = 4'd0;color_b = 4'd0;//黑色
            //最外围边框
            if(x >= 300 && x < 724 ) begin
                color_r <= 4'd15;color_g <= 4'd15;color_b <= 4'd15;//白色
            end
            //内部
            if(x >= 322 && x < 702 && y >= 8 && y < 768) begin
                tetris_x = (x - 322) / Tetris_Size;//位置
                tetris_y = (y - 8) / Tetris_Size;
                
                //背景
                color_r <= 4'd2;color_g <= 4'd14;color_b <= 4'd14;//背景蓝绿色
                //边线
                if(!((x - 322) % Tetris_Size) || !((y - 8) % Tetris_Size)) begin
                    color_r <= 4'd15;color_g <= 4'd15;color_b <= 4'd15;//白色
                end
                //方块
                else begin
                    if(tetris_whole[tetris_x * 20 + tetris_y] | tetris_new[tetris_x * 20 + tetris_y]) begin//方块
                        color_r <= 4'd15;
                        color_g <= 4'd10;
                        color_b <= 4'd10;
                    end
                end
            end
        end
        else begin
                color_r = 4'd0;color_g = 4'd0;color_b = 4'd0;
        end

    end


 
    //轨道
    tetris_control uut_tetris(
        .rst(game_start),
        .clk(clk1s),             //clk为1，改变一次数组
        .tetris_whole(tetris_whole),
        .tetris_new(tetris_new),
        .game_over(game_over),
        .button(button),
        .score(score)
    );

    //行同步循环
    always @(posedge clk or negedge rst) begin
        if(!rst)                                     //复位信号置零
            h_cnt <= 12'd0;
        else if(h_cnt == COL-1)                      //一行结束置零
            h_cnt <= 12'd0;
        else
            h_cnt <= h_cnt + 1'b1;                   //计数
    end

    //场同步循环
    always @(posedge clk or negedge rst) begin
        if(!rst)
            v_cnt <= 12'd0;
        else if(v_cnt == ROW-1)
            v_cnt <= 12'd0;
        else if(h_cnt == COL-1)                      //计数，以h_cnt计到满的时候v_cnt+1
            v_cnt <= v_cnt + 1'b1;
        else
            v_cnt <= v_cnt;
    end
    

    //帧计数，一秒一次循环
    always @(posedge clk) begin
        if(f_cnt == FRAM/4 - 1) begin                    //60帧就是1s  0.5s
            f_cnt <= 12'd0;
            clk1s <= ~clk1s;
        end
        else if(v_cnt == ROW - 1)                      //计数，以v_cnt计到满的时候f_cnt+1
            f_cnt <= f_cnt + 1'b1;
        else
            f_cnt <= f_cnt;
    end

    //输出场同步与行同步
    assign hs = (h_cnt < HS_SYNC)? 1'b0 : 1'b1;
    assign vs = (v_cnt < VS_SYNC)? 1'b0 : 1'b1;
    assign active =  (h_cnt >= (HS_SYNC + HS_BACK))  &&                 //是否是图片显示有效时间
                     (h_cnt <= (HS_SYNC + HS_BACK + HS_ACTIVE))  &&     //行显示时序
                     (v_cnt >= (VS_SYNC + VS_BACK))  &&
                     (v_cnt <= (VS_SYNC + VS_BACK + VS_ACTIVE))  ;      //列显示时序

    assign x = (active) ? h_cnt - (HS_SYNC + HS_BACK):0;                //x，y坐标
    assign y = (active) ? v_cnt - (VS_SYNC + VS_BACK):0;
endmodule
