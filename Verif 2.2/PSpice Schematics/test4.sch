*version 9.1 2263307459
u 161
D? 5
V? 4
C? 2
R? 5
Q? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test3\test3.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test4.lib
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
pageloc 1 0 5944
@status
n 0 107:07:03:10:03:43;1186128223 e
s 2833 107:07:12:12:07:09;1186913229 e
c 107:07:26:07:55:57;1188107757
*page 1 0 970 720 iA
@ports
port 17 GND_EARTH 80 290 h
port 142 GND_EARTH 250 30 h
port 143 GND_EARTH 340 280 h
@parts
part 2 Dbreak 160 190 u
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 sp 13 0 30 0 hln 100 MODEL=Dbreak-X
a 0 ap 9 0 20 25 hln 100 REFDES=D1
part 3 Dbreak 160 230 u
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 20 25 hln 100 REFDES=D2
a 0 sp 13 0 30 0 hln 100 MODEL=Dbreak-X
part 4 Dbreak 160 270 u
a 0 a 0:13 0 0 0 hln 100 PKGREF=D3
a 0 ap 9 0 20 25 hln 100 REFDES=D3
a 0 sp 13 0 30 0 hln 100 MODEL=Dbreak-X
part 108 r 230 170 H
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 u 13 0 5 25 hln 100 VALUE=15kOhm
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 15 c 220 130 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 u 13 0 5 25 hln 100 VALUE=0.01
a 0 ap 9 0 10 0 hln 100 REFDES=C1
part 83 VPWL 120 190 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 25 15 hcn 100 REFDES=VS1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=0.599s
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T3=0.6s
a 1 u 0 0 0 0 hcn 100 V3=12V
part 84 VPWL 120 230 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS2
a 1 xp 9 0 25 15 hcn 100 REFDES=VS2
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 V3=12V
a 1 u 0 0 0 0 hcn 100 T2=0.699s
a 1 u 0 0 0 0 hcn 100 T3=0.7s
part 85 VPWL 120 270 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS3
a 1 xp 9 0 25 15 hcn 100 REFDES=VS3
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 V3=12V
a 1 u 0 0 0 0 hcn 100 T2=0.799s
a 1 u 0 0 0 0 hcn 100 T3=0.8s
part 141 VDC 340 70 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 24 33 hcn 100 DC=12V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC3
a 1 xp 9 0 24 7 hcn 100 REFDES=VC3
part 110 r 340 120 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 30 0 hln 100 REFDES=R4
a 0 u 13 0 0 5 hln 100 VALUE=2200Ohm
part 133 VDC 260 240 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC2
a 1 xp 9 0 24 7 hcn 100 REFDES=VC2
a 1 u 13 0 24 33 hcn 100 DC=-12V
part 16 r 170 120 V
a 0 u 13 0 20 50 hln 100 VALUE=15kOhm
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 20 0 hln 100 REFDES=R1
part 140 VDC 170 70 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 24 33 hcn 100 DC=12V
part 109 r 260 230 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 30 0 hln 100 REFDES=R3
a 0 u 13 0 0 5 hln 100 VALUE=100kOhm
part 150 QbreakN 320 170 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 5 40 hln 100 MODEL=QbreakN-X
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 87
a 0 up 0:33 0 0 0 hln 100 V=
s 80 270 80 290 86
s 80 230 80 270 88
s 80 190 80 230 90
a 0 up 33 0 82 210 hlt 100 V=
w 103
a 0 up 0:33 0 0 0 hln 100 V=
s 130 190 120 190 102
a 0 up 33 0 125 189 hct 100 V=
w 105
a 0 up 0:33 0 0 0 hln 100 V=
s 130 230 120 230 104
a 0 up 33 0 125 229 hct 100 V=
w 107
a 0 up 0:33 0 0 0 hln 100 V=
s 130 270 120 270 106
a 0 up 33 0 125 269 hct 100 V=
w 93
a 0 up 0:33 0 0 0 hln 100 V=
s 160 230 170 230 92
s 170 230 170 270 94
s 170 270 160 270 96
s 160 190 170 190 98
s 170 190 170 230 100
s 170 170 190 170 111
s 170 170 170 190 113
s 190 130 170 130 115
s 170 130 170 170 117
a 0 up 33 0 172 150 hlt 100 V=
s 170 120 170 130 119
w 135
a 0 up 0:33 0 0 0 hln 100 V=
s 260 230 260 240 134
a 0 up 33 0 262 235 hlt 100 V=
w 145
a 0 up 0:33 0 0 0 hln 100 V=
s 170 30 250 30 144
s 250 30 340 30 146
a 0 up 33 0 295 29 hct 100 V=
w 149
a 0 up 0:33 0 0 0 hln 100 V=
s 340 70 340 80 148
a 0 up 33 0 342 75 hlt 100 V=
w 152
a 0 up 0:33 0 0 0 hln 100 V=
s 340 120 340 150 151
a 0 up 33 0 342 135 hlt 100 V=
w 122
a 0 up 0:33 0 0 0 hln 100 V=
s 240 170 230 170 125
s 220 130 240 130 121
s 240 130 240 170 123
s 260 190 260 170 136
s 260 170 240 170 138
s 320 170 260 170 153
a 0 up 33 0 290 169 hct 100 V=
w 156
a 0 up 0:33 0 0 0 hln 100 V=
s 340 190 340 280 155
a 0 up 33 0 342 235 hlt 100 V=
s 260 280 340 280 157
w 160
a 0 up 0:33 0 0 0 hln 100 V=
s 170 70 170 80 159
a 0 up 33 0 172 75 hlt 100 V=
@junction
j 80 270
+ p 85 -
+ w 87
j 80 290
+ s 17
+ w 87
j 80 230
+ p 84 -
+ w 87
j 80 190
+ p 83 -
+ w 87
j 160 230
+ p 3 1
+ w 93
j 160 270
+ p 4 1
+ w 93
j 160 190
+ p 2 1
+ w 93
j 170 230
+ w 93
+ w 93
j 120 190
+ p 83 +
+ w 103
j 130 190
+ p 2 2
+ w 103
j 120 230
+ p 84 +
+ w 105
j 130 230
+ p 3 2
+ w 105
j 120 270
+ p 85 +
+ w 107
j 130 270
+ p 4 2
+ w 107
j 190 170
+ p 108 2
+ w 93
j 170 190
+ w 93
+ w 93
j 230 170
+ p 108 1
+ w 122
j 190 130
+ p 15 2
+ w 93
j 170 170
+ w 93
+ w 93
j 170 120
+ p 16 1
+ w 93
j 170 130
+ w 93
+ w 93
j 220 130
+ p 15 1
+ w 122
j 260 230
+ p 109 1
+ w 135
j 260 240
+ p 133 +
+ w 135
j 260 190
+ p 109 2
+ w 122
j 240 170
+ w 122
+ w 122
j 170 30
+ p 140 -
+ w 145
j 250 30
+ s 142
+ w 145
j 340 30
+ p 141 -
+ w 145
j 340 80
+ p 110 2
+ w 149
j 340 70
+ p 141 +
+ w 149
j 340 120
+ p 110 1
+ w 152
j 340 150
+ p 150 c
+ w 152
j 320 170
+ p 150 b
+ w 122
j 260 170
+ w 122
+ w 122
j 340 190
+ p 150 e
+ w 156
j 340 280
+ s 143
+ w 156
j 260 280
+ p 133 -
+ w 156
j 170 80
+ p 16 2
+ w 160
j 170 70
+ p 140 +
+ w 160
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics