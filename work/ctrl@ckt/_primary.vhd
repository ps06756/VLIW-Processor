library verilog;
use verilog.vl_types.all;
entity ctrlCkt is
    port(
        opcode          : in     vl_logic_vector(4 downto 0);
        funcField       : in     vl_logic_vector(1 downto 0);
        immSrc          : out    vl_logic;
        regSrcB         : out    vl_logic;
        regDestB        : out    vl_logic;
        aluSrcA         : out    vl_logic_vector(1 downto 0);
        aluSrcB         : out    vl_logic;
        aluOp           : out    vl_logic_vector(1 downto 0);
        regWrite        : out    vl_logic;
        toReg           : out    vl_logic_vector(1 downto 0)
    );
end ctrlCkt;
