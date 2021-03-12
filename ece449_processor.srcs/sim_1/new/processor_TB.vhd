library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor_TB is
--  Port ( );
end processor_TB;

architecture Behavioural of processor_TB is

  -- 100 MHz = 10 nanoseconds period
  constant CLOCK_PERIOD : time := 10 ns;
  
  signal clock      : std_logic := '0';
  signal reset      : std_logic := '0';
  signal inport     : std_logic_vector(15 downto 0);
  signal outport    : std_logic_vector(15 downto 0);

  -- Component declaration for the Unit Under Test (UUT)
  component PROCESSOR 
   port(
     clk        : in std_logic;
     rstt      : in std_logic;
     inport     : in std_logic_vector(15 downto 0);
     outport    : out std_logic_vector(15 downto 0)
  );
  end component; 

begin

  -- Instantiate the Unit Under Test (UUT)
  UUT: entity work.processor
  port map(
    clk => clock,
    rst => reset,
    inport => inport,
    outport => outport
  );
  
  CLK_GEN : process is
  begin
    wait for CLOCK_PERIOD/2;
    clock <= not clock;
  end process CLK_GEN; 
  
  tb1: process begin
    reset <= '1';
    inport <= x"004F";
    wait for 1 us;
    reset <= '0';
    
    wait for 1 us;
  end process;
  
end Behavioural;
