module comparator_4_tb;
reg [3:0] a;
reg [3:0] b;
wire EQ;
wire GT;
wire LT;
comparator_4 uut(
.a(a),
.b(b),
.EQ(EQ),
.GT(GT),
.LT(LT));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,comparator_4_tb);
$monitor("time=%0t a=%b b=%b EQ=%b GT=%b LT=%b",$time,a,b,EQ,GT,LT);
{a,b}=8'b0000_0000;#3;
{a,b}=8'b0001_0000;#3;
{a,b}=8'b0000_0001;#3;
{a,b}=8'b1010_1001;#3;
{a,b}=8'b0110_1001;#3;
{a,b}=8'b1111_1111;#3;
{a,b}=8'b1000_0111;#3;
{a,b}=8'b0111_1000;#3;
$finish;
end
endmodule
