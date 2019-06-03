ountO`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 03.06.2019 10:17:12
// Design Name: OneForConsecutiveOnes
// Module Name: OneForConsecutiveOnes
// Project Name: Elevator
// Target Devices: NA
// Tool Versions: NA
// Description: To count number of groups of ones 
// 
// Dependencies: NA
// 
// Revision:Not Required
// Revision 0.01 - File Created
// Additional Comments:NA
// 
//////////////////////////////////////////////////////////////////////////////////


module test_bench(
    );
      wire [7:0]count;
      reg clk,rst;
      reg din;//[7:0]in;
      OneForConsecutiveOnes q(count,clk,rst,din);
      always #5 clk=~clk;
      initial begin
      clk<=1;// in<=93;
      rst<=1;
      #10 rst<=0;
      //#20 in<=91;
      #20 din<=1;
      #20 din<=1;
      #20 din<=1;
      #20 din<=1;
      #20 din<=0;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=0;
      #20 din<=1;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      #20 din<=0;
      #20 din<=1;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=1;
      #20 din<=0;
      #20 din<=1;
      #20 din<=0;
      end
endmodule
