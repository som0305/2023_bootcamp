library verilog;
use verilog.vl_types.all;
entity full_addr is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        sum             : out    vl_logic;
        g               : out    vl_logic;
        p               : out    vl_logic
    );
end full_addr;
