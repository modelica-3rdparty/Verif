*version 9.1 817812689
u 139
M? 5
L? 3
K? 2
R? 3
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1us
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test14\test14.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test14.lib
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
pageloc 1 0 4781
@status
n 0 107:07:04:19:49:05;1186249745 e
s 2833 107:07:12:18:25:19;1186935919 e
c 107:07:26:07:58:12;1188107892
*page 1 0 970 720 iA
@ports
port 12 GND_EARTH 500 360 h
port 13 GND_EARTH 430 360 h
port 16 GND_EARTH 120 360 h
port 14 GND_EARTH 380 360 h
port 15 GND_EARTH 180 360 h
@parts
part 8 K_Linear 390 120 h
a 0 u 13 0 4 42 hln 100 L1=L1
a 0 u 13 0 4 53 hln 100 L2=L2
a 0 sp 11 0 1 20 hln 100 PART=K_Linear
a 0 u 13 13 31 30 hcn 100 COUPLING=0.9
a 0 x 0:13 0 0 0 hln 100 PKGREF=K12
a 1 xp 9 0 22 8 hcn 100 REFDES=K12
part 11 VSIN 500 280 h
a 1 u 0 0 0 0 hcn 100 VOFF=1V
a 1 u 0 0 0 0 hcn 100 VAMPL=5V
a 1 u 0 0 0 0 hcn 100 FREQ=2MegHz
a 1 u 0 0 0 0 hcn 100 TD=10ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 20 10 hcn 100 REFDES=VS1
part 9 r 500 240 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 35 25 hln 100 REFDES=R1
a 0 u 13 0 0 25 hln 100 VALUE=10
part 7 L 430 210 v
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L2
a 0 ap 9 0 45 25 hln 100 REFDES=L2
a 0 u 13 0 10 35 hln 100 VALUE=1uH
part 17 VDC 120 150 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 -1 38 hcn 100 DC=10V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -1 2 hcn 100 REFDES=VC1
part 10 r 380 340 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 35 25 hln 100 REFDES=R2
a 0 u 13 0 0 30 hln 100 VALUE=1e5
part 6 L 380 150 d
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L1
a 0 ap 9 0 10 25 hln 100 REFDES=L1
a 0 u 13 0 50 35 hln 100 VALUE=1uH
part 4 MbreakN 240 250 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M3
a 0 ap 9 0 5 10 hln 100 REFDES=M3
a 0 sp 13 0 -12 40 hln 100 MODEL=MbreakN-X2
part 5 MbreakN 240 320 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M4
a 0 ap 9 0 5 10 hln 100 REFDES=M4
a 0 sp 13 0 -12 40 hln 100 MODEL=MbreakN-X3
part 3 MbreakN 240 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 sp 13 0 -12 40 hln 100 MODEL=MbreakN-X
part 2 MbreakN 240 110 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 sp 13 0 -12 40 hln 100 MODEL=MbreakN-X1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 19
s 500 320 500 360 18
w 21
s 500 240 500 280 20
w 23
s 430 150 500 150 22
s 500 150 500 200 24
w 27
s 430 210 430 360 26
w 29
s 120 190 120 360 28
w 31
s 120 150 120 60 30
s 120 60 270 60 32
s 270 60 270 90 34
s 270 160 300 160 45
s 300 160 300 90 47
s 300 90 270 90 49
s 270 230 300 230 51
s 300 230 300 160 53
s 270 300 300 300 55
s 300 300 300 230 57
w 108
s 270 200 270 210 107
s 270 210 330 210 109
s 330 210 330 300 111
s 330 300 380 300 113
s 270 340 270 350 115
s 270 350 330 350 117
s 330 350 330 300 119
w 122
s 380 340 380 360 121
w 60
s 360 340 360 290 99
s 360 210 380 210 101
s 280 340 360 340 103
s 270 270 270 290 129
s 360 290 360 210 133
s 270 290 360 290 131
w 134
s 280 130 280 140 75
s 280 140 180 140 77
s 180 140 180 180 79
s 180 110 180 140 73
s 180 180 180 250 69
s 240 180 180 180 67
s 240 110 180 110 71
s 180 250 180 280 65
s 240 250 180 250 63
s 280 280 180 280 82
s 180 280 180 320 84
s 280 270 280 280 80
s 180 360 180 320 59
s 180 320 240 320 61
w 128
s 340 150 380 150 90
s 340 200 340 150 94
s 280 200 340 200 92
s 270 130 270 150 135
s 270 150 340 150 137
@junction
j 500 320
+ p 11 -
+ w 19
j 500 360
+ s 12
+ w 19
j 500 240
+ p 9 1
+ w 21
j 500 280
+ p 11 +
+ w 21
j 430 150
+ p 7 2
+ w 23
j 500 200
+ p 9 2
+ w 23
j 430 210
+ p 7 1
+ w 27
j 430 360
+ s 13
+ w 27
j 120 190
+ p 17 -
+ w 29
j 120 360
+ s 16
+ w 29
j 120 150
+ p 17 +
+ w 31
j 270 90
+ p 2 d
+ w 31
j 270 160
+ p 3 d
+ w 31
j 270 230
+ p 4 d
+ w 31
j 300 160
+ w 31
+ w 31
j 270 300
+ p 5 d
+ w 31
j 300 230
+ w 31
+ w 31
j 180 320
+ w 134
+ w 134
j 180 250
+ w 134
+ w 134
j 180 180
+ w 134
+ w 134
j 180 140
+ w 134
+ w 134
j 180 280
+ w 134
+ w 134
j 380 210
+ p 6 2
+ w 60
j 280 340
+ p 5 b
+ w 60
j 270 200
+ p 3 s
+ w 108
j 380 300
+ p 10 2
+ w 108
j 270 340
+ p 5 s
+ w 108
j 330 300
+ w 108
+ w 108
j 380 340
+ p 10 1
+ w 122
j 380 360
+ s 14
+ w 122
j 180 360
+ s 15
+ w 134
j 240 320
+ p 5 g
+ w 134
j 240 250
+ p 4 g
+ w 134
j 240 180
+ p 3 g
+ w 134
j 240 110
+ p 2 g
+ w 134
j 280 130
+ p 2 b
+ w 134
j 280 270
+ p 4 b
+ w 134
j 380 150
+ p 6 1
+ w 128
j 280 200
+ p 3 b
+ w 128
j 270 270
+ p 4 s
+ w 60
j 360 290
+ w 60
+ w 60
j 270 130
+ p 2 s
+ w 128
j 340 150
+ w 128
+ w 128
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
