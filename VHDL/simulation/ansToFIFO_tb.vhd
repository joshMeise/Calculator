--
--ansToFIFO_tb.vhd --- testbench for ansToFIFO block
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
entity ansToFIFO_tb is
end ansToFIFO_tb;

-- Architecture definition.
architecture testbench of ansToFIFO_tb is
  component ansToFIFO is
    port (clk: in std_logic;
          numPort: in signed(15 downto 0);
          newNumPort: in std_logic;
          maxAddrPort: out unsigned(7 downto 0);
          newRegPort: out std_logic;
          regPort: out regType);
  end component;

  signal clk, newNumPort, newRegPort: std_logic := '0';
  signal numPort: signed(15 downto 0) := (others => '0');
  signal regPort: regType := (others => (others => '0'));

begin
  uut: ansToFIFO
    port map (clk => clk,
              numPort => numPort,
              newNumPort => newNumPort,
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
    numPort <= to_signed(12, 16);
    newNumPort <= '1';
    wait for 10ns;
    newNumPort <= '0';
    wait for 300ns;
    numPort <= to_signed(-12, 16);
    newNumPort <= '1';
    wait for 10ns;
    newNumPort <= '0';
    wait;
  end process;
end testbench;

    
    
    
