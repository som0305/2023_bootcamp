module shift_register(
    input clk,
    input n_rst,
    output reg [3:0] out
);

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        out <= 4'h0001;
    end
    else begin
        out[0] <= out[1];
        out[1] <= out[2];
        out[2] <= out[3];
        out[3] <= 1'b0 ;
    end
    end
    
endmodule 
