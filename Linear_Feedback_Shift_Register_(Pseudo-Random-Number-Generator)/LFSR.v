`timescale 1ns / 1ps


module LFSR(
    input clk,rst,output [3:0]Q
    );


    dff dff1(~(Q[3]^Q[2]),clk,1'b0,rst,Q[0]);
    dff dff2(Q[0],clk,rst,1'b0,Q[1]);
    dff dff3(Q[1],clk,rst,1'b0,Q[2]);
    dff dff4(Q[2],clk,rst,1'b0,Q[3]);
endmodule


module dff(
    input D,clk,rst,prst,
    output reg Q
    );
    always @(posedge clk)
    begin
    if(rst) begin
    Q<=0;
    end
    else if(prst) begin
    Q<=1;
    end
    else begin
    Q<=D;
    end
    end
endmodule
