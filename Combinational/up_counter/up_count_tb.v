module up_count_tb;
reg clk;
reg rst;
wire [3:0] q;
up_count uut(
.clk(clk),
.rst(rst),
.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, up_count_tb);
$monitor("$time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
rst=1;#8;
rst=0;#100;
rst=1;#5;
rst=0;#20;
$finish;
end
endmodule
