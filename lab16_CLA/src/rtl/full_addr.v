module full_addr(
    input a, b, cin,
    output sum, g, p
);

assign sum = p ^ cin;
assign g = a & b;
assign p = a ^ b;

endmodule 