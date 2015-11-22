library verilog;
use verilog.vl_types.all;
entity cacheLine is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        decOut          : in     vl_logic_vector(7 downto 0);
        inVal           : in     vl_logic_vector(63 downto 0);
        outVal          : out    vl_logic_vector(63 downto 0)
    );
end cacheLine;
