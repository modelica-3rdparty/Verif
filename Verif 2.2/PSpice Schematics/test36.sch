*version 9.1 687204265
u 48
J? 4
R? 4
V? 5
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 5ms
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test36\test36.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\test36.lib
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
pageloc 1 0 3320
@status
n 0 107:07:13:21:36:19;1187033779 e
s 2833 107:07:13:21:36:23;1187033783 e
c 107:07:26:07:59:48;1188107988
*page 1 0 970 720 iA
@ports
port 15 GND_EARTH 210 190 h
port 14 GND_EARTH 120 210 h
port 16 GND_EARTH 300 100 h
port 17 GND_EARTH 300 180 h
@parts
part 8 R 240 100 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 17 37 hln 100 VALUE=150k
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rd2
a 0 xp 9 0 19 2 hln 100 REFDES=Rd2
part 5 R 180 100 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rd1
a 0 u 13 0 17 37 hln 100 VALUE=150k
a 0 xp 9 0 19 2 hln 100 REFDES=Rd1
part 9 R 210 190 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rg
a 0 xp 9 0 19 2 hln 100 REFDES=Rg
a 0 u 13 0 17 37 hln 100 VALUE=75k
part 41 VPWL 120 170 h
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ms
a 1 u 0 0 0 0 hcn 100 V2=0.5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 xp 9 0 -4 6 hcn 100 REFDES=VR1
part 40 VSIN 120 130 h
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=0.02V
a 1 u 0 0 0 0 hcn 100 FREQ=1kHz
a 1 u 0 0 0 0 hcn 100 TD=2ms
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 -2 4 hcn 100 REFDES=VS1
part 4 JbreakP 270 120 H
a 0 x 0:13 0 0 0 hln 100 PKGREF=J2
a 0 xp 9 0 5 10 hln 100 REFDES=J2
a 0 sp 13 0 -4 42 hln 100 MODEL=Jbreakp
a 0 u 0 0 0 0 hln 100 AREA=1
part 47 VPWL 300 140 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=V2
a 1 xp 9 0 24 4 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ms
a 1 u 0 0 0 0 hcn 100 V2=0.5V
part 46 VPWL 300 60 h
a 1 u 0 0 0 0 hcn 100 V2=-5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T2=1ms
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 24 6 hcn 100 REFDES=V1
part 2 JbreakP 150 120 h
a 0 u 0 0 0 0 hln 100 AREA=1
a 0 a 0:13 0 0 0 hln 100 PKGREF=J1
a 0 ap 9 0 5 10 hln 100 REFDES=J1
a 0 sp 13 0 -4 42 hln 100 MODEL=Jbreakp
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 29
a 0 up 0:33 0 0 0 hln 100 V=
s 180 140 180 150 28
s 180 150 210 150 30
s 240 140 240 150 32
s 240 150 210 150 34
a 0 up 33 0 225 149 hct 100 V=
w 43
a 0 up 0:33 0 0 0 hln 100 V=
s 150 120 120 120 42
a 0 up 33 0 135 119 hct 100 V=
s 120 120 120 130 44
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 240 60 240 50 18
s 240 50 300 50 20
s 300 50 300 60 22
s 180 60 180 50 24
s 180 50 240 50 26
a 0 up 33 0 210 49 hct 100 V=
w 37
a 0 up 0:33 0 0 0 hln 100 V=
s 270 120 300 120 36
a 0 up 33 0 285 119 hct 100 V=
s 300 120 300 140 38
@junction
j 180 100
+ p 5 1
+ p 2 d
j 240 100
+ p 8 1
+ p 4 d
j 210 190
+ s 15
+ p 9 1
j 240 60
+ p 8 2
+ w 19
j 180 60
+ p 5 2
+ w 19
j 240 50
+ w 19
+ w 19
j 180 140
+ p 2 s
+ w 29
j 210 150
+ p 9 2
+ w 29
j 240 140
+ p 4 s
+ w 29
j 270 120
+ p 4 g
+ w 37
j 120 170
+ p 41 +
+ p 40 -
j 120 210
+ s 14
+ p 41 -
j 150 120
+ p 2 g
+ w 43
j 120 130
+ p 40 +
+ w 43
j 300 100
+ p 46 -
+ s 16
j 300 60
+ p 46 +
+ w 19
j 300 180
+ p 47 -
+ s 17
j 300 140
+ p 47 +
+ w 37
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
