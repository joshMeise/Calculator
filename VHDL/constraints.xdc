## Constraints file for calculator.
## Josh Meise and Brandon Zhao
## June 1, 2024

##====================================================================
## External_Clock_Port
##====================================================================
## This is a 100 MHz external clock
set_property PACKAGE_PIN W5 [get_ports clkExtPort]							
	set_property IOSTANDARD LVCMOS33 [get_ports clkExtPort]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clkExtPort]

##====================================================================
## Buttons
##====================================================================
## CENTER BUTTON - for multiply
set_property PACKAGE_PIN U18 [get_ports multExtPort]						
	set_property IOSTANDARD LVCMOS33 [get_ports multExtPort]
## UP BUTTON - for adding
set_property PACKAGE_PIN T18 [get_ports sumExtPort]						
	set_property IOSTANDARD LVCMOS33 [get_ports sumExtPort]
## DOWN BUTTON - for subtracting
set_property PACKAGE_PIN U17 [get_ports subExtPort]						
	set_property IOSTANDARD LVCMOS33 [get_ports subExtPort] 

##====================================================================
## USB-RS232 Interface
##====================================================================
set_property PACKAGE_PIN B18 [get_ports RxExtPort]						
	set_property IOSTANDARD LVCMOS33 [get_ports RxExtPort]
set_property PACKAGE_PIN A18 [get_ports TxExtPort]						
	set_property IOSTANDARD LVCMOS33 [get_ports TxExtPort]

##====================================================================
## Pmod Header JC
##====================================================================
##Sch name = JC1
#set_property PACKAGE_PIN K17 [get_ports {TxExtPort}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {TxExtPort}]
	
##====================================================================
## Implementation Assist
##====================================================================	
## These additional constraints are recommended by Digilent, DO NOT REMOVE!
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
