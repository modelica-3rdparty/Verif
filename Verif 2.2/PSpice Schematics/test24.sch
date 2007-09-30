*version 9.1 2593017565
u 36
Q? 3
R? 3
V? 3
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
pageloc 1 0 2336
@status
n 0 107:07:12:21:04:08;1186945448 e
s 2832 107:07:12:21:04:12;1186945452 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 80 260 h
port 9 GND_EARTH 120 260 h
port 10 GND_EARTH 290 260 h
@parts
part 5 R 290 250 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 3 QbreakN 270 180 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 5 5 hln 100 REFDES=Q2
a 0 sp 13 0 -17 40 hln 100 MODEL=QbreakN
part 6 VDC 80 210 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 -11 18 hcn 100 DC=15V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
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
part 7 VPWL 120 210 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 22 6 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=10s
a 1 u 0 0 0 0 hcn 100 V2=16V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 12
s 80 250 80 260 11
w 14
s 120 250 120 260 13
w 16
s 150 160 120 160 15
s 120 160 120 210 17
w 20
s 230 180 270 180 19
w 22
s 290 200 290 210 21
w 24
s 290 250 290 260 23
w 32
s 190 160 210 160 31
w 26
s 290 160 290 110 25
s 290 110 230 110 27
s 80 110 80 210 29
s 230 110 80 110 35
s 230 140 230 110 33
@junction
j 80 250
+ p 6 -
+ w 12
j 80 260
+ s 8
+ w 12
j 120 250
+ p 7 -
+ w 14
j 120 260
+ s 9
+ w 14
j 150 160
+ p 4 1
+ w 16
j 120 210
+ p 7 +
+ w 16
j 230 180
+ p 2 e
+ w 20
j 270 180
+ p 3 b
+ w 20
j 290 210
+ p 5 2
+ w 22
j 290 200
+ p 3 e
+ w 22
j 290 250
+ p 5 1
+ w 24
j 290 260
+ s 10
+ w 24
j 290 160
+ p 3 c
+ w 26
j 80 210
+ p 6 +
+ w 26
j 190 160
+ p 4 2
+ w 32
j 210 160
+ p 2 b
+ w 32
j 230 140
+ p 2 c
+ w 26
j 230 110
+ w 26
+ w 26
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
