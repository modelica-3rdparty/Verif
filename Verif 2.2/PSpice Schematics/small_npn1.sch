*version 9.1 702510857
u 19
Q? 2
R? 2
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1s
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
pageloc 1 0 1535
@status
n 0 107:07:14:15:59:56;1187099996 e
s 2832 107:07:14:16:00:01;1187100001 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 270 190 h
port 7 GND_EARTH 210 190 h
port 6 GND_EARTH 170 190 h
@parts
part 3 R 270 190 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 31 hln 100 VALUE=500
part 4 VPWL 210 150 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 22 6 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V2=3V
part 2 QbreakN 250 130 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 sp 13 0 -15 42 hln 100 MODEL=QbreakN
a 0 ap 9 0 1 1 hln 100 REFDES=Q1
part 5 VDC 170 150 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 -11 18 hcn 100 DC=3V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 10
s 250 130 210 130 9
s 210 130 210 150 11
w 14
s 270 110 270 90 13
s 270 90 170 90 15
s 170 90 170 150 17
@junction
j 270 150
+ p 3 2
+ p 2 e
j 270 190
+ s 8
+ p 3 1
j 210 190
+ s 7
+ p 4 -
j 170 190
+ s 6
+ p 5 -
j 250 130
+ p 2 b
+ w 10
j 210 150
+ p 4 +
+ w 10
j 270 110
+ p 2 c
+ w 14
j 170 150
+ p 5 +
+ w 14
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
