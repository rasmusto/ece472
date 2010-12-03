library verilog;
use verilog.vl_types.all;
entity alu_ctl is
    generic(
        F_add           : integer := 32;
        F_sub           : integer := 34;
        F_and           : integer := 36;
        F_or            : integer := 37;
        F_slt           : integer := 42;
        ALU_add         : integer := 2;
        ALU_sub         : integer := 6;
        ALU_and         : integer := 0;
        ALU_or          : integer := 1;
        ALU_slt         : integer := 7
    );
    port(
        ALUOp           : in     vl_logic_vector(1 downto 0);
        Funct           : in     vl_logic_vector(5 downto 0);
        ALUOperation    : out    vl_logic_vector(2 downto 0)
    );
end alu_ctl;
