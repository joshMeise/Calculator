library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

library UNISIM;
use UNISIM.VComponents.all;

entity buttonInterface is
  port(clk: in  std_logic;
       buttonPort: in  std_logic;
       buttonMpPort: out std_logic);
end buttonInterface;

architecture behavioral of buttonInterface is

  signal synchronizer  : std_logic_vector(1 downto 0) := "00";
  signal synchronizedButtonPress  : std_logic := '0';

  type state is (low, lowToHigh, high, highToLow);
  signal cs, ns: state := low;
  signal counter: unsigned(7 downto 0) := (others => '0');
  signal reset: std_logic := '0';
  signal timeout: std_logic := '0';
  constant maxCount: integer := 10;
  signal debounced: std_logic := '0';

  signal mpDelayReg	: std_logic := '0';

begin
  synchronize: process(clk, synchronizer)
  begin
    if rising_edge(clk) then
      synchronizer <= buttonPort & synchronizer(1);
    end if;
    synchronizedButtonPress <= synchronizer(0);
  end process;

  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
        cs <= ns;
    end if;
  end process;

  combinational: process(cs, synchronizedButtonPress, timeout)
  begin
    -- Defaults.
    ns <= cs;
    reset <= '0';
    debounced <= '0';
    
    case cs is
      when low =>
        reset <= '1';
        if synchronizedButtonPress = '1' then
          ns <= lowToHigh;
        end if;
      when lowToHigh =>
        if synchronizedButtonPress = '0' then
          ns <= low;
        elsif timeout = '1' then
          ns <= high;
        end if;
      when high =>
        debounced <= '1';
        if synchronizedButtonPress = '0' then
          ns <= highToLow;
        end if;
      when highToLow =>
        debounced <= '1';
        if synchronizedButtonPress = '1' then
          ns <= high;
        elsif timeout = '1' then
          ns <= low;
        end if;
      when others =>
        ns <= low;
    end case;

  end process;  

  timing: process(clk, counter)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        counter <= (others => '0');
      else
        counter <= counter + 1;
      end if;
    end if;

    timeout <= '0';
    if counter = maxCount - 1 then
      timeout <= '1';
    end if;
  end process;
  
  monopulser: process(clk, buttonPort, mpDelayReg)
  begin	
    if rising_edge(clk) then	
      mpDelayReg <= buttonPort;
    end if;
    buttonMpPort <= buttonPort and not(mpDelayReg);
  end process monopulser;
end behavioral;
