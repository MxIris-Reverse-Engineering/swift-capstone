#if CAPSTONE_HAS_RISCV
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Riscv)

/// > Group of RISCV instructions
public enum RiscvFeature: UInt32 {
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdexti = 128
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicbom = 129
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicbop = 130
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicboz = 131
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicsr = 132
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicond = 133
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzifencei = 134
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzihintpause = 135
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzihintntl = 136
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzimop = 137
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicfilp = 138
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzicfiss = 139
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextm = 140
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextmorzmmul = 141
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdexta = 142
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextztso = 143
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzacas = 144
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzawrs = 145
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextf = 146
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextd = 147
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfhmin = 148
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfh = 149
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfbfmin = 150
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hashalffploadstoremove = 151
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfa = 152
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfinx = 153
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzdinx = 154
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzhinxmin = 155
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzhinx = 156
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextc = 157
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasrvchints = 158
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextcorzca = 159
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzcb = 160
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextcorzcd = 161
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzcmp = 162
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzcmt = 163
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextcorzcforzce = 164
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzcmop = 165
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzba = 166
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbb = 167
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbc = 168
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbs = 169
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbkb = 170
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbkx = 171
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbborzbkb = 172
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbkc = 173
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzbcorzbkc = 174
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzknd = 175
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzkne = 176
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzkndorzkne = 177
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzknh = 178
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzksed = 179
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzksh = 180
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzkr = 181
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvfbfmin = 182
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvfbfwma = 183
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzfhorzvfh = 184
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvkb = 185
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvbb = 186
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvbc = 187
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvkg = 188
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvkned = 189
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvknha = 190
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvknhb = 191
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvknhaorzvknhb = 192
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvksed = 193
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextzvksh = 194
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvinstructions = 195
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvinstructionsi64 = 196
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvinstructionsanyf = 197
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvinstructionsf16minimal = 198
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdexth = 199
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasstdextsvinval = 200
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxventanacondops = 201
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadba = 202
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadbb = 203
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadbs = 204
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadcondmov = 205
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadcmo = 206
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadfmemidx = 207
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadmac = 208
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadmemidx = 209
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadmempair = 210
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadsync = 211
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxtheadvdot = 212
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxsfvcp = 213
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxsfvqmaccdod = 214
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxsfvqmaccqoq = 215
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxsfvfwmaccqqq = 216
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxsfvfnrclipxfqf = 217
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvelw = 218
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvbitmanip = 219
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvmac = 220
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvmem = 221
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvalu = 222
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvsimd = 223
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case hasvendorxcvbi = 224
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case isrv64 = 225
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case isrv32 = 226
    /// Architecture-specific groups generated content <RISCVGenCSFeatureEnum.inc> begin clang-format off
    case isrve = 227
}

/// > Group of RISCV instructions
public enum RiscvGrp: UInt8 {
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
    /// clang-format on generated content <RISCVGenCSFeatureEnum.inc> end
    case ending = 228
}

/// > RISCV instruction
public enum RiscvIns: UInt32 {
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case add = 1
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case call = 2
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fld = 3
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case flh = 4
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case flw = 5
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsd = 6
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsh = 7
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsw = 8
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case jump = 9
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case la = 10
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case laTlsdesc = 11
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case laTlsGd = 12
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case laTlsIe = 13
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lb = 14
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lbu = 15
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ld = 16
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lga = 17
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lh = 18
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lhu = 19
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case li = 20
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lla = 21
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lw = 22
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lwu = 23
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sb = 24
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sd = 25
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sextB = 26
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sextH = 27
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh = 28
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sw = 29
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case tail = 30
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case jalr = 31
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgeuVi = 32
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgeuVx = 33
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgeVi = 34
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgeVx = 35
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltuVi = 36
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltVi = 37
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case zextH = 38
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case zextW = 39
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case addi = 40
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case addiw = 41
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case addw = 42
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case addUw = 43
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes32dsi = 44
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes32dsmi = 45
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes32esi = 46
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes32esmi = 47
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64ds = 48
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64dsm = 49
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64es = 50
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64esm = 51
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64im = 52
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64ks1i = 53
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case aes64ks2 = 54
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddD = 55
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddDAq = 56
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddDAqrl = 57
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddDRl = 58
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddW = 59
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddWAq = 60
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddWAqrl = 61
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoaddWRl = 62
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandD = 63
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandDAq = 64
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandDAqrl = 65
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandDRl = 66
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandW = 67
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandWAq = 68
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandWAqrl = 69
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoandWRl = 70
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasD = 71
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasDAq = 72
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasDAqrl = 73
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasDRl = 74
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasQ = 75
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasQAq = 76
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasQAqrl = 77
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasQRl = 78
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasW = 79
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasWAq = 80
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasWAqrl = 81
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amocasWRl = 82
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuD = 83
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuDAq = 84
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuDAqrl = 85
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuDRl = 86
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuW = 87
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuWAq = 88
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuWAqrl = 89
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxuWRl = 90
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxD = 91
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxDAq = 92
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxDAqrl = 93
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxDRl = 94
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxW = 95
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxWAq = 96
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxWAqrl = 97
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amomaxWRl = 98
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuD = 99
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuDAq = 100
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuDAqrl = 101
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuDRl = 102
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuW = 103
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuWAq = 104
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuWAqrl = 105
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominuWRl = 106
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominD = 107
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominDAq = 108
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominDAqrl = 109
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominDRl = 110
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominW = 111
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominWAq = 112
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominWAqrl = 113
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amominWRl = 114
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorD = 115
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorDAq = 116
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorDAqrl = 117
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorDRl = 118
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorW = 119
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorWAq = 120
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorWAqrl = 121
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoorWRl = 122
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapD = 123
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapDAq = 124
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapDAqrl = 125
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapDRl = 126
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapW = 127
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapWAq = 128
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapWAqrl = 129
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoswapWRl = 130
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorD = 131
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorDAq = 132
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorDAqrl = 133
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorDRl = 134
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorW = 135
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorWAq = 136
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorWAqrl = 137
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case amoxorWRl = 138
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case and = 139
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case andi = 140
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case andn = 141
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case auipc = 142
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bclr = 143
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bclri = 144
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case beq = 145
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bext = 146
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bexti = 147
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bge = 148
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bgeu = 149
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case binv = 150
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case binvi = 151
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case blt = 152
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bltu = 153
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bne = 154
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case brev8 = 155
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bset = 156
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case bseti = 157
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cboClean = 158
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cboFlush = 159
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cboInval = 160
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cboZero = 161
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case clmul = 162
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case clmulh = 163
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case clmulr = 164
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case clz = 165
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case clzw = 166
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop1 = 167
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop11 = 168
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop13 = 169
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop15 = 170
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop3 = 171
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop5 = 172
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop7 = 173
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmop9 = 174
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmJalt = 175
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmJt = 176
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmMva01S = 177
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmMvsa01 = 178
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmPop = 179
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmPopret = 180
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmPopretz = 181
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cmPush = 182
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cpop = 183
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cpopw = 184
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrc = 185
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrci = 186
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrs = 187
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrsi = 188
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrw = 189
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case csrrwi = 190
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ctz = 191
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ctzw = 192
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAbs = 193
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAbsB = 194
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAbsH = 195
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddn = 196
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddnr = 197
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddrn = 198
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddrnr = 199
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddun = 200
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddunr = 201
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddurn = 202
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddurnr = 203
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddB = 204
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddDiv2 = 205
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddDiv4 = 206
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddDiv8 = 207
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddH = 208
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddSciB = 209
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddSciH = 210
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddScB = 211
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAddScH = 212
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndB = 213
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndH = 214
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndSciB = 215
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndSciH = 216
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndScB = 217
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAndScH = 218
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguB = 219
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguH = 220
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguSciB = 221
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguSciH = 222
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguScB = 223
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvguScH = 224
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgB = 225
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgH = 226
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgSciB = 227
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgSciH = 228
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgScB = 229
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvAvgScH = 230
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBclr = 231
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBclrr = 232
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBeqimm = 233
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBitrev = 234
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBneimm = 235
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBset = 236
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvBsetr = 237
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvClb = 238
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvClip = 239
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvClipr = 240
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvClipu = 241
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvClipur = 242
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqB = 243
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqH = 244
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqSciB = 245
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqSciH = 246
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqScB = 247
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpeqScH = 248
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuB = 249
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuH = 250
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuSciB = 251
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuSciH = 252
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuScB = 253
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeuScH = 254
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeB = 255
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeH = 256
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeSciB = 257
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeSciH = 258
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeScB = 259
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgeScH = 260
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuB = 261
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuH = 262
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuSciB = 263
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuSciH = 264
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuScB = 265
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtuScH = 266
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtB = 267
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtH = 268
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtSciB = 269
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtSciH = 270
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtScB = 271
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpgtScH = 272
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuB = 273
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuH = 274
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuSciB = 275
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuSciH = 276
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuScB = 277
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleuScH = 278
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleB = 279
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleH = 280
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleSciB = 281
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleSciH = 282
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleScB = 283
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpleScH = 284
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuB = 285
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuH = 286
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuSciB = 287
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuSciH = 288
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuScB = 289
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltuScH = 290
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltB = 291
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltH = 292
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltSciB = 293
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltSciH = 294
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltScB = 295
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpltScH = 296
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneB = 297
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneH = 298
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneSciB = 299
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneSciH = 300
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneScB = 301
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCmpneScH = 302
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCnt = 303
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxconj = 304
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulI = 305
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulIDiv2 = 306
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulIDiv4 = 307
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulIDiv8 = 308
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulR = 309
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulRDiv2 = 310
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulRDiv4 = 311
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvCplxmulRDiv8 = 312
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspB = 313
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspH = 314
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspSciB = 315
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspSciH = 316
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspScB = 317
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotspScH = 318
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupB = 319
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupH = 320
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupSciB = 321
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupSciH = 322
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupScB = 323
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotupScH = 324
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspB = 325
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspH = 326
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspSciB = 327
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspSciH = 328
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspScB = 329
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvDotuspScH = 330
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvElw = 331
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtbs = 332
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtbz = 333
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExths = 334
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExthz = 335
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtract = 336
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractr = 337
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractu = 338
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractur = 339
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractuB = 340
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractuH = 341
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractB = 342
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvExtractH = 343
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvFf1 = 344
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvFl1 = 345
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvInsert = 346
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvInsertr = 347
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvInsertB = 348
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvInsertH = 349
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvLbu = 350
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvLb = 351
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvLhu = 352
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvLh = 353
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvLw = 354
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMac = 355
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMachhsn = 356
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMachhsrn = 357
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMachhun = 358
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMachhurn = 359
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMacsn = 360
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMacsrn = 361
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMacun = 362
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMacurn = 363
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMax = 364
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxu = 365
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuB = 366
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuH = 367
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuSciB = 368
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuSciH = 369
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuScB = 370
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxuScH = 371
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxB = 372
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxH = 373
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxSciB = 374
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxSciH = 375
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxScB = 376
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMaxScH = 377
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMin = 378
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinu = 379
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuB = 380
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuH = 381
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuSciB = 382
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuSciH = 383
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuScB = 384
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinuScH = 385
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinB = 386
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinH = 387
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinSciB = 388
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinSciH = 389
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinScB = 390
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMinScH = 391
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMsu = 392
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulhhsn = 393
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulhhsrn = 394
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulhhun = 395
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulhhurn = 396
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulsn = 397
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulsrn = 398
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulun = 399
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvMulurn = 400
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrB = 401
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrH = 402
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrSciB = 403
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrSciH = 404
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrScB = 405
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvOrScH = 406
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvPack = 407
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvPackhiB = 408
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvPackloB = 409
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvPackH = 410
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvRor = 411
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSb = 412
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspB = 413
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspH = 414
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspSciB = 415
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspSciH = 416
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspScB = 417
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotspScH = 418
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupB = 419
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupH = 420
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupSciB = 421
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupSciH = 422
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupScB = 423
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotupScH = 424
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspB = 425
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspH = 426
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspSciB = 427
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspSciH = 428
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspScB = 429
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSdotuspScH = 430
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShuffle2B = 431
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShuffle2H = 432
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShufflei0SciB = 433
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShufflei1SciB = 434
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShufflei2SciB = 435
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShufflei3SciB = 436
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShuffleB = 437
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShuffleH = 438
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvShuffleSciH = 439
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSh = 440
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSlet = 441
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSletu = 442
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllB = 443
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllH = 444
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllSciB = 445
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllSciH = 446
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllScB = 447
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSllScH = 448
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraB = 449
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraH = 450
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraSciB = 451
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraSciH = 452
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraScB = 453
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSraScH = 454
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlB = 455
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlH = 456
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlSciB = 457
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlSciH = 458
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlScB = 459
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSrlScH = 460
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubn = 461
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubnr = 462
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrn = 463
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrnr = 464
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrotmj = 465
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrotmjDiv2 = 466
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrotmjDiv4 = 467
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubrotmjDiv8 = 468
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubun = 469
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubunr = 470
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSuburn = 471
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSuburnr = 472
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubB = 473
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubDiv2 = 474
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubDiv4 = 475
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubDiv8 = 476
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubH = 477
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubSciB = 478
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubSciH = 479
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubScB = 480
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSubScH = 481
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvSw = 482
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorB = 483
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorH = 484
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorSciB = 485
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorSciH = 486
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorScB = 487
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cvXorScH = 488
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case czeroEqz = 489
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case czeroNez = 490
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAdd = 491
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAddi = 492
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAddi16Sp = 493
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAddi4Spn = 494
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAddiw = 495
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAddw = 496
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAnd = 497
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cAndi = 498
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cBeqz = 499
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cBnez = 500
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cEbreak = 501
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFld = 502
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFldsp = 503
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFlw = 504
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFlwsp = 505
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFsd = 506
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFsdsp = 507
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFsw = 508
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cFswsp = 509
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cJ = 510
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cJal = 511
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cJalr = 512
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cJr = 513
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLbu = 514
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLd = 515
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLdsp = 516
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLh = 517
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLhu = 518
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLi = 519
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLui = 520
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLw = 521
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cLwsp = 522
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cMul = 523
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cMv = 524
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cNop = 525
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cNot = 526
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cOr = 527
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSb = 528
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSd = 529
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSdsp = 530
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSextB = 531
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSextH = 532
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSh = 533
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSlli = 534
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSlli64 = 535
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSrai = 536
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSrai64 = 537
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSrli = 538
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSrli64 = 539
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSspopchk = 540
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSspush = 541
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSub = 542
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSubw = 543
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSw = 544
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cSwsp = 545
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cUnimp = 546
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cXor = 547
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cZextB = 548
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cZextH = 549
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case cZextW = 550
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case div = 551
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case divu = 552
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case divuw = 553
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case divw = 554
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case dret = 555
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ebreak = 556
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ecall = 557
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case faddD = 558
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case faddH = 559
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case faddS = 560
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fclassD = 561
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fclassH = 562
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fclassS = 563
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtmodWD = 564
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtBf16S = 565
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDH = 566
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDL = 567
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDLu = 568
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDS = 569
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDW = 570
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtDWu = 571
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHD = 572
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHL = 573
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHLu = 574
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHS = 575
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHW = 576
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtHWu = 577
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLuD = 578
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLuH = 579
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLuS = 580
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLD = 581
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLH = 582
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtLS = 583
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSBf16 = 584
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSD = 585
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSH = 586
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSL = 587
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSLu = 588
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSW = 589
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtSWu = 590
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWuD = 591
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWuH = 592
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWuS = 593
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWD = 594
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWH = 595
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fcvtWS = 596
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fdivD = 597
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fdivH = 598
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fdivS = 599
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fence = 600
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fenceI = 601
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fenceTso = 602
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case feqD = 603
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case feqH = 604
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case feqS = 605
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleqD = 606
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleqH = 607
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleqS = 608
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleD = 609
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleH = 610
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fleS = 611
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fliD = 612
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fliH = 613
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fliS = 614
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltqD = 615
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltqH = 616
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltqS = 617
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltD = 618
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltH = 619
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fltS = 620
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaddD = 621
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaddH = 622
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaddS = 623
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxmD = 624
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxmH = 625
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxmS = 626
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxD = 627
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxH = 628
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmaxS = 629
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminmD = 630
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminmH = 631
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminmS = 632
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminD = 633
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminH = 634
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fminS = 635
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmsubD = 636
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmsubH = 637
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmsubS = 638
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmulD = 639
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmulH = 640
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmulS = 641
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvhXD = 642
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvpDX = 643
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvDX = 644
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvHX = 645
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvWX = 646
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvXD = 647
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvXH = 648
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fmvXW = 649
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmaddD = 650
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmaddH = 651
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmaddS = 652
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmsubD = 653
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmsubH = 654
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fnmsubS = 655
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundnxD = 656
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundnxH = 657
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundnxS = 658
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundD = 659
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundH = 660
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case froundS = 661
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjnD = 662
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjnH = 663
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjnS = 664
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjxD = 665
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjxH = 666
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjxS = 667
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjD = 668
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjH = 669
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsgnjS = 670
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsqrtD = 671
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsqrtH = 672
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsqrtS = 673
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsubD = 674
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsubH = 675
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case fsubS = 676
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hfenceGvma = 677
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hfenceVvma = 678
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hinvalGvma = 679
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hinvalVvma = 680
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvxHu = 681
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvxWu = 682
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvB = 683
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvBu = 684
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvD = 685
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvH = 686
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvHu = 687
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvW = 688
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hlvWu = 689
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hsvB = 690
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hsvD = 691
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hsvH = 692
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case hsvW = 693
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case jal = 694
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrD = 695
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrDAq = 696
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrDAqrl = 697
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrDRl = 698
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrW = 699
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrWAq = 700
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrWAqrl = 701
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lrWRl = 702
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case lui = 703
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case max = 704
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case maxu = 705
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case min = 706
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case minu = 707
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR0 = 708
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR1 = 709
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR10 = 710
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR11 = 711
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR12 = 712
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR13 = 713
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR14 = 714
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR15 = 715
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR16 = 716
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR17 = 717
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR18 = 718
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR19 = 719
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR2 = 720
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR20 = 721
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR21 = 722
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR22 = 723
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR23 = 724
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR24 = 725
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR25 = 726
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR26 = 727
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR27 = 728
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR28 = 729
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR29 = 730
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR3 = 731
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR30 = 732
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR31 = 733
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR4 = 734
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR5 = 735
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR6 = 736
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR7 = 737
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR8 = 738
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopR9 = 739
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr0 = 740
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr1 = 741
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr2 = 742
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr3 = 743
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr4 = 744
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr5 = 745
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr6 = 746
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mopRr7 = 747
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mret = 748
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mul = 749
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mulh = 750
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mulhsu = 751
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mulhu = 752
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case mulw = 753
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case or = 754
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case orcB = 755
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ori = 756
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case orn = 757
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case pack = 758
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case packh = 759
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case packw = 760
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case prefetchI = 761
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case prefetchR = 762
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case prefetchW = 763
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rem = 764
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case remu = 765
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case remuw = 766
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case remw = 767
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rev8 = 768
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rol = 769
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rolw = 770
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ror = 771
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rori = 772
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case roriw = 773
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case rorw = 774
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scD = 775
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scDAq = 776
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scDAqrl = 777
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scDRl = 778
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scW = 779
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scWAq = 780
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scWAqrl = 781
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case scWRl = 782
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfenceInvalIr = 783
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfenceVma = 784
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfenceWInval = 785
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh1add = 786
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh1addUw = 787
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh2add = 788
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh2addUw = 789
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh3add = 790
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sh3addUw = 791
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha256sig0 = 792
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha256sig1 = 793
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha256sum0 = 794
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha256sum1 = 795
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig0 = 796
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig0h = 797
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig0l = 798
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig1 = 799
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig1h = 800
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sig1l = 801
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sum0 = 802
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sum0r = 803
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sum1 = 804
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sha512sum1r = 805
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sinvalVma = 806
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sll = 807
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case slli = 808
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case slliw = 809
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case slliUw = 810
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sllw = 811
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case slt = 812
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case slti = 813
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sltiu = 814
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sltu = 815
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sm3p0 = 816
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sm3p1 = 817
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sm4ed = 818
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sm4ks = 819
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sra = 820
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case srai = 821
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sraiw = 822
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sraw = 823
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sret = 824
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case srl = 825
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case srli = 826
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case srliw = 827
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case srlw = 828
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapD = 829
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapDAq = 830
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapDAqrl = 831
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapDRl = 832
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapW = 833
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapWAq = 834
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapWAqrl = 835
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssamoswapWRl = 836
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sspopchk = 837
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sspush = 838
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case ssrdp = 839
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sub = 840
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case subw = 841
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqasuVv = 842
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqasuVx = 843
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqausVx = 844
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqauVv = 845
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqauVx = 846
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqaVv = 847
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thVmaqaVx = 848
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thAddsl = 849
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCall = 850
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCiall = 851
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCipa = 852
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCisw = 853
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCiva = 854
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCpa = 855
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCpal1 = 856
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCsw = 857
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCva = 858
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheCval1 = 859
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheIall = 860
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheIpa = 861
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheIsw = 862
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thDcacheIva = 863
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thExt = 864
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thExtu = 865
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFf0 = 866
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFf1 = 867
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFlrd = 868
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFlrw = 869
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFlurd = 870
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFlurw = 871
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFsrd = 872
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFsrw = 873
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFsurd = 874
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thFsurw = 875
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thIcacheIall = 876
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thIcacheIalls = 877
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thIcacheIpa = 878
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thIcacheIva = 879
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thL2CacheCall = 880
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thL2CacheCiall = 881
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thL2CacheIall = 882
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLbia = 883
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLbib = 884
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLbuia = 885
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLbuib = 886
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLdd = 887
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLdia = 888
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLdib = 889
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLhia = 890
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLhib = 891
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLhuia = 892
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLhuib = 893
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrb = 894
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrbu = 895
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrd = 896
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrh = 897
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrhu = 898
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrw = 899
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLrwu = 900
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurb = 901
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurbu = 902
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurd = 903
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurh = 904
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurhu = 905
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurw = 906
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLurwu = 907
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwd = 908
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwia = 909
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwib = 910
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwud = 911
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwuia = 912
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thLwuib = 913
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMula = 914
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMulah = 915
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMulaw = 916
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMuls = 917
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMulsh = 918
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMulsw = 919
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMveqz = 920
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thMvnez = 921
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thRev = 922
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thRevw = 923
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSbia = 924
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSbib = 925
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSdd = 926
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSdia = 927
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSdib = 928
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSfenceVmas = 929
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thShia = 930
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thShib = 931
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrb = 932
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrd = 933
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrh = 934
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrri = 935
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrriw = 936
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSrw = 937
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSurb = 938
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSurd = 939
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSurh = 940
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSurw = 941
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSwd = 942
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSwia = 943
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSwib = 944
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSync = 945
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSyncI = 946
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSyncIs = 947
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thSyncS = 948
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thTst = 949
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case thTstnbz = 950
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case unimp = 951
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case unzip = 952
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaadduVv = 953
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaadduVx = 954
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaaddVv = 955
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaaddVx = 956
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vadcVim = 957
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vadcVvm = 958
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vadcVxm = 959
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaddVi = 960
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaddVv = 961
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaddVx = 962
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesdfVs = 963
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesdfVv = 964
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesdmVs = 965
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesdmVv = 966
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesefVs = 967
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesefVv = 968
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesemVs = 969
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaesemVv = 970
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaeskf1Vi = 971
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaeskf2Vi = 972
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vaeszVs = 973
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vandnVv = 974
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vandnVx = 975
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vandVi = 976
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vandVv = 977
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vandVx = 978
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vasubuVv = 979
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vasubuVx = 980
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vasubVv = 981
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vasubVx = 982
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vbrev8V = 983
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vbrevV = 984
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vclmulhVv = 985
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vclmulhVx = 986
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vclmulVv = 987
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vclmulVx = 988
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vclzV = 989
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vcompressVm = 990
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vcpopM = 991
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vcpopV = 992
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vctzV = 993
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcFv = 994
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcFvv = 995
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcFvw = 996
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcI = 997
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcIv = 998
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcIvv = 999
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcIvw = 1000
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVv = 1001
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVvv = 1002
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVvw = 1003
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVFv = 1004
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVFvv = 1005
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVFvw = 1006
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVI = 1007
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVIv = 1008
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVIvv = 1009
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVIvw = 1010
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVVv = 1011
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVVvv = 1012
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVVvw = 1013
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVX = 1014
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVXv = 1015
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVXvv = 1016
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcVXvw = 1017
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcX = 1018
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcXv = 1019
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcXvv = 1020
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVcXvw = 1021
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vdivuVv = 1022
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vdivuVx = 1023
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vdivVv = 1024
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vdivVx = 1025
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfaddVf = 1026
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfaddVv = 1027
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfclassV = 1028
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtFXuV = 1029
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtFXV = 1030
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtRtzXuFV = 1031
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtRtzXFV = 1032
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtXuFV = 1033
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfcvtXFV = 1034
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfdivVf = 1035
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfdivVv = 1036
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfirstM = 1037
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaccVf = 1038
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaccVv = 1039
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaddVf = 1040
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaddVv = 1041
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaxVf = 1042
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmaxVv = 1043
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmergeVfm = 1044
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfminVf = 1045
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfminVv = 1046
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmsacVf = 1047
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmsacVv = 1048
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmsubVf = 1049
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmsubVv = 1050
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmulVf = 1051
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmulVv = 1052
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmvFS = 1053
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmvSF = 1054
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfmvVF = 1055
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtbf16FFW = 1056
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtFFW = 1057
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtFXuW = 1058
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtFXW = 1059
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtRodFFW = 1060
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtRtzXuFW = 1061
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtRtzXFW = 1062
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtXuFW = 1063
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfncvtXFW = 1064
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmaccVf = 1065
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmaccVv = 1066
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmaddVf = 1067
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmaddVv = 1068
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmsacVf = 1069
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmsacVv = 1070
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmsubVf = 1071
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfnmsubVv = 1072
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVfnrclipXuFQf = 1073
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVfnrclipXFQf = 1074
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfrdivVf = 1075
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfrec7V = 1076
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfredmaxVs = 1077
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfredminVs = 1078
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfredosumVs = 1079
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfredusumVs = 1080
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfrsqrt7V = 1081
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfrsubVf = 1082
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjnVf = 1083
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjnVv = 1084
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjxVf = 1085
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjxVv = 1086
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjVf = 1087
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsgnjVv = 1088
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfslide1downVf = 1089
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfslide1upVf = 1090
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsqrtV = 1091
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsubVf = 1092
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfsubVv = 1093
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwaddVf = 1094
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwaddVv = 1095
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwaddWf = 1096
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwaddWv = 1097
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtbf16FFV = 1098
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtFFV = 1099
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtFXuV = 1100
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtFXV = 1101
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtRtzXuFV = 1102
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtRtzXFV = 1103
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtXuFV = 1104
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwcvtXFV = 1105
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmaccbf16Vf = 1106
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmaccbf16Vv = 1107
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVfwmacc4X4X4 = 1108
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmaccVf = 1109
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmaccVv = 1110
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmsacVf = 1111
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmsacVv = 1112
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmulVf = 1113
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwmulVv = 1114
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwnmaccVf = 1115
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwnmaccVv = 1116
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwnmsacVf = 1117
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwnmsacVv = 1118
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwredosumVs = 1119
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwredusumVs = 1120
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwsubVf = 1121
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwsubVv = 1122
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwsubWf = 1123
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vfwsubWv = 1124
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vghshVv = 1125
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vgmulVv = 1126
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vidV = 1127
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case viotaM = 1128
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl1re16V = 1129
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl1re32V = 1130
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl1re64V = 1131
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl1re8V = 1132
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl2re16V = 1133
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl2re32V = 1134
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl2re64V = 1135
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl2re8V = 1136
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl4re16V = 1137
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl4re32V = 1138
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl4re64V = 1139
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl4re8V = 1140
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl8re16V = 1141
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl8re32V = 1142
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl8re64V = 1143
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vl8re8V = 1144
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle16ffV = 1145
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle16V = 1146
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle32ffV = 1147
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle32V = 1148
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle64ffV = 1149
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle64V = 1150
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle8ffV = 1151
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vle8V = 1152
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlmV = 1153
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxei16V = 1154
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxei32V = 1155
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxei64V = 1156
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxei8V = 1157
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg2ei16V = 1158
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg2ei32V = 1159
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg2ei64V = 1160
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg2ei8V = 1161
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg3ei16V = 1162
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg3ei32V = 1163
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg3ei64V = 1164
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg3ei8V = 1165
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg4ei16V = 1166
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg4ei32V = 1167
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg4ei64V = 1168
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg4ei8V = 1169
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg5ei16V = 1170
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg5ei32V = 1171
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg5ei64V = 1172
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg5ei8V = 1173
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg6ei16V = 1174
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg6ei32V = 1175
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg6ei64V = 1176
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg6ei8V = 1177
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg7ei16V = 1178
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg7ei32V = 1179
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg7ei64V = 1180
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg7ei8V = 1181
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg8ei16V = 1182
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg8ei32V = 1183
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg8ei64V = 1184
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vloxseg8ei8V = 1185
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlse16V = 1186
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlse32V = 1187
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlse64V = 1188
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlse8V = 1189
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e16ffV = 1190
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e16V = 1191
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e32ffV = 1192
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e32V = 1193
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e64ffV = 1194
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e64V = 1195
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e8ffV = 1196
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg2e8V = 1197
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e16ffV = 1198
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e16V = 1199
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e32ffV = 1200
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e32V = 1201
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e64ffV = 1202
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e64V = 1203
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e8ffV = 1204
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg3e8V = 1205
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e16ffV = 1206
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e16V = 1207
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e32ffV = 1208
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e32V = 1209
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e64ffV = 1210
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e64V = 1211
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e8ffV = 1212
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg4e8V = 1213
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e16ffV = 1214
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e16V = 1215
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e32ffV = 1216
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e32V = 1217
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e64ffV = 1218
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e64V = 1219
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e8ffV = 1220
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg5e8V = 1221
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e16ffV = 1222
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e16V = 1223
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e32ffV = 1224
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e32V = 1225
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e64ffV = 1226
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e64V = 1227
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e8ffV = 1228
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg6e8V = 1229
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e16ffV = 1230
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e16V = 1231
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e32ffV = 1232
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e32V = 1233
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e64ffV = 1234
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e64V = 1235
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e8ffV = 1236
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg7e8V = 1237
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e16ffV = 1238
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e16V = 1239
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e32ffV = 1240
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e32V = 1241
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e64ffV = 1242
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e64V = 1243
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e8ffV = 1244
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlseg8e8V = 1245
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg2e16V = 1246
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg2e32V = 1247
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg2e64V = 1248
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg2e8V = 1249
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg3e16V = 1250
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg3e32V = 1251
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg3e64V = 1252
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg3e8V = 1253
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg4e16V = 1254
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg4e32V = 1255
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg4e64V = 1256
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg4e8V = 1257
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg5e16V = 1258
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg5e32V = 1259
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg5e64V = 1260
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg5e8V = 1261
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg6e16V = 1262
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg6e32V = 1263
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg6e64V = 1264
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg6e8V = 1265
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg7e16V = 1266
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg7e32V = 1267
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg7e64V = 1268
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg7e8V = 1269
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg8e16V = 1270
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg8e32V = 1271
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg8e64V = 1272
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vlsseg8e8V = 1273
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxei16V = 1274
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxei32V = 1275
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxei64V = 1276
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxei8V = 1277
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg2ei16V = 1278
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg2ei32V = 1279
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg2ei64V = 1280
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg2ei8V = 1281
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg3ei16V = 1282
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg3ei32V = 1283
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg3ei64V = 1284
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg3ei8V = 1285
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg4ei16V = 1286
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg4ei32V = 1287
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg4ei64V = 1288
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg4ei8V = 1289
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg5ei16V = 1290
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg5ei32V = 1291
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg5ei64V = 1292
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg5ei8V = 1293
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg6ei16V = 1294
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg6ei32V = 1295
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg6ei64V = 1296
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg6ei8V = 1297
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg7ei16V = 1298
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg7ei32V = 1299
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg7ei64V = 1300
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg7ei8V = 1301
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg8ei16V = 1302
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg8ei32V = 1303
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg8ei64V = 1304
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vluxseg8ei8V = 1305
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaccVv = 1306
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaccVx = 1307
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVi = 1308
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVim = 1309
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVv = 1310
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVvm = 1311
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVx = 1312
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmadcVxm = 1313
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaddVv = 1314
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaddVx = 1315
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmandnMm = 1316
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmandMm = 1317
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaxuVv = 1318
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaxuVx = 1319
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaxVv = 1320
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmaxVx = 1321
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmergeVim = 1322
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmergeVvm = 1323
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmergeVxm = 1324
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfeqVf = 1325
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfeqVv = 1326
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfgeVf = 1327
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfgtVf = 1328
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfleVf = 1329
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfleVv = 1330
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfltVf = 1331
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfltVv = 1332
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfneVf = 1333
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmfneVv = 1334
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vminuVv = 1335
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vminuVx = 1336
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vminVv = 1337
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vminVx = 1338
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmnandMm = 1339
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmnorMm = 1340
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmornMm = 1341
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmorMm = 1342
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsbcVv = 1343
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsbcVvm = 1344
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsbcVx = 1345
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsbcVxm = 1346
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsbfM = 1347
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmseqVi = 1348
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmseqVv = 1349
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmseqVx = 1350
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgtuVi = 1351
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgtuVx = 1352
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgtVi = 1353
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsgtVx = 1354
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsifM = 1355
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleuVi = 1356
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleuVv = 1357
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleuVx = 1358
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleVi = 1359
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleVv = 1360
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsleVx = 1361
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltuVv = 1362
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltuVx = 1363
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltVv = 1364
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsltVx = 1365
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsneVi = 1366
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsneVv = 1367
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsneVx = 1368
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmsofM = 1369
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhsuVv = 1370
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhsuVx = 1371
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhuVv = 1372
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhuVx = 1373
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhVv = 1374
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulhVx = 1375
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulVv = 1376
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmulVx = 1377
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmv1rV = 1378
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmv2rV = 1379
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmv4rV = 1380
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmv8rV = 1381
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmvSX = 1382
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmvVI = 1383
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmvVV = 1384
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmvVX = 1385
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmvXS = 1386
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmxnorMm = 1387
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vmxorMm = 1388
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipuWi = 1389
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipuWv = 1390
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipuWx = 1391
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipWi = 1392
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipWv = 1393
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnclipWx = 1394
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnmsacVv = 1395
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnmsacVx = 1396
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnmsubVv = 1397
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnmsubVx = 1398
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsraWi = 1399
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsraWv = 1400
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsraWx = 1401
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsrlWi = 1402
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsrlWv = 1403
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vnsrlWx = 1404
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vorVi = 1405
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vorVv = 1406
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vorVx = 1407
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccsu2X8X2 = 1408
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccsu4X8X4 = 1409
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccus2X8X2 = 1410
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccus4X8X4 = 1411
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccu2X8X2 = 1412
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmaccu4X8X4 = 1413
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmacc2X8X2 = 1414
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case sfVqmacc4X8X4 = 1415
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredandVs = 1416
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredmaxuVs = 1417
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredmaxVs = 1418
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredminuVs = 1419
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredminVs = 1420
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredorVs = 1421
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredsumVs = 1422
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vredxorVs = 1423
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vremuVv = 1424
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vremuVx = 1425
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vremVv = 1426
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vremVx = 1427
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrev8V = 1428
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrgatherei16Vv = 1429
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrgatherVi = 1430
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrgatherVv = 1431
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrgatherVx = 1432
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrolVv = 1433
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrolVx = 1434
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrorVi = 1435
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrorVv = 1436
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrorVx = 1437
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrsubVi = 1438
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vrsubVx = 1439
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vs1rV = 1440
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vs2rV = 1441
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vs4rV = 1442
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vs8rV = 1443
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsadduVi = 1444
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsadduVv = 1445
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsadduVx = 1446
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsaddVi = 1447
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsaddVv = 1448
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsaddVx = 1449
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsbcVvm = 1450
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsbcVxm = 1451
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vse16V = 1452
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vse32V = 1453
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vse64V = 1454
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vse8V = 1455
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsetivli = 1456
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsetvl = 1457
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsetvli = 1458
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsextVf2 = 1459
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsextVf4 = 1460
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsextVf8 = 1461
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsha2chVv = 1462
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsha2clVv = 1463
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsha2msVv = 1464
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslide1downVx = 1465
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslide1upVx = 1466
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslidedownVi = 1467
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslidedownVx = 1468
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslideupVi = 1469
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vslideupVx = 1470
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsllVi = 1471
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsllVv = 1472
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsllVx = 1473
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsm3cVi = 1474
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsm3meVv = 1475
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsm4kVi = 1476
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsm4rVs = 1477
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsm4rVv = 1478
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsmulVv = 1479
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsmulVx = 1480
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsmV = 1481
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxei16V = 1482
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxei32V = 1483
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxei64V = 1484
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxei8V = 1485
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg2ei16V = 1486
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg2ei32V = 1487
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg2ei64V = 1488
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg2ei8V = 1489
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg3ei16V = 1490
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg3ei32V = 1491
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg3ei64V = 1492
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg3ei8V = 1493
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg4ei16V = 1494
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg4ei32V = 1495
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg4ei64V = 1496
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg4ei8V = 1497
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg5ei16V = 1498
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg5ei32V = 1499
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg5ei64V = 1500
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg5ei8V = 1501
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg6ei16V = 1502
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg6ei32V = 1503
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg6ei64V = 1504
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg6ei8V = 1505
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg7ei16V = 1506
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg7ei32V = 1507
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg7ei64V = 1508
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg7ei8V = 1509
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg8ei16V = 1510
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg8ei32V = 1511
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg8ei64V = 1512
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsoxseg8ei8V = 1513
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsraVi = 1514
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsraVv = 1515
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsraVx = 1516
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsrlVi = 1517
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsrlVv = 1518
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsrlVx = 1519
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsse16V = 1520
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsse32V = 1521
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsse64V = 1522
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsse8V = 1523
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg2e16V = 1524
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg2e32V = 1525
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg2e64V = 1526
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg2e8V = 1527
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg3e16V = 1528
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg3e32V = 1529
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg3e64V = 1530
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg3e8V = 1531
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg4e16V = 1532
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg4e32V = 1533
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg4e64V = 1534
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg4e8V = 1535
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg5e16V = 1536
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg5e32V = 1537
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg5e64V = 1538
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg5e8V = 1539
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg6e16V = 1540
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg6e32V = 1541
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg6e64V = 1542
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg6e8V = 1543
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg7e16V = 1544
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg7e32V = 1545
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg7e64V = 1546
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg7e8V = 1547
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg8e16V = 1548
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg8e32V = 1549
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg8e64V = 1550
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsseg8e8V = 1551
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssraVi = 1552
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssraVv = 1553
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssraVx = 1554
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssrlVi = 1555
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssrlVv = 1556
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssrlVx = 1557
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg2e16V = 1558
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg2e32V = 1559
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg2e64V = 1560
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg2e8V = 1561
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg3e16V = 1562
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg3e32V = 1563
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg3e64V = 1564
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg3e8V = 1565
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg4e16V = 1566
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg4e32V = 1567
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg4e64V = 1568
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg4e8V = 1569
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg5e16V = 1570
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg5e32V = 1571
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg5e64V = 1572
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg5e8V = 1573
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg6e16V = 1574
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg6e32V = 1575
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg6e64V = 1576
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg6e8V = 1577
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg7e16V = 1578
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg7e32V = 1579
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg7e64V = 1580
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg7e8V = 1581
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg8e16V = 1582
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg8e32V = 1583
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg8e64V = 1584
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssseg8e8V = 1585
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssubuVv = 1586
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssubuVx = 1587
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssubVv = 1588
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vssubVx = 1589
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsubVv = 1590
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsubVx = 1591
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxei16V = 1592
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxei32V = 1593
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxei64V = 1594
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxei8V = 1595
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg2ei16V = 1596
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg2ei32V = 1597
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg2ei64V = 1598
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg2ei8V = 1599
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg3ei16V = 1600
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg3ei32V = 1601
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg3ei64V = 1602
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg3ei8V = 1603
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg4ei16V = 1604
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg4ei32V = 1605
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg4ei64V = 1606
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg4ei8V = 1607
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg5ei16V = 1608
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg5ei32V = 1609
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg5ei64V = 1610
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg5ei8V = 1611
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg6ei16V = 1612
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg6ei32V = 1613
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg6ei64V = 1614
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg6ei8V = 1615
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg7ei16V = 1616
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg7ei32V = 1617
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg7ei64V = 1618
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg7ei8V = 1619
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg8ei16V = 1620
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg8ei32V = 1621
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg8ei64V = 1622
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vsuxseg8ei8V = 1623
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vtMaskc = 1624
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vtMaskcn = 1625
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwadduVv = 1626
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwadduVx = 1627
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwadduWv = 1628
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwadduWx = 1629
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwaddVv = 1630
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwaddVx = 1631
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwaddWv = 1632
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwaddWx = 1633
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccsuVv = 1634
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccsuVx = 1635
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccusVx = 1636
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccuVv = 1637
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccuVx = 1638
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccVv = 1639
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmaccVx = 1640
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmulsuVv = 1641
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmulsuVx = 1642
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmuluVv = 1643
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmuluVx = 1644
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmulVv = 1645
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwmulVx = 1646
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwredsumuVs = 1647
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwredsumVs = 1648
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsllVi = 1649
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsllVv = 1650
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsllVx = 1651
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubuVv = 1652
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubuVx = 1653
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubuWv = 1654
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubuWx = 1655
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubVv = 1656
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubVx = 1657
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubWv = 1658
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vwsubWx = 1659
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vxorVi = 1660
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vxorVv = 1661
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vxorVx = 1662
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vzextVf2 = 1663
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vzextVf4 = 1664
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case vzextVf8 = 1665
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case wfi = 1666
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case wrsNto = 1667
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case wrsSto = 1668
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case xnor = 1669
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case xor = 1670
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case xori = 1671
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case xperm4 = 1672
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case xperm8 = 1673
    /// generated content <RISCVGenCSInsnEnum.inc> begin clang-format off
    case zip = 1674
    /// clang-format on generated content <RISCVGenCSInsnEnum.inc> end
    case ending = 1675
    /// clang-format on generated content <RISCVGenCSInsnEnum.inc> end
    case aliasBegin = 1676
    /// Real instr.: RISCV_ADDI
    case aliasNop = 1677
    /// Real instr.: RISCV_ADDI
    case aliasLi = 1678
    /// Real instr.: RISCV_ADDI
    case aliasMv = 1679
    /// Real instr.: RISCV_XORI
    case aliasNot = 1680
    /// Real instr.: RISCV_SUB
    case aliasNeg = 1681
    /// Real instr.: RISCV_SUBW
    case aliasNegw = 1682
    /// Real instr.: RISCV_ADDIW
    case aliasSextW = 1683
    /// Real instr.: RISCV_SLTIU
    case aliasSeqz = 1684
    /// Real instr.: RISCV_SLTU
    case aliasSnez = 1685
    /// Real instr.: RISCV_SLT
    case aliasSltz = 1686
    /// Real instr.: RISCV_SLT
    case aliasSgtz = 1687
    /// Real instr.: RISCV_BEQ
    case aliasBeqz = 1688
    /// Real instr.: RISCV_BNE
    case aliasBnez = 1689
    /// Real instr.: RISCV_BGE
    case aliasBlez = 1690
    /// Real instr.: RISCV_BGE
    case aliasBgez = 1691
    /// Real instr.: RISCV_BLT
    case aliasBltz = 1692
    /// Real instr.: RISCV_BLT
    case aliasBgtz = 1693
    /// Real instr.: RISCV_JAL
    case aliasJ = 1694
    /// Real instr.: RISCV_JAL
    case aliasJal = 1695
    /// Real instr.: RISCV_JALR
    case aliasJr = 1696
    /// Real instr.: RISCV_JALR
    case aliasJalr = 1697
    /// Real instr.: RISCV_JALR
    case aliasRet = 1698
    /// Real instr.: RISCV_FENCE
    case aliasFence = 1699
    /// Real instr.: RISCV_FENCE
    case aliasPause = 1700
    /// Real instr.: RISCV_CSRRS
    case aliasRdinstret = 1701
    /// Real instr.: RISCV_CSRRS
    case aliasRdcycle = 1702
    /// Real instr.: RISCV_CSRRS
    case aliasRdtime = 1703
    /// Real instr.: RISCV_CSRRS
    case aliasRdinstreth = 1704
    /// Real instr.: RISCV_CSRRS
    case aliasRdcycleh = 1705
    /// Real instr.: RISCV_CSRRS
    case aliasRdtimeh = 1706
    /// Real instr.: RISCV_CSRRS
    case aliasCsrr = 1707
    /// Real instr.: RISCV_CSRRW
    case aliasCsrw = 1708
    /// Real instr.: RISCV_CSRRS
    case aliasCsrs = 1709
    /// Real instr.: RISCV_CSRRC
    case aliasCsrc = 1710
    /// Real instr.: RISCV_CSRRWI
    case aliasCsrwi = 1711
    /// Real instr.: RISCV_CSRRSI
    case aliasCsrsi = 1712
    /// Real instr.: RISCV_CSRRCI
    case aliasCsrci = 1713
    /// Real instr.: RISCV_SFENCE_VMA
    case aliasSfenceVma = 1714
    /// Real instr.: RISCV_HFENCE_GVMA
    case aliasHfenceGvma = 1715
    /// Real instr.: RISCV_HFENCE_VVMA
    case aliasHfenceVvma = 1716
    /// Real instr.: RISCV_ADD
    case aliasNtlP1 = 1717
    /// Real instr.: RISCV_ADD
    case aliasNtlPall = 1718
    /// Real instr.: RISCV_ADD
    case aliasNtlS1 = 1719
    /// Real instr.: RISCV_ADD
    case aliasNtlAll = 1720
    /// Real instr.: RISCV_AUIPC
    case aliasLpad = 1721
    /// Real instr.: RISCV_FSGNJ_S
    case aliasFmvS = 1722
    /// Real instr.: RISCV_FSGNJX_S
    case aliasFabsS = 1723
    /// Real instr.: RISCV_FSGNJN_S
    case aliasFnegS = 1724
    /// Real instr.: RISCV_CSRRS
    case aliasFrcsr = 1725
    /// Real instr.: RISCV_CSRRW
    case aliasFscsr = 1726
    /// Real instr.: RISCV_CSRRS
    case aliasFrrm = 1727
    /// Real instr.: RISCV_CSRRW
    case aliasFsrm = 1728
    /// Real instr.: RISCV_CSRRWI
    case aliasFsrmi = 1729
    /// Real instr.: RISCV_CSRRS
    case aliasFrflags = 1730
    /// Real instr.: RISCV_CSRRW
    case aliasFsflags = 1731
    /// Real instr.: RISCV_CSRRWI
    case aliasFsflagsi = 1732
    /// Real instr.: RISCV_FSGNJ_D
    case aliasFmvD = 1733
    /// Real instr.: RISCV_FSGNJX_D
    case aliasFabsD = 1734
    /// Real instr.: RISCV_FSGNJN_D
    case aliasFnegD = 1735
    /// Real instr.: RISCV_FSGNJ_H
    case aliasFmvH = 1736
    /// Real instr.: RISCV_FSGNJX_H
    case aliasFabsH = 1737
    /// Real instr.: RISCV_FSGNJN_H
    case aliasFnegH = 1738
    /// Real instr.: RISCV_ADD_UW
    case aliasZextW = 1739
    /// Real instr.: RISCV_VL1RE8_V
    case aliasVl1RV = 1740
    /// Real instr.: RISCV_VL2RE8_V
    case aliasVl2RV = 1741
    /// Real instr.: RISCV_VL4RE8_V
    case aliasVl4RV = 1742
    /// Real instr.: RISCV_VL8RE8_V
    case aliasVl8RV = 1743
    /// Real instr.: RISCV_VRSUB_VX
    case aliasVnegV = 1744
    /// Real instr.: RISCV_VWADD_VX
    case aliasVwcvtXXV = 1745
    /// Real instr.: RISCV_VWADDU_VX
    case aliasVwcvtuXXV = 1746
    /// Real instr.: RISCV_VXOR_VI
    case aliasVnotV = 1747
    /// Real instr.: RISCV_VNSRL_WX
    case aliasVncvtXXW = 1748
    /// Real instr.: RISCV_VFSGNJN_VV
    case aliasVfnegV = 1749
    /// Real instr.: RISCV_VFSGNJX_VV
    case aliasVfabsV = 1750
    /// Real instr.: RISCV_VMAND_MM
    case aliasVmmvM = 1751
    /// Real instr.: RISCV_VMXOR_MM
    case aliasVmclrM = 1752
    /// Real instr.: RISCV_VMXNOR_MM
    case aliasVmsetM = 1753
    /// Real instr.: RISCV_VMNAND_MM
    case aliasVmnotM = 1754
    /// Real instr.: RISCV_C_ADD_HINT
    case aliasCNtlP1 = 1755
    /// Real instr.: RISCV_C_ADD_HINT
    case aliasCNtlPall = 1756
    /// Real instr.: RISCV_C_ADD_HINT
    case aliasCNtlS1 = 1757
    /// Real instr.: RISCV_C_ADD_HINT
    case aliasCNtlAll = 1758
    /// Real instr.: RISCV_CV_MULSN
    case aliasCvMuls = 1759
    /// Real instr.: RISCV_CV_MULHHSN
    case aliasCvMulhhs = 1760
    /// Real instr.: RISCV_CV_MULUN
    case aliasCvMulu = 1761
    /// Real instr.: RISCV_CV_MULHHUN
    case aliasCvMulhhu = 1762
    /// clang-format on generated content <RISCVGenCSAliasEnum.inc> end
    case aliasEnd = 1763
}

/// > Operand type for instruction's operands
public enum RiscvOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// = CS_OP_FP (FP immediate operand).
    case fp = 3
    /// = Control and Status Register.
    case csr = 16
    /// = CS_OP_MEM (Memory operand).
    case mem = 128
}

/// > RISCV registers
public enum RiscvReg: UInt16 {
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case fflags = 1
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case frm = 2
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case ssp = 3
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case vl = 4
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case vlenb = 5
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case vtype = 6
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case vxrm = 7
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case vxsat = 8
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case dummyRegPairWithX0 = 9
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0 = 10
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1 = 11
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2 = 12
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3 = 13
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4 = 14
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5 = 15
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6 = 16
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7 = 17
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8 = 18
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9 = 19
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10 = 20
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11 = 21
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12 = 22
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13 = 23
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14 = 24
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15 = 25
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16 = 26
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17 = 27
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18 = 28
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19 = 29
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20 = 30
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21 = 31
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22 = 32
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23 = 33
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24 = 34
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25 = 35
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26 = 36
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v27 = 37
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28 = 38
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v29 = 39
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v30 = 40
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v31 = 41
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x0 = 42
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x1 = 43
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x2 = 44
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x3 = 45
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x4 = 46
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x5 = 47
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x6 = 48
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x7 = 49
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x8 = 50
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x9 = 51
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x10 = 52
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x11 = 53
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x12 = 54
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x13 = 55
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x14 = 56
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x15 = 57
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x16 = 58
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x17 = 59
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x18 = 60
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x19 = 61
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x20 = 62
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x21 = 63
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x22 = 64
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x23 = 65
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x24 = 66
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x25 = 67
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x26 = 68
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x27 = 69
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x28 = 70
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x29 = 71
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x30 = 72
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x31 = 73
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f0D = 74
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f1D = 75
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f2D = 76
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f3D = 77
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f4D = 78
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f5D = 79
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f6D = 80
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f7D = 81
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f8D = 82
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f9D = 83
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f10D = 84
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f11D = 85
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f12D = 86
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f13D = 87
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f14D = 88
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f15D = 89
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f16D = 90
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f17D = 91
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f18D = 92
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f19D = 93
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f20D = 94
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f21D = 95
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f22D = 96
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f23D = 97
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f24D = 98
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f25D = 99
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f26D = 100
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f27D = 101
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f28D = 102
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f29D = 103
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f30D = 104
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f31D = 105
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f0F = 106
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f1F = 107
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f2F = 108
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f3F = 109
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f4F = 110
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f5F = 111
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f6F = 112
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f7F = 113
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f8F = 114
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f9F = 115
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f10F = 116
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f11F = 117
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f12F = 118
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f13F = 119
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f14F = 120
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f15F = 121
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f16F = 122
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f17F = 123
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f18F = 124
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f19F = 125
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f20F = 126
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f21F = 127
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f22F = 128
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f23F = 129
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f24F = 130
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f25F = 131
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f26F = 132
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f27F = 133
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f28F = 134
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f29F = 135
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f30F = 136
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f31F = 137
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f0H = 138
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f1H = 139
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f2H = 140
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f3H = 141
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f4H = 142
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f5H = 143
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f6H = 144
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f7H = 145
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f8H = 146
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f9H = 147
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f10H = 148
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f11H = 149
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f12H = 150
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f13H = 151
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f14H = 152
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f15H = 153
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f16H = 154
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f17H = 155
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f18H = 156
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f19H = 157
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f20H = 158
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f21H = 159
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f22H = 160
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f23H = 161
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f24H = 162
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f25H = 163
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f26H = 164
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f27H = 165
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f28H = 166
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f29H = 167
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f30H = 168
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case f31H = 169
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x0Pair = 170
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m2 = 171
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m4 = 172
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m8 = 173
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2m2 = 174
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m2 = 175
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m4 = 176
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6m2 = 177
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m2 = 178
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m4 = 179
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m8 = 180
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10m2 = 181
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m2 = 182
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m4 = 183
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14m2 = 184
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m2 = 185
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m4 = 186
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m8 = 187
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18m2 = 188
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m2 = 189
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m4 = 190
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22m2 = 191
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m2 = 192
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m4 = 193
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m8 = 194
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26m2 = 195
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28m2 = 196
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28m4 = 197
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v30m2 = 198
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x2X3 = 199
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x4X5 = 200
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x6X7 = 201
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x8X9 = 202
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x10X11 = 203
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x12X13 = 204
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x14X15 = 205
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x16X17 = 206
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x18X19 = 207
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x20X21 = 208
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x22X23 = 209
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x24X25 = 210
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x26X27 = 211
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x28X29 = 212
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case x30X31 = 213
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2 = 214
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3 = 215
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4 = 216
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5 = 217
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6 = 218
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7 = 219
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8 = 220
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9 = 221
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10 = 222
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11 = 223
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12 = 224
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13 = 225
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14 = 226
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15 = 227
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16 = 228
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17 = 229
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18 = 230
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19 = 231
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20 = 232
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21 = 233
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22 = 234
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23 = 235
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24 = 236
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25 = 237
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26 = 238
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26V27 = 239
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v27V28 = 240
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28V29 = 241
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v29V30 = 242
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v30V31 = 243
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1 = 244
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2m2V4M2 = 245
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m2V6M2 = 246
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6m2V8M2 = 247
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m2V10M2 = 248
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10m2V12M2 = 249
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m2V14M2 = 250
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14m2V16M2 = 251
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m2V18M2 = 252
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18m2V20M2 = 253
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m2V22M2 = 254
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22m2V24M2 = 255
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m2V26M2 = 256
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26m2V28M2 = 257
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28m2V30M2 = 258
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m2V2M2 = 259
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m4V8M4 = 260
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m4V12M4 = 261
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m4V16M4 = 262
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m4V20M4 = 263
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m4V24M4 = 264
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m4V28M4 = 265
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m4V4M4 = 266
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3 = 267
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4 = 268
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5 = 269
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6 = 270
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7 = 271
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8 = 272
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9 = 273
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10 = 274
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11 = 275
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12 = 276
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13 = 277
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14 = 278
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15 = 279
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16 = 280
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17 = 281
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18 = 282
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19 = 283
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20 = 284
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21 = 285
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22 = 286
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23 = 287
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24 = 288
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25 = 289
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26 = 290
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26V27 = 291
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26V27V28 = 292
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v27V28V29 = 293
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28V29V30 = 294
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v29V30V31 = 295
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2 = 296
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2m2V4M2V6M2 = 297
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m2V6M2V8M2 = 298
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6m2V8M2V10M2 = 299
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m2V10M2V12M2 = 300
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10m2V12M2V14M2 = 301
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m2V14M2V16M2 = 302
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14m2V16M2V18M2 = 303
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m2V18M2V20M2 = 304
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18m2V20M2V22M2 = 305
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m2V22M2V24M2 = 306
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22m2V24M2V26M2 = 307
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m2V26M2V28M2 = 308
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26m2V28M2V30M2 = 309
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m2V2M2V4M2 = 310
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3V4 = 311
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4V5 = 312
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5V6 = 313
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6V7 = 314
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7V8 = 315
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8V9 = 316
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9V10 = 317
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10V11 = 318
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11V12 = 319
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12V13 = 320
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13V14 = 321
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14V15 = 322
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15V16 = 323
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16V17 = 324
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17V18 = 325
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18V19 = 326
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19V20 = 327
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20V21 = 328
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21V22 = 329
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22V23 = 330
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23V24 = 331
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24V25 = 332
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25V26 = 333
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26V27 = 334
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26V27V28 = 335
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26V27V28V29 = 336
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v27V28V29V30 = 337
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v28V29V30V31 = 338
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2V3 = 339
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2m2V4M2V6M2V8M2 = 340
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4m2V6M2V8M2V10M2 = 341
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6m2V8M2V10M2V12M2 = 342
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8m2V10M2V12M2V14M2 = 343
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10m2V12M2V14M2V16M2 = 344
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12m2V14M2V16M2V18M2 = 345
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14m2V16M2V18M2V20M2 = 346
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16m2V18M2V20M2V22M2 = 347
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18m2V20M2V22M2V24M2 = 348
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20m2V22M2V24M2V26M2 = 349
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22m2V24M2V26M2V28M2 = 350
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24m2V26M2V28M2V30M2 = 351
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0m2V2M2V4M2V6M2 = 352
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3V4V5 = 353
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4V5V6 = 354
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5V6V7 = 355
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6V7V8 = 356
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7V8V9 = 357
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8V9V10 = 358
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9V10V11 = 359
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10V11V12 = 360
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11V12V13 = 361
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12V13V14 = 362
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13V14V15 = 363
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14V15V16 = 364
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15V16V17 = 365
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16V17V18 = 366
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17V18V19 = 367
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18V19V20 = 368
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19V20V21 = 369
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20V21V22 = 370
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21V22V23 = 371
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22V23V24 = 372
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23V24V25 = 373
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24V25V26 = 374
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25V26V27 = 375
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26V27V28 = 376
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26V27V28V29 = 377
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26V27V28V29V30 = 378
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v27V28V29V30V31 = 379
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2V3V4 = 380
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3V4V5V6 = 381
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4V5V6V7 = 382
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5V6V7V8 = 383
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6V7V8V9 = 384
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7V8V9V10 = 385
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8V9V10V11 = 386
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9V10V11V12 = 387
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10V11V12V13 = 388
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11V12V13V14 = 389
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12V13V14V15 = 390
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13V14V15V16 = 391
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14V15V16V17 = 392
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15V16V17V18 = 393
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16V17V18V19 = 394
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17V18V19V20 = 395
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18V19V20V21 = 396
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19V20V21V22 = 397
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20V21V22V23 = 398
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21V22V23V24 = 399
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22V23V24V25 = 400
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23V24V25V26 = 401
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24V25V26V27 = 402
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25V26V27V28 = 403
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26V27V28V29 = 404
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26V27V28V29V30 = 405
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v26V27V28V29V30V31 = 406
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2V3V4V5 = 407
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3V4V5V6V7 = 408
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4V5V6V7V8 = 409
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5V6V7V8V9 = 410
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6V7V8V9V10 = 411
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7V8V9V10V11 = 412
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8V9V10V11V12 = 413
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9V10V11V12V13 = 414
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10V11V12V13V14 = 415
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11V12V13V14V15 = 416
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12V13V14V15V16 = 417
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13V14V15V16V17 = 418
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14V15V16V17V18 = 419
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15V16V17V18V19 = 420
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16V17V18V19V20 = 421
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17V18V19V20V21 = 422
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18V19V20V21V22 = 423
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19V20V21V22V23 = 424
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20V21V22V23V24 = 425
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21V22V23V24V25 = 426
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22V23V24V25V26 = 427
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23V24V25V26V27 = 428
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24V25V26V27V28 = 429
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25V26V27V28V29 = 430
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26V27V28V29V30 = 431
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v25V26V27V28V29V30V31 = 432
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2V3V4V5V6 = 433
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v1V2V3V4V5V6V7V8 = 434
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v2V3V4V5V6V7V8V9 = 435
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v3V4V5V6V7V8V9V10 = 436
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v4V5V6V7V8V9V10V11 = 437
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v5V6V7V8V9V10V11V12 = 438
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v6V7V8V9V10V11V12V13 = 439
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v7V8V9V10V11V12V13V14 = 440
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v8V9V10V11V12V13V14V15 = 441
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v9V10V11V12V13V14V15V16 = 442
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v10V11V12V13V14V15V16V17 = 443
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v11V12V13V14V15V16V17V18 = 444
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v12V13V14V15V16V17V18V19 = 445
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v13V14V15V16V17V18V19V20 = 446
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v14V15V16V17V18V19V20V21 = 447
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v15V16V17V18V19V20V21V22 = 448
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v16V17V18V19V20V21V22V23 = 449
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v17V18V19V20V21V22V23V24 = 450
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v18V19V20V21V22V23V24V25 = 451
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v19V20V21V22V23V24V25V26 = 452
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v20V21V22V23V24V25V26V27 = 453
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v21V22V23V24V25V26V27V28 = 454
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v22V23V24V25V26V27V28V29 = 455
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v23V24V25V26V27V28V29V30 = 456
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v24V25V26V27V28V29V30V31 = 457
    /// generated content <RISCVGenCSRegEnum.inc> begin clang-format off
    case v0V1V2V3V4V5V6V7 = 458
    /// 459
    case ending = 459
}

/// > Floating-point rounding mode for RISC-V FP instructions
public enum RiscvRm: UInt32 {
    /// not applicable (no rounding mode)
    case invalid = 0
    /// round to nearest, ties to even
    case rne = 1
    /// round towards zero
    case rtz = 2
    /// round down (towards -infinity)
    case rdn = 3
    /// round up (towards +infinity)
    case rup = 4
    /// round to nearest, ties to max magnitude
    case rmm = 5
    /// dynamic rounding mode (use frm CSR)
    case dyn = 6
}

public enum RiscvSysreg: UInt32 {
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fflags = 1
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case frm = 2
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fcsr = 3
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstart = 8
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vxsat = 9
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vxrm = 10
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vcsr = 15
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case seed = 21
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case jvt = 23
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sstatus = 256
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sie = 260
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stvec = 261
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scounteren = 262
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case senvcfg = 266
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sstateen0 = 268
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sstateen1 = 269
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sstateen2 = 270
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sstateen3 = 271
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sieh = 276
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sscratch = 320
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sepc = 321
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scause = 322
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stval = 323
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sip = 324
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stimecmp = 333
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case siselect = 336
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sireg = 337
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case siph = 340
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stopei = 348
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stimecmph = 349
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case satp = 384
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsstatus = 512
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsie = 516
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstvec = 517
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsieh = 532
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsscratch = 576
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsepc = 577
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vscause = 578
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstval = 579
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsip = 580
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstimecmp = 589
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsiselect = 592
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsireg = 593
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsiph = 596
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstopei = 604
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstimecmph = 605
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsatp = 640
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstatus = 768
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case misa = 769
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case medeleg = 770
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mideleg = 771
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mie = 772
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtvec = 773
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcounteren = 774
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvien = 776
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvip = 777
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case menvcfg = 778
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen0 = 780
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen1 = 781
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen2 = 782
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen3 = 783
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstatush = 784
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case midelegh = 787
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mieh = 788
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvienh = 792
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mviph = 793
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case menvcfgh = 794
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen0h = 796
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen1h = 797
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen2h = 798
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mstateen3h = 799
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcountinhibit = 800
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    public static let mucounteren = 800
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent3 = 803
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent4 = 804
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent5 = 805
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent6 = 806
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent7 = 807
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent8 = 808
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent9 = 809
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent10 = 810
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent11 = 811
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent12 = 812
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent13 = 813
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent14 = 814
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent15 = 815
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent16 = 816
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent17 = 817
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent18 = 818
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent19 = 819
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent20 = 820
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent21 = 821
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent22 = 822
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent23 = 823
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent24 = 824
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent25 = 825
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent26 = 826
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent27 = 827
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent28 = 828
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent29 = 829
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent30 = 830
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent31 = 831
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mscratch = 832
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mepc = 833
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcause = 834
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtval = 835
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mip = 836
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtinst = 842
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtval2 = 843
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case miselect = 848
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mireg = 849
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case miph = 852
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtopei = 860
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg0 = 928
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg1 = 929
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg2 = 930
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg3 = 931
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg4 = 932
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg5 = 933
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg6 = 934
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg7 = 935
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg8 = 936
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg9 = 937
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg10 = 938
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg11 = 939
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg12 = 940
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg13 = 941
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg14 = 942
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpcfg15 = 943
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr0 = 944
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr1 = 945
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr2 = 946
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr3 = 947
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr4 = 948
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr5 = 949
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr6 = 950
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr7 = 951
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr8 = 952
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr9 = 953
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr10 = 954
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr11 = 955
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr12 = 956
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr13 = 957
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr14 = 958
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr15 = 959
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr16 = 960
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr17 = 961
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr18 = 962
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr19 = 963
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr20 = 964
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr21 = 965
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr22 = 966
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr23 = 967
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr24 = 968
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr25 = 969
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr26 = 970
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr27 = 971
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr28 = 972
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr29 = 973
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr30 = 974
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr31 = 975
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr32 = 976
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr33 = 977
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr34 = 978
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr35 = 979
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr36 = 980
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr37 = 981
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr38 = 982
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr39 = 983
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr40 = 984
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr41 = 985
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr42 = 986
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr43 = 987
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr44 = 988
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr45 = 989
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr46 = 990
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr47 = 991
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr48 = 992
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr49 = 993
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr50 = 994
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr51 = 995
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr52 = 996
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr53 = 997
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr54 = 998
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr55 = 999
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr56 = 1000
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr57 = 1001
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr58 = 1002
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr59 = 1003
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr60 = 1004
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr61 = 1005
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr62 = 1006
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmpaddr63 = 1007
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scontext = 1448
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstatus = 1536
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hedeleg = 1538
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hideleg = 1539
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hie = 1540
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case htimedelta = 1541
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hcounteren = 1542
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hgeie = 1543
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hvien = 1544
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hvictl = 1545
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case henvcfg = 1546
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen0 = 1548
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen1 = 1549
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen2 = 1550
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen3 = 1551
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hidelegh = 1555
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case htimedeltah = 1557
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hvienh = 1560
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case henvcfgh = 1562
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen0h = 1564
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen1h = 1565
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen2h = 1566
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstateen3h = 1567
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case htval = 1603
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hip = 1604
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hvip = 1605
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hviprio1 = 1606
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hviprio2 = 1607
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case htinst = 1610
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hviph = 1621
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hviprio1h = 1622
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hviprio2h = 1623
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hgatp = 1664
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hcontext = 1704
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent3h = 1827
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent4h = 1828
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent5h = 1829
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent6h = 1830
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent7h = 1831
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent8h = 1832
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent9h = 1833
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent10h = 1834
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent11h = 1835
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent12h = 1836
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent13h = 1837
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent14h = 1838
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent15h = 1839
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent16h = 1840
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent17h = 1841
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent18h = 1842
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent19h = 1843
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent20h = 1844
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent21h = 1845
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent22h = 1846
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent23h = 1847
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent24h = 1848
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent25h = 1849
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent26h = 1850
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent27h = 1851
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent28h = 1852
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent29h = 1853
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent30h = 1854
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmevent31h = 1855
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mseccfg = 1863
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mseccfgh = 1879
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tselect = 1952
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tdata1 = 1953
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tdata2 = 1954
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tdata3 = 1955
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcontext = 1960
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dcsr = 1968
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dpc = 1969
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dscratch0 = 1970
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    public static let dscratch = 1970
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dscratch1 = 1971
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcycle = 2816
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case minstret = 2818
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter3 = 2819
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter4 = 2820
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter5 = 2821
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter6 = 2822
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter7 = 2823
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter8 = 2824
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter9 = 2825
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter10 = 2826
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter11 = 2827
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter12 = 2828
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter13 = 2829
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter14 = 2830
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter15 = 2831
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter16 = 2832
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter17 = 2833
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter18 = 2834
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter19 = 2835
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter20 = 2836
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter21 = 2837
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter22 = 2838
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter23 = 2839
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter24 = 2840
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter25 = 2841
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter26 = 2842
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter27 = 2843
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter28 = 2844
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter29 = 2845
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter30 = 2846
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter31 = 2847
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mcycleh = 2944
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case minstreth = 2946
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter3h = 2947
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter4h = 2948
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter5h = 2949
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter6h = 2950
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter7h = 2951
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter8h = 2952
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter9h = 2953
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter10h = 2954
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter11h = 2955
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter12h = 2956
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter13h = 2957
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter14h = 2958
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter15h = 2959
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter16h = 2960
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter17h = 2961
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter18h = 2962
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter19h = 2963
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter20h = 2964
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter21h = 2965
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter22h = 2966
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter23h = 2967
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter24h = 2968
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter25h = 2969
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter26h = 2970
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter27h = 2971
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter28h = 2972
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter29h = 2973
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter30h = 2974
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhpmcounter31h = 2975
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cycle = 3072
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case time = 3073
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case instret = 3074
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter3 = 3075
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter4 = 3076
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter5 = 3077
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter6 = 3078
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter7 = 3079
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter8 = 3080
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter9 = 3081
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter10 = 3082
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter11 = 3083
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter12 = 3084
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter13 = 3085
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter14 = 3086
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter15 = 3087
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter16 = 3088
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter17 = 3089
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter18 = 3090
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter19 = 3091
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter20 = 3092
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter21 = 3093
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter22 = 3094
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter23 = 3095
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter24 = 3096
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter25 = 3097
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter26 = 3098
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter27 = 3099
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter28 = 3100
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter29 = 3101
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter30 = 3102
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter31 = 3103
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vl = 3104
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vtype = 3105
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vlenb = 3106
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cycleh = 3200
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case timeh = 3201
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case instreth = 3202
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter3h = 3203
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter4h = 3204
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter5h = 3205
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter6h = 3206
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter7h = 3207
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter8h = 3208
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter9h = 3209
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter10h = 3210
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter11h = 3211
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter12h = 3212
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter13h = 3213
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter14h = 3214
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter15h = 3215
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter16h = 3216
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter17h = 3217
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter18h = 3218
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter19h = 3219
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter20h = 3220
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter21h = 3221
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter22h = 3222
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter23h = 3223
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter24h = 3224
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter25h = 3225
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter26h = 3226
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter27h = 3227
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter28h = 3228
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter29h = 3229
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter30h = 3230
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpmcounter31h = 3231
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scountovf = 3488
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case stopi = 3504
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hgeip = 3602
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstopi = 3760
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvendorid = 3857
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case marchid = 3858
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mimpid = 3859
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mhartid = 3860
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mconfigptr = 3861
    /// generated content <RISCVGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mtopi = 4016
}

#endif
