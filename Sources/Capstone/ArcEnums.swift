#if CAPSTONE_HAS_ARC
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Arc)

/// > Group of ARC instructions
public enum ArcGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    /// = CS_GRP_CALL
    case call = 2
    /// = CS_GRP_RET
    case ret = 3
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 4
    case ending = 5
}

/// ARC instruction
public enum ArcIns: UInt32 {
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case h = 1
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case pbr = 2
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case errorFls = 3
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case errorFfs = 4
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case pldfi = 5
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbFar = 6
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthFar = 7
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stFar = 8
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case adc = 9
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case adcF = 10
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case addS = 11
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case add = 12
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case addF = 13
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case and = 14
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case andF = 15
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case aslS = 16
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case asl = 17
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case aslF = 18
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case asrS = 19
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case asr = 20
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case asrF = 21
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bclrS = 22
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case beqS = 23
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bgeS = 24
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bgtS = 25
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bhiS = 26
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bhsS = 27
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bl = 28
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bleS = 29
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bloS = 30
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case blsS = 31
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bltS = 32
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case blS = 33
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bmskS = 34
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bneS = 35
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case b = 36
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case breqS = 37
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case brneS = 38
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case br = 39
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bsetS = 40
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case btstS = 41
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bS = 42
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case cmpS = 43
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case cmp = 44
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldS = 45
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case movS = 46
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case eiS = 47
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case enterS = 48
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ffsF = 49
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ffs = 50
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case flsF = 51
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case fls = 52
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case absS = 53
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case add1S = 54
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case add2S = 55
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case add3S = 56
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case andS = 57
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case bicS = 58
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case brkS = 59
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case extbS = 60
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case exthS = 61
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jeqS = 62
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jlS = 63
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jlSD = 64
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jneS = 65
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jS = 66
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jSD = 67
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case lsrS = 68
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpyuwS = 69
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpywS = 70
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpyS = 71
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case negS = 72
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case nopS = 73
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case notS = 74
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case orS = 75
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexbS = 76
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexhS = 77
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case subS = 78
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case subSNe = 79
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case swiS = 80
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case trapS = 81
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case tstS = 82
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case unimpS = 83
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case xorS = 84
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbS = 85
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhS = 86
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case j = 87
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jl = 88
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case jliS = 89
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbAb = 90
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbAw = 91
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbDiAb = 92
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbDiAw = 93
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbDi = 94
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbXAb = 95
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbXAw = 96
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbXDiAb = 97
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbXDiAw = 98
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbXDi = 99
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldbX = 100
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldb = 101
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhAb = 102
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhAw = 103
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhDiAb = 104
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhDiAw = 105
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhDi = 106
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhSX = 107
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhXAb = 108
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhXAw = 109
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhXDiAb = 110
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhXDiAw = 111
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhXDi = 112
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldhX = 113
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldh = 114
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldiS = 115
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldAb = 116
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldAw = 117
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldDiAb = 118
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldDiAw = 119
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldDi = 120
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ldSAs = 121
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ld = 122
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case leaveS = 123
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case lr = 124
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case lsr = 125
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case lsrF = 126
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case max = 127
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case maxF = 128
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case min = 129
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case minF = 130
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case movSNe = 131
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mov = 132
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case movF = 133
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpymu = 134
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpymuF = 135
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpym = 136
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpymF = 137
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpy = 138
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case mpyF = 139
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case normhF = 140
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case normh = 141
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case normF = 142
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case norm = 143
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case or = 144
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case orF = 145
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case popS = 146
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case pushS = 147
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case ror = 148
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case rorF = 149
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case rsub = 150
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case rsubF = 151
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sbc = 152
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sbcF = 153
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case seteq = 154
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case seteqF = 155
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexbF = 156
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexb = 157
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexhF = 158
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sexh = 159
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbS = 160
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stS = 161
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbAb = 162
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbAw = 163
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbDiAb = 164
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbDiAw = 165
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stbDi = 166
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stb = 167
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthAb = 168
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthAw = 169
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthDiAb = 170
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthDiAw = 171
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthDi = 172
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sthS = 173
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sth = 174
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stAb = 175
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stAw = 176
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stDiAb = 177
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stDiAw = 178
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case stDi = 179
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case st = 180
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub1 = 181
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub1F = 182
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub2 = 183
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub2F = 184
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub3 = 185
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub3F = 186
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case sub = 187
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case subF = 188
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case xor = 189
    /// generated content <ARCGenCSInsnEnum.inc> begin clang-format off
    case xorF = 190
}

/// Operand type for instruction's operands
public enum ArcOp: UInt32 {
    /// Invalid
    case invalid = 0
    /// Register operand
    case reg = 1
    /// Immediate operand
    case imm = 2
}

/// ARC registers
public enum ArcReg: UInt16 {
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case blink = 1
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case fp = 2
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case gp = 3
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case ilink = 4
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case sp = 5
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r0 = 6
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r1 = 7
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r2 = 8
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r3 = 9
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r4 = 10
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r5 = 11
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r6 = 12
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r7 = 13
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r8 = 14
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r9 = 15
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r10 = 16
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r11 = 17
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r12 = 18
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r13 = 19
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r14 = 20
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r15 = 21
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r16 = 22
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r17 = 23
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r18 = 24
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r19 = 25
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r20 = 26
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r21 = 27
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r22 = 28
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r23 = 29
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r24 = 30
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r25 = 31
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r30 = 32
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r32 = 33
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r33 = 34
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r34 = 35
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r35 = 36
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r36 = 37
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r37 = 38
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r38 = 39
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r39 = 40
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r40 = 41
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r41 = 42
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r42 = 43
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r43 = 44
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r44 = 45
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r45 = 46
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r46 = 47
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r47 = 48
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r48 = 49
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r49 = 50
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r50 = 51
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r51 = 52
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r52 = 53
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r53 = 54
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r54 = 55
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r55 = 56
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r56 = 57
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r57 = 58
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r58 = 59
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r59 = 60
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r60 = 61
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r61 = 62
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r62 = 63
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case r63 = 64
    /// generated content <ARCGenCSRegEnum.inc> begin clang-format off
    case status32 = 65
    /// 66
    case ending = 66
}

#endif
