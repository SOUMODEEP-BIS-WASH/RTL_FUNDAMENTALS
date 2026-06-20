`timescale 1ns/1ps

module up_counter(
    input clk,en,rst,
    output reg [1:0]Q
);
    always @(posedge clk) begin
        if(rst) begin
            Q<=0;
        end
        else if (en) begin
            Q<=Q+1;
        end
    end
endmodule