--
--datapath_tb.vhd --- testbench for the datapath
--
--Author: Joshua Meise and Brandon Zhao
--

-- Library iclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.myPackage.all;

entity datapath_tb is
end datapath_tb;

architecture testbench of datapath_tb is
  component datapath is
    port (clk: in std_logic;
          AEnPort: in std_logic;
          BEnPort: in std_logic;
          sumEnPort: in std_logic;
          subEnPort: in std_logic;
          multEnPort: in std_logic;
          resetEnPort: in std_logic;
          calcEnPort: in std_logic;
          numPort: in signed(7 downto 0);
          ansPort: out signed(15 downto 0);
          APort: out signed(15 downto 0);
          BPort: out signed(15 downto 0);
          opPort: out opType);
  end component;

  signal clk, AEnPort, BEnPort, sumEnPort, subEnPort, multEnPort, resetEnPort, calcEnPort: std_logic := '0';
  signal numPort: signed(7 downto 0) := (others => '0');
  signal ansPort, APort, BPort: signed(15 downto 0) := (others => '0');
  signal opPort: optype;

begin
  uut: datapth
    port map (clk => clk,
              AEnPort => AEnPort,
              BEnPort => BEnPort,
              sumEnPort => sumEnPort,
              subEnPort => subEnPort,
              multEnPort => multEnPort,
              resetEnPort => resetEnPort,
              calcEnPort => calcEnPort,
              numPort => numPort,
              ansPort => ansPort,
              APort => APort,
              BPort => BPort,
              opPort => opPort);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    numPort <= to_signed(6, 8);
    AEnPort <= '1';
    wait for 10ns;
    AEnPort <= '0';
    wait for 30ns;
    numPort <= to_signed(7, 8);
    BEnPort <= '1';
    wait for 10ns;
    BEnPort <= '0';
    wait for 30ns;
    sumEnPort <= '1';
    wait for 10ns;
    sumEnPort <= '0';
    wait for 30ns;
    calcEnPort <= '1';
    wait for 10ns;
    calcEnPort <= '0';
    wait or 30ns;
    subEnPort <= '1';
    wait for 10ns;
    subEnPort <= '0';
    wait for 30ns;
    calcEnPort <= '1';
    wait for 10ns;
    calcEnPort <= '0';
    wait or 30ns;
    multEnPort <= '1';
    wait for 10ns;
    multEnPort <= '0';
    wait for 30ns;
    calcEnPort <= '1';
    wait for 10ns;
    calcEnPort <= '0';
    wait;
  end process;
end testbench;
