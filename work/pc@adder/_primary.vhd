library verilog;
use verilog.vl_types.all;
entity pcAdder is
    port(
        pc              : in     vl_logic_vector(15 downto 0);
        newPC           : out    vl_logic_vector(15 downto 0)
    );
end pcAdder;
