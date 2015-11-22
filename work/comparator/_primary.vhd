library verilog;
use verilog.vl_types.all;
entity comparator is
    port(
        input_1         : in     vl_logic_vector(6 downto 0);
        input_2         : in     vl_logic_vector(6 downto 0);
        enable          : in     vl_logic;
        comparatorOut   : out    vl_logic
    );
end comparator;
