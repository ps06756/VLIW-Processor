library verilog;
use verilog.vl_types.all;
entity processor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Result          : out    vl_logic_vector(15 downto 0)
    );
end processor;
