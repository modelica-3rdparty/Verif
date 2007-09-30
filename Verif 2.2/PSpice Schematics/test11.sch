*version 9.1 4196500013
u 48
V? 2
Q? 2
D? 2
R? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 2s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test11\test11.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test11.lib
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
pageloc 1 0 2045
@status
n 0 107:07:04:14:15:23;1186229723 e
s 2833 107:07:12:17:20:43;1186932043 e
c 107:07:26:07:57:35;1188107855
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 230 220 h
@parts
part 6 r 320 180 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 u 13 0 5 30 hln 100 VALUE=1000
a 0 ap 9 0 35 25 hln 100 REFDES=R2
part 3 QbreakN 230 130 v
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
a 0 sp 13 0 0 55 hln 100 MODEL=QbreakN
part 5 r 170 150 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3300
part 2 VPWL 120 150 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=2s
a 1 u 0 0 0 0 hcn 100 V2=60V
part 4 Dbreak 230 200 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 25 25 hln 100 REFDES=D1
a 0 sp 13 0 0 40 hln 100 MODEL=Dbreak
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 27
s 250 110 320 110 26
s 320 110 320 140 28
w 11
s 230 170 230 150 10
s 230 150 230 130 36
s 210 150 230 150 12
w 9
s 230 200 230 220 8
s 120 220 230 220 21
s 320 180 320 220 30
s 320 220 230 220 32
s 120 190 120 220 19
w 16
s 210 110 160 110 25
s 170 150 160 150 41
s 160 110 120 110 45
s 160 150 160 110 43
s 120 110 120 150 17
@junction
j 230 200
+ p 4 1
+ w 9
j 230 220
+ s 7
+ w 9
j 230 130
+ p 3 b
+ w 11
j 230 170
+ p 4 2
+ w 11
j 250 110
+ p 3 e
+ w 27
j 320 140
+ p 6 2
+ w 27
j 320 180
+ p 6 1
+ w 9
j 210 150
+ p 5 2
+ w 11
j 230 150
+ w 11
+ w 11
j 210 110
+ p 3 c
+ w 16
j 170 150
+ p 5 1
+ w 16
j 160 110
+ w 16
+ w 16
j 120 190
+ p 2 -
+ w 9
j 120 150
+ p 2 +
+ w 16
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
