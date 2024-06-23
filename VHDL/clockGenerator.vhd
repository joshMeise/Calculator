--
--clockGenerator.vhd --- clock didider divides 100Mhz system clock down to 1MHz.
-- Used clock divider from lab 5 as reference.
--Author: Joshua Meise and Brandon Zhao
--Created: 05-26-2024
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

-- entity definition.
entity clockGenerator is
  generic (clockDividerRatio: integer);
  port (clkExtPort: in std_logic;
        clkPort: out std_logic);
end clockGenerator;

-- Architecture definition.
architecture behavioral of clockGenerator is
  -- Constants and internal signals.
  constant clkDividerTC: integer := clockDividerRatio/2;
  constant countLen: integer := integer(ceil(log2(real(clkDividerTC))));
  signal clkDividerCtr: unsigned(countLen-1 downto 0) := (others => '0');
  signal clkTog: std_logic := '0';
  
begin
  clockDivider: process(clkExtPort)
  begin
    if rising_edge(clkExtPort) then
      -- Toggle the slowed clock when we reach 49 clock cycles and clear the
      -- counter, otherwise keep counting the number of clock cycles.
      if clkDividerCtr = clkDividerTC - 1 then
        clkTog <= not(clkTog);
        clkDividerCtr <= (others => '0');
      else
        clkDividerCtr <= clkDividerCtr + 1;
      end if;
    end if;
  end process;

  -- Add in a buffer.
  clkBuffer: BUFG
    port map (I => clkTog,
              O => clkPort);
  
end behavioral;

    
