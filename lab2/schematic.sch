# File saved with Nlview 7.5.8 2022-09-21 7111 VDI=41 GEI=38 GUI=JA:10.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 24
property maxzoom 10
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 24
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new sum_of_minterms work:sum_of_minterms:NOFILE -nosplit
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol xil_defaultlib_or3 work:xil_defaultlib_or3:NOFILE HIERBOX pin a_IBUF input.left pin b output.right pin b_IBUF input.left pin c_IBUF input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load port a input -pg 1 -lvl 0 -x 0 -y 40
load port b input -pg 1 -lvl 0 -x 0 -y 110
load port c input -pg 1 -lvl 0 -x 0 -y 180
load port output output -pg 1 -lvl 4 -x 520 -y 110
load inst a_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 40
load inst b_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 110
load inst c_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 180
load inst outout xil_defaultlib_or3 work:xil_defaultlib_or3:NOFILE -fold -autohide -attr @cell(#000000) xil_defaultlib_or3 -attr @fillcolor #dfebf8 -pg 1 -lvl 2 -x 240 -y 80
load inst output_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 3 -x 389 -y 110
load inst outout|or3_out0 LUT3 hdi_primitives -hier outout -attr @cell(#000000) EQN=8'h8C -attr @name or3_out0 -pg 1 -lvl 1 -x 310 -y 88
load net a -port a -pin a_IBUF_inst I
netloc a 1 0 1 NJ 40
load net a_IBUF -pin a_IBUF_inst O -pin outout a_IBUF
netloc a_IBUF 1 1 1 150J 40n
load net b -port b -pin b_IBUF_inst I
netloc b 1 0 1 NJ 110
load net b_IBUF -pin b_IBUF_inst O -pin outout b_IBUF
netloc b_IBUF 1 1 1 NJ 110
load net c -port c -pin c_IBUF_inst I
netloc c 1 0 1 NJ 180
load net c_IBUF -pin c_IBUF_inst O -pin outout c_IBUF
netloc c_IBUF 1 1 1 150J 130n
load net outout_n_0 -pin outout b -pin output_INST_0 I
netloc outout_n_0 1 2 1 NJ 110
load net output -port output -pin output_INST_0 O
netloc output 1 3 1 NJ 110
load net outout|a_IBUF -attr @name a_IBUF -hierPin outout a_IBUF -pin outout|or3_out0 I2
netloc outout|a_IBUF 1 0 1 270 78n
load net outout|b -attr @name b -hierPin outout b -pin outout|or3_out0 O
netloc outout|b 1 1 1 N 118
load net outout|b_IBUF -attr @name b_IBUF -hierPin outout b_IBUF -pin outout|or3_out0 I0
netloc outout|b_IBUF 1 0 1 N 98
load net outout|c_IBUF -attr @name c_IBUF -hierPin outout c_IBUF -pin outout|or3_out0 I1
netloc outout|c_IBUF 1 0 1 N 118
levelinfo -pg 1 0 40 240 389 520
levelinfo -hier outout * 310 *
pagesize -pg 1 -db -bbox -sgen -60 0 730 220
pagesize -hier outout -db -bbox -sgen 240 58 420 178
show
zoom 2.81608
scrollpos -530 -445
#
# initialize ictrl to current module sum_of_minterms work:sum_of_minterms:NOFILE
ictrl init topinfo |
