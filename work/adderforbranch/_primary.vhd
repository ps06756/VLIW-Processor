library verilog;
use verilog.vl_types.all;
entity adderforbranch is
    port(
        PC              : in     vl_logic_vector(15 downto 0);
        shiftedvalue    : in     vl_logic_vector(15 downto 0);
        opcodebit       : in     vl_logic;
        zeroflag        : in     vl_logic;
        BranchAddress   : out    vl_logic_vector(15 downto 0)
    );
end adderforbranch;
