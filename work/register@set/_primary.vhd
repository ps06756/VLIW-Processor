library verilog;
use verilog.vl_types.all;
entity registerSet is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        regWrite        : in     vl_logic;
        decOut          : in     vl_logic_vector(8 downto 0);
        writeData       : in     vl_logic_vector(15 downto 0);
        outR0           : out    vl_logic_vector(15 downto 0);
        outR1           : out    vl_logic_vector(15 downto 0);
        outR2           : out    vl_logic_vector(15 downto 0);
        outR3           : out    vl_logic_vector(15 downto 0);
        outR4           : out    vl_logic_vector(15 downto 0);
        outR5           : out    vl_logic_vector(15 downto 0);
        outR6           : out    vl_logic_vector(15 downto 0);
        outR7           : out    vl_logic_vector(15 downto 0)
    );
end registerSet;
