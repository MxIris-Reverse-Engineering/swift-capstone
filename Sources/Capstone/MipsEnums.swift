// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Mips)

/// Group of MIPS instructions
public enum MipsGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    /// = CS_GRP_CALL
    case call = 2
    /// = CS_GRP_RET
    case ret = 3
    /// = CS_GRP_INT
    case int = 4
    /// = CS_GRP_IRET
    case iret = 5
    /// = CS_GRP_PRIVILEGE
    case privilege = 6
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// Architecture-specific groups
    case bitcount = 128
    /// Architecture-specific groups
    case dsp = 129
    /// Architecture-specific groups
    case dspr2 = 130
    /// Architecture-specific groups
    case fpidx = 131
    /// Architecture-specific groups
    case msa = 132
    /// Architecture-specific groups
    case mips32r2 = 133
    /// Architecture-specific groups
    case mips64 = 134
    /// Architecture-specific groups
    case mips64r2 = 135
    /// Architecture-specific groups
    case seinreg = 136
    /// Architecture-specific groups
    case stdenc = 137
    /// Architecture-specific groups
    case swap = 138
    /// Architecture-specific groups
    case micromips = 139
    /// Architecture-specific groups
    case mips16mode = 140
    /// Architecture-specific groups
    case fp64bit = 141
    /// Architecture-specific groups
    case nonansfpmath = 142
    /// Architecture-specific groups
    case notfp64bit = 143
    /// Architecture-specific groups
    case notinmicromips = 144
    /// Architecture-specific groups
    case notnacl = 145
    /// Architecture-specific groups
    case notmips32r6 = 146
    /// Architecture-specific groups
    case notmips64r6 = 147
    /// Architecture-specific groups
    case cnmips = 148
    /// Architecture-specific groups
    case mips32 = 149
    /// Architecture-specific groups
    case mips32r6 = 150
    /// Architecture-specific groups
    case mips64r6 = 151
    /// Architecture-specific groups
    case mips2 = 152
    /// Architecture-specific groups
    case mips3 = 153
    /// Architecture-specific groups
    case mips332 = 154
    /// Architecture-specific groups
    case mips332R2 = 155
    /// Architecture-specific groups
    case mips432 = 156
    /// Architecture-specific groups
    case mips432R2 = 157
    /// Architecture-specific groups
    case mips532R2 = 158
    /// Architecture-specific groups
    case gp32bit = 159
    /// Architecture-specific groups
    case gp64bit = 160
    /// Architecture-specific groups
    case ending = 161
}

/// MIPS instruction
public enum MipsIns: UInt32 {
    case invalid = 0
    case absqS = 1
    case add = 2
    case addiupc = 3
    case addiur1sp = 4
    case addiur2 = 5
    case addius5 = 6
    case addiusp = 7
    case addqh = 8
    case addqhR = 9
    case addq = 10
    case addqS = 11
    case addsc = 12
    case addsA = 13
    case addsS = 14
    case addsU = 15
    case addu16 = 16
    case adduh = 17
    case adduhR = 18
    case addu = 19
    case adduS = 20
    case addvi = 21
    case addv = 22
    case addwc = 23
    case addA = 24
    case addi = 25
    case addiu = 26
    case align = 27
    case aluipc = 28
    case and = 29
    case and16 = 30
    case andi16 = 31
    case andi = 32
    case append = 33
    case asubS = 34
    case asubU = 35
    case aui = 36
    case auipc = 37
    case averS = 38
    case averU = 39
    case aveS = 40
    case aveU = 41
    case b16 = 42
    case baddu = 43
    case bal = 44
    case balc = 45
    case balign = 46
    case bbit0 = 47
    case bbit032 = 48
    case bbit1 = 49
    case bbit132 = 50
    case bc = 51
    case bc0f = 52
    case bc0fl = 53
    case bc0t = 54
    case bc0tl = 55
    case bc1eqz = 56
    case bc1f = 57
    case bc1fl = 58
    case bc1nez = 59
    case bc1t = 60
    case bc1tl = 61
    case bc2eqz = 62
    case bc2f = 63
    case bc2fl = 64
    case bc2nez = 65
    case bc2t = 66
    case bc2tl = 67
    case bc3f = 68
    case bc3fl = 69
    case bc3t = 70
    case bc3tl = 71
    case bclri = 72
    case bclr = 73
    case beq = 74
    case beqc = 75
    case beql = 76
    case beqz16 = 77
    case beqzalc = 78
    case beqzc = 79
    case bgec = 80
    case bgeuc = 81
    case bgez = 82
    case bgezal = 83
    case bgezalc = 84
    case bgezall = 85
    case bgezals = 86
    case bgezc = 87
    case bgezl = 88
    case bgtz = 89
    case bgtzalc = 90
    case bgtzc = 91
    case bgtzl = 92
    case binsli = 93
    case binsl = 94
    case binsri = 95
    case binsr = 96
    case bitrev = 97
    case bitswap = 98
    case blez = 99
    case blezalc = 100
    case blezc = 101
    case blezl = 102
    case bltc = 103
    case bltuc = 104
    case bltz = 105
    case bltzal = 106
    case bltzalc = 107
    case bltzall = 108
    case bltzals = 109
    case bltzc = 110
    case bltzl = 111
    case bmnzi = 112
    case bmnz = 113
    case bmzi = 114
    case bmz = 115
    case bne = 116
    case bnec = 117
    case bnegi = 118
    case bneg = 119
    case bnel = 120
    case bnez16 = 121
    case bnezalc = 122
    case bnezc = 123
    case bnvc = 124
    case bnz = 125
    case bovc = 126
    case bposge32 = 127
    case `break` = 128
    case break16 = 129
    case bseli = 130
    case bsel = 131
    case bseti = 132
    case bset = 133
    case bz = 134
    case beqz = 135
    case b = 136
    case bnez = 137
    case bteqz = 138
    case btnez = 139
    case cache = 140
    case ceil = 141
    case ceqi = 142
    case ceq = 143
    case cfc1 = 144
    case cfcmsa = 145
    case cins = 146
    case cins32 = 147
    case `class` = 148
    case cleiS = 149
    case cleiU = 150
    case cleS = 151
    case cleU = 152
    case clo = 153
    case cltiS = 154
    case cltiU = 155
    case cltS = 156
    case cltU = 157
    case clz = 158
    case cmpgdu = 159
    case cmpgu = 160
    case cmpu = 161
    case cmp = 162
    case copyS = 163
    case copyU = 164
    case ctc1 = 165
    case ctcmsa = 166
    case cvt = 167
    case c = 168
    case cmpi = 169
    case dadd = 170
    case daddi = 171
    case daddiu = 172
    case daddu = 173
    case dahi = 174
    case dalign = 175
    case dati = 176
    case daui = 177
    case dbitswap = 178
    case dclo = 179
    case dclz = 180
    case ddiv = 181
    case ddivu = 182
    case deret = 183
    case dext = 184
    case dextm = 185
    case dextu = 186
    case di = 187
    case dins = 188
    case dinsm = 189
    case dinsu = 190
    case div = 191
    case divu = 192
    case divS = 193
    case divU = 194
    case dlsa = 195
    case dmfc0 = 196
    case dmfc1 = 197
    case dmfc2 = 198
    case dmod = 199
    case dmodu = 200
    case dmtc0 = 201
    case dmtc1 = 202
    case dmtc2 = 203
    case dmuh = 204
    case dmuhu = 205
    case dmul = 206
    case dmult = 207
    case dmultu = 208
    case dmulu = 209
    case dotpS = 210
    case dotpU = 211
    case dpaddS = 212
    case dpaddU = 213
    case dpaqxSa = 214
    case dpaqxS = 215
    case dpaqSa = 216
    case dpaqS = 217
    case dpau = 218
    case dpax = 219
    case dpa = 220
    case dpop = 221
    case dpsqxSa = 222
    case dpsqxS = 223
    case dpsqSa = 224
    case dpsqS = 225
    case dpsubS = 226
    case dpsubU = 227
    case dpsu = 228
    case dpsx = 229
    case dps = 230
    case drotr = 231
    case drotr32 = 232
    case drotrv = 233
    case dsbh = 234
    case dshd = 235
    case dsll = 236
    case dsll32 = 237
    case dsllv = 238
    case dsra = 239
    case dsra32 = 240
    case dsrav = 241
    case dsrl = 242
    case dsrl32 = 243
    case dsrlv = 244
    case dsub = 245
    case dsubu = 246
    case ehb = 247
    case ei = 248
    case eret = 249
    case ext = 250
    case extp = 251
    case extpdp = 252
    case extpdpv = 253
    case extpv = 254
    case extrvRs = 255
    case extrvR = 256
    case extrvS = 257
    case extrv = 258
    case extrRs = 259
    case extrR = 260
    case extrS = 261
    case extr = 262
    case exts = 263
    case exts32 = 264
    case abs = 265
    case fadd = 266
    case fcaf = 267
    case fceq = 268
    case fclass = 269
    case fcle = 270
    case fclt = 271
    case fcne = 272
    case fcor = 273
    case fcueq = 274
    case fcule = 275
    case fcult = 276
    case fcune = 277
    case fcun = 278
    case fdiv = 279
    case fexdo = 280
    case fexp2 = 281
    case fexupl = 282
    case fexupr = 283
    case ffintS = 284
    case ffintU = 285
    case ffql = 286
    case ffqr = 287
    case fill = 288
    case flog2 = 289
    case floor = 290
    case fmadd = 291
    case fmaxA = 292
    case fmax = 293
    case fminA = 294
    case fmin = 295
    case mov = 296
    case fmsub = 297
    case fmul = 298
    case mul = 299
    case neg = 300
    case frcp = 301
    case frint = 302
    case frsqrt = 303
    case fsaf = 304
    case fseq = 305
    case fsle = 306
    case fslt = 307
    case fsne = 308
    case fsor = 309
    case fsqrt = 310
    case sqrt = 311
    case fsub = 312
    case sub = 313
    case fsueq = 314
    case fsule = 315
    case fsult = 316
    case fsune = 317
    case fsun = 318
    case ftintS = 319
    case ftintU = 320
    case ftq = 321
    case ftruncS = 322
    case ftruncU = 323
    case haddS = 324
    case haddU = 325
    case hsubS = 326
    case hsubU = 327
    case ilvev = 328
    case ilvl = 329
    case ilvod = 330
    case ilvr = 331
    case ins = 332
    case insert = 333
    case insv = 334
    case insve = 335
    case j = 336
    case jal = 337
    case jalr = 338
    case jalrs16 = 339
    case jalrs = 340
    case jals = 341
    case jalx = 342
    case jialc = 343
    case jic = 344
    case jr = 345
    case jr16 = 346
    case jraddiusp = 347
    case jrc = 348
    case jalrc = 349
    case lb = 350
    case lbu16 = 351
    case lbux = 352
    case lbu = 353
    case ld = 354
    case ldc1 = 355
    case ldc2 = 356
    case ldc3 = 357
    case ldi = 358
    case ldl = 359
    case ldpc = 360
    case ldr = 361
    case ldxc1 = 362
    case lh = 363
    case lhu16 = 364
    case lhx = 365
    case lhu = 366
    case li16 = 367
    case ll = 368
    case lld = 369
    case lsa = 370
    case luxc1 = 371
    case lui = 372
    case lw = 373
    case lw16 = 374
    case lwc1 = 375
    case lwc2 = 376
    case lwc3 = 377
    case lwl = 378
    case lwm16 = 379
    case lwm32 = 380
    case lwpc = 381
    case lwp = 382
    case lwr = 383
    case lwupc = 384
    case lwu = 385
    case lwx = 386
    case lwxc1 = 387
    case lwxs = 388
    case li = 389
    case madd = 390
    case maddf = 391
    case maddrQ = 392
    case maddu = 393
    case maddv = 394
    case maddQ = 395
    case maqSa = 396
    case maqS = 397
    case maxa = 398
    case maxiS = 399
    case maxiU = 400
    case maxA = 401
    case max = 402
    case maxS = 403
    case maxU = 404
    case mfc0 = 405
    case mfc1 = 406
    case mfc2 = 407
    case mfhc1 = 408
    case mfhi = 409
    case mflo = 410
    case mina = 411
    case miniS = 412
    case miniU = 413
    case minA = 414
    case min = 415
    case minS = 416
    case minU = 417
    case mod = 418
    case modsub = 419
    case modu = 420
    case modS = 421
    case modU = 422
    case move = 423
    case movep = 424
    case movf = 425
    case movn = 426
    case movt = 427
    case movz = 428
    case msub = 429
    case msubf = 430
    case msubrQ = 431
    case msubu = 432
    case msubv = 433
    case msubQ = 434
    case mtc0 = 435
    case mtc1 = 436
    case mtc2 = 437
    case mthc1 = 438
    case mthi = 439
    case mthlip = 440
    case mtlo = 441
    case mtm0 = 442
    case mtm1 = 443
    case mtm2 = 444
    case mtp0 = 445
    case mtp1 = 446
    case mtp2 = 447
    case muh = 448
    case muhu = 449
    case muleqS = 450
    case muleuS = 451
    case mulqRs = 452
    case mulqS = 453
    case mulrQ = 454
    case mulsaqS = 455
    case mulsa = 456
    case mult = 457
    case multu = 458
    case mulu = 459
    case mulv = 460
    case mulQ = 461
    case mulS = 462
    case nloc = 463
    case nlzc = 464
    case nmadd = 465
    case nmsub = 466
    case nor = 467
    case nori = 468
    case not16 = 469
    case not = 470
    case or = 471
    case or16 = 472
    case ori = 473
    case packrl = 474
    case pause = 475
    case pckev = 476
    case pckod = 477
    case pcnt = 478
    case pick = 479
    case pop = 480
    case precequ = 481
    case preceq = 482
    case preceu = 483
    case precrquS = 484
    case precrq = 485
    case precrqRs = 486
    case precr = 487
    case precrSra = 488
    case precrSraR = 489
    case pref = 490
    case prepend = 491
    case raddu = 492
    case rddsp = 493
    case rdhwr = 494
    case replv = 495
    case repl = 496
    case rint = 497
    case rotr = 498
    case rotrv = 499
    case round = 500
    case satS = 501
    case satU = 502
    case sb = 503
    case sb16 = 504
    case sc = 505
    case scd = 506
    case sd = 507
    case sdbbp = 508
    case sdbbp16 = 509
    case sdc1 = 510
    case sdc2 = 511
    case sdc3 = 512
    case sdl = 513
    case sdr = 514
    case sdxc1 = 515
    case seb = 516
    case seh = 517
    case seleqz = 518
    case selnez = 519
    case sel = 520
    case seq = 521
    case seqi = 522
    case sh = 523
    case sh16 = 524
    case shf = 525
    case shilo = 526
    case shilov = 527
    case shllv = 528
    case shllvS = 529
    case shll = 530
    case shllS = 531
    case shrav = 532
    case shravR = 533
    case shra = 534
    case shraR = 535
    case shrlv = 536
    case shrl = 537
    case sldi = 538
    case sld = 539
    case sll = 540
    case sll16 = 541
    case slli = 542
    case sllv = 543
    case slt = 544
    case slti = 545
    case sltiu = 546
    case sltu = 547
    case sne = 548
    case snei = 549
    case splati = 550
    case splat = 551
    case sra = 552
    case srai = 553
    case srari = 554
    case srar = 555
    case srav = 556
    case srl = 557
    case srl16 = 558
    case srli = 559
    case srlri = 560
    case srlr = 561
    case srlv = 562
    case ssnop = 563
    case st = 564
    case subqh = 565
    case subqhR = 566
    case subq = 567
    case subqS = 568
    case subsusU = 569
    case subsuuS = 570
    case subsS = 571
    case subsU = 572
    case subu16 = 573
    case subuh = 574
    case subuhR = 575
    case subu = 576
    case subuS = 577
    case subvi = 578
    case subv = 579
    case suxc1 = 580
    case sw = 581
    case sw16 = 582
    case swc1 = 583
    case swc2 = 584
    case swc3 = 585
    case swl = 586
    case swm16 = 587
    case swm32 = 588
    case swp = 589
    case swr = 590
    case swxc1 = 591
    case sync = 592
    case synci = 593
    case syscall = 594
    case teq = 595
    case teqi = 596
    case tge = 597
    case tgei = 598
    case tgeiu = 599
    case tgeu = 600
    case tlbp = 601
    case tlbr = 602
    case tlbwi = 603
    case tlbwr = 604
    case tlt = 605
    case tlti = 606
    case tltiu = 607
    case tltu = 608
    case tne = 609
    case tnei = 610
    case trunc = 611
    case v3mulu = 612
    case vmm0 = 613
    case vmulu = 614
    case vshf = 615
    case wait = 616
    case wrdsp = 617
    case wsbh = 618
    case xor = 619
    case xor16 = 620
    case xori = 621
    /// > some alias instructions
    case nop = 622
    /// > some alias instructions
    case negu = 623
    /// jump and link with Hazard Barrier
    case jalrHb = 624
    /// jump register with Hazard Barrier
    case jrHb = 625
    case ending = 626
}

/// Operand type for instruction's operands
public enum MipsOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// = CS_OP_MEM (Memory operand).
    case mem = 3
}

/// MIPS registers
public enum MipsReg: UInt16 {
    case invalid = 0
    /// General purpose registers
    case pc = 1
    /// General purpose registers
    case _0 = 2
    /// alias registers
    public static let zero = 2
    /// General purpose registers
    case _1 = 3
    /// alias registers
    public static let at = 3
    /// General purpose registers
    case _2 = 4
    /// alias registers
    public static let v0 = 4
    /// General purpose registers
    case _3 = 5
    /// alias registers
    public static let v1 = 5
    /// General purpose registers
    case _4 = 6
    /// alias registers
    public static let a0 = 6
    /// General purpose registers
    case _5 = 7
    /// alias registers
    public static let a1 = 7
    /// General purpose registers
    case _6 = 8
    /// alias registers
    public static let a2 = 8
    /// General purpose registers
    case _7 = 9
    /// alias registers
    public static let a3 = 9
    /// General purpose registers
    case _8 = 10
    /// alias registers
    public static let t0 = 10
    /// General purpose registers
    case _9 = 11
    /// alias registers
    public static let t1 = 11
    /// General purpose registers
    case _10 = 12
    /// alias registers
    public static let t2 = 12
    /// General purpose registers
    case _11 = 13
    /// alias registers
    public static let t3 = 13
    /// General purpose registers
    case _12 = 14
    /// alias registers
    public static let t4 = 14
    /// General purpose registers
    case _13 = 15
    /// alias registers
    public static let t5 = 15
    /// General purpose registers
    case _14 = 16
    /// alias registers
    public static let t6 = 16
    /// General purpose registers
    case _15 = 17
    /// alias registers
    public static let t7 = 17
    /// General purpose registers
    case _16 = 18
    /// alias registers
    public static let s0 = 18
    /// General purpose registers
    case _17 = 19
    /// alias registers
    public static let s1 = 19
    /// General purpose registers
    case _18 = 20
    /// alias registers
    public static let s2 = 20
    /// General purpose registers
    case _19 = 21
    /// alias registers
    public static let s3 = 21
    /// General purpose registers
    case _20 = 22
    /// alias registers
    public static let s4 = 22
    /// General purpose registers
    case _21 = 23
    /// alias registers
    public static let s5 = 23
    /// General purpose registers
    case _22 = 24
    /// alias registers
    public static let s6 = 24
    /// General purpose registers
    case _23 = 25
    /// alias registers
    public static let s7 = 25
    /// General purpose registers
    case _24 = 26
    /// alias registers
    public static let t8 = 26
    /// General purpose registers
    case _25 = 27
    /// alias registers
    public static let t9 = 27
    /// General purpose registers
    case _26 = 28
    /// alias registers
    public static let k0 = 28
    /// General purpose registers
    case _27 = 29
    /// alias registers
    public static let k1 = 29
    /// General purpose registers
    case _28 = 30
    /// alias registers
    public static let gp = 30
    /// General purpose registers
    case _29 = 31
    /// alias registers
    public static let sp = 31
    /// General purpose registers
    case _30 = 32
    /// alias registers
    public static let fp = 32
    /// alias registers
    public static let s8 = 32
    /// General purpose registers
    case _31 = 33
    /// alias registers
    public static let ra = 33
    /// DSP registers
    case dspccond = 34
    /// DSP registers
    case dspcarry = 35
    /// DSP registers
    case dspefi = 36
    /// DSP registers
    case dspoutflag = 37
    /// DSP registers
    case dspoutflag1619 = 38
    /// DSP registers
    case dspoutflag20 = 39
    /// DSP registers
    case dspoutflag21 = 40
    /// DSP registers
    case dspoutflag22 = 41
    /// DSP registers
    case dspoutflag23 = 42
    /// DSP registers
    case dsppos = 43
    /// DSP registers
    case dspscount = 44
    /// ACC registers
    case ac0 = 45
    /// alias registers
    public static let hi0 = 45
    /// alias registers
    public static let lo0 = 45
    /// ACC registers
    case ac1 = 46
    /// alias registers
    public static let hi1 = 46
    /// alias registers
    public static let lo1 = 46
    /// ACC registers
    case ac2 = 47
    /// alias registers
    public static let hi2 = 47
    /// alias registers
    public static let lo2 = 47
    /// ACC registers
    case ac3 = 48
    /// alias registers
    public static let hi3 = 48
    /// alias registers
    public static let lo3 = 48
    /// COP registers
    case cc0 = 49
    /// COP registers
    case cc1 = 50
    /// COP registers
    case cc2 = 51
    /// COP registers
    case cc3 = 52
    /// COP registers
    case cc4 = 53
    /// COP registers
    case cc5 = 54
    /// COP registers
    case cc6 = 55
    /// COP registers
    case cc7 = 56
    /// FPU registers
    case f0 = 57
    /// FPU registers
    case f1 = 58
    /// FPU registers
    case f2 = 59
    /// FPU registers
    case f3 = 60
    /// FPU registers
    case f4 = 61
    /// FPU registers
    case f5 = 62
    /// FPU registers
    case f6 = 63
    /// FPU registers
    case f7 = 64
    /// FPU registers
    case f8 = 65
    /// FPU registers
    case f9 = 66
    /// FPU registers
    case f10 = 67
    /// FPU registers
    case f11 = 68
    /// FPU registers
    case f12 = 69
    /// FPU registers
    case f13 = 70
    /// FPU registers
    case f14 = 71
    /// FPU registers
    case f15 = 72
    /// FPU registers
    case f16 = 73
    /// FPU registers
    case f17 = 74
    /// FPU registers
    case f18 = 75
    /// FPU registers
    case f19 = 76
    /// FPU registers
    case f20 = 77
    /// FPU registers
    case f21 = 78
    /// FPU registers
    case f22 = 79
    /// FPU registers
    case f23 = 80
    /// FPU registers
    case f24 = 81
    /// FPU registers
    case f25 = 82
    /// FPU registers
    case f26 = 83
    /// FPU registers
    case f27 = 84
    /// FPU registers
    case f28 = 85
    /// FPU registers
    case f29 = 86
    /// FPU registers
    case f30 = 87
    /// FPU registers
    case f31 = 88
    /// FPU registers
    case fcc0 = 89
    /// FPU registers
    case fcc1 = 90
    /// FPU registers
    case fcc2 = 91
    /// FPU registers
    case fcc3 = 92
    /// FPU registers
    case fcc4 = 93
    /// FPU registers
    case fcc5 = 94
    /// FPU registers
    case fcc6 = 95
    /// FPU registers
    case fcc7 = 96
    /// AFPR128
    case w0 = 97
    /// AFPR128
    case w1 = 98
    /// AFPR128
    case w2 = 99
    /// AFPR128
    case w3 = 100
    /// AFPR128
    case w4 = 101
    /// AFPR128
    case w5 = 102
    /// AFPR128
    case w6 = 103
    /// AFPR128
    case w7 = 104
    /// AFPR128
    case w8 = 105
    /// AFPR128
    case w9 = 106
    /// AFPR128
    case w10 = 107
    /// AFPR128
    case w11 = 108
    /// AFPR128
    case w12 = 109
    /// AFPR128
    case w13 = 110
    /// AFPR128
    case w14 = 111
    /// AFPR128
    case w15 = 112
    /// AFPR128
    case w16 = 113
    /// AFPR128
    case w17 = 114
    /// AFPR128
    case w18 = 115
    /// AFPR128
    case w19 = 116
    /// AFPR128
    case w20 = 117
    /// AFPR128
    case w21 = 118
    /// AFPR128
    case w22 = 119
    /// AFPR128
    case w23 = 120
    /// AFPR128
    case w24 = 121
    /// AFPR128
    case w25 = 122
    /// AFPR128
    case w26 = 123
    /// AFPR128
    case w27 = 124
    /// AFPR128
    case w28 = 125
    /// AFPR128
    case w29 = 126
    /// AFPR128
    case w30 = 127
    /// AFPR128
    case w31 = 128
    /// AFPR128
    case hi = 129
    /// AFPR128
    case lo = 130
    /// AFPR128
    case p0 = 131
    /// AFPR128
    case p1 = 132
    /// AFPR128
    case p2 = 133
    /// AFPR128
    case mpl0 = 134
    /// AFPR128
    case mpl1 = 135
    /// AFPR128
    case mpl2 = 136
    /// <-- mark the end of the list or registers
    case ending = 137
}
