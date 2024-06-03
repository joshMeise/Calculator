--
--transmitter.vhd --- SCI transmitter
--
--Author: Joshua Meise and brandon Zhao
--Created: 05-27-2024
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity transmitter is
port (clk: in std_logic;
	  data: in std_logic_vector(7 downto 0);
      newData: in std_logic;
      Tx: out std_logic;
      TxReady: out std_logic);
end transmitter;

-- Architecture definition.
architecture behavioral of transmitter is
  -- Internal signals and counters.
  signal baudCtr: unsigned(13 downto 0) := (others => '0');
  signal bitCtr: unsigned(4 downto 0) := (others => '0');
  signal tcBaud, tcBit: std_logic := '1';
  signal intData: std_logic_vector(9 downto 0) := (others => '1');
  signal intDone: std_logic := '0';
  
begin
	datapath: process(clk, baudCtr, bitCtr, newData)
  begin
    if rising_edge(clk) then
      -- Shift data out once each baud period.
      if tcBaud = '1' then
        intData <= '1' & intData(9 downto 1);
      end if;

      -- Load new data when new data arrives.
      if newData = '1' then
        intData <= '1' & data & '0';
      end if;

      -- Increase the baud counter once each clock cycle and reset it when new
      -- data arrives from the FIFO or when we reach the maximum baud count.
      baudCtr <= baudCtr + 1;
      if ((tcBaud = '1') or (newData = '1')) then
        baudCtr <= (others => '0');
      end if;
            
      -- Increase the bit counter once per baud period.
      if tcBaud = '1' then
        bitCtr <= bitCtr + 1;
      elsif tcBit = '1' then
        bitCtr <= (others => '0');
      end if;

      -- Clear the bit counter when receiving new data.
      if newData = '1' then
        bitCtr <= (others => '0');
      end if;
    end if;

    -- Send TC baud high when we have reached 104 clock cycles, corresponding
    -- to 9600 baud.
    tcBaud <= '0';
    if baudCtr = 104 then
      tcBaud <= '1';
    end if;

    -- Indicate that we have sent out 10 bits.
    tcBit <= '0';
    if bitCtr = 10 then
      tcBit <= '1';
    end if;
    -- Ensure that TC bit is low when new data is received.
    if newData = '1' then
      tcBit <= '0';
    end if;
  end process;

  -- Tie TX line to the least significant data bit in the data register,
  Tx <= intData(0);
  txReady <= tcBit;
	
end behavioral;
      
      
      
