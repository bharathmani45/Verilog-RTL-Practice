module comparator(
input a,
input b,
output EQ,
output GT,
output LT
);
assign EQ=(a^~b);
assign GT=(a&~b);
assign LT=(~a&b);
endmodule
