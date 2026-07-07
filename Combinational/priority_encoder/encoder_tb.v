module encoder_tb;
reg [3:0] a;
wire valid;
wire [1:0] y;
encoder uut(.a(a),.valid(valid),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, encoder_tb);
$monitor("time=%0t a=%b valid=%b y=%b",$time,a,valid,y);
a=4'b0000;#5;
a=4'b0001;#5;
a=4'b0100;#5;
a=4'b1000;#5;
a=4'b1010;#5;
a=4'b0111;#5;
a=4'b1111;#5;
$finish;
end
endmodule
