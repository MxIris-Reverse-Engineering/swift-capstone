// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Riscv)

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
    /// Architecture-specific groups
    case isrv32 = 128
    /// Architecture-specific groups
    case isrv64 = 129
    /// Architecture-specific groups
    case hasstdexta = 130
    /// Architecture-specific groups
    case hasstdextc = 131
    /// Architecture-specific groups
    case hasstdextd = 132
    /// Architecture-specific groups
    case hasstdextf = 133
    /// Architecture-specific groups
    case hasstdextm = 134
    /// RISCV_GRP_ISRVA, RISCV_GRP_ISRVC, RISCV_GRP_ISRVD, RISCV_GRP_ISRVCD, RISCV_GRP_ISRVF, RISCV_GRP_ISRV32C, RISCV_GRP_ISRV32CF, RISCV_GRP_ISRVM, RISCV_GRP_ISRV64A, RISCV_GRP_ISRV64C, RISCV_GRP_ISRV64D, RISCV_GRP_ISRV64F, RISCV_GRP_ISRV64M,
    case ending = 135
}

/// > RISCV instruction
public enum RiscvIns: UInt32 {
    case invalid = 0
    case add = 1
    case addi = 2
    case addiw = 3
    case addw = 4
    case amoaddD = 5
    case amoaddDAq = 6
    case amoaddDAqRl = 7
    case amoaddDRl = 8
    case amoaddW = 9
    case amoaddWAq = 10
    case amoaddWAqRl = 11
    case amoaddWRl = 12
    case amoandD = 13
    case amoandDAq = 14
    case amoandDAqRl = 15
    case amoandDRl = 16
    case amoandW = 17
    case amoandWAq = 18
    case amoandWAqRl = 19
    case amoandWRl = 20
    case amomaxuD = 21
    case amomaxuDAq = 22
    case amomaxuDAqRl = 23
    case amomaxuDRl = 24
    case amomaxuW = 25
    case amomaxuWAq = 26
    case amomaxuWAqRl = 27
    case amomaxuWRl = 28
    case amomaxD = 29
    case amomaxDAq = 30
    case amomaxDAqRl = 31
    case amomaxDRl = 32
    case amomaxW = 33
    case amomaxWAq = 34
    case amomaxWAqRl = 35
    case amomaxWRl = 36
    case amominuD = 37
    case amominuDAq = 38
    case amominuDAqRl = 39
    case amominuDRl = 40
    case amominuW = 41
    case amominuWAq = 42
    case amominuWAqRl = 43
    case amominuWRl = 44
    case amominD = 45
    case amominDAq = 46
    case amominDAqRl = 47
    case amominDRl = 48
    case amominW = 49
    case amominWAq = 50
    case amominWAqRl = 51
    case amominWRl = 52
    case amoorD = 53
    case amoorDAq = 54
    case amoorDAqRl = 55
    case amoorDRl = 56
    case amoorW = 57
    case amoorWAq = 58
    case amoorWAqRl = 59
    case amoorWRl = 60
    case amoswapD = 61
    case amoswapDAq = 62
    case amoswapDAqRl = 63
    case amoswapDRl = 64
    case amoswapW = 65
    case amoswapWAq = 66
    case amoswapWAqRl = 67
    case amoswapWRl = 68
    case amoxorD = 69
    case amoxorDAq = 70
    case amoxorDAqRl = 71
    case amoxorDRl = 72
    case amoxorW = 73
    case amoxorWAq = 74
    case amoxorWAqRl = 75
    case amoxorWRl = 76
    case and = 77
    case andi = 78
    case auipc = 79
    case beq = 80
    case bge = 81
    case bgeu = 82
    case blt = 83
    case bltu = 84
    case bne = 85
    case csrrc = 86
    case csrrci = 87
    case csrrs = 88
    case csrrsi = 89
    case csrrw = 90
    case csrrwi = 91
    case cAdd = 92
    case cAddi = 93
    case cAddi16Sp = 94
    case cAddi4Spn = 95
    case cAddiw = 96
    case cAddw = 97
    case cAnd = 98
    case cAndi = 99
    case cBeqz = 100
    case cBnez = 101
    case cEbreak = 102
    case cFld = 103
    case cFldsp = 104
    case cFlw = 105
    case cFlwsp = 106
    case cFsd = 107
    case cFsdsp = 108
    case cFsw = 109
    case cFswsp = 110
    case cJ = 111
    case cJal = 112
    case cJalr = 113
    case cJr = 114
    case cLd = 115
    case cLdsp = 116
    case cLi = 117
    case cLui = 118
    case cLw = 119
    case cLwsp = 120
    case cMv = 121
    case cNop = 122
    case cOr = 123
    case cSd = 124
    case cSdsp = 125
    case cSlli = 126
    case cSrai = 127
    case cSrli = 128
    case cSub = 129
    case cSubw = 130
    case cSw = 131
    case cSwsp = 132
    case cUnimp = 133
    case cXor = 134
    case div = 135
    case divu = 136
    case divuw = 137
    case divw = 138
    case ebreak = 139
    case ecall = 140
    case faddD = 141
    case faddS = 142
    case fclassD = 143
    case fclassS = 144
    case fcvtDL = 145
    case fcvtDLu = 146
    case fcvtDS = 147
    case fcvtDW = 148
    case fcvtDWu = 149
    case fcvtLuD = 150
    case fcvtLuS = 151
    case fcvtLD = 152
    case fcvtLS = 153
    case fcvtSD = 154
    case fcvtSL = 155
    case fcvtSLu = 156
    case fcvtSW = 157
    case fcvtSWu = 158
    case fcvtWuD = 159
    case fcvtWuS = 160
    case fcvtWD = 161
    case fcvtWS = 162
    case fdivD = 163
    case fdivS = 164
    case fence = 165
    case fenceI = 166
    case fenceTso = 167
    case feqD = 168
    case feqS = 169
    case fld = 170
    case fleD = 171
    case fleS = 172
    case fltD = 173
    case fltS = 174
    case flw = 175
    case fmaddD = 176
    case fmaddS = 177
    case fmaxD = 178
    case fmaxS = 179
    case fminD = 180
    case fminS = 181
    case fmsubD = 182
    case fmsubS = 183
    case fmulD = 184
    case fmulS = 185
    case fmvDX = 186
    case fmvWX = 187
    case fmvXD = 188
    case fmvXW = 189
    case fnmaddD = 190
    case fnmaddS = 191
    case fnmsubD = 192
    case fnmsubS = 193
    case fsd = 194
    case fsgnjnD = 195
    case fsgnjnS = 196
    case fsgnjxD = 197
    case fsgnjxS = 198
    case fsgnjD = 199
    case fsgnjS = 200
    case fsqrtD = 201
    case fsqrtS = 202
    case fsubD = 203
    case fsubS = 204
    case fsw = 205
    case jal = 206
    case jalr = 207
    case lb = 208
    case lbu = 209
    case ld = 210
    case lh = 211
    case lhu = 212
    case lrD = 213
    case lrDAq = 214
    case lrDAqRl = 215
    case lrDRl = 216
    case lrW = 217
    case lrWAq = 218
    case lrWAqRl = 219
    case lrWRl = 220
    case lui = 221
    case lw = 222
    case lwu = 223
    case mret = 224
    case mul = 225
    case mulh = 226
    case mulhsu = 227
    case mulhu = 228
    case mulw = 229
    case or = 230
    case ori = 231
    case rem = 232
    case remu = 233
    case remuw = 234
    case remw = 235
    case sb = 236
    case scD = 237
    case scDAq = 238
    case scDAqRl = 239
    case scDRl = 240
    case scW = 241
    case scWAq = 242
    case scWAqRl = 243
    case scWRl = 244
    case sd = 245
    case sfenceVma = 246
    case sh = 247
    case sll = 248
    case slli = 249
    case slliw = 250
    case sllw = 251
    case slt = 252
    case slti = 253
    case sltiu = 254
    case sltu = 255
    case sra = 256
    case srai = 257
    case sraiw = 258
    case sraw = 259
    case sret = 260
    case srl = 261
    case srli = 262
    case srliw = 263
    case srlw = 264
    case sub = 265
    case subw = 266
    case sw = 267
    case unimp = 268
    case uret = 269
    case wfi = 270
    case xor = 271
    case xori = 272
    case ending = 273
}

/// > Operand type for instruction's operands
public enum RiscvOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// = CS_OP_MEM (Memory operand).
    case mem = 3
}

/// > RISCV registers
public enum RiscvReg: UInt16 {
    case invalid = 0
    /// "zero"
    case x0 = 1
    /// "zero"
    public static let zero = 1
    /// "ra"
    case x1 = 2
    /// "ra"
    public static let ra = 2
    /// "sp"
    case x2 = 3
    /// "sp"
    public static let sp = 3
    /// "gp"
    case x3 = 4
    /// "gp"
    public static let gp = 4
    /// "tp"
    case x4 = 5
    /// "tp"
    public static let tp = 5
    /// "t0"
    case x5 = 6
    /// "t0"
    public static let t0 = 6
    /// "t1"
    case x6 = 7
    /// "t1"
    public static let t1 = 7
    /// "t2"
    case x7 = 8
    /// "t2"
    public static let t2 = 8
    /// "s0/fp"
    case x8 = 9
    /// "s0"
    public static let s0 = 9
    /// "fp"
    public static let fp = 9
    /// "s1"
    case x9 = 10
    /// "s1"
    public static let s1 = 10
    /// "a0"
    case x10 = 11
    /// "a0"
    public static let a0 = 11
    /// "a1"
    case x11 = 12
    /// "a1"
    public static let a1 = 12
    /// "a2"
    case x12 = 13
    /// "a2"
    public static let a2 = 13
    /// "a3"
    case x13 = 14
    /// "a3"
    public static let a3 = 14
    /// "a4"
    case x14 = 15
    /// "a4"
    public static let a4 = 15
    /// "a5"
    case x15 = 16
    /// "a5"
    public static let a5 = 16
    /// "a6"
    case x16 = 17
    /// "a6"
    public static let a6 = 17
    /// "a7"
    case x17 = 18
    /// "a7"
    public static let a7 = 18
    /// "s2"
    case x18 = 19
    /// "s2"
    public static let s2 = 19
    /// "s3"
    case x19 = 20
    /// "s3"
    public static let s3 = 20
    /// "s4"
    case x20 = 21
    /// "s4"
    public static let s4 = 21
    /// "s5"
    case x21 = 22
    /// "s5"
    public static let s5 = 22
    /// "s6"
    case x22 = 23
    /// "s6"
    public static let s6 = 23
    /// "s7"
    case x23 = 24
    /// "s7"
    public static let s7 = 24
    /// "s8"
    case x24 = 25
    /// "s8"
    public static let s8 = 25
    /// "s9"
    case x25 = 26
    /// "s9"
    public static let s9 = 26
    /// "s10"
    case x26 = 27
    /// "s10"
    public static let s10 = 27
    /// "s11"
    case x27 = 28
    /// "s11"
    public static let s11 = 28
    /// "t3"
    case x28 = 29
    /// "t3"
    public static let t3 = 29
    /// "t4"
    case x29 = 30
    /// "t4"
    public static let t4 = 30
    /// "t5"
    case x30 = 31
    /// "t5"
    public static let t5 = 31
    /// "t6"
    case x31 = 32
    /// "t6"
    public static let t6 = 32
    /// "ft0"
    case f032 = 33
    /// "ft0"
    case f064 = 34
    /// "ft1"
    case f132 = 35
    /// "ft1"
    case f164 = 36
    /// "ft2"
    case f232 = 37
    /// "ft2"
    case f264 = 38
    /// "ft3"
    case f332 = 39
    /// "ft3"
    case f364 = 40
    /// "ft4"
    case f432 = 41
    /// "ft4"
    case f464 = 42
    /// "ft5"
    case f532 = 43
    /// "ft5"
    case f564 = 44
    /// "ft6"
    case f632 = 45
    /// "ft6"
    case f664 = 46
    /// "ft7"
    case f732 = 47
    /// "ft7"
    case f764 = 48
    /// "fs0"
    case f832 = 49
    /// "fs0"
    case f864 = 50
    /// "fs1"
    case f932 = 51
    /// "fs1"
    case f964 = 52
    /// "fa0"
    case f1032 = 53
    /// "fa0"
    case f1064 = 54
    /// "fa1"
    case f1132 = 55
    /// "fa1"
    case f1164 = 56
    /// "fa2"
    case f1232 = 57
    /// "fa2"
    case f1264 = 58
    /// "fa3"
    case f1332 = 59
    /// "fa3"
    case f1364 = 60
    /// "fa4"
    case f1432 = 61
    /// "fa4"
    case f1464 = 62
    /// "fa5"
    case f1532 = 63
    /// "fa5"
    case f1564 = 64
    /// "fa6"
    case f1632 = 65
    /// "fa6"
    case f1664 = 66
    /// "fa7"
    case f1732 = 67
    /// "fa7"
    case f1764 = 68
    /// "fs2"
    case f1832 = 69
    /// "fs2"
    case f1864 = 70
    /// "fs3"
    case f1932 = 71
    /// "fs3"
    case f1964 = 72
    /// "fs4"
    case f2032 = 73
    /// "fs4"
    case f2064 = 74
    /// "fs5"
    case f2132 = 75
    /// "fs5"
    case f2164 = 76
    /// "fs6"
    case f2232 = 77
    /// "fs6"
    case f2264 = 78
    /// "fs7"
    case f2332 = 79
    /// "fs7"
    case f2364 = 80
    /// "fs8"
    case f2432 = 81
    /// "fs8"
    case f2464 = 82
    /// "fs9"
    case f2532 = 83
    /// "fs9"
    case f2564 = 84
    /// "fs10"
    case f2632 = 85
    /// "fs10"
    case f2664 = 86
    /// "fs11"
    case f2732 = 87
    /// "fs11"
    case f2764 = 88
    /// "ft8"
    case f2832 = 89
    /// "ft8"
    case f2864 = 90
    /// "ft9"
    case f2932 = 91
    /// "ft9"
    case f2964 = 92
    /// "ft10"
    case f3032 = 93
    /// "ft10"
    case f3064 = 94
    /// "ft11"
    case f3132 = 95
    /// "ft11"
    case f3164 = 96
    /// <-- mark the end of the list or registers
    case ending = 97
}
