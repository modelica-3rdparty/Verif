*version 9.1 32533073
u 44
M? 2
V? 5
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10ns
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\level1\mos1test9\mos1test9.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\mos1test9.lib
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
pageloc 1 0 3697
@status
n 0 107:07:17:07:53:35;1187330015 e
s 2833 107:07:17:07:53:39;1187330019 e
c 107:07:26:08:43:29;1188110609
*page 1 0 970 720 iA
@ports
port 7 GND_EARTH 210 170 h
port 8 GND_EARTH 250 170 h
port 6 GND_EARTH 140 190 h
port 9 GND_EARTH 290 170 h
@parts
part 3 VDC 250 120 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 23 36 hcn 100 DC=-2V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
part 4 VPWL 140 110 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT1
a 1 xp 9 0 22 6 hcn 100 REFDES=VT1
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T3=2ns
a 1 u 0 0 0 0 hcn 100 V3=1V
a 1 u 0 0 0 0 hcn 100 T4=3ns
a 1 u 0 0 0 0 hcn 100 V4=1V
a 1 u 0 0 0 0 hcn 100 T5=4ns
a 1 u 0 0 0 0 hcn 100 V5=2V
a 1 u 0 0 0 0 hcn 100 T6=5ns
a 1 u 0 0 0 0 hcn 100 V6=2V
a 1 u 0 0 0 0 hcn 100 T7=6ns
a 1 u 0 0 0 0 hcn 100 V7=3V
a 1 u 0 0 0 0 hcn 100 T8=7ns
a 1 u 0 0 0 0 hcn 100 V8=3V
a 1 u 0 0 0 0 hcn 100 T9=8ns
a 1 u 0 0 0 0 hcn 100 V9=4V
part 31 VPWL 140 150 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT2
a 1 xp 9 0 22 6 hcn 100 REFDES=VT2
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=9ns
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T3=10ns
a 1 u 0 0 0 0 hcn 100 V3=1V
part 34 VPWL 290 90 h
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ns
a 1 u 0 0 0 0 hcn 100 T3=2ns
a 1 u 0 0 0 0 hcn 100 T4=3ns
a 1 u 0 0 0 0 hcn 100 T5=4ns
a 1 u 0 0 0 0 hcn 100 T6=5ns
a 1 u 0 0 0 0 hcn 100 T7=6ns
a 1 u 0 0 0 0 hcn 100 T8=7ns
a 1 u 0 0 0 0 hcn 100 T9=8ns
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT3
a 1 xp 9 0 22 6 hcn 100 REFDES=VT3
a 1 u 0 0 0 0 hcn 100 V2=10V
a 1 u 0 0 0 0 hcn 100 V3=0V
a 1 u 0 0 0 0 hcn 100 V4=10V
a 1 u 0 0 0 0 hcn 100 V5=0V
a 1 u 0 0 0 0 hcn 100 V6=10V
a 1 u 0 0 0 0 hcn 100 V7=0V
a 1 u 0 0 0 0 hcn 100 V8=10V
a 1 u 0 0 0 0 hcn 100 V9=0V
part 35 VPWL 290 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VT4
a 1 xp 9 0 22 6 hcn 100 REFDES=VT4
a 1 u 0 0 0 0 hcn 100 T1=0ns
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 V2=0V
a 1 u 0 0 0 0 hcn 100 T2=8ns
a 1 u 0 0 0 0 hcn 100 T3=9ns
a 1 u 0 0 0 0 hcn 100 V3=10V
a 1 u 0 0 0 0 hcn 100 T4=10ns
a 1 u 0 0 0 0 hcn 100 V4=0V
a 1 u 0 0 0 0 hcn 100 T5=
a 1 u 0 0 0 0 hcn 100 V5=
a 1 u 0 0 0 0 hcn 100 T6=
a 1 u 0 0 0 0 hcn 100 V6=
a 1 u 0 0 0 0 hcn 100 T7=
a 1 u 0 0 0 0 hcn 100 V7=
a 1 u 0 0 0 0 hcn 100 T8=
a 1 u 0 0 0 0 hcn 100 V8=
a 1 u 0 0 0 0 hcn 100 T9=
a 1 u 0 0 0 0 hcn 100 V9=
part 2 MbreakN 180 100 h
a 0 u 0 0 0 0 hln 100 L=40u
a 0 u 0 0 0 0 hln 100 W=60u
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 -1 2 hln 100 REFDES=M1
a 0 sp 13 0 -8 44 hln 100 MODEL=Mbreakn
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 17
a 0 up 0:33 0 0 0 hln 100 V=
s 210 120 210 170 16
a 0 up 33 0 212 145 hlt 100 V=
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 220 120 250 120 20
a 0 up 33 0 235 119 hct 100 V=
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 250 160 250 170 22
a 0 up 33 0 252 165 hlt 100 V=
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 180 100 140 100 10
a 0 up 33 0 160 99 hct 100 V=
s 140 110 140 100 32
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 210 80 290 80 40
s 290 80 290 90 42
@junction
j 180 100
+ p 2 g
+ w 11
j 210 120
+ p 2 s
+ w 17
j 210 170
+ s 7
+ w 17
j 250 120
+ p 3 +
+ w 19
j 220 120
+ p 2 b
+ w 19
j 250 160
+ p 3 -
+ w 23
j 250 170
+ s 8
+ w 23
j 140 150
+ p 31 +
+ p 4 -
j 140 190
+ s 6
+ p 31 -
j 140 110
+ p 4 +
+ w 11
j 290 170
+ p 35 -
+ s 9
j 290 130
+ p 34 -
+ p 35 +
j 210 80
+ p 2 d
+ w 27
j 290 90
+ p 34 +
+ w 27
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
