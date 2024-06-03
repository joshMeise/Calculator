--
--buttonInterface.vhd --- monopulses and synchronizes a button input
-- Used button interface from lab 5 as a reference.
--
--Author: Joshua Meise and Brandon Zhao
--Created: 05-26-2024
--

--Library inclusions.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

-- Entity definition.
entity buttonInterface is
  port(clk: in  std_logic;
       buttonPort: in  std_logic;
       buttonMpPort: out std_logic);
end buttonInterface;

-- Architecture definition.
architecture behavioral of buttonInterface is
  -- INternal and control signals.
  signal synchronizer  : std_logic_vector(1 downto 0) := "00";
  signal synchronizedButtonPress  : std_logic := '0';
  signal mpDelayReg	: std_logic := '0';

begin
  -- Synchrinize the button press by sending it through 2 flip flops.
  synchronize: process(clk, synchronizer)
  begin
    if rising_edge(clk) then
      synchronizer <= buttonPort & synchronizer(1);
    end if;
    synchronizedButtonPress <= synchronizer(0);
  end process;

  -- Monopulse the button press.
  monopulser: process(clk, buttonPort, mpDelayReg)
  begin	
    if rising_edge(clk) then	
      mpDelayReg <= buttonPort;
    end if;
    buttonMpPort <= buttonPort and not(mpDelayReg);
  end process monopulser;
end behavioral;
