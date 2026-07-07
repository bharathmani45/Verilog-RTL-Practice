module demux_tb;
reg d;
reg [1:0] sel;
wire [3:0] y;
demux uut(
.d(d),
.sel(sel),
.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, demux_tb);
$monitor("time=%0t d=%b sel=%b y=%b",$time,d,sel,y);
d=1;
sel=2'b00;#5;
sel=2'b01;#5;
sel=2'b10;#5;
sel=2'b11;#5;
d=0;
sel=2'b00;#5;
sel=2'b01;#5;
sel=2'b10;#5;
sel=2'b11;#5;
$finish;
end
endmodule
