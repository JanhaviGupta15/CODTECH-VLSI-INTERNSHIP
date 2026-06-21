module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;
wire [4:0] Y;

alu uut (
.A(A),
.B(B),
.sel(sel),
.Y(Y)
);

initial begin
  
$dumpfile("dump.vcd");
$dumpvars(0, alu_tb);

A = 4'b0101; B = 4'b0011; sel = 3'b000; #10; // Add
A = 4'b0101; B = 4'b0011; sel = 3'b001; #10; // Sub
A = 4'b1010; B = 4'b1100; sel = 3'b010; #10; // AND
A = 4'b1010; B = 4'b1100; sel = 3'b011; #10; // OR
A = 4'b1010; B = 4'b0000; sel = 3'b100; #10; // NOT

end

endmodule
