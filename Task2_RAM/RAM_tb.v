module RAM_tb;

reg clk;
reg we;
reg [2:0] add;
reg [3:0] din;
wire [3:0] dout;

RAM uut (
.clk(clk),
.we(we),
.add(add),
.din(din),
.dout(dout)
);

always #5 clk = ~clk;

initial begin

$dumpfile("dump.vcd");
  $dumpvars(0, RAM_tb);

clk = 0;

we = 1; add = 3'b000; din = 4'b1010; #10;
we = 1; add = 3'b001; din = 4'b1100; #10;

we = 0; add = 3'b000; #10;
we = 0; add = 3'b001; #10;
#10;
$finish;

end

endmodule
