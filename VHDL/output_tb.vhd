library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.myPackage.all;

entity output_tb is
end output_tb;

architecture testbench of output_tb is
  component output is
    port (clkExtPort: in std_logic;
          inputExtPort: std_logic_vector(15 downto 0);
          btnExtPort: in std_logic;
          TxExtPort: out std_logic);
  end component;

  signal clk, btnExtPort, TxExtPort: std_logic := '0';
  signal inputExtPort: std_logic_vector(15 downto 0) := (others => '0');

begin
  uut: output
    port map (clkExtPort => clk,
              inputExtPort => inputExtPort,
              btnExtPort => btnExtPort,
              TxExtPort => TxExtPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    inputExtPort <= "0000000000000100";
    btnExtPort <= '1';
    wait for 2000ns;
    btnExtPort <= '0';
    wait;
  end process;
end testbench;

      
