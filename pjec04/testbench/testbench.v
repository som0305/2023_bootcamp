module testbench;
    reg [3:0] in;
    wire [3:0] a, b, c, d;

    
    reg [1:0] sel;

    demux uut_demux(
        .in(in),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel)
    );

    initial begin
       in = 4'b1000;

       sel = 2'h0;
       #5; 

       sel = 2'h1;
       #5;

       sel = 2'h2;
       #5; 

       sel = 2'h3;
       #5;

        $stop;

    end

endmodule