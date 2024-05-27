library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_pkg.all;

library work;
use work.myPackage.all;
--use work.fixed_pkg.all;

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
	type state is (reset, idle, latch, waitToSend, loadData, sendToSCI, sending, done);
	
  signal cs, ns: state := idle;
  signal intData: std_logic_vector(7 downto 0) := (others => '0');
  signal intNewData, empty, read, clr, load: std_logic := '0';
  signal addr, intMaxAddr: unsigned(7 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
    
begin
	stateUpdate: process(clk)
    begin
    	if rising_edge(clk) then
        	cs <= ns;
        end if;
    end process;
    
    combinational: process(cs, TxReady, newReg, empty)
  	begin
    	-- Dafaults.
        ns <= cs;
        intNewData <= '0';
        read <= '0';
        clr <= '0';
        TCdone <= '0';
        load <= '0';
        
        case cs is
--          when reset =>
            --clr <= '1';
  --          ns <= idle;
        	when idle =>
            clr <= '1';
            	if newReg = '1' then
                ns <= latch;                
              end if;
          when latch =>
            load <= '1';
            ns <= loadData;
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
    
    datapath: process(clk, addr, maxAddr)
    begin
    	if rising_edge(clk) then
        if load = '1' then
          intReg <= reg;
          intMaxAddr <= maxAddr;
        end if;
        if read = '1' then
          intData <= intReg(to_integer(addr));
          addr <= addr + 1;
        end if;
        if clr = '1' then
          --intData <= (others => '0');
          addr <= (others => '0');
        end if;
      end if;
      
      empty <= '0';
      if addr = intMaxAddr then
        empty <= '1';
      end if;
    end process;
    
    newData <= intNewData;
    data <= intData;
end behavioral;
      
