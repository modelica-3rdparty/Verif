*version 9.1 290284070
u 46
V? 4
E? 2
D? 2
M? 3
R? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100ns
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
pageloc 1 0 2660
@status
c 107:07:12:07:18:38;1186895918
n 0 107:07:12:07:20:47;1186896047 e
s 2832 107:07:21:13:15:15;1187694915 e
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 110 190 h
port 7 GND_EARTH 190 190 h
port 26 GND_EARTH 250 190 h
@parts
part 4 VDC 110 130 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 24 7 hcn 100 REFDES=V1
part 5 VPWL 190 130 h
a 1 u 0 0 0 0 hcn 100 V1=0V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=100ns
a 1 u 0 0 0 0 hcn 100 V2=5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=V2
a 1 xp 9 0 20 10 hcn 100 REFDES=V2
part 31 r 150 20 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 9 25 hln 100 VALUE=3Ohm
part 14 MbreakP 220 50 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 u 0 0 0 0 hln 100 NRD=1Ohm
a 0 u 0 0 0 0 hln 100 NRS=1Ohm
a 0 sp 13 0 -8 42 hln 100 MODEL=MbreakP
a 0 ap 9 0 1 6 hln 100 REFDES=M2
part 13 MbreakN 220 110 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 u 0 0 0 0 hln 100 NRD=1Ohm
a 0 u 0 0 0 0 hln 100 NRS=1Ohm
a 0 sp 13 0 -8 42 hln 100 MODEL=MbreakN
a 0 ap 9 0 1 4 hln 100 REFDES=M1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 110 170 110 190 8
a 0 up 33 0 112 180 hlt 100 V=
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 190 170 190 190 10
a 0 up 33 0 192 180 hlt 100 V=
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 190 110 190 130 15
s 190 110 220 110 17
s 220 50 190 50 20
s 190 50 190 110 22
a 0 up 33 0 192 80 hlt 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 250 70 250 90 24
a 0 up 33 0 252 80 hlt 100 V=
w 28
a 0 up 0:33 0 0 0 hln 100 V=
s 250 130 250 190 27
a 0 up 33 0 252 160 hlt 100 V=
s 260 130 250 130 29
w 33
a 0 up 0:33 0 0 0 hln 100 V=
s 150 20 110 20 32
s 110 20 110 130 34
a 0 up 33 0 112 75 hlt 100 V=
w 37
a 0 up 0:33 0 0 0 hln 100 V=
s 250 30 250 20 36
s 250 20 190 20 38
a 0 up 33 0 220 19 hct 100 V=
s 260 70 260 40 40
s 260 40 250 40 42
s 250 40 250 30 44
@junction
j 110 170
+ p 4 -
+ w 9
j 110 190
+ s 6
+ w 9
j 190 170
+ p 5 -
+ w 11
j 190 190
+ s 7
+ w 11
j 190 130
+ p 5 +
+ w 16
j 220 110
+ p 13 g
+ w 16
j 220 50
+ p 14 g
+ w 16
j 190 110
+ w 16
+ w 16
j 250 90
+ p 13 d
+ w 25
j 250 70
+ p 14 s
+ w 25
j 250 130
+ p 13 s
+ w 28
j 250 190
+ s 26
+ w 28
j 260 130
+ p 13 b
+ w 28
j 150 20
+ p 31 1
+ w 33
j 110 130
+ p 4 +
+ w 33
j 250 30
+ p 14 d
+ w 37
j 190 20
+ p 31 2
+ w 37
j 260 70
+ p 14 b
+ w 37
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
