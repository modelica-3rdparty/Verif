*version 9.1 137961111
u 52
E? 2
V? 2
R? 3
C? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.0002s
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
pageloc 1 0 2690
@status
n 0 107:07:04:21:09:45;1186254585 e
s 2832 107:07:04:21:09:52;1186254592 e
*page 1 0 970 720 iA
@ports
port 8 GND_EARTH 190 200 h
@parts
part 3 VPWL 150 140 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 DC=2.5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=2V
a 1 u 0 0 0 0 hcn 100 T2=0.01ms
a 1 u 0 0 0 0 hcn 100 V2=2V
a 1 u 0 0 0 0 hcn 100 T3=0.03ms
a 1 u 0 0 0 0 hcn 100 V3=3V
part 4 r 90 70 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=100k
part 5 r 170 120 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=100k
part 7 c 230 170 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 u 13 0 0 30 hln 100 VALUE=0.1n
a 0 ap 9 0 25 25 hln 100 REFDES=C2
part 6 c 270 170 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 u 13 0 0 30 hln 100 VALUE=0.1n
a 0 ap 9 0 25 25 hln 100 REFDES=C1
part 2 E 130 110 H
a 0 s 11 0 10 34 hln 100 PART=E
a 0 a 0:13 0 0 0 hln 100 PKGREF=E1
a 1 ap 9 0 10 4 hln 100 REFDES=E1
a 0 u 0 0 0 10 hln 100 GAIN=2000
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 14
s 130 120 150 120 13
s 150 120 170 120 17
s 150 140 150 120 15
w 25
s 90 70 80 70 24
s 80 70 80 110 26
s 80 110 90 110 28
w 31
s 230 140 230 120 30
s 230 120 210 120 32
w 19
s 130 110 140 110 18
s 140 110 140 70 20
s 140 70 130 70 22
s 270 140 270 70 34
s 270 70 140 70 36
w 10
s 150 180 150 200 9
s 150 200 190 200 11
s 230 170 230 200 38
s 230 200 190 200 40
s 270 170 270 200 42
s 270 200 230 200 44
s 90 120 80 120 46
s 80 120 80 200 48
s 80 200 150 200 50
@junction
j 150 180
+ p 3 -
+ w 10
j 190 200
+ s 8
+ w 10
j 130 120
+ p 2 2
+ w 14
j 170 120
+ p 5 1
+ w 14
j 150 140
+ p 3 +
+ w 14
j 150 120
+ w 14
+ w 14
j 130 110
+ p 2 1
+ w 19
j 130 70
+ p 4 2
+ w 19
j 90 70
+ p 4 1
+ w 25
j 90 110
+ p 2 3
+ w 25
j 230 140
+ p 7 2
+ w 31
j 210 120
+ p 5 2
+ w 31
j 270 140
+ p 6 2
+ w 19
j 140 70
+ w 19
+ w 19
j 230 170
+ p 7 1
+ w 10
j 270 170
+ p 6 1
+ w 10
j 230 200
+ w 10
+ w 10
j 90 120
+ p 2 4
+ w 10
j 150 200
+ w 10
+ w 10
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
