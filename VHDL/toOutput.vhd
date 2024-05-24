library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_pkg.all;

library work;
use work.myPackage.all;
use work.fixed_pkg.all;

entity toOutput is
port (clk: in std_logic;
	  TxReady: in std_logic;
	  reg: in regType;
      newReg: in std_logic;
      maxAddr: in unsigned(7 downto 0);
      data: out std_logic_vector(7 downto 0);
      newData: out std_logic;
      TCDone: out std_logic);
end toOutput;     
      
architecture behavioral of toOutput is
	type state is (idle, waitToSend, loadData, sendToSCI, sending, done);
	
    signal cs, ns: state := idle;
	signal intData: std_logic_vector(7 downto 0) := (others => '0');
    signal intNewData, empty, read, clr: std_logic := '0';
    signal addr: unsigned(7 downto 0) := (others => '0');
    
begin
	stateUpdate: process(clk)
    begin
    	if rising_edge(clk) then
        	cs <= ns;
        end if;
    end process;
    
    combinational: process(cs, TxReady, newReg)
  	begin
    	-- Dafaults.
        ns <= cs;
        intNewData <= '0';
        read <= '0';
        clr <= '0';
        TCdone <= '0';
        
        case cs is
        	when idle =>
            	clr <= '1';
            	if newReg = '1' then
                	ns <= loadData;
                end if;
            when loadData =>
            	read <= '1';
                ns <= waitToSend;
        	when waitToSend =>
            	if TxReady = '1' then
                	ns <= sendToSci;
                end if;
        	when sendToSCI =>
            	intNewData <= '1';
                ns <= sending;
            when sending =>
            	if TxReady = '1' then
            		if empty = '1' then
                		ns <= done;
                	else 
                		ns <= loadData;
              		end if;
                end if;
            when done =>
            	TCdone <= '1';
                ns <= idle;
            when others =>
            	ns <= idle;
        end case;
    end process;
    
    datapath: process(clk, addr)
    begin
    	if rising_edge(clk) then
        	if read = '1' then
            	intData <= reg(to_integer(addr));
                addr <= addr + 1;
            end if;
            if clr = '1' then
            	addr <= (others => '0');
  			end if;
        end if;
        
        empty <= '0';
        if addr = maxAddr then
        	empty <= '1';
        end if;
    end process;
    
    newData <= intNewData;
    data <= intData;
end behavioral;
      
