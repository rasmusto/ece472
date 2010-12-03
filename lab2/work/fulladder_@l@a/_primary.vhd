library verilog;
use verilog.vl_types.all;
entity fulladder_LA is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        sum             : out    vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic
    );
end fulladder_LA;
