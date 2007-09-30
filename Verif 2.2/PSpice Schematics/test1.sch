*version 9.1 324091910
u 29
V? 2
C? 2
R? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.2s
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
pageloc 1 0 1581
@status
n 0 107:07:02:19:17:45;1186075065 e
s 2832 107:07:12:07:01:43;1186894903 e
*page 1 0 970 720 iA
@ports
port 12 GND_EARTH 170 200 h
@parts
part 3 c 150 120 h
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=10u
part 2 VSIN 110 140 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 VAMPL=1
a 1 u 0 0 0 0 hcn 100 FREQ=20
a 1 u 0 0 0 0 hcn 100 VOFF=0
part 4 r 230 180 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 17 4 hln 100 REFDES=R1
a 0 u 13 0 17 31 hln 100 VALUE=200
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 110 120 150 120 13
a 0 up 33 0 130 119 hct 100 V=
s 110 120 110 140 15
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 180 120 230 120 17
a 0 up 33 0 205 119 hct 100 V=
s 230 120 230 140 19
w 22
a 0 up 0:33 0 0 0 hln 100 V=
s 110 180 110 200 21
s 110 200 170 200 23
s 230 180 230 200 25
s 230 200 170 200 27
a 0 up 33 0 200 199 hct 100 V=
@junction
j 150 120
+ p 3 1
+ w 14
j 110 140
+ p 2 +
+ w 14
j 180 120
+ p 3 2
+ w 18
j 230 140
+ p 4 2
+ w 18
j 110 180
+ p 2 -
+ w 22
j 170 200
+ s 12
+ w 22
j 230 180
+ p 4 1
+ w 22
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
