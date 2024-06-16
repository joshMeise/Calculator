--
--buttonInterface.vhd --- monopulses a button input
-- Used button interface from lab 5 as a reference.
--
--Author: Joshua Meise and Brandon Zhao
--

--Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity buttonInterface is
  port(clk: in std_logic;
       buttonPort: in std_logic;
       buttonMpPort: out std_logic);
end buttonInterface;

-- Architecture definition.
architecture behavioral of buttonInterface is
  -- INternal and control signals.
  signal mpDelayReg	: std_logic := '0';

begin
  -- Monopulse the button press.
  monopulser: process(clk, buttonPort, mpDelayReg)
  begin	
    if rising_edge(clk) then	
      mpDelayReg <= buttonPort;
    end if;
    buttonMpPort <= buttonPort and not(mpDelayReg);
  end process monopulser;
end behavioral;
