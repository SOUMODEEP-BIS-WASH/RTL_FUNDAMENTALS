`timescale 1ns/1ps

module count12(
    input en, clk, rst,
    output reg [3:0]count
);

always @(posedge clk or posedge rst) 
begin
    if(rst) count <= 4'b0000;
    else 
    begin
        if (en && (count<4'b1100) ) count <= count + 1;    
        else if (en && (count == 4'b1100)) count <= 4'b0000;
        else count = count; 
    end
end
endmodule