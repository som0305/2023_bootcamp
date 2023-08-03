module half_addr(
    input a,b,
    output sum,
    output cout
);

assign sum = a ^ b;
assign cout = a & b;
endmodule