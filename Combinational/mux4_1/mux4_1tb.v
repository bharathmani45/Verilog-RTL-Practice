module mux4_1tb;
reg [3:0] a;
reg [1:0] sel;
wire y;
mux4_1 uut(.a(a),.sel(sel),.y(y));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, mux4_1tb);
$monitor("time=%0t a=%b sel=%b y=%b",$time,a,sel,y);
a=4'b1111;
sel=2'b00;#3;
sel=2'b01;#3;
sel=2'b10;#3;
sel=2'b11;#3;
a=4'b0000;
sel=2'b00;#3;
sel=2'b01;#3;
sel=2'b10;#3;
sel=2'b11;#3;
$finish;
end
endmodule
