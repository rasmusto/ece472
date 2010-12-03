library verilog;
use verilog.vl_types.all;
entity rom32 is
    generic(
        BASE_ADDRESS    : integer := 0
    );
    port(
        address         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end rom32;
