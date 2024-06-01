-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.mypackage.all;

entity receiver_tb is
end receiver_tb;

architecture testbench of receiver_tb is

	component receiver is
    port (clk: in std_logic;
          Rx: in std_logic;
          mat: out matrix;
          matReadyPort: out std_logic);
	end component;
  
  signal clk: std_logic := '0';
  signal Rx, matReady: std_logic;
  signal mat: matrix;
  
begin
	uut: receiver
    port map (clk => clk,
              Rx => Rx,
              mat => mat,
              matReadyPort => matReady);
    
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
    Rx <= '1';
    wait for 1us;
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
    Rx <= '0';
    wait for 1us;
    
    Rx <= '1';
    wait;
 	end process;
end testbench;
        
        
        
        
