`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/25 21:33:26
// Design Name: 
// Module Name: three_state_gates_tb
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


module three_state_gates_tb;
 reg iA; 
 reg iEna; 
 wire oTriState; 
three_state_gates uut (
.iA(iA), 
.iEna(iEna), 
.oTri(oTriState) 
); 
initial 
begin 
iA = 0; 
#40 iA = 1; 
 #40 iA = 0; 
 #40 iA = 1; 
end 
initial 
begin 
 iEna = 1; 
 #20 iEna = 0; 
 #40 iEna= 1; 
 #20 iEna = 0; 
end 
endmodule 

