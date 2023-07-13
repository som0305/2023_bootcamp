module mux(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,

    input[1:0] sel,

    output out
);

assign out = (sel==2'h0)? a:
             (sel==2'h1)? b:
             (sel==2'h2)? c: d;

endmodule