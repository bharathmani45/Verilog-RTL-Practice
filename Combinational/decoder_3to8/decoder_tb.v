module decoder_tb;
reg [2:0] a;
wire [7:0] y;
decoder uut(
.a(a),
.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0 ,decoder_tb);
$monitor("time=%0t a=%b y=%b",$time,a,y);
a=3'b000;#6;
a=3'b001;#6;
a=3'b010;#6;
a=3'b011;#6;
a=3'b100;#6;
a=3'b101;#6;
a=3'b110;#6;
a=3'b111;#6;
$finish;
end
endmodule
