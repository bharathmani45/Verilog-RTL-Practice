module reg_ena_tb;
reg [3:0] d;
reg clk;
reg ena;
wire [3:0] q;
reg_ena uut(
.d(d),
.clk(clk),
.ena(ena),
.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("time=%0t d=%b clk=%b ena=%b q=%b",$time,d,clk,ena,q);
$dumpfile("wave.vcd");
$dumpvars(0, reg_ena_tb);
ena=0;d=4'b0000;#3;
ena=1;d=4'b1010;#8;
d=4'b1111;#8;
ena=0;d=4'b1111;#5;
ena=1;d=4'b0001;#5;
$finish;
end
endmodule
