*version 9.1 663945126
u 37
M? 2
C? 2
R? 2
V? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 300ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test8\mos1test8.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level2\mos1test8\mos1test82.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level3\mos1test8\mos1test83.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos3test8.lib
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
pageloc 1 0 3222
@status
n 0 107:07:18:09:44:42;1187423082 e
s 2833 107:07:18:09:44:49;1187423089 e
c 107:07:26:17:47:44;1188143264
*page 1 0 970 720 iA
@ports
port 10 GND_EARTH 230 170 h
port 8 GND_EARTH 90 180 h
port 9 GND_EARTH 160 180 h
@parts
part 4 R 190 170 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 35 24 hln 100 REFDES=R1
a 0 u 13 0 3 19 hln 100 VALUE=1
part 3 C 160 160 v
a 0 u 13 0 1 7 hln 100 VALUE=0.5p
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 21 4 hln 100 REFDES=C1
part 5 VPULSE 270 130 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=5V
a 1 u 0 0 0 0 hcn 100 TD=2ns
a 1 u 0 0 0 0 hcn 100 TR=10ns
a 1 u 0 0 0 0 hcn 100 TF=10ns
a 1 u 0 0 0 0 hcn 100 PW=26ns
a 1 u 0 0 0 0 hcn 100 PER=72ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 22 6 hcn 100 REFDES=VT1
part 6 VPULSE 90 130 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=5V
a 1 u 0 0 0 0 hcn 100 TD=12ns
a 1 u 0 0 0 0 hcn 100 TR=10ns
a 1 u 0 0 0 0 hcn 100 TF=10ns
a 1 u 0 0 0 0 hcn 100 PW=26ns
a 1 u 0 0 0 0 hcn 100 PER=72ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT2
a 1 xp 9 0 24 6 hcn 100 REFDES=VT2
part 7 VPULSE 230 130 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=-5V
a 1 u 0 0 0 0 hcn 100 TD=22ns
a 1 u 0 0 0 0 hcn 100 TR=10ns
a 1 u 0 0 0 0 hcn 100 TF=10ns
a 1 u 0 0 0 0 hcn 100 PW=26ns
a 1 u 0 0 0 0 hcn 100 PER=72ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT3
a 1 xp 9 0 22 6 hcn 100 REFDES=VT3
part 2 MbreakN 130 100 h
a 0 u 0 0 0 0 hln 100 L=40u
a 0 u 0 0 0 0 hln 100 W=60u
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 2 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 AD=
a 0 u 0 0 0 0 hln 100 AS=
a 0 u 0 0 0 0 hln 100 PD=
a 0 u 0 0 0 0 hln 100 PS=
a 0 sp 13 0 -10 42 hln 100 MODEL=Mbreakn3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 90 170 90 180 11
a 0 up 33 0 92 175 hlt 100 V=
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 130 100 90 100 13
a 0 up 33 0 110 99 hct 100 V=
s 90 100 90 130 15
w 20
a 0 up 0:33 0 0 0 hln 100 V=
s 160 160 160 180 19
a 0 up 33 0 162 170 hlt 100 V=
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 160 120 160 130 17
s 190 130 160 130 21
a 0 up 33 0 175 129 hct 100 V=
w 24
a 0 up 0:33 0 0 0 hln 100 V=
s 190 170 190 190 23
s 190 190 270 190 25
a 0 up 33 0 230 189 hct 100 V=
s 270 190 270 170 27
w 30
a 0 up 0:33 0 0 0 hln 100 V=
s 170 120 230 120 29
a 0 up 33 0 200 119 hct 100 V=
s 230 120 230 130 31
w 34
a 0 up 0:33 0 0 0 hln 100 V=
s 160 80 270 80 33
a 0 up 33 0 215 79 hct 100 V=
s 270 80 270 130 35
@junction
j 230 170
+ s 10
+ p 7 -
j 90 170
+ p 6 -
+ w 12
j 90 180
+ s 8
+ w 12
j 90 130
+ p 6 +
+ w 14
j 160 130
+ p 3 2
+ w 18
j 160 160
+ p 3 1
+ w 20
j 160 180
+ s 9
+ w 20
j 190 130
+ p 4 2
+ w 18
j 190 170
+ p 4 1
+ w 24
j 270 170
+ p 5 -
+ w 24
j 230 130
+ p 7 +
+ w 30
j 270 130
+ p 5 +
+ w 34
j 130 100
+ p 2 g
+ w 14
j 160 120
+ p 2 s
+ w 18
j 170 120
+ p 2 b
+ w 30
j 160 80
+ p 2 d
+ w 34
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
