library verilog;
use verilog.vl_types.all;
entity MEM_WB is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        p2_aluOut       : in     vl_logic_vector(15 downto 0);
        p2_Rd           : in     vl_logic_vector(2 downto 0);
        p2_regWrite     : in     vl_logic;
        memoryKaOutput  : in     vl_logic_vector(7 downto 0);
        p2_regWriteNeeche: in     vl_logic;
        p2_RdNeecheWaala: in     vl_logic_vector(2 downto 0);
        p2_outBusA      : in     vl_logic_vector(15 downto 0);
        p2_outBusB      : in     vl_logic_vector(15 downto 0);
        p3_aluOut       : out    vl_logic_vector(15 downto 0);
        p3_Rd           : out    vl_logic_vector(2 downto 0);
        p3_regWrite     : out    vl_logic;
        p3_memoryKaOutput: out    vl_logic_vector(7 downto 0);
        p3_regWriteNeeche: out    vl_logic;
        p3_RdNeecheWaala: out    vl_logic_vector(2 downto 0);
        p3_outBusA      : out    vl_logic_vector(15 downto 0);
        p3_outBusB      : out    vl_logic_vector(15 downto 0)
    );
end MEM_WB;
