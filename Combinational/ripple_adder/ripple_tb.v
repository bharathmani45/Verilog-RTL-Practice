module ripple_tb;
reg [3:0] a;
reg [3:0] b;
wire [3:0] s;
wire cout;
ripple_carry_adder uut (
.a(a),
.b(b),
.s(s),
.cout(cout));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,ripple_tb);
$monitor("time=%0t a=%b b=%b s=%b cout=%b",$time,a,b,s,cout);
{a,b}=8'b0000_0000;#3;
{a,b}=8'b0001_0001;#3;
{a,b}=8'b0010_0010;#3;
{a,b}=8'b0011_0011;#3;
{a,b}=8'b0100_0100;#3;
{a,b}=8'b0101_0101;#3;
{a,b}=8'b0110_0110;#3;
{a,b}=8'b0111_0111;#3;
{a,b}=8'b1000_1000;#3;
{a,b}=8'b1001_1001;#3;
{a,b}=8'b1010_1010;#3;
{a,b}=8'b1011_1011;#3;
{a,b}=8'b1100_1100;#3;
{a,b}=8'b1101_1101;#3;
{a,b}=8'b1110_1110;#3;
{a,b}=8'b1111_1111;#3;
$finish;
end
endmodule
