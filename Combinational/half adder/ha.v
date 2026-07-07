module ha(
input a,
input b,
output reg s,
output reg c);
always@(*)
begin
case({a,b})
2'b00:begin
s=0;c=0;
end
2'b01:begin
s=1;c=0;
end
2'b10:begin
s=1;c=0;
end
2'b11:begin
s=0;c=1;
end
default:begin
s=0;c=0;
end
endcase
end
endmodule
