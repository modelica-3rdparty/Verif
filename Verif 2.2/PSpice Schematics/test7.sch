*version 9.1 971809113
u 326
D? 5
V? 5
C? 7
R? 8
Q? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1s
.OP 0
.LIB C:\Cellier\Classes\Ece449\BondLib\Verif\test3\test3.lib
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
pageloc 1 0 8391
@status
n 0 107:07:07:08:29:29;1186468169 e
s 2832 107:07:12:15:37:38;1186925858 e
c 107:07:07:08:28:22;1186468102
*page 1 0 970 720 iA
@ports
port 17 GND_EARTH 50 240 h
port 143 GND_EARTH 110 240 h
port 205 GND_EARTH 130 30 h
port 204 GND_EARTH 210 220 h
port 142 GND_EARTH 140 300 h
@parts
part 163 VSIN 50 190 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 20 10 hcn 100 REFDES=VS1
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=25V
a 1 u 0 0 0 0 hcn 100 FREQ=10Hz
part 15 c 100 170 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 10 0 hln 100 REFDES=C1
a 0 u 13 0 5 25 hln 100 VALUE=5e-6
part 164 r 110 230 V
a 0 u 13 0 5 30 hln 100 VALUE=47e3
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 30 25 hln 100 REFDES=R2
part 109 r 140 240 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R6
a 0 xp 9 0 30 5 hln 100 REFDES=R6
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 5 hln 100 VALUE=4700
part 150 QbreakN 120 170 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 5 5 hln 100 REFDES=Q1
part 166 c 190 140 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 25 hln 100 VALUE=5e-6
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 10 0 hln 100 REFDES=C2
part 167 c 170 200 D
a 0 u 13 0 30 30 hln 100 VALUE=5e-5
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 5 25 hln 100 REFDES=C3
part 201 r 210 120 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 30 25 hln 100 REFDES=R4
a 0 u 13 0 5 30 hln 100 VALUE=47e3
part 200 r 140 120 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 30 25 hln 100 REFDES=R3
a 0 u 13 0 5 30 hln 100 VALUE=1e4
part 16 r 110 120 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 u 13 0 5 30 hln 100 VALUE=15e4
a 0 ap 9 0 30 25 hln 100 REFDES=R1
part 202 QbreakN 230 140 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 ap 9 0 5 5 hln 100 REFDES=Q2
part 233 r 250 120 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R5
a 0 xp 9 0 30 25 hln 100 REFDES=R5
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 30 hln 100 VALUE=4700
part 286 c 310 120 D
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C5
a 0 ap 9 0 10 5 hln 100 REFDES=C5
a 0 u 13 0 30 5 hln 100 VALUE=5e-6
part 297 r 360 180 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 0 5 hln 100 VALUE=114700
a 0 x 0:13 0 0 0 hln 100 PKGREF=R10
a 0 xp 9 0 30 5 hln 100 REFDES=R10
part 140 VDC 170 70 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 24 33 hcn 100 DC=25V
part 296 c 350 120 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C6
a 0 ap 9 0 10 0 hln 100 REFDES=C6
a 0 u 13 0 5 25 hln 100 VALUE=1e-5
part 203 r 210 210 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R11
a 0 xp 9 0 30 30 hln 100 REFDES=R11
a 0 u 13 0 5 30 hln 100 VALUE=33e3
part 235 c 270 170 D
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 30 30 hln 100 VALUE=5e-5
a 0 a 0:13 0 0 0 hln 100 PKGREF=C4
a 0 ap 9 0 5 25 hln 100 REFDES=C4
part 234 r 240 210 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R8
a 0 xp 9 0 30 25 hln 100 REFDES=R8
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 30 hln 100 VALUE=4700
part 287 r 310 200 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R9
a 0 xp 9 0 30 5 hln 100 REFDES=R9
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 0 5 hln 100 VALUE=4700
part 165 r 140 290 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 0 5 hln 100 VALUE=100
a 0 x 0:13 0 0 0 hln 100 PKGREF=R7
a 0 xp 9 0 30 5 hln 100 REFDES=R7
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 169
a 0 up 0:33 0 0 0 hln 100 V=
s 50 230 50 240 168
a 0 up 33 0 52 235 hlt 100 V=
w 171
a 0 up 0:33 0 0 0 hln 100 V=
s 70 170 50 170 170
s 50 170 50 190 172
a 0 up 33 0 52 180 hlt 100 V=
w 189
a 0 up 0:33 0 0 0 hln 100 V=
s 110 230 110 240 188
a 0 up 33 0 112 235 hlt 100 V=
w 187
a 0 up 0:33 0 0 0 hln 100 V=
s 140 190 140 200 186
s 170 200 140 200 194
a 0 up 33 0 155 199 hct 100 V=
w 243
a 0 up 0:33 0 0 0 hln 100 V=
s 250 160 250 170 242
s 250 170 240 170 244
s 270 170 250 170 246
a 0 up 33 0 260 169 hct 100 V=
w 216
a 0 up 0:33 0 0 0 hln 100 V=
s 190 140 210 140 215
s 210 140 210 170 217
a 0 up 33 0 212 155 hlt 100 V=
s 230 140 210 140 219
s 210 120 210 140 221
w 210
a 0 up 0:33 0 0 0 hln 100 V=
s 160 140 140 140 209
s 140 140 140 150 211
s 140 120 140 140 213
a 0 up 33 0 142 130 hlt 100 V=
w 175
a 0 up 0:33 0 0 0 hln 100 V=
s 100 170 110 170 174
s 110 170 110 190 176
s 120 170 110 170 178
s 110 120 110 170 180
a 0 up 33 0 112 145 hlt 100 V=
w 208
a 0 up 0:33 0 0 0 hln 100 V=
s 250 80 210 80 236
s 110 80 140 80 223
s 140 80 170 80 276
s 170 80 210 80 285
a 0 up 33 0 190 79 hct 100 V=
s 170 70 170 80 283
w 281
a 0 up 0:33 0 0 0 hln 100 V=
s 170 30 130 30 229
a 0 up 33 0 150 29 hct 100 V=
w 291
a 0 up 0:33 0 0 0 hln 100 V=
s 310 150 310 160 290
a 0 up 33 0 312 155 hlt 100 V=
w 289
a 0 up 0:33 0 0 0 hln 100 V=
s 310 120 250 120 288
a 0 up 33 0 280 119 hct 100 V=
s 320 120 310 120 298
w 301
a 0 up 0:33 0 0 0 hln 100 V=
s 350 120 360 120 300
s 360 120 360 140 302
a 0 up 33 0 362 130 hlt 100 V=
w 232
a 0 up 0:33 0 0 0 hln 100 V=
s 210 220 210 210 231
s 270 210 240 210 250
s 270 200 270 210 248
s 240 210 240 220 314
s 240 220 210 220 316
w 191
a 0 up 0:33 0 0 0 hln 100 V=
s 140 240 140 250 190
s 170 230 170 240 196
s 170 240 140 240 198
a 0 up 33 0 155 239 hct 100 V=
s 310 200 310 250 318
s 310 250 140 250 320
w 193
s 360 180 360 300 304
s 360 300 140 300 306
s 140 290 140 300 324
@junction
j 50 230
+ p 163 -
+ w 169
j 50 240
+ s 17
+ w 169
j 70 170
+ p 15 2
+ w 171
j 50 190
+ p 163 +
+ w 171
j 100 170
+ p 15 1
+ w 175
j 110 190
+ p 164 2
+ w 175
j 120 170
+ p 150 b
+ w 175
j 110 170
+ w 175
+ w 175
j 140 200
+ p 109 2
+ w 187
j 140 190
+ p 150 e
+ w 187
j 110 230
+ p 164 1
+ w 189
j 110 240
+ s 143
+ w 189
j 140 240
+ p 109 1
+ w 191
j 140 300
+ s 142
+ w 193
j 170 200
+ p 167 1
+ w 187
j 170 230
+ p 167 2
+ w 191
j 160 140
+ p 166 2
+ w 210
j 140 150
+ p 150 c
+ w 210
j 190 140
+ p 166 1
+ w 216
j 210 170
+ p 203 2
+ w 216
j 230 140
+ p 202 b
+ w 216
j 210 140
+ w 216
+ w 216
j 250 160
+ p 202 e
+ w 243
j 240 170
+ p 234 2
+ w 243
j 270 170
+ p 235 1
+ w 243
j 250 170
+ w 243
+ w 243
j 250 120
+ p 233 1
+ p 202 c
j 250 80
+ p 233 2
+ w 208
j 210 80
+ p 201 2
+ w 208
j 210 120
+ p 201 1
+ w 216
j 140 80
+ p 200 2
+ w 208
j 140 120
+ p 200 1
+ w 210
j 140 140
+ w 210
+ w 210
j 110 80
+ p 16 2
+ w 208
j 110 120
+ p 16 1
+ w 175
j 170 30
+ p 140 -
+ w 281
j 170 70
+ p 140 +
+ w 208
j 170 80
+ w 208
+ w 208
j 130 30
+ s 205
+ w 281
j 250 120
+ p 202 c
+ w 289
j 250 120
+ p 233 1
+ w 289
j 310 120
+ p 286 1
+ w 289
j 310 160
+ p 287 2
+ w 291
j 310 150
+ p 286 2
+ w 291
j 320 120
+ p 296 2
+ w 289
j 350 120
+ p 296 1
+ w 301
j 360 140
+ p 297 2
+ w 301
j 360 180
+ p 297 1
+ w 193
j 210 210
+ p 203 1
+ w 232
j 210 220
+ s 204
+ w 232
j 270 200
+ p 235 2
+ w 232
j 240 210
+ p 234 1
+ w 232
j 310 200
+ p 287 1
+ w 191
j 140 250
+ p 165 2
+ w 191
j 140 290
+ p 165 1
+ w 193
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
