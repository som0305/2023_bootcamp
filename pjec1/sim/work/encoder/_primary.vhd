library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        \out\           : out    vl_logic
    );
end encoder;
