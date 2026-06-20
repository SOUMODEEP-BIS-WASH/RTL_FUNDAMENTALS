`timescale 1ns/1ps

module BGConv #(parameter N = 4) (
    input [N-1:0]Bin,
    output reg [N-1:0]Gout
);

integer i;

always @(*) begin
    Gout[N-1] = Bin[N-1];
    for (i=N-2;i>=0;i=i-1) Gout[i] = Bin[i+1]^Bin[i]; 
end
    
endmodule