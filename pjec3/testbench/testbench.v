module testbench;
    reg [3:0] a,b,c,d;
    wire out;
    
    reg [1:0] sel;

    mux uut_mux(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out),
        .sel(sel)
    );

    initial begin
       a = 4'b0100; //4
       b = 4'b1000; //8
       c = 4'b1100; //12
       d = 4'b1111; //15

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