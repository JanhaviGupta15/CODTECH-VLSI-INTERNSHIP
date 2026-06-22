module RAM(
input clk, we,
input [2:0] add,
input [3:0] din,
output reg [3:0] dout
);

reg [3:0] memory [7:0];

always @(posedge clk)
begin

if(we)
memory[add] <= din;

else
dout <= memory[add];

end

endmodule
