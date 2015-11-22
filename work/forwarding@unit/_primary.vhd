library verilog;
use verilog.vl_types.all;
entity forwardingUnit is
    port(
        presentRs       : in     vl_logic_vector(2 downto 0);
        presentRt       : in     vl_logic_vector(2 downto 0);
        exmemRd         : in     vl_logic_vector(2 downto 0);
        memwbRd         : in     vl_logic_vector(2 downto 0);
        exmemregwrite   : in     vl_logic;
        memwbregwrite   : in     vl_logic;
        muxsourcea      : out    vl_logic_vector(1 downto 0)
    );
end forwardingUnit;
