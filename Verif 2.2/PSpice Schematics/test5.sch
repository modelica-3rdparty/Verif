*version 9.1 4279074723
u 26
V? 2
R? 2
D? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 3s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test5\test5.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test5.lib
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
pageloc 1 0 1479
@status
n 0 107:07:03:13:01:29;1186138889 e
s 2833 107:07:12:14:38:57;1186922337 e
c 107:07:26:07:57:08;1188107828
*page 1 0 970 720 iA
@ports
port 5 GND_EARTH 170 240 h
@parts
part 2 VPWL 130 190 h
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=-15V
a 1 u 0 0 0 0 hcn 100 T2=2s
a 1 u 0 0 0 0 hcn 100 V2=25V
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
part 3 r 150 170 h
a 0 u 13 0 15 25 hln 100 VALUE=1Ohm
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 4 Dbreak 210 220 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 0 30 hln 100 REFDES=D1
a 0 sp 13 0 25 45 hln 100 MODEL=Dbreak
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 7
a 0 up 0:33 0 0 0 hln 100 V=
s 150 170 130 170 6
s 130 170 130 190 8
a 0 up 33 0 132 180 hlt 100 V=
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 130 230 130 240 10
s 130 240 170 240 12
s 210 240 170 240 16
a 0 up 33 0 190 239 hct 100 V=
s 210 220 210 240 22
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 190 170 210 170 18
s 210 190 210 170 24
@junction
j 150 170
+ p 3 1
+ w 7
j 130 190
+ p 2 +
+ w 7
j 130 230
+ p 2 -
+ w 11
j 170 240
+ s 5
+ w 11
j 190 170
+ p 3 2
+ w 19
j 210 220
+ p 4 1
+ w 11
j 210 190
+ p 4 2
+ w 19
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
