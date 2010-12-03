library verilog;
use verilog.vl_types.all;
entity lookahead is
    port(
        p3              : in     vl_logic;
        p2              : in     vl_logic;
        p1              : in     vl_logic;
        p0              : in     vl_logic;
        g3              : in     vl_logic;
        g2              : in     vl_logic;
        g1              : in     vl_logic;
        g0              : in     vl_logic;
        c0              : in     vl_logic;
        c1              : out    vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        P               : out    vl_logic;
        G               : out    vl_logic
    );
end lookahead;
