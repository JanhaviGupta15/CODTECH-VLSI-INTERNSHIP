module fir_filter_tb;

reg clk;
reg [3:0] x;
wire [7:0] y;

fir_filter uut (
.clk(clk),
.x(x),
.y(y)
);

always #5 clk = ~clk;

initial begin

$dumpfile("dump.vcd");
$dumpvars(0, fir_filter_tb);

clk = 0;

// Input samples
x = 4'd2; #10;
x = 4'd4; #10;
x = 4'd6; #10;
x = 4'd8; #10;
x = 4'd10; #10;

#10;
$finish;

end
endmodule
