module pipeline(
input clk,
input [1:0] opcode,
input [3:0] A,
input [3:0] B,
output reg [4:0] result
);

reg [1:0] op_IF, op_ID, op_EX;
reg [3:0] A_IF, A_ID, A_EX;
reg [3:0] B_IF, B_ID, B_EX;
reg [4:0] EX_result;

always @(posedge clk)
begin

// Stage 1: Fetch
op_IF <= opcode;
A_IF <= A;
B_IF <= B;

// Stage 2: Decode
op_ID <= op_IF;
A_ID <= A_IF;
B_ID <= B_IF;

// Stage 3: Execute
op_EX <= op_ID;
A_EX <= A_ID;
B_EX <= B_ID;

case(op_EX)
2'b00: EX_result <= A_EX + B_EX;
2'b01: EX_result <= A_EX - B_EX;
2'b10: EX_result <= B_EX; //we are directly loading what was in B
default: EX_result <= 5'b00000;
endcase

// Stage 4: Writeback
result <= EX_result;

end
endmodule
