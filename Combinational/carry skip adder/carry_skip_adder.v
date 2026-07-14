module carry_skip_adder(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout);
wire c4;
wire [3:0] p;
wire bp;
rca rca0 (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(c4));
assign p=a^b;
assign bp= &p;
assign cout = bp ? cin : c4 ;
endmodule
