`timescale 1ns/1ps

module bi_shift_reg(
    input [1:0]S,
    input [3:0]Din,
    input ls_bit, rs_bit, clk, rst,
    output [3:0]Dout
);

wire y0,y1,y2,y3;

/*
S = 00 --> HOLD
S = 01 --> RIGHT SHIFT
S = 10 --> LEFT SHIFT
S = 11 --> PARALLEL LOAD
*/

mux4 mux0(S,Dout[0],rs_bit,Dout[1],Din[0],y0);
dff dff0(y0,clk,rst,Dout[0]);    

mux4 mux1(S,Dout[1],Dout[0],Dout[2],Din[1],y1);
dff dff1(y1,clk,rst,Dout[1]);

mux4 mux2(S,Dout[2],Dout[1],Dout[3],Din[2],y2);
dff dff2(y2,clk,rst,Dout[2]);

mux4 mux3(S,Dout[3],Dout[2],ls_bit,Din[3],y3);
dff dff3(y3,clk,rst,Dout[3]);

endmodule


module dff(
    input D,clk,rst,
    output reg Q
);

always @(posedge clk or posedge rst) 
begin
    if(rst) Q<=0;
    else Q<=D;
end
    
endmodule

module mux4(
    input [1:0]S,
    input I0,I1,I2,I3,
    output reg Y
);

always @(*) 
begin
    case (S)
        2'b00: Y=I0;
        2'b01: Y=I1;
        2'b10: Y=I2;
        2'b11: Y=I3;
        default: Y=I0;        
    endcase    
end

endmodule