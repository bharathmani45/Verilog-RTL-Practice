module comparator_tb;
reg a;
reg b;
wire eq;
wire gt;
wire lt;
comparator uut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, comparator_tb);
$monitor("time=%0t a=%b b=%b eq=%b gt=%b lt=%b",$time,a,b,eq,gt,lt);
{a,b}=2'b00;#3;
{a,b}=2'b01;#3;
{a,b}=2'b10;#3;
{a,b}=2'b11;#3;
$finish;
end
endmodule
