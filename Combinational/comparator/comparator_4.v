module comparator_4(
input [3:0] a,
input [3:0] b,
output EQ,
output GT,
output LT
);
wire eq0,eq1,eq2,eq3,gt0,gt1,gt2,gt3,lt0,lt1,lt2,lt3;
comparator co0(
.a(a[0]),
.b(b[0]),
.EQ(eq0),
.GT(gt0),
.LT(lt0));
comparator co1(
.a(a[1]),
.b(b[1]),
.EQ(eq1),
.GT(gt1),
.LT(lt1));
comparator co2(
.a(a[2]),
.b(b[2]),
.EQ(eq2),
.GT(gt2),
.LT(lt2));
comparator co3(
.a(a[3]),
.b(b[3]),
.EQ(eq3),
.GT(gt3),
.LT(lt3));
assign EQ= (eq0&eq1&eq2&eq3);
assign GT= (gt3|(eq3&gt2)|(eq3&eq2&gt1)|(eq3&eq2&eq1&gt0));
assign LT= (lt3|(eq3&lt2)|(eq3&eq2&lt1)|(eq3&eq2&eq1&lt0));
endmodule
