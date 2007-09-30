*version 9.1 4270781183
u 396
D? 6
V? 5
C? 7
R? 8
Q? 6
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 0.003s
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
pageloc 1 0 6373
@status
n 0 107:07:04:11:29:23;1186219763 e
s 2832 107:07:12:17:12:49;1186931569 e
c 107:07:04:11:29:21;1186219761
*page 1 0 970 720 iA
@ports
port 17 GND_EARTH 100 380 h
@parts
part 163 VSIN 80 200 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=VS1
a 1 xp 9 0 20 10 hcn 100 REFDES=VS1
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=1.5V
a 1 u 0 0 0 0 hcn 100 FREQ=1000Hz
part 15 c 120 150 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 10 0 hln 100 REFDES=C1
a 0 u 13 0 5 25 hln 100 VALUE=1e-5
part 164 r 130 240 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 30 25 hln 100 REFDES=R2
a 0 u 13 0 5 30 hln 100 VALUE=22e3
part 165 r 170 340 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R7
a 0 xp 9 0 30 5 hln 100 REFDES=R7
a 0 u 13 0 0 5 hln 100 VALUE=56
part 233 r 220 230 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R5
a 0 xp 9 0 30 25 hln 100 REFDES=R5
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 30 hln 100 VALUE=0.47
part 109 r 220 270 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R6
a 0 xp 9 0 30 5 hln 100 REFDES=R6
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 5 hln 100 VALUE=0.47
part 167 c 270 260 D
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C3
a 0 ap 9 0 5 25 hln 100 REFDES=C3
a 0 u 13 0 30 30 hln 100 VALUE=1e-7
part 287 r 320 330 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R9
a 0 xp 9 0 30 5 hln 100 REFDES=R9
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 0 5 hln 100 VALUE=4
part 166 c 310 230 H
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 10 0 hln 100 REFDES=C2
a 0 u 13 0 5 25 hln 100 VALUE=2.2e-3
part 200 r 130 130 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 30 25 hln 100 REFDES=R3
a 0 u 13 0 5 30 hln 100 VALUE=8e3
part 150 QbreakN 200 170 h
a 0 sp 0 0 0 50 hln 100 PART=QbreakN
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q2
a 0 xp 9 0 5 5 hln 100 REFDES=Q2
a 0 sp 13 0 -15 40 hln 100 MODEL=QbreakN
part 140 VDC 370 140 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VC1
a 1 xp 9 0 24 7 hcn 100 REFDES=VC1
a 1 u 13 0 24 33 hcn 100 DC=10V
part 313 QbreakP 200 290 U
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q3
a 0 sp 13 0 15 40 hln 100 MODEL=QbreakP
a 0 ap 9 0 15 5 hln 100 REFDES=Q3
part 234 r 270 360 V
a 0 x 0:13 0 0 0 hln 100 PKGREF=R8
a 0 xp 9 0 30 25 hln 100 REFDES=R8
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 5 25 hln 100 VALUE=10
part 16 r 170 380 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 30 25 hln 100 REFDES=R1
a 0 u 13 0 5 25 hln 100 VALUE=56
part 201 r 170 130 V
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 30 25 hln 100 REFDES=R4
a 0 u 13 0 5 25 hln 100 VALUE=50
part 315 QbreakP 150 150 U
a 0 x 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 xp 9 0 15 5 hln 100 REFDES=Q1
a 0 sp 13 0 20 40 hln 100 MODEL=QbreakP
part 389 Dbreak 170 240 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=D2
a 0 xp 9 0 30 25 hln 100 REFDES=D2
a 0 sp 13 0 5 40 hln 100 MODEL=Dbreak
part 388 Dbreak 170 200 d
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 xp 9 0 30 25 hln 100 REFDES=D1
a 0 sp 13 0 5 40 hln 100 MODEL=Dbreak
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 330
s 90 150 80 150 329
s 80 150 80 200 331
w 334
s 120 150 130 150 333
s 130 150 150 150 337
s 130 200 130 150 335
s 130 130 130 150 338
w 348
s 280 230 270 230 347
s 270 230 220 230 351
s 270 260 270 230 349
w 353
s 270 290 270 320 352
w 363
s 320 290 320 230 362
s 320 230 310 230 364
w 367
s 130 90 130 80 366
s 130 80 170 80 368
s 170 80 170 90 370
s 220 150 220 80 372
s 220 80 170 80 374
s 370 140 370 80 376
s 370 80 220 80 378
w 321
s 170 380 130 380 320
s 130 380 100 380 324
s 130 240 130 380 322
s 80 240 80 380 325
s 80 380 100 380 327
s 270 360 270 380 354
s 270 380 220 380 356
s 320 330 320 380 358
s 320 380 270 380 360
s 370 180 370 380 380
s 370 380 320 380 382
s 220 380 170 380 386
s 220 310 220 380 384
w 387
s 170 170 200 170 340
s 170 200 170 170 390
w 393
s 170 230 170 240 392
w 341
s 170 290 170 300 346
s 200 290 170 290 344
s 170 270 170 290 394
@junction
j 220 190
+ p 233 2
+ p 150 e
j 220 230
+ p 109 2
+ p 233 1
j 170 130
+ p 201 1
+ p 315 e
j 220 270
+ p 313 e
+ p 109 1
j 170 340
+ p 16 2
+ p 165 1
j 170 380
+ p 16 1
+ w 321
j 100 380
+ s 17
+ w 321
j 130 240
+ p 164 1
+ w 321
j 130 380
+ w 321
+ w 321
j 80 240
+ p 163 -
+ w 321
j 90 150
+ p 15 2
+ w 330
j 80 200
+ p 163 +
+ w 330
j 150 150
+ p 315 b
+ w 334
j 120 150
+ p 15 1
+ w 334
j 130 200
+ p 164 2
+ w 334
j 130 150
+ w 334
+ w 334
j 130 130
+ p 200 1
+ w 334
j 200 170
+ p 150 b
+ w 387
j 170 170
+ p 315 c
+ w 387
j 170 300
+ p 165 2
+ w 341
j 200 290
+ p 313 b
+ w 341
j 220 230
+ p 233 1
+ w 348
j 220 230
+ p 109 2
+ w 348
j 280 230
+ p 166 2
+ w 348
j 270 260
+ p 167 1
+ w 348
j 270 230
+ w 348
+ w 348
j 270 320
+ p 234 2
+ w 353
j 270 290
+ p 167 2
+ w 353
j 270 360
+ p 234 1
+ w 321
j 320 330
+ p 287 1
+ w 321
j 270 380
+ w 321
+ w 321
j 320 290
+ p 287 2
+ w 363
j 310 230
+ p 166 1
+ w 363
j 130 90
+ p 200 2
+ w 367
j 170 90
+ p 201 2
+ w 367
j 220 150
+ p 150 c
+ w 367
j 170 80
+ w 367
+ w 367
j 370 140
+ p 140 +
+ w 367
j 220 80
+ w 367
+ w 367
j 370 180
+ p 140 -
+ w 321
j 320 380
+ w 321
+ w 321
j 220 310
+ p 313 c
+ w 321
j 220 380
+ w 321
+ w 321
j 170 200
+ p 388 1
+ w 387
j 170 240
+ p 389 1
+ w 393
j 170 230
+ p 388 2
+ w 393
j 170 270
+ p 389 2
+ w 341
j 170 290
+ w 341
+ w 341
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
