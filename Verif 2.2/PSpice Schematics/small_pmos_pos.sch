*version 9.1 1797306862
u 192
Q? 3
R? 2
V? 3
M? 3
I? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\small_nmos1\small_nmos1.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\small_pmos1\small_pmos1.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\transistors\small_pmos_pos\small_pmos_pos.lib
+ C:\Cellier\Classes\Ece449\BondLib\Verif\PSpice Schematics\small_pmos_pos.lib
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
pageloc 1 0 9930
@status
n 0 107:07:15:13:00:59;1187175659 e
s 2833 107:07:15:13:01:08;1187175668 e
c 107:07:26:07:55:04;1188107704
*page 1 0 970 720 iA
@ports
port 6 GND_EARTH 120 80 h
port 8 GND_EARTH 320 80 h
port 7 GND_EARTH 230 80 h
port 73 GND_EARTH 300 80 h
port 104 GND_EARTH 120 190 h
port 105 GND_EARTH 320 190 h
port 106 GND_EARTH 230 190 h
port 107 GND_EARTH 300 190 h
port 132 GND_EARTH 120 300 h
port 133 GND_EARTH 320 300 h
port 134 GND_EARTH 230 300 h
port 135 GND_EARTH 300 300 h
port 160 GND_EARTH 120 420 h
port 161 GND_EARTH 320 420 h
port 162 GND_EARTH 230 420 h
port 163 GND_EARTH 300 420 h
port 188 GND_EARTH 120 530 h
port 189 GND_EARTH 320 530 h
port 190 GND_EARTH 230 530 h
port 191 GND_EARTH 300 530 h
@parts
part 5 VDC 270 30 v
a 1 u 13 0 19 40 hcn 100 DC=1V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 20 7 hcn 100 REFDES=VC1
part 72 IDC 250 70 v
a 1 xp 9 0 22 8 hcn 100 REFDES=IC1
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC1
a 0 sp 11 0 18 50 hln 100 PART=IDC
a 1 u 13 0 -9 25 hcn 100 DC=0A
part 103 IDC 250 180 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC2
a 1 xp 9 0 22 8 hcn 100 REFDES=IC2
a 0 sp 11 0 18 50 hln 100 PART=IDC
a 1 u 13 0 -9 25 hcn 100 DC=0A
part 131 IDC 250 290 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC3
a 1 xp 9 0 22 10 hcn 100 REFDES=IC3
a 0 sp 11 0 18 50 hln 100 PART=IDC
a 1 u 13 0 -9 25 hcn 100 DC=0A
part 159 IDC 250 410 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC4
a 1 xp 9 0 22 8 hcn 100 REFDES=IC4
a 0 sp 11 0 18 50 hln 100 PART=IDC
a 1 u 13 0 -9 25 hcn 100 DC=0A
part 187 IDC 250 520 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=IC5
a 1 xp 9 0 22 8 hcn 100 REFDES=IC5
a 0 sp 11 0 18 50 hln 100 PART=IDC
a 1 u 13 0 -9 25 hcn 100 DC=0A
part 100 VDC 270 140 v
a 1 u 13 0 19 40 hcn 100 DC=2V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC2
a 1 xp 9 0 20 7 hcn 100 REFDES=VC2
part 128 VDC 270 250 v
a 1 u 13 0 19 40 hcn 100 DC=3V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC3
a 1 xp 9 0 20 7 hcn 100 REFDES=VC3
part 156 VDC 270 370 v
a 1 u 13 0 19 40 hcn 100 DC=4V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC4
a 1 xp 9 0 20 7 hcn 100 REFDES=VC4
part 184 VDC 270 480 v
a 1 u 13 0 19 40 hcn 100 DC=5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC5
a 1 xp 9 0 24 5 hcn 100 REFDES=VC5
part 130 MbreakP 200 270 h
a 0 sp 13 0 -16 44 hln 100 MODEL=MbreakP-Y
a 0 x 0:13 0 0 0 hln 100 PKGREF=M3
a 0 xp 9 0 1 8 hln 100 REFDES=M3
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
part 186 MbreakP 200 500 h
a 0 sp 13 0 -16 44 hln 100 MODEL=MbreakP-Y
a 0 x 0:13 0 0 0 hln 100 PKGREF=M5
a 0 xp 9 0 1 8 hln 100 REFDES=M5
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
part 158 MbreakP 200 390 h
a 0 sp 13 0 -16 44 hln 100 MODEL=MbreakP-Y
a 0 x 0:13 0 0 0 hln 100 PKGREF=M4
a 0 xp 9 0 1 8 hln 100 REFDES=M4
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
part 4 VPWL 180 50 d
a 1 u 0 0 0 0 hcn 100 DC=-5V
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR1
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 xp 9 0 30 14 hcn 100 REFDES=VR1
a 1 u 0 0 0 0 hcn 100 V1=-5V
a 1 u 0 0 0 0 hcn 100 V2=5V
part 101 VPWL 180 160 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR2
a 1 xp 9 0 30 14 hcn 100 REFDES=VR2
a 1 u 0 0 0 0 hcn 100 DC=-5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V1=-5V
a 1 u 0 0 0 0 hcn 100 V2=5V
part 129 VPWL 180 270 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR3
a 1 xp 9 0 30 14 hcn 100 REFDES=VR3
a 1 u 0 0 0 0 hcn 100 DC=-5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V1=-5V
a 1 u 0 0 0 0 hcn 100 V2=5V
part 157 VPWL 180 390 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR4
a 1 xp 9 0 30 14 hcn 100 REFDES=VR4
a 1 u 0 0 0 0 hcn 100 DC=-5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V1=-5V
a 1 u 0 0 0 0 hcn 100 V2=5V
part 185 VPWL 180 500 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=VR5
a 1 xp 9 0 30 14 hcn 100 REFDES=VR5
a 1 u 0 0 0 0 hcn 100 DC=-5V
a 1 u 0 0 0 0 hcn 100 T1=0s
a 1 u 0 0 0 0 hcn 100 T2=1s
a 1 u 0 0 0 0 hcn 100 V1=-5V
a 1 u 0 0 0 0 hcn 100 V2=5V
part 102 MbreakP 200 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=M2
a 0 xp 9 0 1 8 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
a 0 sp 13 0 -16 44 hln 100 MODEL=MbreakP-Y
part 43 MbreakP 200 50 h
a 0 xp 9 0 1 8 hln 100 REFDES=M1
a 0 x 0:13 0 0 0 hln 100 PKGREF=M1
a 0 u 0 0 0 0 hln 100 L=5e-6
a 0 u 0 0 0 0 hln 100 W=100e-6
a 0 sp 13 0 -16 44 hln 100 MODEL=MbreakP-Y
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 200 50 180 50 58
a 0 up 33 0 190 49 hct 100 V=
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 140 50 120 50 60
s 120 50 120 80 62
a 0 up 33 0 122 65 hlt 100 V=
w 65
a 0 up 0:33 0 0 0 hln 100 V=
s 230 30 270 30 64
a 0 up 33 0 250 29 hct 100 V=
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 310 30 320 30 66
s 320 30 320 80 68
a 0 up 33 0 322 55 hlt 100 V=
w 71
a 0 up 0:33 0 0 0 hln 100 V=
s 230 70 230 80 70
a 0 up 33 0 232 75 hlt 100 V=
w 75
a 0 up 0:33 0 0 0 hln 100 V=
s 240 70 250 70 74
a 0 up 33 0 245 69 hct 100 V=
w 77
a 0 up 0:33 0 0 0 hln 100 V=
s 290 70 300 70 76
s 300 70 300 80 78
a 0 up 33 0 302 75 hlt 100 V=
w 81
a 0 up 0:33 0 0 0 hln 100 V=
s 200 160 180 160 80
a 0 up 33 0 190 159 hct 100 V=
w 83
a 0 up 0:33 0 0 0 hln 100 V=
s 140 160 120 160 82
s 120 160 120 190 84
a 0 up 33 0 122 175 hlt 100 V=
w 87
a 0 up 0:33 0 0 0 hln 100 V=
s 230 140 270 140 86
a 0 up 33 0 250 139 hct 100 V=
w 89
a 0 up 0:33 0 0 0 hln 100 V=
s 310 140 320 140 88
s 320 140 320 190 90
a 0 up 33 0 322 165 hlt 100 V=
w 93
a 0 up 0:33 0 0 0 hln 100 V=
s 230 180 230 190 92
a 0 up 33 0 232 185 hlt 100 V=
w 95
a 0 up 0:33 0 0 0 hln 100 V=
s 240 180 250 180 94
a 0 up 33 0 245 179 hct 100 V=
w 97
a 0 up 0:33 0 0 0 hln 100 V=
s 290 180 300 180 96
s 300 180 300 190 98
a 0 up 33 0 302 185 hlt 100 V=
w 109
a 0 up 0:33 0 0 0 hln 100 V=
s 200 270 180 270 108
a 0 up 33 0 190 269 hct 100 V=
w 111
a 0 up 0:33 0 0 0 hln 100 V=
s 140 270 120 270 110
s 120 270 120 300 112
a 0 up 33 0 122 285 hlt 100 V=
w 115
a 0 up 0:33 0 0 0 hln 100 V=
s 230 250 270 250 114
a 0 up 33 0 250 249 hct 100 V=
w 117
a 0 up 0:33 0 0 0 hln 100 V=
s 310 250 320 250 116
s 320 250 320 300 118
a 0 up 33 0 322 275 hlt 100 V=
w 121
a 0 up 0:33 0 0 0 hln 100 V=
s 230 290 230 300 120
a 0 up 33 0 232 295 hlt 100 V=
w 123
a 0 up 0:33 0 0 0 hln 100 V=
s 240 290 250 290 122
a 0 up 33 0 245 289 hct 100 V=
w 125
a 0 up 0:33 0 0 0 hln 100 V=
s 290 290 300 290 124
s 300 290 300 300 126
a 0 up 33 0 302 295 hlt 100 V=
w 137
a 0 up 0:33 0 0 0 hln 100 V=
s 200 390 180 390 136
a 0 up 33 0 190 389 hct 100 V=
w 139
a 0 up 0:33 0 0 0 hln 100 V=
s 140 390 120 390 138
s 120 390 120 420 140
a 0 up 33 0 122 405 hlt 100 V=
w 143
a 0 up 0:33 0 0 0 hln 100 V=
s 230 370 270 370 142
a 0 up 33 0 250 369 hct 100 V=
w 145
a 0 up 0:33 0 0 0 hln 100 V=
s 310 370 320 370 144
s 320 370 320 420 146
a 0 up 33 0 322 395 hlt 100 V=
w 149
a 0 up 0:33 0 0 0 hln 100 V=
s 230 410 230 420 148
a 0 up 33 0 232 415 hlt 100 V=
w 151
a 0 up 0:33 0 0 0 hln 100 V=
s 240 410 250 410 150
a 0 up 33 0 245 409 hct 100 V=
w 153
a 0 up 0:33 0 0 0 hln 100 V=
s 290 410 300 410 152
s 300 410 300 420 154
a 0 up 33 0 302 415 hlt 100 V=
w 165
a 0 up 0:33 0 0 0 hln 100 V=
s 200 500 180 500 164
a 0 up 33 0 190 499 hct 100 V=
w 167
a 0 up 0:33 0 0 0 hln 100 V=
s 140 500 120 500 166
s 120 500 120 530 168
a 0 up 33 0 122 515 hlt 100 V=
w 171
a 0 up 0:33 0 0 0 hln 100 V=
s 230 480 270 480 170
a 0 up 33 0 250 479 hct 100 V=
w 173
a 0 up 0:33 0 0 0 hln 100 V=
s 310 480 320 480 172
s 320 480 320 530 174
a 0 up 33 0 322 505 hlt 100 V=
w 177
a 0 up 0:33 0 0 0 hln 100 V=
s 230 520 230 530 176
a 0 up 33 0 232 525 hlt 100 V=
w 179
a 0 up 0:33 0 0 0 hln 100 V=
s 240 520 250 520 178
a 0 up 33 0 245 519 hct 100 V=
w 181
a 0 up 0:33 0 0 0 hln 100 V=
s 290 520 300 520 180
s 300 520 300 530 182
a 0 up 33 0 302 525 hlt 100 V=
@junction
j 180 50
+ p 4 +
+ w 59
j 140 50
+ p 4 -
+ w 61
j 120 80
+ s 6
+ w 61
j 270 30
+ p 5 +
+ w 65
j 310 30
+ p 5 -
+ w 67
j 320 80
+ s 8
+ w 67
j 230 80
+ s 7
+ w 71
j 250 70
+ p 72 +
+ w 75
j 290 70
+ p 72 -
+ w 77
j 300 80
+ s 73
+ w 77
j 270 140
+ p 100 +
+ w 87
j 310 140
+ p 100 -
+ w 89
j 180 160
+ p 101 +
+ w 81
j 140 160
+ p 101 -
+ w 83
j 250 180
+ p 103 +
+ w 95
j 290 180
+ p 103 -
+ w 97
j 120 190
+ s 104
+ w 83
j 320 190
+ s 105
+ w 89
j 230 190
+ s 106
+ w 93
j 300 190
+ s 107
+ w 97
j 270 250
+ p 128 +
+ w 115
j 310 250
+ p 128 -
+ w 117
j 180 270
+ p 129 +
+ w 109
j 140 270
+ p 129 -
+ w 111
j 200 270
+ p 130 g
+ w 109
j 230 250
+ p 130 d
+ w 115
j 230 290
+ p 130 s
+ w 121
j 240 290
+ p 130 b
+ w 123
j 250 290
+ p 131 +
+ w 123
j 290 290
+ p 131 -
+ w 125
j 120 300
+ s 132
+ w 111
j 320 300
+ s 133
+ w 117
j 230 300
+ s 134
+ w 121
j 300 300
+ s 135
+ w 125
j 270 370
+ p 156 +
+ w 143
j 310 370
+ p 156 -
+ w 145
j 180 390
+ p 157 +
+ w 137
j 140 390
+ p 157 -
+ w 139
j 250 410
+ p 159 +
+ w 151
j 290 410
+ p 159 -
+ w 153
j 120 420
+ s 160
+ w 139
j 320 420
+ s 161
+ w 145
j 230 420
+ s 162
+ w 149
j 300 420
+ s 163
+ w 153
j 270 480
+ p 184 +
+ w 171
j 310 480
+ p 184 -
+ w 173
j 180 500
+ p 185 +
+ w 165
j 140 500
+ p 185 -
+ w 167
j 200 500
+ p 186 g
+ w 165
j 230 480
+ p 186 d
+ w 171
j 230 520
+ p 186 s
+ w 177
j 240 520
+ p 186 b
+ w 179
j 250 520
+ p 187 +
+ w 179
j 290 520
+ p 187 -
+ w 181
j 120 530
+ s 188
+ w 167
j 320 530
+ s 189
+ w 173
j 230 530
+ s 190
+ w 177
j 300 530
+ s 191
+ w 181
j 200 50
+ p 43 g
+ w 59
j 230 30
+ p 43 d
+ w 65
j 230 70
+ p 43 s
+ w 71
j 240 70
+ p 43 b
+ w 75
j 200 160
+ p 102 g
+ w 81
j 230 140
+ p 102 d
+ w 87
j 230 180
+ p 102 s
+ w 93
j 240 180
+ p 102 b
+ w 95
j 200 390
+ p 158 g
+ w 137
j 230 370
+ p 158 d
+ w 143
j 230 410
+ p 158 s
+ w 149
j 240 410
+ p 158 b
+ w 151
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
