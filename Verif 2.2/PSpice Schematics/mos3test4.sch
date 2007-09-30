*version 9.1 912374
u 26
M? 2
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test4\mos1test4.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level2\mos1test4\mos1test42.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level3\mos1test4\mos1test43.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos3test4.lib
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
pageloc 1 0 1907
@status
n 0 107:07:18:08:11:58;1187417518 e
s 2833 107:07:18:08:12:02;1187417522 e
c 107:07:26:17:44:41;1188143081
*page 1 0 970 720 iA
@ports
port 5 GND_EARTH 90 190 h
port 6 GND_EARTH 140 190 h
port 7 GND_EARTH 200 190 h
@parts
part 3 VPWL 140 140 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 0 4 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=-10V
a 1 u 0 0 0 0 hcn 100 T2=15ns
a 1 u 0 0 0 0 hcn 100 V2=15V
part 4 VDC 90 140 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 -3 36 hcn 100 DC=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -6 7 hcn 100 REFDES=VC1
part 2 MbreakP 170 120 h
a 0 u 0 0 0 0 hln 100 PD=40u
a 0 u 0 0 0 0 hln 100 PS=40u
a 0 u 0 0 0 0 hln 100 L=1u
a 0 u 0 0 0 0 hln 100 W=2u
a 0 u 0 0 0 0 hln 100 AD=100p
a 0 u 0 0 0 0 hln 100 AS=100p
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 2 hln 100 REFDES=M1
a 0 sp 13 0 -12 44 hln 100 MODEL=Mbreakp3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 90 180 90 190 8
a 0 up 33 0 92 185 hlt 100 V=
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 140 180 140 190 10
a 0 up 33 0 142 185 hlt 100 V=
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 200 140 200 190 12
a 0 up 33 0 202 165 hlt 100 V=
s 210 140 200 140 14
w 17
a 0 up 0:33 0 0 0 hln 100 V=
s 200 100 200 80 16
s 200 80 90 80 18
a 0 up 33 0 145 79 hct 100 V=
s 90 80 90 140 20
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 170 120 140 120 22
a 0 up 33 0 155 119 hct 100 V=
s 140 120 140 140 24
@junction
j 90 180
+ p 4 -
+ w 9
j 90 190
+ s 5
+ w 9
j 140 180
+ p 3 -
+ w 11
j 140 190
+ s 6
+ w 11
j 200 140
+ p 2 s
+ w 13
j 200 190
+ s 7
+ w 13
j 210 140
+ p 2 b
+ w 13
j 200 100
+ p 2 d
+ w 17
j 90 140
+ p 4 +
+ w 17
j 170 120
+ p 2 g
+ w 23
j 140 140
+ p 3 +
+ w 23
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
