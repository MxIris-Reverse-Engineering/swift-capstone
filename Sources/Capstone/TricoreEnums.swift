// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Tricore)

public enum TricoreFeature: UInt32 {
    case invalid = 0
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv110 = 128
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv120Up = 129
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv130Up = 130
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv161 = 131
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv160Up = 132
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv131Up = 133
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv161Up = 134
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv162 = 135
    /// generate content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv162Up = 136
    /// mark the end of the list of features
    case ending = 137
}

/// Group of TriCore instructions
public enum TricoreGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_CALL
    case call = 1
    /// = CS_GRP_JUMP
    case jump = 2
    /// mark the end of the list of groups
    case ending = 3
}

/// TriCore instruction
public enum TricoreIns: UInt32 {
    case invalid = 0
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorT = 1
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifsB = 2
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifsH = 3
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifs = 4
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifB = 5
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifH = 6
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdif = 7
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abssB = 8
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abssH = 9
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abss = 10
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absB = 11
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absH = 12
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abs = 13
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addc = 14
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addihA = 15
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addih = 16
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addi = 17
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addscAt = 18
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addscA = 19
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsBu = 20
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsB = 21
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsH = 22
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsHu = 23
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsU = 24
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case adds = 25
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addx = 26
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addA = 27
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addB = 28
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addF = 29
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addH = 30
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case add = 31
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andnT = 32
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andn = 33
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andAndnT = 34
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andAndT = 35
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andEq = 36
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andGeU = 37
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andGe = 38
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andLtU = 39
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andLt = 40
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andNe = 41
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andNorT = 42
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andOrT = 43
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andT = 44
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case and = 45
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bisr = 46
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bmerge = 47
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bsplit = 48
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaI = 49
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaWi = 50
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaW = 51
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiI = 52
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiWi = 53
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiW = 54
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddnA = 55
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddn = 56
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddA = 57
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cadd = 58
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case calla = 59
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case calli = 60
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case call = 61
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cloB = 62
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cloH = 63
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clo = 64
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clsB = 65
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clsH = 66
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cls = 67
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clzB = 68
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clzH = 69
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clz = 70
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmovn = 71
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmov = 72
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmpswapW = 73
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmpF = 74
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32bW = 75
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32lW = 76
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32B = 77
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crcn = 78
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubnA = 79
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubn = 80
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubA = 81
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csub = 82
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case debug = 83
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dextr = 84
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case difscA = 85
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case disable = 86
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case divF = 87
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case divU = 88
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case div = 89
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dsync = 90
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvadj = 91
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitBu = 92
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitB = 93
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitHu = 94
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitH = 95
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitU = 96
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinit = 97
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvstepU = 98
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvstep = 99
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case enable = 100
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqanyB = 101
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqanyH = 102
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqzA = 103
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqA = 104
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqB = 105
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqH = 106
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqW = 107
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eq = 108
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case extrU = 109
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case extr = 110
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcalla = 111
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcalli = 112
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcall = 113
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fret = 114
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftohp = 115
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoiz = 116
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoi = 117
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoq31z = 118
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoq31 = 119
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftouz = 120
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftou = 121
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case geA = 122
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case geU = 123
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ge = 124
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case hptof = 125
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case imask = 126
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insert = 127
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insnT = 128
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insT = 129
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case isync = 130
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case itof = 131
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmaxU = 132
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmax = 133
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixminU = 134
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmin = 135
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ja = 136
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jeqA = 137
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jeq = 138
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgez = 139
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgeU = 140
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jge = 141
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgtz = 142
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ji = 143
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jla = 144
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jlez = 145
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jli = 146
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jltz = 147
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jltU = 148
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jlt = 149
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jl = 150
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jned = 151
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnei = 152
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jneA = 153
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jne = 154
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnzA = 155
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnzT = 156
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnz = 157
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jzA = 158
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jzT = 159
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jz = 160
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case j = 161
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldlcx = 162
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldmst = 163
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lducx = 164
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldA = 165
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldBu = 166
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldB = 167
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldDa = 168
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldD = 169
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldHu = 170
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldH = 171
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldQ = 172
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldW = 173
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lea = 174
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lha = 175
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case loopu = 176
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case loop = 177
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltA = 178
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltB = 179
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltBu = 180
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltH = 181
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltHu = 182
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltU = 183
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltW = 184
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltWu = 185
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lt = 186
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmsH = 187
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmsU = 188
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddms = 189
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmH = 190
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmQ = 191
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmU = 192
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddm = 193
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrsH = 194
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrsQ = 195
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrH = 196
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrQ = 197
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsumsH = 198
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsumH = 199
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsursH = 200
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsurH = 201
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsusH = 202
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsuH = 203
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsH = 204
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsQ = 205
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsU = 206
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case madds = 207
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddF = 208
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddH = 209
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddQ = 210
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddU = 211
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case madd = 212
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxB = 213
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxBu = 214
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxH = 215
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxHu = 216
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxU = 217
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case max = 218
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mfcr = 219
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minB = 220
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minBu = 221
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minH = 222
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minHu = 223
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minU = 224
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case min = 225
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movhA = 226
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movh = 227
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movzA = 228
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movAa = 229
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movA = 230
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movD = 231
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movU = 232
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mov = 233
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadmsH = 234
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadmH = 235
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadrsH = 236
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadrH = 237
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadsH = 238
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadH = 239
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmsH = 240
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmsU = 241
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubms = 242
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmH = 243
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmQ = 244
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmU = 245
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubm = 246
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrsH = 247
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrsQ = 248
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrH = 249
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrQ = 250
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsH = 251
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsQ = 252
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsU = 253
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubs = 254
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubF = 255
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubH = 256
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubQ = 257
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubU = 258
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msub = 259
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mtcr = 260
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmsH = 261
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmH = 262
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmU = 263
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulm = 264
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulrH = 265
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulrQ = 266
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulsU = 267
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case muls = 268
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulF = 269
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulH = 270
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulQ = 271
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulU = 272
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mul = 273
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nandT = 274
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nand = 275
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nezA = 276
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case neA = 277
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ne = 278
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nop = 279
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case norT = 280
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nor = 281
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case not = 282
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ornT = 283
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orn = 284
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orAndnT = 285
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orAndT = 286
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orEq = 287
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orGeU = 288
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orGe = 289
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orLtU = 290
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orLt = 291
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orNe = 292
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orNorT = 293
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orOrT = 294
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orT = 295
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case or = 296
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case pack = 297
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case parity = 298
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case popcntW = 299
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case q31tof = 300
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case qseedF = 301
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case restore = 302
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ret = 303
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rfe = 304
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rfm = 305
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rslcx = 306
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rstv = 307
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsubsU = 308
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsubs = 309
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsub = 310
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satBu = 311
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satB = 312
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satHu = 313
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satH = 314
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case selnA = 315
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case seln = 316
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case selA = 317
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sel = 318
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shas = 319
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shaB = 320
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shaH = 321
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sha = 322
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shuffle = 323
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shAndnT = 324
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shAndT = 325
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shB = 326
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shEq = 327
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shGeU = 328
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shGe = 329
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shH = 330
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shLtU = 331
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shLt = 332
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNandT = 333
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNe = 334
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNorT = 335
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shOrnT = 336
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shOrT = 337
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shXnorT = 338
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shXorT = 339
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sh = 340
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stlcx = 341
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stucx = 342
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stA = 343
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stB = 344
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stDa = 345
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stD = 346
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stH = 347
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stQ = 348
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stT = 349
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stW = 350
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subc = 351
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subscA = 352
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsBu = 353
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsB = 354
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsHu = 355
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsH = 356
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsU = 357
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subs = 358
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subx = 359
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subA = 360
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subB = 361
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subF = 362
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subH = 363
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sub = 364
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case svlcx = 365
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapmskW = 366
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapA = 367
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapW = 368
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case syscall = 369
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbdemap = 370
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbflushA = 371
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbflushB = 372
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbmap = 373
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbprobeA = 374
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbprobeI = 375
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case trapsv = 376
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case trapv = 377
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case unpack = 378
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case updfl = 379
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case utof = 380
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case wait = 381
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xnorT = 382
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xnor = 383
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorEq = 384
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorGeU = 385
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorGe = 386
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorLtU = 387
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorLt = 388
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorNe = 389
    /// generate content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xor = 390
    /// <-- mark the end of the list of instructions
    case ending = 391
}

/// Operand type for instruction's operands
public enum TricoreOp: UInt32 {
    /// CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// CS_OP_REG (Register operand).
    case reg = 1
    /// CS_OP_IMM (Immediate operand).
    case imm = 2
    /// CS_OP_MEM (Memory operand).
    case mem = 3
}

/// TriCore registers
public enum TricoreReg: UInt16 {
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case fcx = 1
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case pc = 2
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case pcxi = 3
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case psw = 4
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a0 = 5
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a1 = 6
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a2 = 7
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a3 = 8
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a4 = 9
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a5 = 10
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a6 = 11
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a7 = 12
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a8 = 13
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a9 = 14
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a10 = 15
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a11 = 16
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a12 = 17
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a13 = 18
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a14 = 19
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a15 = 20
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d0 = 21
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d1 = 22
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d2 = 23
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d3 = 24
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d4 = 25
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d5 = 26
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d6 = 27
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d7 = 28
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d8 = 29
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d9 = 30
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d10 = 31
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d11 = 32
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d12 = 33
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d13 = 34
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d14 = 35
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d15 = 36
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e0 = 37
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e2 = 38
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e4 = 39
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e6 = 40
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e8 = 41
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e10 = 42
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e12 = 43
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e14 = 44
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p0 = 45
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p2 = 46
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p4 = 47
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p6 = 48
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p8 = 49
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p10 = 50
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p12 = 51
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p14 = 52
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a0A1 = 53
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a2A3 = 54
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a4A5 = 55
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a6A7 = 56
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a8A9 = 57
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a10A11 = 58
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a12A13 = 59
    /// generate content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a14A15 = 60
    /// 61
    case ending = 61
}
