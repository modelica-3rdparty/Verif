*version 9.1 706908568
u 30
Q? 3
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
pageloc 1 0 1486
@status
n 0 107:07:14:16:16:20;1187100980 e
s 2832 107:07:14:16:16:28;1187100988 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 270 190 h
port 7 GND_EARTH 210 190 h
port 6 GND_EARTH 170 190 h
@parts
part 19 QbreakP 230 130 H
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakP
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 xp 9 0 5 5 hln 100 REFDES=Q1
part 4 VPWL 210 150 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V2=3V
a 1 xp 9 0 -2 4 hcn 100 REFDES=VR1
part 5 VDC 170 150 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 -4 -1 hcn 100 REFDES=VC1
a 1 u 13 0 -5 32 hcn 100 DC=3V
part 3 R 270 190 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 u 13 0 15 31 hln 100 VALUE=500
a 0 ap 9 0 17 4 hln 100 REFDES=R1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 23
s 210 110 170 110 22
s 170 110 170 150 24
w 27
s 230 130 270 130 26
s 270 130 270 150 28
@junction
j 270 190
+ s 8
+ p 3 1
j 210 190
+ s 7
+ p 4 -
j 170 190
+ s 6
+ p 5 -
j 210 150
+ p 19 e
+ p 4 +
j 210 110
+ p 19 c
+ w 23
j 170 150
+ p 5 +
+ w 23
j 230 130
+ p 19 b
+ w 27
j 270 150
+ p 3 2
+ w 27
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
