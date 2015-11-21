library verilog;
use verilog.vl_types.all;
entity mux16to1_8 is
    port(
        outR0           : in     vl_logic_vector(7 downto 0);
        outR1           : in     vl_logic_vector(7 downto 0);
        outR2           : in     vl_logic_vector(7 downto 0);
        outR3           : in     vl_logic_vector(7 downto 0);
        outR4           : in     vl_logic_vector(7 downto 0);
        outR5           : in     vl_logic_vector(7 downto 0);
        outR6           : in     vl_logic_vector(7 downto 0);
        outR7           : in     vl_logic_vector(7 downto 0);
        outR8           : in     vl_logic_vector(7 downto 0);
        outR9           : in     vl_logic_vector(7 downto 0);
        outR10          : in     vl_logic_vector(7 downto 0);
        outR11          : in     vl_logic_vector(7 downto 0);
        outR12          : in     vl_logic_vector(7 downto 0);
        outR13          : in     vl_logic_vector(7 downto 0);
        outR14          : in     vl_logic_vector(7 downto 0);
        outR15          : in     vl_logic_vector(7 downto 0);
        Sel             : in     vl_logic_vector(3 downto 0);
        outBus          : out    vl_logic_vector(7 downto 0)
    );
end mux16to1_8;
