*version 9.1 1513265
u 108
Q? 5
V? 4
R? 6
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 500ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test12\test12.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test12.lib
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
pageloc 1 0 5265
@status
n 0 107:07:04:17:10:46;1186240246 e
s 2833 107:07:12:17:57:09;1186934229 e
c 107:07:26:07:57:53;1188107873
*page 1 0 970 720 iA
@ports
port 10 GND_EARTH 190 310 h
port 9 GND_EARTH 140 310 h
port 8 GND_EARTH 100 310 h
port 11 GND_EARTH 290 160 h
@parts
part 16 r 190 300 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 20 0 hln 100 REFDES=R5
a 0 u 13 0 20 30 hln 100 VALUE=1k
part 12 r 160 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 5 QbreakN 360 200 u
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q4
a 0 sp 13 0 15 40 hln 100 MODEL=QbreakN
a 0 ap 9 0 15 5 hln 100 REFDES=Q4
part 4 QbreakN 360 140 H
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q3
a 0 ap 9 0 5 5 hln 100 REFDES=Q3
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakN
part 14 r 430 100 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 20 0 hln 100 REFDES=R3
a 0 u 13 0 20 30 hln 100 VALUE=10k
part 13 r 370 100 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 20 0 hln 100 REFDES=R2
a 0 u 13 0 20 30 hln 100 VALUE=20k
part 15 r 240 100 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 20 0 hln 100 REFDES=R4
a 0 u 13 0 20 30 hln 100 VALUE=10k
part 6 VDC 100 100 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 -11 18 hcn 100 DC=12V
part 7 VDC 290 110 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC2
a 1 xp 9 0 24 7 hcn 100 REFDES=VC2
a 1 u 13 0 -11 18 hcn 100 DC=-12V
part 17 VSIN 140 210 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 20 10 hcn 100 REFDES=VS1
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=0.1V
a 1 u 0 0 0 0 hcn 100 FREQ=5MegHz
part 3 QbreakN 220 240 U
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 15 5 hln 100 REFDES=Q2
a 0 sp 13 0 15 40 hln 100 MODEL=QbreakN
part 2 QbreakN 220 170 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakN
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 190 300 190 310 34
a 0 up 33 0 192 305 hlt 100 V=
w 37
a 0 up 0:33 0 0 0 hln 100 V=
s 220 240 190 240 36
a 0 up 33 0 205 239 hct 100 V=
s 190 240 190 260 38
w 29
a 0 up 0:33 0 0 0 hln 100 V=
s 200 170 220 170 40
a 0 up 33 0 210 169 hct 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 140 170 140 210 26
a 0 up 33 0 142 190 hlt 100 V=
s 160 170 140 170 24
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 140 310 140 250 50
a 0 up 33 0 142 280 hlt 100 V=
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 100 310 100 140 56
a 0 up 33 0 102 225 hlt 100 V=
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 240 100 240 150 60
a 0 up 33 0 242 125 hlt 100 V=
w 31
a 0 up 0:33 0 0 0 hln 100 V=
s 240 190 240 220 30
s 340 220 240 220 62
a 0 up 33 0 290 219 hct 100 V=
w 65
a 0 up 0:33 0 0 0 hln 100 V=
s 360 140 390 140 64
s 390 140 390 200 66
a 0 up 33 0 392 170 hlt 100 V=
s 390 200 360 200 68
s 340 120 340 110 70
s 340 110 370 110 72
s 390 110 390 140 74
s 370 110 390 110 78
s 370 100 370 110 76
w 80
a 0 up 0:33 0 0 0 hln 100 V=
s 430 100 430 260 79
s 430 260 240 260 81
a 0 up 33 0 335 259 hct 100 V=
w 84
a 0 up 0:33 0 0 0 hln 100 V=
s 430 60 430 50 83
s 430 50 370 50 85
s 370 50 370 60 87
s 240 60 240 50 89
s 240 50 370 50 91
s 100 100 100 50 93
s 100 50 240 50 95
a 0 up 33 0 170 49 hct 100 V=
w 98
a 0 up 0:33 0 0 0 hln 100 V=
s 290 150 290 160 97
a 0 up 33 0 292 155 hlt 100 V=
w 33
a 0 up 0:33 0 0 0 hln 100 V=
s 340 160 340 170 32
s 290 110 290 90 99
s 290 90 320 90 101
s 320 90 320 170 103
a 0 up 33 0 322 130 hlt 100 V=
s 340 170 340 180 107
s 320 170 340 170 105
@junction
j 240 220
+ p 3 e
+ w 31
j 240 190
+ p 2 e
+ w 31
j 340 180
+ p 5 e
+ w 33
j 340 160
+ p 4 e
+ w 33
j 190 300
+ p 16 1
+ w 35
j 190 310
+ s 10
+ w 35
j 220 240
+ p 3 b
+ w 37
j 190 260
+ p 16 2
+ w 37
j 200 170
+ p 12 2
+ w 29
j 220 170
+ p 2 b
+ w 29
j 140 210
+ p 17 +
+ w 25
j 160 170
+ p 12 1
+ w 25
j 140 250
+ p 17 -
+ w 23
j 140 310
+ s 9
+ w 23
j 100 140
+ p 6 -
+ w 19
j 100 310
+ s 8
+ w 19
j 240 100
+ p 15 1
+ w 61
j 240 150
+ p 2 c
+ w 61
j 340 220
+ p 5 c
+ w 31
j 360 140
+ p 4 b
+ w 65
j 360 200
+ p 5 b
+ w 65
j 340 120
+ p 4 c
+ w 65
j 390 140
+ w 65
+ w 65
j 370 100
+ p 13 1
+ w 65
j 370 110
+ w 65
+ w 65
j 430 100
+ p 14 1
+ w 80
j 240 260
+ p 3 c
+ w 80
j 430 60
+ p 14 2
+ w 84
j 370 60
+ p 13 2
+ w 84
j 240 60
+ p 15 2
+ w 84
j 370 50
+ w 84
+ w 84
j 100 100
+ p 6 +
+ w 84
j 240 50
+ w 84
+ w 84
j 290 150
+ p 7 -
+ w 98
j 290 160
+ s 11
+ w 98
j 290 110
+ p 7 +
+ w 33
j 340 170
+ w 33
+ w 33
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
