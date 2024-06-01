library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity calculator_tb is
end calculator_tb;

architecture testbench of calculator_tb is
  component calculator is
    port (clkExtPort: in std_logic;
          sumExtPort: in std_logic;
          multExtPort: in std_logic;
          subExtPort: in std_logic;
          RxExtPort: in std_logic;
          TxExtPort: out std_logic);
  end component;

  signal clk, sumExtPort, multExtPort, subExtPort, TxExtPort, Rx: std_logic := '0';
 
begin
  uut: calculator
    port map (clkExtPort => clk,
              sumExtPort => sumExtPort,
              multExtPort => multExtPort,
              subExtPort => subExtPort,
              RxExtPort => Rx,
              TXExtPort => TXExtPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    wait for 4000ns;
        Rx <= '1';
    wait for 20ns;
    -- 2
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';
    wait for 300us;
    
    -- 2
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';
    wait for 300us;
    
    -- 7
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';
    wait for 300us;
    
    -- space
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';
    wait for 7000us;

    
    sumExtPort <= '1';
    wait for 2000ns;
    sumExtPort <= '0';
    wait for 5000us;
    -- 2
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';
    wait for 300us;
    
    -- space
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '1';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    Rx <= '0';
    wait for 104us;
    
    Rx <= '1';

    wait;
  end process;   

end testbench;
