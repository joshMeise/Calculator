--
--numToFIFO_tb.vhd --- testbench for numToFIFO
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
entity numToFIFO_tb is
end numToFIFO_tb;

-- Architecture definition.
architecture testbench of numToFIFO_tb is
  component numToFIFO is
    port (clk: in std_logic;
          ANumPort: in signed(15 downto 0);
          newANumPort: in std_logic;
          BNumPort: in signed(15 downto 0);
          newBNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  signal clk, newANumPort, newBNumPort, newRegPort: std_logic := '0';
  signal ANumPort, BNumPort: signed(15 downto 0) := (others => '0');
  signal maxAddrPort: unsigned(7 downto 0) := (others => '0');
  signal regPort: regType := (others => (others => '0'));

begin
  uut: numToFIFO
    port map (clk => clk,
              ANumPort => ANumPort,
              newANumPort => newANumPort,
              BNumPort => BNumPort,
              newBNumPort => newBNumPort,
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
    ANumPort <= to_signed(123, 16);
    newANumPort <= '1';
    wait for 10ns;
    newANumPort <= '0';
    wait for 100ns;
    BNumPort <= to_signed(-13, 16);
    newBNumPort <= '1';
    wait for 10ns;
    newBNumPort <= '0';
    wait;
  end process;
end testbench;

    
