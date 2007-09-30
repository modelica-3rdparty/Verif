*version 9.1 2155786725
u 27
I? 2
R? 2
L? 2
C? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 200s
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
pageloc 1 0 1855
@status
n 0 107:07:04:18:00:53;1186243253 e
s 2832 107:07:12:18:08:25;1186934905 e
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 100 230 h
port 7 GND_EARTH 190 230 h
port 8 GND_EARTH 230 230 h
@parts
part 2 IPWL 100 170 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=I1
a 1 ap 9 0 20 10 hcn 100 REFDES=I1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 I1=1A
a 1 u 0 0 0 0 hcn 100 T2=60s
a 1 u 0 0 0 0 hcn 100 I2=0A
part 3 r 120 150 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 20 25 hln 100 VALUE=1
part 4 L 190 160 d
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=L2012C
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=L1
a 0 ap 9 0 15 25 hln 100 REFDES=L1
a 0 u 13 0 55 50 hln 100 VALUE=0.9118906
part 5 c 230 200 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 u 13 0 0 20 hln 100 VALUE=1
a 0 ap 9 0 25 25 hln 100 REFDES=C1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 10
s 100 210 100 230 9
w 12
s 120 150 100 150 11
s 100 150 100 170 13
w 20
s 190 220 190 230 19
w 16
s 160 150 190 150 15
s 190 150 190 160 17
s 190 150 230 150 21
s 230 150 230 170 23
w 26
s 230 200 230 230 25
@junction
j 100 210
+ p 2 -
+ w 10
j 100 230
+ s 6
+ w 10
j 120 150
+ p 3 1
+ w 12
j 100 170
+ p 2 +
+ w 12
j 160 150
+ p 3 2
+ w 16
j 190 160
+ p 4 1
+ w 16
j 190 220
+ p 4 2
+ w 20
j 190 230
+ s 7
+ w 20
j 190 150
+ w 16
+ w 16
j 230 170
+ p 5 2
+ w 16
j 230 200
+ p 5 1
+ w 26
j 230 230
+ s 8
+ w 26
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
