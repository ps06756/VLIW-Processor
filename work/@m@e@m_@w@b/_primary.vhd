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
        p2_toReg        : in     vl_logic_vector(1 downto 0);
        p3_aluOut       : out    vl_logic_vector(15 downto 0);
        p3_Rd           : out    vl_logic_vector(2 downto 0);
        p3_regWrite     : out    vl_logic;
        p3_toReg        : out    vl_logic_vector(1 downto 0)
    );
end MEM_WB;
