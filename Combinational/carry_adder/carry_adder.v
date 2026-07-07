module carry_adder(
input [3:0] a,
input [3:0] b,
output [3:0] s,
input cin,
output c5);
wire p1,p2,p3,p4;
wire g1,g2,g3,g4;
wire c1,c2,c3,c4;
assign c1=cin;
assign g1=a[0]&b[0];
assign g2=a[1]&b[1];
assign g3=a[2]&b[2];
assign g4=a[3]&b[3];
assign p1=a[0]^b[0];
assign p2=a[1]^b[1];
assign p3=a[2]^b[2];
assign p4=a[3]^b[3];
assign s[0]=p1^c1;
assign s[1]=p2^c2;
assign s[2]=p3^c3;
assign s[3]=p4^c4;
assign c2=g1|(p1&c1);
assign c3=g2|(g1&p2)|(p2&p1&c1);
assign c4=g3|(g2&p3)|(g1&p2&p3)|(p3&p2&p1&c1);
assign c5=g4|(g3&p4)|(g2&p3&p4)|(g1&p2&p3&p4)|(p4&p3&p2&p1&c1);
endmodule
