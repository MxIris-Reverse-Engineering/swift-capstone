#if CAPSTONE_HAS_M680X
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (M680x)

/// Group of M680X instructions
public enum M680xGrp: UInt8 {
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
    /// = CS_GRP_PRIVILEDGE; not used
    case priv = 6
    /// = CS_GRP_BRANCH_RELATIVE
    case brarel = 7
    /// <-- mark the end of the list of groups
    case ending = 8
}

public struct M680xIdx: OptionSet {
    public let rawValue: UInt8
    public init(rawValue: UInt8) { self.rawValue = rawValue }
    public static let indirect = M680xIdx(rawValue: 1)
    public static let noComma = M680xIdx(rawValue: 2)
    public static let postIncDec = M680xIdx(rawValue: 4)
}

/// M680X instruction IDs
public enum M680xIns: UInt32 {
    case invld = 0
    /// M6800/1/2/3
    case aba = 1
    case abx = 2
    case aby = 3
    case adc = 4
    case adca = 5
    case adcb = 6
    case adcd = 7
    case adcr = 8
    case add = 9
    case adda = 10
    case addb = 11
    case addd = 12
    case adde = 13
    case addf = 14
    case addr = 15
    case addw = 16
    /// HCS12X
    case addx = 17
    /// HCS12X
    case addy = 18
    /// HCS12X
    case aded = 19
    /// HCS12X
    case adex = 20
    /// HCS12X
    case adey = 21
    case aim = 22
    case ais = 23
    case aix = 24
    case and = 25
    case anda = 26
    case andb = 27
    /// HCS12X
    case andx = 28
    /// HCS12X
    case andy = 29
    case andcc = 30
    case andd = 31
    case andr = 32
    case asl = 33
    case asla = 34
    case aslb = 35
    /// or LSLD
    case asld = 36
    /// HCS12X
    case aslw = 37
    /// HCS12X
    case aslx = 38
    /// HCS12X
    case asly = 39
    case asr = 40
    case asra = 41
    case asrb = 42
    case asrd = 43
    /// HCS12X
    case asrw = 44
    case asrx = 45
    /// HCS12X
    case asry = 46
    case band = 47
    /// or BHS
    case bcc = 48
    case bclr = 49
    /// or BLO
    case bcs = 50
    case beor = 51
    case beq = 52
    case bge = 53
    case bgnd = 54
    case bgt = 55
    case bhcc = 56
    case bhcs = 57
    case bhi = 58
    case biand = 59
    case bieor = 60
    case bih = 61
    case bil = 62
    case bior = 63
    case bit = 64
    case bita = 65
    case bitb = 66
    case bitd = 67
    case bitmd = 68
    /// HCS12X
    case bitx = 69
    /// HCS12X
    case bity = 70
    case ble = 71
    case bls = 72
    case blt = 73
    case bmc = 74
    case bmi = 75
    case bms = 76
    case bne = 77
    case bor = 78
    case bpl = 79
    case brclr = 80
    case brset = 81
    case bra = 82
    case brn = 83
    case bset = 84
    case bsr = 85
    /// HCS12X
    case btas = 86
    case bvc = 87
    case bvs = 88
    case call = 89
    /// M6800/1/2/3
    case cba = 90
    case cbeq = 91
    case cbeqa = 92
    case cbeqx = 93
    /// M6800/1/2/3
    case clc = 94
    /// M6800/1/2/3
    case cli = 95
    case clr = 96
    case clra = 97
    case clrb = 98
    case clrd = 99
    case clre = 100
    case clrf = 101
    case clrh = 102
    case clrw = 103
    case clrx = 104
    case clry = 105
    /// M6800/1/2/3
    case clv = 106
    case cmp = 107
    case cmpa = 108
    case cmpb = 109
    case cmpd = 110
    case cmpe = 111
    case cmpf = 112
    case cmpr = 113
    case cmps = 114
    case cmpu = 115
    case cmpw = 116
    case cmpx = 117
    case cmpy = 118
    case com = 119
    case coma = 120
    case comb = 121
    case comd = 122
    case come = 123
    case comf = 124
    case comw = 125
    case comx = 126
    case comy = 127
    case cpd = 128
    /// HCS12X
    case cped = 129
    /// HCS12X
    case cpes = 130
    /// HCS12X
    case cpex = 131
    /// HCS12X
    case cpey = 132
    case cphx = 133
    case cps = 134
    /// M6800/1/2/3
    case cpx = 135
    case cpy = 136
    case cwai = 137
    case daa = 138
    case dbeq = 139
    case dbne = 140
    case dbnz = 141
    case dbnza = 142
    case dbnzx = 143
    case dec = 144
    case deca = 145
    case decb = 146
    case decd = 147
    case dece = 148
    case decf = 149
    case decw = 150
    case decx = 151
    case decy = 152
    /// M6800/1/2/3
    case des = 153
    /// M6800/1/2/3
    case dex = 154
    case dey = 155
    case div = 156
    case divd = 157
    case divq = 158
    case ediv = 159
    case edivs = 160
    case eim = 161
    case emacs = 162
    case emaxd = 163
    case emaxm = 164
    case emind = 165
    case eminm = 166
    case emul = 167
    case emuls = 168
    case eor = 169
    case eora = 170
    case eorb = 171
    case eord = 172
    case eorr = 173
    /// HCS12X
    case eorx = 174
    /// HCS12X
    case eory = 175
    case etbl = 176
    case exg = 177
    case fdiv = 178
    /// HCS12X
    case gldaa = 179
    /// HCS12X
    case gldab = 180
    /// HCS12X
    case gldd = 181
    /// HCS12X
    case glds = 182
    /// HCS12X
    case gldx = 183
    /// HCS12X
    case gldy = 184
    /// HCS12X
    case gstaa = 185
    /// HCS12X
    case gstab = 186
    /// HCS12X
    case gstd = 187
    /// HCS12X
    case gsts = 188
    /// HCS12X
    case gstx = 189
    /// HCS12X
    case gsty = 190
    case ibeq = 191
    case ibne = 192
    case idiv = 193
    case idivs = 194
    case illgl = 195
    case inc = 196
    case inca = 197
    case incb = 198
    case incd = 199
    case ince = 200
    case incf = 201
    case incw = 202
    case incx = 203
    case incy = 204
    /// M6800/1/2/3
    case ins = 205
    /// M6800/1/2/3
    case inx = 206
    case iny = 207
    case jmp = 208
    case jsr = 209
    /// or LBHS
    case lbcc = 210
    /// or LBLO
    case lbcs = 211
    case lbeq = 212
    case lbge = 213
    case lbgt = 214
    case lbhi = 215
    case lble = 216
    case lbls = 217
    case lblt = 218
    case lbmi = 219
    case lbne = 220
    case lbpl = 221
    case lbra = 222
    case lbrn = 223
    case lbsr = 224
    case lbvc = 225
    case lbvs = 226
    case lda = 227
    /// M6800/1/2/3
    case ldaa = 228
    /// M6800/1/2/3
    case ldab = 229
    case ldb = 230
    case ldbt = 231
    case ldd = 232
    case lde = 233
    case ldf = 234
    case ldhx = 235
    case ldmd = 236
    case ldq = 237
    case lds = 238
    case ldu = 239
    case ldw = 240
    case ldx = 241
    case ldy = 242
    case leas = 243
    case leau = 244
    case leax = 245
    case leay = 246
    case lsl = 247
    case lsla = 248
    case lslb = 249
    case lsld = 250
    case lslx = 251
    case lsr = 252
    case lsra = 253
    case lsrb = 254
    /// or ASRD
    case lsrd = 255
    case lsrw = 256
    case lsrx = 257
    case lsry = 258
    case maxa = 259
    case maxm = 260
    case mem = 261
    case mina = 262
    case minm = 263
    case mov = 264
    case movb = 265
    case movw = 266
    case mul = 267
    case muld = 268
    case neg = 269
    case nega = 270
    case negb = 271
    case negd = 272
    /// HCS12X
    case negw = 273
    case negx = 274
    /// HCS12X
    case negy = 275
    case nop = 276
    case nsa = 277
    case oim = 278
    case ora = 279
    /// M6800/1/2/3
    case oraa = 280
    /// M6800/1/2/3
    case orab = 281
    case orb = 282
    case orcc = 283
    case ord = 284
    case orr = 285
    /// HCS12X
    case orx = 286
    /// HCS12X
    case ory = 287
    /// M6800/1/2/3
    case psha = 288
    /// M6800/1/2/3
    case pshb = 289
    case pshc = 290
    /// HCS12X
    case pshcw = 291
    case pshd = 292
    case pshh = 293
    case pshs = 294
    case pshsw = 295
    case pshu = 296
    case pshuw = 297
    /// M6800/1/2/3
    case pshx = 298
    case pshy = 299
    /// M6800/1/2/3
    case pula = 300
    /// M6800/1/2/3
    case pulb = 301
    case pulc = 302
    /// HCS12X
    case pulcw = 303
    case puld = 304
    case pulh = 305
    case puls = 306
    case pulsw = 307
    case pulu = 308
    case puluw = 309
    /// M6800/1/2/3
    case pulx = 310
    case puly = 311
    case rev = 312
    case revw = 313
    case rol = 314
    case rola = 315
    case rolb = 316
    case rold = 317
    case rolw = 318
    case rolx = 319
    case roly = 320
    case ror = 321
    case rora = 322
    case rorb = 323
    case rord = 324
    case rorw = 325
    case rorx = 326
    case rory = 327
    case rsp = 328
    case rtc = 329
    case rti = 330
    case rts = 331
    /// M6800/1/2/3
    case sba = 332
    case sbc = 333
    case sbca = 334
    case sbcb = 335
    case sbcd = 336
    case sbcr = 337
    /// HCS12X
    case sbed = 338
    /// HCS12X
    case sbex = 339
    /// HCS12X
    case sbey = 340
    case sec = 341
    case sei = 342
    case sev = 343
    case sex = 344
    case sexw = 345
    /// RS08
    case sha = 346
    /// RS08
    case sla = 347
    case slp = 348
    case sta = 349
    /// M6800/1/2/3
    case staa = 350
    /// M6800/1/2/3
    case stab = 351
    case stb = 352
    case stbt = 353
    case std = 354
    case ste = 355
    case stf = 356
    case stop = 357
    case sthx = 358
    case stq = 359
    case sts = 360
    case stu = 361
    case stw = 362
    case stx = 363
    case sty = 364
    case sub = 365
    case suba = 366
    case subb = 367
    case subd = 368
    case sube = 369
    case subf = 370
    case subr = 371
    case subw = 372
    /// HCS12X
    case subx = 373
    /// HCS12X
    case suby = 374
    case swi = 375
    case swi2 = 376
    case swi3 = 377
    case sync = 378
    /// HCS12X
    case sys = 379
    /// M6800/1/2/3
    case tab = 380
    /// M6800/1/2/3
    case tap = 381
    case tax = 382
    /// M6800/1/2/3
    case tba = 383
    case tbeq = 384
    case tbl = 385
    case tbne = 386
    case test = 387
    case tfm = 388
    case tfr = 389
    case tim = 390
    /// M6800/1/2/3
    case tpa = 391
    case trap = 392
    case tst = 393
    case tsta = 394
    case tstb = 395
    case tstd = 396
    case tste = 397
    case tstf = 398
    case tstw = 399
    case tstx = 400
    case tsty = 401
    /// M6800/1/2/3
    case tsx = 402
    case tsy = 403
    case txa = 404
    /// M6800/1/2/3
    case txs = 405
    case tys = 406
    /// M6800/1/2/3
    case wai = 407
    case wait = 408
    case wav = 409
    case wavr = 410
    /// HD6301
    case xgdx = 411
    case xgdy = 412
    /// <-- mark the end of the list of instructions
    case ending = 413
}

public enum M680xOffset: UInt8 {
    case none = 0
    case bits5 = 5
    case bits8 = 8
    case bits9 = 9
    case bits16 = 16
}

/// Operand type for instruction's operands
public enum M680xOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = Register operand.
    case register = 1
    /// = Immediate operand.
    case immediate = 2
    /// = Indexed addressing operand.
    case indexed = 16
    /// = Extended addressing operand.
    case extended = 17
    /// = Direct addressing operand.
    case direct = 18
    /// = Relative addressing operand.
    case relative = 19
    /// = constant operand (Displayed as number only). Used e.g. for a bit index or page number.
    case constant = 20
}

public struct M680xOpFlags: OptionSet {
    public let rawValue: UInt8
    public init(rawValue: UInt8) { self.rawValue = rawValue }
    public static let firstOpInMnem = M680xOpFlags(rawValue: 1)
    public static let secondOpInMnem = M680xOpFlags(rawValue: 2)
}

/// M680X registers and special registers
public enum M680xReg: UInt16 {
    case invalid = 0
    /// M6800/1/2/3/9, HD6301/9
    case a = 1
    /// M6800/1/2/3/9, HD6301/9
    case b = 2
    /// HD6309
    case e = 3
    /// HD6309
    case f = 4
    /// HD6309
    case _0 = 5
    /// M6801/3/9, HD6301/9
    case d = 6
    /// HD6309
    case w = 7
    /// M6800/1/2/3/9, M6301/9
    case cc = 8
    /// M6809/M6309
    case dp = 9
    /// M6309
    case md = 10
    /// M6808
    case hx = 11
    /// M6808
    case h = 12
    /// M6800/1/2/3/9, M6301/9
    case x = 13
    /// M6809/M6309
    case y = 14
    /// M6809/M6309
    case s = 15
    /// M6809/M6309
    case u = 16
    /// M6309
    case v = 17
    /// M6309
    case q = 18
    /// M6800/1/2/3/9, M6301/9
    case pc = 19
    /// RS08
    case spc = 20
    /// CPU12
    case tmp2 = 21
    /// CPU12
    case tmp3 = 22
    /// <-- mark the end of the list of registers
    case ending = 23
}

#endif
