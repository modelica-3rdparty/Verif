*version 9.1 754032436
u 78
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
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\cap1test0a.lib
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
pageloc 1 0 2063
@status
n 0 107:07:26:07:51:19;1188107479 e
s 2832 107:07:26:07:53:57;1188107637 e
c 107:07:26:07:51:18;1188107478
*page 1 0 970 720 iA
@ports
port 55 GND_EARTH 190 210 h
port 8 GND_EARTH 260 210 h
port 7 GND_EARTH 290 210 h
port 6 GND_EARTH 320 210 h
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
part 53 C 260 200 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 25 30 hln 100 REFDES=C1
a 0 u 13 0 1 35 hln 100 VALUE=1.6p
part 54 C 320 200 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 25 30 hln 100 REFDES=C2
a 0 u 13 0 1 35 hln 100 VALUE=0.4p
part 30 MbreakN 230 130 h
a 0 ap 9 0 1 8 hln 100 REFDES=M1
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
a 0 sp 13 0 -14 44 hln 100 MODEL=Mbreakn-Y
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
w 63
s 260 150 260 170 62
w 65
s 260 200 260 210 64
w 67
s 270 150 290 150 66
s 290 150 290 210 68
w 71
s 320 200 320 210 70
w 73
s 260 110 260 100 72
s 260 100 320 100 74
s 320 100 320 170 76
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
j 260 170
+ p 53 2
+ w 63
j 260 150
+ p 30 s
+ w 63
j 260 200
+ p 53 1
+ w 65
j 260 210
+ s 8
+ w 65
j 270 150
+ p 30 b
+ w 67
j 290 210
+ s 7
+ w 67
j 320 200
+ p 54 1
+ w 71
j 320 210
+ s 6
+ w 71
j 260 110
+ p 30 d
+ w 73
j 320 170
+ p 54 2
+ w 73
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
