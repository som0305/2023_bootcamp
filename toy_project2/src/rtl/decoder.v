module decoder(
    input [1:0] dec_in,

    output dec_out_0,
    output dec_out_1,
    output dec_out_2,
    output dec_out_3

);

assign dec_out_0 = (dec_in == 2'h0)? 1'b1 : 1'b0;
assign dec_out_1 = (dec_in == 2'h1)? 1'b1 : 1'b0;
assign dec_out_2 = (dec_in == 2'h2)? 1'b1 : 1'b0;
assign dec_out_3 = (dec_in == 2'h3)? 1'b1 : 1'b0;

endmodule 