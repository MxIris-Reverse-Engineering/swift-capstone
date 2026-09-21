#if CAPSTONE_HAS_POWERPC
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Ppc)

/// Encodes the different meanings of the BH field. The enum values does NOT match the BH field values!
public enum PpcBh: UInt32 {
    case invalid = 0
    case subroutineRet = 1
    case noSubroutineRet = 2
    case notPredictable = 3
    case reserved = 4
}

/// CR field indices and their meaning.
public enum PpcBi: UInt32 {
    /// CR bit Less Than
    case lt = 0
    /// CR bit Greater Than
    case gt = 1
    /// CR bit Zero
    case z = 2
    /// CR bit Summary Overflow
    case so = 3
    /// CR bit was not set/invalid
    case invalid = 255
}

/// Masks of flags in the BO field.
public enum PpcBo: UInt32 {
    /// Either ignored (z) or hint bit t
    case t = 1
}

/// Masks of flags in the BO field.
public enum PpcBoCr: UInt32 {
    /// Flag mask: Compare CR bit to 0 or 1.
    case cmp = 8
}

/// Masks of flags in the BO field.
public enum PpcBoCtr: UInt32 {
    /// Flag mask: Compare CTR to 0 or 1.
    case cmp = 2
}

/// Masks of flags in the BO field.
public enum PpcBoDecr: UInt32 {
    /// Flag mask: Decrement counter.
    case ctr = 4
}

/// Masks of flags in the BO field.
public enum PpcBoTest: UInt32 {
    /// Flag mask: Test CR bit.
    case cr = 16
}

/// Bit for branch taken (plus) or not-taken (minus) hint Encodes the meaning of the branch hint bits. Bit: | 0 | 1 | Name: | a | t |
public enum PpcBr: UInt32 {
    case reserved = 1
    /// Plus
    case taken = 3
}

/// Bit for branch taken (plus) or not-taken (minus) hint Encodes the meaning of the branch hint bits. Bit: | 0 | 1 | Name: | a | t |
public enum PpcBrHint: UInt32 {
    case mask = 3
}

/// Bit for branch taken (plus) or not-taken (minus) hint Encodes the meaning of the branch hint bits. Bit: | 0 | 1 | Name: | a | t |
public enum PpcBrNot: UInt32 {
    case given = 0
    /// Minus
    case taken = 2
}

/// Group of PPC instructions
public enum PpcFeature: UInt32 {
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasps = 128
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case in32bitmode = 129
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case in64bitmode = 130
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isbooke = 131
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isnotbooke = 132
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasonlymsync = 133
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hassync = 134
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isppc4xx = 135
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isppc6xx = 136
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case ise500 = 137
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasspe = 138
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasicbt = 139
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case haspartwordatomics = 140
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasquadwordatomics = 141
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case nonansfpmath = 142
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case nansfpmath = 143
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasbpermd = 144
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasextdiv = 145
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasfpu = 149
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case pcrelativememops = 150
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case modernas = 152
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isaix = 153
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case notaix = 154
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isisafuture = 155
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case isnotisafuture = 156
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case hasqpx = 157
}

/// Group of PPC instructions
public enum PpcFeatureIsisa2: UInt32 {
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case _06 = 146
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case _07 = 147
}

/// Group of PPC instructions
public enum PpcFeatureIsisa3: UInt32 {
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case _0 = 148
}

/// Group of PPC instructions
public enum PpcFeatureIsnotisa3: UInt32 {
    /// Architecture-specific groups generated content <PPCGenCSFeatureEnum.inc> begin clang-format off
    case _1 = 151
}

/// Group of PPC instructions
public enum PpcGrp: UInt8 {
    /// CS_GRP_INVALID
    case invalid = 0
    /// CS_GRP_JUMP
    case jump = 1
    /// CS_GRP_CALL
    case call = 2
    /// CS_GRP_RET
    case ret = 3
    /// CS_GRP_INT
    case int = 4
    /// CS_GRP_IRET
    case iret = 5
    /// CS_GRP_PRIVILEGE
    case privilege = 6
    /// CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// <-- mark the end of the list of groups
    case ending = 158
}

/// PPC instruction
public enum PpcIns: UInt32 {
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case clrlsldi = 1
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case clrlslwi = 2
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case clrrdi = 3
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case clrrwi = 4
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbfl = 5
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbflp = 6
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbfps = 7
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbf = 8
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbstps = 9
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtct = 10
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtds = 11
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtstct = 12
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtstds = 13
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtstt = 14
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtst = 15
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtt = 16
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbt = 17
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extldi = 18
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extlwi = 19
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extrdi = 20
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extrwi = 21
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case inslwi = 22
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case insrdi = 23
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case insrwi = 24
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case la = 25
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case li = 26
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lis = 27
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psubi = 28
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rlwimi = 29
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rlwinm = 30
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rlwnm = 31
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rotrdi = 32
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rotrwi = 33
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sldi = 34
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slwi = 35
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srdi = 36
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srwi = 37
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subi = 38
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subic = 39
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subis = 40
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subpcis = 41
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case add = 42
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addo = 43
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addc = 44
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addco = 45
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case adde = 46
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addeo = 47
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addex = 48
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addg6s = 49
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addi = 50
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addic = 51
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addis = 52
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addme = 53
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addmeo = 54
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addpcis = 55
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addze = 56
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case addzeo = 57
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case and = 58
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case andc = 59
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case andis = 60
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case andi = 61
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case attn = 62
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case b = 63
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ba = 64
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdadd = 65
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdcfn = 66
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdcfsq = 67
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdcfz = 68
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdcpsgn = 69
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdctn = 70
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdctsq = 71
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdctz = 72
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdsetsgn = 73
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdsr = 74
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdsub = 75
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcds = 76
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdtrunc = 77
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdus = 78
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcdutrunc = 79
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bctr = 80
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bctrl = 81
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bl = 82
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bla = 83
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case blr = 84
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case blrl = 85
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bpermd = 86
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case brd = 87
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case brh = 88
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case brinc = 89
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case brw = 90
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cbcdtd = 91
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cdtbcd = 92
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cfuged = 93
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case clrbhrb = 94
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpb = 95
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpd = 96
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpdi = 97
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpeqb = 98
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpld = 99
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpldi = 100
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmplw = 101
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmplwi = 102
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmprb = 103
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpw = 104
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cmpwi = 105
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cntlzd = 106
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cntlzdm = 107
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cntlzw = 108
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cnttzd = 109
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cnttzdm = 110
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cnttzw = 111
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cpabort = 112
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case copy = 113
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case paste = 114
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crand = 115
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crandc = 116
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case creqv = 117
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crnand = 118
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crnor = 119
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case cror = 120
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crorc = 121
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case crxor = 122
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dadd = 123
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case daddq = 124
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case darn = 125
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcba = 126
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbfep = 127
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbi = 128
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbst = 129
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbstep = 130
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtep = 131
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbtstep = 132
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbz = 133
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbzep = 134
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbzl = 135
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbzlep = 136
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dccci = 137
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcffix = 138
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcffixq = 139
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcffixqq = 140
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcmpo = 141
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcmpoq = 142
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcmpu = 143
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcmpuq = 144
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dctdp = 145
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dctfix = 146
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dctfixq = 147
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dctfixqq = 148
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dctqpq = 149
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ddedpd = 150
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ddedpdq = 151
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ddiv = 152
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ddivq = 153
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case denbcd = 154
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case denbcdq = 155
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case diex = 156
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case diexq = 157
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divd = 158
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divde = 159
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divdeo = 160
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divdeu = 161
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divdeuo = 162
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divdo = 163
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divdu = 164
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divduo = 165
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divw = 166
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divwe = 167
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divweo = 168
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divweu = 169
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divweuo = 170
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divwo = 171
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divwu = 172
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case divwuo = 173
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmmr = 174
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmsetdmrz = 175
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmul = 176
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmulq = 177
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmxor = 178
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmxxextfdmr256 = 179
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmxxextfdmr512 = 180
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmxxinstfdmr256 = 181
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dmxxinstfdmr512 = 182
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dqua = 183
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dquai = 184
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dquaiq = 185
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dquaq = 186
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drdpq = 187
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drintn = 188
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drintnq = 189
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drintx = 190
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drintxq = 191
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drrnd = 192
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drrndq = 193
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case drsp = 194
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dscli = 195
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dscliq = 196
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dscri = 197
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dscriq = 198
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dss = 199
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dssall = 200
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dst = 201
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dstst = 202
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dststt = 203
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dstt = 204
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dsub = 205
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dsubq = 206
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstdc = 207
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstdcq = 208
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstdg = 209
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstdgq = 210
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstex = 211
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstexq = 212
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstsf = 213
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstsfi = 214
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstsfiq = 215
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dtstsfq = 216
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dxex = 217
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dxexq = 218
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdabs = 219
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdadd = 220
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfs = 221
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfsf = 222
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfsi = 223
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfsid = 224
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfuf = 225
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfui = 226
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcfuid = 227
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcmpeq = 228
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcmpgt = 229
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdcmplt = 230
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctsf = 231
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctsi = 232
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctsidz = 233
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctsiz = 234
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctuf = 235
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctui = 236
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctuidz = 237
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdctuiz = 238
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efddiv = 239
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdmul = 240
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdnabs = 241
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdneg = 242
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdsub = 243
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdtsteq = 244
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdtstgt = 245
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efdtstlt = 246
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsabs = 247
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsadd = 248
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscfd = 249
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscfsf = 250
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscfsi = 251
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscfuf = 252
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscfui = 253
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscmpeq = 254
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscmpgt = 255
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efscmplt = 256
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctsf = 257
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctsi = 258
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctsiz = 259
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctuf = 260
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctui = 261
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsctuiz = 262
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsdiv = 263
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsmul = 264
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsnabs = 265
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efsneg = 266
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efssub = 267
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efststeq = 268
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efststgt = 269
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case efststlt = 270
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case eqv = 271
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evabs = 272
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddiw = 273
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddsmiaaw = 274
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddssiaaw = 275
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddumiaaw = 276
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddusiaaw = 277
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evaddw = 278
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evand = 279
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evandc = 280
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcmpeq = 281
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcmpgts = 282
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcmpgtu = 283
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcmplts = 284
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcmpltu = 285
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcntlsw = 286
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evcntlzw = 287
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evdivws = 288
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evdivwu = 289
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case eveqv = 290
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evextsb = 291
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evextsh = 292
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsabs = 293
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsadd = 294
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscfsf = 295
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscfsi = 296
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscfuf = 297
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscfui = 298
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscmpeq = 299
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscmpgt = 300
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfscmplt = 301
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsctsf = 302
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsctsi = 303
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsctsiz = 304
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsctui = 305
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsdiv = 306
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsmul = 307
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsnabs = 308
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfsneg = 309
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfssub = 310
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfststeq = 311
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfststgt = 312
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evfststlt = 313
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evldd = 314
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlddx = 315
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evldh = 316
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evldhx = 317
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evldw = 318
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evldwx = 319
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhesplat = 320
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhesplatx = 321
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhossplat = 322
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhossplatx = 323
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhousplat = 324
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlhhousplatx = 325
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhe = 326
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhex = 327
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhos = 328
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhosx = 329
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhou = 330
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhoux = 331
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhsplat = 332
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwhsplatx = 333
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwwsplat = 334
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evlwwsplatx = 335
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmergehi = 336
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmergehilo = 337
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmergelo = 338
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmergelohi = 339
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegsmfaa = 340
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegsmfan = 341
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegsmiaa = 342
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegsmian = 343
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegumiaa = 344
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhegumian = 345
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmf = 346
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmfa = 347
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmfaaw = 348
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmfanw = 349
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmi = 350
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmia = 351
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmiaaw = 352
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhesmianw = 353
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessf = 354
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessfa = 355
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessfaaw = 356
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessfanw = 357
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessiaaw = 358
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhessianw = 359
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheumi = 360
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheumia = 361
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheumiaaw = 362
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheumianw = 363
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheusiaaw = 364
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmheusianw = 365
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogsmfaa = 366
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogsmfan = 367
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogsmiaa = 368
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogsmian = 369
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogumiaa = 370
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhogumian = 371
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmf = 372
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmfa = 373
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmfaaw = 374
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmfanw = 375
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmi = 376
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmia = 377
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmiaaw = 378
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhosmianw = 379
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossf = 380
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossfa = 381
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossfaaw = 382
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossfanw = 383
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossiaaw = 384
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhossianw = 385
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhoumi = 386
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhoumia = 387
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhoumiaaw = 388
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhoumianw = 389
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhousiaaw = 390
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmhousianw = 391
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmra = 392
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhsmf = 393
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhsmfa = 394
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhsmi = 395
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhsmia = 396
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhssf = 397
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhssfa = 398
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhumi = 399
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwhumia = 400
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlsmiaaw = 401
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlsmianw = 402
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlssiaaw = 403
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlssianw = 404
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlumi = 405
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlumia = 406
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlumiaaw = 407
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlumianw = 408
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlusiaaw = 409
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwlusianw = 410
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmf = 411
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmfa = 412
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmfaa = 413
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmfan = 414
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmi = 415
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmia = 416
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmiaa = 417
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwsmian = 418
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwssf = 419
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwssfa = 420
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwssfaa = 421
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwssfan = 422
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwumi = 423
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwumia = 424
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwumiaa = 425
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evmwumian = 426
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evnand = 427
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evneg = 428
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evnor = 429
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evor = 430
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evorc = 431
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evrlw = 432
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evrlwi = 433
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evrndw = 434
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsel = 435
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evslw = 436
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evslwi = 437
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsplatfi = 438
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsplati = 439
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsrwis = 440
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsrwiu = 441
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsrws = 442
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsrwu = 443
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstdd = 444
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstddx = 445
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstdh = 446
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstdhx = 447
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstdw = 448
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstdwx = 449
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwhe = 450
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwhex = 451
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwho = 452
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwhox = 453
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwwe = 454
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwwex = 455
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwwo = 456
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evstwwox = 457
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubfsmiaaw = 458
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubfssiaaw = 459
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubfumiaaw = 460
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubfusiaaw = 461
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubfw = 462
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evsubifw = 463
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case evxor = 464
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extsb = 465
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extsh = 466
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extsw = 467
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case extswsli = 468
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case eieio = 469
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fabs = 470
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fadd = 471
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fadds = 472
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcfid = 473
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcfids = 474
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcfidu = 475
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcfidus = 476
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcmpo = 477
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcmpu = 478
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fcpsgn = 479
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctid = 480
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctidu = 481
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctiduz = 482
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctidz = 483
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctiw = 484
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctiwu = 485
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctiwuz = 486
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fctiwz = 487
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fdiv = 488
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fdivs = 489
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmadd = 490
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmadds = 491
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmr = 492
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmsub = 493
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmsubs = 494
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmul = 495
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fmuls = 496
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fnabs = 497
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fneg = 498
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fnmadd = 499
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fnmadds = 500
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fnmsub = 501
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fnmsubs = 502
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fre = 503
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fres = 504
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frim = 505
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frin = 506
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frip = 507
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case friz = 508
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frsp = 509
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frsqrte = 510
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case frsqrtes = 511
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fsel = 512
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fsqrt = 513
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fsqrts = 514
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fsub = 515
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case fsubs = 516
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ftdiv = 517
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ftsqrt = 518
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case hashchk = 519
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case hashchkp = 520
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case hashst = 521
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case hashstp = 522
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case hrfid = 523
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icbi = 524
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icbiep = 525
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icblc = 526
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icblq = 527
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icbt = 528
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case icbtls = 529
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case iccci = 530
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case isel = 531
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case isync = 532
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbarx = 533
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbepx = 534
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbz = 535
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbzcix = 536
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbzu = 537
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbzux = 538
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lbzx = 539
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ld = 540
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldarx = 541
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldat = 542
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldbrx = 543
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldcix = 544
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldu = 545
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldux = 546
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ldx = 547
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfd = 548
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfdepx = 549
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfdu = 550
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfdux = 551
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfdx = 552
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfiwax = 553
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfiwzx = 554
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfs = 555
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfsu = 556
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfsux = 557
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lfsx = 558
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lha = 559
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lharx = 560
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhau = 561
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhaux = 562
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhax = 563
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhbrx = 564
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhepx = 565
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhz = 566
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhzcix = 567
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhzu = 568
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhzux = 569
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lhzx = 570
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lmw = 571
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lq = 572
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lqarx = 573
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lswi = 574
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvebx = 575
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvehx = 576
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvewx = 577
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvsl = 578
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvsr = 579
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvx = 580
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lvxl = 581
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwa = 582
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwarx = 583
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwat = 584
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwaux = 585
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwax = 586
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwbrx = 587
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwepx = 588
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwz = 589
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwzcix = 590
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwzu = 591
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwzux = 592
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lwzx = 593
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsd = 594
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsdx = 595
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsibzx = 596
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsihzx = 597
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsiwax = 598
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsiwzx = 599
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxssp = 600
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxsspx = 601
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxv = 602
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvb16x = 603
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvd2x = 604
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvdsx = 605
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvh8x = 606
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvkq = 607
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvl = 608
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvll = 609
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvp = 610
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvprl = 611
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvprll = 612
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvpx = 613
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrbx = 614
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrdx = 615
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrhx = 616
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrl = 617
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrll = 618
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvrwx = 619
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvw4x = 620
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvwsx = 621
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case lxvx = 622
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case maddhd = 623
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case maddhdu = 624
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case maddld = 625
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mbar = 626
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mcrf = 627
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mcrfs = 628
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mcrxr = 629
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mcrxrx = 630
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfbhrbe = 631
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfcr = 632
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfctr = 633
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfdcr = 634
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffs = 635
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffscdrn = 636
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffscdrni = 637
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffsce = 638
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffscrn = 639
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffscrni = 640
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mffsl = 641
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mflr = 642
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfmsr = 643
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfocrf = 644
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfpmr = 645
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfspr = 646
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfsr = 647
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfsrin = 648
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mftb = 649
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfvscr = 650
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfvsrd = 651
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfvsrld = 652
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mfvsrwz = 653
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case modsd = 654
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case modsw = 655
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case modud = 656
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case moduw = 657
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case msgsync = 658
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtcrf = 659
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtctr = 660
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtdcr = 661
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtfsb0 = 662
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtfsb1 = 663
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtfsf = 664
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtfsfi = 665
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtlr = 666
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtmsr = 667
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtmsrd = 668
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtocrf = 669
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtpmr = 670
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtspr = 671
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtsr = 672
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtsrin = 673
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvscr = 674
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrbm = 675
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrbmi = 676
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrd = 677
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrdd = 678
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrdm = 679
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrhm = 680
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrqm = 681
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrwa = 682
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrwm = 683
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrws = 684
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mtvsrwz = 685
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulhd = 686
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulhdu = 687
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulhw = 688
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulhwu = 689
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulld = 690
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulldo = 691
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mulli = 692
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mullw = 693
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case mullwo = 694
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case nand = 695
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case nap = 696
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case neg = 697
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case nego = 698
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case nop = 699
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case nor = 700
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case or = 701
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case orc = 702
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case ori = 703
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case oris = 704
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case paddi = 705
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pdepd = 706
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pextd = 707
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pla = 708
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plbz = 709
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pld = 710
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plfd = 711
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plfs = 712
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plha = 713
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plhz = 714
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pli = 715
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plwa = 716
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plwz = 717
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plxsd = 718
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plxssp = 719
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plxv = 720
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case plxvp = 721
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvbf16ger2 = 722
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvbf16ger2nn = 723
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvbf16ger2np = 724
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvbf16ger2pn = 725
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvbf16ger2pp = 726
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf16ger2 = 727
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf16ger2nn = 728
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf16ger2np = 729
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf16ger2pn = 730
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf16ger2pp = 731
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf32ger = 732
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf32gernn = 733
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf32gernp = 734
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf32gerpn = 735
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf32gerpp = 736
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf64ger = 737
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf64gernn = 738
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf64gernp = 739
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf64gerpn = 740
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvf64gerpp = 741
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi16ger2 = 742
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi16ger2pp = 743
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi16ger2s = 744
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi16ger2spp = 745
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi4ger8 = 746
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi4ger8pp = 747
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi8ger4 = 748
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi8ger4pp = 749
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pmxvi8ger4spp = 750
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case popcntb = 751
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case popcntd = 752
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case popcntw = 753
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case dcbzL = 754
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqL = 755
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqLu = 756
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqLux = 757
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqLx = 758
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqSt = 759
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqStu = 760
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqStux = 761
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psqStx = 762
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstb = 763
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstd = 764
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstfd = 765
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstfs = 766
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psth = 767
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstw = 768
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstxsd = 769
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstxssp = 770
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstxv = 771
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case pstxvp = 772
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psAbs = 773
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psAdd = 774
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psCmpo0 = 775
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psCmpo1 = 776
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psCmpu0 = 777
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psCmpu1 = 778
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psDiv = 779
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMadd = 780
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMadds0 = 781
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMadds1 = 782
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMerge00 = 783
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMerge01 = 784
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMerge10 = 785
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMerge11 = 786
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMr = 787
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMsub = 788
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMul = 789
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMuls0 = 790
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psMuls1 = 791
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psNabs = 792
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psNeg = 793
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psNmadd = 794
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psNmsub = 795
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psRes = 796
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psRsqrte = 797
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psSel = 798
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psSub = 799
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psSum0 = 800
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case psSum1 = 801
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvaligni = 802
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvesplati = 803
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfabs = 804
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfadd = 805
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfadds = 806
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcfid = 807
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcfids = 808
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcfidu = 809
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcfidus = 810
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcmpeq = 811
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcmpgt = 812
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcmplt = 813
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfcpsgn = 814
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctid = 815
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctidu = 816
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctiduz = 817
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctidz = 818
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctiw = 819
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctiwu = 820
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctiwuz = 821
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfctiwz = 822
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvflogical = 823
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmadd = 824
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmadds = 825
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmr = 826
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmsub = 827
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmsubs = 828
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmul = 829
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfmuls = 830
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfnabs = 831
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfneg = 832
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfnmadd = 833
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfnmadds = 834
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfnmsub = 835
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfnmsubs = 836
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfperm = 837
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfre = 838
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfres = 839
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrim = 840
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrin = 841
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrip = 842
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfriz = 843
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrsp = 844
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrsqrte = 845
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfrsqrtes = 846
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfsel = 847
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfsub = 848
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfsubs = 849
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvftstnan = 850
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxmadd = 851
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxmadds = 852
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxmul = 853
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxmuls = 854
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxcpnmadd = 855
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxcpnmadds = 856
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxmadd = 857
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxmadds = 858
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxnpmadd = 859
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvfxxnpmadds = 860
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvgpci = 861
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcdux = 862
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcduxa = 863
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcdx = 864
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcdxa = 865
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcsux = 866
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcsuxa = 867
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcsx = 868
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfcsxa = 869
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfdux = 870
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfduxa = 871
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfdx = 872
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfdxa = 873
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfiwax = 874
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfiwaxa = 875
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfiwzx = 876
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfiwzxa = 877
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfsux = 878
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfsuxa = 879
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfsx = 880
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlfsxa = 881
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlpcldx = 882
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlpclsx = 883
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlpcrdx = 884
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvlpcrsx = 885
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcdux = 886
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcduxa = 887
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcduxi = 888
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcduxia = 889
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcdx = 890
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcdxa = 891
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcdxi = 892
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcdxia = 893
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsux = 894
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsuxa = 895
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsuxi = 896
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsuxia = 897
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsx = 898
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsxa = 899
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsxi = 900
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfcsxia = 901
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfdux = 902
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfduxa = 903
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfduxi = 904
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfduxia = 905
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfdx = 906
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfdxa = 907
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfdxi = 908
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfdxia = 909
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfiwx = 910
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfiwxa = 911
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsux = 912
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsuxa = 913
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsuxi = 914
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsuxia = 915
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsx = 916
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsxa = 917
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsxi = 918
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case qvstfsxia = 919
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfci = 920
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfdi = 921
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfebb = 922
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfi = 923
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfid = 924
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rfmci = 925
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldcl = 926
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldcr = 927
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldic = 928
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldicl = 929
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldicr = 930
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case rldimi = 931
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sc = 932
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case scv = 933
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case setb = 934
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case setbc = 935
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case setbcr = 936
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case setnbc = 937
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case setnbcr = 938
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbfee = 939
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbia = 940
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbie = 941
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbieg = 942
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbmfee = 943
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbmfev = 944
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbmte = 945
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slbsync = 946
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sld = 947
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case slw = 948
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stw = 949
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwx = 950
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srad = 951
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sradi = 952
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sraw = 953
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srawi = 954
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srd = 955
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case srw = 956
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stb = 957
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbcix = 958
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbcx = 959
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbepx = 960
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbu = 961
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbux = 962
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stbx = 963
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case std = 964
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdat = 965
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdbrx = 966
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdcix = 967
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdcx = 968
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdu = 969
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdux = 970
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stdx = 971
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfd = 972
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfdepx = 973
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfdu = 974
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfdux = 975
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfdx = 976
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfiwx = 977
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfs = 978
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfsu = 979
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfsux = 980
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stfsx = 981
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sth = 982
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthbrx = 983
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthcix = 984
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthcx = 985
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthepx = 986
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthu = 987
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthux = 988
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sthx = 989
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stmw = 990
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stop = 991
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stq = 992
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stqcx = 993
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stswi = 994
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stvebx = 995
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stvehx = 996
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stvewx = 997
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stvx = 998
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stvxl = 999
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwat = 1000
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwbrx = 1001
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwcix = 1002
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwcx = 1003
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwepx = 1004
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwu = 1005
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stwux = 1006
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsd = 1007
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsdx = 1008
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsibx = 1009
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsihx = 1010
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsiwx = 1011
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxssp = 1012
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxsspx = 1013
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxv = 1014
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvb16x = 1015
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvd2x = 1016
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvh8x = 1017
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvl = 1018
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvll = 1019
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvp = 1020
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvprl = 1021
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvprll = 1022
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvpx = 1023
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrbx = 1024
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrdx = 1025
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrhx = 1026
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrl = 1027
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrll = 1028
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvrwx = 1029
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvw4x = 1030
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case stxvx = 1031
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subf = 1032
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfc = 1033
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfco = 1034
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfe = 1035
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfeo = 1036
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfic = 1037
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfme = 1038
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfmeo = 1039
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfo = 1040
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfus = 1041
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfze = 1042
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case subfzeo = 1043
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case sync = 1044
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tabort = 1045
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tabortdc = 1046
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tabortdci = 1047
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tabortwc = 1048
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tabortwci = 1049
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tbegin = 1050
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tcheck = 1051
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case td = 1052
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tdi = 1053
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tend = 1054
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbia = 1055
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbie = 1056
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbiel = 1057
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbilx = 1058
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbivax = 1059
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbld = 1060
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbli = 1061
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbre = 1062
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbsx = 1063
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbsync = 1064
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tlbwe = 1065
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case trap = 1066
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case trechkpt = 1067
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case treclaim = 1068
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tsr = 1069
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case tw = 1070
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case twi = 1071
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vabsdub = 1072
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vabsduh = 1073
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vabsduw = 1074
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddcuq = 1075
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddcuw = 1076
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddecuq = 1077
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddeuqm = 1078
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddfp = 1079
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddsbs = 1080
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddshs = 1081
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddsws = 1082
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddubm = 1083
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddubs = 1084
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vaddudm = 1085
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vadduhm = 1086
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vadduhs = 1087
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vadduqm = 1088
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vadduwm = 1089
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vadduws = 1090
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vand = 1091
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vandc = 1092
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavgsb = 1093
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavgsh = 1094
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavgsw = 1095
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavgub = 1096
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavguh = 1097
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vavguw = 1098
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vbpermd = 1099
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vbpermq = 1100
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcfsx = 1101
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcfuged = 1102
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcfux = 1103
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcipher = 1104
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcipherlast = 1105
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclrlb = 1106
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclrrb = 1107
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzb = 1108
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzd = 1109
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzdm = 1110
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzh = 1111
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzlsbb = 1112
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vclzw = 1113
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpbfp = 1114
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpeqfp = 1115
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpequb = 1116
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpequd = 1117
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpequh = 1118
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpequq = 1119
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpequw = 1120
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgefp = 1121
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtfp = 1122
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtsb = 1123
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtsd = 1124
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtsh = 1125
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtsq = 1126
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtsw = 1127
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtub = 1128
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtud = 1129
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtuh = 1130
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtuq = 1131
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpgtuw = 1132
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpneb = 1133
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpneh = 1134
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpnew = 1135
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpnezb = 1136
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpnezh = 1137
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpnezw = 1138
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpsq = 1139
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcmpuq = 1140
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcntmbb = 1141
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcntmbd = 1142
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcntmbh = 1143
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vcntmbw = 1144
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctsxs = 1145
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctuxs = 1146
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzb = 1147
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzd = 1148
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzdm = 1149
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzh = 1150
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzlsbb = 1151
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vctzw = 1152
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivesd = 1153
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivesq = 1154
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivesw = 1155
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdiveud = 1156
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdiveuq = 1157
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdiveuw = 1158
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivsd = 1159
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivsq = 1160
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivsw = 1161
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivud = 1162
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivuq = 1163
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vdivuw = 1164
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case veqv = 1165
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexpandbm = 1166
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexpanddm = 1167
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexpandhm = 1168
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexpandqm = 1169
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexpandwm = 1170
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vexptefp = 1171
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextddvlx = 1172
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextddvrx = 1173
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextdubvlx = 1174
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextdubvrx = 1175
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextduhvlx = 1176
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextduhvrx = 1177
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextduwvlx = 1178
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextduwvrx = 1179
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractbm = 1180
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractd = 1181
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractdm = 1182
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextracthm = 1183
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractqm = 1184
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractub = 1185
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractuh = 1186
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractuw = 1187
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextractwm = 1188
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsb2d = 1189
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsb2w = 1190
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsd2q = 1191
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsh2d = 1192
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsh2w = 1193
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextsw2d = 1194
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextublx = 1195
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextubrx = 1196
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextuhlx = 1197
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextuhrx = 1198
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextuwlx = 1199
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vextuwrx = 1200
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vgbbd = 1201
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vgnb = 1202
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsblx = 1203
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsbrx = 1204
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsbvlx = 1205
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsbvrx = 1206
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsd = 1207
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsdlx = 1208
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsdrx = 1209
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsertb = 1210
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsertd = 1211
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinserth = 1212
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsertw = 1213
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinshlx = 1214
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinshrx = 1215
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinshvlx = 1216
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinshvrx = 1217
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinsw = 1218
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinswlx = 1219
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinswrx = 1220
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinswvlx = 1221
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vinswvrx = 1222
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vlogefp = 1223
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaddfp = 1224
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxfp = 1225
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxsb = 1226
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxsd = 1227
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxsh = 1228
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxsw = 1229
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxub = 1230
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxud = 1231
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxuh = 1232
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmaxuw = 1233
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmhaddshs = 1234
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmhraddshs = 1235
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminfp = 1236
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminsb = 1237
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminsd = 1238
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminsh = 1239
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminsw = 1240
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminub = 1241
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminud = 1242
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminuh = 1243
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vminuw = 1244
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmladduhm = 1245
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmodsd = 1246
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmodsq = 1247
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmodsw = 1248
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmodud = 1249
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmoduq = 1250
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmoduw = 1251
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrgew = 1252
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrghb = 1253
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrghh = 1254
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrghw = 1255
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrglb = 1256
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrglh = 1257
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrglw = 1258
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmrgow = 1259
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumcud = 1260
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsummbm = 1261
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumshm = 1262
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumshs = 1263
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumubm = 1264
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumudm = 1265
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumuhm = 1266
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmsumuhs = 1267
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmul10cuq = 1268
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmul10ecuq = 1269
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmul10euq = 1270
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmul10uq = 1271
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulesb = 1272
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulesd = 1273
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulesh = 1274
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulesw = 1275
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuleub = 1276
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuleud = 1277
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuleuh = 1278
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuleuw = 1279
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulhsd = 1280
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulhsw = 1281
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulhud = 1282
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulhuw = 1283
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulld = 1284
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulosb = 1285
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulosd = 1286
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulosh = 1287
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulosw = 1288
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuloub = 1289
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuloud = 1290
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulouh = 1291
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmulouw = 1292
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vmuluwm = 1293
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vnand = 1294
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vncipher = 1295
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vncipherlast = 1296
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vnegd = 1297
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vnegw = 1298
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vnmsubfp = 1299
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vnor = 1300
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vor = 1301
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vorc = 1302
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpdepd = 1303
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vperm = 1304
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpermr = 1305
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpermxor = 1306
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpextd = 1307
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkpx = 1308
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpksdss = 1309
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpksdus = 1310
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkshss = 1311
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkshus = 1312
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkswss = 1313
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkswus = 1314
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkudum = 1315
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkudus = 1316
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkuhum = 1317
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkuhus = 1318
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkuwum = 1319
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpkuwus = 1320
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpmsumb = 1321
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpmsumd = 1322
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpmsumh = 1323
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpmsumw = 1324
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpopcntb = 1325
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpopcntd = 1326
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpopcnth = 1327
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vpopcntw = 1328
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vprtybd = 1329
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vprtybq = 1330
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vprtybw = 1331
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrefp = 1332
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrfim = 1333
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrfin = 1334
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrfip = 1335
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrfiz = 1336
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlb = 1337
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrld = 1338
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrldmi = 1339
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrldnm = 1340
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlh = 1341
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlq = 1342
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlqmi = 1343
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlqnm = 1344
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlw = 1345
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlwmi = 1346
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrlwnm = 1347
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vrsqrtefp = 1348
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsbox = 1349
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsel = 1350
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vshasigmad = 1351
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vshasigmaw = 1352
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsl = 1353
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslb = 1354
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsld = 1355
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsldbi = 1356
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsldoi = 1357
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslh = 1358
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslo = 1359
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslq = 1360
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslv = 1361
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vslw = 1362
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vspltb = 1363
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsplth = 1364
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vspltisb = 1365
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vspltish = 1366
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vspltisw = 1367
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vspltw = 1368
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsr = 1369
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrab = 1370
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrad = 1371
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrah = 1372
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsraq = 1373
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsraw = 1374
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrb = 1375
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrd = 1376
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrdbi = 1377
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrh = 1378
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsro = 1379
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrq = 1380
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrv = 1381
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsrw = 1382
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vstribl = 1383
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vstribr = 1384
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vstrihl = 1385
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vstrihr = 1386
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubcuq = 1387
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubcuw = 1388
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubecuq = 1389
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubeuqm = 1390
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubfp = 1391
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubsbs = 1392
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubshs = 1393
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubsws = 1394
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsububm = 1395
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsububs = 1396
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubudm = 1397
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubuhm = 1398
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubuhs = 1399
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubuqm = 1400
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubuwm = 1401
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsubuws = 1402
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsum2sws = 1403
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsum4sbs = 1404
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsum4shs = 1405
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsum4ubs = 1406
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vsumsws = 1407
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupkhpx = 1408
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupkhsb = 1409
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupkhsh = 1410
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupkhsw = 1411
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupklpx = 1412
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupklsb = 1413
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupklsh = 1414
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vupklsw = 1415
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case vxor = 1416
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case wait = 1417
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case wrtee = 1418
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case wrteei = 1419
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xor = 1420
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xori = 1421
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xoris = 1422
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsabsdp = 1423
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsabsqp = 1424
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsadddp = 1425
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsaddqp = 1426
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsaddqpo = 1427
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsaddsp = 1428
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpeqdp = 1429
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpeqqp = 1430
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpexpdp = 1431
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpexpqp = 1432
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpgedp = 1433
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpgeqp = 1434
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpgtdp = 1435
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpgtqp = 1436
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpodp = 1437
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpoqp = 1438
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpudp = 1439
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscmpuqp = 1440
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscpsgndp = 1441
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscpsgnqp = 1442
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdphp = 1443
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpqp = 1444
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpsp = 1445
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpspn = 1446
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpsxds = 1447
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpsxws = 1448
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpuxds = 1449
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvdpuxws = 1450
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvhpdp = 1451
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpdp = 1452
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpdpo = 1453
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpsdz = 1454
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpsqz = 1455
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpswz = 1456
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpudz = 1457
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpuqz = 1458
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvqpuwz = 1459
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvsdqp = 1460
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvspdp = 1461
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvspdpn = 1462
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvsqqp = 1463
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvsxddp = 1464
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvsxdsp = 1465
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvudqp = 1466
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvuqqp = 1467
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvuxddp = 1468
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xscvuxdsp = 1469
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsdivdp = 1470
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsdivqp = 1471
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsdivqpo = 1472
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsdivsp = 1473
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsiexpdp = 1474
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsiexpqp = 1475
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddadp = 1476
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddasp = 1477
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddmdp = 1478
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddmsp = 1479
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddqp = 1480
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaddqpo = 1481
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaxcdp = 1482
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaxcqp = 1483
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaxdp = 1484
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmaxjdp = 1485
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmincdp = 1486
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmincqp = 1487
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmindp = 1488
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsminjdp = 1489
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubadp = 1490
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubasp = 1491
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubmdp = 1492
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubmsp = 1493
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubqp = 1494
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmsubqpo = 1495
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmuldp = 1496
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmulqp = 1497
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmulqpo = 1498
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsmulsp = 1499
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnabsdp = 1500
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnabsqp = 1501
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnegdp = 1502
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnegqp = 1503
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddadp = 1504
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddasp = 1505
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddmdp = 1506
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddmsp = 1507
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddqp = 1508
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmaddqpo = 1509
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubadp = 1510
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubasp = 1511
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubmdp = 1512
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubmsp = 1513
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubqp = 1514
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsnmsubqpo = 1515
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrdpi = 1516
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrdpic = 1517
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrdpim = 1518
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrdpip = 1519
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrdpiz = 1520
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsredp = 1521
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsresp = 1522
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrqpi = 1523
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrqpix = 1524
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrqpxp = 1525
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrsp = 1526
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrsqrtedp = 1527
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsrsqrtesp = 1528
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssqrtdp = 1529
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssqrtqp = 1530
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssqrtqpo = 1531
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssqrtsp = 1532
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssubdp = 1533
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssubqp = 1534
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssubqpo = 1535
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xssubsp = 1536
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xstdivdp = 1537
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xstsqrtdp = 1538
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xststdcdp = 1539
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xststdcqp = 1540
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xststdcsp = 1541
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsxexpdp = 1542
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsxexpqp = 1543
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsxsigdp = 1544
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xsxsigqp = 1545
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvabsdp = 1546
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvabssp = 1547
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvadddp = 1548
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvaddsp = 1549
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvbf16ger2 = 1550
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvbf16ger2nn = 1551
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvbf16ger2np = 1552
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvbf16ger2pn = 1553
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvbf16ger2pp = 1554
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpeqdp = 1555
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpeqsp = 1556
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpgedp = 1557
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpgesp = 1558
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpgtdp = 1559
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcmpgtsp = 1560
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcpsgndp = 1561
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcpsgnsp = 1562
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvbf16spn = 1563
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvdpsp = 1564
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvdpsxds = 1565
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvdpsxws = 1566
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvdpuxds = 1567
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvdpuxws = 1568
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvhpsp = 1569
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspbf16 = 1570
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspdp = 1571
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvsphp = 1572
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspsxds = 1573
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspsxws = 1574
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspuxds = 1575
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvspuxws = 1576
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvsxddp = 1577
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvsxdsp = 1578
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvsxwdp = 1579
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvsxwsp = 1580
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvuxddp = 1581
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvuxdsp = 1582
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvuxwdp = 1583
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvcvuxwsp = 1584
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvdivdp = 1585
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvdivsp = 1586
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf16ger2 = 1587
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf16ger2nn = 1588
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf16ger2np = 1589
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf16ger2pn = 1590
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf16ger2pp = 1591
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf32ger = 1592
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf32gernn = 1593
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf32gernp = 1594
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf32gerpn = 1595
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf32gerpp = 1596
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf64ger = 1597
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf64gernn = 1598
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf64gernp = 1599
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf64gerpn = 1600
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvf64gerpp = 1601
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi16ger2 = 1602
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi16ger2pp = 1603
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi16ger2s = 1604
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi16ger2spp = 1605
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi4ger8 = 1606
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi4ger8pp = 1607
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi8ger4 = 1608
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi8ger4pp = 1609
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvi8ger4spp = 1610
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xviexpdp = 1611
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xviexpsp = 1612
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaddadp = 1613
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaddasp = 1614
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaddmdp = 1615
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaddmsp = 1616
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaxdp = 1617
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmaxsp = 1618
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmindp = 1619
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvminsp = 1620
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmsubadp = 1621
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmsubasp = 1622
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmsubmdp = 1623
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmsubmsp = 1624
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmuldp = 1625
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvmulsp = 1626
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnabsdp = 1627
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnabssp = 1628
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnegdp = 1629
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnegsp = 1630
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmaddadp = 1631
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmaddasp = 1632
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmaddmdp = 1633
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmaddmsp = 1634
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmsubadp = 1635
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmsubasp = 1636
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmsubmdp = 1637
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvnmsubmsp = 1638
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrdpi = 1639
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrdpic = 1640
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrdpim = 1641
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrdpip = 1642
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrdpiz = 1643
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvredp = 1644
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvresp = 1645
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrspi = 1646
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrspic = 1647
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrspim = 1648
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrspip = 1649
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrspiz = 1650
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrsqrtedp = 1651
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvrsqrtesp = 1652
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvsqrtdp = 1653
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvsqrtsp = 1654
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvsubdp = 1655
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvsubsp = 1656
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtdivdp = 1657
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtdivsp = 1658
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtlsbb = 1659
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtsqrtdp = 1660
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtsqrtsp = 1661
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtstdcdp = 1662
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvtstdcsp = 1663
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvxexpdp = 1664
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvxexpsp = 1665
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvxsigdp = 1666
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xvxsigsp = 1667
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxblendvb = 1668
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxblendvd = 1669
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxblendvh = 1670
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxblendvw = 1671
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxbrd = 1672
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxbrh = 1673
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxbrq = 1674
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxbrw = 1675
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxeval = 1676
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxextractuw = 1677
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxgenpcvbm = 1678
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxgenpcvdm = 1679
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxgenpcvhm = 1680
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxgenpcvwm = 1681
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxinsertw = 1682
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxland = 1683
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlandc = 1684
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxleqv = 1685
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlnand = 1686
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlnor = 1687
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlor = 1688
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlorc = 1689
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxlxor = 1690
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxmfacc = 1691
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxmrghw = 1692
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxmrglw = 1693
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxmtacc = 1694
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxperm = 1695
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxpermdi = 1696
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxpermr = 1697
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxpermx = 1698
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxsel = 1699
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxsetaccz = 1700
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxsldwi = 1701
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxsplti32dx = 1702
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxspltib = 1703
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxspltidp = 1704
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxspltiw = 1705
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case xxspltw = 1706
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bc = 1707
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bca = 1708
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcctr = 1709
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcctrl = 1710
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcl = 1711
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bcla = 1712
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bclr = 1713
    /// generated content <PPCGenCSInsnEnum.inc> begin clang-format off
    case bclrl = 1714
    /// clang-format on generated content <PPCGenCSInsnEnum.inc> end
    case ending = 1715
    /// clang-format on generated content <PPCGenCSInsnEnum.inc> end
    case aliasBegin = 1716
    /// Real instr.: PPC_RFEBB
    case aliasRfebb = 1717
    /// Real instr.: PPC_ADDI
    case aliasLi = 1718
    /// Real instr.: PPC_ADDIS
    case aliasLis = 1719
    /// Real instr.: PPC_OR
    case aliasMr = 1720
    /// Real instr.: PPC_OR_rec
    case aliasMr = 1721
    /// Real instr.: PPC_NOR
    case aliasNot = 1722
    /// Real instr.: PPC_NOR_rec
    case aliasNot = 1723
    /// Real instr.: PPC_ORI
    case aliasNop = 1724
    /// Real instr.: PPC_MTUDSCR
    case aliasMtudscr = 1725
    /// Real instr.: PPC_MFUDSCR
    case aliasMfudscr = 1726
    /// Real instr.: PPC_MTVRSAVE
    case aliasMtvrsave = 1727
    /// Real instr.: PPC_MFVRSAVE
    case aliasMfvrsave = 1728
    /// Real instr.: PPC_MTCRF
    case aliasMtcr = 1729
    /// Real instr.: PPC_SUBF
    case aliasSub = 1730
    /// Real instr.: PPC_SUBF_rec
    case aliasSub = 1731
    /// Real instr.: PPC_SUBFC
    case aliasSubc = 1732
    /// Real instr.: PPC_SUBFC_rec
    case aliasSubc = 1733
    /// Real instr.: PPC_VOR
    case aliasVmr = 1734
    /// Real instr.: PPC_VNOR
    case aliasVnot = 1735
    /// Real instr.: PPC_RLWINM8
    case aliasRotlwi = 1736
    /// Real instr.: PPC_RLWINM8_rec
    case aliasRotlwi = 1737
    /// Real instr.: PPC_RLWNM8
    case aliasRotlw = 1738
    /// Real instr.: PPC_RLWNM8_rec
    case aliasRotlw = 1739
    /// Real instr.: PPC_RLWINM8
    case aliasClrlwi = 1740
    /// Real instr.: PPC_RLWINM8_rec
    case aliasClrlwi = 1741
    /// Real instr.: PPC_ISEL8
    case aliasIsellt = 1742
    /// Real instr.: PPC_ISEL8
    case aliasIselgt = 1743
    /// Real instr.: PPC_ISEL8
    case aliasIseleq = 1744
    /// Real instr.: PPC_XORI8
    case aliasXnop = 1745
    /// Real instr.: PPC_CNTLZW8
    case aliasCntlzw = 1746
    /// Real instr.: PPC_CNTLZW8_rec
    case aliasCntlzw = 1747
    /// Real instr.: PPC_MTSPR8
    case aliasMtxer = 1748
    /// Real instr.: PPC_MFSPR8
    case aliasMfxer = 1749
    /// Real instr.: PPC_MFSPR8
    case aliasMfrtcu = 1750
    /// Real instr.: PPC_MFSPR8
    case aliasMfrtcl = 1751
    /// Real instr.: PPC_MTSPR8
    case aliasMtlr = 1752
    /// Real instr.: PPC_MFSPR8
    case aliasMflr = 1753
    /// Real instr.: PPC_MTSPR8
    case aliasMtctr = 1754
    /// Real instr.: PPC_MFSPR8
    case aliasMfctr = 1755
    /// Real instr.: PPC_MTSPR8
    case aliasMtuamr = 1756
    /// Real instr.: PPC_MFSPR8
    case aliasMfuamr = 1757
    /// Real instr.: PPC_MTSPR8
    case aliasMtdscr = 1758
    /// Real instr.: PPC_MFSPR8
    case aliasMfdscr = 1759
    /// Real instr.: PPC_MTSPR8
    case aliasMtdsisr = 1760
    /// Real instr.: PPC_MFSPR8
    case aliasMfdsisr = 1761
    /// Real instr.: PPC_MTSPR8
    case aliasMtdar = 1762
    /// Real instr.: PPC_MFSPR8
    case aliasMfdar = 1763
    /// Real instr.: PPC_MTSPR8
    case aliasMtdec = 1764
    /// Real instr.: PPC_MFSPR8
    case aliasMfdec = 1765
    /// Real instr.: PPC_MTSPR8
    case aliasMtsdr1 = 1766
    /// Real instr.: PPC_MFSPR8
    case aliasMfsdr1 = 1767
    /// Real instr.: PPC_MTSPR8
    case aliasMtsrr0 = 1768
    /// Real instr.: PPC_MFSPR8
    case aliasMfsrr0 = 1769
    /// Real instr.: PPC_MTSPR8
    case aliasMtsrr1 = 1770
    /// Real instr.: PPC_MFSPR8
    case aliasMfsrr1 = 1771
    /// Real instr.: PPC_MTSPR8
    case aliasMtcfar = 1772
    /// Real instr.: PPC_MFSPR8
    case aliasMfcfar = 1773
    /// Real instr.: PPC_MTSPR8
    case aliasMtamr = 1774
    /// Real instr.: PPC_MFSPR8
    case aliasMfamr = 1775
    /// Real instr.: PPC_MFSPR8
    case aliasMfsprg = 1776
    /// Real instr.: PPC_MFSPR8
    case aliasMfsprg0 = 1777
    /// Real instr.: PPC_MTSPR8
    case aliasMtsprg = 1778
    /// Real instr.: PPC_MTSPR8
    case aliasMtsprg0 = 1779
    /// Real instr.: PPC_MFSPR8
    case aliasMfsprg1 = 1780
    /// Real instr.: PPC_MTSPR8
    case aliasMtsprg1 = 1781
    /// Real instr.: PPC_MFSPR8
    case aliasMfsprg2 = 1782
    /// Real instr.: PPC_MTSPR8
    case aliasMtsprg2 = 1783
    /// Real instr.: PPC_MFSPR8
    case aliasMfsprg3 = 1784
    /// Real instr.: PPC_MTSPR8
    case aliasMtsprg3 = 1785
    /// Real instr.: PPC_MFSPR8
    case aliasMfasr = 1786
    /// Real instr.: PPC_MTSPR8
    case aliasMtasr = 1787
    /// Real instr.: PPC_MTSPR8
    case aliasMttbl = 1788
    /// Real instr.: PPC_MTSPR8
    case aliasMttbu = 1789
    /// Real instr.: PPC_MFSPR8
    case aliasMfpvr = 1790
    /// Real instr.: PPC_MFSPR8
    case aliasMfspefscr = 1791
    /// Real instr.: PPC_MTSPR8
    case aliasMtspefscr = 1792
    /// Real instr.: PPC_XVCPSGNDP
    case aliasXvmovdp = 1793
    /// Real instr.: PPC_XVCPSGNSP
    case aliasXvmovsp = 1794
    /// Real instr.: PPC_XXPERMDI
    case aliasXxspltd = 1795
    /// Real instr.: PPC_XXPERMDI
    case aliasXxmrghd = 1796
    /// Real instr.: PPC_XXPERMDI
    case aliasXxmrgld = 1797
    /// Real instr.: PPC_XXPERMDI
    case aliasXxswapd = 1798
    /// Real instr.: PPC_MFVSRD
    case aliasMffprd = 1799
    /// Real instr.: PPC_MTVSRD
    case aliasMtfprd = 1800
    /// Real instr.: PPC_MFVSRWZ
    case aliasMffprwz = 1801
    /// Real instr.: PPC_MTVSRWA
    case aliasMtfprwa = 1802
    /// Real instr.: PPC_MTVSRWZ
    case aliasMtfprwz = 1803
    /// Real instr.: PPC_TEND
    case aliasTend = 1804
    /// Real instr.: PPC_TEND
    case aliasTendall = 1805
    /// Real instr.: PPC_TSR
    case aliasTsuspend = 1806
    /// Real instr.: PPC_TSR
    case aliasTresume = 1807
    /// Real instr.: PPC_WAITP10
    case aliasWait = 1808
    /// Real instr.: PPC_WAITP10
    case aliasWaitrsv = 1809
    /// Real instr.: PPC_SYNCP10
    case aliasSync = 1810
    /// Real instr.: PPC_SYNCP10
    case aliasPtesync = 1811
    /// Real instr.: PPC_SYNCP10
    case aliasPhwsync = 1812
    /// Real instr.: PPC_SYNCP10
    case aliasPlwsync = 1813
    /// Real instr.: PPC_SYNCP10
    case aliasStncisync = 1814
    /// Real instr.: PPC_SYNCP10
    case aliasStcisync = 1815
    /// Real instr.: PPC_SYNCP10
    case aliasStsync = 1816
    /// Real instr.: PPC_PADDI8
    case aliasPaddi = 1817
    /// Real instr.: PPC_DCCCI
    case aliasDci = 1818
    /// Real instr.: PPC_DCCCI
    case aliasDccci = 1819
    /// Real instr.: PPC_ICCCI
    case aliasIci = 1820
    /// Real instr.: PPC_ICCCI
    case aliasIccci = 1821
    /// Real instr.: PPC_MTFSFI
    case aliasMtfsfi = 1822
    /// Real instr.: PPC_MTFSFI_rec
    case aliasMtfsfi = 1823
    /// Real instr.: PPC_MTFSF
    case aliasMtfsf = 1824
    /// Real instr.: PPC_MTFSF_rec
    case aliasMtfsf = 1825
    /// Real instr.: PPC_SC
    case aliasSc = 1826
    /// Real instr.: PPC_SYNC
    case aliasLwsync = 1827
    /// Real instr.: PPC_WAIT
    case aliasWaitimpl = 1828
    /// Real instr.: PPC_MBAR
    case aliasMbar = 1829
    /// Real instr.: PPC_CREQV
    case aliasCrset = 1830
    /// Real instr.: PPC_CRXOR
    case aliasCrclr = 1831
    /// Real instr.: PPC_CROR
    case aliasCrmove = 1832
    /// Real instr.: PPC_CRNOR
    case aliasCrnot = 1833
    /// Real instr.: PPC_MFTB
    case aliasMftb = 1834
    /// Real instr.: PPC_MFTB
    case aliasMftbl = 1835
    /// Real instr.: PPC_MFTB
    case aliasMftbu = 1836
    /// Real instr.: PPC_MFDCR
    case aliasMfbr0 = 1837
    /// Real instr.: PPC_MTDCR
    case aliasMtbr0 = 1838
    /// Real instr.: PPC_MFDCR
    case aliasMfbr1 = 1839
    /// Real instr.: PPC_MTDCR
    case aliasMtbr1 = 1840
    /// Real instr.: PPC_MFDCR
    case aliasMfbr2 = 1841
    /// Real instr.: PPC_MTDCR
    case aliasMtbr2 = 1842
    /// Real instr.: PPC_MFDCR
    case aliasMfbr3 = 1843
    /// Real instr.: PPC_MTDCR
    case aliasMtbr3 = 1844
    /// Real instr.: PPC_MFDCR
    case aliasMfbr4 = 1845
    /// Real instr.: PPC_MTDCR
    case aliasMtbr4 = 1846
    /// Real instr.: PPC_MFDCR
    case aliasMfbr5 = 1847
    /// Real instr.: PPC_MTDCR
    case aliasMtbr5 = 1848
    /// Real instr.: PPC_MFDCR
    case aliasMfbr6 = 1849
    /// Real instr.: PPC_MTDCR
    case aliasMtbr6 = 1850
    /// Real instr.: PPC_MFDCR
    case aliasMfbr7 = 1851
    /// Real instr.: PPC_MTDCR
    case aliasMtbr7 = 1852
    /// Real instr.: PPC_MTMSRD
    case aliasMtmsrd = 1853
    /// Real instr.: PPC_MTMSR
    case aliasMtmsr = 1854
    /// Real instr.: PPC_MTSPR
    case aliasMtpid = 1855
    /// Real instr.: PPC_MFSPR
    case aliasMfpid = 1856
    /// Real instr.: PPC_MFSPR
    case aliasMfsprg4 = 1857
    /// Real instr.: PPC_MTSPR
    case aliasMtsprg4 = 1858
    /// Real instr.: PPC_MFSPR
    case aliasMfsprg5 = 1859
    /// Real instr.: PPC_MTSPR
    case aliasMtsprg5 = 1860
    /// Real instr.: PPC_MFSPR
    case aliasMfsprg6 = 1861
    /// Real instr.: PPC_MTSPR
    case aliasMtsprg6 = 1862
    /// Real instr.: PPC_MFSPR
    case aliasMfsprg7 = 1863
    /// Real instr.: PPC_MTSPR
    case aliasMtsprg7 = 1864
    /// Real instr.: PPC_MTSPR
    case aliasMtdbatu = 1865
    /// Real instr.: PPC_MFSPR
    case aliasMfdbatu = 1866
    /// Real instr.: PPC_MTSPR
    case aliasMtdbatl = 1867
    /// Real instr.: PPC_MFSPR
    case aliasMfdbatl = 1868
    /// Real instr.: PPC_MTSPR
    case aliasMtibatu = 1869
    /// Real instr.: PPC_MFSPR
    case aliasMfibatu = 1870
    /// Real instr.: PPC_MTSPR
    case aliasMtibatl = 1871
    /// Real instr.: PPC_MFSPR
    case aliasMfibatl = 1872
    /// Real instr.: PPC_MTSPR
    case aliasMtppr = 1873
    /// Real instr.: PPC_MFSPR
    case aliasMfppr = 1874
    /// Real instr.: PPC_MTSPR
    case aliasMtesr = 1875
    /// Real instr.: PPC_MFSPR
    case aliasMfesr = 1876
    /// Real instr.: PPC_MTSPR
    case aliasMtdear = 1877
    /// Real instr.: PPC_MFSPR
    case aliasMfdear = 1878
    /// Real instr.: PPC_MTSPR
    case aliasMttcr = 1879
    /// Real instr.: PPC_MFSPR
    case aliasMftcr = 1880
    /// Real instr.: PPC_MFSPR
    case aliasMftbhi = 1881
    /// Real instr.: PPC_MTSPR
    case aliasMttbhi = 1882
    /// Real instr.: PPC_MFSPR
    case aliasMftblo = 1883
    /// Real instr.: PPC_MTSPR
    case aliasMttblo = 1884
    /// Real instr.: PPC_MTSPR
    case aliasMtsrr2 = 1885
    /// Real instr.: PPC_MFSPR
    case aliasMfsrr2 = 1886
    /// Real instr.: PPC_MTSPR
    case aliasMtsrr3 = 1887
    /// Real instr.: PPC_MFSPR
    case aliasMfsrr3 = 1888
    /// Real instr.: PPC_MTSPR
    case aliasMtdccr = 1889
    /// Real instr.: PPC_MFSPR
    case aliasMfdccr = 1890
    /// Real instr.: PPC_MTSPR
    case aliasMticcr = 1891
    /// Real instr.: PPC_MFSPR
    case aliasMficcr = 1892
    /// Real instr.: PPC_TLBIE
    case aliasTlbie = 1893
    /// Real instr.: PPC_TLBRE2
    case aliasTlbrehi = 1894
    /// Real instr.: PPC_TLBRE2
    case aliasTlbrelo = 1895
    /// Real instr.: PPC_TLBWE2
    case aliasTlbwehi = 1896
    /// Real instr.: PPC_TLBWE2
    case aliasTlbwelo = 1897
    /// Real instr.: PPC_TLBILX
    case aliasTlbilxlpid = 1898
    /// Real instr.: PPC_TLBILX
    case aliasTlbilxpid = 1899
    /// Real instr.: PPC_TLBILX
    case aliasTlbilxva = 1900
    /// Real instr.: PPC_RLDICL
    case aliasRotldi = 1901
    /// Real instr.: PPC_RLDICL_rec
    case aliasRotldi = 1902
    /// Real instr.: PPC_RLDCL
    case aliasRotld = 1903
    /// Real instr.: PPC_RLDCL_rec
    case aliasRotld = 1904
    /// Real instr.: PPC_RLDICL
    case aliasClrldi = 1905
    /// Real instr.: PPC_RLDICL_rec
    case aliasClrldi = 1906
    /// Real instr.: PPC_ADDPCIS
    case aliasLnia = 1907
    /// Real instr.: PPC_gBCat
    case aliasBcp = 1908
    /// Real instr.: PPC_gBCAat
    case aliasBcap = 1909
    /// Real instr.: PPC_gBCLat
    case aliasBclp = 1910
    /// Real instr.: PPC_gBCLAat
    case aliasBclap = 1911
    /// Real instr.: PPC_gBCat
    case aliasBcm = 1912
    /// Real instr.: PPC_gBCAat
    case aliasBcam = 1913
    /// Real instr.: PPC_gBCLat
    case aliasBclm = 1914
    /// Real instr.: PPC_gBCLAat
    case aliasBclam = 1915
    /// Real instr.: PPC_gBC
    case aliasBt = 1916
    /// Real instr.: PPC_gBCA
    case aliasBta = 1917
    /// Real instr.: PPC_gBCLR
    case aliasBtlr = 1918
    /// Real instr.: PPC_gBCL
    case aliasBtl = 1919
    /// Real instr.: PPC_gBCLA
    case aliasBtla = 1920
    /// Real instr.: PPC_gBCLRL
    case aliasBtlrl = 1921
    /// Real instr.: PPC_gBCCTR
    case aliasBtctr = 1922
    /// Real instr.: PPC_gBCCTRL
    case aliasBtctrl = 1923
    /// Real instr.: PPC_gBCLR
    case aliasBdzlr = 1924
    /// Real instr.: PPC_gBCLRL
    case aliasBdzlrl = 1925
    /// Real instr.: PPC_gBCLat
    case aliasBdzl = 1926
    /// Real instr.: PPC_gBCLAat
    case aliasBdzla = 1927
    /// Real instr.: PPC_gBCat
    case aliasBdz = 1928
    /// Real instr.: PPC_gBCLat
    case aliasBdnzl = 1929
    /// Real instr.: PPC_gBCLAat
    case aliasBdnzla = 1930
    /// Real instr.: PPC_gBCat
    case aliasBdnz = 1931
    /// Real instr.: PPC_gBCLat
    case aliasBdzlp = 1932
    /// Real instr.: PPC_gBCLAat
    case aliasBdzlap = 1933
    /// Real instr.: PPC_gBCat
    case aliasBdzp = 1934
    /// Real instr.: PPC_gBCLat
    case aliasBdnzlp = 1935
    /// Real instr.: PPC_gBCLAat
    case aliasBdnzlap = 1936
    /// Real instr.: PPC_gBCat
    case aliasBdnzp = 1937
    /// Real instr.: PPC_gBCLat
    case aliasBdzlm = 1938
    /// Real instr.: PPC_gBCLAat
    case aliasBdzlam = 1939
    /// Real instr.: PPC_gBCat
    case aliasBdzm = 1940
    /// Real instr.: PPC_gBCLat
    case aliasBdnzlm = 1941
    /// Real instr.: PPC_gBCLAat
    case aliasBdnzlam = 1942
    /// Real instr.: PPC_gBCat
    case aliasBdnzm = 1943
    /// Real instr.: PPC_gBCLR
    case aliasBdnzlr = 1944
    /// Real instr.: PPC_gBCLRL
    case aliasBdnzlrl = 1945
    /// Real instr.: PPC_gBCLR
    case aliasBdzlrp = 1946
    /// Real instr.: PPC_gBCLRL
    case aliasBdzlrlp = 1947
    /// Real instr.: PPC_gBCLR
    case aliasBdnzlrp = 1948
    /// Real instr.: PPC_gBCLRL
    case aliasBdnzlrlp = 1949
    /// Real instr.: PPC_gBCLR
    case aliasBdzlrm = 1950
    /// Real instr.: PPC_gBCLRL
    case aliasBdzlrlm = 1951
    /// Real instr.: PPC_gBCLR
    case aliasBdnzlrm = 1952
    /// Real instr.: PPC_gBCLRL
    case aliasBdnzlrlm = 1953
    /// Real instr.: PPC_gBC
    case aliasBf = 1954
    /// Real instr.: PPC_gBCA
    case aliasBfa = 1955
    /// Real instr.: PPC_gBCLR
    case aliasBflr = 1956
    /// Real instr.: PPC_gBCL
    case aliasBfl = 1957
    /// Real instr.: PPC_gBCLA
    case aliasBfla = 1958
    /// Real instr.: PPC_gBCLRL
    case aliasBflrl = 1959
    /// Real instr.: PPC_gBCCTR
    case aliasBfctr = 1960
    /// Real instr.: PPC_gBCCTRL
    case aliasBfctrl = 1961
    /// Real instr.: PPC_gBC
    case aliasBtm = 1962
    /// Real instr.: PPC_gBCA
    case aliasBtam = 1963
    /// Real instr.: PPC_gBCLR
    case aliasBtlrm = 1964
    /// Real instr.: PPC_gBCL
    case aliasBtlm = 1965
    /// Real instr.: PPC_gBCLA
    case aliasBtlam = 1966
    /// Real instr.: PPC_gBCLRL
    case aliasBtlrlm = 1967
    /// Real instr.: PPC_gBCCTR
    case aliasBtctrm = 1968
    /// Real instr.: PPC_gBCCTRL
    case aliasBtctrlm = 1969
    /// Real instr.: PPC_gBC
    case aliasBfm = 1970
    /// Real instr.: PPC_gBCA
    case aliasBfam = 1971
    /// Real instr.: PPC_gBCLR
    case aliasBflrm = 1972
    /// Real instr.: PPC_gBCL
    case aliasBflm = 1973
    /// Real instr.: PPC_gBCLA
    case aliasBflam = 1974
    /// Real instr.: PPC_gBCLRL
    case aliasBflrlm = 1975
    /// Real instr.: PPC_gBCCTR
    case aliasBfctrm = 1976
    /// Real instr.: PPC_gBCCTRL
    case aliasBfctrlm = 1977
    /// Real instr.: PPC_gBC
    case aliasBtp = 1978
    /// Real instr.: PPC_gBCA
    case aliasBtap = 1979
    /// Real instr.: PPC_gBCLR
    case aliasBtlrp = 1980
    /// Real instr.: PPC_gBCL
    case aliasBtlp = 1981
    /// Real instr.: PPC_gBCLA
    case aliasBtlap = 1982
    /// Real instr.: PPC_gBCLRL
    case aliasBtlrlp = 1983
    /// Real instr.: PPC_gBCCTR
    case aliasBtctrp = 1984
    /// Real instr.: PPC_gBCCTRL
    case aliasBtctrlp = 1985
    /// Real instr.: PPC_gBC
    case aliasBfp = 1986
    /// Real instr.: PPC_gBCA
    case aliasBfap = 1987
    /// Real instr.: PPC_gBCLR
    case aliasBflrp = 1988
    /// Real instr.: PPC_gBCL
    case aliasBflp = 1989
    /// Real instr.: PPC_gBCLA
    case aliasBflap = 1990
    /// Real instr.: PPC_gBCLRL
    case aliasBflrlp = 1991
    /// Real instr.: PPC_gBCCTR
    case aliasBfctrp = 1992
    /// Real instr.: PPC_gBCCTRL
    case aliasBfctrlp = 1993
    /// Real instr.: PPC_gBC
    case aliasBdnzt = 1994
    /// Real instr.: PPC_gBCA
    case aliasBdnzta = 1995
    /// Real instr.: PPC_gBCLR
    case aliasBdnztlr = 1996
    /// Real instr.: PPC_gBCL
    case aliasBdnztl = 1997
    /// Real instr.: PPC_gBCLA
    case aliasBdnztla = 1998
    /// Real instr.: PPC_gBCLRL
    case aliasBdnztlrl = 1999
    /// Real instr.: PPC_gBC
    case aliasBdnzf = 2000
    /// Real instr.: PPC_gBCA
    case aliasBdnzfa = 2001
    /// Real instr.: PPC_gBCLR
    case aliasBdnzflr = 2002
    /// Real instr.: PPC_gBCL
    case aliasBdnzfl = 2003
    /// Real instr.: PPC_gBCLA
    case aliasBdnzfla = 2004
    /// Real instr.: PPC_gBCLRL
    case aliasBdnzflrl = 2005
    /// Real instr.: PPC_gBC
    case aliasBdzt = 2006
    /// Real instr.: PPC_gBCA
    case aliasBdzta = 2007
    /// Real instr.: PPC_gBCLR
    case aliasBdztlr = 2008
    /// Real instr.: PPC_gBCL
    case aliasBdztl = 2009
    /// Real instr.: PPC_gBCLA
    case aliasBdztla = 2010
    /// Real instr.: PPC_gBCLRL
    case aliasBdztlrl = 2011
    /// Real instr.: PPC_gBC
    case aliasBdzf = 2012
    /// Real instr.: PPC_gBCA
    case aliasBdzfa = 2013
    /// Real instr.: PPC_gBCLR
    case aliasBdzflr = 2014
    /// Real instr.: PPC_gBCL
    case aliasBdzfl = 2015
    /// Real instr.: PPC_gBCLA
    case aliasBdzfla = 2016
    /// Real instr.: PPC_gBCLRL
    case aliasBdzflrl = 2017
    /// Real instr.: PPC_gBC
    case aliasB = 2018
    /// Real instr.: PPC_gBCA
    case aliasBa = 2019
    /// Real instr.: PPC_gBCL
    case aliasBl = 2020
    /// Real instr.: PPC_gBCLA
    case aliasBla = 2021
    /// Real instr.: PPC_gBCLR
    case aliasBlr = 2022
    /// Real instr.: PPC_gBCLRL
    case aliasBlrl = 2023
    /// Real instr.: PPC_gBCCTR
    case aliasBctr = 2024
    /// Real instr.: PPC_gBCCTRL
    case aliasBctrl = 2025
    /// Real instr.: PPC_BCC
    case aliasBlt = 2026
    /// Real instr.: PPC_BCCA
    case aliasBlta = 2027
    /// Real instr.: PPC_BCCLR
    case aliasBltlr = 2028
    /// Real instr.: PPC_BCCCTR
    case aliasBltctr = 2029
    /// Real instr.: PPC_BCCL
    case aliasBltl = 2030
    /// Real instr.: PPC_BCCLA
    case aliasBltla = 2031
    /// Real instr.: PPC_BCCLRL
    case aliasBltlrl = 2032
    /// Real instr.: PPC_BCCCTRL
    case aliasBltctrl = 2033
    /// Real instr.: PPC_BCC
    case aliasBltm = 2034
    /// Real instr.: PPC_BCCA
    case aliasBltam = 2035
    /// Real instr.: PPC_BCCLR
    case aliasBltlrm = 2036
    /// Real instr.: PPC_BCCCTR
    case aliasBltctrm = 2037
    /// Real instr.: PPC_BCCL
    case aliasBltlm = 2038
    /// Real instr.: PPC_BCCLA
    case aliasBltlam = 2039
    /// Real instr.: PPC_BCCLRL
    case aliasBltlrlm = 2040
    /// Real instr.: PPC_BCCCTRL
    case aliasBltctrlm = 2041
    /// Real instr.: PPC_BCC
    case aliasBltp = 2042
    /// Real instr.: PPC_BCCA
    case aliasBltap = 2043
    /// Real instr.: PPC_BCCLR
    case aliasBltlrp = 2044
    /// Real instr.: PPC_BCCCTR
    case aliasBltctrp = 2045
    /// Real instr.: PPC_BCCL
    case aliasBltlp = 2046
    /// Real instr.: PPC_BCCLA
    case aliasBltlap = 2047
    /// Real instr.: PPC_BCCLRL
    case aliasBltlrlp = 2048
    /// Real instr.: PPC_BCCCTRL
    case aliasBltctrlp = 2049
    /// Real instr.: PPC_BCC
    case aliasBgt = 2050
    /// Real instr.: PPC_BCCA
    case aliasBgta = 2051
    /// Real instr.: PPC_BCCLR
    case aliasBgtlr = 2052
    /// Real instr.: PPC_BCCCTR
    case aliasBgtctr = 2053
    /// Real instr.: PPC_BCCL
    case aliasBgtl = 2054
    /// Real instr.: PPC_BCCLA
    case aliasBgtla = 2055
    /// Real instr.: PPC_BCCLRL
    case aliasBgtlrl = 2056
    /// Real instr.: PPC_BCCCTRL
    case aliasBgtctrl = 2057
    /// Real instr.: PPC_BCC
    case aliasBgtm = 2058
    /// Real instr.: PPC_BCCA
    case aliasBgtam = 2059
    /// Real instr.: PPC_BCCLR
    case aliasBgtlrm = 2060
    /// Real instr.: PPC_BCCCTR
    case aliasBgtctrm = 2061
    /// Real instr.: PPC_BCCL
    case aliasBgtlm = 2062
    /// Real instr.: PPC_BCCLA
    case aliasBgtlam = 2063
    /// Real instr.: PPC_BCCLRL
    case aliasBgtlrlm = 2064
    /// Real instr.: PPC_BCCCTRL
    case aliasBgtctrlm = 2065
    /// Real instr.: PPC_BCC
    case aliasBgtp = 2066
    /// Real instr.: PPC_BCCA
    case aliasBgtap = 2067
    /// Real instr.: PPC_BCCLR
    case aliasBgtlrp = 2068
    /// Real instr.: PPC_BCCCTR
    case aliasBgtctrp = 2069
    /// Real instr.: PPC_BCCL
    case aliasBgtlp = 2070
    /// Real instr.: PPC_BCCLA
    case aliasBgtlap = 2071
    /// Real instr.: PPC_BCCLRL
    case aliasBgtlrlp = 2072
    /// Real instr.: PPC_BCCCTRL
    case aliasBgtctrlp = 2073
    /// Real instr.: PPC_BCC
    case aliasBeq = 2074
    /// Real instr.: PPC_BCCA
    case aliasBeqa = 2075
    /// Real instr.: PPC_BCCLR
    case aliasBeqlr = 2076
    /// Real instr.: PPC_BCCCTR
    case aliasBeqctr = 2077
    /// Real instr.: PPC_BCCL
    case aliasBeql = 2078
    /// Real instr.: PPC_BCCLA
    case aliasBeqla = 2079
    /// Real instr.: PPC_BCCLRL
    case aliasBeqlrl = 2080
    /// Real instr.: PPC_BCCCTRL
    case aliasBeqctrl = 2081
    /// Real instr.: PPC_BCC
    case aliasBeqm = 2082
    /// Real instr.: PPC_BCCA
    case aliasBeqam = 2083
    /// Real instr.: PPC_BCCLR
    case aliasBeqlrm = 2084
    /// Real instr.: PPC_BCCCTR
    case aliasBeqctrm = 2085
    /// Real instr.: PPC_BCCL
    case aliasBeqlm = 2086
    /// Real instr.: PPC_BCCLA
    case aliasBeqlam = 2087
    /// Real instr.: PPC_BCCLRL
    case aliasBeqlrlm = 2088
    /// Real instr.: PPC_BCCCTRL
    case aliasBeqctrlm = 2089
    /// Real instr.: PPC_BCC
    case aliasBeqp = 2090
    /// Real instr.: PPC_BCCA
    case aliasBeqap = 2091
    /// Real instr.: PPC_BCCLR
    case aliasBeqlrp = 2092
    /// Real instr.: PPC_BCCCTR
    case aliasBeqctrp = 2093
    /// Real instr.: PPC_BCCL
    case aliasBeqlp = 2094
    /// Real instr.: PPC_BCCLA
    case aliasBeqlap = 2095
    /// Real instr.: PPC_BCCLRL
    case aliasBeqlrlp = 2096
    /// Real instr.: PPC_BCCCTRL
    case aliasBeqctrlp = 2097
    /// Real instr.: PPC_BCC
    case aliasBun = 2098
    /// Real instr.: PPC_BCCA
    case aliasBuna = 2099
    /// Real instr.: PPC_BCCLR
    case aliasBunlr = 2100
    /// Real instr.: PPC_BCCCTR
    case aliasBunctr = 2101
    /// Real instr.: PPC_BCCL
    case aliasBunl = 2102
    /// Real instr.: PPC_BCCLA
    case aliasBunla = 2103
    /// Real instr.: PPC_BCCLRL
    case aliasBunlrl = 2104
    /// Real instr.: PPC_BCCCTRL
    case aliasBunctrl = 2105
    /// Real instr.: PPC_BCC
    case aliasBunm = 2106
    /// Real instr.: PPC_BCCA
    case aliasBunam = 2107
    /// Real instr.: PPC_BCCLR
    case aliasBunlrm = 2108
    /// Real instr.: PPC_BCCCTR
    case aliasBunctrm = 2109
    /// Real instr.: PPC_BCCL
    case aliasBunlm = 2110
    /// Real instr.: PPC_BCCLA
    case aliasBunlam = 2111
    /// Real instr.: PPC_BCCLRL
    case aliasBunlrlm = 2112
    /// Real instr.: PPC_BCCCTRL
    case aliasBunctrlm = 2113
    /// Real instr.: PPC_BCC
    case aliasBunp = 2114
    /// Real instr.: PPC_BCCA
    case aliasBunap = 2115
    /// Real instr.: PPC_BCCLR
    case aliasBunlrp = 2116
    /// Real instr.: PPC_BCCCTR
    case aliasBunctrp = 2117
    /// Real instr.: PPC_BCCL
    case aliasBunlp = 2118
    /// Real instr.: PPC_BCCLA
    case aliasBunlap = 2119
    /// Real instr.: PPC_BCCLRL
    case aliasBunlrlp = 2120
    /// Real instr.: PPC_BCCCTRL
    case aliasBunctrlp = 2121
    /// Real instr.: PPC_BCC
    case aliasBso = 2122
    /// Real instr.: PPC_BCCA
    case aliasBsoa = 2123
    /// Real instr.: PPC_BCCLR
    case aliasBsolr = 2124
    /// Real instr.: PPC_BCCCTR
    case aliasBsoctr = 2125
    /// Real instr.: PPC_BCCL
    case aliasBsol = 2126
    /// Real instr.: PPC_BCCLA
    case aliasBsola = 2127
    /// Real instr.: PPC_BCCLRL
    case aliasBsolrl = 2128
    /// Real instr.: PPC_BCCCTRL
    case aliasBsoctrl = 2129
    /// Real instr.: PPC_BCC
    case aliasBsom = 2130
    /// Real instr.: PPC_BCCA
    case aliasBsoam = 2131
    /// Real instr.: PPC_BCCLR
    case aliasBsolrm = 2132
    /// Real instr.: PPC_BCCCTR
    case aliasBsoctrm = 2133
    /// Real instr.: PPC_BCCL
    case aliasBsolm = 2134
    /// Real instr.: PPC_BCCLA
    case aliasBsolam = 2135
    /// Real instr.: PPC_BCCLRL
    case aliasBsolrlm = 2136
    /// Real instr.: PPC_BCCCTRL
    case aliasBsoctrlm = 2137
    /// Real instr.: PPC_BCC
    case aliasBsop = 2138
    /// Real instr.: PPC_BCCA
    case aliasBsoap = 2139
    /// Real instr.: PPC_BCCLR
    case aliasBsolrp = 2140
    /// Real instr.: PPC_BCCCTR
    case aliasBsoctrp = 2141
    /// Real instr.: PPC_BCCL
    case aliasBsolp = 2142
    /// Real instr.: PPC_BCCLA
    case aliasBsolap = 2143
    /// Real instr.: PPC_BCCLRL
    case aliasBsolrlp = 2144
    /// Real instr.: PPC_BCCCTRL
    case aliasBsoctrlp = 2145
    /// Real instr.: PPC_BCC
    case aliasBge = 2146
    /// Real instr.: PPC_BCCA
    case aliasBgea = 2147
    /// Real instr.: PPC_BCCLR
    case aliasBgelr = 2148
    /// Real instr.: PPC_BCCCTR
    case aliasBgectr = 2149
    /// Real instr.: PPC_BCCL
    case aliasBgel = 2150
    /// Real instr.: PPC_BCCLA
    case aliasBgela = 2151
    /// Real instr.: PPC_BCCLRL
    case aliasBgelrl = 2152
    /// Real instr.: PPC_BCCCTRL
    case aliasBgectrl = 2153
    /// Real instr.: PPC_BCC
    case aliasBgem = 2154
    /// Real instr.: PPC_BCCA
    case aliasBgeam = 2155
    /// Real instr.: PPC_BCCLR
    case aliasBgelrm = 2156
    /// Real instr.: PPC_BCCCTR
    case aliasBgectrm = 2157
    /// Real instr.: PPC_BCCL
    case aliasBgelm = 2158
    /// Real instr.: PPC_BCCLA
    case aliasBgelam = 2159
    /// Real instr.: PPC_BCCLRL
    case aliasBgelrlm = 2160
    /// Real instr.: PPC_BCCCTRL
    case aliasBgectrlm = 2161
    /// Real instr.: PPC_BCC
    case aliasBgep = 2162
    /// Real instr.: PPC_BCCA
    case aliasBgeap = 2163
    /// Real instr.: PPC_BCCLR
    case aliasBgelrp = 2164
    /// Real instr.: PPC_BCCCTR
    case aliasBgectrp = 2165
    /// Real instr.: PPC_BCCL
    case aliasBgelp = 2166
    /// Real instr.: PPC_BCCLA
    case aliasBgelap = 2167
    /// Real instr.: PPC_BCCLRL
    case aliasBgelrlp = 2168
    /// Real instr.: PPC_BCCCTRL
    case aliasBgectrlp = 2169
    /// Real instr.: PPC_BCC
    case aliasBnl = 2170
    /// Real instr.: PPC_BCCA
    case aliasBnla = 2171
    /// Real instr.: PPC_BCCLR
    case aliasBnllr = 2172
    /// Real instr.: PPC_BCCCTR
    case aliasBnlctr = 2173
    /// Real instr.: PPC_BCCL
    case aliasBnll = 2174
    /// Real instr.: PPC_BCCLA
    case aliasBnlla = 2175
    /// Real instr.: PPC_BCCLRL
    case aliasBnllrl = 2176
    /// Real instr.: PPC_BCCCTRL
    case aliasBnlctrl = 2177
    /// Real instr.: PPC_BCC
    case aliasBnlm = 2178
    /// Real instr.: PPC_BCCA
    case aliasBnlam = 2179
    /// Real instr.: PPC_BCCLR
    case aliasBnllrm = 2180
    /// Real instr.: PPC_BCCCTR
    case aliasBnlctrm = 2181
    /// Real instr.: PPC_BCCL
    case aliasBnllm = 2182
    /// Real instr.: PPC_BCCLA
    case aliasBnllam = 2183
    /// Real instr.: PPC_BCCLRL
    case aliasBnllrlm = 2184
    /// Real instr.: PPC_BCCCTRL
    case aliasBnlctrlm = 2185
    /// Real instr.: PPC_BCC
    case aliasBnlp = 2186
    /// Real instr.: PPC_BCCA
    case aliasBnlap = 2187
    /// Real instr.: PPC_BCCLR
    case aliasBnllrp = 2188
    /// Real instr.: PPC_BCCCTR
    case aliasBnlctrp = 2189
    /// Real instr.: PPC_BCCL
    case aliasBnllp = 2190
    /// Real instr.: PPC_BCCLA
    case aliasBnllap = 2191
    /// Real instr.: PPC_BCCLRL
    case aliasBnllrlp = 2192
    /// Real instr.: PPC_BCCCTRL
    case aliasBnlctrlp = 2193
    /// Real instr.: PPC_BCC
    case aliasBle = 2194
    /// Real instr.: PPC_BCCA
    case aliasBlea = 2195
    /// Real instr.: PPC_BCCLR
    case aliasBlelr = 2196
    /// Real instr.: PPC_BCCCTR
    case aliasBlectr = 2197
    /// Real instr.: PPC_BCCL
    case aliasBlel = 2198
    /// Real instr.: PPC_BCCLA
    case aliasBlela = 2199
    /// Real instr.: PPC_BCCLRL
    case aliasBlelrl = 2200
    /// Real instr.: PPC_BCCCTRL
    case aliasBlectrl = 2201
    /// Real instr.: PPC_BCC
    case aliasBlem = 2202
    /// Real instr.: PPC_BCCA
    case aliasBleam = 2203
    /// Real instr.: PPC_BCCLR
    case aliasBlelrm = 2204
    /// Real instr.: PPC_BCCCTR
    case aliasBlectrm = 2205
    /// Real instr.: PPC_BCCL
    case aliasBlelm = 2206
    /// Real instr.: PPC_BCCLA
    case aliasBlelam = 2207
    /// Real instr.: PPC_BCCLRL
    case aliasBlelrlm = 2208
    /// Real instr.: PPC_BCCCTRL
    case aliasBlectrlm = 2209
    /// Real instr.: PPC_BCC
    case aliasBlep = 2210
    /// Real instr.: PPC_BCCA
    case aliasBleap = 2211
    /// Real instr.: PPC_BCCLR
    case aliasBlelrp = 2212
    /// Real instr.: PPC_BCCCTR
    case aliasBlectrp = 2213
    /// Real instr.: PPC_BCCL
    case aliasBlelp = 2214
    /// Real instr.: PPC_BCCLA
    case aliasBlelap = 2215
    /// Real instr.: PPC_BCCLRL
    case aliasBlelrlp = 2216
    /// Real instr.: PPC_BCCCTRL
    case aliasBlectrlp = 2217
    /// Real instr.: PPC_BCC
    case aliasBng = 2218
    /// Real instr.: PPC_BCCA
    case aliasBnga = 2219
    /// Real instr.: PPC_BCCLR
    case aliasBnglr = 2220
    /// Real instr.: PPC_BCCCTR
    case aliasBngctr = 2221
    /// Real instr.: PPC_BCCL
    case aliasBngl = 2222
    /// Real instr.: PPC_BCCLA
    case aliasBngla = 2223
    /// Real instr.: PPC_BCCLRL
    case aliasBnglrl = 2224
    /// Real instr.: PPC_BCCCTRL
    case aliasBngctrl = 2225
    /// Real instr.: PPC_BCC
    case aliasBngm = 2226
    /// Real instr.: PPC_BCCA
    case aliasBngam = 2227
    /// Real instr.: PPC_BCCLR
    case aliasBnglrm = 2228
    /// Real instr.: PPC_BCCCTR
    case aliasBngctrm = 2229
    /// Real instr.: PPC_BCCL
    case aliasBnglm = 2230
    /// Real instr.: PPC_BCCLA
    case aliasBnglam = 2231
    /// Real instr.: PPC_BCCLRL
    case aliasBnglrlm = 2232
    /// Real instr.: PPC_BCCCTRL
    case aliasBngctrlm = 2233
    /// Real instr.: PPC_BCC
    case aliasBngp = 2234
    /// Real instr.: PPC_BCCA
    case aliasBngap = 2235
    /// Real instr.: PPC_BCCLR
    case aliasBnglrp = 2236
    /// Real instr.: PPC_BCCCTR
    case aliasBngctrp = 2237
    /// Real instr.: PPC_BCCL
    case aliasBnglp = 2238
    /// Real instr.: PPC_BCCLA
    case aliasBnglap = 2239
    /// Real instr.: PPC_BCCLRL
    case aliasBnglrlp = 2240
    /// Real instr.: PPC_BCCCTRL
    case aliasBngctrlp = 2241
    /// Real instr.: PPC_BCC
    case aliasBne = 2242
    /// Real instr.: PPC_BCCA
    case aliasBnea = 2243
    /// Real instr.: PPC_BCCLR
    case aliasBnelr = 2244
    /// Real instr.: PPC_BCCCTR
    case aliasBnectr = 2245
    /// Real instr.: PPC_BCCL
    case aliasBnel = 2246
    /// Real instr.: PPC_BCCLA
    case aliasBnela = 2247
    /// Real instr.: PPC_BCCLRL
    case aliasBnelrl = 2248
    /// Real instr.: PPC_BCCCTRL
    case aliasBnectrl = 2249
    /// Real instr.: PPC_BCC
    case aliasBnem = 2250
    /// Real instr.: PPC_BCCA
    case aliasBneam = 2251
    /// Real instr.: PPC_BCCLR
    case aliasBnelrm = 2252
    /// Real instr.: PPC_BCCCTR
    case aliasBnectrm = 2253
    /// Real instr.: PPC_BCCL
    case aliasBnelm = 2254
    /// Real instr.: PPC_BCCLA
    case aliasBnelam = 2255
    /// Real instr.: PPC_BCCLRL
    case aliasBnelrlm = 2256
    /// Real instr.: PPC_BCCCTRL
    case aliasBnectrlm = 2257
    /// Real instr.: PPC_BCC
    case aliasBnep = 2258
    /// Real instr.: PPC_BCCA
    case aliasBneap = 2259
    /// Real instr.: PPC_BCCLR
    case aliasBnelrp = 2260
    /// Real instr.: PPC_BCCCTR
    case aliasBnectrp = 2261
    /// Real instr.: PPC_BCCL
    case aliasBnelp = 2262
    /// Real instr.: PPC_BCCLA
    case aliasBnelap = 2263
    /// Real instr.: PPC_BCCLRL
    case aliasBnelrlp = 2264
    /// Real instr.: PPC_BCCCTRL
    case aliasBnectrlp = 2265
    /// Real instr.: PPC_BCC
    case aliasBnu = 2266
    /// Real instr.: PPC_BCCA
    case aliasBnua = 2267
    /// Real instr.: PPC_BCCLR
    case aliasBnulr = 2268
    /// Real instr.: PPC_BCCCTR
    case aliasBnuctr = 2269
    /// Real instr.: PPC_BCCL
    case aliasBnul = 2270
    /// Real instr.: PPC_BCCLA
    case aliasBnula = 2271
    /// Real instr.: PPC_BCCLRL
    case aliasBnulrl = 2272
    /// Real instr.: PPC_BCCCTRL
    case aliasBnuctrl = 2273
    /// Real instr.: PPC_BCC
    case aliasBnum = 2274
    /// Real instr.: PPC_BCCA
    case aliasBnuam = 2275
    /// Real instr.: PPC_BCCLR
    case aliasBnulrm = 2276
    /// Real instr.: PPC_BCCCTR
    case aliasBnuctrm = 2277
    /// Real instr.: PPC_BCCL
    case aliasBnulm = 2278
    /// Real instr.: PPC_BCCLA
    case aliasBnulam = 2279
    /// Real instr.: PPC_BCCLRL
    case aliasBnulrlm = 2280
    /// Real instr.: PPC_BCCCTRL
    case aliasBnuctrlm = 2281
    /// Real instr.: PPC_BCC
    case aliasBnup = 2282
    /// Real instr.: PPC_BCCA
    case aliasBnuap = 2283
    /// Real instr.: PPC_BCCLR
    case aliasBnulrp = 2284
    /// Real instr.: PPC_BCCCTR
    case aliasBnuctrp = 2285
    /// Real instr.: PPC_BCCL
    case aliasBnulp = 2286
    /// Real instr.: PPC_BCCLA
    case aliasBnulap = 2287
    /// Real instr.: PPC_BCCLRL
    case aliasBnulrlp = 2288
    /// Real instr.: PPC_BCCCTRL
    case aliasBnuctrlp = 2289
    /// Real instr.: PPC_BCC
    case aliasBns = 2290
    /// Real instr.: PPC_BCCA
    case aliasBnsa = 2291
    /// Real instr.: PPC_BCCLR
    case aliasBnslr = 2292
    /// Real instr.: PPC_BCCCTR
    case aliasBnsctr = 2293
    /// Real instr.: PPC_BCCL
    case aliasBnsl = 2294
    /// Real instr.: PPC_BCCLA
    case aliasBnsla = 2295
    /// Real instr.: PPC_BCCLRL
    case aliasBnslrl = 2296
    /// Real instr.: PPC_BCCCTRL
    case aliasBnsctrl = 2297
    /// Real instr.: PPC_BCC
    case aliasBnsm = 2298
    /// Real instr.: PPC_BCCA
    case aliasBnsam = 2299
    /// Real instr.: PPC_BCCLR
    case aliasBnslrm = 2300
    /// Real instr.: PPC_BCCCTR
    case aliasBnsctrm = 2301
    /// Real instr.: PPC_BCCL
    case aliasBnslm = 2302
    /// Real instr.: PPC_BCCLA
    case aliasBnslam = 2303
    /// Real instr.: PPC_BCCLRL
    case aliasBnslrlm = 2304
    /// Real instr.: PPC_BCCCTRL
    case aliasBnsctrlm = 2305
    /// Real instr.: PPC_BCC
    case aliasBnsp = 2306
    /// Real instr.: PPC_BCCA
    case aliasBnsap = 2307
    /// Real instr.: PPC_BCCLR
    case aliasBnslrp = 2308
    /// Real instr.: PPC_BCCCTR
    case aliasBnsctrp = 2309
    /// Real instr.: PPC_BCCL
    case aliasBnslp = 2310
    /// Real instr.: PPC_BCCLA
    case aliasBnslap = 2311
    /// Real instr.: PPC_BCCLRL
    case aliasBnslrlp = 2312
    /// Real instr.: PPC_BCCCTRL
    case aliasBnsctrlp = 2313
    /// Real instr.: PPC_CMPWI
    case aliasCmpwi = 2314
    /// Real instr.: PPC_CMPW
    case aliasCmpw = 2315
    /// Real instr.: PPC_CMPLWI
    case aliasCmplwi = 2316
    /// Real instr.: PPC_CMPLW
    case aliasCmplw = 2317
    /// Real instr.: PPC_CMPDI
    case aliasCmpdi = 2318
    /// Real instr.: PPC_CMPD
    case aliasCmpd = 2319
    /// Real instr.: PPC_CMPLDI
    case aliasCmpldi = 2320
    /// Real instr.: PPC_CMPLD
    case aliasCmpld = 2321
    /// Real instr.: PPC_CMPWI
    case aliasCmpi = 2322
    /// Real instr.: PPC_CMPW
    case aliasCmp = 2323
    /// Real instr.: PPC_CMPLWI
    case aliasCmpli = 2324
    /// Real instr.: PPC_CMPLW
    case aliasCmpl = 2325
    /// Real instr.: PPC_TW
    case aliasTrap = 2326
    /// Real instr.: PPC_TDI
    case aliasTdlti = 2327
    /// Real instr.: PPC_TD
    case aliasTdlt = 2328
    /// Real instr.: PPC_TWI
    case aliasTwlti = 2329
    /// Real instr.: PPC_TW
    case aliasTwlt = 2330
    /// Real instr.: PPC_TDI
    case aliasTdlei = 2331
    /// Real instr.: PPC_TD
    case aliasTdle = 2332
    /// Real instr.: PPC_TWI
    case aliasTwlei = 2333
    /// Real instr.: PPC_TW
    case aliasTwle = 2334
    /// Real instr.: PPC_TDI
    case aliasTdeqi = 2335
    /// Real instr.: PPC_TD
    case aliasTdeq = 2336
    /// Real instr.: PPC_TWI
    case aliasTweqi = 2337
    /// Real instr.: PPC_TW
    case aliasTweq = 2338
    /// Real instr.: PPC_TDI
    case aliasTdgei = 2339
    /// Real instr.: PPC_TD
    case aliasTdge = 2340
    /// Real instr.: PPC_TWI
    case aliasTwgei = 2341
    /// Real instr.: PPC_TW
    case aliasTwge = 2342
    /// Real instr.: PPC_TDI
    case aliasTdgti = 2343
    /// Real instr.: PPC_TD
    case aliasTdgt = 2344
    /// Real instr.: PPC_TWI
    case aliasTwgti = 2345
    /// Real instr.: PPC_TW
    case aliasTwgt = 2346
    /// Real instr.: PPC_TDI
    case aliasTdnli = 2347
    /// Real instr.: PPC_TD
    case aliasTdnl = 2348
    /// Real instr.: PPC_TWI
    case aliasTwnli = 2349
    /// Real instr.: PPC_TW
    case aliasTwnl = 2350
    /// Real instr.: PPC_TDI
    case aliasTdnei = 2351
    /// Real instr.: PPC_TD
    case aliasTdne = 2352
    /// Real instr.: PPC_TWI
    case aliasTwnei = 2353
    /// Real instr.: PPC_TW
    case aliasTwne = 2354
    /// Real instr.: PPC_TDI
    case aliasTdngi = 2355
    /// Real instr.: PPC_TD
    case aliasTdng = 2356
    /// Real instr.: PPC_TWI
    case aliasTwngi = 2357
    /// Real instr.: PPC_TW
    case aliasTwng = 2358
    /// Real instr.: PPC_TDI
    case aliasTdllti = 2359
    /// Real instr.: PPC_TD
    case aliasTdllt = 2360
    /// Real instr.: PPC_TWI
    case aliasTwllti = 2361
    /// Real instr.: PPC_TW
    case aliasTwllt = 2362
    /// Real instr.: PPC_TDI
    case aliasTdllei = 2363
    /// Real instr.: PPC_TD
    case aliasTdlle = 2364
    /// Real instr.: PPC_TWI
    case aliasTwllei = 2365
    /// Real instr.: PPC_TW
    case aliasTwlle = 2366
    /// Real instr.: PPC_TDI
    case aliasTdlgei = 2367
    /// Real instr.: PPC_TD
    case aliasTdlge = 2368
    /// Real instr.: PPC_TWI
    case aliasTwlgei = 2369
    /// Real instr.: PPC_TW
    case aliasTwlge = 2370
    /// Real instr.: PPC_TDI
    case aliasTdlgti = 2371
    /// Real instr.: PPC_TD
    case aliasTdlgt = 2372
    /// Real instr.: PPC_TWI
    case aliasTwlgti = 2373
    /// Real instr.: PPC_TW
    case aliasTwlgt = 2374
    /// Real instr.: PPC_TDI
    case aliasTdlnli = 2375
    /// Real instr.: PPC_TD
    case aliasTdlnl = 2376
    /// Real instr.: PPC_TWI
    case aliasTwlnli = 2377
    /// Real instr.: PPC_TW
    case aliasTwlnl = 2378
    /// Real instr.: PPC_TDI
    case aliasTdlngi = 2379
    /// Real instr.: PPC_TD
    case aliasTdlng = 2380
    /// Real instr.: PPC_TWI
    case aliasTwlngi = 2381
    /// Real instr.: PPC_TW
    case aliasTwlng = 2382
    /// Real instr.: PPC_TDI
    case aliasTdui = 2383
    /// Real instr.: PPC_TD
    case aliasTdu = 2384
    /// Real instr.: PPC_TWI
    case aliasTwui = 2385
    /// Real instr.: PPC_TW
    case aliasTwu = 2386
    /// Real instr.: PPC_CP_PASTE_rec
    case aliasPaste = 2387
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfclr = 2388
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfand = 2389
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfandc = 2390
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfctfb = 2391
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfxor = 2392
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfor = 2393
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfnor = 2394
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfequ = 2395
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfnot = 2396
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvforc = 2397
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfnand = 2398
    /// Real instr.: PPC_QVFLOGICALb
    case aliasQvfset = 2399
    /// Real instr.: PPC_RLWINM
    case aliasSlwi = 2400
    /// Real instr.: PPC_RLWINM
    case aliasSrwi = 2401
    /// Real instr.: PPC_RLDICR
    case aliasSldi = 2402
    case aliasEnd = 2403
}

/// PPC instruction formats. To get details about them please refer to `PPCInstrFormats.td` in LLVM.
public enum PpcInsnForm: UInt32 {
    case invalid = 0
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dform2R0 = 1
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xoform1 = 2
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23formRtab5Cy2 = 3
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dformBase = 4
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dxform = 5
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformBaseR3XoSwapped = 6
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dform4 = 7
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformAttn = 8
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case iform = 9
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxRd5Rsp5Ps1Xo9 = 10
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxRd5Eo5Rs5Ps1Xo9 = 11
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxform1 = 12
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xlform2 = 13
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case evxform1 = 14
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformBaseR3Xo = 15
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform16 = 16
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dform5 = 17
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xBf3Rs5Rs5 = 18
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xBf3L1Rs5Rs5 = 19
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xlform1 = 20
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform45 = 21
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dcbForm = 22
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dcbFormHint = 23
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform17 = 24
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformSp2Frtb5 = 25
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformS1Frtb5 = 26
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformAtb3 = 27
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformAt3 = 28
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2formAt3Xbp5P2 = 29
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3formAt3Xabp5P1 = 30
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23formFrtab5Rmc2 = 31
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23formFrtb5R1Rmc2 = 32
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z22formFrta5Sh6 = 33
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dssForm = 34
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z22formBf3Fra5Dcm6 = 35
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformBf3Uim6Frb5 = 36
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case efxform1 = 37
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case efxform3 = 38
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case evxform3 = 39
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case evxformD = 40
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case evxform4 = 41
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xsform1 = 42
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform24Sync = 43
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case aform1 = 44
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformXd6Ra5Rb5 = 45
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformIcbt = 46
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case aform4 = 47
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dsform1 = 48
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dqformRtp5Ra17Mem = 49
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx1form = 50
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dqRd6Rs5Dq12 = 51
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformXt6Imm5 = 52
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dqformXtp5Ra17Mem = 53
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformmemop = 54
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vaform1A = 55
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformMbar = 56
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xlform3 = 57
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xfxform3P = 58
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xfxform3 = 59
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xfxform1 = 60
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xfxform5A = 61
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformSr = 62
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformSrin = 63
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxform4 = 64
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xfxform5 = 65
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xflform1 = 66
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xlform4 = 67
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformMtmsr = 68
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxform5 = 69
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformRd5Xo5Rs5 = 70
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case dcbzlForm = 71
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case psformQd = 72
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case psformQi = 73
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case psformY = 74
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case psformX = 75
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case psformC = 76
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23form1 = 77
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform18 = 78
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform20 = 79
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23form3 = 80
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xlformS = 81
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case mdsform1 = 82
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case mdform1 = 83
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case mform2 = 84
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case mform1 = 85
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case scform = 86
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform44 = 87
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xoformRtab5L1 = 88
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformImm3Imm2 = 89
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformHtm0 = 90
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformHtm3 = 91
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformHtm1 = 92
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformTlbws = 93
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xform24 = 94
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformHtm2 = 95
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxform2 = 96
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxrform1 = 97
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformBf3Vab5 = 98
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformRd5MpVb5 = 99
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformRd5N3Vb5 = 100
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vaform1 = 101
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformBx = 102
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformCr = 103
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vnformVtab5Sd3 = 104
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vaform2 = 105
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxform3 = 106
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case vxformVtb5Rc = 107
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformImm2Imm2 = 108
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case requires = 109
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2form = 110
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3form = 111
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3form1 = 112
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Rd6Xo5Rs6 = 113
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case z23form8 = 114
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2form1 = 115
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Bf3Dcmx7Rs6 = 116
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xBf3Dcmx7Rs5 = 117
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Rd5Xo5Rs6 = 118
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3formAt3Xab6 = 119
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3formRc = 120
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Bf3Xo5Xb6Xo9 = 121
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Rd6Dcmx7Rs6 = 122
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2Rd6Uim5Rs6 = 123
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xformXt6Imm5Vb5 = 124
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx3form2 = 125
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx4form = 126
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xRd6Imm8 = 127
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case xx2form2 = 128
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case bform3 = 129
    /// generated content <PPCGenCSInsnFormatsEnum.inc> begin clang-format off
    case bform3At = 130
}

/// Operand type for instruction's operands
public struct PpcOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Uninitialized.
    public static let invalid: PpcOp = []
    /// Register operand.
    public static let reg = PpcOp(rawValue: 1)
    /// Immediate operand.
    public static let imm = PpcOp(rawValue: 2)
    /// Memory operand.
    public static let mem = PpcOp(rawValue: 128)
}

/// Enum was moved from PPCPredicates.h so we do not have duplicates.
public enum PpcPred: UInt32 {
    /// Name | BI | BO
    case ge = 4
    /// Reserved
    case geReserved = 5
    /// Likely not taken
    case geMinus = 6
    /// Likely taken
    case gePlus = 7
    /// Name | BI | BO
    case lt = 12
    /// Reserved
    case ltReserved = 13
    /// Likely not taken
    case ltMinus = 14
    /// Likely taken
    case ltPlus = 15
    /// CTR predicates
    case nz = 16
    /// Reserved
    case nzReserved = 17
    /// CTR predicates
    case z = 18
    /// Reserved
    case zReserved = 19
    /// Likely not taken
    case nzMinus = 24
    /// Likely taken
    case nzPlus = 25
    /// Likely not taken
    case zMinus = 26
    /// Likely taken
    case zPlus = 27
    /// Name | BI | BO
    case le = 36
    /// Reserved
    case leReserved = 37
    /// Likely not taken
    case leMinus = 38
    /// Likely taken
    case lePlus = 39
    /// Name | BI | BO
    case gt = 44
    /// SPE scalar compare instructions always set the GT bit.
    public static let spe = 44
    /// Reserved
    case gtReserved = 45
    /// Likely not taken
    case gtMinus = 46
    /// Likely taken
    case gtPlus = 47
    /// Name | BI | BO
    case ne = 68
    /// Reserved
    case neReserved = 69
    /// Likely not taken
    case neMinus = 70
    /// Likely taken
    case nePlus = 71
    /// Name | BI | BO
    case eq = 76
    /// Reserved
    case eqReserved = 77
    /// Likely not taken
    case eqMinus = 78
    /// Likely taken
    case eqPlus = 79
    /// Not Unordered (after fp comparison)
    case nu = 100
    /// not summary overflow
    public static let ns = 100
    /// Reserved
    case nuReserved = 101
    /// Likely not taken
    case nuMinus = 102
    /// Likely taken
    case nuPlus = 103
    /// Unordered (after fp comparison)
    case un = 108
    /// summary overflow
    public static let so = 108
    /// Reserved
    case unReserved = 109
    /// Likely not taken
    case unMinus = 110
    /// Likely taken
    case unPlus = 111
    /// When dealing with individual condition-register bits, we have simple set and unset predicates.
    case bitSet = 1024
    /// When dealing with individual condition-register bits, we have simple set and unset predicates.
    case bitUnset = 1025
    /// Technically this could be read as a valid predicate But the ISA recommends to set the z bits to 0, so it shouldn't come to conflicts.
    case invalid = 65535
}

/// PPC registers
public enum PpcReg: UInt16 {
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case bp = 1
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case carry = 2
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case ctr = 3
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fp = 4
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case lr = 5
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case rm = 6
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case spefscr = 7
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vrsave = 8
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case xer = 9
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case zero = 10
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc0 = 11
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc1 = 12
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc2 = 13
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc3 = 14
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc4 = 15
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc5 = 16
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc6 = 17
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case acc7 = 18
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case bp8 = 19
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr0 = 20
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr1 = 21
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr2 = 22
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr3 = 23
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr4 = 24
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr5 = 25
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr6 = 26
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr7 = 27
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case ctr8 = 28
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr0 = 29
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr1 = 30
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr2 = 31
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr3 = 32
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr4 = 33
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr5 = 34
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr6 = 35
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmr7 = 36
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow0 = 37
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow1 = 38
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow2 = 39
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow3 = 40
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow4 = 41
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow5 = 42
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow6 = 43
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow7 = 44
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow8 = 45
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow9 = 46
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow10 = 47
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow11 = 48
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow12 = 49
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow13 = 50
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow14 = 51
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow15 = 52
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow16 = 53
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow17 = 54
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow18 = 55
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow19 = 56
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow20 = 57
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow21 = 58
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow22 = 59
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow23 = 60
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow24 = 61
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow25 = 62
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow26 = 63
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow27 = 64
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow28 = 65
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow29 = 66
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow30 = 67
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow31 = 68
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow32 = 69
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow33 = 70
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow34 = 71
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow35 = 72
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow36 = 73
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow37 = 74
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow38 = 75
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow39 = 76
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow40 = 77
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow41 = 78
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow42 = 79
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow43 = 80
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow44 = 81
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow45 = 82
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow46 = 83
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow47 = 84
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow48 = 85
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow49 = 86
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow50 = 87
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow51 = 88
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow52 = 89
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow53 = 90
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow54 = 91
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow55 = 92
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow56 = 93
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow57 = 94
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow58 = 95
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow59 = 96
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow60 = 97
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow61 = 98
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow62 = 99
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrow63 = 100
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp0 = 101
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp1 = 102
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp2 = 103
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp3 = 104
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp4 = 105
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp5 = 106
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp6 = 107
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp7 = 108
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp8 = 109
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp9 = 110
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp10 = 111
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp11 = 112
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp12 = 113
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp13 = 114
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp14 = 115
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp15 = 116
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp16 = 117
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp17 = 118
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp18 = 119
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp19 = 120
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp20 = 121
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp21 = 122
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp22 = 123
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp23 = 124
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp24 = 125
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp25 = 126
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp26 = 127
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp27 = 128
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp28 = 129
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp29 = 130
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp30 = 131
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrrowp31 = 132
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrp0 = 133
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrp1 = 134
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrp2 = 135
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case dmrp3 = 136
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f0 = 137
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f1 = 138
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f2 = 139
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f3 = 140
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f4 = 141
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f5 = 142
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f6 = 143
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f7 = 144
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f8 = 145
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f9 = 146
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f10 = 147
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f11 = 148
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f12 = 149
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f13 = 150
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f14 = 151
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f15 = 152
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f16 = 153
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f17 = 154
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f18 = 155
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f19 = 156
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f20 = 157
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f21 = 158
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f22 = 159
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f23 = 160
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f24 = 161
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f25 = 162
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f26 = 163
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f27 = 164
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f28 = 165
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f29 = 166
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f30 = 167
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case f31 = 168
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fp8 = 169
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair0 = 170
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair2 = 171
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair4 = 172
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair6 = 173
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair8 = 174
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair10 = 175
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair12 = 176
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair14 = 177
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair16 = 178
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair18 = 179
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair20 = 180
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair22 = 181
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair24 = 182
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair26 = 183
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair28 = 184
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case fpair30 = 185
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h0 = 186
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h1 = 187
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h2 = 188
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h3 = 189
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h4 = 190
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h5 = 191
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h6 = 192
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h7 = 193
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h8 = 194
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h9 = 195
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h10 = 196
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h11 = 197
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h12 = 198
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h13 = 199
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h14 = 200
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h15 = 201
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h16 = 202
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h17 = 203
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h18 = 204
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h19 = 205
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h20 = 206
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h21 = 207
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h22 = 208
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h23 = 209
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h24 = 210
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h25 = 211
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h26 = 212
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h27 = 213
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h28 = 214
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h29 = 215
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h30 = 216
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case h31 = 217
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case lr8 = 218
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf0 = 219
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf1 = 220
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf2 = 221
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf3 = 222
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf4 = 223
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf5 = 224
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf6 = 225
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf7 = 226
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf8 = 227
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf9 = 228
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf10 = 229
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf11 = 230
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf12 = 231
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf13 = 232
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf14 = 233
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf15 = 234
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf16 = 235
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf17 = 236
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf18 = 237
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf19 = 238
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf20 = 239
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf21 = 240
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf22 = 241
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf23 = 242
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf24 = 243
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf25 = 244
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf26 = 245
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf27 = 246
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf28 = 247
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf29 = 248
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf30 = 249
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case qf31 = 250
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r0 = 251
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r1 = 252
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r2 = 253
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r3 = 254
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r4 = 255
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r5 = 256
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r6 = 257
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r7 = 258
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r8 = 259
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r9 = 260
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r10 = 261
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r11 = 262
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r12 = 263
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r13 = 264
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r14 = 265
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r15 = 266
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r16 = 267
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r17 = 268
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r18 = 269
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r19 = 270
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r20 = 271
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r21 = 272
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r22 = 273
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r23 = 274
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r24 = 275
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r25 = 276
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r26 = 277
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r27 = 278
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r28 = 279
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r29 = 280
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r30 = 281
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case r31 = 282
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s0 = 283
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s1 = 284
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s2 = 285
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s3 = 286
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s4 = 287
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s5 = 288
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s6 = 289
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s7 = 290
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s8 = 291
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s9 = 292
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s10 = 293
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s11 = 294
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s12 = 295
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s13 = 296
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s14 = 297
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s15 = 298
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s16 = 299
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s17 = 300
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s18 = 301
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s19 = 302
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s20 = 303
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s21 = 304
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s22 = 305
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s23 = 306
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s24 = 307
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s25 = 308
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s26 = 309
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s27 = 310
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s28 = 311
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s29 = 312
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s30 = 313
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case s31 = 314
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc0 = 315
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc1 = 316
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc2 = 317
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc3 = 318
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc4 = 319
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc5 = 320
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc6 = 321
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case uacc7 = 322
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v0 = 323
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v1 = 324
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v2 = 325
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v3 = 326
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v4 = 327
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v5 = 328
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v6 = 329
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v7 = 330
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v8 = 331
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v9 = 332
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v10 = 333
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v11 = 334
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v12 = 335
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v13 = 336
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v14 = 337
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v15 = 338
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v16 = 339
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v17 = 340
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v18 = 341
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v19 = 342
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v20 = 343
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v21 = 344
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v22 = 345
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v23 = 346
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v24 = 347
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v25 = 348
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v26 = 349
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v27 = 350
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v28 = 351
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v29 = 352
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v30 = 353
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case v31 = 354
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf0 = 355
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf1 = 356
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf2 = 357
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf3 = 358
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf4 = 359
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf5 = 360
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf6 = 361
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf7 = 362
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf8 = 363
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf9 = 364
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf10 = 365
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf11 = 366
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf12 = 367
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf13 = 368
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf14 = 369
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf15 = 370
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf16 = 371
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf17 = 372
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf18 = 373
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf19 = 374
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf20 = 375
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf21 = 376
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf22 = 377
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf23 = 378
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf24 = 379
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf25 = 380
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf26 = 381
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf27 = 382
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf28 = 383
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf29 = 384
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf30 = 385
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vf31 = 386
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl0 = 387
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl1 = 388
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl2 = 389
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl3 = 390
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl4 = 391
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl5 = 392
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl6 = 393
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl7 = 394
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl8 = 395
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl9 = 396
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl10 = 397
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl11 = 398
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl12 = 399
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl13 = 400
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl14 = 401
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl15 = 402
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl16 = 403
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl17 = 404
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl18 = 405
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl19 = 406
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl20 = 407
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl21 = 408
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl22 = 409
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl23 = 410
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl24 = 411
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl25 = 412
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl26 = 413
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl27 = 414
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl28 = 415
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl29 = 416
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl30 = 417
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsl31 = 418
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp0 = 419
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp1 = 420
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp2 = 421
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp3 = 422
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp4 = 423
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp5 = 424
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp6 = 425
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp7 = 426
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp8 = 427
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp9 = 428
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp10 = 429
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp11 = 430
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp12 = 431
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp13 = 432
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp14 = 433
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp15 = 434
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp16 = 435
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp17 = 436
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp18 = 437
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp19 = 438
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp20 = 439
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp21 = 440
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp22 = 441
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp23 = 442
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp24 = 443
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp25 = 444
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp26 = 445
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp27 = 446
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp28 = 447
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp29 = 448
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp30 = 449
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsrp31 = 450
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx32 = 451
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx33 = 452
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx34 = 453
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx35 = 454
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx36 = 455
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx37 = 456
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx38 = 457
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx39 = 458
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx40 = 459
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx41 = 460
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx42 = 461
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx43 = 462
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx44 = 463
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx45 = 464
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx46 = 465
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx47 = 466
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx48 = 467
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx49 = 468
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx50 = 469
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx51 = 470
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx52 = 471
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx53 = 472
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx54 = 473
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx55 = 474
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx56 = 475
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx57 = 476
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx58 = 477
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx59 = 478
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx60 = 479
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx61 = 480
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx62 = 481
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case vsx63 = 482
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc0 = 483
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc1 = 484
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc2 = 485
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc3 = 486
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc4 = 487
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc5 = 488
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc6 = 489
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case wacc7 = 490
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi0 = 491
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi1 = 492
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi2 = 493
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi3 = 494
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi4 = 495
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi5 = 496
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi6 = 497
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case waccHi7 = 498
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x0 = 499
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x1 = 500
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x2 = 501
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x3 = 502
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x4 = 503
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x5 = 504
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x6 = 505
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x7 = 506
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x8 = 507
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x9 = 508
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x10 = 509
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x11 = 510
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x12 = 511
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x13 = 512
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x14 = 513
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x15 = 514
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x16 = 515
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x17 = 516
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x18 = 517
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x19 = 518
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x20 = 519
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x21 = 520
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x22 = 521
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x23 = 522
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x24 = 523
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x25 = 524
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x26 = 525
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x27 = 526
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x28 = 527
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x29 = 528
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x30 = 529
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case x31 = 530
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case zero8 = 531
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr0eq = 532
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr1eq = 533
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr2eq = 534
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr3eq = 535
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr4eq = 536
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr5eq = 537
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr6eq = 538
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr7eq = 539
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr0gt = 540
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr1gt = 541
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr2gt = 542
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr3gt = 543
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr4gt = 544
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr5gt = 545
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr6gt = 546
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr7gt = 547
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr0lt = 548
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr1lt = 549
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr2lt = 550
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr3lt = 551
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr4lt = 552
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr5lt = 553
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr6lt = 554
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr7lt = 555
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr0un = 556
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr1un = 557
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr2un = 558
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr3un = 559
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr4un = 560
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr5un = 561
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr6un = 562
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case cr7un = 563
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p0 = 564
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p1 = 565
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p2 = 566
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p3 = 567
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p4 = 568
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p5 = 569
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p6 = 570
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p7 = 571
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p8 = 572
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p9 = 573
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p10 = 574
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p11 = 575
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p12 = 576
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p13 = 577
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p14 = 578
    /// generated content <PPCGenCSRegEnum.inc> begin clang-format off
    case g8p15 = 579
    /// 580
    case ending = 580
}

#endif
