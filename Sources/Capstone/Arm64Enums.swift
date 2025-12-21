// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Arm64)

/// SYS operands (IC/DC/AC/TLBI)
public enum Arm64At: UInt32 {
    /// AT operations
    case s1e1r = 165
    /// AT operations
    case s1e2r = 166
    /// AT operations
    case s1e3r = 167
    /// AT operations
    case s1e1w = 168
    /// AT operations
    case s1e2w = 169
    /// AT operations
    case s1e3w = 170
    /// AT operations
    case s1e0r = 171
    /// AT operations
    case s1e0w = 172
    /// AT operations
    case s12e1r = 173
    /// AT operations
    case s12e1w = 174
    /// AT operations
    case s12e0r = 175
    /// AT operations
    case s12e0w = 176
    /// AT operations
    case s1e1rp = 177
    /// AT operations
    case s1e1wp = 178
}

/// Memory barrier operands
public enum Arm64Barrier: UInt32 {
    case invalid = 0
    case oshld = 1
    case oshst = 2
    case osh = 3
    case nshld = 5
    case nshst = 6
    case nsh = 7
    case ishld = 9
    case ishst = 10
    case ish = 11
    case ld = 13
    case st = 14
    case sy = 15
}

/// ARM64 condition code
public enum Arm64Cc: UInt32 {
    case invalid = 0
    /// Equal
    case eq = 1
    /// Not equal: Not equal, or unordered
    case ne = 2
    /// Unsigned higher or same: >, ==, or unordered
    case hs = 3
    /// Unsigned lower or same: Less than
    case lo = 4
    /// Minus, negative: Less than
    case mi = 5
    /// Plus, positive or zero: >, ==, or unordered
    case pl = 6
    /// Overflow: Unordered
    case vs = 7
    /// No overflow: Ordered
    case vc = 8
    /// Unsigned higher: Greater than, or unordered
    case hi = 9
    /// Unsigned lower or same: Less than or equal
    case ls = 10
    /// Greater than or equal: Greater than or equal
    case ge = 11
    /// Less than: Less than, or unordered
    case lt = 12
    /// Signed greater than: Greater than
    case gt = 13
    /// Signed less than or equal: <, ==, or unordered
    case le = 14
    /// Always (unconditional): Always (unconditional)
    case al = 15
    /// Always (unconditional): Always (unconditional)
    case nv = 16
}

/// SYS operands (IC/DC/AC/TLBI)
public enum Arm64Dc: UInt32 {
    /// DC operations
    case cgdsw = 179
    /// DC operations
    case cgdvac = 180
    /// DC operations
    case cgdvadp = 181
    /// DC operations
    case cgdvap = 182
    /// DC operations
    case cgsw = 183
    /// DC operations
    case cgvac = 184
    /// DC operations
    case cgvadp = 185
    /// DC operations
    case cgvap = 186
    /// DC operations
    case cigdsw = 187
    /// DC operations
    case cigdvac = 188
    /// DC operations
    case cigsw = 189
    /// DC operations
    case cigvac = 190
    /// DC operations
    case cisw = 191
    /// DC operations
    case civac = 192
    /// DC operations
    case csw = 193
    /// DC operations
    case cvac = 194
    /// DC operations
    case cvadp = 195
    /// DC operations
    case cvap = 196
    /// DC operations
    case cvau = 197
    /// DC operations
    case gva = 198
    /// DC operations
    case gzva = 199
    /// DC operations
    case igdsw = 200
    /// DC operations
    case igdvac = 201
    /// DC operations
    case igsw = 202
    /// DC operations
    case igvac = 203
    /// DC operations
    case isw = 204
    /// DC operations
    case ivac = 205
    /// DC operations
    case zva = 206
}

/// ARM64 extender type
public enum Arm64Ext: UInt32 {
    case invalid = 0
    case uxtb = 1
    case uxth = 2
    case uxtw = 3
    case uxtx = 4
    case sxtb = 5
    case sxth = 6
    case sxtw = 7
    case sxtx = 8
}

/// Group of ARM64 instructions
public enum Arm64Grp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    case call = 2
    case ret = 3
    case int = 4
    /// = CS_GRP_PRIVILEGE
    case privilege = 6
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    case pac = 8
    /// Architecture-specific groups
    case crypto = 128
    /// Architecture-specific groups
    case fparmv8 = 129
    /// Architecture-specific groups
    case neon = 130
    /// Architecture-specific groups
    case crc = 131
    /// Architecture-specific groups
    case aes = 132
    /// Architecture-specific groups
    case dotprod = 133
    /// Architecture-specific groups
    case fullfp16 = 134
    /// Architecture-specific groups
    case lse = 135
    /// Architecture-specific groups
    case rcpc = 136
    /// Architecture-specific groups
    case rdm = 137
    /// Architecture-specific groups
    case sha2 = 138
    /// Architecture-specific groups
    case sha3 = 139
    /// Architecture-specific groups
    case sm4 = 140
    /// Architecture-specific groups
    case sve = 141
    /// Architecture-specific groups
    case sve2 = 142
    /// Architecture-specific groups
    case sve2aes = 143
    /// Architecture-specific groups
    case sve2bitperm = 144
    /// Architecture-specific groups
    case sve2sha3 = 145
    /// Architecture-specific groups
    case sve2sm4 = 146
    /// Architecture-specific groups
    case sme = 147
    /// Architecture-specific groups
    case smef64 = 148
    /// Architecture-specific groups
    case smei64 = 149
    /// Architecture-specific groups
    case matmulfp32 = 150
    /// Architecture-specific groups
    case matmulfp64 = 151
    /// Architecture-specific groups
    case matmulint8 = 152
    /// Architecture-specific groups
    case v81A = 153
    /// Architecture-specific groups
    case v83A = 154
    /// Architecture-specific groups
    case v84A = 155
    /// <-- mark the end of the list of groups
    case ending = 156
}

/// SYS operands (IC/DC/AC/TLBI)
public enum Arm64Ic: UInt32 {
    /// IC operations
    case ialluis = 207
    /// IC operations
    case iallu = 208
    /// IC operations
    case ivau = 209
}

/// ARM64 instruction
public enum Arm64Ins: UInt32 {
    case invalid = 0
    case abs = 1
    case adc = 2
    case adclb = 3
    case adclt = 4
    case adcs = 5
    case add = 6
    case addg = 7
    case addha = 8
    case addhn = 9
    case addhn2 = 10
    case addhnb = 11
    case addhnt = 12
    case addp = 13
    case addpl = 14
    case adds = 15
    case addv = 16
    case addva = 17
    case addvl = 18
    case adr = 19
    case adrp = 20
    case aesd = 21
    case aese = 22
    case aesimc = 23
    case aesmc = 24
    case and = 25
    case ands = 26
    case andv = 27
    case asr = 28
    case asrd = 29
    case asrr = 30
    case asrv = 31
    case autda = 32
    case autdb = 33
    case autdza = 34
    case autdzb = 35
    case autia = 36
    case autia1716 = 37
    case autiasp = 38
    case autiaz = 39
    case autib = 40
    case autib1716 = 41
    case autibsp = 42
    case autibz = 43
    case autiza = 44
    case autizb = 45
    case axflag = 46
    case b = 47
    case bc = 48
    case bcax = 49
    case bdep = 50
    case bext = 51
    case bfcvt = 52
    case bfcvtn = 53
    case bfcvtn2 = 54
    case bfcvtnt = 55
    case bfdot = 56
    case bfm = 57
    case bfmlalb = 58
    case bfmlalt = 59
    case bfmmla = 60
    case bfmopa = 61
    case bfmops = 62
    case bgrp = 63
    case bic = 64
    case bics = 65
    case bif = 66
    case bit = 67
    case bl = 68
    case blr = 69
    case blraa = 70
    case blraaz = 71
    case blrab = 72
    case blrabz = 73
    case br = 74
    case braa = 75
    case braaz = 76
    case brab = 77
    case brabz = 78
    case brb = 79
    case brk = 80
    case brka = 81
    case brkas = 82
    case brkb = 83
    case brkbs = 84
    case brkn = 85
    case brkns = 86
    case brkpa = 87
    case brkpas = 88
    case brkpb = 89
    case brkpbs = 90
    case bsl = 91
    case bsl1n = 92
    case bsl2n = 93
    case bti = 94
    case cadd = 95
    case cas = 96
    case casa = 97
    case casab = 98
    case casah = 99
    case casal = 100
    case casalb = 101
    case casalh = 102
    case casb = 103
    case cash = 104
    case casl = 105
    case caslb = 106
    case caslh = 107
    case casp = 108
    case caspa = 109
    case caspal = 110
    case caspl = 111
    case cbnz = 112
    case cbz = 113
    case ccmn = 114
    case ccmp = 115
    case cdot = 116
    case cfinv = 117
    case cinc = 118
    case cinv = 119
    case clasta = 120
    case clastb = 121
    case clrex = 122
    case cls = 123
    case clz = 124
    case cmeq = 125
    case cmge = 126
    case cmgt = 127
    case cmhi = 128
    case cmhs = 129
    case cmla = 130
    case cmle = 131
    case cmlo = 132
    case cmls = 133
    case cmlt = 134
    case cmn = 135
    case cmp = 136
    case cmpeq = 137
    case cmpge = 138
    case cmpgt = 139
    case cmphi = 140
    case cmphs = 141
    case cmple = 142
    case cmplo = 143
    case cmpls = 144
    case cmplt = 145
    case cmpne = 146
    case cmpp = 147
    case cmtst = 148
    case cneg = 149
    case cnot = 150
    case cnt = 151
    case cntb = 152
    case cntd = 153
    case cnth = 154
    case cntp = 155
    case cntw = 156
    case compact = 157
    case cpy = 158
    case cpye = 159
    case cpyen = 160
    case cpyern = 161
    case cpyert = 162
    case cpyertn = 163
    case cpyertrn = 164
    case cpyertwn = 165
    case cpyet = 166
    case cpyetn = 167
    case cpyetrn = 168
    case cpyetwn = 169
    case cpyewn = 170
    case cpyewt = 171
    case cpyewtn = 172
    case cpyewtrn = 173
    case cpyewtwn = 174
    case cpyfe = 175
    case cpyfen = 176
    case cpyfern = 177
    case cpyfert = 178
    case cpyfertn = 179
    case cpyfertrn = 180
    case cpyfertwn = 181
    case cpyfet = 182
    case cpyfetn = 183
    case cpyfetrn = 184
    case cpyfetwn = 185
    case cpyfewn = 186
    case cpyfewt = 187
    case cpyfewtn = 188
    case cpyfewtrn = 189
    case cpyfewtwn = 190
    case cpyfm = 191
    case cpyfmn = 192
    case cpyfmrn = 193
    case cpyfmrt = 194
    case cpyfmrtn = 195
    case cpyfmrtrn = 196
    case cpyfmrtwn = 197
    case cpyfmt = 198
    case cpyfmtn = 199
    case cpyfmtrn = 200
    case cpyfmtwn = 201
    case cpyfmwn = 202
    case cpyfmwt = 203
    case cpyfmwtn = 204
    case cpyfmwtrn = 205
    case cpyfmwtwn = 206
    case cpyfp = 207
    case cpyfpn = 208
    case cpyfprn = 209
    case cpyfprt = 210
    case cpyfprtn = 211
    case cpyfprtrn = 212
    case cpyfprtwn = 213
    case cpyfpt = 214
    case cpyfptn = 215
    case cpyfptrn = 216
    case cpyfptwn = 217
    case cpyfpwn = 218
    case cpyfpwt = 219
    case cpyfpwtn = 220
    case cpyfpwtrn = 221
    case cpyfpwtwn = 222
    case cpym = 223
    case cpymn = 224
    case cpymrn = 225
    case cpymrt = 226
    case cpymrtn = 227
    case cpymrtrn = 228
    case cpymrtwn = 229
    case cpymt = 230
    case cpymtn = 231
    case cpymtrn = 232
    case cpymtwn = 233
    case cpymwn = 234
    case cpymwt = 235
    case cpymwtn = 236
    case cpymwtrn = 237
    case cpymwtwn = 238
    case cpyp = 239
    case cpypn = 240
    case cpyprn = 241
    case cpyprt = 242
    case cpyprtn = 243
    case cpyprtrn = 244
    case cpyprtwn = 245
    case cpypt = 246
    case cpyptn = 247
    case cpyptrn = 248
    case cpyptwn = 249
    case cpypwn = 250
    case cpypwt = 251
    case cpypwtn = 252
    case cpypwtrn = 253
    case cpypwtwn = 254
    case crc32b = 255
    case crc32cb = 256
    case crc32ch = 257
    case crc32cw = 258
    case crc32cx = 259
    case crc32h = 260
    case crc32w = 261
    case crc32x = 262
    case csdb = 263
    case csel = 264
    case cset = 265
    case csetm = 266
    case csinc = 267
    case csinv = 268
    case csneg = 269
    case ctermeq = 270
    case ctermne = 271
    case dcps1 = 272
    case dcps2 = 273
    case dcps3 = 274
    case decb = 275
    case decd = 276
    case dech = 277
    case decp = 278
    case decw = 279
    case dfb = 280
    case dgh = 281
    case dmb = 282
    case drps = 283
    case dsb = 284
    case dup = 285
    case dupm = 286
    case eon = 287
    case eor = 288
    case eor3 = 289
    case eorbt = 290
    case eors = 291
    case eortb = 292
    case eorv = 293
    case eret = 294
    case eretaa = 295
    case eretab = 296
    case esb = 297
    case ext = 298
    case extr = 299
    case fabd = 300
    case fabs = 301
    case facge = 302
    case facgt = 303
    case facle = 304
    case faclt = 305
    case fadd = 306
    case fadda = 307
    case faddp = 308
    case faddv = 309
    case fcadd = 310
    case fccmp = 311
    case fccmpe = 312
    case fcmeq = 313
    case fcmge = 314
    case fcmgt = 315
    case fcmla = 316
    case fcmle = 317
    case fcmlt = 318
    case fcmne = 319
    case fcmp = 320
    case fcmpe = 321
    case fcmuo = 322
    case fcpy = 323
    case fcsel = 324
    case fcvt = 325
    case fcvtas = 326
    case fcvtau = 327
    case fcvtl = 328
    case fcvtl2 = 329
    case fcvtlt = 330
    case fcvtms = 331
    case fcvtmu = 332
    case fcvtn = 333
    case fcvtn2 = 334
    case fcvtns = 335
    case fcvtnt = 336
    case fcvtnu = 337
    case fcvtps = 338
    case fcvtpu = 339
    case fcvtx = 340
    case fcvtxn = 341
    case fcvtxn2 = 342
    case fcvtxnt = 343
    case fcvtzs = 344
    case fcvtzu = 345
    case fdiv = 346
    case fdivr = 347
    case fdup = 348
    case fexpa = 349
    case fjcvtzs = 350
    case flogb = 351
    case fmad = 352
    case fmadd = 353
    case fmax = 354
    case fmaxnm = 355
    case fmaxnmp = 356
    case fmaxnmv = 357
    case fmaxp = 358
    case fmaxv = 359
    case fmin = 360
    case fminnm = 361
    case fminnmp = 362
    case fminnmv = 363
    case fminp = 364
    case fminv = 365
    case fmla = 366
    case fmlal = 367
    case fmlal2 = 368
    case fmlalb = 369
    case fmlalt = 370
    case fmls = 371
    case fmlsl = 372
    case fmlsl2 = 373
    case fmlslb = 374
    case fmlslt = 375
    case fmmla = 376
    case fmopa = 377
    case fmops = 378
    case fmov = 379
    case fmsb = 380
    case fmsub = 381
    case fmul = 382
    case fmulx = 383
    case fneg = 384
    case fnmad = 385
    case fnmadd = 386
    case fnmla = 387
    case fnmls = 388
    case fnmsb = 389
    case fnmsub = 390
    case fnmul = 391
    case frecpe = 392
    case frecps = 393
    case frecpx = 394
    case frint32x = 395
    case frint32z = 396
    case frint64x = 397
    case frint64z = 398
    case frinta = 399
    case frinti = 400
    case frintm = 401
    case frintn = 402
    case frintp = 403
    case frintx = 404
    case frintz = 405
    case frsqrte = 406
    case frsqrts = 407
    case fscale = 408
    case fsqrt = 409
    case fsub = 410
    case fsubr = 411
    case ftmad = 412
    case ftsmul = 413
    case ftssel = 414
    case gmi = 415
    case hint = 416
    case histcnt = 417
    case histseg = 418
    case hlt = 419
    case hvc = 420
    case incb = 421
    case incd = 422
    case inch = 423
    case incp = 424
    case incw = 425
    case index = 426
    case ins = 427
    case insr = 428
    case irg = 429
    case isb = 430
    case lasta = 431
    case lastb = 432
    case ld1 = 433
    case ld1b = 434
    case ld1d = 435
    case ld1h = 436
    case ld1q = 437
    case ld1r = 438
    case ld1rb = 439
    case ld1rd = 440
    case ld1rh = 441
    case ld1rob = 442
    case ld1rod = 443
    case ld1roh = 444
    case ld1row = 445
    case ld1rqb = 446
    case ld1rqd = 447
    case ld1rqh = 448
    case ld1rqw = 449
    case ld1rsb = 450
    case ld1rsh = 451
    case ld1rsw = 452
    case ld1rw = 453
    case ld1sb = 454
    case ld1sh = 455
    case ld1sw = 456
    case ld1w = 457
    case ld2 = 458
    case ld2b = 459
    case ld2d = 460
    case ld2h = 461
    case ld2r = 462
    case ld2w = 463
    case ld3 = 464
    case ld3b = 465
    case ld3d = 466
    case ld3h = 467
    case ld3r = 468
    case ld3w = 469
    case ld4 = 470
    case ld4b = 471
    case ld4d = 472
    case ld4h = 473
    case ld4r = 474
    case ld4w = 475
    case ld64b = 476
    case ldadd = 477
    case ldadda = 478
    case ldaddab = 479
    case ldaddah = 480
    case ldaddal = 481
    case ldaddalb = 482
    case ldaddalh = 483
    case ldaddb = 484
    case ldaddh = 485
    case ldaddl = 486
    case ldaddlb = 487
    case ldaddlh = 488
    case ldapr = 489
    case ldaprb = 490
    case ldaprh = 491
    case ldapur = 492
    case ldapurb = 493
    case ldapurh = 494
    case ldapursb = 495
    case ldapursh = 496
    case ldapursw = 497
    case ldar = 498
    case ldarb = 499
    case ldarh = 500
    case ldaxp = 501
    case ldaxr = 502
    case ldaxrb = 503
    case ldaxrh = 504
    case ldclr = 505
    case ldclra = 506
    case ldclrab = 507
    case ldclrah = 508
    case ldclral = 509
    case ldclralb = 510
    case ldclralh = 511
    case ldclrb = 512
    case ldclrh = 513
    case ldclrl = 514
    case ldclrlb = 515
    case ldclrlh = 516
    case ldeor = 517
    case ldeora = 518
    case ldeorab = 519
    case ldeorah = 520
    case ldeoral = 521
    case ldeoralb = 522
    case ldeoralh = 523
    case ldeorb = 524
    case ldeorh = 525
    case ldeorl = 526
    case ldeorlb = 527
    case ldeorlh = 528
    case ldff1b = 529
    case ldff1d = 530
    case ldff1h = 531
    case ldff1sb = 532
    case ldff1sh = 533
    case ldff1sw = 534
    case ldff1w = 535
    case ldg = 536
    case ldgm = 537
    case ldlar = 538
    case ldlarb = 539
    case ldlarh = 540
    case ldnf1b = 541
    case ldnf1d = 542
    case ldnf1h = 543
    case ldnf1sb = 544
    case ldnf1sh = 545
    case ldnf1sw = 546
    case ldnf1w = 547
    case ldnp = 548
    case ldnt1b = 549
    case ldnt1d = 550
    case ldnt1h = 551
    case ldnt1sb = 552
    case ldnt1sh = 553
    case ldnt1sw = 554
    case ldnt1w = 555
    case ldp = 556
    case ldpsw = 557
    case ldr = 558
    case ldraa = 559
    case ldrab = 560
    case ldrb = 561
    case ldrh = 562
    case ldrsb = 563
    case ldrsh = 564
    case ldrsw = 565
    case ldset = 566
    case ldseta = 567
    case ldsetab = 568
    case ldsetah = 569
    case ldsetal = 570
    case ldsetalb = 571
    case ldsetalh = 572
    case ldsetb = 573
    case ldseth = 574
    case ldsetl = 575
    case ldsetlb = 576
    case ldsetlh = 577
    case ldsmax = 578
    case ldsmaxa = 579
    case ldsmaxab = 580
    case ldsmaxah = 581
    case ldsmaxal = 582
    case ldsmaxalb = 583
    case ldsmaxalh = 584
    case ldsmaxb = 585
    case ldsmaxh = 586
    case ldsmaxl = 587
    case ldsmaxlb = 588
    case ldsmaxlh = 589
    case ldsmin = 590
    case ldsmina = 591
    case ldsminab = 592
    case ldsminah = 593
    case ldsminal = 594
    case ldsminalb = 595
    case ldsminalh = 596
    case ldsminb = 597
    case ldsminh = 598
    case ldsminl = 599
    case ldsminlb = 600
    case ldsminlh = 601
    case ldtr = 602
    case ldtrb = 603
    case ldtrh = 604
    case ldtrsb = 605
    case ldtrsh = 606
    case ldtrsw = 607
    case ldumax = 608
    case ldumaxa = 609
    case ldumaxab = 610
    case ldumaxah = 611
    case ldumaxal = 612
    case ldumaxalb = 613
    case ldumaxalh = 614
    case ldumaxb = 615
    case ldumaxh = 616
    case ldumaxl = 617
    case ldumaxlb = 618
    case ldumaxlh = 619
    case ldumin = 620
    case ldumina = 621
    case lduminab = 622
    case lduminah = 623
    case lduminal = 624
    case lduminalb = 625
    case lduminalh = 626
    case lduminb = 627
    case lduminh = 628
    case lduminl = 629
    case lduminlb = 630
    case lduminlh = 631
    case ldur = 632
    case ldurb = 633
    case ldurh = 634
    case ldursb = 635
    case ldursh = 636
    case ldursw = 637
    case ldxp = 638
    case ldxr = 639
    case ldxrb = 640
    case ldxrh = 641
    case lsl = 642
    case lslr = 643
    case lslv = 644
    case lsr = 645
    case lsrr = 646
    case lsrv = 647
    case mad = 648
    case madd = 649
    case match = 650
    case mla = 651
    case mls = 652
    case mneg = 653
    case mov = 654
    case mova = 655
    case movi = 656
    case movk = 657
    case movn = 658
    case movprfx = 659
    case movs = 660
    case movz = 661
    case mrs = 662
    case msb = 663
    case msr = 664
    case msub = 665
    case mul = 666
    case mvn = 667
    case mvni = 668
    case nand = 669
    case nands = 670
    case nbsl = 671
    case neg = 672
    case negs = 673
    case ngc = 674
    case ngcs = 675
    case nmatch = 676
    case nop = 677
    case nor = 678
    case nors = 679
    case not = 680
    case nots = 681
    case orn = 682
    case orns = 683
    case orr = 684
    case orrs = 685
    case orv = 686
    case pacda = 687
    case pacdb = 688
    case pacdza = 689
    case pacdzb = 690
    case pacga = 691
    case pacia = 692
    case pacia1716 = 693
    case paciasp = 694
    case paciaz = 695
    case pacib = 696
    case pacib1716 = 697
    case pacibsp = 698
    case pacibz = 699
    case paciza = 700
    case pacizb = 701
    case pfalse = 702
    case pfirst = 703
    case pmul = 704
    case pmull = 705
    case pmull2 = 706
    case pmullb = 707
    case pmullt = 708
    case pnext = 709
    case prfb = 710
    case prfd = 711
    case prfh = 712
    case prfm = 713
    case prfum = 714
    case prfw = 715
    case psb = 716
    case psel = 717
    case pssbb = 718
    case ptest = 719
    case ptrue = 720
    case ptrues = 721
    case punpkhi = 722
    case punpklo = 723
    case raddhn = 724
    case raddhn2 = 725
    case raddhnb = 726
    case raddhnt = 727
    case rax1 = 728
    case rbit = 729
    case rdffr = 730
    case rdffrs = 731
    case rdvl = 732
    case ret = 733
    case retaa = 734
    case retab = 735
    case rev = 736
    case rev16 = 737
    case rev32 = 738
    case rev64 = 739
    case revb = 740
    case revd = 741
    case revh = 742
    case revw = 743
    case rmif = 744
    case ror = 745
    case rorv = 746
    case rshrn = 747
    case rshrn2 = 748
    case rshrnb = 749
    case rshrnt = 750
    case rsubhn = 751
    case rsubhn2 = 752
    case rsubhnb = 753
    case rsubhnt = 754
    case saba = 755
    case sabal = 756
    case sabal2 = 757
    case sabalb = 758
    case sabalt = 759
    case sabd = 760
    case sabdl = 761
    case sabdl2 = 762
    case sabdlb = 763
    case sabdlt = 764
    case sadalp = 765
    case saddl = 766
    case saddl2 = 767
    case saddlb = 768
    case saddlbt = 769
    case saddlp = 770
    case saddlt = 771
    case saddlv = 772
    case saddv = 773
    case saddw = 774
    case saddw2 = 775
    case saddwb = 776
    case saddwt = 777
    case sb = 778
    case sbc = 779
    case sbclb = 780
    case sbclt = 781
    case sbcs = 782
    case sbfm = 783
    case sclamp = 784
    case scvtf = 785
    case sdiv = 786
    case sdivr = 787
    case sdot = 788
    case sel = 789
    case sete = 790
    case seten = 791
    case setet = 792
    case setetn = 793
    case setf16 = 794
    case setf8 = 795
    case setffr = 796
    case setge = 797
    case setgen = 798
    case setget = 799
    case setgetn = 800
    case setgm = 801
    case setgmn = 802
    case setgmt = 803
    case setgmtn = 804
    case setgp = 805
    case setgpn = 806
    case setgpt = 807
    case setgptn = 808
    case setm = 809
    case setmn = 810
    case setmt = 811
    case setmtn = 812
    case setp = 813
    case setpn = 814
    case setpt = 815
    case setptn = 816
    case sev = 817
    case sevl = 818
    case sha1c = 819
    case sha1h = 820
    case sha1m = 821
    case sha1p = 822
    case sha1su0 = 823
    case sha1su1 = 824
    case sha256h = 825
    case sha256h2 = 826
    case sha256su0 = 827
    case sha256su1 = 828
    case sha512h = 829
    case sha512h2 = 830
    case sha512su0 = 831
    case sha512su1 = 832
    case shadd = 833
    case shl = 834
    case shll = 835
    case shll2 = 836
    case shrn = 837
    case shrn2 = 838
    case shrnb = 839
    case shrnt = 840
    case shsub = 841
    case shsubr = 842
    case sli = 843
    case sm3partw1 = 844
    case sm3partw2 = 845
    case sm3ss1 = 846
    case sm3tt1a = 847
    case sm3tt1b = 848
    case sm3tt2a = 849
    case sm3tt2b = 850
    case sm4e = 851
    case sm4ekey = 852
    case smaddl = 853
    case smax = 854
    case smaxp = 855
    case smaxv = 856
    case smc = 857
    case smin = 858
    case sminp = 859
    case sminv = 860
    case smlal = 861
    case smlal2 = 862
    case smlalb = 863
    case smlalt = 864
    case smlsl = 865
    case smlsl2 = 866
    case smlslb = 867
    case smlslt = 868
    case smmla = 869
    case smnegl = 870
    case smopa = 871
    case smops = 872
    case smov = 873
    case smstart = 874
    case smstop = 875
    case smsubl = 876
    case smulh = 877
    case smull = 878
    case smull2 = 879
    case smullb = 880
    case smullt = 881
    case splice = 882
    case sqabs = 883
    case sqadd = 884
    case sqcadd = 885
    case sqdecb = 886
    case sqdecd = 887
    case sqdech = 888
    case sqdecp = 889
    case sqdecw = 890
    case sqdmlal = 891
    case sqdmlal2 = 892
    case sqdmlalb = 893
    case sqdmlalbt = 894
    case sqdmlalt = 895
    case sqdmlsl = 896
    case sqdmlsl2 = 897
    case sqdmlslb = 898
    case sqdmlslbt = 899
    case sqdmlslt = 900
    case sqdmulh = 901
    case sqdmull = 902
    case sqdmull2 = 903
    case sqdmullb = 904
    case sqdmullt = 905
    case sqincb = 906
    case sqincd = 907
    case sqinch = 908
    case sqincp = 909
    case sqincw = 910
    case sqneg = 911
    case sqrdcmlah = 912
    case sqrdmlah = 913
    case sqrdmlsh = 914
    case sqrdmulh = 915
    case sqrshl = 916
    case sqrshlr = 917
    case sqrshrn = 918
    case sqrshrn2 = 919
    case sqrshrnb = 920
    case sqrshrnt = 921
    case sqrshrun = 922
    case sqrshrun2 = 923
    case sqrshrunb = 924
    case sqrshrunt = 925
    case sqshl = 926
    case sqshlr = 927
    case sqshlu = 928
    case sqshrn = 929
    case sqshrn2 = 930
    case sqshrnb = 931
    case sqshrnt = 932
    case sqshrun = 933
    case sqshrun2 = 934
    case sqshrunb = 935
    case sqshrunt = 936
    case sqsub = 937
    case sqsubr = 938
    case sqxtn = 939
    case sqxtn2 = 940
    case sqxtnb = 941
    case sqxtnt = 942
    case sqxtun = 943
    case sqxtun2 = 944
    case sqxtunb = 945
    case sqxtunt = 946
    case srhadd = 947
    case sri = 948
    case srshl = 949
    case srshlr = 950
    case srshr = 951
    case srsra = 952
    case ssbb = 953
    case sshl = 954
    case sshll = 955
    case sshll2 = 956
    case sshllb = 957
    case sshllt = 958
    case sshr = 959
    case ssra = 960
    case ssubl = 961
    case ssubl2 = 962
    case ssublb = 963
    case ssublbt = 964
    case ssublt = 965
    case ssubltb = 966
    case ssubw = 967
    case ssubw2 = 968
    case ssubwb = 969
    case ssubwt = 970
    case st1 = 971
    case st1b = 972
    case st1d = 973
    case st1h = 974
    case st1q = 975
    case st1w = 976
    case st2 = 977
    case st2b = 978
    case st2d = 979
    case st2g = 980
    case st2h = 981
    case st2w = 982
    case st3 = 983
    case st3b = 984
    case st3d = 985
    case st3h = 986
    case st3w = 987
    case st4 = 988
    case st4b = 989
    case st4d = 990
    case st4h = 991
    case st4w = 992
    case st64b = 993
    case st64bv = 994
    case st64bv0 = 995
    case stadd = 996
    case staddb = 997
    case staddh = 998
    case staddl = 999
    case staddlb = 1000
    case staddlh = 1001
    case stclr = 1002
    case stclrb = 1003
    case stclrh = 1004
    case stclrl = 1005
    case stclrlb = 1006
    case stclrlh = 1007
    case steor = 1008
    case steorb = 1009
    case steorh = 1010
    case steorl = 1011
    case steorlb = 1012
    case steorlh = 1013
    case stg = 1014
    case stgm = 1015
    case stgp = 1016
    case stllr = 1017
    case stllrb = 1018
    case stllrh = 1019
    case stlr = 1020
    case stlrb = 1021
    case stlrh = 1022
    case stlur = 1023
    case stlurb = 1024
    case stlurh = 1025
    case stlxp = 1026
    case stlxr = 1027
    case stlxrb = 1028
    case stlxrh = 1029
    case stnp = 1030
    case stnt1b = 1031
    case stnt1d = 1032
    case stnt1h = 1033
    case stnt1w = 1034
    case stp = 1035
    case str = 1036
    case strb = 1037
    case strh = 1038
    case stset = 1039
    case stsetb = 1040
    case stseth = 1041
    case stsetl = 1042
    case stsetlb = 1043
    case stsetlh = 1044
    case stsmax = 1045
    case stsmaxb = 1046
    case stsmaxh = 1047
    case stsmaxl = 1048
    case stsmaxlb = 1049
    case stsmaxlh = 1050
    case stsmin = 1051
    case stsminb = 1052
    case stsminh = 1053
    case stsminl = 1054
    case stsminlb = 1055
    case stsminlh = 1056
    case sttr = 1057
    case sttrb = 1058
    case sttrh = 1059
    case stumax = 1060
    case stumaxb = 1061
    case stumaxh = 1062
    case stumaxl = 1063
    case stumaxlb = 1064
    case stumaxlh = 1065
    case stumin = 1066
    case stuminb = 1067
    case stuminh = 1068
    case stuminl = 1069
    case stuminlb = 1070
    case stuminlh = 1071
    case stur = 1072
    case sturb = 1073
    case sturh = 1074
    case stxp = 1075
    case stxr = 1076
    case stxrb = 1077
    case stxrh = 1078
    case stz2g = 1079
    case stzg = 1080
    case stzgm = 1081
    case sub = 1082
    case subg = 1083
    case subhn = 1084
    case subhn2 = 1085
    case subhnb = 1086
    case subhnt = 1087
    case subp = 1088
    case subps = 1089
    case subr = 1090
    case subs = 1091
    case sudot = 1092
    case sumopa = 1093
    case sumops = 1094
    case sunpkhi = 1095
    case sunpklo = 1096
    case suqadd = 1097
    case svc = 1098
    case swp = 1099
    case swpa = 1100
    case swpab = 1101
    case swpah = 1102
    case swpal = 1103
    case swpalb = 1104
    case swpalh = 1105
    case swpb = 1106
    case swph = 1107
    case swpl = 1108
    case swplb = 1109
    case swplh = 1110
    case sxtb = 1111
    case sxth = 1112
    case sxtl = 1113
    case sxtl2 = 1114
    case sxtw = 1115
    case sys = 1116
    case sysl = 1117
    case tbl = 1118
    case tbnz = 1119
    case tbx = 1120
    case tbz = 1121
    case tcancel = 1122
    case tcommit = 1123
    case trn1 = 1124
    case trn2 = 1125
    case tsb = 1126
    case tst = 1127
    case tstart = 1128
    case ttest = 1129
    case uaba = 1130
    case uabal = 1131
    case uabal2 = 1132
    case uabalb = 1133
    case uabalt = 1134
    case uabd = 1135
    case uabdl = 1136
    case uabdl2 = 1137
    case uabdlb = 1138
    case uabdlt = 1139
    case uadalp = 1140
    case uaddl = 1141
    case uaddl2 = 1142
    case uaddlb = 1143
    case uaddlp = 1144
    case uaddlt = 1145
    case uaddlv = 1146
    case uaddv = 1147
    case uaddw = 1148
    case uaddw2 = 1149
    case uaddwb = 1150
    case uaddwt = 1151
    case ubfm = 1152
    case uclamp = 1153
    case ucvtf = 1154
    case udf = 1155
    case udiv = 1156
    case udivr = 1157
    case udot = 1158
    case uhadd = 1159
    case uhsub = 1160
    case uhsubr = 1161
    case umaddl = 1162
    case umax = 1163
    case umaxp = 1164
    case umaxv = 1165
    case umin = 1166
    case uminp = 1167
    case uminv = 1168
    case umlal = 1169
    case umlal2 = 1170
    case umlalb = 1171
    case umlalt = 1172
    case umlsl = 1173
    case umlsl2 = 1174
    case umlslb = 1175
    case umlslt = 1176
    case ummla = 1177
    case umnegl = 1178
    case umopa = 1179
    case umops = 1180
    case umov = 1181
    case umsubl = 1182
    case umulh = 1183
    case umull = 1184
    case umull2 = 1185
    case umullb = 1186
    case umullt = 1187
    case uqadd = 1188
    case uqdecb = 1189
    case uqdecd = 1190
    case uqdech = 1191
    case uqdecp = 1192
    case uqdecw = 1193
    case uqincb = 1194
    case uqincd = 1195
    case uqinch = 1196
    case uqincp = 1197
    case uqincw = 1198
    case uqrshl = 1199
    case uqrshlr = 1200
    case uqrshrn = 1201
    case uqrshrn2 = 1202
    case uqrshrnb = 1203
    case uqrshrnt = 1204
    case uqshl = 1205
    case uqshlr = 1206
    case uqshrn = 1207
    case uqshrn2 = 1208
    case uqshrnb = 1209
    case uqshrnt = 1210
    case uqsub = 1211
    case uqsubr = 1212
    case uqxtn = 1213
    case uqxtn2 = 1214
    case uqxtnb = 1215
    case uqxtnt = 1216
    case urecpe = 1217
    case urhadd = 1218
    case urshl = 1219
    case urshlr = 1220
    case urshr = 1221
    case ursqrte = 1222
    case ursra = 1223
    case usdot = 1224
    case ushl = 1225
    case ushll = 1226
    case ushll2 = 1227
    case ushllb = 1228
    case ushllt = 1229
    case ushr = 1230
    case usmmla = 1231
    case usmopa = 1232
    case usmops = 1233
    case usqadd = 1234
    case usra = 1235
    case usubl = 1236
    case usubl2 = 1237
    case usublb = 1238
    case usublt = 1239
    case usubw = 1240
    case usubw2 = 1241
    case usubwb = 1242
    case usubwt = 1243
    case uunpkhi = 1244
    case uunpklo = 1245
    case uxtb = 1246
    case uxth = 1247
    case uxtl = 1248
    case uxtl2 = 1249
    case uxtw = 1250
    case uzp1 = 1251
    case uzp2 = 1252
    case wfe = 1253
    case wfet = 1254
    case wfi = 1255
    case wfit = 1256
    case whilege = 1257
    case whilegt = 1258
    case whilehi = 1259
    case whilehs = 1260
    case whilele = 1261
    case whilelo = 1262
    case whilels = 1263
    case whilelt = 1264
    case whilerw = 1265
    case whilewr = 1266
    case wrffr = 1267
    case xaflag = 1268
    case xar = 1269
    case xpacd = 1270
    case xpaci = 1271
    case xpaclri = 1272
    case xtn = 1273
    case xtn2 = 1274
    case yield = 1275
    case zero = 1276
    case zip1 = 1277
    case zip2 = 1278
    /// alias insn
    case sbfiz = 1279
    /// alias insn
    case ubfiz = 1280
    /// alias insn
    case sbfx = 1281
    /// alias insn
    case ubfx = 1282
    /// alias insn
    case bfi = 1283
    /// alias insn
    case bfxil = 1284
    /// alias insn
    case ic = 1285
    /// alias insn
    case dc = 1286
    /// alias insn
    case at = 1287
    /// alias insn
    case tlbi = 1288
    /// <-- mark the end of the list of insn
    case ending = 1289
}

/// Operand type for instruction's operands
public enum Arm64Op: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// = CS_OP_MEM (Memory operand).
    case mem = 3
    /// = CS_OP_FP (Floating-Point operand).
    case fp = 4
    /// C-Immediate
    case cimm = 64
    /// MRS register operand.
    case regMrs = 65
    /// MSR register operand.
    case regMsr = 66
    /// PState operand.
    case pstate = 67
    /// SYS operand for IC/DC/AT/TLBI instructions.
    case sys = 68
    /// SVCR operand for MSR SVCR instructions.
    case svcr = 69
    /// Prefetch operand (PRFM).
    case prefetch = 70
    /// Memory barrier operand (ISB/DMB/DSB instructions).
    case barrier = 71
    /// SME instruction operand with with index.
    case smeIndex = 72
}

/// Prefetch operations (PRFM)
public enum Arm64Prfm: UInt32 {
    case invalid = 0
    case pldl1keep = 1
    case pldl1strm = 2
    case pldl2keep = 3
    case pldl2strm = 4
    case pldl3keep = 5
    case pldl3strm = 6
    case plil1keep = 9
    case plil1strm = 10
    case plil2keep = 11
    case plil2strm = 12
    case plil3keep = 13
    case plil3strm = 14
    case pstl1keep = 17
    case pstl1strm = 18
    case pstl2keep = 19
    case pstl2strm = 20
    case pstl3keep = 21
    case pstl3strm = 22
}

/// System PState Field (MSR instruction)
public enum Arm64Pstate: UInt32 {
    case invalid = 0
    case uao = 3
    case pan = 4
    case spsel = 5
    case dit = 26
    case daifset = 30
    case daifclr = 31
}

/// ARM64 registers
public enum Arm64Reg: UInt16 {
    case invalid = 0
    case ffr = 1
    case fp = 2
    /// alias registers
    public static let x29 = 2
    case lr = 3
    /// alias registers
    public static let x30 = 3
    case nzcv = 4
    case sp = 5
    case vg = 6
    case wsp = 7
    case wzr = 8
    case xzr = 9
    case za = 10
    case b0 = 11
    case b1 = 12
    case b2 = 13
    case b3 = 14
    case b4 = 15
    case b5 = 16
    case b6 = 17
    case b7 = 18
    case b8 = 19
    case b9 = 20
    case b10 = 21
    case b11 = 22
    case b12 = 23
    case b13 = 24
    case b14 = 25
    case b15 = 26
    case b16 = 27
    case b17 = 28
    case b18 = 29
    case b19 = 30
    case b20 = 31
    case b21 = 32
    case b22 = 33
    case b23 = 34
    case b24 = 35
    case b25 = 36
    case b26 = 37
    case b27 = 38
    case b28 = 39
    case b29 = 40
    case b30 = 41
    case b31 = 42
    case d0 = 43
    case d1 = 44
    case d2 = 45
    case d3 = 46
    case d4 = 47
    case d5 = 48
    case d6 = 49
    case d7 = 50
    case d8 = 51
    case d9 = 52
    case d10 = 53
    case d11 = 54
    case d12 = 55
    case d13 = 56
    case d14 = 57
    case d15 = 58
    case d16 = 59
    case d17 = 60
    case d18 = 61
    case d19 = 62
    case d20 = 63
    case d21 = 64
    case d22 = 65
    case d23 = 66
    case d24 = 67
    case d25 = 68
    case d26 = 69
    case d27 = 70
    case d28 = 71
    case d29 = 72
    case d30 = 73
    case d31 = 74
    case h0 = 75
    case h1 = 76
    case h2 = 77
    case h3 = 78
    case h4 = 79
    case h5 = 80
    case h6 = 81
    case h7 = 82
    case h8 = 83
    case h9 = 84
    case h10 = 85
    case h11 = 86
    case h12 = 87
    case h13 = 88
    case h14 = 89
    case h15 = 90
    case h16 = 91
    case h17 = 92
    case h18 = 93
    case h19 = 94
    case h20 = 95
    case h21 = 96
    case h22 = 97
    case h23 = 98
    case h24 = 99
    case h25 = 100
    case h26 = 101
    case h27 = 102
    case h28 = 103
    case h29 = 104
    case h30 = 105
    case h31 = 106
    case p0 = 107
    case p1 = 108
    case p2 = 109
    case p3 = 110
    case p4 = 111
    case p5 = 112
    case p6 = 113
    case p7 = 114
    case p8 = 115
    case p9 = 116
    case p10 = 117
    case p11 = 118
    case p12 = 119
    case p13 = 120
    case p14 = 121
    case p15 = 122
    case q0 = 123
    case q1 = 124
    case q2 = 125
    case q3 = 126
    case q4 = 127
    case q5 = 128
    case q6 = 129
    case q7 = 130
    case q8 = 131
    case q9 = 132
    case q10 = 133
    case q11 = 134
    case q12 = 135
    case q13 = 136
    case q14 = 137
    case q15 = 138
    case q16 = 139
    case q17 = 140
    case q18 = 141
    case q19 = 142
    case q20 = 143
    case q21 = 144
    case q22 = 145
    case q23 = 146
    case q24 = 147
    case q25 = 148
    case q26 = 149
    case q27 = 150
    case q28 = 151
    case q29 = 152
    case q30 = 153
    case q31 = 154
    case s0 = 155
    case s1 = 156
    case s2 = 157
    case s3 = 158
    case s4 = 159
    case s5 = 160
    case s6 = 161
    case s7 = 162
    case s8 = 163
    case s9 = 164
    case s10 = 165
    case s11 = 166
    case s12 = 167
    case s13 = 168
    case s14 = 169
    case s15 = 170
    case s16 = 171
    case s17 = 172
    case s18 = 173
    case s19 = 174
    case s20 = 175
    case s21 = 176
    case s22 = 177
    case s23 = 178
    case s24 = 179
    case s25 = 180
    case s26 = 181
    case s27 = 182
    case s28 = 183
    case s29 = 184
    case s30 = 185
    case s31 = 186
    case w0 = 187
    case w1 = 188
    case w2 = 189
    case w3 = 190
    case w4 = 191
    case w5 = 192
    case w6 = 193
    case w7 = 194
    case w8 = 195
    case w9 = 196
    case w10 = 197
    case w11 = 198
    case w12 = 199
    case w13 = 200
    case w14 = 201
    case w15 = 202
    case w16 = 203
    case w17 = 204
    case w18 = 205
    case w19 = 206
    case w20 = 207
    case w21 = 208
    case w22 = 209
    case w23 = 210
    case w24 = 211
    case w25 = 212
    case w26 = 213
    case w27 = 214
    case w28 = 215
    case w29 = 216
    case w30 = 217
    case x0 = 218
    case x1 = 219
    case x2 = 220
    case x3 = 221
    case x4 = 222
    case x5 = 223
    case x6 = 224
    case x7 = 225
    case x8 = 226
    case x9 = 227
    case x10 = 228
    case x11 = 229
    case x12 = 230
    case x13 = 231
    case x14 = 232
    case x15 = 233
    case x16 = 234
    /// alias registers
    public static let ip0 = 234
    case x17 = 235
    /// alias registers
    public static let ip1 = 235
    case x18 = 236
    case x19 = 237
    case x20 = 238
    case x21 = 239
    case x22 = 240
    case x23 = 241
    case x24 = 242
    case x25 = 243
    case x26 = 244
    case x27 = 245
    case x28 = 246
    case z0 = 247
    case z1 = 248
    case z2 = 249
    case z3 = 250
    case z4 = 251
    case z5 = 252
    case z6 = 253
    case z7 = 254
    case z8 = 255
    case z9 = 256
    case z10 = 257
    case z11 = 258
    case z12 = 259
    case z13 = 260
    case z14 = 261
    case z15 = 262
    case z16 = 263
    case z17 = 264
    case z18 = 265
    case z19 = 266
    case z20 = 267
    case z21 = 268
    case z22 = 269
    case z23 = 270
    case z24 = 271
    case z25 = 272
    case z26 = 273
    case z27 = 274
    case z28 = 275
    case z29 = 276
    case z30 = 277
    case z31 = 278
    case zab0 = 279
    case zad0 = 280
    case zad1 = 281
    case zad2 = 282
    case zad3 = 283
    case zad4 = 284
    case zad5 = 285
    case zad6 = 286
    case zad7 = 287
    case zah0 = 288
    case zah1 = 289
    case zaq0 = 290
    case zaq1 = 291
    case zaq2 = 292
    case zaq3 = 293
    case zaq4 = 294
    case zaq5 = 295
    case zaq6 = 296
    case zaq7 = 297
    case zaq8 = 298
    case zaq9 = 299
    case zaq10 = 300
    case zaq11 = 301
    case zaq12 = 302
    case zaq13 = 303
    case zaq14 = 304
    case zaq15 = 305
    case zas0 = 306
    case zas1 = 307
    case zas2 = 308
    case zas3 = 309
    case v0 = 310
    case v1 = 311
    case v2 = 312
    case v3 = 313
    case v4 = 314
    case v5 = 315
    case v6 = 316
    case v7 = 317
    case v8 = 318
    case v9 = 319
    case v10 = 320
    case v11 = 321
    case v12 = 322
    case v13 = 323
    case v14 = 324
    case v15 = 325
    case v16 = 326
    case v17 = 327
    case v18 = 328
    case v19 = 329
    case v20 = 330
    case v21 = 331
    case v22 = 332
    case v23 = 333
    case v24 = 334
    case v25 = 335
    case v26 = 336
    case v27 = 337
    case v28 = 338
    case v29 = 339
    case v30 = 340
    case v31 = 341
    /// <-- mark the end of the list of registers
    case ending = 342
}

/// ARM64 shift type
public enum Arm64Sft: UInt32 {
    case invalid = 0
    case lsl = 1
    case msl = 2
    case lsr = 3
    case asr = 4
    case ror = 5
}

/// SVCR operands
public enum Arm64Svcr: UInt32 {
    case invalid = 0
    case svcrsm = 1
    case svcrza = 2
    case svcrsmza = 3
}

/// SYS operands (IC/DC/AC/TLBI)
public enum Arm64Sys: UInt32 {
    case invalid = 0
}

/// System registers
public enum Arm64Sysreg: UInt32 {
    /// System registers for MRS
    case invalid = 0
    /// System registers for MRS
    case osdtrrxEl1 = 32770
    /// System registers for MRS
    case dbgbvr0El1 = 32772
    /// System registers for MRS
    case dbgbcr0El1 = 32773
    /// System registers for MRS
    case dbgwvr0El1 = 32774
    /// System registers for MRS
    case dbgwcr0El1 = 32775
    /// System registers for MRS
    case dbgbvr1El1 = 32780
    /// System registers for MRS
    case dbgbcr1El1 = 32781
    /// System registers for MRS
    case dbgwvr1El1 = 32782
    /// System registers for MRS
    case dbgwcr1El1 = 32783
    /// System registers for MRS
    case mdccintEl1 = 32784
    /// System registers for MRS
    case mdscrEl1 = 32786
    /// System registers for MRS
    case dbgbvr2El1 = 32788
    /// System registers for MRS
    case dbgbcr2El1 = 32789
    /// System registers for MRS
    case dbgwvr2El1 = 32790
    /// System registers for MRS
    case dbgwcr2El1 = 32791
    /// System registers for MRS
    case osdtrtxEl1 = 32794
    /// System registers for MRS
    case dbgbvr3El1 = 32796
    /// System registers for MRS
    case dbgbcr3El1 = 32797
    /// System registers for MRS
    case dbgwvr3El1 = 32798
    /// System registers for MRS
    case dbgwcr3El1 = 32799
    /// System registers for MRS
    case dbgbvr4El1 = 32804
    /// System registers for MRS
    case dbgbcr4El1 = 32805
    /// System registers for MRS
    case dbgwvr4El1 = 32806
    /// System registers for MRS
    case dbgwcr4El1 = 32807
    /// System registers for MRS
    case dbgbvr5El1 = 32812
    /// System registers for MRS
    case dbgbcr5El1 = 32813
    /// System registers for MRS
    case dbgwvr5El1 = 32814
    /// System registers for MRS
    case dbgwcr5El1 = 32815
    /// System registers for MRS
    case oseccrEl1 = 32818
    /// System registers for MRS
    case dbgbvr6El1 = 32820
    /// System registers for MRS
    case dbgbcr6El1 = 32821
    /// System registers for MRS
    case dbgwvr6El1 = 32822
    /// System registers for MRS
    case dbgwcr6El1 = 32823
    /// System registers for MRS
    case dbgbvr7El1 = 32828
    /// System registers for MRS
    case dbgbcr7El1 = 32829
    /// System registers for MRS
    case dbgwvr7El1 = 32830
    /// System registers for MRS
    case dbgwcr7El1 = 32831
    /// System registers for MRS
    case dbgbvr8El1 = 32836
    /// System registers for MRS
    case dbgbcr8El1 = 32837
    /// System registers for MRS
    case dbgwvr8El1 = 32838
    /// System registers for MRS
    case dbgwcr8El1 = 32839
    /// System registers for MRS
    case dbgbvr9El1 = 32844
    /// System registers for MRS
    case dbgbcr9El1 = 32845
    /// System registers for MRS
    case dbgwvr9El1 = 32846
    /// System registers for MRS
    case dbgwcr9El1 = 32847
    /// System registers for MRS
    case dbgbvr10El1 = 32852
    /// System registers for MRS
    case dbgbcr10El1 = 32853
    /// System registers for MRS
    case dbgwvr10El1 = 32854
    /// System registers for MRS
    case dbgwcr10El1 = 32855
    /// System registers for MRS
    case dbgbvr11El1 = 32860
    /// System registers for MRS
    case dbgbcr11El1 = 32861
    /// System registers for MRS
    case dbgwvr11El1 = 32862
    /// System registers for MRS
    case dbgwcr11El1 = 32863
    /// System registers for MRS
    case dbgbvr12El1 = 32868
    /// System registers for MRS
    case dbgbcr12El1 = 32869
    /// System registers for MRS
    case dbgwvr12El1 = 32870
    /// System registers for MRS
    case dbgwcr12El1 = 32871
    /// System registers for MRS
    case dbgbvr13El1 = 32876
    /// System registers for MRS
    case dbgbcr13El1 = 32877
    /// System registers for MRS
    case dbgwvr13El1 = 32878
    /// System registers for MRS
    case dbgwcr13El1 = 32879
    /// System registers for MRS
    case dbgbvr14El1 = 32884
    /// System registers for MRS
    case dbgbcr14El1 = 32885
    /// System registers for MRS
    case dbgwvr14El1 = 32886
    /// System registers for MRS
    case dbgwcr14El1 = 32887
    /// System registers for MRS
    case dbgbvr15El1 = 32892
    /// System registers for MRS
    case dbgbcr15El1 = 32893
    /// System registers for MRS
    case dbgwvr15El1 = 32894
    /// System registers for MRS
    case dbgwcr15El1 = 32895
    /// System registers for MRS
    case mdrarEl1 = 32896
    /// System registers for MRS
    case oslarEl1 = 32900
    /// System registers for MRS
    case oslsrEl1 = 32908
    /// System registers for MRS
    case osdlrEl1 = 32924
    /// System registers for MRS
    case dbgprcrEl1 = 32932
    /// System registers for MRS
    case dbgclaimsetEl1 = 33734
    /// System registers for MRS
    case dbgclaimclrEl1 = 33742
    /// System registers for MRS
    case dbgauthstatusEl1 = 33782
    /// System registers for MRS
    case trctraceidr = 34817
    /// System registers for MRS
    case trcvictlr = 34818
    /// System registers for MRS
    case trcseqevr0 = 34820
    /// System registers for MRS
    case trccntrldvr0 = 34821
    /// System registers for MRS
    case trcidr8 = 34822
    /// System registers for MRS
    case trcimspec0 = 34823
    /// System registers for MRS
    case trcprgctlr = 34824
    /// System registers for MRS
    case trcqctlr = 34825
    /// System registers for MRS
    case trcviiectlr = 34826
    /// System registers for MRS
    case trcseqevr1 = 34828
    /// System registers for MRS
    case trccntrldvr1 = 34829
    /// System registers for MRS
    case trcidr9 = 34830
    /// System registers for MRS
    case trcimspec1 = 34831
    /// System registers for MRS
    case trcprocselr = 34832
    /// System registers for MRS
    case trcvissctlr = 34834
    /// System registers for MRS
    case trcseqevr2 = 34836
    /// System registers for MRS
    case trccntrldvr2 = 34837
    /// System registers for MRS
    case trcidr10 = 34838
    /// System registers for MRS
    case trcimspec2 = 34839
    /// System registers for MRS
    case trcstatr = 34840
    /// System registers for MRS
    case trcvipcssctlr = 34842
    /// System registers for MRS
    case trccntrldvr3 = 34845
    /// System registers for MRS
    case trcidr11 = 34846
    /// System registers for MRS
    case trcimspec3 = 34847
    /// System registers for MRS
    case trcconfigr = 34848
    /// System registers for MRS
    case trccntctlr0 = 34853
    /// System registers for MRS
    case trcidr12 = 34854
    /// System registers for MRS
    case trcimspec4 = 34855
    /// System registers for MRS
    case trccntctlr1 = 34861
    /// System registers for MRS
    case trcidr13 = 34862
    /// System registers for MRS
    case trcimspec5 = 34863
    /// System registers for MRS
    case trcauxctlr = 34864
    /// System registers for MRS
    case trcseqrstevr = 34868
    /// System registers for MRS
    case trccntctlr2 = 34869
    /// System registers for MRS
    case trcimspec6 = 34871
    /// System registers for MRS
    case trcseqstr = 34876
    /// System registers for MRS
    case trccntctlr3 = 34877
    /// System registers for MRS
    case trcimspec7 = 34879
    /// System registers for MRS
    case trceventctl0r = 34880
    /// System registers for MRS
    case trcvdctlr = 34882
    /// System registers for MRS
    case trcextinselr = 34884
    /// System registers for MRS
    public static let trcextinselr0 = 34884
    /// System registers for MRS
    case trccntvr0 = 34885
    /// System registers for MRS
    case trcidr0 = 34887
    /// System registers for MRS
    case trceventctl1r = 34888
    /// System registers for MRS
    case trcvdsacctlr = 34890
    /// System registers for MRS
    case trcextinselr1 = 34892
    /// System registers for MRS
    case trccntvr1 = 34893
    /// System registers for MRS
    case trcidr1 = 34895
    /// System registers for MRS
    case trcrsr = 34896
    /// System registers for MRS
    case trcvdarcctlr = 34898
    /// System registers for MRS
    case trcextinselr2 = 34900
    /// System registers for MRS
    case trccntvr2 = 34901
    /// System registers for MRS
    case trcidr2 = 34903
    /// System registers for MRS
    case trcstallctlr = 34904
    /// System registers for MRS
    case trcextinselr3 = 34908
    /// System registers for MRS
    case trccntvr3 = 34909
    /// System registers for MRS
    case trcidr3 = 34911
    /// System registers for MRS
    case trctsctlr = 34912
    /// System registers for MRS
    case trcidr4 = 34919
    /// System registers for MRS
    case trcsyncpr = 34920
    /// System registers for MRS
    case trcidr5 = 34927
    /// System registers for MRS
    case trcccctlr = 34928
    /// System registers for MRS
    case trcidr6 = 34935
    /// System registers for MRS
    case trcbbctlr = 34936
    /// System registers for MRS
    case trcidr7 = 34943
    /// System registers for MRS
    case trcrsctlr16 = 34945
    /// System registers for MRS
    case trcssccr0 = 34946
    /// System registers for MRS
    case trcsspcicr0 = 34947
    /// System registers for MRS
    case trcoslar = 34948
    /// System registers for MRS
    case trcrsctlr17 = 34953
    /// System registers for MRS
    case trcssccr1 = 34954
    /// System registers for MRS
    case trcsspcicr1 = 34955
    /// System registers for MRS
    case trcoslsr = 34956
    /// System registers for MRS
    case trcrsctlr2 = 34960
    /// System registers for MRS
    case trcrsctlr18 = 34961
    /// System registers for MRS
    case trcssccr2 = 34962
    /// System registers for MRS
    case trcsspcicr2 = 34963
    /// System registers for MRS
    case trcrsctlr3 = 34968
    /// System registers for MRS
    case trcrsctlr19 = 34969
    /// System registers for MRS
    case trcssccr3 = 34970
    /// System registers for MRS
    case trcsspcicr3 = 34971
    /// System registers for MRS
    case trcrsctlr4 = 34976
    /// System registers for MRS
    case trcrsctlr20 = 34977
    /// System registers for MRS
    case trcssccr4 = 34978
    /// System registers for MRS
    case trcsspcicr4 = 34979
    /// System registers for MRS
    case trcpdcr = 34980
    /// System registers for MRS
    case trcrsctlr5 = 34984
    /// System registers for MRS
    case trcrsctlr21 = 34985
    /// System registers for MRS
    case trcssccr5 = 34986
    /// System registers for MRS
    case trcsspcicr5 = 34987
    /// System registers for MRS
    case trcpdsr = 34988
    /// System registers for MRS
    case trcrsctlr6 = 34992
    /// System registers for MRS
    case trcrsctlr22 = 34993
    /// System registers for MRS
    case trcssccr6 = 34994
    /// System registers for MRS
    case trcsspcicr6 = 34995
    /// System registers for MRS
    case trcrsctlr7 = 35000
    /// System registers for MRS
    case trcrsctlr23 = 35001
    /// System registers for MRS
    case trcssccr7 = 35002
    /// System registers for MRS
    case trcsspcicr7 = 35003
    /// System registers for MRS
    case trcrsctlr8 = 35008
    /// System registers for MRS
    case trcrsctlr24 = 35009
    /// System registers for MRS
    case trcsscsr0 = 35010
    /// System registers for MRS
    case trcrsctlr9 = 35016
    /// System registers for MRS
    case trcrsctlr25 = 35017
    /// System registers for MRS
    case trcsscsr1 = 35018
    /// System registers for MRS
    case trcrsctlr10 = 35024
    /// System registers for MRS
    case trcrsctlr26 = 35025
    /// System registers for MRS
    case trcsscsr2 = 35026
    /// System registers for MRS
    case trcrsctlr11 = 35032
    /// System registers for MRS
    case trcrsctlr27 = 35033
    /// System registers for MRS
    case trcsscsr3 = 35034
    /// System registers for MRS
    case trcrsctlr12 = 35040
    /// System registers for MRS
    case trcrsctlr28 = 35041
    /// System registers for MRS
    case trcsscsr4 = 35042
    /// System registers for MRS
    case trcrsctlr13 = 35048
    /// System registers for MRS
    case trcrsctlr29 = 35049
    /// System registers for MRS
    case trcsscsr5 = 35050
    /// System registers for MRS
    case trcrsctlr14 = 35056
    /// System registers for MRS
    case trcrsctlr30 = 35057
    /// System registers for MRS
    case trcsscsr6 = 35058
    /// System registers for MRS
    case trcrsctlr15 = 35064
    /// System registers for MRS
    case trcrsctlr31 = 35065
    /// System registers for MRS
    case trcsscsr7 = 35066
    /// System registers for MRS
    case trcacvr0 = 35072
    /// System registers for MRS
    case trcacvr8 = 35073
    /// System registers for MRS
    case trcacatr0 = 35074
    /// System registers for MRS
    case trcacatr8 = 35075
    /// System registers for MRS
    case trcdvcvr0 = 35076
    /// System registers for MRS
    case trcdvcvr4 = 35077
    /// System registers for MRS
    case trcdvcmr0 = 35078
    /// System registers for MRS
    case trcdvcmr4 = 35079
    /// System registers for MRS
    case trcacvr1 = 35088
    /// System registers for MRS
    case trcacvr9 = 35089
    /// System registers for MRS
    case trcacatr1 = 35090
    /// System registers for MRS
    case trcacatr9 = 35091
    /// System registers for MRS
    case trcacvr2 = 35104
    /// System registers for MRS
    case trcacvr10 = 35105
    /// System registers for MRS
    case trcacatr2 = 35106
    /// System registers for MRS
    case trcacatr10 = 35107
    /// System registers for MRS
    case trcdvcvr1 = 35108
    /// System registers for MRS
    case trcdvcvr5 = 35109
    /// System registers for MRS
    case trcdvcmr1 = 35110
    /// System registers for MRS
    case trcdvcmr5 = 35111
    /// System registers for MRS
    case trcacvr3 = 35120
    /// System registers for MRS
    case trcacvr11 = 35121
    /// System registers for MRS
    case trcacatr3 = 35122
    /// System registers for MRS
    case trcacatr11 = 35123
    /// System registers for MRS
    case trcacvr4 = 35136
    /// System registers for MRS
    case trcacvr12 = 35137
    /// System registers for MRS
    case trcacatr4 = 35138
    /// System registers for MRS
    case trcacatr12 = 35139
    /// System registers for MRS
    case trcdvcvr2 = 35140
    /// System registers for MRS
    case trcdvcvr6 = 35141
    /// System registers for MRS
    case trcdvcmr2 = 35142
    /// System registers for MRS
    case trcdvcmr6 = 35143
    /// System registers for MRS
    case trcacvr5 = 35152
    /// System registers for MRS
    case trcacvr13 = 35153
    /// System registers for MRS
    case trcacatr5 = 35154
    /// System registers for MRS
    case trcacatr13 = 35155
    /// System registers for MRS
    case trcacvr6 = 35168
    /// System registers for MRS
    case trcacvr14 = 35169
    /// System registers for MRS
    case trcacatr6 = 35170
    /// System registers for MRS
    case trcacatr14 = 35171
    /// System registers for MRS
    case trcdvcvr3 = 35172
    /// System registers for MRS
    case trcdvcvr7 = 35173
    /// System registers for MRS
    case trcdvcmr3 = 35174
    /// System registers for MRS
    case trcdvcmr7 = 35175
    /// System registers for MRS
    case trcacvr7 = 35184
    /// System registers for MRS
    case trcacvr15 = 35185
    /// System registers for MRS
    case trcacatr7 = 35186
    /// System registers for MRS
    case trcacatr15 = 35187
    /// System registers for MRS
    case trccidcvr0 = 35200
    /// System registers for MRS
    case trcvmidcvr0 = 35201
    /// System registers for MRS
    case trccidcctlr0 = 35202
    /// System registers for MRS
    case trccidcctlr1 = 35210
    /// System registers for MRS
    case trccidcvr1 = 35216
    /// System registers for MRS
    case trcvmidcvr1 = 35217
    /// System registers for MRS
    case trcvmidcctlr0 = 35218
    /// System registers for MRS
    case trcvmidcctlr1 = 35226
    /// System registers for MRS
    case trccidcvr2 = 35232
    /// System registers for MRS
    case trcvmidcvr2 = 35233
    /// System registers for MRS
    case trccidcvr3 = 35248
    /// System registers for MRS
    case trcvmidcvr3 = 35249
    /// System registers for MRS
    case trccidcvr4 = 35264
    /// System registers for MRS
    case trcvmidcvr4 = 35265
    /// System registers for MRS
    case trccidcvr5 = 35280
    /// System registers for MRS
    case trcvmidcvr5 = 35281
    /// System registers for MRS
    case trccidcvr6 = 35296
    /// System registers for MRS
    case trcvmidcvr6 = 35297
    /// System registers for MRS
    case trccidcvr7 = 35312
    /// System registers for MRS
    case trcvmidcvr7 = 35313
    /// System registers for MRS
    case trcitctrl = 35716
    /// System registers for MRS
    case trcdevid = 35735
    /// System registers for MRS
    case trcdevtype = 35743
    /// System registers for MRS
    case trcpidr4 = 35751
    /// System registers for MRS
    case trcpidr5 = 35759
    /// System registers for MRS
    case trcpidr6 = 35767
    /// System registers for MRS
    case trcpidr7 = 35775
    /// System registers for MRS
    case trcclaimset = 35782
    /// System registers for MRS
    case trcpidr0 = 35783
    /// System registers for MRS
    case trcclaimclr = 35790
    /// System registers for MRS
    case trcpidr1 = 35791
    /// System registers for MRS
    case trcdevaff0 = 35798
    /// System registers for MRS
    case trcpidr2 = 35799
    /// System registers for MRS
    case trcdevaff1 = 35806
    /// System registers for MRS
    case trcpidr3 = 35807
    /// System registers for MRS
    case trclar = 35814
    /// System registers for MRS
    case trccidr0 = 35815
    /// System registers for MRS
    case trclsr = 35822
    /// System registers for MRS
    case trccidr1 = 35823
    /// System registers for MRS
    case trcauthstatus = 35830
    /// System registers for MRS
    case trccidr2 = 35831
    /// System registers for MRS
    case trcdevarch = 35838
    /// System registers for MRS
    case trccidr3 = 35839
    /// System registers for MRS
    case brbinf0El1 = 35840
    /// System registers for MRS
    case brbsrc0El1 = 35841
    /// System registers for MRS
    case brbtgt0El1 = 35842
    /// System registers for MRS
    case brbinf16El1 = 35844
    /// System registers for MRS
    case brbsrc16El1 = 35845
    /// System registers for MRS
    case brbtgt16El1 = 35846
    /// System registers for MRS
    case brbinf1El1 = 35848
    /// System registers for MRS
    case brbsrc1El1 = 35849
    /// System registers for MRS
    case brbtgt1El1 = 35850
    /// System registers for MRS
    case brbinf17El1 = 35852
    /// System registers for MRS
    case brbsrc17El1 = 35853
    /// System registers for MRS
    case brbtgt17El1 = 35854
    /// System registers for MRS
    case brbinf2El1 = 35856
    /// System registers for MRS
    case brbsrc2El1 = 35857
    /// System registers for MRS
    case brbtgt2El1 = 35858
    /// System registers for MRS
    case brbinf18El1 = 35860
    /// System registers for MRS
    case brbsrc18El1 = 35861
    /// System registers for MRS
    case brbtgt18El1 = 35862
    /// System registers for MRS
    case brbinf3El1 = 35864
    /// System registers for MRS
    case brbsrc3El1 = 35865
    /// System registers for MRS
    case brbtgt3El1 = 35866
    /// System registers for MRS
    case brbinf19El1 = 35868
    /// System registers for MRS
    case brbsrc19El1 = 35869
    /// System registers for MRS
    case brbtgt19El1 = 35870
    /// System registers for MRS
    case brbinf4El1 = 35872
    /// System registers for MRS
    case brbsrc4El1 = 35873
    /// System registers for MRS
    case brbtgt4El1 = 35874
    /// System registers for MRS
    case brbinf20El1 = 35876
    /// System registers for MRS
    case brbsrc20El1 = 35877
    /// System registers for MRS
    case brbtgt20El1 = 35878
    /// System registers for MRS
    case brbinf5El1 = 35880
    /// System registers for MRS
    case brbsrc5El1 = 35881
    /// System registers for MRS
    case brbtgt5El1 = 35882
    /// System registers for MRS
    case brbinf21El1 = 35884
    /// System registers for MRS
    case brbsrc21El1 = 35885
    /// System registers for MRS
    case brbtgt21El1 = 35886
    /// System registers for MRS
    case brbinf6El1 = 35888
    /// System registers for MRS
    case brbsrc6El1 = 35889
    /// System registers for MRS
    case brbtgt6El1 = 35890
    /// System registers for MRS
    case brbinf22El1 = 35892
    /// System registers for MRS
    case brbsrc22El1 = 35893
    /// System registers for MRS
    case brbtgt22El1 = 35894
    /// System registers for MRS
    case brbinf7El1 = 35896
    /// System registers for MRS
    case brbsrc7El1 = 35897
    /// System registers for MRS
    case brbtgt7El1 = 35898
    /// System registers for MRS
    case brbinf23El1 = 35900
    /// System registers for MRS
    case brbsrc23El1 = 35901
    /// System registers for MRS
    case brbtgt23El1 = 35902
    /// System registers for MRS
    case brbinf8El1 = 35904
    /// System registers for MRS
    case brbsrc8El1 = 35905
    /// System registers for MRS
    case brbtgt8El1 = 35906
    /// System registers for MRS
    case brbinf24El1 = 35908
    /// System registers for MRS
    case brbsrc24El1 = 35909
    /// System registers for MRS
    case brbtgt24El1 = 35910
    /// System registers for MRS
    case brbinf9El1 = 35912
    /// System registers for MRS
    case brbsrc9El1 = 35913
    /// System registers for MRS
    case brbtgt9El1 = 35914
    /// System registers for MRS
    case brbinf25El1 = 35916
    /// System registers for MRS
    case brbsrc25El1 = 35917
    /// System registers for MRS
    case brbtgt25El1 = 35918
    /// System registers for MRS
    case brbinf10El1 = 35920
    /// System registers for MRS
    case brbsrc10El1 = 35921
    /// System registers for MRS
    case brbtgt10El1 = 35922
    /// System registers for MRS
    case brbinf26El1 = 35924
    /// System registers for MRS
    case brbsrc26El1 = 35925
    /// System registers for MRS
    case brbtgt26El1 = 35926
    /// System registers for MRS
    case brbinf11El1 = 35928
    /// System registers for MRS
    case brbsrc11El1 = 35929
    /// System registers for MRS
    case brbtgt11El1 = 35930
    /// System registers for MRS
    case brbinf27El1 = 35932
    /// System registers for MRS
    case brbsrc27El1 = 35933
    /// System registers for MRS
    case brbtgt27El1 = 35934
    /// System registers for MRS
    case brbinf12El1 = 35936
    /// System registers for MRS
    case brbsrc12El1 = 35937
    /// System registers for MRS
    case brbtgt12El1 = 35938
    /// System registers for MRS
    case brbinf28El1 = 35940
    /// System registers for MRS
    case brbsrc28El1 = 35941
    /// System registers for MRS
    case brbtgt28El1 = 35942
    /// System registers for MRS
    case brbinf13El1 = 35944
    /// System registers for MRS
    case brbsrc13El1 = 35945
    /// System registers for MRS
    case brbtgt13El1 = 35946
    /// System registers for MRS
    case brbinf29El1 = 35948
    /// System registers for MRS
    case brbsrc29El1 = 35949
    /// System registers for MRS
    case brbtgt29El1 = 35950
    /// System registers for MRS
    case brbinf14El1 = 35952
    /// System registers for MRS
    case brbsrc14El1 = 35953
    /// System registers for MRS
    case brbtgt14El1 = 35954
    /// System registers for MRS
    case brbinf30El1 = 35956
    /// System registers for MRS
    case brbsrc30El1 = 35957
    /// System registers for MRS
    case brbtgt30El1 = 35958
    /// System registers for MRS
    case brbinf15El1 = 35960
    /// System registers for MRS
    case brbsrc15El1 = 35961
    /// System registers for MRS
    case brbtgt15El1 = 35962
    /// System registers for MRS
    case brbinf31El1 = 35964
    /// System registers for MRS
    case brbsrc31El1 = 35965
    /// System registers for MRS
    case brbtgt31El1 = 35966
    /// System registers for MRS
    case brbcrEl1 = 35968
    /// System registers for MRS
    case brbfcrEl1 = 35969
    /// System registers for MRS
    case brbtsEl1 = 35970
    /// System registers for MRS
    case brbinfinjEl1 = 35976
    /// System registers for MRS
    case brbsrcinjEl1 = 35977
    /// System registers for MRS
    case brbtgtinjEl1 = 35978
    /// System registers for MRS
    case brbidr0El1 = 35984
    /// System registers for MRS
    case teecr32El1 = 36864
    /// System registers for MRS
    case teehbr32El1 = 36992
    /// System registers for MRS
    case mdccsrEl0 = 38920
    /// System registers for MRS
    case dbgdtrEl0 = 38944
    /// System registers for MRS
    case dbgdtrrxEl0 = 38952
    /// System registers for MRS
    public static let dbgdtrtxEl0 = 38952
    /// System registers for MRS
    case dbgvcr32El2 = 41016
    /// System registers for MRS
    case brbcrEl2 = 42112
    /// System registers for MRS
    case brbcrEl12 = 44160
    /// System registers for MRS
    case midrEl1 = 49152
    /// System registers for MRS
    case mpuirEl1 = 49156
    /// System registers for MRS
    case mpidrEl1 = 49157
    /// System registers for MRS
    case revidrEl1 = 49158
    /// System registers for MRS
    case idPfr0El1 = 49160
    /// System registers for MRS
    case idPfr1El1 = 49161
    /// System registers for MRS
    case idDfr0El1 = 49162
    /// System registers for MRS
    case idAfr0El1 = 49163
    /// System registers for MRS
    case idMmfr0El1 = 49164
    /// System registers for MRS
    case idMmfr1El1 = 49165
    /// System registers for MRS
    case idMmfr2El1 = 49166
    /// System registers for MRS
    case idMmfr3El1 = 49167
    /// System registers for MRS
    case idIsar0El1 = 49168
    /// System registers for MRS
    case idIsar1El1 = 49169
    /// System registers for MRS
    case idIsar2El1 = 49170
    /// System registers for MRS
    case idIsar3El1 = 49171
    /// System registers for MRS
    case idIsar4El1 = 49172
    /// System registers for MRS
    case idIsar5El1 = 49173
    /// System registers for MRS
    case idMmfr4El1 = 49174
    /// System registers for MRS
    case idIsar6El1 = 49175
    /// System registers for MRS
    case mvfr0El1 = 49176
    /// System registers for MRS
    case mvfr1El1 = 49177
    /// System registers for MRS
    case mvfr2El1 = 49178
    /// System registers for MRS
    case idPfr2El1 = 49180
    /// System registers for MRS
    case idMmfr5El1 = 49182
    /// System registers for MRS
    case idAa64Pfr0El1 = 49184
    /// System registers for MRS
    case idAa64Pfr1El1 = 49185
    /// System registers for MRS
    case idAa64Zfr0El1 = 49188
    /// System registers for MRS
    case idAa64Smfr0El1 = 49189
    /// System registers for MRS
    case idAa64Dfr0El1 = 49192
    /// System registers for MRS
    case idAa64Dfr1El1 = 49193
    /// System registers for MRS
    case idAa64Afr0El1 = 49196
    /// System registers for MRS
    case idAa64Afr1El1 = 49197
    /// System registers for MRS
    case idAa64Isar0El1 = 49200
    /// System registers for MRS
    case idAa64Isar1El1 = 49201
    /// System registers for MRS
    case idAa64Isar2El1 = 49202
    /// System registers for MRS
    case idAa64Mmfr0El1 = 49208
    /// System registers for MRS
    case idAa64Mmfr1El1 = 49209
    /// System registers for MRS
    case idAa64Mmfr2El1 = 49210
    /// System registers for MRS
    case sctlrEl1 = 49280
    /// System registers for MRS
    case actlrEl1 = 49281
    /// System registers for MRS
    case cpacrEl1 = 49282
    /// System registers for MRS
    case rgsrEl1 = 49285
    /// System registers for MRS
    case gcrEl1 = 49286
    /// System registers for MRS
    case zcrEl1 = 49296
    /// System registers for MRS
    case trfcrEl1 = 49297
    /// System registers for MRS
    case smpriEl1 = 49300
    /// System registers for MRS
    case smcrEl1 = 49302
    /// System registers for MRS
    case ttbr0El1 = 49408
    /// System registers for MRS
    case ttbr1El1 = 49409
    /// System registers for MRS
    case tcrEl1 = 49410
    /// System registers for MRS
    case apiakeyloEl1 = 49416
    /// System registers for MRS
    case apiakeyhiEl1 = 49417
    /// System registers for MRS
    case apibkeyloEl1 = 49418
    /// System registers for MRS
    case apibkeyhiEl1 = 49419
    /// System registers for MRS
    case apdakeyloEl1 = 49424
    /// System registers for MRS
    case apdakeyhiEl1 = 49425
    /// System registers for MRS
    case apdbkeyloEl1 = 49426
    /// System registers for MRS
    case apdbkeyhiEl1 = 49427
    /// System registers for MRS
    case apgakeyloEl1 = 49432
    /// System registers for MRS
    case apgakeyhiEl1 = 49433
    /// System registers for MRS
    case spsrEl1 = 49664
    /// System registers for MRS
    case elrEl1 = 49665
    /// System registers for MRS
    case spEl0 = 49672
    /// System registers for MRS
    case spsel = 49680
    /// System registers for MRS
    case currentel = 49682
    /// System registers for MRS
    case pan = 49683
    /// System registers for MRS
    case uao = 49684
    /// System registers for MRS
    case iccPmrEl1 = 49712
    /// System registers for MRS
    case afsr0El1 = 49800
    /// System registers for MRS
    case afsr1El1 = 49801
    /// System registers for MRS
    case esrEl1 = 49808
    /// System registers for MRS
    case erridrEl1 = 49816
    /// System registers for MRS
    case errselrEl1 = 49817
    /// System registers for MRS
    case erxfrEl1 = 49824
    /// System registers for MRS
    case erxctlrEl1 = 49825
    /// System registers for MRS
    case erxstatusEl1 = 49826
    /// System registers for MRS
    case erxaddrEl1 = 49827
    /// System registers for MRS
    case erxpfgfEl1 = 49828
    /// System registers for MRS
    case erxpfgctlEl1 = 49829
    /// System registers for MRS
    case erxpfgcdnEl1 = 49830
    /// System registers for MRS
    case erxmisc0El1 = 49832
    /// System registers for MRS
    case erxmisc1El1 = 49833
    /// System registers for MRS
    case erxmisc2El1 = 49834
    /// System registers for MRS
    case erxmisc3El1 = 49835
    /// System registers for MRS
    case tfsrEl1 = 49840
    /// System registers for MRS
    case tfsre0El1 = 49841
    /// System registers for MRS
    case farEl1 = 49920
    /// System registers for MRS
    case prenrEl1 = 49929
    /// System registers for MRS
    case prselrEl1 = 49937
    /// System registers for MRS
    case prbarEl1 = 49984
    /// System registers for MRS
    case prlarEl1 = 49985
    /// System registers for MRS
    case prbar1El1 = 49988
    /// System registers for MRS
    case prlar1El1 = 49989
    /// System registers for MRS
    case prbar2El1 = 49992
    /// System registers for MRS
    case prlar2El1 = 49993
    /// System registers for MRS
    case prbar3El1 = 49996
    /// System registers for MRS
    case prlar3El1 = 49997
    /// System registers for MRS
    case prbar4El1 = 50000
    /// System registers for MRS
    case prlar4El1 = 50001
    /// System registers for MRS
    case prbar5El1 = 50004
    /// System registers for MRS
    case prlar5El1 = 50005
    /// System registers for MRS
    case prbar6El1 = 50008
    /// System registers for MRS
    case prlar6El1 = 50009
    /// System registers for MRS
    case prbar7El1 = 50012
    /// System registers for MRS
    case prlar7El1 = 50013
    /// System registers for MRS
    case prbar8El1 = 50016
    /// System registers for MRS
    case prlar8El1 = 50017
    /// System registers for MRS
    case prbar9El1 = 50020
    /// System registers for MRS
    case prlar9El1 = 50021
    /// System registers for MRS
    case prbar10El1 = 50024
    /// System registers for MRS
    case prlar10El1 = 50025
    /// System registers for MRS
    case prbar11El1 = 50028
    /// System registers for MRS
    case prlar11El1 = 50029
    /// System registers for MRS
    case prbar12El1 = 50032
    /// System registers for MRS
    case prlar12El1 = 50033
    /// System registers for MRS
    case prbar13El1 = 50036
    /// System registers for MRS
    case prlar13El1 = 50037
    /// System registers for MRS
    case prbar14El1 = 50040
    /// System registers for MRS
    case prlar14El1 = 50041
    /// System registers for MRS
    case prbar15El1 = 50044
    /// System registers for MRS
    case prlar15El1 = 50045
    /// System registers for MRS
    case parEl1 = 50080
    /// System registers for MRS
    case pmscrEl1 = 50376
    /// System registers for MRS
    case pmsnevfrEl1 = 50377
    /// System registers for MRS
    case pmsicrEl1 = 50378
    /// System registers for MRS
    case pmsirrEl1 = 50379
    /// System registers for MRS
    case pmsfcrEl1 = 50380
    /// System registers for MRS
    case pmsevfrEl1 = 50381
    /// System registers for MRS
    case pmslatfrEl1 = 50382
    /// System registers for MRS
    case pmsidrEl1 = 50383
    /// System registers for MRS
    case pmblimitrEl1 = 50384
    /// System registers for MRS
    case pmbptrEl1 = 50385
    /// System registers for MRS
    case pmbsrEl1 = 50387
    /// System registers for MRS
    case pmbidrEl1 = 50391
    /// System registers for MRS
    case trblimitrEl1 = 50392
    /// System registers for MRS
    case trbptrEl1 = 50393
    /// System registers for MRS
    case trbbaserEl1 = 50394
    /// System registers for MRS
    case trbsrEl1 = 50395
    /// System registers for MRS
    case trbmarEl1 = 50396
    /// System registers for MRS
    case trbtrgEl1 = 50398
    /// System registers for MRS
    case trbidrEl1 = 50399
    /// System registers for MRS
    case pmintensetEl1 = 50417
    /// System registers for MRS
    case pmintenclrEl1 = 50418
    /// System registers for MRS
    case pmmirEl1 = 50422
    /// System registers for MRS
    case mairEl1 = 50448
    /// System registers for MRS
    case amairEl1 = 50456
    /// System registers for MRS
    case lorsaEl1 = 50464
    /// System registers for MRS
    case loreaEl1 = 50465
    /// System registers for MRS
    case lornEl1 = 50466
    /// System registers for MRS
    case lorcEl1 = 50467
    /// System registers for MRS
    case mpamidrEl1 = 50468
    /// System registers for MRS
    case loridEl1 = 50471
    /// System registers for MRS
    case mpam1El1 = 50472
    /// System registers for MRS
    case mpam0El1 = 50473
    /// System registers for MRS
    case mpamsmEl1 = 50475
    /// System registers for MRS
    case vbarEl1 = 50688
    /// System registers for MRS
    case rvbarEl1 = 50689
    /// System registers for MRS
    case rmrEl1 = 50690
    /// System registers for MRS
    case isrEl1 = 50696
    /// System registers for MRS
    case disrEl1 = 50697
    /// System registers for MRS
    case iccIar0El1 = 50752
    /// System registers for MRS
    case iccEoir0El1 = 50753
    /// System registers for MRS
    case iccHppir0El1 = 50754
    /// System registers for MRS
    case iccBpr0El1 = 50755
    /// System registers for MRS
    case iccAp0R0El1 = 50756
    /// System registers for MRS
    case iccAp0R1El1 = 50757
    /// System registers for MRS
    case iccAp0R2El1 = 50758
    /// System registers for MRS
    case iccAp0R3El1 = 50759
    /// System registers for MRS
    case iccAp1R0El1 = 50760
    /// System registers for MRS
    case iccAp1R1El1 = 50761
    /// System registers for MRS
    case iccAp1R2El1 = 50762
    /// System registers for MRS
    case iccAp1R3El1 = 50763
    /// System registers for MRS
    case iccDirEl1 = 50777
    /// System registers for MRS
    case iccRprEl1 = 50779
    /// System registers for MRS
    case iccSgi1REl1 = 50781
    /// System registers for MRS
    case iccAsgi1REl1 = 50782
    /// System registers for MRS
    case iccSgi0REl1 = 50783
    /// System registers for MRS
    case iccIar1El1 = 50784
    /// System registers for MRS
    case iccEoir1El1 = 50785
    /// System registers for MRS
    case iccHppir1El1 = 50786
    /// System registers for MRS
    case iccBpr1El1 = 50787
    /// System registers for MRS
    case iccCtlrEl1 = 50788
    /// System registers for MRS
    case iccSreEl1 = 50789
    /// System registers for MRS
    case iccIgrpen0El1 = 50790
    /// System registers for MRS
    case iccIgrpen1El1 = 50791
    /// System registers for MRS
    case contextidrEl1 = 50817
    /// System registers for MRS
    case tpidrEl1 = 50820
    /// System registers for MRS
    case accdataEl1 = 50821
    /// System registers for MRS
    case scxtnumEl1 = 50823
    /// System registers for MRS
    case cntkctlEl1 = 50952
    /// System registers for MRS
    case ccsidrEl1 = 51200
    /// System registers for MRS
    case clidrEl1 = 51201
    /// System registers for MRS
    case ccsidr2El1 = 51202
    /// System registers for MRS
    case gmidEl1 = 51204
    /// System registers for MRS
    case smidrEl1 = 51206
    /// System registers for MRS
    case aidrEl1 = 51207
    /// System registers for MRS
    case csselrEl1 = 53248
    /// System registers for MRS
    case ctrEl0 = 55297
    /// System registers for MRS
    case dczidEl0 = 55303
    /// System registers for MRS
    case rndr = 55584
    /// System registers for MRS
    case rndrrs = 55585
    /// System registers for MRS
    case nzcv = 55824
    /// System registers for MRS
    case daif = 55825
    /// System registers for MRS
    case svcr = 55826
    /// System registers for MRS
    case dit = 55829
    /// System registers for MRS
    case ssbs = 55830
    /// System registers for MRS
    case tco = 55831
    /// System registers for MRS
    case fpcr = 55840
    /// System registers for MRS
    case fpsr = 55841
    /// System registers for MRS
    case dspsrEl0 = 55848
    /// System registers for MRS
    case dlrEl0 = 55849
    /// System registers for MRS
    case pmcrEl0 = 56544
    /// System registers for MRS
    case pmcntensetEl0 = 56545
    /// System registers for MRS
    case pmcntenclrEl0 = 56546
    /// System registers for MRS
    case pmovsclrEl0 = 56547
    /// System registers for MRS
    case pmswincEl0 = 56548
    /// System registers for MRS
    case pmselrEl0 = 56549
    /// System registers for MRS
    case pmceid0El0 = 56550
    /// System registers for MRS
    case pmceid1El0 = 56551
    /// System registers for MRS
    case pmccntrEl0 = 56552
    /// System registers for MRS
    case pmxevtyperEl0 = 56553
    /// System registers for MRS
    case pmxevcntrEl0 = 56554
    /// System registers for MRS
    case pmuserenrEl0 = 56560
    /// System registers for MRS
    case pmovssetEl0 = 56563
    /// System registers for MRS
    case tpidrEl0 = 56962
    /// System registers for MRS
    case tpidrroEl0 = 56963
    /// System registers for MRS
    case tpidr2El0 = 56965
    /// System registers for MRS
    case scxtnumEl0 = 56967
    /// System registers for MRS
    case amcrEl0 = 56976
    /// System registers for MRS
    case amcfgrEl0 = 56977
    /// System registers for MRS
    case amcgcrEl0 = 56978
    /// System registers for MRS
    case amuserenrEl0 = 56979
    /// System registers for MRS
    case amcntenclr0El0 = 56980
    /// System registers for MRS
    case amcntenset0El0 = 56981
    /// System registers for MRS
    case amcntenclr1El0 = 56984
    /// System registers for MRS
    case amcntenset1El0 = 56985
    /// System registers for MRS
    case amevcntr00El0 = 56992
    /// System registers for MRS
    case amevcntr01El0 = 56993
    /// System registers for MRS
    case amevcntr02El0 = 56994
    /// System registers for MRS
    case amevcntr03El0 = 56995
    /// System registers for MRS
    case amevtyper00El0 = 57008
    /// System registers for MRS
    case amevtyper01El0 = 57009
    /// System registers for MRS
    case amevtyper02El0 = 57010
    /// System registers for MRS
    case amevtyper03El0 = 57011
    /// System registers for MRS
    case amevcntr10El0 = 57056
    /// System registers for MRS
    case amevcntr11El0 = 57057
    /// System registers for MRS
    case amevcntr12El0 = 57058
    /// System registers for MRS
    case amevcntr13El0 = 57059
    /// System registers for MRS
    case amevcntr14El0 = 57060
    /// System registers for MRS
    case amevcntr15El0 = 57061
    /// System registers for MRS
    case amevcntr16El0 = 57062
    /// System registers for MRS
    case amevcntr17El0 = 57063
    /// System registers for MRS
    case amevcntr18El0 = 57064
    /// System registers for MRS
    case amevcntr19El0 = 57065
    /// System registers for MRS
    case amevcntr110El0 = 57066
    /// System registers for MRS
    case amevcntr111El0 = 57067
    /// System registers for MRS
    case amevcntr112El0 = 57068
    /// System registers for MRS
    case amevcntr113El0 = 57069
    /// System registers for MRS
    case amevcntr114El0 = 57070
    /// System registers for MRS
    case amevcntr115El0 = 57071
    /// System registers for MRS
    case amevtyper10El0 = 57072
    /// System registers for MRS
    case amevtyper11El0 = 57073
    /// System registers for MRS
    case amevtyper12El0 = 57074
    /// System registers for MRS
    case amevtyper13El0 = 57075
    /// System registers for MRS
    case amevtyper14El0 = 57076
    /// System registers for MRS
    case amevtyper15El0 = 57077
    /// System registers for MRS
    case amevtyper16El0 = 57078
    /// System registers for MRS
    case amevtyper17El0 = 57079
    /// System registers for MRS
    case amevtyper18El0 = 57080
    /// System registers for MRS
    case amevtyper19El0 = 57081
    /// System registers for MRS
    case amevtyper110El0 = 57082
    /// System registers for MRS
    case amevtyper111El0 = 57083
    /// System registers for MRS
    case amevtyper112El0 = 57084
    /// System registers for MRS
    case amevtyper113El0 = 57085
    /// System registers for MRS
    case amevtyper114El0 = 57086
    /// System registers for MRS
    case amevtyper115El0 = 57087
    /// System registers for MRS
    case cntfrqEl0 = 57088
    /// System registers for MRS
    case cntpctEl0 = 57089
    /// System registers for MRS
    case cntvctEl0 = 57090
    /// System registers for MRS
    case cntpctssEl0 = 57093
    /// System registers for MRS
    case cntvctssEl0 = 57094
    /// System registers for MRS
    case cntpTvalEl0 = 57104
    /// System registers for MRS
    case cntpCtlEl0 = 57105
    /// System registers for MRS
    case cntpCvalEl0 = 57106
    /// System registers for MRS
    case cntvTvalEl0 = 57112
    /// System registers for MRS
    case cntvCtlEl0 = 57113
    /// System registers for MRS
    case cntvCvalEl0 = 57114
    /// System registers for MRS
    case pmevcntr0El0 = 57152
    /// System registers for MRS
    case pmevcntr1El0 = 57153
    /// System registers for MRS
    case pmevcntr2El0 = 57154
    /// System registers for MRS
    case pmevcntr3El0 = 57155
    /// System registers for MRS
    case pmevcntr4El0 = 57156
    /// System registers for MRS
    case pmevcntr5El0 = 57157
    /// System registers for MRS
    case pmevcntr6El0 = 57158
    /// System registers for MRS
    case pmevcntr7El0 = 57159
    /// System registers for MRS
    case pmevcntr8El0 = 57160
    /// System registers for MRS
    case pmevcntr9El0 = 57161
    /// System registers for MRS
    case pmevcntr10El0 = 57162
    /// System registers for MRS
    case pmevcntr11El0 = 57163
    /// System registers for MRS
    case pmevcntr12El0 = 57164
    /// System registers for MRS
    case pmevcntr13El0 = 57165
    /// System registers for MRS
    case pmevcntr14El0 = 57166
    /// System registers for MRS
    case pmevcntr15El0 = 57167
    /// System registers for MRS
    case pmevcntr16El0 = 57168
    /// System registers for MRS
    case pmevcntr17El0 = 57169
    /// System registers for MRS
    case pmevcntr18El0 = 57170
    /// System registers for MRS
    case pmevcntr19El0 = 57171
    /// System registers for MRS
    case pmevcntr20El0 = 57172
    /// System registers for MRS
    case pmevcntr21El0 = 57173
    /// System registers for MRS
    case pmevcntr22El0 = 57174
    /// System registers for MRS
    case pmevcntr23El0 = 57175
    /// System registers for MRS
    case pmevcntr24El0 = 57176
    /// System registers for MRS
    case pmevcntr25El0 = 57177
    /// System registers for MRS
    case pmevcntr26El0 = 57178
    /// System registers for MRS
    case pmevcntr27El0 = 57179
    /// System registers for MRS
    case pmevcntr28El0 = 57180
    /// System registers for MRS
    case pmevcntr29El0 = 57181
    /// System registers for MRS
    case pmevcntr30El0 = 57182
    /// System registers for MRS
    case pmevtyper0El0 = 57184
    /// System registers for MRS
    case pmevtyper1El0 = 57185
    /// System registers for MRS
    case pmevtyper2El0 = 57186
    /// System registers for MRS
    case pmevtyper3El0 = 57187
    /// System registers for MRS
    case pmevtyper4El0 = 57188
    /// System registers for MRS
    case pmevtyper5El0 = 57189
    /// System registers for MRS
    case pmevtyper6El0 = 57190
    /// System registers for MRS
    case pmevtyper7El0 = 57191
    /// System registers for MRS
    case pmevtyper8El0 = 57192
    /// System registers for MRS
    case pmevtyper9El0 = 57193
    /// System registers for MRS
    case pmevtyper10El0 = 57194
    /// System registers for MRS
    case pmevtyper11El0 = 57195
    /// System registers for MRS
    case pmevtyper12El0 = 57196
    /// System registers for MRS
    case pmevtyper13El0 = 57197
    /// System registers for MRS
    case pmevtyper14El0 = 57198
    /// System registers for MRS
    case pmevtyper15El0 = 57199
    /// System registers for MRS
    case pmevtyper16El0 = 57200
    /// System registers for MRS
    case pmevtyper17El0 = 57201
    /// System registers for MRS
    case pmevtyper18El0 = 57202
    /// System registers for MRS
    case pmevtyper19El0 = 57203
    /// System registers for MRS
    case pmevtyper20El0 = 57204
    /// System registers for MRS
    case pmevtyper21El0 = 57205
    /// System registers for MRS
    case pmevtyper22El0 = 57206
    /// System registers for MRS
    case pmevtyper23El0 = 57207
    /// System registers for MRS
    case pmevtyper24El0 = 57208
    /// System registers for MRS
    case pmevtyper25El0 = 57209
    /// System registers for MRS
    case pmevtyper26El0 = 57210
    /// System registers for MRS
    case pmevtyper27El0 = 57211
    /// System registers for MRS
    case pmevtyper28El0 = 57212
    /// System registers for MRS
    case pmevtyper29El0 = 57213
    /// System registers for MRS
    case pmevtyper30El0 = 57214
    /// System registers for MRS
    case pmccfiltrEl0 = 57215
    /// System registers for MRS
    case vpidrEl2 = 57344
    /// System registers for MRS
    case mpuirEl2 = 57348
    /// System registers for MRS
    case vmpidrEl2 = 57349
    /// System registers for MRS
    case sctlrEl2 = 57472
    /// System registers for MRS
    case actlrEl2 = 57473
    /// System registers for MRS
    case hcrEl2 = 57480
    /// System registers for MRS
    case mdcrEl2 = 57481
    /// System registers for MRS
    case cptrEl2 = 57482
    /// System registers for MRS
    case hstrEl2 = 57483
    /// System registers for MRS
    case hfgrtrEl2 = 57484
    /// System registers for MRS
    case hfgwtrEl2 = 57485
    /// System registers for MRS
    case hfgitrEl2 = 57486
    /// System registers for MRS
    case hacrEl2 = 57487
    /// System registers for MRS
    case zcrEl2 = 57488
    /// System registers for MRS
    case trfcrEl2 = 57489
    /// System registers for MRS
    case hcrxEl2 = 57490
    /// System registers for MRS
    case smprimapEl2 = 57493
    /// System registers for MRS
    case smcrEl2 = 57494
    /// System registers for MRS
    case sder32El2 = 57497
    /// System registers for MRS
    case ttbr0El2 = 57600
    /// System registers for MRS
    public static let vsctlrEl2 = 57600
    /// System registers for MRS
    case ttbr1El2 = 57601
    /// System registers for MRS
    case tcrEl2 = 57602
    /// System registers for MRS
    case vttbrEl2 = 57608
    /// System registers for MRS
    case vtcrEl2 = 57610
    /// System registers for MRS
    case vncrEl2 = 57616
    /// System registers for MRS
    case vsttbrEl2 = 57648
    /// System registers for MRS
    case vstcrEl2 = 57650
    /// System registers for MRS
    case dacr32El2 = 57728
    /// System registers for MRS
    case hdfgrtrEl2 = 57740
    /// System registers for MRS
    case hdfgwtrEl2 = 57741
    /// System registers for MRS
    case spsrEl2 = 57856
    /// System registers for MRS
    case elrEl2 = 57857
    /// System registers for MRS
    case spEl1 = 57864
    /// System registers for MRS
    case spsrIrq = 57880
    /// System registers for MRS
    case spsrAbt = 57881
    /// System registers for MRS
    case spsrUnd = 57882
    /// System registers for MRS
    case spsrFiq = 57883
    /// System registers for MRS
    case ifsr32El2 = 57985
    /// System registers for MRS
    case afsr0El2 = 57992
    /// System registers for MRS
    case afsr1El2 = 57993
    /// System registers for MRS
    case esrEl2 = 58000
    /// System registers for MRS
    case vsesrEl2 = 58003
    /// System registers for MRS
    case fpexc32El2 = 58008
    /// System registers for MRS
    case tfsrEl2 = 58032
    /// System registers for MRS
    case farEl2 = 58112
    /// System registers for MRS
    case hpfarEl2 = 58116
    /// System registers for MRS
    case prenrEl2 = 58121
    /// System registers for MRS
    case prselrEl2 = 58129
    /// System registers for MRS
    case prbarEl2 = 58176
    /// System registers for MRS
    case prlarEl2 = 58177
    /// System registers for MRS
    case prbar1El2 = 58180
    /// System registers for MRS
    case prlar1El2 = 58181
    /// System registers for MRS
    case prbar2El2 = 58184
    /// System registers for MRS
    case prlar2El2 = 58185
    /// System registers for MRS
    case prbar3El2 = 58188
    /// System registers for MRS
    case prlar3El2 = 58189
    /// System registers for MRS
    case prbar4El2 = 58192
    /// System registers for MRS
    case prlar4El2 = 58193
    /// System registers for MRS
    case prbar5El2 = 58196
    /// System registers for MRS
    case prlar5El2 = 58197
    /// System registers for MRS
    case prbar6El2 = 58200
    /// System registers for MRS
    case prlar6El2 = 58201
    /// System registers for MRS
    case prbar7El2 = 58204
    /// System registers for MRS
    case prlar7El2 = 58205
    /// System registers for MRS
    case prbar8El2 = 58208
    /// System registers for MRS
    case prlar8El2 = 58209
    /// System registers for MRS
    case prbar9El2 = 58212
    /// System registers for MRS
    case prlar9El2 = 58213
    /// System registers for MRS
    case prbar10El2 = 58216
    /// System registers for MRS
    case prlar10El2 = 58217
    /// System registers for MRS
    case prbar11El2 = 58220
    /// System registers for MRS
    case prlar11El2 = 58221
    /// System registers for MRS
    case prbar12El2 = 58224
    /// System registers for MRS
    case prlar12El2 = 58225
    /// System registers for MRS
    case prbar13El2 = 58228
    /// System registers for MRS
    case prlar13El2 = 58229
    /// System registers for MRS
    case prbar14El2 = 58232
    /// System registers for MRS
    case prlar14El2 = 58233
    /// System registers for MRS
    case prbar15El2 = 58236
    /// System registers for MRS
    case prlar15El2 = 58237
    /// System registers for MRS
    case pmscrEl2 = 58568
    /// System registers for MRS
    case mairEl2 = 58640
    /// System registers for MRS
    case amairEl2 = 58648
    /// System registers for MRS
    case mpamhcrEl2 = 58656
    /// System registers for MRS
    case mpamvpmvEl2 = 58657
    /// System registers for MRS
    case mpam2El2 = 58664
    /// System registers for MRS
    case mpamvpm0El2 = 58672
    /// System registers for MRS
    case mpamvpm1El2 = 58673
    /// System registers for MRS
    case mpamvpm2El2 = 58674
    /// System registers for MRS
    case mpamvpm3El2 = 58675
    /// System registers for MRS
    case mpamvpm4El2 = 58676
    /// System registers for MRS
    case mpamvpm5El2 = 58677
    /// System registers for MRS
    case mpamvpm6El2 = 58678
    /// System registers for MRS
    case mpamvpm7El2 = 58679
    /// System registers for MRS
    case vbarEl2 = 58880
    /// System registers for MRS
    case rvbarEl2 = 58881
    /// System registers for MRS
    case rmrEl2 = 58882
    /// System registers for MRS
    case vdisrEl2 = 58889
    /// System registers for MRS
    case ichAp0R0El2 = 58944
    /// System registers for MRS
    case ichAp0R1El2 = 58945
    /// System registers for MRS
    case ichAp0R2El2 = 58946
    /// System registers for MRS
    case ichAp0R3El2 = 58947
    /// System registers for MRS
    case ichAp1R0El2 = 58952
    /// System registers for MRS
    case ichAp1R1El2 = 58953
    /// System registers for MRS
    case ichAp1R2El2 = 58954
    /// System registers for MRS
    case ichAp1R3El2 = 58955
    /// System registers for MRS
    case iccSreEl2 = 58957
    /// System registers for MRS
    case ichHcrEl2 = 58968
    /// System registers for MRS
    case ichVtrEl2 = 58969
    /// System registers for MRS
    case ichMisrEl2 = 58970
    /// System registers for MRS
    case ichEisrEl2 = 58971
    /// System registers for MRS
    case ichElrsrEl2 = 58973
    /// System registers for MRS
    case ichVmcrEl2 = 58975
    /// System registers for MRS
    case ichLr0El2 = 58976
    /// System registers for MRS
    case ichLr1El2 = 58977
    /// System registers for MRS
    case ichLr2El2 = 58978
    /// System registers for MRS
    case ichLr3El2 = 58979
    /// System registers for MRS
    case ichLr4El2 = 58980
    /// System registers for MRS
    case ichLr5El2 = 58981
    /// System registers for MRS
    case ichLr6El2 = 58982
    /// System registers for MRS
    case ichLr7El2 = 58983
    /// System registers for MRS
    case ichLr8El2 = 58984
    /// System registers for MRS
    case ichLr9El2 = 58985
    /// System registers for MRS
    case ichLr10El2 = 58986
    /// System registers for MRS
    case ichLr11El2 = 58987
    /// System registers for MRS
    case ichLr12El2 = 58988
    /// System registers for MRS
    case ichLr13El2 = 58989
    /// System registers for MRS
    case ichLr14El2 = 58990
    /// System registers for MRS
    case ichLr15El2 = 58991
    /// System registers for MRS
    case contextidrEl2 = 59009
    /// System registers for MRS
    case tpidrEl2 = 59010
    /// System registers for MRS
    case scxtnumEl2 = 59015
    /// System registers for MRS
    case amevcntvoff00El2 = 59072
    /// System registers for MRS
    case amevcntvoff01El2 = 59073
    /// System registers for MRS
    case amevcntvoff02El2 = 59074
    /// System registers for MRS
    case amevcntvoff03El2 = 59075
    /// System registers for MRS
    case amevcntvoff04El2 = 59076
    /// System registers for MRS
    case amevcntvoff05El2 = 59077
    /// System registers for MRS
    case amevcntvoff06El2 = 59078
    /// System registers for MRS
    case amevcntvoff07El2 = 59079
    /// System registers for MRS
    case amevcntvoff08El2 = 59080
    /// System registers for MRS
    case amevcntvoff09El2 = 59081
    /// System registers for MRS
    case amevcntvoff010El2 = 59082
    /// System registers for MRS
    case amevcntvoff011El2 = 59083
    /// System registers for MRS
    case amevcntvoff012El2 = 59084
    /// System registers for MRS
    case amevcntvoff013El2 = 59085
    /// System registers for MRS
    case amevcntvoff014El2 = 59086
    /// System registers for MRS
    case amevcntvoff015El2 = 59087
    /// System registers for MRS
    case amevcntvoff10El2 = 59088
    /// System registers for MRS
    case amevcntvoff11El2 = 59089
    /// System registers for MRS
    case amevcntvoff12El2 = 59090
    /// System registers for MRS
    case amevcntvoff13El2 = 59091
    /// System registers for MRS
    case amevcntvoff14El2 = 59092
    /// System registers for MRS
    case amevcntvoff15El2 = 59093
    /// System registers for MRS
    case amevcntvoff16El2 = 59094
    /// System registers for MRS
    case amevcntvoff17El2 = 59095
    /// System registers for MRS
    case amevcntvoff18El2 = 59096
    /// System registers for MRS
    case amevcntvoff19El2 = 59097
    /// System registers for MRS
    case amevcntvoff110El2 = 59098
    /// System registers for MRS
    case amevcntvoff111El2 = 59099
    /// System registers for MRS
    case amevcntvoff112El2 = 59100
    /// System registers for MRS
    case amevcntvoff113El2 = 59101
    /// System registers for MRS
    case amevcntvoff114El2 = 59102
    /// System registers for MRS
    case amevcntvoff115El2 = 59103
    /// System registers for MRS
    case cntvoffEl2 = 59139
    /// System registers for MRS
    case cntscaleEl2 = 59140
    /// System registers for MRS
    case cntiscaleEl2 = 59141
    /// System registers for MRS
    case cntpoffEl2 = 59142
    /// System registers for MRS
    case cntvfrqEl2 = 59143
    /// System registers for MRS
    case cnthctlEl2 = 59144
    /// System registers for MRS
    case cnthpTvalEl2 = 59152
    /// System registers for MRS
    case cnthpCtlEl2 = 59153
    /// System registers for MRS
    case cnthpCvalEl2 = 59154
    /// System registers for MRS
    case cnthvTvalEl2 = 59160
    /// System registers for MRS
    case cnthvCtlEl2 = 59161
    /// System registers for MRS
    case cnthvCvalEl2 = 59162
    /// System registers for MRS
    case cnthvsTvalEl2 = 59168
    /// System registers for MRS
    case cnthvsCtlEl2 = 59169
    /// System registers for MRS
    case cnthvsCvalEl2 = 59170
    /// System registers for MRS
    case cnthpsTvalEl2 = 59176
    /// System registers for MRS
    case cnthpsCtlEl2 = 59177
    /// System registers for MRS
    case cnthpsCvalEl2 = 59178
    /// System registers for MRS
    case sctlrEl12 = 59520
    /// System registers for MRS
    case cpacrEl12 = 59522
    /// System registers for MRS
    case zcrEl12 = 59536
    /// System registers for MRS
    case trfcrEl12 = 59537
    /// System registers for MRS
    case smcrEl12 = 59542
    /// System registers for MRS
    case ttbr0El12 = 59648
    /// System registers for MRS
    case ttbr1El12 = 59649
    /// System registers for MRS
    case tcrEl12 = 59650
    /// System registers for MRS
    case spsrEl12 = 59904
    /// System registers for MRS
    case elrEl12 = 59905
    /// System registers for MRS
    case afsr0El12 = 60040
    /// System registers for MRS
    case afsr1El12 = 60041
    /// System registers for MRS
    case esrEl12 = 60048
    /// System registers for MRS
    case tfsrEl12 = 60080
    /// System registers for MRS
    case farEl12 = 60160
    /// System registers for MRS
    case pmscrEl12 = 60616
    /// System registers for MRS
    case mairEl12 = 60688
    /// System registers for MRS
    case amairEl12 = 60696
    /// System registers for MRS
    case mpam1El12 = 60712
    /// System registers for MRS
    case vbarEl12 = 60928
    /// System registers for MRS
    case contextidrEl12 = 61057
    /// System registers for MRS
    case scxtnumEl12 = 61063
    /// System registers for MRS
    case cntkctlEl12 = 61192
    /// System registers for MRS
    case cntpTvalEl02 = 61200
    /// System registers for MRS
    case cntpCtlEl02 = 61201
    /// System registers for MRS
    case cntpCvalEl02 = 61202
    /// System registers for MRS
    case cntvTvalEl02 = 61208
    /// System registers for MRS
    case cntvCtlEl02 = 61209
    /// System registers for MRS
    case cntvCvalEl02 = 61210
    /// System registers for MRS
    case sctlrEl3 = 61568
    /// System registers for MRS
    case actlrEl3 = 61569
    /// System registers for MRS
    case scrEl3 = 61576
    /// System registers for MRS
    case sder32El3 = 61577
    /// System registers for MRS
    case cptrEl3 = 61578
    /// System registers for MRS
    case zcrEl3 = 61584
    /// System registers for MRS
    case smcrEl3 = 61590
    /// System registers for MRS
    case mdcrEl3 = 61593
    /// System registers for MRS
    case ttbr0El3 = 61696
    /// System registers for MRS
    case tcrEl3 = 61698
    /// System registers for MRS
    case gptbrEl3 = 61708
    /// System registers for MRS
    case gpccrEl3 = 61710
    /// System registers for MRS
    case spsrEl3 = 61952
    /// System registers for MRS
    case elrEl3 = 61953
    /// System registers for MRS
    case spEl2 = 61960
    /// System registers for MRS
    case afsr0El3 = 62088
    /// System registers for MRS
    case afsr1El3 = 62089
    /// System registers for MRS
    case esrEl3 = 62096
    /// System registers for MRS
    case tfsrEl3 = 62128
    /// System registers for MRS
    case farEl3 = 62208
    /// System registers for MRS
    case mfarEl3 = 62213
    /// System registers for MRS
    case mairEl3 = 62736
    /// System registers for MRS
    case amairEl3 = 62744
    /// System registers for MRS
    case mpam3El3 = 62760
    /// System registers for MRS
    case vbarEl3 = 62976
    /// System registers for MRS
    case rvbarEl3 = 62977
    /// System registers for MRS
    case rmrEl3 = 62978
    /// System registers for MRS
    case iccCtlrEl3 = 63076
    /// System registers for MRS
    case iccSreEl3 = 63077
    /// System registers for MRS
    case iccIgrpen1El3 = 63079
    /// System registers for MRS
    case tpidrEl3 = 63106
    /// System registers for MRS
    case scxtnumEl3 = 63111
    /// System registers for MRS
    case cntpsTvalEl1 = 65296
    /// System registers for MRS
    case cntpsCtlEl1 = 65297
    /// System registers for MRS
    case cntpsCvalEl1 = 65298
    /// System registers for MRS
    case cpmIoaccCtlEl3 = 65424
}

/// SYS operands (IC/DC/AC/TLBI)
public enum Arm64Tlbi: UInt32 {
    /// TLBI operations
    case alle1 = 1
    /// TLBI operations
    case alle1is = 2
    /// TLBI operations
    case alle1isnxs = 3
    /// TLBI operations
    case alle1nxs = 4
    /// TLBI operations
    case alle1os = 5
    /// TLBI operations
    case alle1osnxs = 6
    /// TLBI operations
    case alle2 = 7
    /// TLBI operations
    case alle2is = 8
    /// TLBI operations
    case alle2isnxs = 9
    /// TLBI operations
    case alle2nxs = 10
    /// TLBI operations
    case alle2os = 11
    /// TLBI operations
    case alle2osnxs = 12
    /// TLBI operations
    case alle3 = 13
    /// TLBI operations
    case alle3is = 14
    /// TLBI operations
    case alle3isnxs = 15
    /// TLBI operations
    case alle3nxs = 16
    /// TLBI operations
    case alle3os = 17
    /// TLBI operations
    case alle3osnxs = 18
    /// TLBI operations
    case aside1 = 19
    /// TLBI operations
    case aside1is = 20
    /// TLBI operations
    case aside1isnxs = 21
    /// TLBI operations
    case aside1nxs = 22
    /// TLBI operations
    case aside1os = 23
    /// TLBI operations
    case aside1osnxs = 24
    /// TLBI operations
    case ipas2e1 = 25
    /// TLBI operations
    case ipas2e1is = 26
    /// TLBI operations
    case ipas2e1isnxs = 27
    /// TLBI operations
    case ipas2e1nxs = 28
    /// TLBI operations
    case ipas2e1os = 29
    /// TLBI operations
    case ipas2e1osnxs = 30
    /// TLBI operations
    case ipas2le1 = 31
    /// TLBI operations
    case ipas2le1is = 32
    /// TLBI operations
    case ipas2le1isnxs = 33
    /// TLBI operations
    case ipas2le1nxs = 34
    /// TLBI operations
    case ipas2le1os = 35
    /// TLBI operations
    case ipas2le1osnxs = 36
    /// TLBI operations
    case paall = 37
    /// TLBI operations
    case paallnxs = 38
    /// TLBI operations
    case paallos = 39
    /// TLBI operations
    case paallosnxs = 40
    /// TLBI operations
    case ripas2e1 = 41
    /// TLBI operations
    case ripas2e1is = 42
    /// TLBI operations
    case ripas2e1isnxs = 43
    /// TLBI operations
    case ripas2e1nxs = 44
    /// TLBI operations
    case ripas2e1os = 45
    /// TLBI operations
    case ripas2e1osnxs = 46
    /// TLBI operations
    case ripas2le1 = 47
    /// TLBI operations
    case ripas2le1is = 48
    /// TLBI operations
    case ripas2le1isnxs = 49
    /// TLBI operations
    case ripas2le1nxs = 50
    /// TLBI operations
    case ripas2le1os = 51
    /// TLBI operations
    case ripas2le1osnxs = 52
    /// TLBI operations
    case rpalos = 53
    /// TLBI operations
    case rpalosnxs = 54
    /// TLBI operations
    case rpaos = 55
    /// TLBI operations
    case rpaosnxs = 56
    /// TLBI operations
    case rvaae1 = 57
    /// TLBI operations
    case rvaae1is = 58
    /// TLBI operations
    case rvaae1isnxs = 59
    /// TLBI operations
    case rvaae1nxs = 60
    /// TLBI operations
    case rvaae1os = 61
    /// TLBI operations
    case rvaae1osnxs = 62
    /// TLBI operations
    case rvaale1 = 63
    /// TLBI operations
    case rvaale1is = 64
    /// TLBI operations
    case rvaale1isnxs = 65
    /// TLBI operations
    case rvaale1nxs = 66
    /// TLBI operations
    case rvaale1os = 67
    /// TLBI operations
    case rvaale1osnxs = 68
    /// TLBI operations
    case rvae1 = 69
    /// TLBI operations
    case rvae1is = 70
    /// TLBI operations
    case rvae1isnxs = 71
    /// TLBI operations
    case rvae1nxs = 72
    /// TLBI operations
    case rvae1os = 73
    /// TLBI operations
    case rvae1osnxs = 74
    /// TLBI operations
    case rvae2 = 75
    /// TLBI operations
    case rvae2is = 76
    /// TLBI operations
    case rvae2isnxs = 77
    /// TLBI operations
    case rvae2nxs = 78
    /// TLBI operations
    case rvae2os = 79
    /// TLBI operations
    case rvae2osnxs = 80
    /// TLBI operations
    case rvae3 = 81
    /// TLBI operations
    case rvae3is = 82
    /// TLBI operations
    case rvae3isnxs = 83
    /// TLBI operations
    case rvae3nxs = 84
    /// TLBI operations
    case rvae3os = 85
    /// TLBI operations
    case rvae3osnxs = 86
    /// TLBI operations
    case rvale1 = 87
    /// TLBI operations
    case rvale1is = 88
    /// TLBI operations
    case rvale1isnxs = 89
    /// TLBI operations
    case rvale1nxs = 90
    /// TLBI operations
    case rvale1os = 91
    /// TLBI operations
    case rvale1osnxs = 92
    /// TLBI operations
    case rvale2 = 93
    /// TLBI operations
    case rvale2is = 94
    /// TLBI operations
    case rvale2isnxs = 95
    /// TLBI operations
    case rvale2nxs = 96
    /// TLBI operations
    case rvale2os = 97
    /// TLBI operations
    case rvale2osnxs = 98
    /// TLBI operations
    case rvale3 = 99
    /// TLBI operations
    case rvale3is = 100
    /// TLBI operations
    case rvale3isnxs = 101
    /// TLBI operations
    case rvale3nxs = 102
    /// TLBI operations
    case rvale3os = 103
    /// TLBI operations
    case rvale3osnxs = 104
    /// TLBI operations
    case vaae1 = 105
    /// TLBI operations
    case vaae1is = 106
    /// TLBI operations
    case vaae1isnxs = 107
    /// TLBI operations
    case vaae1nxs = 108
    /// TLBI operations
    case vaae1os = 109
    /// TLBI operations
    case vaae1osnxs = 110
    /// TLBI operations
    case vaale1 = 111
    /// TLBI operations
    case vaale1is = 112
    /// TLBI operations
    case vaale1isnxs = 113
    /// TLBI operations
    case vaale1nxs = 114
    /// TLBI operations
    case vaale1os = 115
    /// TLBI operations
    case vaale1osnxs = 116
    /// TLBI operations
    case vae1 = 117
    /// TLBI operations
    case vae1is = 118
    /// TLBI operations
    case vae1isnxs = 119
    /// TLBI operations
    case vae1nxs = 120
    /// TLBI operations
    case vae1os = 121
    /// TLBI operations
    case vae1osnxs = 122
    /// TLBI operations
    case vae2 = 123
    /// TLBI operations
    case vae2is = 124
    /// TLBI operations
    case vae2isnxs = 125
    /// TLBI operations
    case vae2nxs = 126
    /// TLBI operations
    case vae2os = 127
    /// TLBI operations
    case vae2osnxs = 128
    /// TLBI operations
    case vae3 = 129
    /// TLBI operations
    case vae3is = 130
    /// TLBI operations
    case vae3isnxs = 131
    /// TLBI operations
    case vae3nxs = 132
    /// TLBI operations
    case vae3os = 133
    /// TLBI operations
    case vae3osnxs = 134
    /// TLBI operations
    case vale1 = 135
    /// TLBI operations
    case vale1is = 136
    /// TLBI operations
    case vale1isnxs = 137
    /// TLBI operations
    case vale1nxs = 138
    /// TLBI operations
    case vale1os = 139
    /// TLBI operations
    case vale1osnxs = 140
    /// TLBI operations
    case vale2 = 141
    /// TLBI operations
    case vale2is = 142
    /// TLBI operations
    case vale2isnxs = 143
    /// TLBI operations
    case vale2nxs = 144
    /// TLBI operations
    case vale2os = 145
    /// TLBI operations
    case vale2osnxs = 146
    /// TLBI operations
    case vale3 = 147
    /// TLBI operations
    case vale3is = 148
    /// TLBI operations
    case vale3isnxs = 149
    /// TLBI operations
    case vale3nxs = 150
    /// TLBI operations
    case vale3os = 151
    /// TLBI operations
    case vale3osnxs = 152
    /// TLBI operations
    case vmalle1 = 153
    /// TLBI operations
    case vmalle1is = 154
    /// TLBI operations
    case vmalle1isnxs = 155
    /// TLBI operations
    case vmalle1nxs = 156
    /// TLBI operations
    case vmalle1os = 157
    /// TLBI operations
    case vmalle1osnxs = 158
    /// TLBI operations
    case vmalls12e1 = 159
    /// TLBI operations
    case vmalls12e1is = 160
    /// TLBI operations
    case vmalls12e1isnxs = 161
    /// TLBI operations
    case vmalls12e1nxs = 162
    /// TLBI operations
    case vmalls12e1os = 163
    /// TLBI operations
    case vmalls12e1osnxs = 164
}

/// Vector arrangement specifier (for FloatingPoint/Advanced SIMD insn)
public enum Arm64Vas: UInt32 {
    case invalid = 0
    case _16b = 1
    case _8b = 2
    case _4b = 3
    case _1b = 4
    case _8h = 5
    case _4h = 6
    case _2h = 7
    case _1h = 8
    case _4s = 9
    case _2s = 10
    case _1s = 11
    case _2d = 12
    case _1d = 13
    case _1q = 14
}
