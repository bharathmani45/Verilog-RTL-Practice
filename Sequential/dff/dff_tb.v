module dff_tb;
reg d;
reg clk;
wire q;
dff uut(
.d(d),
.clk(clk),
.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, dff_tb);
$monitor("time=%0t d=%b clk=%b q=%b",$time,d,clk,q);
d=1;#7;
d=0;#10;
d=0;#10;
d=1;#15;
$finish;
end
endmodule
