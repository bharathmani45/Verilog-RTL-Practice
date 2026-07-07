module encoder(
input [3:0] a,
output reg valid,
output reg [1:0] y);
always@(*)
begin
valid=0;
y=2'b00;
if(a[3])
begin
valid=1;
y=2'b11;
end
else if(a[2])
begin
valid=1;
y=2'b10;
end
else if(a[1])
begin
valid=1;
y=2'b01;
end
else if(a[0])
begin
valid=1;
y=2'b00;
end
end
endmodule
