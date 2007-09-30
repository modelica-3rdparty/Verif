*version 9.1 252102067
u 113
V? 5
E? 2
D? 2
M? 4
R? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 2s
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
pageloc 1 0 2271
@status
c 107:07:03:14:02:02;1186142522
n 0 107:07:03:14:02:10;1186142530 e
s 2832 107:07:12:15:10:21;1186924221 e
*page 1 0 970 720 iA
@ports
port 26 GND_EARTH 210 170 h
@parts
part 4 VDC 170 40 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 29 13 hcn 100 DC=3V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -11 12 hcn 100 REFDES=VC1
part 47 VPULSE 160 130 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VP1
a 1 xp 9 0 -10 15 hcn 100 REFDES=VP1
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=3V
a 1 u 0 0 0 0 hcn 100 TD=0.25s
a 1 u 0 0 0 0 hcn 100 TR=0s
a 1 u 0 0 0 0 hcn 100 TF=0s
a 1 u 0 0 0 0 hcn 100 PW=0.25s
a 1 u 0 0 0 0 hcn 100 PER=0.5s
part 13 MbreakN 180 130 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 NRD=1Ohm
a 0 u 0 0 0 0 hln 100 NRS=1Ohm
part 46 MbreakN 240 70 H
a 0 u 0 0 0 0 hln 100 NRD=1Ohm
a 0 u 0 0 0 0 hln 100 NRS=1Ohm
a 0 x 0:13 0 0 0 hln 100 PKGREF=M2
a 0 xp 9 0 5 10 hln 100 REFDES=M2
part 31 r 230 110 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 5 25 hln 100 VALUE=1e8Ohm
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 67
s 160 130 180 130 66
w 73
s 240 70 260 70 72
s 260 70 260 40 74
s 260 40 210 40 76
s 210 40 210 50 78
s 170 40 210 40 80
w 49
s 220 150 210 150 48
s 210 150 210 170 50
s 280 170 210 170 64
s 130 40 110 40 82
s 110 40 110 130 84
s 110 130 120 130 86
s 110 130 110 170 88
s 110 170 210 170 90
s 270 110 280 110 60
s 280 110 280 170 62
w 69
s 200 90 210 90 68
s 210 120 210 110 101
s 230 110 210 110 109
s 210 90 210 110 111
@junction
j 210 150
+ p 13 s
+ w 49
j 220 150
+ p 13 b
+ w 49
j 210 170
+ s 26
+ w 49
j 160 130
+ p 47 +
+ w 67
j 180 130
+ p 13 g
+ w 67
j 210 90
+ p 46 s
+ w 69
j 200 90
+ p 46 b
+ w 69
j 240 70
+ p 46 g
+ w 73
j 210 50
+ p 46 d
+ w 73
j 170 40
+ p 4 +
+ w 73
j 210 40
+ w 73
+ w 73
j 110 130
+ w 49
+ w 49
j 130 40
+ p 4 -
+ w 49
j 120 130
+ p 47 -
+ w 49
j 270 110
+ p 31 2
+ w 49
j 210 110
+ p 13 d
+ w 69
j 230 110
+ p 31 1
+ w 69
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
