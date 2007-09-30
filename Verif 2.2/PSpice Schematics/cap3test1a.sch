*version 9.1 712481906
u 90
Q? 3
R? 2
V? 4
M? 2
C? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\small_nmos1\small_nmos1.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\cap1test0\cap1test01a.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level2\cap1test1\cap1test12a.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level3\cap1test1\cap1test13a.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\cap3test1a.lib
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 1630
@status
n 0 107:07:18:06:28:30;1187411310 e
s 2833 107:07:18:06:28:37;1187411317 e
c 107:07:26:17:38:34;1188142714
*page 1 0 970 720 iA
@ports
port 55 GND_EARTH 190 210 h
port 8 GND_EARTH 270 210 h
@parts
part 52 VPULSE 190 140 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 -8 6 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=10V
a 1 u 0 0 0 0 hcn 100 TD=0s
a 1 u 0 0 0 0 hcn 100 TR=1ns
a 1 u 0 0 0 0 hcn 100 TF=1ns
a 1 u 0 0 0 0 hcn 100 PW=9ns
a 1 u 0 0 0 0 hcn 100 PER=20ns
part 53 C 270 200 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 25 30 hln 100 REFDES=C1
a 0 u 13 0 1 35 hln 100 VALUE=0.5p
part 30 MbreakN 230 130 h
a 0 ap 9 0 1 8 hln 100 REFDES=M1
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
a 0 sp 13 0 -18 44 hln 100 MODEL=Mbreakn-Y3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 57
s 190 180 190 210 56
w 59
s 230 130 190 130 58
s 190 130 190 140 60
w 79
s 270 200 270 210 78
w 81
s 270 170 270 150 80
s 260 150 270 150 82
s 260 110 280 110 84
s 280 110 280 150 86
s 280 150 270 150 88
@junction
j 190 180
+ p 52 -
+ w 57
j 190 210
+ s 55
+ w 57
j 230 130
+ p 30 g
+ w 59
j 190 140
+ p 52 +
+ w 59
j 270 200
+ p 53 1
+ w 79
j 270 210
+ s 8
+ w 79
j 270 150
+ p 30 b
+ w 81
j 270 170
+ p 53 2
+ w 81
j 260 150
+ p 30 s
+ w 81
j 260 110
+ p 30 d
+ w 81
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
