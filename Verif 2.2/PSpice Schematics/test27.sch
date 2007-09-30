*version 9.1 953227507
u 108
Q? 3
R? 5
V? 5
I? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 20s
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
pageloc 1 0 2714
@status
n 0 107:07:06:22:27:19;1186432039 e
s 2832 107:07:12:21:18:58;1186946338 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 140 230 h
port 10 GND_EARTH 180 90 h
port 9 GND_EARTH 240 230 h
@parts
part 4 R 160 160 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=10
part 37 R 240 130 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 4 hln 100 REFDES=R2
a 0 u 13 0 15 35 hln 100 VALUE=100
part 6 VDC 230 80 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -8 11 hcn 100 REFDES=VC1
a 1 u 13 0 29 12 hcn 100 DC=5V
part 2 QbreakN 220 160 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakN
part 105 R 240 230 v
a 0 u 13 0 15 31 hln 100 VALUE=10
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 15 4 hln 100 REFDES=R3
part 84 VPWL 140 180 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 22 6 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=20s
a 1 u 0 0 0 0 hcn 100 V2=4V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 86
a 0 up 0:33 0 0 0 hln 100 V=
s 140 220 140 230 85
a 0 up 33 0 142 225 hlt 100 V=
w 88
a 0 up 0:33 0 0 0 hln 100 V=
s 160 160 140 160 87
s 140 160 140 180 89
a 0 up 33 0 142 170 hlt 100 V=
w 92
a 0 up 0:33 0 0 0 hln 100 V=
s 200 160 220 160 91
a 0 up 33 0 210 159 hct 100 V=
w 96
a 0 up 0:33 0 0 0 hln 100 V=
s 240 130 240 140 95
a 0 up 33 0 242 135 hlt 100 V=
w 98
a 0 up 0:33 0 0 0 hln 100 V=
s 230 80 240 80 97
s 240 80 240 90 99
a 0 up 33 0 242 85 hlt 100 V=
w 102
a 0 up 0:33 0 0 0 hln 100 V=
s 190 80 180 80 101
s 180 80 180 90 103
a 0 up 33 0 182 85 hlt 100 V=
w 107
a 0 up 0:33 0 0 0 hln 100 V=
s 240 180 240 190 106
a 0 up 33 0 242 185 hlt 100 V=
@junction
j 140 230
+ s 8
+ w 86
j 160 160
+ p 4 1
+ w 88
j 220 160
+ p 2 b
+ w 92
j 200 160
+ p 4 2
+ w 92
j 240 130
+ p 37 1
+ w 96
j 240 140
+ p 2 c
+ w 96
j 230 80
+ p 6 +
+ w 98
j 240 90
+ p 37 2
+ w 98
j 190 80
+ p 6 -
+ w 102
j 180 90
+ s 10
+ w 102
j 240 230
+ p 105 1
+ s 9
j 240 180
+ p 2 e
+ w 107
j 240 190
+ p 105 2
+ w 107
j 140 220
+ p 84 -
+ w 86
j 140 180
+ p 84 +
+ w 88
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
