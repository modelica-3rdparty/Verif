*version 9.1 178721129
u 29
V? 2
R? 3
C? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 40s
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
pageloc 1 0 1797
@status
n 0 107:07:04:21:31:08;1186255868 e
s 2832 107:07:12:20:44:32;1186944272 e
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 180 240 h
@parts
part 2 VEXP 90 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 V1=2V
a 1 u 0 0 0 0 hcn 100 V2=10V
a 1 u 0 0 0 0 hcn 100 TD1=10s
a 1 u 0 0 0 0 hcn 100 TC1=0.5s
a 1 u 0 0 0 0 hcn 100 TD2=20s
a 1 u 0 0 0 0 hcn 100 TC2=0.5s
part 3 r 120 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 4 r 180 220 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 35 25 hln 100 REFDES=R2
a 0 u 13 0 5 25 hln 100 VALUE=2k
part 5 c 230 210 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 25 25 hln 100 REFDES=C1
a 0 u 13 0 0 25 hln 100 VALUE=0.1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 14
s 120 160 90 160 13
s 90 160 90 180 15
w 18
s 160 160 180 160 17
s 180 160 180 180 19
s 180 160 230 160 21
s 230 160 230 180 23
w 8
s 90 220 90 240 7
s 90 240 180 240 9
s 180 220 180 240 11
s 230 210 230 240 25
s 230 240 180 240 27
@junction
j 90 220
+ p 2 -
+ w 8
j 180 240
+ s 6
+ w 8
j 180 220
+ p 4 1
+ w 8
j 120 160
+ p 3 1
+ w 14
j 90 180
+ p 2 +
+ w 14
j 160 160
+ p 3 2
+ w 18
j 180 180
+ p 4 2
+ w 18
j 180 160
+ w 18
+ w 18
j 230 180
+ p 5 2
+ w 18
j 230 210
+ p 5 1
+ w 8
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
