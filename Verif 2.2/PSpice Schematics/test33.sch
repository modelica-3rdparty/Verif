*version 9.1 797982678
u 121
Q? 3
R? 7
V? 5
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test33\test33.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test33.lib
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
pageloc 1 0 4744
@status
n 0 107:07:07:20:55:48;1186512948 e
s 2833 107:07:12:21:39:52;1186947592 e
c 107:07:26:07:59:03;1188107943
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 110 290 h
port 9 GND_EARTH 150 290 h
port 10 GND_EARTH 350 200 h
port 67 GND_EARTH 430 290 h
@parts
part 80 VPWL 110 170 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 22 6 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V2=10V
a 1 u 0 0 0 0 hcn 100 T3=2s
a 1 u 0 0 0 0 hcn 100 V3=2V
a 1 u 0 0 0 0 hcn 100 T4=3s
a 1 u 0 0 0 0 hcn 100 V4=8V
a 1 u 0 0 0 0 hcn 100 T5=4s
a 1 u 0 0 0 0 hcn 100 V5=4V
a 1 u 0 0 0 0 hcn 100 T6=5s
a 1 u 0 0 0 0 hcn 100 V6=6V
a 1 u 0 0 0 0 hcn 100 T7=6s
a 1 u 0 0 0 0 hcn 100 V7=5V
a 1 u 0 0 0 0 hcn 100 T8=7s
a 1 u 0 0 0 0 hcn 100 V8=0V
a 1 u 0 0 0 0 hcn 100 T9=10s
a 1 u 0 0 0 0 hcn 100 V9=10V
part 4 R 170 150 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 37 R 170 230 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 77 R 270 190 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 79 VDC 310 190 v
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 26 25 hcn 100 REFDES=VC1
a 1 u 13 0 -9 24 hcn 100 DC=-12V
part 36 R 300 110 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 78 R 300 270 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 6 VDC 390 190 v
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC2
a 1 xp 9 0 30 25 hcn 100 REFDES=VC2
a 1 u 13 0 -9 24 hcn 100 DC=12V
part 2 QbreakN 240 230 U
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 xp 9 0 15 5 hln 100 REFDES=Q2
a 0 sp 13 0 17 40 hln 100 MODEL=Qbreakn
part 3 QbreakN 240 150 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 xp 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 -17 40 hln 100 MODEL=Qbreakn
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 82
a 0 up 0:33 0 0 0 hln 100 V=
s 110 210 110 290 81
a 0 up 33 0 112 250 hlt 100 V=
w 84
a 0 up 0:33 0 0 0 hln 100 V=
s 170 150 110 150 83
a 0 up 33 0 140 149 hct 100 V=
s 110 150 110 170 85
w 88
a 0 up 0:33 0 0 0 hln 100 V=
s 210 150 240 150 87
a 0 up 33 0 225 149 hct 100 V=
w 90
a 0 up 0:33 0 0 0 hln 100 V=
s 170 230 150 230 89
s 150 230 150 290 91
a 0 up 33 0 152 260 hlt 100 V=
w 94
a 0 up 0:33 0 0 0 hln 100 V=
s 210 230 240 230 93
a 0 up 33 0 225 229 hct 100 V=
w 96
a 0 up 0:33 0 0 0 hln 100 V=
s 260 170 260 190 95
s 260 190 260 210 99
a 0 up 33 0 262 200 hlt 100 V=
s 270 190 260 190 97
w 101
a 0 up 0:33 0 0 0 hln 100 V=
s 300 110 260 110 100
a 0 up 33 0 280 109 hct 100 V=
s 260 110 260 130 102
w 105
a 0 up 0:33 0 0 0 hln 100 V=
s 350 190 350 200 104
a 0 up 33 0 352 195 hlt 100 V=
w 107
a 0 up 0:33 0 0 0 hln 100 V=
s 300 270 260 270 106
a 0 up 33 0 280 269 hct 100 V=
s 260 270 260 250 108
w 111
a 0 up 0:33 0 0 0 hln 100 V=
s 340 110 370 110 110
s 370 110 370 190 112
s 370 270 340 270 114
s 370 190 370 270 118
a 0 up 33 0 372 230 hlt 100 V=
s 390 190 370 190 116
w 120
a 0 up 0:33 0 0 0 hln 100 V=
s 430 190 430 290 119
a 0 up 33 0 432 240 hlt 100 V=
@junction
j 310 190
+ p 79 +
+ p 77 2
j 110 210
+ p 80 -
+ w 82
j 110 290
+ s 8
+ w 82
j 170 150
+ p 4 1
+ w 84
j 110 170
+ p 80 +
+ w 84
j 240 150
+ p 3 b
+ w 88
j 210 150
+ p 4 2
+ w 88
j 170 230
+ p 37 1
+ w 90
j 150 290
+ s 9
+ w 90
j 240 230
+ p 2 b
+ w 94
j 210 230
+ p 37 2
+ w 94
j 260 170
+ p 3 e
+ w 96
j 260 210
+ p 2 e
+ w 96
j 270 190
+ p 77 1
+ w 96
j 260 190
+ w 96
+ w 96
j 300 110
+ p 36 1
+ w 101
j 260 130
+ p 3 c
+ w 101
j 350 190
+ p 79 -
+ w 105
j 350 200
+ s 10
+ w 105
j 300 270
+ p 78 1
+ w 107
j 260 250
+ p 2 c
+ w 107
j 340 110
+ p 36 2
+ w 111
j 340 270
+ p 78 2
+ w 111
j 390 190
+ p 6 +
+ w 111
j 370 190
+ w 111
+ w 111
j 430 190
+ p 6 -
+ w 120
j 430 290
+ s 67
+ w 120
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
