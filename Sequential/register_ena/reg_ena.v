module reg_ena(
input [3:0] d,
input clk,
input ena,
output reg [3:0] q);
always@(posedge clk)
begin
if(ena)
q<=d;
else
q<=d;
end
endmodule
