library verilog;
use verilog.vl_types.all;
entity signExtModule is
    port(
        offset5         : in     vl_logic_vector(4 downto 0);
        offset11        : in     vl_logic_vector(10 downto 0);
        offset8         : in     vl_logic_vector(7 downto 0);
        ctrSignExt      : in     vl_logic_vector(1 downto 0);
        signExtModuleOutput: out    vl_logic_vector(15 downto 0)
    );
end signExtModule;
