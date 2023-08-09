module shift_add(
    input clk, n_rst,
    input start,
    input [3:0] a, //multiplier
    input [3:0] b, //multiplicand

    output reg [7:0] p// product
);

reg [3:0] s_a; //sum_multiplier
reg [7:0] s_b; //sum_multiplier

always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        p <= 8'h0;
    else begin
        if(start == 1'b1)
            p <= (s_a[0] == 1'b1)? p + s_b : p;
        else begin
            p <= 8'h0;
        end
    end
end

always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        s_b <= b;
    else begin
        if(start == 1'b1)
            s_b <= s_b << 1;
        else
            s_b <= b;
    end
end 


always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        s_a <= a;
    else begin
        if(start == 1'b1)
            s_a <= s_a>> 1;
        else
            s_a <= a;
    end

end 


endmodule