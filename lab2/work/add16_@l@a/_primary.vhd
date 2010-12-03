library verilog;
use verilog.vl_types.all;
entity add16_LA is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        sum             : out    vl_logic_vector(15 downto 0)
    );
end add16_LA;
