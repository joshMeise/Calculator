library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity calculator_tb is
end calculator_tb;

architecture testbench of calculator_tb is
  component calculator is
      port (clk: in std_logic;
            sumExtPort: in std_logic;
            multExtPort: in std_logic;
            subExtPort: in std_logic;
            loadExtPort: in std_logic;
            resetExtPort: in std_logic;
            inputExtPort: in std_logic_vector(15 downto 0);
            TxExtPort: out std_logic);
  end component;

  signal clk, sumExtPort, multExtPort, subExtPort, loadExtPort, resetExtPort, TXExtPort: std_logic := '0';
  signal inputExtPort: std_logic_vector(15 downto 0) := (others => '0');
 
begin
  uut: calculator
    port map (clk => clk,
              sumExtPort => sumExtPort,
              multExtPort => multExtPort,
              subExtPort => subExtPort,
              loadExtPort => loadExtPort,
              resetExtPort => resetExtPort,
              inputExtPort => inputExtPort,
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
    inputExtPort <= "0000000000001001";
    loadExtPort <= '1';
    wait for 10ns;
    loadExtPort <= '0';
    wait for 40000ns;
    subExtPort <= '1';
    wait for 10ns;
    subExtPort <= '0';
    wait for 40000ns;
    inputExtPort <= "0000000000001000";
    loadExtPort <= '1';
    wait for 10ns;
    loadExtPort <= '0';
    wait;
  end process;   

end testbench;
