library verilog;
use verilog.vl_types.all;
entity mux8to1 is
    port(
        outR0           : in     vl_logic_vector(15 downto 0);
        outR1           : in     vl_logic_vector(15 downto 0);
        outR2           : in     vl_logic_vector(15 downto 0);
        outR3           : in     vl_logic_vector(15 downto 0);
        outR4           : in     vl_logic_vector(15 downto 0);
        outR5           : in     vl_logic_vector(15 downto 0);
        outR6           : in     vl_logic_vector(15 downto 0);
        outR7           : in     vl_logic_vector(15 downto 0);
        Sel             : in     vl_logic_vector(2 downto 0);
        outBus          : out    vl_logic_vector(15 downto 0)
    );
end mux8to1;
