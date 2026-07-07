module ha_tb;
reg a;
reg b;
wire s;
wire c;
ha uut(
.a(a),
.b(b),
.s(s),
.c(c)
);
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, ha_tb);
$monitor("time=%0t a=%b b=%b s=%b c=%b",$time,a,b,s,c);
a=0;b=0;#3;
a=0;b=1;#3;
a=1;b=0;#3;
a=1;b=1;#3;
$finish;
end
endmodule
