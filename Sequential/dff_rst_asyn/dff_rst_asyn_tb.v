module dff_rst_asyn_tb;
reg d;
reg clk;
reg rst;
wire q;
dff_rst_asyn uut(
.d(d),
.clk(clk),
.rst(rst),
.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, dff_rst_asyn_tb);
$monitor("time=%0t d=%b clk=%b rst=%b q=%b",$time,d,clk,rst,q);
rst=1;d=1;#5;
rst=0;d=0;#6;
d=1;#6;
d=0;#6;
rst=1;#6;
rst=0;d=1;#5;
$finish;
end
endmodule
