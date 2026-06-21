module alu(
input [3:0] A,
input [3:0] B,
input [2:0] sel,
output reg [4:0] Y
);

always @(*) begin
case(sel)

3'b000: Y = A + B;   // addition
3'b001: Y = A - B;   // subtraction
3'b010: Y = A & B;   // AND
3'b011: Y = A | B;   // OR
  3'b100: Y = {1'b0,~A};      // NOT

default: Y = 5'b00000;

endcase
end

endmodule
