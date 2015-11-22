library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        AluIn1          : in     vl_logic_vector(15 downto 0);
        AluIn2          : in     vl_logic_vector(15 downto 0);
        AluOp           : in     vl_logic_vector(1 downto 0);
        AluOut          : out    vl_logic_vector(15 downto 0);
        flag            : out    vl_logic_vector(3 downto 0)
    );
end ALU;
