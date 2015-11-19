library verilog;
use verilog.vl_types.all;
entity registerFile is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        srcRegA         : in     vl_logic_vector(2 downto 0);
        srcRegB         : in     vl_logic_vector(2 downto 0);
        destReg         : in     vl_logic_vector(2 downto 0);
        writeData       : in     vl_logic_vector(15 downto 0);
        outBusA         : out    vl_logic_vector(15 downto 0);
        outBusB         : out    vl_logic_vector(15 downto 0)
    );
end registerFile;
