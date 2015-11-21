library verilog;
use verilog.vl_types.all;
entity dataMemActual is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        address         : in     vl_logic_vector(15 downto 0);
        dataIn          : in     vl_logic_vector(7 downto 0);
        memOut          : out    vl_logic_vector(7 downto 0)
    );
end dataMemActual;
