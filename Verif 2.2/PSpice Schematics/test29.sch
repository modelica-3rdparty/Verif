*version 9.1 2206630113
u 77
Q? 3
R? 5
V? 4
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
pageloc 1 0 3989
@status
n 0 107:07:07:11:47:57;1186480077 e
s 2832 107:07:12:21:26:18;1186946778 e
*page 1 0 970 720 iA
@ports
port 10 GND_EARTH 360 270 h
port 9 GND_EARTH 190 270 h
port 8 GND_EARTH 140 270 h
port 67 GND_EARTH 320 100 h
port 74 GND_EARTH 290 270 h
@parts
part 36 R 310 150 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=1.5k
part 6 VDC 360 220 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 -11 18 hcn 100 DC=3.6V
part 37 R 210 180 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=3.6k
part 4 R 210 120 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3.6k
part 39 VPULSE 140 220 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=1V
a 1 u 0 0 0 0 hcn 100 TD=1s
a 1 u 0 0 0 0 hcn 100 TR=0.01s
a 1 u 0 0 0 0 hcn 100 TF=0.01s
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 22 6 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 PW=2s
a 1 u 0 0 0 0 hcn 100 PER=4s
part 2 QbreakN 270 120 U
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 sp 13 0 17 40 hln 100 MODEL=QbreakN
a 0 ap 9 0 15 5 hln 100 REFDES=Q1
part 3 QbreakN 270 180 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 5 5 hln 100 REFDES=Q2
a 0 sp 13 0 -17 40 hln 100 MODEL=QbreakN
part 38 VPULSE 190 220 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT2
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=1V
a 1 u 0 0 0 0 hcn 100 TR=0.01s
a 1 u 0 0 0 0 hcn 100 TF=0.01s
a 1 u 0 0 0 0 hcn 100 PER=2s
a 1 u 0 0 0 0 hcn 100 PW=1s
a 1 xp 9 0 22 8 hcn 100 REFDES=VT2
a 1 u 0 0 0 0 hcn 100 TD=0s
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 41
a 0 up 0:33 0 0 0 hln 100 V=
s 360 260 360 270 40
a 0 up 33 0 362 265 hlt 100 V=
w 43
a 0 up 0:33 0 0 0 hln 100 V=
s 190 260 190 270 42
a 0 up 33 0 192 265 hlt 100 V=
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 140 260 140 270 44
a 0 up 33 0 142 265 hlt 100 V=
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 250 180 270 180 46
a 0 up 33 0 260 179 hct 100 V=
w 49
a 0 up 0:33 0 0 0 hln 100 V=
s 250 120 270 120 48
a 0 up 33 0 260 119 hct 100 V=
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 290 140 290 150 50
s 290 150 290 160 54
s 310 150 290 150 52
a 0 up 33 0 300 149 hct 100 V=
w 56
a 0 up 0:33 0 0 0 hln 100 V=
s 350 150 360 150 55
s 360 150 360 220 57
a 0 up 33 0 362 185 hlt 100 V=
w 60
a 0 up 0:33 0 0 0 hln 100 V=
s 210 180 190 180 59
s 190 180 190 220 61
a 0 up 33 0 192 200 hlt 100 V=
w 64
a 0 up 0:33 0 0 0 hln 100 V=
s 210 120 140 120 63
s 140 120 140 220 65
a 0 up 33 0 142 170 hlt 100 V=
w 69
a 0 up 0:33 0 0 0 hln 100 V=
s 290 100 290 80 68
s 290 80 320 80 70
a 0 up 33 0 305 79 hct 100 V=
s 320 80 320 100 72
w 76
a 0 up 0:33 0 0 0 hln 100 V=
s 290 200 290 270 75
a 0 up 33 0 292 235 hlt 100 V=
@junction
j 360 260
+ p 6 -
+ w 41
j 360 270
+ s 10
+ w 41
j 190 260
+ p 38 -
+ w 43
j 190 270
+ s 9
+ w 43
j 140 270
+ s 8
+ w 45
j 270 180
+ p 3 b
+ w 47
j 250 180
+ p 37 2
+ w 47
j 270 120
+ p 2 b
+ w 49
j 250 120
+ p 4 2
+ w 49
j 290 160
+ p 3 c
+ w 51
j 290 140
+ p 2 c
+ w 51
j 310 150
+ p 36 1
+ w 51
j 290 150
+ w 51
+ w 51
j 350 150
+ p 36 2
+ w 56
j 360 220
+ p 6 +
+ w 56
j 210 180
+ p 37 1
+ w 60
j 190 220
+ p 38 +
+ w 60
j 210 120
+ p 4 1
+ w 64
j 290 100
+ p 2 e
+ w 69
j 320 100
+ s 67
+ w 69
j 290 200
+ p 3 e
+ w 76
j 290 270
+ s 74
+ w 76
j 140 260
+ p 39 -
+ w 45
j 140 220
+ p 39 +
+ w 64
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
