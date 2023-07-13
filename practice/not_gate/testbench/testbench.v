module testbench;
    reg a;
    reg b;
    wire out;

    not_gate uut_not(
        .a(a),
        .out(out)
    );

    and_gate uut_and(
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        a=0;
        #5;

        a=1;
        #5;

        a=0;
        #5;

        a=1;
        #5;

        $stop;
    end

endmodule

