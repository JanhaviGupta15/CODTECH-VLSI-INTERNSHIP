module fir_filter(
input clk,
input [3:0] x,
output reg [7:0] y
);

reg [3:0] x1, x2;
parameter h0 = 1;
parameter h1 = 2;
parameter h2 = 1;

always @(posedge clk) 
begin

x2 <= x1;
x1 <= x;
y <= (h0*x) + (h1*x1) + (h2*x2);

end
endmodule
