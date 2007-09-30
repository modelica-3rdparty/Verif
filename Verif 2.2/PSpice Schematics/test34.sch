*version 9.1 808320967
u 138
Q? 3
R? 7
V? 6
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test34\test34.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test34.lib
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
pageloc 1 0 2341
@status
n 0 107:07:07:21:03:37;1186513417 e
s 2833 107:07:23:07:12:18;1187845938 e
c 107:07:26:07:59:18;1188107958
*page 1 0 970 720 iA
@ports
port 10 GND_EARTH 380 240 h
port 9 GND_EARTH 210 240 h
port 67 GND_EARTH 320 240 h
@parts
part 4 R 240 180 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 37 R 330 140 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 79 VDC 380 200 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 30 17 hcn 100 REFDES=VC1
a 1 u 13 0 -13 22 hcn 100 DC=5V
part 121 VPULSE 210 200 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=5V
a 1 u 0 0 0 0 hcn 100 TD=2ns
a 1 u 0 0 0 0 hcn 100 TR=2ns
a 1 u 0 0 0 0 hcn 100 TF=2ns
a 1 u 0 0 0 0 hcn 100 PW=30ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 24 6 hcn 100 REFDES=VT1
part 3 QbreakN 300 180 h
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
w 123
a 0 up 0:33 0 0 0 hln 100 V=
s 240 180 210 180 122
a 0 up 33 0 225 179 hct 100 V=
s 210 180 210 200 124
w 127
a 0 up 0:33 0 0 0 hln 100 V=
s 280 180 300 180 126
a 0 up 33 0 290 179 hct 100 V=
w 129
a 0 up 0:33 0 0 0 hln 100 V=
s 330 140 320 140 128
s 320 140 320 160 130
a 0 up 33 0 322 150 hlt 100 V=
w 133
a 0 up 0:33 0 0 0 hln 100 V=
s 370 140 380 140 132
s 380 140 380 200 134
a 0 up 33 0 382 170 hlt 100 V=
w 137
a 0 up 0:33 0 0 0 hln 100 V=
s 320 200 320 240 136
a 0 up 33 0 322 220 hlt 100 V=
@junction
j 380 240
+ s 10
+ p 79 -
j 210 240
+ s 9
+ p 121 -
j 240 180
+ p 4 1
+ w 123
j 210 200
+ p 121 +
+ w 123
j 300 180
+ p 3 b
+ w 127
j 280 180
+ p 4 2
+ w 127
j 330 140
+ p 37 1
+ w 129
j 320 160
+ p 3 c
+ w 129
j 370 140
+ p 37 2
+ w 133
j 380 200
+ p 79 +
+ w 133
j 320 200
+ p 3 e
+ w 137
j 320 240
+ s 67
+ w 137
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
