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
    input               game_start,        //��Ϸ��ʼ��1Ϊ��ʼ��0Ϊδ��ʼ��L16
    input               clk,               //25MHZʱ��
    input               rst,               //��λ
    input [3:0]         button,            //����  3210 ����Ϊ�� �� ��ת ��������
    output reg [3:0]    color_r,    //R
    output reg [3:0]    color_g,    //G
    output reg [3:0]    color_b,    //B
    output               hs,        //��ͬ��
    output               vs,        //��ͬ��
    output               game_over, //��Ϸ����
    output      [32:0]   score      //�÷�
    );
    //1024*768/60Hz  
    //��ʱ����
    parameter  HS_SYNC     = 136,   //ͬ������
                HS_BACK     = 160,   //��ʾ����
                HS_ACTIVE   = 1024,  //�ֱ���/��ʾ����
                HS_FRONT    = 24;    //��ʾǰ��
    //��ʱ����
    parameter  VS_SYNC     = 6,     //ͬ������
                VS_BACK     = 29,    //��ʾ����
                VS_ACTIVE   = 768,   //�ֱ���
                VS_FRONT    = 3;     //��ʾǰ��
    //֡��
    parameter   COL = 1344,ROW = 806,FRAM = 60;
    //������
    reg [11:0]  h_cnt = 12'd0;      //�м�����
    reg [11:0]  v_cnt = 12'd0;      //��������
    reg [11:0]  f_cnt = 12'b0;      //֡���������������Ʒ�������
    reg clk1s = 0;
    //������ת����
    wire [11:0] x;
    wire [11:0] y;//����
    wire active;//��ʾ�Ƿ����

    wire [199:0] tetris_whole;     //��¼�Ѿ��еķ��� 10*20
    wire [199:0] tetris_new;      //��¼����ķ���  
     
    //��¼ÿһ���ӵ�����
    parameter Tetris_Size = 38;
    //��¼����λ��
    reg[4:0] tetris_x;
    reg[4:0] tetris_y;
    //�÷ַ���
    //wire [3:0] msg;
        
    //��ʼ��ʾ
    always @(posedge clk) begin
        if(active) begin
            //tetris[0]=1;/////
            color_r = 4'd0;color_g = 4'd0;color_b = 4'd0;//��ɫ
            //����Χ�߿�
            if(x >= 300 && x < 724 ) begin
                color_r <= 4'd15;color_g <= 4'd15;color_b <= 4'd15;//��ɫ
            end
            //�ڲ�
            if(x >= 322 && x < 702 && y >= 8 && y < 768) begin
                tetris_x = (x - 322) / Tetris_Size;//λ��
                tetris_y = (y - 8) / Tetris_Size;
                
                //����
                color_r <= 4'd2;color_g <= 4'd14;color_b <= 4'd14;//��������ɫ
                //����
                if(!((x - 322) % Tetris_Size) || !((y - 8) % Tetris_Size)) begin
                    color_r <= 4'd15;color_g <= 4'd15;color_b <= 4'd15;//��ɫ
                end
                //����
                else begin
                    if(tetris_whole[tetris_x * 20 + tetris_y] | tetris_new[tetris_x * 20 + tetris_y]) begin//����
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


 
    //���
    tetris_control uut_tetris(
        .rst(game_start),
        .clk(clk1s),             //clkΪ1���ı�һ������
        .tetris_whole(tetris_whole),
        .tetris_new(tetris_new),
        .game_over(game_over),
        .button(button),
        .score(score)
    );

    //��ͬ��ѭ��
    always @(posedge clk or negedge rst) begin
        if(!rst)                                     //��λ�ź�����
            h_cnt <= 12'd0;
        else if(h_cnt == COL-1)                      //һ�н�������
            h_cnt <= 12'd0;
        else
            h_cnt <= h_cnt + 1'b1;                   //����
    end

    //��ͬ��ѭ��
    always @(posedge clk or negedge rst) begin
        if(!rst)
            v_cnt <= 12'd0;
        else if(v_cnt == ROW-1)
            v_cnt <= 12'd0;
        else if(h_cnt == COL-1)                      //��������h_cnt�Ƶ�����ʱ��v_cnt+1
            v_cnt <= v_cnt + 1'b1;
        else
            v_cnt <= v_cnt;
    end
    

    //֡������һ��һ��ѭ��
    always @(posedge clk) begin
        if(f_cnt == FRAM/4 - 1) begin                    //60֡����1s  0.5s
            f_cnt <= 12'd0;
            clk1s <= ~clk1s;
        end
        else if(v_cnt == ROW - 1)                      //��������v_cnt�Ƶ�����ʱ��f_cnt+1
            f_cnt <= f_cnt + 1'b1;
        else
            f_cnt <= f_cnt;
    end

    //�����ͬ������ͬ��
    assign hs = (h_cnt < HS_SYNC)? 1'b0 : 1'b1;
    assign vs = (v_cnt < VS_SYNC)? 1'b0 : 1'b1;
    assign active =  (h_cnt >= (HS_SYNC + HS_BACK))  &&                 //�Ƿ���ͼƬ��ʾ��Чʱ��
                     (h_cnt <= (HS_SYNC + HS_BACK + HS_ACTIVE))  &&     //����ʾʱ��
                     (v_cnt >= (VS_SYNC + VS_BACK))  &&
                     (v_cnt <= (VS_SYNC + VS_BACK + VS_ACTIVE))  ;      //����ʾʱ��

    assign x = (active) ? h_cnt - (HS_SYNC + HS_BACK):0;                //x��y����
    assign y = (active) ? v_cnt - (VS_SYNC + VS_BACK):0;
endmodule
