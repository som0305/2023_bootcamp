module testbench;
    reg a, b, c, d ; 
    wire out;

    encoder uut_encoder(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out)
    );

    initial begin
        a=1;
        b=0;
        c=0;
        d=0;
        #5;

        a=0;
        b=1;
        c=0;
        d=0;
        #5;


        a=0;
        b=0;
        c=1;
        d=0;
        #5;


        a=0;
        b=0;
        c=0;
        d=1;
        #5;

        $stop;
    
    end

endmodule