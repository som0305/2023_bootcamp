library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        a               : out    vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0);
        c               : out    vl_logic_vector(3 downto 0);
        d               : out    vl_logic_vector(3 downto 0)
    );
end demux;
