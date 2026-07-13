module csla_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
csa4 uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,csa_tb);
$monitor("time=%0t a=%b b=%b cin=%b sum=%b cout=%b " ,$time,a,b,cin,sum,cout);
    cin=1'b0;
    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0001; b = 4'b0001; #10;
    a = 4'b0010; b = 4'b0011; #10;
    a = 4'b0101; b = 4'b0011; #10;
    a = 4'b0111; b = 4'b0001; #10;
    a = 4'b1111; b = 4'b0001; #10;
    a = 4'b1111; b = 4'b1111; #10;
    cin=1'b1;
    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0001; b = 4'b0001; #10;
    a = 4'b0010; b = 4'b0011; #10;
    a = 4'b0101; b = 4'b0011; #10;
    a = 4'b0111; b = 4'b0001; #10;
    a = 4'b1111; b = 4'b0001; #10;
    a = 4'b1111; b = 4'b1111; #10;
$finish;
end
endmodule
