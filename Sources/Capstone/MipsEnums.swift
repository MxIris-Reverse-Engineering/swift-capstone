#if CAPSTONE_HAS_MIPS
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Mips)

/// Group of MIPS instructions
public enum MipsFeature: UInt32 {
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips2 = 128
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips3 = 131
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notmips3 = 132
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips32 = 137
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips32r2 = 138
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips32r5 = 139
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips32r6 = 140
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notmips32r6 = 141
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasnanomips = 142
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notnanomips = 143
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isgp64bit = 144
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isgp32bit = 145
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isptr64bit = 146
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isptr32bit = 147
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips64 = 148
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notmips64 = 149
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips64r2 = 150
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips64r5 = 151
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips64r6 = 152
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notmips64r6 = 153
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case inmips16mode = 154
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notinmips16mode = 155
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hascnmips = 156
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notcnmips = 157
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hascnmipsp = 158
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notcnmipsp = 159
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case issym32 = 160
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case issym64 = 161
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasstdenc = 162
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case inmicromips = 163
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notinmicromips = 164
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case haseva = 165
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmsa = 166
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmadd4 = 167
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmt = 168
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case useindirectjumpshazard = 169
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case noindirectjumpguards = 170
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hascrc = 171
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasvirt = 172
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasginv = 173
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hastlb = 174
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isfp64bit = 175
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case notfp64bit = 176
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case issinglefloat = 177
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isnotsinglefloat = 178
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case isnotsoftfloat = 179
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasmips3d = 180
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasdsp = 181
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasdspr2 = 182
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case hasdspr3 = 183
}

/// Group of MIPS instructions
public enum MipsFeatureHasmips3: UInt32 {
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32 = 129
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32r2 = 130
}

/// Group of MIPS instructions
public enum MipsFeatureHasmips4: UInt32 {
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32 = 133
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32r2 = 135
}

/// Group of MIPS instructions
public enum MipsFeatureHasmips5: UInt32 {
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32r2 = 136
}

/// Group of MIPS instructions
public enum MipsFeatureNotmips4: UInt32 {
    /// Architecture-specific groups generated content <MipsGenCSFeatureEnum.inc> begin clang-format off
    case _32 = 134
}

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
    /// clang-format on generated content <MipsGenCSFeatureEnum.inc> end
    case ending = 184
}

/// MIPS instruction
public enum MipsIns: UInt32 {
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case abs = 1
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case align = 2
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beql = 3
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bge = 4
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgel = 5
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgeu = 6
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgeul = 7
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgt = 8
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtl = 9
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtu = 10
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtul = 11
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ble = 12
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blel = 13
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bleu = 14
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bleul = 15
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blt = 16
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltl = 17
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltu = 18
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltul = 19
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnel = 20
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case b = 21
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beq = 22
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bne = 23
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cftc1 = 24
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cttc1 = 25
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmul = 26
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmulo = 27
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmulou = 28
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case drol = 29
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dror = 30
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ddiv = 31
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case drem = 32
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ddivu = 33
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dremu = 34
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jal = 35
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ld = 36
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwm = 37
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case la = 38
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dla = 39
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case li = 40
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dli = 41
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case liD = 42
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case liS = 43
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftacx = 44
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftc0 = 45
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftc1 = 46
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftdsp = 47
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftgpr = 48
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfthc1 = 49
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfthi = 50
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftlo = 51
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttacx = 52
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttc0 = 53
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttc1 = 54
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttdsp = 55
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttgpr = 56
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtthc1 = 57
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtthi = 58
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttlo = 59
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mul = 60
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulo = 61
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulou = 62
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nor = 63
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addiu = 64
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case andi = 65
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subu = 66
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case truncWD = 67
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case truncWS = 68
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rol = 69
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ror = 70
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sD = 71
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sd = 72
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case div = 73
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seq = 74
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sge = 75
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sgeu = 76
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sgt = 77
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sgtu = 78
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sle = 79
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sleu = 80
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slt = 81
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sltu = 82
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sne = 83
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rem = 84
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swm = 85
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case saa = 86
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case saad = 87
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divu = 88
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case remu = 89
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ulh = 90
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ulhu = 91
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ulw = 92
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ush = 93
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case usw = 94
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case absqSPh = 95
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case absqSQb = 96
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case absqSW = 97
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case add = 98
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addiupc = 99
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addiur1sp = 100
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addiur2 = 101
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addius5 = 102
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addiusp = 103
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqhPh = 104
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqhRPh = 105
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqhRW = 106
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqhW = 107
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqPh = 108
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqSPh = 109
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addqSW = 110
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addrPs = 111
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsc = 112
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsAB = 113
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsAD = 114
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsAH = 115
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsAW = 116
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsSB = 117
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsSD = 118
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsSH = 119
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsSW = 120
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsUB = 121
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsUD = 122
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsUH = 123
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addsUW = 124
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addu16 = 125
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduhQb = 126
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduhRQb = 127
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addu = 128
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduPh = 129
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduQb = 130
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduSPh = 131
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case adduSQb = 132
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addviB = 133
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addviD = 134
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addviH = 135
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addviW = 136
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addvB = 137
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addvD = 138
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addvH = 139
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addvW = 140
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addwc = 141
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addAB = 142
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addAD = 143
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addAH = 144
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addAW = 145
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addi = 146
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aluipc = 147
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case and = 148
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case and16 = 149
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case andi16 = 150
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case andiB = 151
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case andV = 152
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case append = 153
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubSB = 154
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubSD = 155
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubSH = 156
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubSW = 157
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubUB = 158
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubUD = 159
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubUH = 160
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case asubUW = 161
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aui = 162
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case auipc = 163
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averSB = 164
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averSD = 165
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averSH = 166
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averSW = 167
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averUB = 168
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averUD = 169
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averUH = 170
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case averUW = 171
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveSB = 172
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveSD = 173
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveSH = 174
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveSW = 175
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveUB = 176
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveUD = 177
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveUH = 178
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case aveUW = 179
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case b16 = 180
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case baddu = 181
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bal = 182
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case balc = 183
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case balign = 184
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case balrsc = 185
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbeqzc = 186
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbit0 = 187
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbit032 = 188
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbit1 = 189
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbit132 = 190
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bbnezc = 191
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc = 192
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc16 = 193
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1eqz = 194
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1eqzc = 195
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1f = 196
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1fl = 197
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1nez = 198
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1nezc = 199
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1t = 200
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc1tl = 201
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc2eqz = 202
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc2eqzc = 203
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc2nez = 204
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bc2nezc = 205
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclriB = 206
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclriD = 207
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclriH = 208
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclriW = 209
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclrB = 210
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclrD = 211
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclrH = 212
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bclrW = 213
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqc = 214
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqic = 215
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqz16 = 216
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqzalc = 217
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqzc = 218
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqzc16 = 219
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgec = 220
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgeic = 221
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgeiuc = 222
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgeuc = 223
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgez = 224
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezal = 225
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezalc = 226
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezall = 227
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezals = 228
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezc = 229
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgezl = 230
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtz = 231
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtzalc = 232
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtzc = 233
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bgtzl = 234
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsliB = 235
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsliD = 236
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsliH = 237
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsliW = 238
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binslB = 239
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binslD = 240
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binslH = 241
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binslW = 242
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsriB = 243
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsriD = 244
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsriH = 245
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsriW = 246
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsrB = 247
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsrD = 248
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsrH = 249
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case binsrW = 250
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bitrev = 251
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bitrevw = 252
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bitswap = 253
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blez = 254
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blezalc = 255
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blezc = 256
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case blezl = 257
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltc = 258
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltic = 259
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltiuc = 260
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltuc = 261
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltz = 262
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzal = 263
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzalc = 264
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzall = 265
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzals = 266
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzc = 267
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bltzl = 268
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bmnziB = 269
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bmnzV = 270
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bmziB = 271
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bmzV = 272
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnec = 273
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegiB = 274
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegiD = 275
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegiH = 276
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegiW = 277
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegB = 278
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegD = 279
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegH = 280
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnegW = 281
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bneic = 282
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnez16 = 283
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnezalc = 284
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnezc = 285
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnezc16 = 286
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnvc = 287
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnzB = 288
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnzD = 289
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnzH = 290
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnzV = 291
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnzW = 292
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bovc = 293
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bposge32 = 294
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bposge32c = 295
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case `break` = 296
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case break16 = 297
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case brsc = 298
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bseliB = 299
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bselV = 300
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetiB = 301
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetiD = 302
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetiH = 303
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetiW = 304
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetB = 305
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetD = 306
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetH = 307
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bsetW = 308
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case byterevw = 309
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bzB = 310
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bzD = 311
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bzH = 312
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bzV = 313
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bzW = 314
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case beqz = 315
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bnez = 316
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case bteqz = 317
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case btnez = 318
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cache = 319
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cachee = 320
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceilLD = 321
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceilLS = 322
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceilWD = 323
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceilWS = 324
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqiB = 325
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqiD = 326
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqiH = 327
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqiW = 328
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqB = 329
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqD = 330
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqH = 331
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ceqW = 332
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cfc1 = 333
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cfc2 = 334
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cfcmsa = 335
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cins = 336
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cins32 = 337
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case classD = 338
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case classS = 339
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiSB = 340
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiSD = 341
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiSH = 342
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiSW = 343
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiUB = 344
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiUD = 345
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiUH = 346
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleiUW = 347
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleSB = 348
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleSD = 349
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleSH = 350
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleSW = 351
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleUB = 352
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleUD = 353
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleUH = 354
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cleUW = 355
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case clo = 356
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiSB = 357
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiSD = 358
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiSH = 359
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiSW = 360
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiUB = 361
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiUD = 362
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiUH = 363
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltiUW = 364
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltSB = 365
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltSD = 366
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltSH = 367
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltSW = 368
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltUB = 369
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltUD = 370
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltUH = 371
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cltUW = 372
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case clz = 373
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpgduEqQb = 374
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpgduLeQb = 375
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpgduLtQb = 376
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpguEqQb = 377
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpguLeQb = 378
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpguLtQb = 379
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpuEqQb = 380
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpuLeQb = 381
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpuLtQb = 382
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpAfD = 383
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpAfS = 384
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpEqD = 385
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpEqPh = 386
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpEqS = 387
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLeD = 388
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLePh = 389
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLeS = 390
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLtD = 391
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLtPh = 392
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpLtS = 393
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSafD = 394
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSafS = 395
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSeqD = 396
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSeqS = 397
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSleD = 398
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSleS = 399
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSltD = 400
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSltS = 401
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSueqD = 402
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSueqS = 403
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSuleD = 404
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSuleS = 405
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSultD = 406
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSultS = 407
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSunD = 408
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpSunS = 409
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUeqD = 410
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUeqS = 411
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUleD = 412
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUleS = 413
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUltD = 414
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUltS = 415
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUnD = 416
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpUnS = 417
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copySB = 418
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copySD = 419
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copySH = 420
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copySW = 421
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copyUB = 422
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copyUH = 423
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case copyUW = 424
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32b = 425
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32cb = 426
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32cd = 427
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32ch = 428
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32cw = 429
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32d = 430
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32h = 431
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case crc32w = 432
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ctc1 = 433
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ctc2 = 434
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ctcmsa = 435
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtDS = 436
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtDW = 437
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtDL = 438
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtLD = 439
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtLS = 440
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtPsPw = 441
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtPsS = 442
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtPwPs = 443
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtSD = 444
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtSL = 445
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtSPl = 446
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtSPu = 447
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtSW = 448
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtWD = 449
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cvtWS = 450
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cEqD = 451
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cEqS = 452
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cFD = 453
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cFS = 454
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cLeD = 455
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cLeS = 456
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cLtD = 457
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cLtS = 458
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgeD = 459
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgeS = 460
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgleD = 461
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgleS = 462
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNglD = 463
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNglS = 464
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgtD = 465
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cNgtS = 466
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cOleD = 467
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cOleS = 468
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cOltD = 469
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cOltS = 470
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cSeqD = 471
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cSeqS = 472
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cSfD = 473
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cSfS = 474
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUeqD = 475
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUeqS = 476
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUleD = 477
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUleS = 478
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUltD = 479
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUltS = 480
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUnD = 481
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cUnS = 482
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmp = 483
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case cmpi = 484
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dadd = 485
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case daddi = 486
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case daddiu = 487
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case daddu = 488
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dahi = 489
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dalign = 490
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dati = 491
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case daui = 492
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dbitswap = 493
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dclo = 494
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dclz = 495
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case deret = 496
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dext = 497
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dextm = 498
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dextu = 499
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case di = 500
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dins = 501
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dinsm = 502
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dinsu = 503
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divSB = 504
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divSD = 505
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divSH = 506
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divSW = 507
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divUB = 508
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divUD = 509
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divUH = 510
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divUW = 511
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dlsa = 512
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmfc0 = 513
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmfc1 = 514
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmfc2 = 515
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmfgc0 = 516
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmod = 517
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmodu = 518
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmt = 519
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmtc0 = 520
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmtc1 = 521
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmtc2 = 522
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmtgc0 = 523
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmuh = 524
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmuhu = 525
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmult = 526
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmultu = 527
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dmulu = 528
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpSD = 529
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpSH = 530
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpSW = 531
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpUD = 532
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpUH = 533
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dotpUW = 534
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddSD = 535
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddSH = 536
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddSW = 537
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddUD = 538
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddUH = 539
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaddUW = 540
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaqxSaWPh = 541
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaqxSWPh = 542
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaqSaLW = 543
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaqSWPh = 544
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpauHQbl = 545
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpauHQbr = 546
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaxWPh = 547
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpaWPh = 548
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpop = 549
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsqxSaWPh = 550
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsqxSWPh = 551
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsqSaLW = 552
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsqSWPh = 553
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubSD = 554
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubSH = 555
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubSW = 556
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubUD = 557
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubUH = 558
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsubUW = 559
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsuHQbl = 560
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsuHQbr = 561
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsxWPh = 562
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dpsWPh = 563
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case drotr = 564
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case drotr32 = 565
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case drotrv = 566
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsbh = 567
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dshd = 568
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsll = 569
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsll32 = 570
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsllv = 571
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsra = 572
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsra32 = 573
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsrav = 574
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsrl = 575
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsrl32 = 576
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsrlv = 577
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsub = 578
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dsubu = 579
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dvp = 580
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case dvpe = 581
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ehb = 582
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ei = 583
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case emt = 584
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case eret = 585
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case eretnc = 586
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case evp = 587
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case evpe = 588
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ext = 589
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extp = 590
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extpdp = 591
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extpdpv = 592
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extpv = 593
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrvRsW = 594
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrvRW = 595
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrvSH = 596
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrvW = 597
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrRsW = 598
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrRW = 599
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrSH = 600
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extrW = 601
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case exts = 602
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case exts32 = 603
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case extw = 604
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case absD = 605
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case absS = 606
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case faddD = 607
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addD = 608
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addPs = 609
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case addS = 610
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case faddW = 611
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcafD = 612
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcafW = 613
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fceqD = 614
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fceqW = 615
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fclassD = 616
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fclassW = 617
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcleD = 618
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcleW = 619
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcltD = 620
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcltW = 621
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcneD = 622
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcneW = 623
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcorD = 624
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcorW = 625
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcueqD = 626
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcueqW = 627
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fculeD = 628
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fculeW = 629
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcultD = 630
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcultW = 631
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcuneD = 632
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcuneW = 633
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcunD = 634
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fcunW = 635
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fdivD = 636
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divD = 637
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case divS = 638
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fdivW = 639
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexdoH = 640
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexdoW = 641
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexp2D = 642
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexp2W = 643
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexuplD = 644
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexuplW = 645
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexuprD = 646
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fexuprW = 647
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffintSD = 648
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffintSW = 649
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffintUD = 650
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffintUW = 651
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffqlD = 652
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffqlW = 653
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffqrD = 654
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ffqrW = 655
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fillB = 656
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fillD = 657
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fillH = 658
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fillW = 659
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case flog2D = 660
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case flog2W = 661
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case floorLD = 662
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case floorLS = 663
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case floorWD = 664
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case floorWS = 665
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaddD = 666
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaddW = 667
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaxAD = 668
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaxAW = 669
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaxD = 670
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmaxW = 671
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fminAD = 672
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fminAW = 673
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fminD = 674
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fminW = 675
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movD = 676
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movS = 677
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmsubD = 678
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmsubW = 679
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmulD = 680
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulD = 681
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulPs = 682
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulS = 683
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fmulW = 684
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case negD = 685
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case negS = 686
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fork = 687
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frcpD = 688
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frcpW = 689
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frintD = 690
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frintW = 691
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frsqrtD = 692
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case frsqrtW = 693
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsafD = 694
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsafW = 695
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fseqD = 696
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fseqW = 697
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsleD = 698
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsleW = 699
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsltD = 700
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsltW = 701
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsneD = 702
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsneW = 703
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsorD = 704
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsorW = 705
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsqrtD = 706
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sqrtD = 707
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sqrtS = 708
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsqrtW = 709
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsubD = 710
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subD = 711
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subPs = 712
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subS = 713
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsubW = 714
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsueqD = 715
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsueqW = 716
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsuleD = 717
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsuleW = 718
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsultD = 719
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsultW = 720
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsuneD = 721
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsuneW = 722
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsunD = 723
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case fsunW = 724
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftintSD = 725
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftintSW = 726
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftintUD = 727
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftintUW = 728
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftqH = 729
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftqW = 730
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftruncSD = 731
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftruncSW = 732
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftruncUD = 733
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ftruncUW = 734
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ginvi = 735
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ginvt = 736
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddSD = 737
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddSH = 738
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddSW = 739
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddUD = 740
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddUH = 741
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case haddUW = 742
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubSD = 743
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubSH = 744
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubSW = 745
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubUD = 746
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubUH = 747
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hsubUW = 748
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case hypcall = 749
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvevB = 750
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvevD = 751
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvevH = 752
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvevW = 753
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvlB = 754
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvlD = 755
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvlH = 756
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvlW = 757
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvodB = 758
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvodD = 759
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvodH = 760
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvodW = 761
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvrB = 762
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvrD = 763
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvrH = 764
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ilvrW = 765
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ins = 766
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insertB = 767
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insertD = 768
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insertH = 769
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insertW = 770
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insv = 771
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insveB = 772
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insveD = 773
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insveH = 774
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case insveW = 775
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case j = 776
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalr = 777
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalrc = 778
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalrcHb = 779
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalrs16 = 780
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalrs = 781
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalrHb = 782
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jals = 783
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jalx = 784
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jialc = 785
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jic = 786
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jr = 787
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jr16 = 788
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jraddiusp = 789
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jrc = 790
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jrc16 = 791
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jrcaddiusp = 792
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case jrHb = 793
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lapcH = 794
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lapcB = 795
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lb = 796
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbe = 797
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbu16 = 798
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbu = 799
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbux = 800
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbx = 801
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lbue = 802
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldc1 = 803
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldc2 = 804
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldc3 = 805
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldiB = 806
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldiD = 807
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldiH = 808
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldiW = 809
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldl = 810
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldpc = 811
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldr = 812
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldxc1 = 813
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldB = 814
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldD = 815
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldH = 816
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ldW = 817
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lh = 818
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhe = 819
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhu16 = 820
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhu = 821
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhuxs = 822
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhux = 823
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhx = 824
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhxs = 825
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lhue = 826
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case li16 = 827
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ll = 828
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lld = 829
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lle = 830
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case llwp = 831
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lsa = 832
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lui = 833
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case luxc1 = 834
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lw = 835
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lw16 = 836
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwc1 = 837
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwc2 = 838
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwc3 = 839
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwe = 840
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwl = 841
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwle = 842
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwm16 = 843
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwm32 = 844
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwpc = 845
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwp = 846
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwr = 847
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwre = 848
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwupc = 849
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwu = 850
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwx = 851
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwxc1 = 852
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case lwxs = 853
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case madd = 854
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddfD = 855
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddfS = 856
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddrQH = 857
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddrQW = 858
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddu = 859
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddvB = 860
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddvD = 861
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddvH = 862
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddvW = 863
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddD = 864
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddQH = 865
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddQW = 866
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maddS = 867
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maqSaWPhl = 868
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maqSaWPhr = 869
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maqSWPhl = 870
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maqSWPhr = 871
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxaD = 872
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxaS = 873
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiSB = 874
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiSD = 875
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiSH = 876
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiSW = 877
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiUB = 878
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiUD = 879
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiUH = 880
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxiUW = 881
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxAB = 882
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxAD = 883
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxAH = 884
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxAW = 885
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxD = 886
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxS = 887
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxSB = 888
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxSD = 889
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxSH = 890
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxSW = 891
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxUB = 892
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxUD = 893
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxUH = 894
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case maxUW = 895
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfc0 = 896
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfc1 = 897
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfc2 = 898
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfgc0 = 899
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhc0 = 900
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhc1 = 901
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhc2 = 902
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhgc0 = 903
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhi = 904
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mfhi16 = 905
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mflo = 906
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mflo16 = 907
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mftr = 908
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minaD = 909
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minaS = 910
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniSB = 911
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniSD = 912
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniSH = 913
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniSW = 914
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniUB = 915
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniUD = 916
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniUH = 917
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case miniUW = 918
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minAB = 919
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minAD = 920
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minAH = 921
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minAW = 922
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minD = 923
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minS = 924
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minSB = 925
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minSD = 926
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minSH = 927
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minSW = 928
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minUB = 929
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minUD = 930
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minUH = 931
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case minUW = 932
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mod = 933
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modsub = 934
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modu = 935
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modSB = 936
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modSD = 937
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modSH = 938
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modSW = 939
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modUB = 940
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modUD = 941
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modUH = 942
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case modUW = 943
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case move = 944
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case move16 = 945
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case moveBalc = 946
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movep = 947
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case moveV = 948
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movfD = 949
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movf = 950
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movfS = 951
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movnD = 952
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movn = 953
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movnS = 954
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movtD = 955
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movt = 956
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movtS = 957
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movzD = 958
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movz = 959
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case movzS = 960
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msub = 961
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubfD = 962
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubfS = 963
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubrQH = 964
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubrQW = 965
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubu = 966
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubvB = 967
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubvD = 968
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubvH = 969
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubvW = 970
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubD = 971
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubQH = 972
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubQW = 973
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case msubS = 974
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtc0 = 975
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtc1 = 976
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtc2 = 977
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtgc0 = 978
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthc0 = 979
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthc1 = 980
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthc2 = 981
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthgc0 = 982
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthi = 983
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mthlip = 984
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtlo = 985
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtm0 = 986
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtm1 = 987
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtm2 = 988
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtp0 = 989
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtp1 = 990
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mtp2 = 991
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mttr = 992
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muh = 993
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muhu = 994
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muleqSWPhl = 995
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muleqSWPhr = 996
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muleuSPhQbl = 997
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case muleuSPhQbr = 998
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulqRsPh = 999
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulqRsW = 1000
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulqSPh = 1001
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulqSW = 1002
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulrPs = 1003
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulrQH = 1004
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulrQW = 1005
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulsaqSWPh = 1006
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulsaWPh = 1007
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mult = 1008
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case multu = 1009
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulu = 1010
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulvB = 1011
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulvD = 1012
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulvH = 1013
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulvW = 1014
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulPh = 1015
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulQH = 1016
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulQW = 1017
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case mulSPh = 1018
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlocB = 1019
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlocD = 1020
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlocH = 1021
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlocW = 1022
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlzcB = 1023
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlzcD = 1024
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlzcH = 1025
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nlzcW = 1026
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nmaddD = 1027
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nmaddS = 1028
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nmsubD = 1029
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nmsubS = 1030
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nop32 = 1031
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case nop = 1032
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case noriB = 1033
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case norV = 1034
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case not16 = 1035
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case not = 1036
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case neg = 1037
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case or = 1038
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case or16 = 1039
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case oriB = 1040
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ori = 1041
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case orV = 1042
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case packrlPh = 1043
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pause = 1044
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckevB = 1045
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckevD = 1046
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckevH = 1047
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckevW = 1048
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckodB = 1049
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckodD = 1050
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckodH = 1051
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pckodW = 1052
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pcntB = 1053
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pcntD = 1054
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pcntH = 1055
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pcntW = 1056
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pickPh = 1057
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pickQb = 1058
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pllPs = 1059
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pluPs = 1060
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pop = 1061
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precequPhQbl = 1062
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precequPhQbla = 1063
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precequPhQbr = 1064
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precequPhQbra = 1065
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceqWPhl = 1066
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceqWPhr = 1067
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceuPhQbl = 1068
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceuPhQbla = 1069
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceuPhQbr = 1070
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case preceuPhQbra = 1071
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrquSQbPh = 1072
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrqPhW = 1073
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrqQbPh = 1074
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrqRsPhW = 1075
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrQbPh = 1076
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrSraPhW = 1077
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case precrSraRPhW = 1078
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pref = 1079
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case prefe = 1080
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case prefx = 1081
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case prepend = 1082
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case pulPs = 1083
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case puuPs = 1084
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case radduWQb = 1085
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rddsp = 1086
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rdhwr = 1087
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rdpgpr = 1088
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case recipD = 1089
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case recipS = 1090
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case replvPh = 1091
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case replvQb = 1092
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case replPh = 1093
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case replQb = 1094
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case restoreJrc = 1095
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case restore = 1096
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rintD = 1097
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rintS = 1098
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rotr = 1099
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rotrv = 1100
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rotx = 1101
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case roundLD = 1102
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case roundLS = 1103
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case roundWD = 1104
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case roundWS = 1105
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rsqrtD = 1106
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case rsqrtS = 1107
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satSB = 1108
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satSD = 1109
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satSH = 1110
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satSW = 1111
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satUB = 1112
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satUD = 1113
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satUH = 1114
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case satUW = 1115
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case save = 1116
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sb = 1117
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sb16 = 1118
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sbe = 1119
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sbx = 1120
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sc = 1121
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case scd = 1122
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sce = 1123
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case scwp = 1124
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdbbp = 1125
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdbbp16 = 1126
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdc1 = 1127
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdc2 = 1128
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdc3 = 1129
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdl = 1130
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdr = 1131
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sdxc1 = 1132
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seb = 1133
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seh = 1134
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seleqz = 1135
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seleqzD = 1136
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seleqzS = 1137
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case selnez = 1138
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case selnezD = 1139
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case selnezS = 1140
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case selD = 1141
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case selS = 1142
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case seqi = 1143
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sh = 1144
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sh16 = 1145
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case she = 1146
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shfB = 1147
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shfH = 1148
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shfW = 1149
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shilo = 1150
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shilov = 1151
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllvPh = 1152
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllvQb = 1153
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllvSPh = 1154
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllvSW = 1155
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllPh = 1156
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllQb = 1157
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllSPh = 1158
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shllSW = 1159
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shravPh = 1160
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shravQb = 1161
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shravRPh = 1162
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shravRQb = 1163
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shravRW = 1164
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shraPh = 1165
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shraQb = 1166
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shraRPh = 1167
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shraRQb = 1168
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shraRW = 1169
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shrlvPh = 1170
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shrlvQb = 1171
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shrlPh = 1172
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shrlQb = 1173
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shxs = 1174
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case shx = 1175
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sigrie = 1176
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldiB = 1177
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldiD = 1178
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldiH = 1179
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldiW = 1180
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldB = 1181
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldD = 1182
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldH = 1183
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sldW = 1184
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sll = 1185
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sll16 = 1186
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slliB = 1187
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slliD = 1188
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slliH = 1189
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slliW = 1190
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sllv = 1191
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sllB = 1192
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sllD = 1193
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sllH = 1194
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sllW = 1195
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sltiu = 1196
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case slti = 1197
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case snei = 1198
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sov = 1199
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatiB = 1200
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatiD = 1201
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatiH = 1202
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatiW = 1203
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatB = 1204
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatD = 1205
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatH = 1206
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case splatW = 1207
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sra = 1208
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraiB = 1209
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraiD = 1210
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraiH = 1211
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraiW = 1212
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srariB = 1213
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srariD = 1214
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srariH = 1215
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srariW = 1216
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srarB = 1217
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srarD = 1218
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srarH = 1219
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srarW = 1220
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srav = 1221
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraB = 1222
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraD = 1223
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraH = 1224
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sraW = 1225
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srl = 1226
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srl16 = 1227
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srliB = 1228
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srliD = 1229
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srliH = 1230
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srliW = 1231
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlriB = 1232
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlriD = 1233
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlriH = 1234
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlriW = 1235
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlrB = 1236
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlrD = 1237
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlrH = 1238
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlrW = 1239
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlv = 1240
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlB = 1241
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlD = 1242
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlH = 1243
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case srlW = 1244
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ssnop = 1245
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case stB = 1246
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case stD = 1247
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case stH = 1248
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case stW = 1249
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sub = 1250
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqhPh = 1251
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqhRPh = 1252
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqhRW = 1253
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqhW = 1254
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqPh = 1255
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqSPh = 1256
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subqSW = 1257
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsusUB = 1258
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsusUD = 1259
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsusUH = 1260
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsusUW = 1261
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsuuSB = 1262
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsuuSD = 1263
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsuuSH = 1264
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsuuSW = 1265
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsSB = 1266
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsSD = 1267
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsSH = 1268
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsSW = 1269
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsUB = 1270
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsUD = 1271
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsUH = 1272
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subsUW = 1273
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subu16 = 1274
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuhQb = 1275
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuhRQb = 1276
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuPh = 1277
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuQb = 1278
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuSPh = 1279
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subuSQb = 1280
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subviB = 1281
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subviD = 1282
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subviH = 1283
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subviW = 1284
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subvB = 1285
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subvD = 1286
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subvH = 1287
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case subvW = 1288
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case suxc1 = 1289
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sw = 1290
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sw16 = 1291
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swc1 = 1292
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swc2 = 1293
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swc3 = 1294
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swe = 1295
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swl = 1296
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swle = 1297
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swm16 = 1298
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swm32 = 1299
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swpc = 1300
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swp = 1301
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swr = 1302
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swre = 1303
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swsp = 1304
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swxc1 = 1305
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swxs = 1306
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case swx = 1307
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case sync = 1308
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case synci = 1309
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case syscall = 1310
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case teq = 1311
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case teqi = 1312
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tge = 1313
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tgei = 1314
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tgeiu = 1315
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tgeu = 1316
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbginv = 1317
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbginvf = 1318
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbgp = 1319
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbgr = 1320
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbgwi = 1321
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbgwr = 1322
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbinv = 1323
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbinvf = 1324
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbp = 1325
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbr = 1326
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbwi = 1327
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlbwr = 1328
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlt = 1329
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tlti = 1330
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tltiu = 1331
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tltu = 1332
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tne = 1333
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case tnei = 1334
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case truncLD = 1335
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case truncLS = 1336
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ualh = 1337
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ualwm = 1338
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case ualw = 1339
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case uash = 1340
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case uaswm = 1341
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case uasw = 1342
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case v3mulu = 1343
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vmm0 = 1344
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vmulu = 1345
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vshfB = 1346
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vshfD = 1347
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vshfH = 1348
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case vshfW = 1349
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case wait = 1350
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case wrdsp = 1351
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case wrpgpr = 1352
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case wsbh = 1353
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case xor = 1354
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case xor16 = 1355
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case xoriB = 1356
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case xori = 1357
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case xorV = 1358
    /// generated content <MipsGenCSInsnEnum.inc> begin clang-format off
    case yield = 1359
    /// clang-format on generated content <MipsGenCSInsnEnum.inc> end
    case ending = 1360
    /// clang-format on generated content <MipsGenCSInsnEnum.inc> end
    case aliasBegin = 1361
    /// Real instr.: MIPS_ADDIUGP48_NM
    case aliasAddiuB32 = 1362
    /// Real instr.: MIPS_ROTX_NM
    case aliasBitrevb = 1363
    /// Real instr.: MIPS_ROTX_NM
    case aliasBitrevh = 1364
    /// Real instr.: MIPS_ROTX_NM
    case aliasByterevh = 1365
    /// Real instr.: MIPS_NOR_NM
    case aliasNot = 1366
    /// Real instr.: MIPS_RESTOREJRC16_NM
    case aliasRestoreJrc = 1367
    /// Real instr.: MIPS_RESTORE_NM
    case aliasRestore = 1368
    /// Real instr.: MIPS_SAVE16_NM
    case aliasSave = 1369
    /// Real instr.: MIPS_OR
    case aliasMove = 1370
    /// Real instr.: MIPS_BGEZAL
    case aliasBal = 1371
    /// Real instr.: MIPS_JALR_HB
    case aliasJalrHb = 1372
    /// Real instr.: MIPS_SUB
    case aliasNeg = 1373
    /// Real instr.: MIPS_SUBu
    case aliasNegu = 1374
    /// Real instr.: MIPS_SLL
    case aliasNop = 1375
    /// Real instr.: MIPS_BNEL
    case aliasBnezl = 1376
    /// Real instr.: MIPS_BEQL
    case aliasBeqzl = 1377
    /// Real instr.: MIPS_SYSCALL
    case aliasSyscall = 1378
    /// Real instr.: MIPS_BREAK
    case aliasBreak = 1379
    /// Real instr.: MIPS_EI
    case aliasEi = 1380
    /// Real instr.: MIPS_DI
    case aliasDi = 1381
    /// Real instr.: MIPS_TEQ
    case aliasTeq = 1382
    /// Real instr.: MIPS_TGE
    case aliasTge = 1383
    /// Real instr.: MIPS_TGEU
    case aliasTgeu = 1384
    /// Real instr.: MIPS_TLT
    case aliasTlt = 1385
    /// Real instr.: MIPS_TLTU
    case aliasTltu = 1386
    /// Real instr.: MIPS_TNE
    case aliasTne = 1387
    /// Real instr.: MIPS_RDHWR
    case aliasRdhwr = 1388
    /// Real instr.: MIPS_SDBBP
    case aliasSdbbp = 1389
    /// Real instr.: MIPS_SYNC
    case aliasSync = 1390
    /// Real instr.: MIPS_HYPCALL
    case aliasHypcall = 1391
    /// Real instr.: MIPS_NORImm
    case aliasNor = 1392
    /// Real instr.: MIPS_C_F_S
    case aliasCFS = 1393
    /// Real instr.: MIPS_C_UN_S
    case aliasCUnS = 1394
    /// Real instr.: MIPS_C_EQ_S
    case aliasCEqS = 1395
    /// Real instr.: MIPS_C_UEQ_S
    case aliasCUeqS = 1396
    /// Real instr.: MIPS_C_OLT_S
    case aliasCOltS = 1397
    /// Real instr.: MIPS_C_ULT_S
    case aliasCUltS = 1398
    /// Real instr.: MIPS_C_OLE_S
    case aliasCOleS = 1399
    /// Real instr.: MIPS_C_ULE_S
    case aliasCUleS = 1400
    /// Real instr.: MIPS_C_SF_S
    case aliasCSfS = 1401
    /// Real instr.: MIPS_C_NGLE_S
    case aliasCNgleS = 1402
    /// Real instr.: MIPS_C_SEQ_S
    case aliasCSeqS = 1403
    /// Real instr.: MIPS_C_NGL_S
    case aliasCNglS = 1404
    /// Real instr.: MIPS_C_LT_S
    case aliasCLtS = 1405
    /// Real instr.: MIPS_C_NGE_S
    case aliasCNgeS = 1406
    /// Real instr.: MIPS_C_LE_S
    case aliasCLeS = 1407
    /// Real instr.: MIPS_C_NGT_S
    case aliasCNgtS = 1408
    /// Real instr.: MIPS_BC1T
    case aliasBc1T = 1409
    /// Real instr.: MIPS_BC1F
    case aliasBc1F = 1410
    /// Real instr.: MIPS_C_F_D32
    case aliasCFD = 1411
    /// Real instr.: MIPS_C_UN_D32
    case aliasCUnD = 1412
    /// Real instr.: MIPS_C_EQ_D32
    case aliasCEqD = 1413
    /// Real instr.: MIPS_C_UEQ_D32
    case aliasCUeqD = 1414
    /// Real instr.: MIPS_C_OLT_D32
    case aliasCOltD = 1415
    /// Real instr.: MIPS_C_ULT_D32
    case aliasCUltD = 1416
    /// Real instr.: MIPS_C_OLE_D32
    case aliasCOleD = 1417
    /// Real instr.: MIPS_C_ULE_D32
    case aliasCUleD = 1418
    /// Real instr.: MIPS_C_SF_D32
    case aliasCSfD = 1419
    /// Real instr.: MIPS_C_NGLE_D32
    case aliasCNgleD = 1420
    /// Real instr.: MIPS_C_SEQ_D32
    case aliasCSeqD = 1421
    /// Real instr.: MIPS_C_NGL_D32
    case aliasCNglD = 1422
    /// Real instr.: MIPS_C_LT_D32
    case aliasCLtD = 1423
    /// Real instr.: MIPS_C_NGE_D32
    case aliasCNgeD = 1424
    /// Real instr.: MIPS_C_LE_D32
    case aliasCLeD = 1425
    /// Real instr.: MIPS_C_NGT_D32
    case aliasCNgtD = 1426
    /// Real instr.: MIPS_BC1TL
    case aliasBc1Tl = 1427
    /// Real instr.: MIPS_BC1FL
    case aliasBc1Fl = 1428
    /// Real instr.: MIPS_DSUB
    case aliasDneg = 1429
    /// Real instr.: MIPS_DSUBu
    case aliasDnegu = 1430
    /// Real instr.: MIPS_SLTImm64
    case aliasSlt = 1431
    /// Real instr.: MIPS_SLTUImm64
    case aliasSltu = 1432
    /// Real instr.: MIPS_SIGRIE
    case aliasSigrie = 1433
    /// Real instr.: MIPS_JALR
    case aliasJr = 1434
    /// Real instr.: MIPS_JIC
    case aliasJrc = 1435
    /// Real instr.: MIPS_JIALC
    case aliasJalrc = 1436
    /// Real instr.: MIPS_DIV
    case aliasDiv = 1437
    /// Real instr.: MIPS_DIVU
    case aliasDivu = 1438
    /// Real instr.: MIPS_ADDIUPC
    case aliasLapc = 1439
    /// Real instr.: MIPS_WRDSP
    case aliasWrdsp = 1440
    /// Real instr.: MIPS_WAIT_MM
    case aliasWait = 1441
    /// Real instr.: MIPS_SWSP_MM
    case aliasSw = 1442
    /// Real instr.: MIPS_JALRC_HB_MMR6
    case aliasJalrcHb = 1443
    /// Real instr.: MIPS_ADDIUGPB_NM
    case aliasAddiuB = 1444
    /// Real instr.: MIPS_ADDIUGPW_NM
    case aliasAddiuW = 1445
    /// Real instr.: MIPS_JALRCHB_NM
    case aliasJrcHb = 1446
    /// Real instr.: MIPS_BEQC16_NM
    case aliasBeqc = 1447
    /// Real instr.: MIPS_BNEC16_NM
    case aliasBnec = 1448
    /// Real instr.: MIPS_BEQC_NM
    case aliasBeqzc = 1449
    /// Real instr.: MIPS_BNEC_NM
    case aliasBnezc = 1450
    /// Real instr.: MIPS_MFC0_NM
    case aliasMfc0 = 1451
    /// Real instr.: MIPS_MFHC0_NM
    case aliasMfhc0 = 1452
    /// Real instr.: MIPS_MTC0_NM
    case aliasMtc0 = 1453
    /// Real instr.: MIPS_MTHC0_NM
    case aliasMthc0 = 1454
    /// Real instr.: MIPS_DMT
    case aliasDmt = 1455
    /// Real instr.: MIPS_EMT
    case aliasEmt = 1456
    /// Real instr.: MIPS_DVPE
    case aliasDvpe = 1457
    /// Real instr.: MIPS_EVPE
    case aliasEvpe = 1458
    /// Real instr.: MIPS_YIELD
    case aliasYield = 1459
    /// Real instr.: MIPS_MFTC0
    case aliasMftc0 = 1460
    /// Real instr.: MIPS_MFTLO
    case aliasMftlo = 1461
    /// Real instr.: MIPS_MFTHI
    case aliasMfthi = 1462
    /// Real instr.: MIPS_MFTACX
    case aliasMftacx = 1463
    /// Real instr.: MIPS_MTTC0
    case aliasMttc0 = 1464
    /// Real instr.: MIPS_MTTLO
    case aliasMttlo = 1465
    /// Real instr.: MIPS_MTTHI
    case aliasMtthi = 1466
    /// Real instr.: MIPS_MTTACX
    case aliasMttacx = 1467
    /// beq $zero, $zero, $L2 => b $L2
    case aliasB = 1468
    /// beq $r0, $zero, $L2 => beqz $r0, $L2
    case aliasBeqz = 1469
    /// bne $r0, $zero, $L2 => bnez $r0, $L2
    case aliasBnez = 1470
    /// addiu $rX, $r0, imm => li $r0, imm
    case aliasLi = 1471
    case aliasEnd = 1472
}

/// Operand type for instruction's operands
public struct MipsOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// = CS_OP_INVALID (Uninitialized).
    public static let invalid: MipsOp = []
    /// = CS_OP_REG (Register operand).
    public static let reg = MipsOp(rawValue: 1)
    /// = CS_OP_IMM (Immediate operand).
    public static let imm = MipsOp(rawValue: 2)
    /// = CS_OP_MEM (Memory operand).
    public static let mem = MipsOp(rawValue: 128)
}

/// MIPS registers
public enum MipsReg: UInt16 {
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case at = 1
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case atNm = 2
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspccond = 3
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspcarry = 4
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspefi = 5
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag = 6
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dsppos = 7
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspscount = 8
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fp = 9
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fpNm = 10
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case gp = 11
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case gpNm = 12
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msaaccess = 13
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msacsr = 14
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msair = 15
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msamap = 16
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msamodify = 17
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msarequest = 18
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msasave = 19
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msaunmap = 20
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case pc = 21
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ra = 22
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case raNm = 23
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case sp = 24
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case spNm = 25
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case zero = 26
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case zeroNm = 27
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a0 = 28
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a1 = 29
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a2 = 30
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a3 = 31
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ac0 = 32
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ac1 = 33
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ac2 = 34
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ac3 = 35
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case at64 = 36
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop00 = 37
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop01 = 38
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop02 = 39
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop03 = 40
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop04 = 41
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop05 = 42
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop06 = 43
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop07 = 44
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop08 = 45
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop09 = 46
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop20 = 47
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop21 = 48
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop22 = 49
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop23 = 50
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop24 = 51
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop25 = 52
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop26 = 53
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop27 = 54
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop28 = 55
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop29 = 56
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop30 = 57
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop31 = 58
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop32 = 59
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop33 = 60
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop34 = 61
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop35 = 62
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop36 = 63
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop37 = 64
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop38 = 65
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop39 = 66
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop010 = 67
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop011 = 68
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop012 = 69
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop013 = 70
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop014 = 71
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop015 = 72
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop016 = 73
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop017 = 74
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop018 = 75
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop019 = 76
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop020 = 77
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop021 = 78
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop022 = 79
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop023 = 80
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop024 = 81
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop025 = 82
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop026 = 83
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop027 = 84
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop028 = 85
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop029 = 86
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop030 = 87
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop031 = 88
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop210 = 89
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop211 = 90
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop212 = 91
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop213 = 92
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop214 = 93
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop215 = 94
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop216 = 95
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop217 = 96
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop218 = 97
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop219 = 98
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop220 = 99
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop221 = 100
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop222 = 101
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop223 = 102
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop224 = 103
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop225 = 104
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop226 = 105
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop227 = 106
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop228 = 107
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop229 = 108
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop230 = 109
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop231 = 110
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop310 = 111
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop311 = 112
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop312 = 113
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop313 = 114
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop314 = 115
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop315 = 116
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop316 = 117
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop317 = 118
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop318 = 119
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop319 = 120
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop320 = 121
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop321 = 122
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop322 = 123
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop323 = 124
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop324 = 125
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop325 = 126
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop326 = 127
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop327 = 128
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop328 = 129
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop329 = 130
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop330 = 131
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop331 = 132
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d0 = 133
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1 = 134
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2 = 135
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d3 = 136
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d4 = 137
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d5 = 138
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d6 = 139
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d7 = 140
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d8 = 141
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d9 = 142
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d10 = 143
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d11 = 144
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d12 = 145
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d13 = 146
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d14 = 147
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d15 = 148
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag20 = 149
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag21 = 150
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag22 = 151
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag23 = 152
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f0 = 153
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f1 = 154
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f2 = 155
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f3 = 156
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f4 = 157
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f5 = 158
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f6 = 159
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f7 = 160
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f8 = 161
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f9 = 162
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f10 = 163
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f11 = 164
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f12 = 165
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f13 = 166
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f14 = 167
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f15 = 168
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f16 = 169
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f17 = 170
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f18 = 171
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f19 = 172
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f20 = 173
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f21 = 174
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f22 = 175
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f23 = 176
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f24 = 177
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f25 = 178
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f26 = 179
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f27 = 180
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f28 = 181
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f29 = 182
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f30 = 183
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case f31 = 184
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc0 = 185
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc1 = 186
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc2 = 187
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc3 = 188
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc4 = 189
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc5 = 190
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc6 = 191
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcc7 = 192
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr0 = 193
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr1 = 194
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr2 = 195
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr3 = 196
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr4 = 197
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr5 = 198
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr6 = 199
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr7 = 200
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr8 = 201
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr9 = 202
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr10 = 203
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr11 = 204
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr12 = 205
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr13 = 206
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr14 = 207
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr15 = 208
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr16 = 209
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr17 = 210
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr18 = 211
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr19 = 212
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr20 = 213
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr21 = 214
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr22 = 215
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr23 = 216
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr24 = 217
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr25 = 218
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr26 = 219
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr27 = 220
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr28 = 221
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr29 = 222
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr30 = 223
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fcr31 = 224
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fp64 = 225
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi0 = 226
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi1 = 227
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi2 = 228
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi3 = 229
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi4 = 230
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi5 = 231
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi6 = 232
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi7 = 233
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi8 = 234
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi9 = 235
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi10 = 236
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi11 = 237
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi12 = 238
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi13 = 239
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi14 = 240
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi15 = 241
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi16 = 242
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi17 = 243
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi18 = 244
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi19 = 245
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi20 = 246
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi21 = 247
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi22 = 248
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi23 = 249
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi24 = 250
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi25 = 251
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi26 = 252
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi27 = 253
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi28 = 254
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi29 = 255
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi30 = 256
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case fHi31 = 257
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case gp64 = 258
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hi0 = 259
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hi1 = 260
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hi2 = 261
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hi3 = 262
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr0 = 263
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr1 = 264
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr2 = 265
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr3 = 266
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr4 = 267
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr5 = 268
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr6 = 269
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr7 = 270
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr8 = 271
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr9 = 272
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr10 = 273
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr11 = 274
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr12 = 275
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr13 = 276
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr14 = 277
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr15 = 278
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr16 = 279
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr17 = 280
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr18 = 281
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr19 = 282
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr20 = 283
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr21 = 284
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr22 = 285
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr23 = 286
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr24 = 287
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr25 = 288
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr26 = 289
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr27 = 290
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr28 = 291
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr29 = 292
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr30 = 293
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hwr31 = 294
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k0 = 295
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k1 = 296
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case lo0 = 297
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case lo1 = 298
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case lo2 = 299
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case lo3 = 300
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case mpl0 = 301
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case mpl1 = 302
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case mpl2 = 303
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa8 = 304
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa9 = 305
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa10 = 306
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa11 = 307
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa12 = 308
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa13 = 309
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa14 = 310
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa15 = 311
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa16 = 312
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa17 = 313
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa18 = 314
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa19 = 315
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa20 = 316
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa21 = 317
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa22 = 318
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa23 = 319
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa24 = 320
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa25 = 321
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa26 = 322
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa27 = 323
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa28 = 324
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa29 = 325
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa30 = 326
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case msa31 = 327
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case p0 = 328
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case p1 = 329
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case p2 = 330
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ra64 = 331
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s0 = 332
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s1 = 333
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s2 = 334
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s3 = 335
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s4 = 336
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s5 = 337
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s6 = 338
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s7 = 339
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case sp64 = 340
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t0 = 341
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t1 = 342
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t2 = 343
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t3 = 344
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t4 = 345
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t5 = 346
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t6 = 347
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t7 = 348
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t8 = 349
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t9 = 350
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case v0 = 351
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case v1 = 352
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w0 = 353
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w1 = 354
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w2 = 355
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w3 = 356
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w4 = 357
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w5 = 358
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w6 = 359
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w7 = 360
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w8 = 361
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w9 = 362
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w10 = 363
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w11 = 364
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w12 = 365
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w13 = 366
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w14 = 367
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w15 = 368
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w16 = 369
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w17 = 370
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w18 = 371
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w19 = 372
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w20 = 373
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w21 = 374
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w22 = 375
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w23 = 376
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w24 = 377
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w25 = 378
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w26 = 379
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w27 = 380
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w28 = 381
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w29 = 382
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w30 = 383
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case w31 = 384
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case zero64 = 385
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a0Nm = 386
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a1Nm = 387
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a2Nm = 388
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a3Nm = 389
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a4Nm = 390
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a5Nm = 391
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a6Nm = 392
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a7Nm = 393
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selBadinst = 394
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selBadinstrp = 395
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selBadinstrx = 396
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selBadvaddr = 397
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selBevva = 398
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCacheerr = 399
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCause = 400
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCdmmbase = 401
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCmgcrbase = 402
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCompare = 403
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig = 404
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selContext = 405
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selContextconfig = 406
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selCount = 407
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDdatahi = 408
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDdatalo = 409
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDebug = 410
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDebugcontextid = 411
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDepc = 412
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDesave = 413
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDtaghi = 414
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDtaglo = 415
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selEbase = 416
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selEntryhi = 417
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selEpc = 418
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selErrctl = 419
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selErrorepc = 420
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGlobalnumber = 421
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGtoffset = 422
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selHwrena = 423
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selIdatahi = 424
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selIdatalo = 425
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selIndex = 426
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selIntctl = 427
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selItaghi = 428
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selItaglo = 429
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selLladdr = 430
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMaar = 431
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMaari = 432
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMemorymapid = 433
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMvpcontrol = 434
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selNestedepc = 435
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selNestedexc = 436
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPagegrain = 437
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPagemask = 438
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPrid = 439
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPwbase = 440
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPwctl = 441
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPwfield = 442
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPwsize = 443
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selRandom = 444
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsctl = 445
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsmap = 446
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selStatus = 447
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcbind = 448
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTccontext = 449
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTchalt = 450
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcopt = 451
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcrestart = 452
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcschedule = 453
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcschefback = 454
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTcstatus = 455
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTracecontrol = 456
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTracedbpc = 457
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTraceibpc = 458
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selUserlocal = 459
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selViewIpl = 460
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selViewRipl = 461
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpcontrol = 462
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpecontrol = 463
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpeopt = 464
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpeschedule = 465
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpeschefback = 466
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWired = 467
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selXcontext = 468
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selXcontextconfig = 469
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selYqmask = 470
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k0Nm = 471
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k1Nm = 472
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s0Nm = 473
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s1Nm = 474
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s2Nm = 475
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s3Nm = 476
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s4Nm = 477
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s5Nm = 478
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s6Nm = 479
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s7Nm = 480
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t0Nm = 481
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t1Nm = 482
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t2Nm = 483
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t3Nm = 484
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t4Nm = 485
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t5Nm = 486
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t8Nm = 487
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t9Nm = 488
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a064 = 489
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a164 = 490
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a264 = 491
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case a364 = 492
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case ac064 = 493
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig1 = 494
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig2 = 495
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig3 = 496
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig4 = 497
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selConfig5 = 498
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selDebug2 = 499
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selEntrylo0 = 500
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selEntrylo1 = 501
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGuestctl0 = 502
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGuestctl1 = 503
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGuestctl2 = 504
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGuestctl3 = 505
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch1 = 506
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch2 = 507
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch3 = 508
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch4 = 509
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch5 = 510
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selKscratch6 = 511
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMvpconf0 = 512
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selMvpconf1 = 513
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt0 = 514
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt1 = 515
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt2 = 516
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt3 = 517
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt4 = 518
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt5 = 519
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt6 = 520
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfcnt7 = 521
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl0 = 522
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl1 = 523
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl2 = 524
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl3 = 525
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl4 = 526
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl5 = 527
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl6 = 528
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selPerfctl7 = 529
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSegctl0 = 530
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSegctl1 = 531
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSegctl2 = 532
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsconf0 = 533
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsconf1 = 534
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsconf2 = 535
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsconf3 = 536
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsconf4 = 537
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selSrsmap2 = 538
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTracecontrol2 = 539
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selTracecontrol3 = 540
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selUsertracedata1 = 541
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selUsertracedata2 = 542
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpeconf0 = 543
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selVpeconf1 = 544
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi0 = 545
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi1 = 546
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi2 = 547
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi3 = 548
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi4 = 549
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi5 = 550
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi6 = 551
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi7 = 552
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi8 = 553
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi9 = 554
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi10 = 555
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi11 = 556
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi12 = 557
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi13 = 558
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi14 = 559
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchhi15 = 560
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo0 = 561
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo1 = 562
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo2 = 563
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo3 = 564
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo4 = 565
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo5 = 566
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo6 = 567
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo7 = 568
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo8 = 569
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo9 = 570
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo10 = 571
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo11 = 572
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo12 = 573
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo13 = 574
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo14 = 575
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selWatchlo15 = 576
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d064 = 577
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d164 = 578
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d264 = 579
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d364 = 580
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d464 = 581
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d564 = 582
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d664 = 583
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d764 = 584
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d864 = 585
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d964 = 586
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1064 = 587
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1164 = 588
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1264 = 589
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1364 = 590
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1464 = 591
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1564 = 592
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1664 = 593
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1764 = 594
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1864 = 595
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d1964 = 596
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2064 = 597
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2164 = 598
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2264 = 599
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2364 = 600
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2464 = 601
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2564 = 602
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2664 = 603
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2764 = 604
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2864 = 605
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d2964 = 606
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d3064 = 607
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case d3164 = 608
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case dspoutflag1619 = 609
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case hi064 = 610
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k064 = 611
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case k164 = 612
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case lo064 = 613
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s064 = 614
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s164 = 615
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s264 = 616
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s364 = 617
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s464 = 618
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s564 = 619
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s664 = 620
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case s764 = 621
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t064 = 622
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t164 = 623
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t264 = 624
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t364 = 625
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t464 = 626
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t564 = 627
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t664 = 628
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t764 = 629
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t864 = 630
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case t964 = 631
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case v064 = 632
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case v164 = 633
    /// generated content <MipsGenCSRegEnum.inc> begin clang-format off
    case cop0selGuestctl0Ext = 634
    /// 635
    case ending = 635
}

#endif
