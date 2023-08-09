module encoder(
    input a,
    input b,
    input c,
    input d,

    output out
);

assign out = (a == 1'b1)? 2'h0:
             (b == 1'b1)? 2'h1:
             (c == 1'b1)? 2'h2:
             (d == 1'b1)? 2'h3: 2'h4;



endmodule 

