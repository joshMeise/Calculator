--
--receiver_tb.vhd --- testbench for receiver block.
--
--Author: Joshua Meise and Brandon Zhao
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.mypackage.all;

-- Enttity definition.
entity receiver_tb is
end receiver_tb;

-- Architecture definition.
architecture testbench of receiver_tb is
	component receiver is
    port (clk: in std_logic;
          RxPort: in std_logic;
          numPort: out signed(7 downto 0);
          RxDonePort: out std_logic);
	end component;
  
  signal clk: std_logic := '0';
  signal Rx, RxDonePort: std_logic := '0';
  signal numPort: signed(7 downto 0) := (others => '0');
  
begin
	uut: receiver
    port map (clk => clk,
              RxPort => Rx,
              numPort => numPort,
              RxDonePort => RxDonePort);
    
  clock: process
  begin
    clk <= '0';
    wait for 5ns;   
    
    clk <= '1';
    wait for 5ns;
  end process;
  
  stim: process
  begin
    Rx <= '1';
    wait for 20ns;
    -- 2
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- space
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- 1
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- space
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- 4
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- space
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- 6
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait for 1500ns;
    
    -- space
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '1';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait;
 	end process;
end testbench;
        
        
        
        
