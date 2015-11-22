library verilog;
use verilog.vl_types.all;
entity cache is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        address         : in     vl_logic_vector(15 downto 0);
        inp             : in     vl_logic_vector(63 downto 0);
        outp            : out    vl_logic_vector(63 downto 0)
    );
end cache;
