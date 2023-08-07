module full_addr(
    input a, b, ci,
    output s, g, p
);

assign s = p^ci;
assign g = a & b;
assign p = a^b;`

endmodule 