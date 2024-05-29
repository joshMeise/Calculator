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
        numReg: in regType;
        newNumReg: in std_logic;
        opReg: in regType;
        newOpReg: in std_logic;
        ansReg: in regType;
        newAnsReg: std_logic;
        numMaxAddr: in unsigned(7 downto 0);
        opMaxAddr: in unsigned(7 downto 0);
        ansMaxAddr: in unsigned(7 downto 0);
        data: out std_logic_vector(7 downto 0);
        newData: out std_logic;
        TCDone: out std_logic);
end toOutput;     
      
architecture behavioral of toOutput is
	type state is (reset, idle, loadNum, loadOp, loadAns, loadData, waitToSend, sendToSCI, sending, done);
	
  signal cs, ns: state := idle;
  signal intData: std_logic_vector(7 downto 0) := (others => '0');
  signal intNewData, empty, read, readNum, readOp, readAns, clr: std_logic := '0';
  signal addr, intMaxAddr: unsigned(7 downto 0) := (others => '0');
  signal intReg: regType := (others => (others => '0'));
  
begin
	stateUpdate: process(clk)
    begin
    	if rising_edge(clk) then
        	cs <= ns;
        end if;
    end process;
    
    combinational: process(cs, TxReady, newNumReg, newOpReg, newAnsReg, empty)
  	begin
    	-- Dafaults.
        ns <= cs;
        intNewData <= '0';
        read <= '0';
        clr <= '0';
        TCdone <= '0';
        readAns <= '0';
        readNum <= '0';
        readOp <= '0';
        
        case cs is
--          when reset =>
            --clr <= '1';
  --          ns <= idle;
        	when idle =>
            clr <= '1';
            	if newNumReg = '1' then
                	ns <= loadNum;
              elsif newOpReg = '1' then
                ns <= loadOp;
              elsif newAnsReg = '1' then
                ns <= loadAns;
              end if;
          when loadAns =>
            readAns <= '1';
            ns <= loadData;
          when loadNum =>
            readNum <= '1';
            ns <= loadData;
          when loadOp =>
            readOp <= '1';
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
    
    datapath: process(clk, addr, intMaxAddr)
    begin
    	if rising_edge(clk) then
        if readNum = '1' then
          intReg <= numReg;
          intMaxAddr <= numMaxAddr;
        end if;
        if readOp = '1' then
          intreg <= opReg;
          intMaxAddr <= opMaxAddr;
        end if;
        if readAns = '1' then
          intReg <= ansReg;
          intMaxAddr <= ansMaxAddr;
        end if;
        
        if read = '1' then
          intData <= intreg(to_integer(addr));
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
      
