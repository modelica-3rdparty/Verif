*version 9.1 476718837
u 33
M? 2
R? 4
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 200ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test1\mos1test1.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level2\mos1test1\mos1test12.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos2test1.lib
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
pageloc 1 0 3419
@status
n 0 107:07:17:12:55:55;1187348155 e
s 2833 107:07:17:12:56:01;1187348161 e
c 107:07:26:08:48:52;1188110932
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 60 130 h
port 7 GND_EARTH 260 150 h
port 8 GND_EARTH 300 100 h
@parts
part 4 R 110 120 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=3
part 5 R 210 140 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=7
part 3 R 210 90 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=800k
part 9 VPWL 250 90 v
a 1 u 0 0 0 0 hcn 100 V7=5V
a 1 u 0 0 0 0 hcn 100 T7=200ns
a 1 u 0 0 0 0 hcn 100 T6=160ns
a 1 u 0 0 0 0 hcn 100 V6=-6V
a 1 u 0 0 0 0 hcn 100 V5=5V
a 1 u 0 0 0 0 hcn 100 T5=120ns
a 1 u 0 0 0 0 hcn 100 T4=100ns
a 1 u 0 0 0 0 hcn 100 V3=-5V
a 1 u 0 0 0 0 hcn 100 T3=60ns
a 1 u 0 0 0 0 hcn 100 V2=5V
a 1 u 0 0 0 0 hcn 100 T2=20ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 AC=
a 1 u 0 0 0 0 hcn 100 DC=
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 30 26 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 V4=5V
part 10 VPWL 110 120 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT2
a 1 xp 9 0 -10 12 hcn 100 REFDES=VT2
a 1 u 0 0 0 0 hcn 100 DC=
a 1 u 0 0 0 0 hcn 100 AC=
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=20ns
a 1 u 0 0 0 0 hcn 100 V2=-10V
a 1 u 0 0 0 0 hcn 100 T3=100ns
a 1 u 0 0 0 0 hcn 100 V3=10V
a 1 u 0 0 0 0 hcn 100 T4=120ns
a 1 u 0 0 0 0 hcn 100 V4=-10V
a 1 u 0 0 0 0 hcn 100 T5=200ns
a 1 u 0 0 0 0 hcn 100 V5=10V
part 2 MbreakN 160 120 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 2 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=5u
a 0 u 0 0 0 0 hln 100 W=2u
a 0 u 0 0 0 0 hln 100 AD=100p
a 0 u 0 0 0 0 hln 100 AS=100p
a 0 u 0 0 0 0 hln 100 PD=40u
a 0 u 0 0 0 0 hln 100 PS=40u
a 0 sp 13 0 -10 44 hln 100 MODEL=Mbreakn2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 70 120 60 120 11
s 60 120 60 130 13
a 0 up 33 0 62 125 hlt 100 V=
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 150 120 160 120 15
a 0 up 33 0 155 119 hct 100 V=
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 190 140 200 140 17
s 200 140 210 140 19
a 0 up 33 0 205 139 hct 100 V=
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 250 140 260 140 21
s 260 140 260 150 23
a 0 up 33 0 262 145 hlt 100 V=
w 26
a 0 up 0:33 0 0 0 hln 100 V=
s 290 90 300 90 25
s 300 90 300 100 27
a 0 up 33 0 302 95 hlt 100 V=
w 30
a 0 up 0:33 0 0 0 hln 100 V=
s 210 90 190 90 29
a 0 up 33 0 200 89 hct 100 V=
s 190 90 190 100 31
@junction
j 250 90
+ p 9 +
+ p 3 2
j 110 120
+ p 10 +
+ p 4 1
j 70 120
+ p 10 -
+ w 12
j 60 130
+ s 6
+ w 12
j 150 120
+ p 4 2
+ w 16
j 210 140
+ p 5 1
+ w 18
j 250 140
+ p 5 2
+ w 22
j 260 150
+ s 7
+ w 22
j 290 90
+ p 9 -
+ w 26
j 300 100
+ s 8
+ w 26
j 210 90
+ p 3 1
+ w 30
j 160 120
+ p 2 g
+ w 16
j 190 140
+ p 2 s
+ w 18
j 200 140
+ p 2 b
+ w 18
j 190 100
+ p 2 d
+ w 30
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
