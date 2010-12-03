library verilog;
use verilog.vl_types.all;
entity stall_unit is
    port(
        IF_pc           : in     vl_logic_vector(31 downto 0);
        EX_MemRead      : in     vl_logic;
        EX_rt           : in     vl_logic_vector(4 downto 0);
        ID_rs           : in     vl_logic_vector(4 downto 0);
        ID_rt           : in     vl_logic_vector(4 downto 0);
        ID_RegDst_in    : in     vl_logic;
        ID_ALUOp_in     : in     vl_logic_vector(1 downto 0);
        ID_ALUSrc_in    : in     vl_logic;
        ID_Branch_in    : in     vl_logic;
        ID_MemRead_in   : in     vl_logic;
        ID_MemWrite_in  : in     vl_logic;
        ID_RegWrite_in  : in     vl_logic;
        ID_MemtoReg_in  : in     vl_logic;
        IF_pc4_in       : in     vl_logic_vector(31 downto 0);
        ID_RegDst       : out    vl_logic;
        ID_ALUOp        : out    vl_logic_vector(1 downto 0);
        ID_ALUSrc       : out    vl_logic;
        ID_Branch       : out    vl_logic;
        ID_MemRead      : out    vl_logic;
        ID_MemWrite     : out    vl_logic;
        ID_RegWrite     : out    vl_logic;
        ID_MemtoReg     : out    vl_logic;
        IF_pc4          : out    vl_logic_vector(31 downto 0)
    );
end stall_unit;
