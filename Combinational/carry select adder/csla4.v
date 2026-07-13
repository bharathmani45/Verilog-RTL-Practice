module csla4(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout);
wire [3:0] sum0;
wire [3:0] sum1;
wire cout0,cout1;
rca4 ra0 (
.a(a),
.b(b),
.cin(1'b0),
.sum(sum0),
.cout(cout0));
rca4 ra1 (
.a(a),
.b(b),
.cin(1'b1),
.sum(sum1),
.cout(cout1));
assign sum = cin ? sum1 : sum0 ;
assign cout = cin ? cout1 : cout0 ;
endmodule
