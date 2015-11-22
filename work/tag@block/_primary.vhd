library verilog;
use verilog.vl_types.all;
entity tagBlock is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write           : in     vl_logic;
        tag             : in     vl_logic_vector(6 downto 0);
        tagData         : out    vl_logic_vector(6 downto 0)
    );
end tagBlock;
