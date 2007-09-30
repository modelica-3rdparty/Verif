*version 9.1 439830900
u 62
M? 4
R? 5
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 40ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test1\mos1test1.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test3\mos1test3.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level2\mos1test3\mos1test32.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level3\mos1test3\mos1test33.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos3test3.lib
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
pageloc 1 0 3631
@status
n 0 107:07:18:08:03:58;1187417038 e
s 2833 107:07:18:08:04:04;1187417044 e
c 107:07:26:17:43:36;1188143016
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 70 210 h
port 8 GND_EARTH 130 210 h
port 7 GND_EARTH 190 210 h
port 39 GND_EARTH 240 210 h
@parts
part 5 R 190 200 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 35 2 hln 100 REFDES=R3
a 0 u 13 0 -1 1 hln 100 VALUE=4
part 38 R 240 200 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 31 2 hln 100 REFDES=R4
a 0 u 13 0 1 1 hln 100 VALUE=7
part 3 R 70 170 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 31 4 hln 100 REFDES=R1
a 0 u 13 0 -1 7 hln 100 VALUE=800k
part 4 R 130 170 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 31 4 hln 100 REFDES=R2
a 0 u 13 0 1 3 hln 100 VALUE=3
part 9 VPWL 70 170 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 AC=
a 1 u 0 0 0 0 hcn 100 DC=
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 30 26 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 V2=-1V
a 1 u 0 0 0 0 hcn 100 T3=
a 1 u 0 0 0 0 hcn 100 V3=
a 1 u 0 0 0 0 hcn 100 T4=
a 1 u 0 0 0 0 hcn 100 V4=
a 1 u 0 0 0 0 hcn 100 T5=
a 1 u 0 0 0 0 hcn 100 V5=
a 1 u 0 0 0 0 hcn 100 T6=
a 1 u 0 0 0 0 hcn 100 V6=
a 1 u 0 0 0 0 hcn 100 T7=
a 1 u 0 0 0 0 hcn 100 V7=
part 10 VPWL 130 170 h
a 1 u 0 0 0 0 hcn 100 DC=
a 1 u 0 0 0 0 hcn 100 AC=
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 -10 12 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T3=10ns
a 1 u 0 0 0 0 hcn 100 V3=-5V
a 1 u 0 0 0 0 hcn 100 T4=30ns
a 1 u 0 0 0 0 hcn 100 V4=5V
a 1 u 0 0 0 0 hcn 100 T5=
a 1 u 0 0 0 0 hcn 100 V5=
part 61 MbreakN 160 120 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=M1
a 0 xp 9 0 5 4 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=5u
a 0 u 0 0 0 0 hln 100 W=2u
a 0 u 0 0 0 0 hln 100 AD=100p
a 0 u 0 0 0 0 hln 100 AS=100p
a 0 u 0 0 0 0 hln 100 PD=40u
a 0 u 0 0 0 0 hln 100 PS=40u
a 0 sp 13 0 -10 42 hln 100 MODEL=Mbreakn3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 41
a 0 up 0:33 0 0 0 hln 100 V=
s 190 200 190 210 40
a 0 up 33 0 192 205 hlt 100 V=
w 43
a 0 up 0:33 0 0 0 hln 100 V=
s 240 200 240 210 42
a 0 up 33 0 242 205 hlt 100 V=
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 190 100 190 80 50
s 190 80 70 80 52
a 0 up 33 0 130 79 hct 100 V=
s 70 80 70 130 54
w 57
a 0 up 0:33 0 0 0 hln 100 V=
s 160 120 130 120 56
a 0 up 33 0 145 119 hct 100 V=
s 130 120 130 130 58
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 190 140 190 160 44
a 0 up 33 0 192 150 hlt 100 V=
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 200 140 240 140 46
a 0 up 33 0 220 139 hct 100 V=
s 240 140 240 160 48
@junction
j 130 170
+ p 10 +
+ p 4 1
j 130 210
+ s 8
+ p 10 -
j 190 200
+ p 5 1
+ w 41
j 190 210
+ s 7
+ w 41
j 240 200
+ p 38 1
+ w 43
j 240 210
+ s 39
+ w 43
j 190 160
+ p 5 2
+ w 45
j 240 160
+ p 38 2
+ w 47
j 70 130
+ p 3 2
+ w 51
j 130 130
+ p 4 2
+ w 57
j 70 170
+ p 9 +
+ p 3 1
j 70 210
+ s 6
+ p 9 -
j 190 100
+ p 61 d
+ w 51
j 160 120
+ p 61 g
+ w 57
j 190 140
+ p 61 s
+ w 45
j 200 140
+ p 61 b
+ w 47
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
