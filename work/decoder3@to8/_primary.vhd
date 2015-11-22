library verilog;
use verilog.vl_types.all;
entity decoder3To8 is
    port(
        inp             : in     vl_logic_vector(2 downto 0);
        decOut          : out    vl_logic_vector(3 downto 0)
    );
end decoder3To8;
