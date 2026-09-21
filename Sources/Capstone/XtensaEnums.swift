#if CAPSTONE_HAS_XTENSA
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Xtensa)

public enum XtensaFeature: UInt32 {
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasdensity = 128
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hassinglefloat = 129
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case haswindowed = 130
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasboolean = 131
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasloop = 132
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hassext = 133
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasclamps = 134
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasnsa = 135
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasminmax = 136
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmul16 = 137
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmul32 = 138
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmul32high = 139
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasdiv32 = 140
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmac16 = 141
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasdfpaccel = 142
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hass32c1i = 143
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasthreadptr = 144
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasextendedl32r = 145
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasatomctl = 146
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmemctl = 147
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasdebug = 148
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasexception = 149
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hashighpriinterrupts = 150
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hascoprocessor = 151
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasinterrupt = 152
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasrelocatablevector = 153
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hastimerint = 154
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasprid = 155
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasregionprotection = 156
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasmiscsr = 157
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasesp32s2ops = 158
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasesp32s3ops = 159
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hashifi3 = 160
    /// generated content <XtensaGenCSFeatureEnum.inc> begin clang-format off
    case hasforcedatomics = 161
}

public enum XtensaGrp: UInt8 {
    case invalid = 0
    case call = 1
    case jump = 2
    case ret = 3
    /// mark the end of the list of features
    case ending = 162
}

/// Xtensa registers
public enum XtensaIns: UInt32 {
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case abs = 1
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case absS = 2
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case add = 3
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addexpmS = 4
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addexpS = 5
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addi = 6
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addiN = 7
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addmi = 8
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addx2 = 9
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addx4 = 10
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addx8 = 11
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addN = 12
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case addS = 13
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs16S = 14
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs24S = 15
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs32 = 16
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs32S = 17
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs64 = 18
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAbs64S = 19
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd16 = 20
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd16S = 21
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd24S = 22
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd32 = 23
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd32S = 24
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd32HlLh = 25
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd64 = 26
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAdd64S = 27
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAddbrba32 = 28
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAddsub32 = 29
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAddsub32S = 30
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeAnd = 31
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvt32X2F1610 = 32
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvt32X2F1632 = 33
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvt48A32 = 34
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvt64A32 = 35
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvt64F32H = 36
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvta32F24SH = 37
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvta32F24SL = 38
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvtq56A32S = 39
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvtq56P32SH = 40
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeCvtq56P32SL = 41
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDb = 42
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDbi = 43
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDbiIc = 44
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDbiIp = 45
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDbIc = 46
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDbIp = 47
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDiv64D32H = 48
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeDiv64D32L = 49
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeEq16 = 50
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeEq32 = 51
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeEq64 = 52
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16MI = 53
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16MIu = 54
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16MX = 55
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16MXc = 56
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16MXu = 57
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X2MI = 58
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X2MIu = 59
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X2MX = 60
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X2MXc = 61
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X2MXu = 62
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4I = 63
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4Ip = 64
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4Ric = 65
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4Rip = 66
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4X = 67
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4Xc = 68
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X4Xp = 69
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16I = 70
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16Ip = 71
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16X = 72
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16Xc = 73
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL16Xp = 74
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32F24I = 75
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32F24Ip = 76
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32F24X = 77
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32F24Xc = 78
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32F24Xp = 79
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32MI = 80
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32MIu = 81
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32MX = 82
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32MXc = 83
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32MXu = 84
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24I = 85
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24Ip = 86
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24Ric = 87
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24Rip = 88
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24X = 89
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24Xc = 90
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2F24Xp = 91
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2I = 92
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2Ip = 93
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2Ric = 94
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2Rip = 95
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2X = 96
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2Xc = 97
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X2Xp = 98
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32I = 99
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32Ip = 100
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32X = 101
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32Xc = 102
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL32Xp = 103
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL64I = 104
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL64Ip = 105
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL64X = 106
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL64Xc = 107
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeL64Xp = 108
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4NegPc = 109
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4PosPc = 110
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4Ic = 111
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4Ip = 112
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4Ric = 113
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa16X4Rip = 114
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24NegPc = 115
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24PosPc = 116
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2NegPc = 117
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2PosPc = 118
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2Ic = 119
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2Ip = 120
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2Ric = 121
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24X2Rip = 122
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24Ic = 123
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24Ip = 124
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24Ric = 125
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa24Rip = 126
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2F24Ic = 127
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2F24Ip = 128
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2F24Ric = 129
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2F24Rip = 130
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2NegPc = 131
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2PosPc = 132
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2Ic = 133
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2Ip = 134
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2Ric = 135
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa32X2Rip = 136
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLa64Pp = 137
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLalign64I = 138
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLb = 139
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLbi = 140
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLbk = 141
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLbki = 142
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLbs = 143
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLbsi = 144
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLe16 = 145
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLe32 = 146
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLe64 = 147
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLt16 = 148
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLt32 = 149
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeLt64 = 150
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMax32 = 151
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMax64 = 152
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMaxabs32S = 153
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMaxabs64S = 154
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMin32 = 155
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMin64 = 156
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMinabs32S = 157
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMinabs64S = 158
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMov = 159
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad160 = 160
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad161 = 161
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad162 = 162
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad163 = 163
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad32H = 164
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovad32L = 165
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovalign = 166
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovda16 = 167
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovda16X2 = 168
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovda32 = 169
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovda32X2 = 170
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovf16X4 = 171
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovf32X2 = 172
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovf64 = 173
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovi = 174
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovt16X4 = 175
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovt32X2 = 176
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMovt64 = 177
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul16X4 = 178
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32ULl = 179
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H0 = 180
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H0S2 = 181
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H1 = 182
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H1S2 = 183
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H2 = 184
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H2S2 = 185
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H3 = 186
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16H3S2 = 187
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L0 = 188
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L0S2 = 189
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L1 = 190
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L1S2 = 191
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L2 = 192
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L2S2 = 193
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L3 = 194
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32X16L3S2 = 195
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32Hh = 196
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32Lh = 197
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32Ll = 198
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMul32LlS2 = 199
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula16X4 = 200
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32ULl = 201
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H0 = 202
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H0S2 = 203
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H1 = 204
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H1S2 = 205
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H2 = 206
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H2S2 = 207
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H3 = 208
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16H3S2 = 209
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L0 = 210
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L0S2 = 211
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L1 = 212
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L1S2 = 213
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L2 = 214
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L2S2 = 215
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L3 = 216
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32X16L3S2 = 217
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32Hh = 218
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32Lh = 219
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32Ll = 220
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMula32LlS2 = 221
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad24HhLl = 222
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad24HhLlS2 = 223
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad24HlLh = 224
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad24HlLhS2 = 225
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H0L1 = 226
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H0L1S2 = 227
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H1L0 = 228
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H1L0S2 = 229
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H2L3 = 230
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H2L3S2 = 231
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H3L2 = 232
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaad32X16H3L2S2 = 233
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss1100 = 234
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss1100S2 = 235
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss1302 = 236
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss1302S2 = 237
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss3322 = 238
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd16Ss3322S2 = 239
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd24HhLl = 240
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd24HhLlS2 = 241
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd24HlLh = 242
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd24HlLhS2 = 243
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H0L1 = 244
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H0L1S2 = 245
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H1L0 = 246
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H1L0S2 = 247
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H2L3 = 248
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H2L3S2 = 249
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H3L2 = 250
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaafd32X16H3L2S2 = 251
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulac24 = 252
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulac32X16H = 253
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulac32X16L = 254
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss00 = 255
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss00S2 = 256
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss10 = 257
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss11 = 258
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss20 = 259
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss21 = 260
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss22 = 261
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss30 = 262
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss31 = 263
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss32 = 264
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16Ss33 = 265
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf16X4Ss = 266
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32RHh = 267
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32RLh = 268
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32RLl = 269
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32RLlS2 = 270
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32SHh = 271
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32SLh = 272
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32SLl = 273
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32SLlS2 = 274
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H0 = 275
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H0S2 = 276
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H1 = 277
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H1S2 = 278
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H2 = 279
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H2S2 = 280
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H3 = 281
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16H3S2 = 282
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L0 = 283
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L0S2 = 284
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L1 = 285
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L1S2 = 286
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L2 = 287
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L2S2 = 288
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L3 = 289
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf32X16L3S2 = 290
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf48Q32Sp16SL = 291
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf48Q32Sp16SLS2 = 292
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf48Q32Sp16UL = 293
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaf48Q32Sp16ULS2 = 294
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafc24Ra = 295
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafc32X16RasH = 296
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafc32X16RasL = 297
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd24X2FirH = 298
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd24X2FirL = 299
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd32X16X2FirHh = 300
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd32X16X2FirHl = 301
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd32X16X2FirLh = 302
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafd32X16X2FirLl = 303
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp24X2R = 304
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp24X2Ra = 305
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp24X2RaS2 = 306
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp24X2RS2 = 307
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RasH = 308
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RasHS2 = 309
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RasL = 310
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RasLS2 = 311
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RsH = 312
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RsHS2 = 313
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RsL = 314
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X16X2RsLS2 = 315
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X2Ras = 316
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafp32X2Rs = 317
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafq32Sp24SHS2 = 318
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulafq32Sp24SLS2 = 319
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulap24X2 = 320
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulap24X2S2 = 321
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulap32X16X2H = 322
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulap32X16X2L = 323
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulap32X2 = 324
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaq32Sp16SLS2 = 325
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulaq32Sp16ULS2 = 326
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMularfq32Sp24SHS2 = 327
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMularfq32Sp24SLS2 = 328
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SHh = 329
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SHhS2 = 330
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SLh = 331
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SLhS2 = 332
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SLl = 333
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulas32F48P16SLlS2 = 334
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd24HhLl = 335
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd24HhLlS2 = 336
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd24HlLh = 337
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd24HlLhS2 = 338
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd32X16H1L0 = 339
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd32X16H1L0S2 = 340
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd32X16H3L2 = 341
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasd32X16H3L2S2 = 342
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd24HhLl = 343
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd24HhLlS2 = 344
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd24HlLh = 345
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd24HlLhS2 = 346
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd32X16H1L0 = 347
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd32X16H1L0S2 = 348
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd32X16H3L2 = 349
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulasfd32X16H3L2S2 = 350
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulc24 = 351
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulc32X16H = 352
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulc32X16L = 353
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss00 = 354
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss00S2 = 355
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss10 = 356
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss11 = 357
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss20 = 358
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss21 = 359
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss22 = 360
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss30 = 361
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss31 = 362
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss32 = 363
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16Ss33 = 364
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf16X4Ss = 365
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32RHh = 366
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32RLh = 367
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32RLl = 368
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32RLlS2 = 369
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32SHh = 370
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32SLh = 371
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32SLl = 372
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32SLlS2 = 373
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H0 = 374
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H0S2 = 375
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H1 = 376
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H1S2 = 377
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H2 = 378
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H2S2 = 379
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H3 = 380
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16H3S2 = 381
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L0 = 382
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L0S2 = 383
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L1 = 384
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L1S2 = 385
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L2 = 386
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L2S2 = 387
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L3 = 388
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf32X16L3S2 = 389
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf48Q32Sp16SL = 390
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf48Q32Sp16SLS2 = 391
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf48Q32Sp16UL = 392
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulf48Q32Sp16ULS2 = 393
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfc24Ra = 394
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfc32X16RasH = 395
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfc32X16RasL = 396
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd24X2FirH = 397
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd24X2FirL = 398
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd32X16X2FirHh = 399
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd32X16X2FirHl = 400
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd32X16X2FirLh = 401
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfd32X16X2FirLl = 402
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp16X4Ras = 403
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp16X4S = 404
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp24X2R = 405
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp24X2Ra = 406
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp24X2RaS2 = 407
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp24X2RS2 = 408
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RasH = 409
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RasHS2 = 410
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RasL = 411
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RasLS2 = 412
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RsH = 413
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RsHS2 = 414
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RsL = 415
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X16X2RsLS2 = 416
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X2Ras = 417
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfp32X2Rs = 418
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfq32Sp24SHS2 = 419
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulfq32Sp24SLS2 = 420
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulp24X2 = 421
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulp24X2S2 = 422
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulp32X16X2H = 423
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulp32X16X2L = 424
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulp32X2 = 425
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulq32Sp16SLS2 = 426
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulq32Sp16ULS2 = 427
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulrfq32Sp24SHS2 = 428
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulrfq32Sp24SLS2 = 429
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls16X4 = 430
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SHh = 431
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SHhS2 = 432
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SLh = 433
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SLhS2 = 434
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SLl = 435
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32F48P16SLlS2 = 436
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32ULl = 437
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H0 = 438
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H0S2 = 439
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H1 = 440
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H1S2 = 441
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H2 = 442
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H2S2 = 443
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H3 = 444
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16H3S2 = 445
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L0 = 446
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L0S2 = 447
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L1 = 448
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L1S2 = 449
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L2 = 450
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L2S2 = 451
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L3 = 452
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32X16L3S2 = 453
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32Hh = 454
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32Lh = 455
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMuls32Ll = 456
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad24HhLl = 457
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad24HhLlS2 = 458
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad32X16H1L0 = 459
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad32X16H1L0S2 = 460
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad32X16H3L2 = 461
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsad32X16H3L2S2 = 462
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd24HhLl = 463
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd24HhLlS2 = 464
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd32X16H1L0 = 465
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd32X16H1L0S2 = 466
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd32X16H3L2 = 467
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsafd32X16H3L2S2 = 468
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss00 = 469
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss00S2 = 470
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss10 = 471
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss11 = 472
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss20 = 473
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss21 = 474
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss22 = 475
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss30 = 476
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss31 = 477
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss32 = 478
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16Ss33 = 479
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf16X4Ss = 480
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32RHh = 481
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32RLh = 482
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32RLl = 483
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32RLlS2 = 484
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32SHh = 485
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32SLh = 486
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32SLl = 487
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H0 = 488
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H0S2 = 489
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H1 = 490
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H1S2 = 491
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H2 = 492
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H2S2 = 493
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H3 = 494
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16H3S2 = 495
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L0 = 496
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L0S2 = 497
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L1 = 498
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L1S2 = 499
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L2 = 500
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L2S2 = 501
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L3 = 502
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf32X16L3S2 = 503
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf48Q32Sp16SL = 504
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf48Q32Sp16SLS2 = 505
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf48Q32Sp16UL = 506
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsf48Q32Sp16ULS2 = 507
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp24X2R = 508
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp24X2Ra = 509
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp24X2RaS2 = 510
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp24X2RS2 = 511
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RasH = 512
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RasHS2 = 513
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RasL = 514
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RasLS2 = 515
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RsH = 516
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RsHS2 = 517
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RsL = 518
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X16X2RsLS2 = 519
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X2Ras = 520
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfp32X2Rs = 521
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfq32Sp24SHS2 = 522
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsfq32Sp24SLS2 = 523
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsp24X2 = 524
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsp24X2S2 = 525
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsp32X16X2H = 526
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsp32X16X2L = 527
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsp32X2 = 528
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsq32Sp16SLS2 = 529
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsq32Sp16ULS2 = 530
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsrfq32Sp24SHS2 = 531
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulsrfq32Sp24SLS2 = 532
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SHh = 533
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SHhS2 = 534
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SLh = 535
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SLhS2 = 536
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SLl = 537
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulss32F48P16SLlS2 = 538
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd24HhLl = 539
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd24HhLlS2 = 540
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd24HlLh = 541
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd24HlLhS2 = 542
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd32X16H1L0 = 543
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd32X16H1L0S2 = 544
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd32X16H3L2 = 545
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssd32X16H3L2S2 = 546
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss1100 = 547
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss1100S2 = 548
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss1302 = 549
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss1302S2 = 550
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss3322 = 551
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd16Ss3322S2 = 552
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd24HhLl = 553
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd24HhLlS2 = 554
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd24HlLh = 555
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd24HlLhS2 = 556
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd32X16H1L0 = 557
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd32X16H1L0S2 = 558
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd32X16H3L2 = 559
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulssfd32X16H3L2S2 = 560
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad24HhLl = 561
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad24HhLlS2 = 562
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad24HlLh = 563
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad24HlLhS2 = 564
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H0L1 = 565
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H0L1S2 = 566
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H1L0 = 567
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H1L0S2 = 568
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H2L3 = 569
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H2L3S2 = 570
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H3L2 = 571
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaad32X16H3L2S2 = 572
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss1100 = 573
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss1100S2 = 574
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss1302 = 575
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss1302S2 = 576
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss3322 = 577
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd16Ss3322S2 = 578
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd24HhLl = 579
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd24HhLlS2 = 580
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd24HlLh = 581
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd24HlLhS2 = 582
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H0L1 = 583
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H0L1S2 = 584
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H1L0 = 585
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H1L0S2 = 586
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H2L3 = 587
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H2L3S2 = 588
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H3L2 = 589
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzaafd32X16H3L2S2 = 590
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd24HhLl = 591
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd24HhLlS2 = 592
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd24HlLh = 593
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd24HlLhS2 = 594
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd32X16H1L0 = 595
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd32X16H1L0S2 = 596
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd32X16H3L2 = 597
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasd32X16H3L2S2 = 598
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd24HhLl = 599
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd24HhLlS2 = 600
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd24HlLh = 601
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd24HlLhS2 = 602
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd32X16H1L0 = 603
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd32X16H1L0S2 = 604
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd32X16H3L2 = 605
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzasfd32X16H3L2S2 = 606
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad24HhLl = 607
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad24HhLlS2 = 608
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad32X16H1L0 = 609
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad32X16H1L0S2 = 610
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad32X16H3L2 = 611
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsad32X16H3L2S2 = 612
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd24HhLl = 613
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd24HhLlS2 = 614
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd32X16H1L0 = 615
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd32X16H1L0S2 = 616
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd32X16H3L2 = 617
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzsafd32X16H3L2S2 = 618
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd24HhLl = 619
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd24HhLlS2 = 620
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd24HlLh = 621
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd24HlLhS2 = 622
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd32X16H1L0 = 623
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd32X16H1L0S2 = 624
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd32X16H3L2 = 625
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssd32X16H3L2S2 = 626
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss1100 = 627
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss1100S2 = 628
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss1302 = 629
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss1302S2 = 630
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss3322 = 631
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd16Ss3322S2 = 632
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd24HhLl = 633
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd24HhLlS2 = 634
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd24HlLh = 635
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd24HlLhS2 = 636
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd32X16H1L0 = 637
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd32X16H1L0S2 = 638
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd32X16H3L2 = 639
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeMulzssfd32X16H3L2S2 = 640
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNand = 641
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg16S = 642
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg24S = 643
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg32 = 644
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg32S = 645
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg64 = 646
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNeg64S = 647
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNsa64 = 648
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNsaz160 = 649
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeNsaz32L = 650
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeOr = 651
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aePksr24 = 652
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aePksr32 = 653
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound16X4F32Sasym = 654
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound16X4F32Ssym = 655
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound24X2F48Sasym = 656
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound24X2F48Ssym = 657
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound32X2F48Sasym = 658
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound32X2F48Ssym = 659
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound32X2F64Sasym = 660
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRound32X2F64Ssym = 661
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsp16F24Asym = 662
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsp16F24Sym = 663
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsp16Q48X2Asym = 664
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsp16Q48X2Sym = 665
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsq32F48Asym = 666
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeRoundsq32F48Sym = 667
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16MLI = 668
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16MLIu = 669
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16MLX = 670
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16MLXc = 671
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16MLXu = 672
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X2MI = 673
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X2MIu = 674
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X2MX = 675
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X2MXc = 676
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X2MXu = 677
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4I = 678
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4Ip = 679
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4Ric = 680
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4Rip = 681
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4X = 682
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4Xc = 683
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS16X4Xp = 684
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS160I = 685
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS160Ip = 686
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS160X = 687
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS160Xc = 688
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS160Xp = 689
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24Ra64SI = 690
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24Ra64SIp = 691
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24Ra64SX = 692
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24Ra64SXc = 693
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24Ra64SXp = 694
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS24X2Ra64SIp = 695
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32F24LI = 696
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32F24LIp = 697
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32F24LX = 698
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32F24LXc = 699
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32F24LXp = 700
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32MI = 701
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32MIu = 702
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32MX = 703
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32MXc = 704
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32MXu = 705
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32Ra64SI = 706
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32Ra64SIp = 707
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32Ra64SX = 708
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32Ra64SXc = 709
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32Ra64SXp = 710
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24I = 711
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24Ip = 712
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24Ric = 713
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24Rip = 714
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24X = 715
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24Xc = 716
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2F24Xp = 717
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Ra64SIp = 718
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2I = 719
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Ip = 720
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Ric = 721
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Rip = 722
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2X = 723
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Xc = 724
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32X2Xp = 725
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32LI = 726
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32LIp = 727
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32LX = 728
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32LXc = 729
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS32LXp = 730
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS64I = 731
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS64Ip = 732
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS64X = 733
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS64Xc = 734
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeS64Xp = 735
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa16X4Ic = 736
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa16X4Ip = 737
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa16X4Ric = 738
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa16X4Rip = 739
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24X2Ic = 740
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24X2Ip = 741
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24X2Ric = 742
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24X2Rip = 743
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24LIc = 744
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24LIp = 745
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24LRic = 746
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa24LRip = 747
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2F24Ic = 748
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2F24Ip = 749
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2F24Ric = 750
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2F24Rip = 751
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2Ic = 752
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2Ip = 753
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2Ric = 754
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa32X2Rip = 755
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa64NegFp = 756
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSa64PosFp = 757
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSalign64I = 758
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSat16X4 = 759
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSat24S = 760
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSat48S = 761
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSatq56S = 762
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSb = 763
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbf = 764
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbfIc = 765
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbfIp = 766
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbi = 767
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbiIc = 768
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbiIp = 769
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbIc = 770
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSbIp = 771
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSel16I = 772
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSel16IN = 773
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSext32 = 774
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSext32X2D1610 = 775
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSext32X2D1632 = 776
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSha32 = 777
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeShortswap = 778
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaa16S = 779
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaa32 = 780
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaa32S = 781
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaa64 = 782
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaa64S = 783
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaaq56 = 784
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai16S = 785
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai24 = 786
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai24S = 787
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai32 = 788
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai32S = 789
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai64 = 790
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlai64S = 791
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlaisq56S = 792
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas24 = 793
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas24S = 794
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas32 = 795
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas32S = 796
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas64 = 797
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlas64S = 798
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlasq56 = 799
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSlassq56S = 800
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSra6432 = 801
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa16Rs = 802
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa16S = 803
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa32 = 804
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa32Rs = 805
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa32S = 806
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSraa64 = 807
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai16 = 808
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai16R = 809
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai24 = 810
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai32 = 811
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai32R = 812
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrai64 = 813
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSras24 = 814
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSras32 = 815
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSras64 = 816
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrla32 = 817
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrla64 = 818
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrli24 = 819
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrli32 = 820
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrli64 = 821
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrls24 = 822
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrls32 = 823
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSrls64 = 824
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub16 = 825
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub16S = 826
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub24S = 827
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub32 = 828
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub32S = 829
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub64 = 830
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSub64S = 831
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSubadd32 = 832
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeSubadd32S = 833
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeTrunca32F64SL = 834
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeTrunca32X2F64S = 835
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeTrunci32F64SL = 836
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeTrunci32X2F64S = 837
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldl16C = 838
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldl16CIc = 839
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldl16CIp = 840
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldl16T = 841
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldl32T = 842
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVldsht = 843
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVlel16T = 844
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVlel32T = 845
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVles16C = 846
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVles16CIc = 847
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeVles16CIp = 848
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeXor = 849
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case aeZalign64 = 850
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case all4 = 851
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case all8 = 852
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case and = 853
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case andb = 854
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case andbc = 855
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case any4 = 856
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case any8 = 857
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ball = 858
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bany = 859
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bbc = 860
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bbci = 861
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bbs = 862
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bbsi = 863
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case beq = 864
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case beqi = 865
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case beqz = 866
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bf = 867
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bge = 868
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bgei = 869
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bgeu = 870
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bgeui = 871
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bgez = 872
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case blt = 873
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case blti = 874
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bltu = 875
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bltui = 876
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bltz = 877
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bnall = 878
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bne = 879
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bnei = 880
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bnez = 881
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bnone = 882
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case `break` = 883
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case breakN = 884
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case bt = 885
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case call0 = 886
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case call12 = 887
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case call4 = 888
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case call8 = 889
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case callx0 = 890
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case callx12 = 891
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case callx4 = 892
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case callx8 = 893
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ceilS = 894
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case clamps = 895
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case clrBitGpioOut = 896
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case constS = 897
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case div0S = 898
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case divnS = 899
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case dsync = 900
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeAndq = 901
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeBitrev = 902
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeClrBitGpioOut = 903
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeCmulS16 = 904
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeCmulS16LdIncp = 905
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeCmulS16StIncp = 906
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftAmsS16LdIncp = 907
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftAmsS16LdIncpUaup = 908
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftAmsS16LdR32Decp = 909
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftAmsS16StIncp = 910
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftCmulS16LdXp = 911
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftCmulS16StXp = 912
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftR2BfS16 = 913
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftR2BfS16StIncp = 914
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeFftVstR32Decp = 915
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeGetGpioIn = 916
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdf128Ip = 917
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdf128Xp = 918
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdf64Ip = 919
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdf64Xp = 920
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaS16128Ip = 921
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaS16128Xp = 922
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaS8128Ip = 923
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaS8128Xp = 924
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaU16128Ip = 925
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaU16128Xp = 926
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaU8128Ip = 927
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdqaU8128Xp = 928
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdxq32 = 929
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLd128UsarIp = 930
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLd128UsarXp = 931
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdAccxIp = 932
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdQaccHH32Ip = 933
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdQaccHL128Ip = 934
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdQaccLH32Ip = 935
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdQaccLL128Ip = 936
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeLdUaStateIp = 937
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovi32A = 938
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovi32Q = 939
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovS16Qacc = 940
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovS8Qacc = 941
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovU16Qacc = 942
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeMovU8Qacc = 943
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeNotq = 944
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeOrq = 945
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSetBitGpioOut = 946
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSlci2Q = 947
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSlcxxp2Q = 948
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrci2Q = 949
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcmbS16Qacc = 950
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcmbS8Qacc = 951
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcq128StIncp = 952
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcxxp2Q = 953
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcQ = 954
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcQLdIp = 955
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcQLdXp = 956
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrcQQup = 957
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeSrsAccx = 958
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStf128Ip = 959
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStf128Xp = 960
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStf64Ip = 961
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStf64Xp = 962
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStxq32 = 963
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStAccxIp = 964
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStQaccHH32Ip = 965
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStQaccHL128Ip = 966
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStQaccLH32Ip = 967
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStQaccLL128Ip = 968
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeStUaStateIp = 969
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS16 = 970
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS16LdIncp = 971
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS16StIncp = 972
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS32 = 973
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS32LdIncp = 974
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS32StIncp = 975
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS8 = 976
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS8LdIncp = 977
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVaddsS8StIncp = 978
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpEqS16 = 979
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpEqS32 = 980
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpEqS8 = 981
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpGtS16 = 982
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpGtS32 = 983
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpGtS8 = 984
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpLtS16 = 985
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpLtS32 = 986
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVcmpLtS8 = 987
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc16 = 988
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc16Ip = 989
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc16Xp = 990
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc32 = 991
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc32Ip = 992
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc32Xp = 993
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc8 = 994
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc8Ip = 995
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldbc8Xp = 996
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldhbc16Incp = 997
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVld128Ip = 998
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVld128Xp = 999
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldH64Ip = 1000
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldH64Xp = 1001
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldL64Ip = 1002
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVldL64Xp = 1003
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS16 = 1004
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS16LdIncp = 1005
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS16StIncp = 1006
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS32 = 1007
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS32LdIncp = 1008
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS32StIncp = 1009
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS8 = 1010
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS8LdIncp = 1011
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmaxS8StIncp = 1012
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS16 = 1013
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS16LdIncp = 1014
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS16StIncp = 1015
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS32 = 1016
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS32LdIncp = 1017
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS32StIncp = 1018
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS8 = 1019
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS8LdIncp = 1020
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVminS8StIncp = 1021
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16Accx = 1022
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16AccxLdIp = 1023
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16AccxLdIpQup = 1024
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16AccxLdXp = 1025
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16AccxLdXpQup = 1026
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16Qacc = 1027
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdbcIncp = 1028
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdbcIncpQup = 1029
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdIp = 1030
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdIpQup = 1031
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdXp = 1032
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS16QaccLdXpQup = 1033
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8Accx = 1034
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8AccxLdIp = 1035
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8AccxLdIpQup = 1036
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8AccxLdXp = 1037
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8AccxLdXpQup = 1038
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8Qacc = 1039
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdbcIncp = 1040
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdbcIncpQup = 1041
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdIp = 1042
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdIpQup = 1043
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdXp = 1044
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasS8QaccLdXpQup = 1045
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16Accx = 1046
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16AccxLdIp = 1047
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16AccxLdIpQup = 1048
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16AccxLdXp = 1049
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16AccxLdXpQup = 1050
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16Qacc = 1051
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdbcIncp = 1052
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdbcIncpQup = 1053
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdIp = 1054
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdIpQup = 1055
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdXp = 1056
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU16QaccLdXpQup = 1057
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8Accx = 1058
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8AccxLdIp = 1059
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8AccxLdIpQup = 1060
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8AccxLdXp = 1061
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8AccxLdXpQup = 1062
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8Qacc = 1063
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdbcIncp = 1064
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdbcIncpQup = 1065
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdIp = 1066
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdIpQup = 1067
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdXp = 1068
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulasU8QaccLdXpQup = 1069
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS16 = 1070
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS16LdIncp = 1071
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS16StIncp = 1072
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS8 = 1073
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS8LdIncp = 1074
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulS8StIncp = 1075
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU16 = 1076
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU16LdIncp = 1077
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU16StIncp = 1078
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU8 = 1079
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU8LdIncp = 1080
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVmulU8StIncp = 1081
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVpreluS16 = 1082
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVpreluS8 = 1083
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVreluS16 = 1084
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVreluS8 = 1085
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsl32 = 1086
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsmulasS16Qacc = 1087
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsmulasS16QaccLdIncp = 1088
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsmulasS8Qacc = 1089
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsmulasS8QaccLdIncp = 1090
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsr32 = 1091
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVst128Ip = 1092
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVst128Xp = 1093
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVstH64Ip = 1094
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVstH64Xp = 1095
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVstL64Ip = 1096
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVstL64Xp = 1097
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS16 = 1098
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS16LdIncp = 1099
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS16StIncp = 1100
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS32 = 1101
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS32LdIncp = 1102
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS32StIncp = 1103
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS8 = 1104
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS8LdIncp = 1105
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVsubsS8StIncp = 1106
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVunzip16 = 1107
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVunzip32 = 1108
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVunzip8 = 1109
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVzip16 = 1110
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVzip32 = 1111
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeVzip8 = 1112
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeWrMaskGpioOut = 1113
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeXorq = 1114
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeZeroAccx = 1115
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeZeroQ = 1116
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case eeZeroQacc = 1117
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case entry = 1118
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case esync = 1119
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case excw = 1120
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case extui = 1121
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case extw = 1122
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case floatS = 1123
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case floorS = 1124
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case getGpioIn = 1125
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ill = 1126
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case illN = 1127
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case isync = 1128
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case j = 1129
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case jx = 1130
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l16si = 1131
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l16ui = 1132
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32e = 1133
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32i = 1134
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32iN = 1135
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32r = 1136
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l8ui = 1137
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case lddec = 1138
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ldinc = 1139
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case loop = 1140
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case loopgtz = 1141
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case loopnez = 1142
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case lsi = 1143
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case lsip = 1144
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case lsx = 1145
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case lsxp = 1146
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case maddnS = 1147
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case maddS = 1148
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case max = 1149
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case maxu = 1150
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case memw = 1151
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case min = 1152
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case minu = 1153
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mkdadjS = 1154
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mksadjS = 1155
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case moveqz = 1156
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case moveqzS = 1157
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movf = 1158
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movfS = 1159
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movgez = 1160
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movgezS = 1161
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movi = 1162
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case moviN = 1163
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movltz = 1164
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movltzS = 1165
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movnez = 1166
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movnezS = 1167
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movsp = 1168
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movt = 1169
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movtS = 1170
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movN = 1171
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movS = 1172
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case msubS = 1173
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mul16s = 1174
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mul16u = 1175
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAaHh = 1176
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAaHl = 1177
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAaLh = 1178
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAaLl = 1179
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAdHh = 1180
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAdHl = 1181
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAdLh = 1182
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaAdLl = 1183
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHh = 1184
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHhLddec = 1185
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHhLdinc = 1186
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHl = 1187
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHlLddec = 1188
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaHlLdinc = 1189
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLh = 1190
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLhLddec = 1191
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLhLdinc = 1192
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLl = 1193
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLlLddec = 1194
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDaLlLdinc = 1195
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHh = 1196
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHhLddec = 1197
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHhLdinc = 1198
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHl = 1199
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHlLddec = 1200
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdHlLdinc = 1201
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLh = 1202
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLhLddec = 1203
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLhLdinc = 1204
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLl = 1205
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLlLddec = 1206
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulaDdLlLdinc = 1207
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mull = 1208
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsh = 1209
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAaHh = 1210
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAaHl = 1211
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAaLh = 1212
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAaLl = 1213
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAdHh = 1214
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAdHl = 1215
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAdLh = 1216
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsAdLl = 1217
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDaHh = 1218
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDaHl = 1219
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDaLh = 1220
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDaLl = 1221
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDdHh = 1222
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDdHl = 1223
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDdLh = 1224
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulsDdLl = 1225
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case muluh = 1226
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAaHh = 1227
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAaHl = 1228
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAaLh = 1229
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAaLl = 1230
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAdHh = 1231
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAdHl = 1232
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAdLh = 1233
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulAdLl = 1234
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDaHh = 1235
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDaHl = 1236
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDaLh = 1237
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDaLl = 1238
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDdHh = 1239
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDdHl = 1240
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDdLh = 1241
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulDdLl = 1242
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mulS = 1243
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case neg = 1244
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case negS = 1245
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case nexp01S = 1246
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case nop = 1247
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case nsa = 1248
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case nsau = 1249
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case oeqS = 1250
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case oleS = 1251
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case oltS = 1252
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case or = 1253
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case orb = 1254
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case orbc = 1255
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case quos = 1256
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case quou = 1257
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case recip0S = 1258
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rems = 1259
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case remu = 1260
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rer = 1261
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ret = 1262
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case retw = 1263
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case retwN = 1264
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case retN = 1265
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfde = 1266
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfe = 1267
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfi = 1268
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfr = 1269
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfwo = 1270
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rfwu = 1271
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rotw = 1272
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case roundS = 1273
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rsil = 1274
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rsqrt0S = 1275
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rsr = 1276
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rsync = 1277
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rur = 1278
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAccx0 = 1279
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAccx1 = 1280
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeBithead = 1281
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeBitptr = 1282
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeBitsused = 1283
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeCbegin0 = 1284
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeCend0 = 1285
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeCwrap = 1286
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeCwSdNo = 1287
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeFirstTs = 1288
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeNextoffset = 1289
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeOverflow = 1290
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeOvfSar = 1291
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeSar = 1292
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeSearchdone = 1293
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeTablesize = 1294
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurAeTsFtsBuBp = 1295
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurFftBitWidth = 1296
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurGpioOut = 1297
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccH0 = 1298
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccH1 = 1299
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccH2 = 1300
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccH3 = 1301
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccH4 = 1302
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccL0 = 1303
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccL1 = 1304
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccL2 = 1305
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccL3 = 1306
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurQaccL4 = 1307
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurSarByte = 1308
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurUaState0 = 1309
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurUaState1 = 1310
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurUaState2 = 1311
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case rurUaState3 = 1312
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s16i = 1313
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32c1i = 1314
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32e = 1315
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32i = 1316
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32iN = 1317
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s8i = 1318
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case setBitGpioOut = 1319
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case sext = 1320
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case simcall = 1321
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case sll = 1322
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case slli = 1323
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case sqrt0S = 1324
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case sra = 1325
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case srai = 1326
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case src = 1327
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case srl = 1328
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case srli = 1329
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssa8l = 1330
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssai = 1331
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssi = 1332
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssip = 1333
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssl = 1334
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssr = 1335
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssx = 1336
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ssxp = 1337
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case sub = 1338
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case subx2 = 1339
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case subx4 = 1340
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case subx8 = 1341
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case subS = 1342
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case syscall = 1343
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case truncS = 1344
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ueqS = 1345
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ufloatS = 1346
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case uleS = 1347
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case ultS = 1348
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case umulAaHh = 1349
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case umulAaHl = 1350
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case umulAaLh = 1351
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case umulAaLl = 1352
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case unS = 1353
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case utruncS = 1354
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case waiti = 1355
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wdtlb = 1356
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wer = 1357
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wfr = 1358
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case witlb = 1359
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wrMaskGpioOut = 1360
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wsr = 1361
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wur = 1362
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAccx0 = 1363
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAccx1 = 1364
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeBithead = 1365
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeBitptr = 1366
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeBitsused = 1367
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeCbegin0 = 1368
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeCend0 = 1369
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeCwrap = 1370
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeCwSdNo = 1371
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeFirstTs = 1372
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeNextoffset = 1373
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeOverflow = 1374
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeOvfSar = 1375
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeSar = 1376
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeSearchdone = 1377
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeTablesize = 1378
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurAeTsFtsBuBp = 1379
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurFcr = 1380
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurFftBitWidth = 1381
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurFsr = 1382
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurGpioOut = 1383
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccH0 = 1384
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccH1 = 1385
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccH2 = 1386
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccH3 = 1387
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccH4 = 1388
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccL0 = 1389
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccL1 = 1390
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccL2 = 1391
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccL3 = 1392
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurQaccL4 = 1393
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurSarByte = 1394
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurUaState0 = 1395
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurUaState1 = 1396
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurUaState2 = 1397
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case wurUaState3 = 1398
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case xor = 1399
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case xorb = 1400
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case xsr = 1401
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32i = 1402
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case l32iN = 1403
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case movi = 1404
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32i = 1405
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case s32iN = 1406
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case slli = 1407
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case srli = 1408
    /// generated content <XtensaGenCSInsnEnum.inc> begin clang-format off
    case mvQr = 1409
}

/// Xtensa instruction formats. To get details about them please refer to `XtensaInstrFormats.td` in LLVM.
public enum XtensaInsnForm: UInt32 {
    case invalid = 0
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case rrr = 1
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case rri8 = 2
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case rrrn = 3
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case aeinst24 = 4
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case bri12 = 5
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case call = 6
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case callx = 7
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case eeInst24 = 8
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case rri4 = 9
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case ri16 = 10
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case ri7 = 11
    /// generated content <XtensaGenCSInsnFormatsEnum.inc> begin clang-format off
    case rsr = 12
    /// clang-format on generated content <XtensaGenCSInsnFormatsEnum.inc> end
    case max = 13
}

public struct XtensaOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// = (Uninitialized).
    public static let invalid: XtensaOp = []
    /// = (Register operand).
    public static let reg = XtensaOp(rawValue: 1)
    /// = (Immediate operand).
    public static let imm = XtensaOp(rawValue: 2)
    /// = (L32R Target)
    public static let l32r = XtensaOp(rawValue: 16)
    /// = (Memory operand).
    public static let mem = XtensaOp(rawValue: 128)
}

/// Xtensa registers
public enum XtensaReg: UInt16 {
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case acchi = 1
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case acclo = 2
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case accx = 3
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case atomctl = 4
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case breg = 5
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ccount = 6
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case cpenable = 7
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ddr = 8
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case debugcause = 9
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case depc = 10
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case exccause = 11
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excvaddr = 12
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case expstate = 13
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case fcr = 14
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case fftBitWidth = 15
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case fsr = 16
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case gpioOut = 17
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ibreakenable = 18
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case icount = 19
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case icountlevel = 20
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case intclear = 21
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case intenable = 22
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case interrupt = 23
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case lbeg = 24
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case lcount = 25
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case lend = 26
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case litbase = 27
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case memctl = 28
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case prid = 29
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ps = 30
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case qacc = 31
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case sar = 32
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case sarByte = 33
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case sp = 34
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case threadptr = 35
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case uaState = 36
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case vecbase = 37
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case windowbase = 38
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case windowstart = 39
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a0 = 40
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a2 = 41
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a3 = 42
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a4 = 43
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a5 = 44
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a6 = 45
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a7 = 46
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a8 = 47
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a9 = 48
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a10 = 49
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a11 = 50
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a12 = 51
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a13 = 52
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a14 = 53
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case a15 = 54
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed0 = 55
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed1 = 56
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed2 = 57
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed3 = 58
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed4 = 59
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed5 = 60
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed6 = 61
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed7 = 62
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed8 = 63
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed9 = 64
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed10 = 65
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed11 = 66
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed12 = 67
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed13 = 68
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed14 = 69
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case aed15 = 70
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b0 = 71
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b1 = 72
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b2 = 73
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b3 = 74
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b4 = 75
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b5 = 76
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b6 = 77
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b7 = 78
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b8 = 79
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b9 = 80
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b10 = 81
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b11 = 82
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b12 = 83
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b13 = 84
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b14 = 85
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b15 = 86
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ccompare0 = 87
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ccompare1 = 88
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ccompare2 = 89
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case configid0 = 90
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case configid1 = 91
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case dbreaka0 = 92
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case dbreaka1 = 93
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case dbreakc0 = 94
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case dbreakc1 = 95
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc1 = 96
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc2 = 97
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc3 = 98
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc4 = 99
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc5 = 100
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc6 = 101
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case epc7 = 102
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps2 = 103
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps3 = 104
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps4 = 105
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps5 = 106
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps6 = 107
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case eps7 = 108
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave1 = 109
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave2 = 110
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave3 = 111
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave4 = 112
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave5 = 113
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave6 = 114
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case excsave7 = 115
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f0 = 116
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f1 = 117
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f2 = 118
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f3 = 119
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f4 = 120
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f5 = 121
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f6 = 122
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f7 = 123
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f8 = 124
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f9 = 125
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f10 = 126
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f11 = 127
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f12 = 128
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f13 = 129
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f14 = 130
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f15 = 131
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ibreaka0 = 132
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case ibreaka1 = 133
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case m0 = 134
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case m1 = 135
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case m2 = 136
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case m3 = 137
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case misc0 = 138
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case misc1 = 139
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case misc2 = 140
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case misc3 = 141
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q0 = 142
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q1 = 143
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q2 = 144
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q3 = 145
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q4 = 146
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q5 = 147
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q6 = 148
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case q7 = 149
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case scompare1 = 150
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case u0 = 151
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case u1 = 152
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case u2 = 153
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case u3 = 154
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f64rHi = 155
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f64rLo = 156
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case f64s = 157
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b0B1 = 158
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b2B3 = 159
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b4B5 = 160
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b6B7 = 161
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b8B9 = 162
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b10B11 = 163
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b12B13 = 164
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b14B15 = 165
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b0B1B2B3 = 166
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b4B5B6B7 = 167
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b8B9B10B11 = 168
    /// generated content <XtensaGenCSRegEnum.inc> begin clang-format off
    case b12B13B14B15 = 169
    /// 170
    case ending = 170
}

#endif
