library verilog;
use verilog.vl_types.all;
entity control_pipeline is
    generic(
        R_FORMAT        : integer := 0;
        LW              : integer := 35;
        SW              : integer := 43;
        BEQ             : integer := 4;
        J               : integer := 2
    );
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        ALUSrc          : out    vl_logic;
        MemtoReg        : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        Jump            : out    vl_logic;
        ALUOp           : out    vl_logic_vector(1 downto 0)
    );
end control_pipeline;
