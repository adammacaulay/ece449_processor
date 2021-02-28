library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity DECODER is
  port(
    instr      : in std_logic_vector(15 downto 0);
    op_code    : out std_logic_vector(5 downto 0);
    ra         : out std_logic_vector(2 downto 0);
    rb         : out std_logic_vector(2 downto 0);
    rc         : out std_logic_vector(2 downto 0);
    c1         : out std_logic_vector(3 downto 0);
    a0_format  : out std_logic;
    a1_format  : out std_logic;
    a2_format  : out std_logic;
    a3_format  : out std_logic
  );
end DECODER;

architecture Behavioural of DECODER is

    constant OP_NOP      : std_logic_vector := "000";
    constant OP_ADD      : std_logic_vector := "001";
    constant OP_SUB      : std_logic_vector := "010";
    constant OP_MUL      : std_logic_vector := "011";
    constant OP_NAND     : std_logic_vector := "100";
    constant OP_SHL      : std_logic_vector := "101";
    constant OP_SHR      : std_logic_vector := "110";
    constant OP_TEST     : std_logic_vector := "111";
  --ADD OTHER CODES FOR B AND L FORMAT HERE
  
  signal operation : std_logic_vector(5 downto 0);

begin

    operation <= instr(15 downto 9);
    ra <= instr(8 downto 6);
    rb <= instr(5 downto 3);
    rc <= instr(2 downto 0);
    c1 <= instr(3 downto 0);
    op_code <= operation;
    
    Decode: process(operation) is
    begin
      a0_format <= '0';
      a1_format <= '0';
      a2_format <= '0';
      a3_format <= '0';
    
      case operation is
        when OP_NOP     => a0_format <= '1';
        when OP_ADD     => a1_format <= '1';
        when OP_SUB     => a1_format <= '1';
        when OP_MUL     => a1_format <= '1';
        when OP_NAND    => a1_format <= '1';
        when OP_SHL     => a2_format <= '1';
        when OP_SHR     => a2_format <= '1';
        when OP_TEST    => a3_format <= '1';
        when others     => NULL;
       end case;
    end process; --Decode

end Behavioural; -- Behavioural