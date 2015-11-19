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
        p1_toReg        : in     vl_logic_vector(1 downto 0);
        p2_aluOut       : out    vl_logic_vector(15 downto 0);
        p2_Rd           : out    vl_logic_vector(2 downto 0);
        p2_regWrite     : out    vl_logic;
        p2_toReg        : out    vl_logic_vector(1 downto 0)
    );
end EX_MEM;
