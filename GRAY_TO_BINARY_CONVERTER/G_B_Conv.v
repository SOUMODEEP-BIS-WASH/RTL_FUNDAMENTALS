`timescale 1ns/1ps

module GBConv #(parameter N=4) 
(
    input [N-1:0]Gin,
    output reg [N-1:0]Bout
);

integer i;

always @(*) begin
    Bout[N-1] = Gin[N-1];
    for(i=N-2;i>=0;i=i-1) Bout[i]=Bout[i+1]^Gin[i];
end
    
endmodule