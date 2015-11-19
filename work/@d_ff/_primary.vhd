library verilog;
use verilog.vl_types.all;
entity D_ff is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
end D_ff;
