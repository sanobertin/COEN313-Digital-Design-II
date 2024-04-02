
## This file is a general .xdc for the Nexys A7-100T
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];
## This clock above is faster so is not to be used for now 

##Switches
## This are to be used for selection -- aka sel
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { sel[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { sel[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

## this is for input signal 
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { din[0] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { din[1] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { din[2] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { din[3] }]; #IO_L21P_T3_DQS_14 Sch=sw[15



## my clock toggle is shown below
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk}]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]




## my reset is below too
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

## LEDs
## below is for displaying minimum
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { min_out[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { min_out[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { min_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { min_out[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]


## below is for displaying maximum
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { max_out[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { max_out[1] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { max_out[2] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { max_out[3] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]



## below is for displaying registers output based on selection
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { reg_out[0] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { reg_out[1] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { reg_out[2] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { reg_out[3] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15


