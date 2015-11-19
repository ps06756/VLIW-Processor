library verilog;
use verilog.vl_types.all;
entity Mem is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        pc              : in     vl_logic_vector(15 downto 0);
        dataIn          : in     vl_logic_vector(15 downto 0);
        IR              : out    vl_logic_vector(15 downto 0)
    );
end Mem;
