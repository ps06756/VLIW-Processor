library verilog;
use verilog.vl_types.all;
entity register16bitC is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        regWriteDoosra  : in     vl_logic;
        decOut1b        : in     vl_logic;
        decOut1bDoosra  : in     vl_logic;
        writeData       : in     vl_logic_vector(15 downto 0);
        writeDataDoosra : in     vl_logic_vector(15 downto 0);
        outR            : out    vl_logic_vector(15 downto 0)
    );
end register16bitC;
