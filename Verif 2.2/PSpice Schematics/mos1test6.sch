*version 9.1 651006174
u 70
M? 3
R? 2
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 30ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test2\mos1test2.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test6\mos1test6.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos1test6.lib
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
pageloc 1 0 2861
@status
n 0 107:07:16:18:42:30;1187282550 e
s 2833 107:07:16:20:30:49;1187289049 e
c 107:07:26:08:10:06;1188108606
*page 1 0 970 720 iA
@ports
port 19 GND_EARTH 220 240 h
port 17 GND_EARTH 100 240 h
port 18 GND_EARTH 150 240 h
@parts
part 14 R 100 130 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3
part 16 VPWL 100 190 h
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 V2=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 -2 4 hcn 100 REFDES=VR1
part 15 VPWL 150 190 h
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR2
a 1 xp 9 0 -4 2 hcn 100 REFDES=VR2
a 1 u 0 0 0 0 hcn 100 T2=10ns
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T3=11ns
a 1 u 0 0 0 0 hcn 100 V3=5V
a 1 u 0 0 0 0 hcn 100 T4=20ns
a 1 u 0 0 0 0 hcn 100 V4=5V
a 1 u 0 0 0 0 hcn 100 T5=21ns
a 1 u 0 0 0 0 hcn 100 V5=0V
part 2 MbreakN 190 180 h
a 0 u 0 0 0 0 hln 100 L=1.2u
a 0 u 0 0 0 0 hln 100 W=5.2u
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 7 2 hln 100 REFDES=M1
a 0 sp 13 0 -12 46 hln 100 MODEL=Mbreakn1
part 3 MbreakP 190 110 U
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 u 0 0 0 0 hln 100 W=5.2u
a 0 ap 9 0 17 4 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=1.2u
a 0 sp 13 0 22 46 hln 100 MODEL=Mbreakp1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 43
a 0 up 0:33 0 0 0 hln 100 V=
s 220 200 220 240 42
a 0 up 33 0 222 220 hlt 100 V=
s 230 200 220 200 44
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 220 130 220 160 46
a 0 up 33 0 222 145 hlt 100 V=
w 49
a 0 up 0:33 0 0 0 hln 100 V=
s 230 90 220 90 48
s 220 90 220 70 50
s 220 70 100 70 52
a 0 up 33 0 160 69 hct 100 V=
s 100 70 100 90 54
w 57
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 100 190 56
a 0 up 33 0 102 160 hlt 100 V=
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 100 230 100 240 58
a 0 up 33 0 102 235 hlt 100 V=
w 65
a 0 up 0:33 0 0 0 hln 100 V=
s 150 230 150 240 64
a 0 up 33 0 152 235 hlt 100 V=
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 190 180 150 180 60
s 150 180 150 190 62
s 190 110 150 110 66
s 150 110 150 180 68
a 0 up 33 0 152 145 hlt 100 V=
@junction
j 220 200
+ p 2 s
+ w 43
j 220 240
+ s 19
+ w 43
j 230 200
+ p 2 b
+ w 43
j 220 160
+ p 2 d
+ w 47
j 100 90
+ p 14 2
+ w 49
j 100 190
+ p 16 +
+ w 57
j 100 130
+ p 14 1
+ w 57
j 100 230
+ p 16 -
+ w 59
j 100 240
+ s 17
+ w 59
j 190 180
+ p 2 g
+ w 61
j 150 190
+ p 15 +
+ w 61
j 150 230
+ p 15 -
+ w 65
j 150 240
+ s 18
+ w 65
j 150 180
+ w 61
+ w 61
j 220 130
+ p 3 d
+ w 47
j 220 90
+ p 3 s
+ w 49
j 230 90
+ p 3 b
+ w 49
j 190 110
+ p 3 g
+ w 61
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
