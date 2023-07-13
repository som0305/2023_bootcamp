module testbench;
reg [1:0] dec_in;
wire dec_out_0;
wire dec_out_1;
wire dec_out_2;
wire dec_out_3;

decoder uut_decoder(
    .dec_in(dec_in),
    .dec_out_0(dec_out_0),
    .dec_out_1(dec_out_1),
    .dec_out_2(dec_out_2),
    .dec_out_3(dec_out_3)
);

initial begin
    dec_in = 0;
    #5;

    dec_in = 1;
    #5;

    dec_in = 0;
    #5;

    dec_in = 1;
    #5;

    $stop;
end

endmodule 