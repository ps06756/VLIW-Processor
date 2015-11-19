library verilog;
use verilog.vl_types.all;
entity IF_ID is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        instr           : in     vl_logic_vector(15 downto 0);
        p0_intr         : out    vl_logic_vector(15 downto 0)
    );
end IF_ID;
