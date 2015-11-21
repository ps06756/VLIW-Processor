library verilog;
use verilog.vl_types.all;
entity ID_EX is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        regOut1         : in     vl_logic_vector(15 downto 0);
        regOut2         : in     vl_logic_vector(15 downto 0);
        sExtOut         : in     vl_logic_vector(15 downto 0);
        ctr_Rd          : in     vl_logic_vector(2 downto 0);
        ctr_aluSrcA     : in     vl_logic_vector(1 downto 0);
        ctr_aluSrcB     : in     vl_logic;
        ctr_aluOp       : in     vl_logic_vector(1 downto 0);
        ctr_regWrite    : in     vl_logic;
        PC              : in     vl_logic_vector(15 downto 0);
        regOut3         : in     vl_logic_vector(15 downto 0);
        regOut4         : in     vl_logic_vector(15 downto 0);
        sExtOutNeecheWaala: in     vl_logic_vector(15 downto 0);
        RdNeecheWaala   : in     vl_logic_vector(2 downto 0);
        regWriteNeeche  : in     vl_logic;
        p1_regOut1      : out    vl_logic_vector(15 downto 0);
        p1_regOut2      : out    vl_logic_vector(15 downto 0);
        p1_sExtOut      : out    vl_logic_vector(15 downto 0);
        p1_Rd           : out    vl_logic_vector(2 downto 0);
        p1_aluSrcA      : out    vl_logic_vector(1 downto 0);
        p1_aluSrcB      : out    vl_logic;
        p1_aluOp        : out    vl_logic_vector(1 downto 0);
        p1_regWrite     : out    vl_logic;
        p1_PC           : out    vl_logic_vector(15 downto 0);
        p1_regOut3      : out    vl_logic_vector(15 downto 0);
        p1_regOut4      : out    vl_logic_vector(15 downto 0);
        p1_sExtOutNeecheWaala: out    vl_logic_vector(15 downto 0);
        p1_RdNeecheWaala: out    vl_logic_vector(2 downto 0);
        p1_regWriteNeeche: out    vl_logic
    );
end ID_EX;
