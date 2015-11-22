library verilog;
use verilog.vl_types.all;
entity reg8Bit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end reg8Bit;
