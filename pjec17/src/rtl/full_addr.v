module full_addr(
    input a, b, cin,
    output cout,
    output sum
);


assign sum = a ^ b ^ cin;
assign cout = (a ^ b & b |(a & b));

endmodule