library verilog;
use verilog.vl_types.all;
entity mem32 is
    generic(
        BASE_ADDRESS    : integer := 0
    );
    port(
        clk             : in     vl_logic;
        mem_read        : in     vl_logic;
        mem_write       : in     vl_logic;
        address         : in     vl_logic_vector(31 downto 0);
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end mem32;
