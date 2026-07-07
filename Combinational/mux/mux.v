module mux(
input a,
input b,
input sel,
output reg y);
always@(*)
begin
if(sel)
y=b;
else
y=a;
end
endmodule
