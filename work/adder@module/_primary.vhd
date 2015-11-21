library verilog;
use verilog.vl_types.all;
entity adderModule is
    port(
        inp1            : in     vl_logic_vector(15 downto 0);
        inp2            : in     vl_logic_vector(15 downto 0);
        adderKaResult   : out    vl_logic_vector(15 downto 0)
    );
end adderModule;
