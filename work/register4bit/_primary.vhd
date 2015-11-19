library verilog;
use verilog.vl_types.all;
entity register4bit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut1b        : in     vl_logic;
        writeData       : in     vl_logic_vector(3 downto 0);
        outR            : out    vl_logic_vector(3 downto 0)
    );
end register4bit;
