*version 9.1 1065426182
u 47
R? 5
C? 4
L? 2
V? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10ns
.OPT 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
ABSTOL 0.01pA
RELTOL 0.0001
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
pageloc 1 0 3410
@status
n 0 107:07:12:20:51:49;1186944709 e
s 2832 107:07:12:20:52:18;1186944738 e
*page 1 0 970 720 iA
@ports
port 15 GND_EARTH 80 230 h
port 16 GND_EARTH 290 240 h
port 17 GND_EARTH 340 240 h
@parts
part 6 c 150 120 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=0.25
part 2 r 110 120 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=1
part 14 VPULSE 80 170 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=2V
a 1 u 0 0 0 0 hcn 100 TD=2ns
a 1 u 0 0 0 0 hcn 100 TR=2ns
a 1 u 0 0 0 0 hcn 100 TF=2ns
a 1 u 0 0 0 0 hcn 100 PW=20ns
a 1 u 0 0 0 0 hcn 100 PER=50ns
part 9 L 180 120 h
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L1
a 0 ap 9 0 15 0 hln 100 REFDES=L1
a 0 u 13 0 15 25 hln 100 VALUE=0.25
part 5 r 340 190 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 30 hln 100 VALUE=100
part 4 r 290 220 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 30 hln 100 VALUE=10k
part 8 c 340 220 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 15 0 hln 100 REFDES=C3
a 0 u 13 0 15 35 hln 100 VALUE=0.01
part 7 c 130 160 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=1
part 3 r 170 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 19
s 80 210 80 230 18
w 21
s 110 120 80 120 20
s 80 120 80 160 22
s 80 160 80 170 26
s 130 160 80 160 24
w 28
s 240 120 250 120 27
s 250 120 250 160 29
s 250 160 210 160 31
s 290 180 290 120 33
s 290 120 250 120 35
s 340 150 340 120 37
s 340 120 290 120 39
w 42
s 290 220 290 240 41
w 44
s 340 220 340 240 43
w 46
s 170 160 160 160 45
@junction
j 150 120
+ p 6 1
+ p 2 2
j 180 120
+ p 9 1
+ p 6 2
j 340 190
+ p 8 2
+ p 5 1
j 80 210
+ p 14 -
+ w 19
j 80 230
+ s 15
+ w 19
j 110 120
+ p 2 1
+ w 21
j 80 170
+ p 14 +
+ w 21
j 130 160
+ p 7 1
+ w 21
j 80 160
+ w 21
+ w 21
j 240 120
+ p 9 2
+ w 28
j 210 160
+ p 3 2
+ w 28
j 290 180
+ p 4 2
+ w 28
j 250 120
+ w 28
+ w 28
j 340 150
+ p 5 2
+ w 28
j 290 120
+ w 28
+ w 28
j 290 220
+ p 4 1
+ w 42
j 290 240
+ s 16
+ w 42
j 340 220
+ p 8 1
+ w 44
j 340 240
+ s 17
+ w 44
j 160 160
+ p 7 2
+ w 46
j 170 160
+ p 3 1
+ w 46
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
