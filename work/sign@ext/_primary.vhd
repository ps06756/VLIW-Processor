library verilog;
use verilog.vl_types.all;
entity signExt is
    port(
        immShort        : in     vl_logic_vector(2 downto 0);
        immLong         : in     vl_logic_vector(7 downto 0);
        immSrc          : in     vl_logic;
        sextOutput      : out    vl_logic_vector(15 downto 0)
    );
end signExt;
