--
--toOutput_tb.vhd --- toOutput testbench
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
entity toOutput_tb is
end toOutput_tb;

-- Architecture definiton.
architecture testbench of toOutput_tb is
  component toOutput is
    port (clk: in std_logic;
          TxReady: in std_logic;
          numReg: in regType;
          newNumReg: in std_logic;
          opReg: in regType;
          newOpReg: in std_logic;
          ansReg: in regType;
          newAnsReg: std_logic;
          numMaxAddr: in unsigned(7 downto 0);
          opMaxAddr: in unsigned(7 downto 0);
          ansMaxAddr: in unsigned(7 downto 0);
          data: out std_logic_vector(7 downto 0);
          newData: out std_logic;
          TCDone: out std_logic);
  end component;

  signal clk, TxReady, newNumReg, newOpReg, newAnsReg, newData, TCDone: std_logic := '0';
  signal numReg, opReg, ansReg: regType := (others => (others => '0'));
  signal numMaxAddr, opMaxAddr, ansMaxAddr: unsigned(7 downto 0) := (others => '0');

begin
  uut: toOutput
    port map (clk => clk,
              TxReady => TxReady,
              numReg => numReg,
              newNumReg => newNumReg,
              opReg => opReg,
              newOpReg => newOpReg,
              ansReg => ansReg,
              newAnsReg => newAnsReg,
              numMaxAddr => numMaxAddr,
              opMaxAddr => opMaxAddr,
              ansMaxAddr => ansMaxAddr,
              data => data,
              newData => newData,
              TCDone => TCDone);

  clock: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
  end process;

  stim: process
  begin
    numReg(0) <= "00110010";
    numReg(1) <= "00110100";
    numMaxAddr <= to_unsigned(2, 8);
    newNumReg <= '1';
    wait for 10ns;
    newNumReg < '0';
    wait;
  end process;
end testbench;

     
