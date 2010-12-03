library verilog;
use verilog.vl_types.all;
entity mux4 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic
    );
end mux4;
