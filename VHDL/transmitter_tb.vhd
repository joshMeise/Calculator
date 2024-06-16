--
--transmitter_tb.vhd --- testbench for transmitter
--
--Author: Joshua Meise and Brandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity transmitter_tb is
end transmitter_tb;

architecture testbench of transmitter_tb is
  component transmitter is
    port (clk: in std_logic;
          data: in std_logic_vector(7 downto 0);
          newData: in std_logic;
          Tx: out std_logic;
          TxReady: out std_logic);
  end component;

  signal clk, newData, TxReady, Tx: std_logic := '0';
  signal data: std_logic_vector(7 downto 0) := (others => '0');

begin
  uut: transmitter
    port map (clk => clk,
              data => data,
              newData => newData,
              Tx => Tx,
              TxReady => TxReady);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    data <= "01001100";
    newData <= '1';
    wait for 10ns;
    newData <= '0';
    wait;
  end process;
end testbench;

      
