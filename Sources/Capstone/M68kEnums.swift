#if CAPSTONE_HAS_M68K
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (M68k)

/// M68K Addressing Modes
public enum M68kAm: UInt32 {
    /// No address mode.
    case none = 0
    /// Register Direct - Data
    case regDirectData = 1
    /// Register Direct - Address
    case regDirectAddr = 2
    /// Register Indirect - Address
    case regiAddr = 3
    /// Register Indirect - Address with Postincrement
    case regiAddrPostInc = 4
    /// Register Indirect - Address with Predecrement
    case regiAddrPreDec = 5
    /// Register Indirect - Address with Displacement
    case regiAddrDisp = 6
    /// Address Register Indirect With Index- 8-bit displacement
    case aregiIndex8BitDisp = 7
    /// Address Register Indirect With Index- Base displacement
    case aregiIndexBaseDisp = 8
    /// Memory indirect - Postindex
    case memiPostIndex = 9
    /// Memory indirect - Preindex
    case memiPreIndex = 10
    /// Program Counter Indirect - with Displacement
    case pciDisp = 11
    /// Program Counter Indirect with Index - with 8-Bit Displacement
    case pciIndex8BitDisp = 12
    /// Program Counter Indirect with Index - with Base Displacement
    case pciIndexBaseDisp = 13
    /// Program Counter Memory Indirect - Postindexed
    case pcMemiPostIndex = 14
    /// Program Counter Memory Indirect - Preindexed
    case pcMemiPreIndex = 15
    /// Absolute Data Addressing - Short
    case absoluteDataShort = 16
    /// Absolute Data Addressing - Long
    case absoluteDataLong = 17
    /// Immediate value
    case immediate = 18
    /// Address as displacement from (PC+2) used by branches
    case branchDisplacement = 19
}

/// Operation size of the CPU instructions
public struct M68kCpuSize: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// unsized or unspecified
    public static let none: M68kCpuSize = []
    /// 1 byte in size
    public static let byte = M68kCpuSize(rawValue: 1)
    /// 2 bytes in size
    public static let word = M68kCpuSize(rawValue: 2)
    /// 4 bytes in size
    public static let long = M68kCpuSize(rawValue: 4)
}

/// Operation size of the FPU instructions (Notice that FPU instruction can also use CPU sizes if needed)
public enum M68kFpuSize: UInt32 {
    /// unsized like fsave/frestore
    case none = 0
    /// 4 byte in size (single float)
    case single = 4
    /// 8 byte in size (double)
    case double = 8
    /// 12 byte in size (extended real format)
    case extended = 12
    /// Distinct format tag for a 12-byte packed-decimal operand.
    case packed = 13
}

/// Group of M68K instructions
public enum M68kGrp: UInt8 {
    /// CS_GRUP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    /// = CS_GRP_RET
    case ret = 3
    /// = CS_GRP_IRET
    case iret = 5
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// <-- mark the end of the list of groups
    case ending = 8
}

/// M68K instruction
public enum M68kIns: UInt32 {
    case invalid = 0
    case abcd = 1
    case add = 2
    case adda = 3
    case addi = 4
    case addq = 5
    case addx = 6
    case and = 7
    case andi = 8
    case asl = 9
    case asr = 10
    case bhs = 11
    case blo = 12
    case bhi = 13
    case bls = 14
    case bcc = 15
    case bcs = 16
    case bne = 17
    case beq = 18
    case bvc = 19
    case bvs = 20
    case bpl = 21
    case bmi = 22
    case bge = 23
    case blt = 24
    case bgt = 25
    case ble = 26
    case bra = 27
    case bsr = 28
    case bchg = 29
    case bclr = 30
    case bset = 31
    case btst = 32
    case bitrev = 33
    case byterev = 34
    case bfchg = 35
    case bfclr = 36
    case bfexts = 37
    case bfextu = 38
    case bfffo = 39
    case bfins = 40
    case bfset = 41
    case bftst = 42
    case bkpt = 43
    case callm = 44
    case cas = 45
    case cas2 = 46
    case chk = 47
    case chk2 = 48
    case clr = 49
    case cmp = 50
    case cmpa = 51
    case cmpi = 52
    case cmpm = 53
    case cmp2 = 54
    case cinvl = 55
    case cinvp = 56
    case cinva = 57
    case cpushl = 58
    case cpushp = 59
    case cpusha = 60
    case dbt = 61
    case dbf = 62
    case dbhi = 63
    case dbls = 64
    case dbcc = 65
    case dbcs = 66
    case dbne = 67
    case dbeq = 68
    case dbvc = 69
    case dbvs = 70
    case dbpl = 71
    case dbmi = 72
    case dbge = 73
    case dblt = 74
    case dbgt = 75
    case dble = 76
    case dbra = 77
    case divs = 78
    case divsl = 79
    case divu = 80
    case divul = 81
    case eor = 82
    case eori = 83
    case exg = 84
    case ext = 85
    case extb = 86
    case ff1 = 87
    case fabs = 88
    case fsabs = 89
    case fdabs = 90
    case facos = 91
    case fadd = 92
    case fsadd = 93
    case fdadd = 94
    case fasin = 95
    case fatan = 96
    case fatanh = 97
    case fbf = 98
    case fbeq = 99
    case fbogt = 100
    case fboge = 101
    case fbolt = 102
    case fbole = 103
    case fbogl = 104
    case fbor = 105
    case fbun = 106
    case fbueq = 107
    case fbugt = 108
    case fbuge = 109
    case fbult = 110
    case fbule = 111
    case fbne = 112
    case fbt = 113
    case fbsf = 114
    case fbseq = 115
    case fbgt = 116
    case fbge = 117
    case fblt = 118
    case fble = 119
    case fbgl = 120
    case fbgle = 121
    case fbngle = 122
    case fbngl = 123
    case fbnle = 124
    case fbnlt = 125
    case fbnge = 126
    case fbngt = 127
    case fbsne = 128
    case fbst = 129
    case fcmp = 130
    case fcos = 131
    case fcosh = 132
    case fdbf = 133
    case fdbeq = 134
    case fdbogt = 135
    case fdboge = 136
    case fdbolt = 137
    case fdbole = 138
    case fdbogl = 139
    case fdbor = 140
    case fdbun = 141
    case fdbueq = 142
    case fdbugt = 143
    case fdbuge = 144
    case fdbult = 145
    case fdbule = 146
    case fdbne = 147
    case fdbt = 148
    case fdbsf = 149
    case fdbseq = 150
    case fdbgt = 151
    case fdbge = 152
    case fdblt = 153
    case fdble = 154
    case fdbgl = 155
    case fdbgle = 156
    case fdbngle = 157
    case fdbngl = 158
    case fdbnle = 159
    case fdbnlt = 160
    case fdbnge = 161
    case fdbngt = 162
    case fdbsne = 163
    case fdbst = 164
    case fdiv = 165
    case fsdiv = 166
    case fddiv = 167
    case fetox = 168
    case fetoxm1 = 169
    case fgetexp = 170
    case fgetman = 171
    case fint = 172
    case fintrz = 173
    case flog10 = 174
    case flog2 = 175
    case flogn = 176
    case flognp1 = 177
    case fmod = 178
    case fmove = 179
    case fsmove = 180
    case fdmove = 181
    case fmovecr = 182
    case fmovem = 183
    case fmul = 184
    case fsmul = 185
    case fdmul = 186
    case fneg = 187
    case fsneg = 188
    case fdneg = 189
    case fnop = 190
    case frem = 191
    case frestore = 192
    case fsave = 193
    case fscale = 194
    case fsgldiv = 195
    case fsglmul = 196
    case fsin = 197
    case fsincos = 198
    case fsinh = 199
    case fsqrt = 200
    case fssqrt = 201
    case fdsqrt = 202
    case fsf = 203
    case fsbeq = 204
    case fsogt = 205
    case fsoge = 206
    case fsolt = 207
    case fsole = 208
    case fsogl = 209
    case fsor = 210
    case fsun = 211
    case fsueq = 212
    case fsugt = 213
    case fsuge = 214
    case fsult = 215
    case fsule = 216
    case fsne = 217
    case fst = 218
    case fssf = 219
    case fsseq = 220
    case fsgt = 221
    case fsge = 222
    case fslt = 223
    case fsle = 224
    case fsgl = 225
    case fsgle = 226
    case fsngle = 227
    case fsngl = 228
    case fsnle = 229
    case fsnlt = 230
    case fsnge = 231
    case fsngt = 232
    case fssne = 233
    case fsst = 234
    case fsub = 235
    case fssub = 236
    case fdsub = 237
    case ftan = 238
    case ftanh = 239
    case ftentox = 240
    case ftrapf = 241
    case ftrapeq = 242
    case ftrapogt = 243
    case ftrapoge = 244
    case ftrapolt = 245
    case ftrapole = 246
    case ftrapogl = 247
    case ftrapor = 248
    case ftrapun = 249
    case ftrapueq = 250
    case ftrapugt = 251
    case ftrapuge = 252
    case ftrapult = 253
    case ftrapule = 254
    case ftrapne = 255
    case ftrapt = 256
    case ftrapsf = 257
    case ftrapseq = 258
    case ftrapgt = 259
    case ftrapge = 260
    case ftraplt = 261
    case ftraple = 262
    case ftrapgl = 263
    case ftrapgle = 264
    case ftrapngle = 265
    case ftrapngl = 266
    case ftrapnle = 267
    case ftrapnlt = 268
    case ftrapnge = 269
    case ftrapngt = 270
    case ftrapsne = 271
    case ftrapst = 272
    case ftst = 273
    case ftwotox = 274
    case halt = 275
    case illegal = 276
    case intouch = 277
    case jmp = 278
    case jsr = 279
    case lea = 280
    case link = 281
    case lpstop = 282
    case lsl = 283
    case lsr = 284
    case mac = 285
    case move = 286
    case movea = 287
    case movec = 288
    case movem = 289
    case movep = 290
    case moveq = 291
    case moves = 292
    case move16 = 293
    case mov3q = 294
    case movclr = 295
    case msac = 296
    case muls = 297
    case mulu = 298
    case mvs = 299
    case mvz = 300
    case nbcd = 301
    case neg = 302
    case negx = 303
    case nop = 304
    case not = 305
    case or = 306
    case ori = 307
    case pack = 308
    case pea = 309
    case pflush = 310
    case pflusha = 311
    case pflushan = 312
    case pflushn = 313
    case ploadr = 314
    case ploadw = 315
    case plpar = 316
    case plpaw = 317
    case pmove = 318
    case pmovefd = 319
    case ptestr = 320
    case ptestw = 321
    case pulse = 322
    case rems = 323
    case remu = 324
    case reset = 325
    case rol = 326
    case ror = 327
    case roxl = 328
    case roxr = 329
    case rtd = 330
    case rte = 331
    case rtm = 332
    case rtr = 333
    case rts = 334
    case sats = 335
    case sbcd = 336
    case st = 337
    case sf = 338
    case shi = 339
    case sls = 340
    case scc = 341
    case shs = 342
    case scs = 343
    case slo = 344
    case sne = 345
    case seq = 346
    case svc = 347
    case svs = 348
    case spl = 349
    case smi = 350
    case sge = 351
    case slt = 352
    case sgt = 353
    case sle = 354
    case stop = 355
    case strldsr = 356
    case sub = 357
    case suba = 358
    case subi = 359
    case subq = 360
    case subx = 361
    case swap = 362
    case tas = 363
    case trap = 364
    case trapv = 365
    case trapt = 366
    case trapf = 367
    case traphi = 368
    case trapls = 369
    case trapcc = 370
    case traphs = 371
    case trapcs = 372
    case traplo = 373
    case trapne = 374
    case trapeq = 375
    case trapvc = 376
    case trapvs = 377
    case trappl = 378
    case trapmi = 379
    case trapge = 380
    case traplt = 381
    case trapgt = 382
    case traple = 383
    case tst = 384
    case unlk = 385
    case unpk = 386
    case wddata = 387
    case wdebug = 388
    case bgnd = 389
    case tbls = 390
    case tblu = 391
    case tblsn = 392
    case tblun = 393
    case cp0bcbusy = 394
    case cp0ld = 395
    case cp0nop = 396
    case cp0st = 397
    case cp1bcbusy = 398
    case cp1ld = 399
    case cp1nop = 400
    case cp1st = 401
    case tpf = 402
    case maaac = 403
    case masac = 404
    case msaac = 405
    case mssac = 406
    /// <-- mark the end of the list of instructions
    case ending = 407
}

/// Operand type for instruction's operands
public enum M68kOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// single precision Floating-Point operand
    case fpSingle = 16
    /// double precision Floating-Point operand
    case fpDouble = 17
    /// Register bits move
    case regBits = 18
    /// Register pair in the same op (upper 4 bits for first reg, lower for second)
    case regPair = 19
    /// Branch displacement
    case brDisp = 20
    /// Shift-direction pseudo operand. Shift direction is set in cs_m68k_op.flags
    case shift = 21
    /// Extended precision Floating-Point operand.
    case fpExtended = 22
    /// Packed decimal Floating-Point operand.
    case fpPacked = 23
    /// = CS_OP_MEM (Memory operand).
    case mem = 128
}

/// Operand type for instruction's operands
public struct M68kOpBrDispSize: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// = CS_OP_INVALID (Uninitialized).
    public static let invalid: M68kOpBrDispSize = []
    /// signed 8-bit displacement
    public static let byte = M68kOpBrDispSize(rawValue: 1)
    /// signed 16-bit displacement
    public static let word = M68kOpBrDispSize(rawValue: 2)
    /// signed 32-bit displacement
    public static let long = M68kOpBrDispSize(rawValue: 4)
}

/// Per-operand modifier flags.
public struct M68kOpFlag: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    public static let none: M68kOpFlag = []
    /// Lower half of a ColdFire MAC word register operand
    public static let regLower = M68kOpFlag(rawValue: 1)
    /// Upper half of a ColdFire MAC word register operand
    public static let regUpper = M68kOpFlag(rawValue: 2)
    /// ColdFire MAC left-shift operand
    public static let shiftLeft = M68kOpFlag(rawValue: 4)
    /// ColdFire MAC right-shift operand
    public static let shiftRight = M68kOpFlag(rawValue: 8)
    /// ColdFire MAC memory update marker
    public static let memUpdate = M68kOpFlag(rawValue: 16)
}

/// M68K registers and special registers
public enum M68kReg: UInt16 {
    case invalid = 0
    case d0 = 1
    case d1 = 2
    case d2 = 3
    case d3 = 4
    case d4 = 5
    case d5 = 6
    case d6 = 7
    case d7 = 8
    case a0 = 9
    case a1 = 10
    case a2 = 11
    case a3 = 12
    case a4 = 13
    case a5 = 14
    case a6 = 15
    case a7 = 16
    case fp0 = 17
    case fp1 = 18
    case fp2 = 19
    case fp3 = 20
    case fp4 = 21
    case fp5 = 22
    case fp6 = 23
    case fp7 = 24
    case pc = 25
    case sr = 26
    case ccr = 27
    case sfc = 28
    case dfc = 29
    case usp = 30
    case vbr = 31
    case cacr = 32
    case caar = 33
    case msp = 34
    case isp = 35
    case tc = 36
    case itt0 = 37
    case itt1 = 38
    case dtt0 = 39
    case dtt1 = 40
    case mmusr = 41
    case urp = 42
    case srp = 43
    case fpcr = 44
    case fpsr = 45
    case fpiar = 46
    case tt0 = 47
    case tt1 = 48
    case crp = 49
    case acc = 50
    case acc0 = 51
    case acc1 = 52
    case acc2 = 53
    case acc3 = 54
    case accext01 = 55
    case accext23 = 56
    case macsr = 57
    case mask = 58
    /// <-- mark the end of the list of registers
    case ending = 59
}

/// Type of size that is being used for the current instruction
public enum M68kSizeType: UInt32 {
    case invalid = 0
    case cpu = 1
    case fpu = 2
}

#endif
