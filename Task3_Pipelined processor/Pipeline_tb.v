module pipeline_tb;

reg clk;
reg [1:0] opcode;
reg [3:0] A;
reg [3:0] B;
wire [4:0] result;

pipeline uut (
.clk(clk),
.opcode(opcode),
.A(A),
.B(B),
.result(result)
);

always #5 clk = ~clk;

initial begin

$dumpfile("dump.vcd");
$dumpvars(0, pipeline_tb);

clk = 0;

// Instruction 1: ADD
opcode = 2'b00; A = 4'b0101; B = 4'b0011; #10;

// Instruction 2: SUB
opcode = 2'b01; A = 4'b1000; B = 4'b0010; #10;

// Instruction 3: LOAD
opcode = 2'b10; A = 4'b0000; B = 4'b0111; #10;

#30;
$finish;

end
endmodule
