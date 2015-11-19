library verilog;
use verilog.vl_types.all;
entity register1bit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        writeData       : in     vl_logic;
        outR            : out    vl_logic
    );
end register1bit;
