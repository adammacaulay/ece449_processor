library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.NUMERIC_STD.ALL;
use work.all;

entity test_alu is end test_alu;

architecture behavioural of test_alu is

  -- 100 MHz = 10 nanoseconds period
  constant CLOCK_PERIOD : time := 10 ns; 

  signal clock      : std_logic := '0';
  signal reset      : std_logic := '0';
  signal in1        : std_logic_vector(15 downto 0);
  signal in2        : std_logic_vector(15 downto 0);
  signal alu_mode   : std_logic_vector(2 downto 0); 
  signal result     : std_logic_vector(15 downto 0);
  signal overflow   : std_logic_vector(15 downto 0);
  signal z_flag     : std_logic := '0';
  signal n_flag     : std_logic := '0';
  signal o_flag     : std_logic := '0';

  -- Component declaration for the Unit Under Test (UUT)
  component ALU 
   port(
     reset      : in std_logic;
     in1        : in std_logic_vector(15 downto 0);
     in2        : in std_logic_vector(15 downto 0);
     alu_mode   : in std_logic_vector(2 downto 0); 
     result_l   : out std_logic_vector(15 downto 0);
     result_u   : out std_logic_vector(15 downto 0);
     z_flag     : out std_logic;
     n_flag     : out std_logic;
     o_flag     : out std_logic
  );
  end component; 

  begin
 
  -- Instantiate the Unit Under Test (UUT)
  UUT: entity work.ALU
  port map(
      clk => clock,
      rst => reset,
      in1 => in1,
      in2 => in2,
      alu_mode => alu_mode,
      result => result,
      overflow => overflow,
      z_flag => z_flag,
      n_flag => n_flag,
      o_flag => o_flag);

  CLK_GEN : process is
  begin
    wait for CLOCK_PERIOD/2;
    clock <= not clock;
  end process CLK_GEN; 

  tb1: process begin
    reset <= '1';
    wait for 10 us;
    reset <= '0';
    
    alu_mode <= "000";
    wait for 10 us; 
    
    alu_mode <= "001";
    in1 <= X"0190";
    in2 <= X"3456";
    wait for 10 us;
    
    in1 <= X"ff76";
    in2 <= X"ff87";
    wait for 10 us;
    
    in1 <= X"7fed";
    in2 <= X"7edc";
    wait for 10 us;
    
    alu_mode <= "010";
    in1 <= X"3456";
    in2 <= X"0190";
    wait for 10 us;
    
    in1 <= X"0010";
    in2 <= X"ff00";
    wait for 10 us;
    
    in1 <= X"7fff";
    in2 <= X"ff00";
    wait for 10 us;
    
    alu_mode <= "011";
    in1 <= X"0010";
    in2 <= X"000a";
    wait for 10 us;
    
    in1 <= X"0020";
    in2 <= X"fff7";
    wait for 10 us;
    
    in1 <= X"7000";
    in2 <= X"0fff";
    wait for 10 us;
    
    alu_mode <= "100";
    in1 <= X"aaaa";
    in2 <= X"cccc";
    wait for 10 us;
    
    alu_mode <= "101";
    in1 <= X"000f";
    in2 <= X"0004";
    wait for 10 us;
    
    in1 <= X"fff0";
    wait for 10 us;
    
    alu_mode <= "110";
    in1 <= X"f000";
    in2 <= X"0004";
    wait for 10 us;
    
    in1 <= X"0fff";
    wait for 10 us;
    
    alu_mode <= "111";
    in1 <= X"0000";
    wait for 10 us;
    
    in1 <= X"0005";
    wait for 10 us;
    
    in1 <= X"fff5";
    wait for 10 us;
    
    reset <= '1';
    wait for 10 us;

 end process;

 
end behavioural;