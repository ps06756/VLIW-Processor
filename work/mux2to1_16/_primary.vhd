library verilog;
use verilog.vl_types.all;
entity mux2to1_16 is
    port(
        inp1            : in     vl_logic_vector(15 downto 0);
        inp2            : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic;
        muxOut          : out    vl_logic_vector(15 downto 0)
    );
end mux2to1_16;
