*version 9.1 907651846
u 30
V? 2
R? 3
D? 2
C? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.3s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test18\test18.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test18.lib
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
pageloc 1 0 2090
@status
n 0 107:07:05:09:44:20;1186299860 e
s 2833 107:07:12:20:54:57;1186944897 e
c 107:07:26:07:58:28;1188107908
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 80 230 h
port 8 GND_EARTH 200 230 h
port 9 GND_EARTH 250 230 h
@parts
part 2 VSIN 80 170 h
a 1 u 0 0 0 0 hcn 100 DC=1V
a 1 u 0 0 0 0 hcn 100 AC=1V
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=15V
a 1 u 0 0 0 0 hcn 100 FREQ=50Hz
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 3 r 100 140 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=0.1
part 4 r 200 210 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 30 hln 100 VALUE=100
part 6 c 250 210 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 10 45 hln 100 VALUE=0.0022
part 5 Dbreak 150 140 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 15 0 hln 100 REFDES=D1
a 0 sp 13 0 0 25 hln 100 MODEL=Dbreak-X
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 11
s 80 210 80 230 10
w 13
s 200 210 200 230 12
w 15
s 250 210 250 230 14
w 17
s 100 140 80 140 16
s 80 140 80 170 18
w 21
s 140 140 150 140 20
w 23
s 180 140 200 140 22
s 200 140 200 170 24
s 250 180 250 140 26
s 250 140 200 140 28
@junction
j 80 210
+ p 2 -
+ w 11
j 80 230
+ s 7
+ w 11
j 200 210
+ p 4 1
+ w 13
j 200 230
+ s 8
+ w 13
j 250 210
+ p 6 1
+ w 15
j 250 230
+ s 9
+ w 15
j 100 140
+ p 3 1
+ w 17
j 80 170
+ p 2 +
+ w 17
j 150 140
+ p 5 1
+ w 21
j 140 140
+ p 3 2
+ w 21
j 180 140
+ p 5 2
+ w 23
j 200 170
+ p 4 2
+ w 23
j 250 180
+ p 6 2
+ w 23
j 200 140
+ w 23
+ w 23
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
