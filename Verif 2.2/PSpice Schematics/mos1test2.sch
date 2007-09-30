*version 9.1 1463185724
u 42
M? 3
R? 2
V? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test2\mos1test2.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos1test2.lib
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
pageloc 1 0 2718
@status
n 0 107:07:16:04:23:04;1187230984 e
s 2833 107:07:16:04:23:13;1187230993 e
c 107:07:26:08:02:12;1188108132
*page 1 0 970 720 iA
@ports
port 19 GND_EARTH 220 240 h
port 18 GND_EARTH 150 240 h
port 17 GND_EARTH 100 240 h
@parts
part 14 R 100 130 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3
part 16 VPWL 100 190 h
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 V2=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 -2 4 hcn 100 REFDES=VR1
part 15 VPWL 150 190 h
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=100ns
a 1 u 0 0 0 0 hcn 100 V2=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR2
a 1 xp 9 0 -4 2 hcn 100 REFDES=VR2
part 2 MbreakN 190 180 h
a 0 u 0 0 0 0 hln 100 L=4.9u
a 0 u 0 0 0 0 hln 100 W=5.2u
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 7 2 hln 100 REFDES=M1
a 0 sp 13 0 -12 46 hln 100 MODEL=Mbreakn
part 3 MbreakP 190 110 h
a 0 ap 9 0 7 2 hln 100 REFDES=M2
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 u 0 0 0 0 hln 100 L=4.9u
a 0 u 0 0 0 0 hln 100 W=5.2u
a 0 sp 13 0 -12 44 hln 100 MODEL=Mbreakp
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 5
a 0 up 0:33 0 0 0 hln 100 V=
s 220 130 220 160 4
a 0 up 33 0 222 145 hlt 100 V=
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 220 200 230 200 12
s 220 240 220 200 20
a 0 up 33 0 222 220 hlt 100 V=
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 150 240 150 230 22
a 0 up 33 0 152 235 hlt 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 100 240 100 230 24
a 0 up 33 0 102 235 hlt 100 V=
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 190 180 150 180 26
s 150 180 150 190 28
s 190 110 150 110 30
s 150 110 150 180 32
a 0 up 33 0 152 145 hlt 100 V=
w 35
a 0 up 0:33 0 0 0 hln 100 V=
s 100 130 100 190 34
a 0 up 33 0 102 160 hlt 100 V=
w 7
a 0 up 0:33 0 0 0 hln 100 V=
s 230 130 240 130 6
s 240 130 240 90 8
s 240 90 220 90 10
s 220 90 220 70 36
s 220 70 100 70 38
a 0 up 33 0 160 69 hct 100 V=
s 100 70 100 90 40
@junction
j 220 160
+ p 2 d
+ w 5
j 220 130
+ p 3 s
+ w 5
j 230 130
+ p 3 b
+ w 7
j 220 90
+ p 3 d
+ w 7
j 220 200
+ p 2 s
+ w 13
j 230 200
+ p 2 b
+ w 13
j 220 240
+ s 19
+ w 13
j 150 230
+ p 15 -
+ w 23
j 150 240
+ s 18
+ w 23
j 100 230
+ p 16 -
+ w 25
j 100 240
+ s 17
+ w 25
j 190 180
+ p 2 g
+ w 27
j 150 190
+ p 15 +
+ w 27
j 190 110
+ p 3 g
+ w 27
j 150 180
+ w 27
+ w 27
j 100 130
+ p 14 1
+ w 35
j 100 190
+ p 16 +
+ w 35
j 100 90
+ p 14 2
+ w 7
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
