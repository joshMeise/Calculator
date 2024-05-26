library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_pkg.all;

--library work;
--suse work.myPackage.all;
--use work.fixed_pkg.all;

entity transmitter is
port (clk: in std_logic;
	  data: in std_logic_vector(7 downto 0);
      newData: in std_logic;
      Tx: out std_logic;
      TxReady: out std_logic);
end transmitter;

architecture behavioral of transmitter is
    signal baudCtr: unsigned(13 downto 0) := (others => '0');
    signal bitCtr: unsigned(4 downto 0) := (others => '0');
    signal tcBaud, tcBit: std_logic := '1';
    signal intData: std_logic_vector(9 downto 0) := (others => '1');
    signal intDone: std_logic := '0';
begin
	datapath: process(clk, baudCtr, bitCtr, newData)
    begin
    	if rising_edge(clk) then
        	
            if tcBaud = '1' then
            	intData <= '1' & intData(9 downto 1);
            end if;
            if newData = '1' then
            	intData <= '1' & data & '0';
            end if;
            
            baudCtr <= baudCtr + 1;
            if ((tcBaud = '1') or (newData = '1')) then
          		baudCtr <= (others => '0');
            end if;
            
            -- Handle the bit counter.
            if tcBaud = '1' then
            	bitCtr <= bitCtr + 1;
            elsif tcBit = '1' then
            	bitCtr <= (others => '0');
            end if;
            if newData = '1' then
            	bitCtr <= (others => '0');
            end if;
        end if;
        
        tcBaud <= '0';
        if baudCtr = 104 then
        	tcBaud <= '1';
        end if;
        
        --tcBit <= '0';
        if bitCtr = 10 then
        	tcBit <= '1';
        end if;
        if newData = '1' then
        	tcBit <= '0';
        end if;
    end process;
    
    Tx <= intData(0);
    txReady <= tcBit;
	
end behavioral;
      
      
      
