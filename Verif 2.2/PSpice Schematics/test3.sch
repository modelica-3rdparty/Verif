*version 9.1 381327018
u 78
D? 5
V? 2
C? 2
R? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test3\test3.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test3.lib
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
pageloc 1 0 2921
@status
n 0 107:07:02:22:20:58;1186086058 e
s 2833 107:07:12:07:30:16;1186896616 e
c 107:07:26:07:55:35;1188107735
*page 1 0 970 720 iA
@ports
port 17 GND_EARTH 300 200 h
@parts
part 16 r 350 180 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 u 13 0 0 5 hln 100 VALUE=200Ohm
a 0 ap 9 0 30 0 hln 100 REFDES=R1
part 4 Dbreak 200 90 d
a 0 a 0:13 0 0 0 hln 100 PKGREF=D3
a 0 sp 13 0 30 5 hln 100 MODEL=Dbreak-X
a 0 ap 9 0 5 5 hln 100 REFDES=D3
part 14 VSIN 70 110 h
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=5V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 FREQ=20Hz
a 1 u 0 0 0 0 hcn 100 DC=
part 15 c 300 180 V
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 25 5 hln 100 REFDES=C1
a 0 u 13 0 0 5 hln 100 VALUE=0.1
part 5 Dbreak 200 170 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=D4
a 0 ap 9 0 25 25 hln 100 REFDES=D4
a 0 sp 13 0 0 50 hln 100 MODEL=Dbreak-X
part 3 Dbreak 130 140 d
a 0 a 0:13 0 0 0 hln 100 PKGREF=D2
a 0 sp 13 0 30 5 hln 100 MODEL=Dbreak-X
a 0 ap 9 0 5 5 hln 100 REFDES=D2
part 2 Dbreak 130 120 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 25 25 hln 100 REFDES=D1
a 0 sp 13 0 0 50 hln 100 MODEL=Dbreak-X
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 200 120 200 130 36
s 350 140 350 130 24
s 350 130 300 130 26
s 300 130 300 150 28
s 200 130 200 140 44
s 200 130 300 130 42
a 0 up 33 0 250 129 hct 100 V=
w 7
a 0 up 0:33 0 0 0 hln 100 V=
s 130 120 130 130 38
s 300 180 300 200 18
s 350 180 350 200 20
s 350 200 300 200 22
s 300 200 110 200 45
a 0 up 33 0 205 199 hct 100 V=
s 110 200 110 130 47
s 130 130 130 140 51
s 110 130 130 130 49
w 53
a 0 up 0:33 0 0 0 hln 100 V=
s 200 90 200 80 52
s 200 80 160 80 54
s 130 80 130 90 56
s 70 110 70 60 58
s 70 60 160 60 60
a 0 up 33 0 115 59 hct 100 V=
s 160 80 130 80 64
s 160 60 160 80 62
w 66
a 0 up 0:33 0 0 0 hln 100 V=
s 200 170 200 180 65
s 200 180 160 180 67
s 130 180 130 170 69
s 70 150 70 190 71
s 70 190 160 190 73
a 0 up 33 0 115 189 hct 100 V=
s 160 180 130 180 77
s 160 190 160 180 75
@junction
j 200 120
+ p 4 2
+ w 13
j 200 140
+ p 5 2
+ w 13
j 130 120
+ p 2 1
+ w 7
j 130 140
+ p 3 1
+ w 7
j 350 140
+ p 16 2
+ w 13
j 300 150
+ p 15 2
+ w 13
j 200 130
+ w 13
+ w 13
j 300 130
+ w 13
+ w 13
j 300 180
+ p 15 1
+ w 7
j 300 200
+ s 17
+ w 7
j 350 180
+ p 16 1
+ w 7
j 130 130
+ w 7
+ w 7
j 200 90
+ p 4 1
+ w 53
j 130 90
+ p 2 2
+ w 53
j 70 110
+ p 14 +
+ w 53
j 160 80
+ w 53
+ w 53
j 200 170
+ p 5 1
+ w 66
j 130 170
+ p 3 2
+ w 66
j 70 150
+ p 14 -
+ w 66
j 160 180
+ w 66
+ w 66
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
