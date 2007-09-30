*version 9.1 985962466
u 41
V? 2
R? 5
C? 3
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
pageloc 1 0 2813
@status
n 0 107:07:07:16:16:25;1186496185 e
s 2832 107:07:12:21:34:09;1186947249 e
*page 1 0 970 720 iA
@ports
port 10 GND_EARTH 290 310 h
port 8 GND_EARTH 200 310 h
port 7 GND_EARTH 140 310 h
port 9 GND_EARTH 250 310 h
@parts
part 2 VSIN 140 230 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VE1
a 1 xp 9 0 20 10 hcn 100 REFDES=VE1
a 1 u 0 0 0 0 hcn 100 DC=2V
a 1 u 0 0 0 0 hcn 100 VOFF=2V
a 1 u 0 0 0 0 hcn 100 VAMPL=2V
a 1 u 0 0 0 0 hcn 100 FREQ=0.5Hz
a 1 u 0 0 0 0 hcn 100 TD=0s
a 1 u 0 0 0 0 hcn 100 DF=0.25
part 4 R 200 310 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 31 hln 100 VALUE=100
part 3 R 200 230 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 31 hln 100 VALUE=200
part 5 R 270 210 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 11 C 270 250 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 13 33 hln 100 VALUE=100
part 6 R 290 310 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 12 C 250 300 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 13 33 hln 100 VALUE=100
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 14
s 140 270 140 310 13
w 22
s 140 230 140 160 21
s 270 170 270 160 15
s 270 160 200 160 17
s 200 160 200 190 19
s 140 160 200 160 23
w 26
s 200 230 200 270 25
w 28
s 270 210 270 220 27
w 30
s 270 250 270 260 29
s 270 260 290 260 31
s 290 260 290 270 33
s 250 270 250 260 35
s 250 260 270 260 37
w 40
s 250 300 250 310 39
@junction
j 290 310
+ s 10
+ p 6 1
j 200 310
+ s 8
+ p 4 1
j 140 270
+ p 2 -
+ w 14
j 140 310
+ s 7
+ w 14
j 140 230
+ p 2 +
+ w 22
j 270 170
+ p 5 2
+ w 22
j 200 190
+ p 3 2
+ w 22
j 200 160
+ w 22
+ w 22
j 200 270
+ p 4 2
+ w 26
j 200 230
+ p 3 1
+ w 26
j 270 220
+ p 11 2
+ w 28
j 270 210
+ p 5 1
+ w 28
j 270 250
+ p 11 1
+ w 30
j 290 270
+ p 6 2
+ w 30
j 250 270
+ p 12 2
+ w 30
j 270 260
+ w 30
+ w 30
j 250 300
+ p 12 1
+ w 40
j 250 310
+ s 9
+ w 40
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
