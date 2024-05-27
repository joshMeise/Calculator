library IEEE;
use IEEE.std_logic_1164.all;

entity input_tb is
end input_tb;

architecture testbench of input_tb is
  component input is
    port (clkExt: in std_logic;
          buttonPort: in std_logic;
          inputExtPort: in std_logic_vector(7 downto 0);
          TxPort: out std_logic);
  end component;

  signal clk, buttonPort, TxPort: std_logic := '0';
  signal inputExtPort: std_logic_vector(7 downto 0) := (others => '0');

begin
  uut: input
    port map (clkExt => clk,
              buttonPort => buttonPort,
              inputExtPort => inputExtPort,
              TxPort => TxPort);

  clocking: process
  begin
    clk <= '0';
    wait for 5ns;
    clk <='1';
    wait for 5ns;
  end process;

  stim: process
  begin
    inputExtPort <= "00110010";
    buttonPort <= '1';
    wait for 1000ns;
    buttonPort <= '0';
    wait;
  end process;

end testbench;
  
