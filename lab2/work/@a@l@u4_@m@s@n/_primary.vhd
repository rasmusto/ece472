library verilog;
use verilog.vl_types.all;
entity ALU4_MSN is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        Carry_In        : in     vl_logic;
        Carry_Out       : out    vl_logic;
        OPCODE          : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        set             : out    vl_logic
    );
end ALU4_MSN;
