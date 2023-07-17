library verilog;
use verilog.vl_types.all;
entity jk_ff is
    port(
        j               : in     vl_logic;
        k               : in     vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : out    vl_logic
    );
end jk_ff;
