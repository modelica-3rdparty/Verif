*version 9.1 859528334
u 145
Q? 4
R? 8
V? 5
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
pageloc 1 0 4185
@status
n 0 107:07:07:11:02:27;1186477347 e
s 2832 107:07:12:21:22:42;1186946562 e
*page 1 0 970 720 iA
@ports
port 9 GND_EARTH 280 300 h
port 8 GND_EARTH 330 270 h
@parts
part 87 R 220 180 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 4 R 220 140 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=0.1
part 6 VDC 160 160 D
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -8 11 hcn 100 REFDES=VC1
a 1 u 13 0 29 12 hcn 100 DC=6V
part 36 R 130 240 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 4 hln 100 REFDES=R3
a 0 u 13 0 15 33 hln 100 VALUE=1k
part 5 R 280 240 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 15 4 hln 100 REFDES=R4
a 0 u 13 0 15 33 hln 100 VALUE=3k
part 88 VPWL 280 260 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 22 8 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 DC=-4V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=-4V
a 1 u 0 0 0 0 hcn 100 T2=10s
a 1 u 0 0 0 0 hcn 100 V2=4V
part 85 R 190 250 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
a 0 u 13 0 15 25 hln 100 VALUE=3k
part 3 QbreakN 290 180 U
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 13 5 hln 100 REFDES=Q2
a 0 sp 13 0 15 42 hln 100 MODEL=QbreakN
part 37 R 330 260 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R7
a 0 xp 9 0 15 4 hln 100 REFDES=R7
a 0 u 13 0 17 41 hln 100 VALUE=0.001
part 86 R 220 100 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R6
a 0 ap 9 0 15 0 hln 100 REFDES=R6
a 0 u 13 0 15 25 hln 100 VALUE=0.1
part 84 QbreakP 290 60 h
a 0 sp 13 0 -15 42 hln 100 MODEL=QbreakP
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 xp 9 0 5 5 hln 100 REFDES=Q1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 90
s 260 180 280 180 89
s 280 180 290 180 93
s 280 200 280 180 91
w 95
s 310 160 310 140 94
s 310 140 260 140 96
w 99
s 220 180 210 180 98
s 210 180 210 160 100
s 210 160 200 160 102
s 220 140 210 140 104
s 210 140 210 160 106
w 109
s 160 160 130 160 108
s 130 160 130 200 110
s 220 100 130 100 112
s 130 100 130 160 114
w 121
s 280 240 280 250 120
s 280 250 280 260 124
s 230 250 280 250 122
w 126
s 330 260 330 270 125
w 128
s 310 200 330 200 127
s 330 200 330 220 129
s 330 200 330 40 131
s 330 40 310 40 133
w 136
s 310 80 310 100 135
s 310 100 260 100 137
w 117
s 190 250 130 250 116
s 130 250 130 240 118
s 130 250 100 250 139
s 100 250 100 60 141
s 100 60 290 60 143
@junction
j 290 180
+ p 3 b
+ w 90
j 260 180
+ p 87 2
+ w 90
j 280 200
+ p 5 2
+ w 90
j 280 180
+ w 90
+ w 90
j 310 160
+ p 3 e
+ w 95
j 260 140
+ p 4 2
+ w 95
j 220 180
+ p 87 1
+ w 99
j 200 160
+ p 6 -
+ w 99
j 220 140
+ p 4 1
+ w 99
j 210 160
+ w 99
+ w 99
j 160 160
+ p 6 +
+ w 109
j 130 200
+ p 36 2
+ w 109
j 220 100
+ p 86 1
+ w 109
j 130 160
+ w 109
+ w 109
j 280 300
+ p 88 -
+ s 9
j 190 250
+ p 85 1
+ w 117
j 130 240
+ p 36 1
+ w 117
j 280 240
+ p 5 1
+ w 121
j 280 260
+ p 88 +
+ w 121
j 230 250
+ p 85 2
+ w 121
j 280 250
+ w 121
+ w 121
j 330 260
+ p 37 1
+ w 126
j 330 270
+ s 8
+ w 126
j 310 200
+ p 3 c
+ w 128
j 330 220
+ p 37 2
+ w 128
j 330 200
+ w 128
+ w 128
j 310 40
+ p 84 c
+ w 128
j 310 80
+ p 84 e
+ w 136
j 260 100
+ p 86 2
+ w 136
j 130 250
+ w 117
+ w 117
j 290 60
+ p 84 b
+ w 117
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
