library verilog;
use verilog.vl_types.all;
entity ALU16 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        OPCODE          : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        Zero            : out    vl_logic;
        Overflow        : out    vl_logic
    );
end ALU16;
