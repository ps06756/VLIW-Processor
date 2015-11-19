library verilog;
use verilog.vl_types.all;
entity decoder3to8 is
    port(
        destReg         : in     vl_logic_vector(2 downto 0);
        decOut          : out    vl_logic_vector(7 downto 0)
    );
end decoder3to8;
