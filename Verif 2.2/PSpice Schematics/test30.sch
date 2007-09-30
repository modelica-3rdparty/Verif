*version 9.1 256749664
u 115
Q? 4
R? 8
V? 5
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10s
.OP 0
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
pageloc 1 0 3352
@status
n 0 107:07:07:14:38:44;1186490324 e
s 2832 107:07:12:21:29:54;1186946994 e
c 107:07:07:14:38:42;1186490322
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 290 270 h
port 9 GND_EARTH 350 270 h
port 74 GND_EARTH 210 270 h
@parts
part 4 R 290 260 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 17 4 hln 100 REFDES=R1
a 0 u 13 0 17 29 hln 100 VALUE=10
part 80 R 350 260 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 17 4 hln 100 REFDES=R4
a 0 u 13 0 17 27 hln 100 VALUE=10
part 3 QbreakN 330 150 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 5 5 hln 100 REFDES=Q2
a 0 sp 13 0 -17 40 hln 100 MODEL=QbreakN
part 79 R 350 120 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 17 4 hln 100 REFDES=R3
a 0 u 13 0 17 27 hln 100 VALUE=5k
part 78 R 290 120 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 17 4 hln 100 REFDES=R2
a 0 u 13 0 15 27 hln 100 VALUE=1k
part 77 QbreakN 270 190 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 sp 13 0 -17 40 hln 100 MODEL=QbreakN
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 xp 9 0 5 5 hln 100 REFDES=Q1
part 81 VPWL 210 200 h
a 1 u 0 0 0 0 hcn 100 DC=-4V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=-4V
a 1 u 0 0 0 0 hcn 100 T2=10s
a 1 u 0 0 0 0 hcn 100 V2=4V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 22 6 hcn 100 REFDES=VR1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 83
a 0 up 0:33 0 0 0 hln 100 V=
s 290 210 290 220 82
a 0 up 33 0 292 215 hlt 100 V=
w 85
a 0 up 0:33 0 0 0 hln 100 V=
s 290 260 290 270 84
a 0 up 33 0 292 265 hlt 100 V=
w 87
a 0 up 0:33 0 0 0 hln 100 V=
s 350 170 350 220 86
a 0 up 33 0 352 195 hlt 100 V=
w 89
a 0 up 0:33 0 0 0 hln 100 V=
s 350 260 350 270 88
a 0 up 33 0 352 265 hlt 100 V=
w 96
a 0 up 0:33 0 0 0 hln 100 V=
s 350 120 350 130 95
a 0 up 33 0 352 125 hlt 100 V=
w 104
a 0 up 0:33 0 0 0 hln 100 V=
s 210 240 210 270 103
a 0 up 33 0 212 255 hlt 100 V=
w 106
a 0 up 0:33 0 0 0 hln 100 V=
s 210 200 210 70 105
a 0 up 33 0 212 135 hlt 100 V=
s 350 80 350 70 97
s 350 70 290 70 99
s 290 70 290 80 101
s 210 70 290 70 107
w 91
a 0 up 0:33 0 0 0 hln 100 V=
s 290 120 290 150 90
s 290 150 290 170 94
s 330 150 290 150 92
s 270 190 250 190 109
s 250 190 250 150 111
s 250 150 290 150 113
a 0 up 33 0 270 149 hct 100 V=
@junction
j 290 210
+ p 77 e
+ w 83
j 290 220
+ p 4 2
+ w 83
j 290 260
+ p 4 1
+ w 85
j 290 270
+ s 8
+ w 85
j 350 170
+ p 3 e
+ w 87
j 350 220
+ p 80 2
+ w 87
j 350 260
+ p 80 1
+ w 89
j 350 270
+ s 9
+ w 89
j 290 120
+ p 78 1
+ w 91
j 290 170
+ p 77 c
+ w 91
j 330 150
+ p 3 b
+ w 91
j 290 150
+ w 91
+ w 91
j 350 120
+ p 79 1
+ w 96
j 350 130
+ p 3 c
+ w 96
j 210 240
+ p 81 -
+ w 104
j 210 270
+ s 74
+ w 104
j 210 200
+ p 81 +
+ w 106
j 350 80
+ p 79 2
+ w 106
j 290 80
+ p 78 2
+ w 106
j 290 70
+ w 106
+ w 106
j 270 190
+ p 77 b
+ w 91
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
