`timescale 1ns/1ps

module ALU #(parameter N=4)(
    input [N-1:0]A,B,
    input [2:0]S,
    output reg [N-1:0]Y
);
   always @(*) begin
    case(S)
        3'b000: Y=0;
        3'b001: Y=A+B;
        3'b010: Y=A-B;
        3'b011: Y=A*B;
        3'b100: Y=A&B;
        3'b101: Y=A|B;
        3'b110: Y=~(A&B);
        3'b111: Y=~(A|B);
        default: Y=0;
    endcase 
   end

endmodule