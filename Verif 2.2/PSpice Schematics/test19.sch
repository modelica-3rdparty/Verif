*version 9.1 3373638097
u 94
V? 2
R? 5
L? 3
C? 6
Q? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 15us
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test19\test19.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test19.lib
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
pageloc 1 0 5708
@status
n 0 107:07:05:14:24:04;1186316644 e
s 2833 107:07:05:14:24:08;1186316648 e
c 107:07:26:07:58:45;1188107925
*page 1 0 970 720 iA
@ports
port 15 GND_EARTH 60 310 h
port 16 GND_EARTH 120 310 h
port 18 GND_EARTH 270 130 h
port 19 GND_EARTH 360 80 h
port 17 GND_EARTH 300 310 h
@parts
part 2 VDC 60 190 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=16V
part 3 r 70 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=68k
part 4 r 120 230 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 35 hln 100 VALUE=8200
part 8 L 150 100 h
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L2
a 0 ap 9 0 15 0 hln 100 REFDES=L2
part 9 c 160 140 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=0.1u
part 13 c 230 120 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C5
a 0 ap 9 0 15 0 hln 100 REFDES=C5
a 0 u 13 0 15 25 hln 100 VALUE=5n
part 7 L 60 70 h
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L1
a 0 ap 9 0 15 0 hln 100 REFDES=L1
a 0 u 13 0 15 25 hln 100 VALUE=0.02
part 12 c 310 70 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C4
a 0 ap 9 0 15 0 hln 100 REFDES=C4
a 0 u 13 0 15 25 hln 100 VALUE=500p
part 5 r 340 240 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 30 hln 100 VALUE=100
part 6 r 340 300 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 30 hln 100 VALUE=820
part 10 c 300 290 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=1u
part 11 c 260 250 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 15 0 hln 100 REFDES=C3
a 0 u 13 0 15 35 hln 100 VALUE=0.1u
part 14 QbreakN 280 160 h
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
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 60 230 60 310 20
a 0 up 33 0 62 270 hlt 100 V=
w 31
a 0 up 0:33 0 0 0 hln 100 V=
s 120 230 120 310 30
a 0 up 33 0 122 270 hlt 100 V=
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 110 160 120 160 26
s 120 160 120 190 28
s 120 160 280 160 32
a 0 up 33 0 200 159 hct 100 V=
s 160 140 120 140 34
s 120 140 120 160 36
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 70 160 60 160 22
s 60 160 60 190 24
s 60 70 60 160 42
a 0 up 33 0 62 115 hlt 100 V=
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 230 120 220 120 44
s 220 120 220 100 46
s 220 100 210 100 48
s 190 140 220 140 50
a 0 up 33 0 205 139 hct 100 V=
s 220 140 220 120 52
w 55
a 0 up 0:33 0 0 0 hln 100 V=
s 260 120 270 120 54
s 270 120 270 130 56
a 0 up 33 0 272 125 hlt 100 V=
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 340 70 360 70 60
a 0 up 33 0 350 69 hct 100 V=
s 360 70 360 80 62
w 39
a 0 up 0:33 0 0 0 hln 100 V=
s 150 100 120 100 38
s 120 100 120 70 40
s 120 70 300 70 58
a 0 up 33 0 210 69 hct 100 V=
s 300 70 310 70 66
s 300 140 300 70 64
w 68
a 0 up 0:33 0 0 0 hln 100 V=
s 340 200 340 190 67
s 340 190 300 190 69
s 300 190 300 180 71
s 260 220 260 190 73
s 260 190 300 190 75
a 0 up 33 0 280 189 hct 100 V=
w 78
a 0 up 0:33 0 0 0 hln 100 V=
s 340 240 340 250 77
s 300 260 300 250 79
s 340 250 340 260 83
s 300 250 340 250 81
a 0 up 33 0 320 249 hct 100 V=
w 85
a 0 up 0:33 0 0 0 hln 100 V=
s 340 300 340 310 84
s 340 310 300 310 86
s 300 290 300 310 88
s 260 250 260 310 90
a 0 up 33 0 262 280 hlt 100 V=
s 260 310 300 310 92
@junction
j 60 230
+ p 2 -
+ w 21
j 60 310
+ s 15
+ w 21
j 70 160
+ p 3 1
+ w 23
j 60 190
+ p 2 +
+ w 23
j 110 160
+ p 3 2
+ w 27
j 120 190
+ p 4 2
+ w 27
j 120 230
+ p 4 1
+ w 31
j 120 310
+ s 16
+ w 31
j 280 160
+ p 14 b
+ w 27
j 120 160
+ w 27
+ w 27
j 160 140
+ p 9 1
+ w 27
j 150 100
+ p 8 1
+ w 39
j 120 70
+ p 7 2
+ w 39
j 60 70
+ p 7 1
+ w 23
j 60 160
+ w 23
+ w 23
j 230 120
+ p 13 1
+ w 45
j 210 100
+ p 8 2
+ w 45
j 190 140
+ p 9 2
+ w 45
j 220 120
+ w 45
+ w 45
j 260 120
+ p 13 2
+ w 55
j 270 130
+ s 18
+ w 55
j 310 70
+ p 12 1
+ w 39
j 340 70
+ p 12 2
+ w 61
j 360 80
+ s 19
+ w 61
j 300 140
+ p 14 c
+ w 39
j 300 70
+ w 39
+ w 39
j 340 200
+ p 5 2
+ w 68
j 300 180
+ p 14 e
+ w 68
j 260 220
+ p 11 2
+ w 68
j 300 190
+ w 68
+ w 68
j 340 260
+ p 6 2
+ w 78
j 340 240
+ p 5 1
+ w 78
j 300 260
+ p 10 2
+ w 78
j 340 250
+ w 78
+ w 78
j 340 300
+ p 6 1
+ w 85
j 300 310
+ s 17
+ w 85
j 300 290
+ p 10 1
+ w 85
j 260 250
+ p 11 1
+ w 85
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
