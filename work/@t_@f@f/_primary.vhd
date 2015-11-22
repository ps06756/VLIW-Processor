library verilog;
use verilog.vl_types.all;
entity T_FF is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
end T_FF;
