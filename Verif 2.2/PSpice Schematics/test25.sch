*version 9.1 627515594
u 84
Q? 3
R? 5
V? 4
I? 2
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
pageloc 1 0 3449
@status
n 0 107:07:06:21:53:55;1186430035 e
s 2832 107:07:12:21:09:42;1186945782 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 120 280 h
port 9 GND_EARTH 180 280 h
port 38 GND_EARTH 300 200 h
port 10 GND_EARTH 180 90 h
@parts
part 40 VSIN 120 180 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 22 8 hcn 100 REFDES=VS1
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=0.1V
a 1 u 0 0 0 0 hcn 100 FREQ=0.2Hz
a 1 u 0 0 0 0 hcn 100 TD=0s
a 1 u 0 0 0 0 hcn 100 DF=0.1
part 37 R 180 270 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 4 hln 100 REFDES=R4
a 0 u 13 0 15 29 hln 100 VALUE=10
part 39 IDC 250 190 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC1
a 1 xp 9 0 28 26 hcn 100 REFDES=IC1
a 0 sp 11 0 -2 44 hln 100 PART=IDC
a 1 u 13 0 -9 29 hcn 100 DC=0.16A
part 5 R 260 130 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 u 13 0 15 33 hln 100 VALUE=100
a 0 ap 9 0 15 4 hln 100 REFDES=R2
part 6 VDC 230 80 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -8 11 hcn 100 REFDES=VC1
a 1 u 13 0 29 12 hcn 100 DC=15V
part 4 R 150 160 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=10
part 2 QbreakN 210 160 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakN
part 3 QbreakN 210 220 U
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 13 5 hln 100 REFDES=Q2
a 0 sp 13 0 15 42 hln 100 MODEL=QbreakN
part 36 R 320 130 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 33 hln 100 VALUE=100
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 4 hln 100 REFDES=R3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 42
s 120 220 120 280 41
w 44
s 150 160 120 160 43
s 120 160 120 180 45
w 48
s 210 220 180 220 47
s 180 220 180 230 49
w 52
s 180 270 180 280 51
w 54
s 230 180 230 190 53
s 230 190 230 200 57
s 250 190 230 190 55
w 59
s 290 190 300 190 58
s 300 190 300 200 60
w 63
s 230 140 260 140 62
s 260 140 260 130 64
w 71
s 190 80 180 80 70
s 180 80 180 90 72
w 75
s 190 160 210 160 74
w 67
s 260 90 260 80 66
s 260 80 230 80 68
s 320 90 320 80 76
s 320 80 260 80 78
w 81
s 230 240 320 240 80
s 320 240 320 130 82
@junction
j 120 220
+ p 40 -
+ w 42
j 120 280
+ s 8
+ w 42
j 150 160
+ p 4 1
+ w 44
j 120 180
+ p 40 +
+ w 44
j 210 220
+ p 3 b
+ w 48
j 180 230
+ p 37 2
+ w 48
j 180 270
+ p 37 1
+ w 52
j 180 280
+ s 9
+ w 52
j 230 180
+ p 2 e
+ w 54
j 230 200
+ p 3 e
+ w 54
j 250 190
+ p 39 +
+ w 54
j 230 190
+ w 54
+ w 54
j 290 190
+ p 39 -
+ w 59
j 300 200
+ s 38
+ w 59
j 230 140
+ p 2 c
+ w 63
j 260 130
+ p 5 1
+ w 63
j 260 90
+ p 5 2
+ w 67
j 230 80
+ p 6 +
+ w 67
j 190 80
+ p 6 -
+ w 71
j 180 90
+ s 10
+ w 71
j 190 160
+ p 4 2
+ w 75
j 210 160
+ p 2 b
+ w 75
j 320 90
+ p 36 2
+ w 67
j 260 80
+ w 67
+ w 67
j 230 240
+ p 3 c
+ w 81
j 320 130
+ p 36 1
+ w 81
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
