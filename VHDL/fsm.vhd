--
--fsm.vhd --- controller for calculator
--
--Author: Joshua Meise and Brandon Zhao
--Created: 05-28-2024
--

-- Library inclusions.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entity definition.
entity fsm is
  port (clk: in std_logic;
        sumPort: in std_logic;
        multPort: in std_logic;
        subPort: in std_logic;
        RxDonePort: in std_logic;
        TCDonePort: in std_logic;
        AEnPort: out std_logic;
        BEnPort: out std_logic;
        sumEnPort: out std_logic;
        subEnPort: out std_logic;
        multEnPort: out std_logic;
        resetEnPort: out std_logic;
        calcEnPort: out std_logic;
        ASendPort: out std_logic;
        BSendPort: out std_logic;
        opSendPort: out std_logic;
        ansSendPort: out std_logic);
end fsm;

-- Architecture definition.
architecture behavioral of fsm is
  -- User-defined state type.
  type state is (reset, waitA, acceptA, sendAMp, sendA, waitOp, acceptAdd, acceptSub, acceptMult, sendOpMp, sendOp, waitB, acceptB, sendBMp, sendB, waitCalc, calc, sendCalcMp, sendCalc);

  -- Internal signals.
  signal cs, ns: state := reset;

begin
  -- Synchronous state update process.
  stateUpdate: process(clk)
  begin
    if rising_edge(clk) then
      cs <= ns;
    end if;
  end process;

  -- Next state and output logic.
  combinational: process(cs, sumPort, multPort, subPort, RxDonePort, TCDonePort)
  begin
    -- Defaults.
    AEnPort <= '0';
    BEnPort <= '0';
    sumEnPort <= '0';
    subEnport <= '0';
    multEnPort <= '0';
    resetEnPort <= '0';
    calcEnPort <= '0';
    ASendPort <= '0';
    BSendPort <= '0';
    opSendPort <= '0';
    ansSendPort <= '0';
    ns <= cs;

    case cs is
      -- Reset all registers in datapath.
      when reset => 
        resetEnPort <= '1';
        ns <= waitA;
      -- Waits for the first number to be receivedd by the receiver.
      when waitA =>
        if RxDonePort = '1' then
          ns <= acceptA;
        end if;
      -- Loads the fist term into the datapath.
      when acceptA =>
        AEnPort <= '1';
        ns <= sendAMp;
      -- Sends a monoplused signal indicating that the first term is ready to
      -- be displayed.
      when sendAMp =>
      	ASendPort <= '1';
        ns <= sendA;
      -- Waits for the first term to be transmitted to terminal.
      when sendA =>
        if TCDonePort = '1' then
          ns <= waitOp;
        end if;
      -- Waits for operation to be entered by pushing a button.
      when waitOp =>
        if sumPort = '1' then
          ns <= acceptAdd;
        elsif subPort = '1' then
          ns <= acceptSub;
        elsif multPort = '1' then
          ns <= acceptMult;
        end if;
      -- Load relevant operation into datapath.
      when acceptAdd =>
        sumEnPort <= '1';
        ns <= sendOpMp;
      when acceptSub =>
        subEnPort <= '1';
        ns <= sendOpMp;
      when acceptMult =>
        multEnPort <= '1';
        ns <= sendOpMp;
      -- Indicates that the operation has been loaded and can be displayed.
      when sendOpMp =>
      	opSendPort <= '1';
        ns <= sendOp;
      -- Send the operation to the terminal.
      when sendOp =>
        if TCDonePort = '1' then
          ns <= waitB;
        end if;
      -- Wait for the second number in the operation to be entered.
      when waitB =>
        if RxDonePort = '1' then
          ns <= acceptB;
        end if;
      -- Load the second term into the data path.
      when acceptB =>
        BEnPort <= '1';
        ns <= sendBMp;
      -- Indicates to the rest of the system that the second number has been
      -- loaded and is ready to be displayed.
      when sendBMp =>
        BSendPort <= '1';
        ns <= sendB;
      -- Send the seocnd number to the terminal.
      when sendB =>
        if TCDonePort = '1' then
          ns <= waitCalc;
        end if;
      -- Delay prior to beginning calculation
      when waitCalc =>
        ns <= calc;
      -- Send a monopulsed signal to the datapath to initiate the calculation.
      when calc =>
        calcEnPort <= '1';
        ns <= sendCalcMp;
      -- Indicate that the calculation has been completed and the result is
      -- ready to be displayed.
      when sendCalcMp =>
      	ansSendPort <= '1';
        ns <= sendCalc;
      -- Send the result of the calculation to the terminal for display.
      when sendCalc =>
        if TCDonePort = '1' then
          ns <= reset;
        end if;
      when others =>
        ns <= reset;
    end case;

  end process;
end behavioral;
