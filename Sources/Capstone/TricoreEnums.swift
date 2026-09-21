#if CAPSTONE_HAS_TRICORE
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Tricore)

public enum TricoreFeature: UInt32 {
    case invalid = 0
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv110 = 128
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv120 = 129
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv130 = 130
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv131 = 131
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv160 = 132
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv161 = 133
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv162 = 134
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv180 = 135
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv120Up = 136
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv130Up = 137
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv131Up = 138
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv160Up = 139
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv161Up = 140
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv162Up = 141
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv180Up = 142
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv120Dn = 143
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv130Dn = 144
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv131Dn = 145
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv160Dn = 146
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv161Dn = 147
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv162Dn = 148
    /// generated content <TriCoreGenCSFeatureEnum.inc> begin clang-format off
    case hasv180Dn = 149
    /// mark the end of the list of features
    case ending = 150
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
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifsB = 1
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifsH = 2
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifs = 3
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifB = 4
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdifH = 5
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absdif = 6
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abssB = 7
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abssH = 8
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abss = 9
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absB = 10
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absDf = 11
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absF = 12
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case absH = 13
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case abs = 14
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addc = 15
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addihA = 16
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addih = 17
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addi = 18
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addscAt = 19
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addscA = 20
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsBu = 21
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsB = 22
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsH = 23
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsHu = 24
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addsU = 25
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case adds = 26
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addx = 27
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addA = 28
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addB = 29
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addDf = 30
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addF = 31
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case addH = 32
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case add = 33
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andnT = 34
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andn = 35
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andAndnT = 36
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andAndT = 37
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andEq = 38
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andGeU = 39
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andGe = 40
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andLtU = 41
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andLt = 42
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andNe = 43
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andNorT = 44
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andOrT = 45
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case andT = 46
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case and = 47
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bisr = 48
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bmerge = 49
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case bsplit = 50
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaI = 51
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaWi = 52
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheaW = 53
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiI = 54
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiWi = 55
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cacheiW = 56
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddnA = 57
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddn = 58
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case caddA = 59
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cadd = 60
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case calla = 61
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case calli = 62
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case call = 63
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cloB = 64
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cloH = 65
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clo = 66
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clsB = 67
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clsH = 68
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cls = 69
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clzB = 70
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clzH = 71
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case clz = 72
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmovn = 73
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmov = 74
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmpswapW = 75
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmpDf = 76
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case cmpF = 77
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32bW = 78
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32lW = 79
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crc32B = 80
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case crcn = 81
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubnA = 82
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubn = 83
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csubA = 84
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case csub = 85
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case debug = 86
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dextr = 87
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftof = 88
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftoin = 89
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftoiz = 90
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftoi = 91
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftolz = 92
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftol = 93
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftoulz = 94
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftoul = 95
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftouz = 96
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dftou = 97
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case difscA = 98
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case disable = 99
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case div64U = 100
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case div64 = 101
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case divDf = 102
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case divF = 103
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case divU = 104
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case div = 105
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dsync = 106
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvadj = 107
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitBu = 108
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitB = 109
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitHu = 110
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitH = 111
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinitU = 112
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvinit = 113
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvstepU = 114
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case dvstep = 115
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case enable = 116
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqanyB = 117
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqanyH = 118
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqzA = 119
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqA = 120
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqB = 121
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqH = 122
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eqW = 123
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case eq = 124
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case extrU = 125
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case extr = 126
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcalla = 127
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcalli = 128
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fcall = 129
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case fret = 130
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftodf = 131
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftohp = 132
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoin = 133
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoiz = 134
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoi = 135
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoq31z = 136
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftoq31 = 137
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftouz = 138
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ftou = 139
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case geA = 140
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case geU = 141
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ge = 142
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case hptof = 143
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case imask = 144
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insert = 145
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insnT = 146
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case insT = 147
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case isync = 148
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case itodf = 149
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case itof = 150
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmaxU = 151
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmax = 152
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixminU = 153
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ixmin = 154
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ja = 155
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jeqA = 156
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jeq = 157
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgez = 158
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgeU = 159
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jge = 160
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jgtz = 161
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ji = 162
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jla = 163
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jlez = 164
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jli = 165
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jltz = 166
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jltU = 167
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jlt = 168
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jl = 169
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jned = 170
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnei = 171
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jneA = 172
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jne = 173
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnzA = 174
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnzT = 175
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jnz = 176
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jzA = 177
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jzT = 178
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case jz = 179
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case j = 180
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldlcx = 181
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldmst = 182
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lducx = 183
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldA = 184
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldBu = 185
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldB = 186
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldDa = 187
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldD = 188
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldHu = 189
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldH = 190
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldQ = 191
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ldW = 192
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lea = 193
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lha = 194
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case loopu = 195
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case loop = 196
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltodf = 197
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltA = 198
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltB = 199
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltBu = 200
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltH = 201
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltHu = 202
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltU = 203
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltW = 204
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ltWu = 205
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case lt = 206
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmsH = 207
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmsU = 208
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddms = 209
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmH = 210
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmQ = 211
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddmU = 212
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddm = 213
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrsH = 214
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrsQ = 215
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrH = 216
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddrQ = 217
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsumsH = 218
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsumH = 219
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsursH = 220
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsurH = 221
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsusH = 222
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsuH = 223
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsH = 224
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsQ = 225
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddsU = 226
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case madds = 227
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddDf = 228
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddF = 229
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddH = 230
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddQ = 231
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maddU = 232
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case madd = 233
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxB = 234
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxBu = 235
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxDf = 236
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxF = 237
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxH = 238
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxHu = 239
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case maxU = 240
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case max = 241
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mfcr = 242
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minB = 243
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minBu = 244
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minDf = 245
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minF = 246
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minH = 247
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minHu = 248
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case minU = 249
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case min = 250
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movhA = 251
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movh = 252
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movzA = 253
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movAa = 254
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movA = 255
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movD = 256
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case movU = 257
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mov = 258
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadmsH = 259
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadmH = 260
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadrsH = 261
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadrH = 262
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadsH = 263
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubadH = 264
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmsH = 265
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmsU = 266
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubms = 267
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmH = 268
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmQ = 269
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubmU = 270
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubm = 271
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrsH = 272
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrsQ = 273
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrH = 274
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubrQ = 275
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsH = 276
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsQ = 277
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubsU = 278
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubs = 279
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubDf = 280
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubF = 281
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubH = 282
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubQ = 283
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msubU = 284
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case msub = 285
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mtcr = 286
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmsH = 287
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmH = 288
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulmU = 289
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulm = 290
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulrH = 291
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulrQ = 292
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulsU = 293
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case muls = 294
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulDf = 295
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulF = 296
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulH = 297
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulQ = 298
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mulU = 299
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case mul = 300
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nandT = 301
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nand = 302
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case negDf = 303
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case negF = 304
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nezA = 305
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case neA = 306
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ne = 307
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nop = 308
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case norT = 309
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case nor = 310
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case not = 311
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ornT = 312
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orn = 313
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orAndnT = 314
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orAndT = 315
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orEq = 316
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orGeU = 317
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orGe = 318
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orLtU = 319
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orLt = 320
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orNe = 321
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orNorT = 322
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orOrT = 323
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case orT = 324
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case or = 325
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case pack = 326
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case parity = 327
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case popcntW = 328
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case q31tof = 329
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case qseedDf = 330
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case qseedF = 331
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rem64U = 332
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rem64 = 333
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case restore = 334
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ret = 335
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rfe = 336
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rfm = 337
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rslcx = 338
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rstv = 339
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsubsU = 340
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsubs = 341
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case rsub = 342
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satBu = 343
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satB = 344
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satHu = 345
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case satH = 346
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case selnA = 347
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case seln = 348
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case selA = 349
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sel = 350
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shas = 351
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shaB = 352
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shaH = 353
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sha = 354
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shuffle = 355
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shAndnT = 356
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shAndT = 357
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shB = 358
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shEq = 359
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shGeU = 360
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shGe = 361
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shH = 362
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shLtU = 363
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shLt = 364
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNandT = 365
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNe = 366
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shNorT = 367
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shOrnT = 368
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shOrT = 369
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shXnorT = 370
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case shXorT = 371
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sh = 372
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stlcx = 373
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stucx = 374
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stA = 375
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stB = 376
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stDa = 377
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stD = 378
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stH = 379
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stQ = 380
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stT = 381
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case stW = 382
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subc = 383
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subscA = 384
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsBu = 385
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsB = 386
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsHu = 387
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsH = 388
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subsU = 389
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subs = 390
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subx = 391
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subA = 392
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subB = 393
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subDf = 394
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subF = 395
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case subH = 396
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case sub = 397
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case svlcx = 398
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapmskW = 399
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapA = 400
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case swapW = 401
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case syscall = 402
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbdemap = 403
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbflushA = 404
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbflushB = 405
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbmap = 406
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbprobeA = 407
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case tlbprobeI = 408
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case trapsv = 409
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case trapv = 410
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case ultodf = 411
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case unpack = 412
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case updfl = 413
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case utodf = 414
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case utof = 415
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case wait = 416
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xnorT = 417
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xnor = 418
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorEq = 419
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorGeU = 420
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorGe = 421
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorLtU = 422
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorLt = 423
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorNe = 424
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xorT = 425
    /// generated content <TriCoreGenCSInsnEnum.inc> begin clang-format off
    case xor = 426
    /// <-- mark the end of the list of instructions
    case ending = 427
}

/// Operand type for instruction's operands
public struct TricoreOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// CS_OP_INVALID (Uninitialized).
    public static let invalid: TricoreOp = []
    /// CS_OP_REG (Register operand).
    public static let reg = TricoreOp(rawValue: 1)
    /// CS_OP_IMM (Immediate operand).
    public static let imm = TricoreOp(rawValue: 2)
    /// CS_OP_MEM (Memory operand).
    public static let mem = TricoreOp(rawValue: 128)
}

/// TriCore registers
public enum TricoreReg: UInt16 {
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case fcx = 1
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case pc = 2
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case pcxi = 3
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case psw = 4
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a0 = 5
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a1 = 6
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a2 = 7
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a3 = 8
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a4 = 9
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a5 = 10
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a6 = 11
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a7 = 12
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a8 = 13
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a9 = 14
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a10 = 15
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a11 = 16
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a12 = 17
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a13 = 18
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a14 = 19
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a15 = 20
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d0 = 21
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d1 = 22
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d2 = 23
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d3 = 24
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d4 = 25
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d5 = 26
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d6 = 27
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d7 = 28
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d8 = 29
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d9 = 30
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d10 = 31
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d11 = 32
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d12 = 33
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d13 = 34
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d14 = 35
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case d15 = 36
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e0 = 37
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e2 = 38
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e4 = 39
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e6 = 40
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e8 = 41
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e10 = 42
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e12 = 43
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case e14 = 44
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p0 = 45
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p2 = 46
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p4 = 47
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p6 = 48
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p8 = 49
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p10 = 50
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p12 = 51
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case p14 = 52
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a0A1 = 53
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a2A3 = 54
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a4A5 = 55
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a6A7 = 56
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a8A9 = 57
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a10A11 = 58
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a12A13 = 59
    /// generated content <TriCoreGenCSRegEnum.inc> begin clang-format off
    case a14A15 = 60
    /// 61
    case ending = 61
}

#endif
