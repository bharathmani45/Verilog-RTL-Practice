module ripple_carry_adder(
input [3:0] a,
input [3:0] b,
output cout,
output [3:0] s );
wire c0,c1,c2;
full_adder fa1 (
.a(a[0]),
.b(b[0]),
.cout(c0),
.cin(1'b0),
.s(s[0]));
full_adder fa2 (
.a(a[1]),
.b(b[1]),
.cout(c1),
.cin(c0),
.s(s[1]));
full_adder fa3 (
.a(a[2]),
.b(b[2]),
.cout(c2),
.cin(c1),
.s(s[2]));
full_adder fa4 (
.a(a[3]),
.b(b[3]),
.cout(cout),
.cin(c2),
.s(s[3]));
endmodule
