--
--opToFIFO_tb.vhd --- testbench for opToFIFO block
--
--Author: Joshua Meise and Brandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

-- Entity definition.
entity opToFIFO_tb is
end opToFIFO_tb;

-- Architecture definition.
architecture testbench of opToFIFO_tb is

  component opToFIFO is
    port (clk: in std_logic;
          opPort: in opType;
          newOpPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  signal clk, newOpPort, newRegPort: std_logic := '0';
  signal maxAddrPort: unsigned(7 downto 0) := (others => '0');
  signal opPort: opType := sum;
  signal regPort: regType := (others => (others => '0'));

begin
  uut: opToFIFO
    port map (clk => clk,
              opPort => opPort,
              newOpPort => newOpPort,
              maxAddrPort => maxAddrPort,
              newRegPort => newRegPort,
              regPort => regPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    opPort <= sum;
    newOpPort <= '1';
    wait for 10ns;
    newOpPort <= '0';
    wait for 100ns;
    opPort <= sub;
    newOpPort <= '1';
    wait for 10ns;
    newOpPort <= '0';
    wait for 100ns;
    opPort <= mult;
    newOpPort <= '1';
    wait for 10ns;
    newOpPort <= '0';
    wait;

  end process;
end testbench;


