module tb;
reg [1:0] a;
wire [3:0] y;
decoder uut(.a(a),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, tb);
$monitor("time=%0t a=%b y=%b",$time,a,y);
a=2'b00;#5;
a=2'b01;#5;
a=2'b10;#5;
a=2'b11;#5;
$finish;
end
endmodule
