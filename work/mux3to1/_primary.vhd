library verilog;
use verilog.vl_types.all;
entity mux3to1 is
    port(
        inp1            : in     vl_logic_vector(15 downto 0);
        inp2            : in     vl_logic_vector(15 downto 0);
        inp3            : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        muxOut          : out    vl_logic_vector(15 downto 0)
    );
end mux3to1;
