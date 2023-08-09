library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        dec_in          : in     vl_logic_vector(1 downto 0);
        dec_out_0       : out    vl_logic;
        dec_out_1       : out    vl_logic;
        dec_out_2       : out    vl_logic;
        dec_out_3       : out    vl_logic
    );
end decoder;
