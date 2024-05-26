library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library UNISIM;
use UNISIM.VComponents.all;

entity buttonInterface_tb is
end entity;

architecture testbench of buttonInterface_tb is

  component buttonInterface is
    port(clk: in std_logic;
         buttonPort: in std_logic;
         buttonMpPort: out std_logic);
  end component;

  signal clk: std_logic := '0';
  signal button: std_logic := '0';
  signal monopulsed: std_logic := '0';
begin
  uut: buttonInterface
    port map(clk => clk,		
             buttonPort => button,
             buttonMpPort	=> monopulsed);

  clocking: process
  begin
    clk <= not(clk);
    wait for 5ns;
  end process;

  stim: process
  begin				
    --Sit at Input for 10 clk cycles
    wait for 10*10ns;
    --Bounce:
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    --Settle out at HIGH:
    button <= '1'; wait for 170*10ns;
    --Bounce:
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    button <= '1'; wait for 10ns;
    button <= '0'; wait for 10ns;
    --Settle out at LOW:
    button <= '0'; wait for 170*10ns;
    
    wait;
end process;

end testbench;
