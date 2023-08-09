module demux(
    input [1:0] sel,
    input [3:0] in,

    output [3:0] a,
    output [3:0] b,
    output [3:0] c,
    output [3:0] d

);

assign a = (sel==2'h0)? in : 4'h0;
assign b = (sel==2'h1)? in : 4'h0;
assign c = (sel==2'h2)? in : 4'h0;
assign d = (sel==2'h3)? in : 4'h0;


endmodule 

