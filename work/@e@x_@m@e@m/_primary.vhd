library verilog;
use verilog.vl_types.all;
entity EX_MEM is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        aluOut          : in     vl_logic_vector(15 downto 0);
        p1_Rd           : in     vl_logic_vector(2 downto 0);
        p1_regWrite     : in     vl_logic;
        p1_outBusD      : in     vl_logic_vector(15 downto 0);
        AluKaOutputNeeche: in     vl_logic_vector(15 downto 0);
        p1_memRead      : in     vl_logic;
        p1_memWrite     : in     vl_logic;
        p1_RdNeecheWaala: in     vl_logic_vector(2 downto 0);
        p1_regWriteNeecheWaala: in     vl_logic;
        p2_aluOut       : out    vl_logic_vector(15 downto 0);
        p2_Rd           : out    vl_logic_vector(2 downto 0);
        p2_regWrite     : out    vl_logic;
        p2_outBusD      : out    vl_logic_vector(15 downto 0);
        p2_AluKaOutputNeeche: out    vl_logic_vector(15 downto 0);
        p2_memRead      : out    vl_logic;
        p2_memWrite     : out    vl_logic;
        p2_RdNeecheWaala: out    vl_logic_vector(2 downto 0);
        p2_regWriteNeecheWaala: out    vl_logic
    );
end EX_MEM;
