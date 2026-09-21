#if CAPSTONE_HAS_LOONGARCH
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (LoongArch)

/// > Group of LOONGARCH instructions
public enum LoongArchFeature: UInt32 {
    /// Architecture-specific groups generated content <LoongArchGenCSFeatureEnum.inc> begin clang-format off
    case isla64 = 128
    /// Architecture-specific groups generated content <LoongArchGenCSFeatureEnum.inc> begin clang-format off
    case isla32 = 129
    /// Architecture-specific groups generated content <LoongArchGenCSFeatureEnum.inc> begin clang-format off
    case haslaglobalwithpcrel = 130
    /// Architecture-specific groups generated content <LoongArchGenCSFeatureEnum.inc> begin clang-format off
    case haslaglobalwithabs = 131
    /// Architecture-specific groups generated content <LoongArchGenCSFeatureEnum.inc> begin clang-format off
    case haslalocalwithabs = 132
}

/// > Group of LOONGARCH instructions
public enum LoongArchGrp: UInt8 {
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
    /// clang-format on generated content <LoongArchGenCSFeatureEnum.inc> end
    case ending = 133
}

/// LoongArch instruction
public enum LoongArchIns: UInt32 {
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case call36 = 1
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laAbs = 2
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laGot = 3
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laPcrel = 4
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laTlsGd = 5
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laTlsIe = 6
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laTlsLd = 7
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case laTlsLe = 8
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case liD = 9
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case liW = 10
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tail36 = 11
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrepliB = 12
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrepliD = 13
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrepliH = 14
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrepliW = 15
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepliB = 16
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepliD = 17
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepliH = 18
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepliW = 19
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case adcB = 20
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case adcD = 21
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case adcH = 22
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case adcW = 23
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addiD = 24
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addiW = 25
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addu12iD = 26
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addu12iW = 27
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addu16iD = 28
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addD = 29
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case addW = 30
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case alslD = 31
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case alslW = 32
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case alslWu = 33
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddB = 34
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddD = 35
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddH = 36
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddW = 37
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddDbB = 38
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddDbD = 39
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddDbH = 40
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amaddDbW = 41
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amandD = 42
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amandW = 43
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amandDbD = 44
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amandDbW = 45
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasB = 46
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasD = 47
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasH = 48
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasW = 49
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasDbB = 50
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasDbD = 51
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasDbH = 52
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amcasDbW = 53
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxD = 54
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxDu = 55
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxW = 56
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxWu = 57
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxDbD = 58
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxDbDu = 59
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxDbW = 60
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ammaxDbWu = 61
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminD = 62
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminDu = 63
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminW = 64
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminWu = 65
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminDbD = 66
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminDbDu = 67
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminDbW = 68
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amminDbWu = 69
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amorD = 70
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amorW = 71
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amorDbD = 72
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amorDbW = 73
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapB = 74
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapD = 75
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapH = 76
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapW = 77
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapDbB = 78
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapDbD = 79
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapDbH = 80
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amswapDbW = 81
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amxorD = 82
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amxorW = 83
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amxorDbD = 84
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case amxorDbW = 85
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case and = 86
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case andi = 87
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case andn = 88
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armadcW = 89
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armaddW = 90
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armandW = 91
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armmfflag = 92
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armmove = 93
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armmovD = 94
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armmovW = 95
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armmtflag = 96
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armnotW = 97
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armorW = 98
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armrotriW = 99
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armrotrW = 100
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armrrxW = 101
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsbcW = 102
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armslliW = 103
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsllW = 104
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsraiW = 105
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsraW = 106
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsrliW = 107
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsrlW = 108
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armsubW = 109
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case armxorW = 110
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case asrtgtD = 111
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case asrtleD = 112
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case b = 113
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bceqz = 114
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bcnez = 115
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case beq = 116
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case beqz = 117
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bge = 118
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bgeu = 119
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bitrev4B = 120
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bitrev8B = 121
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bitrevD = 122
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bitrevW = 123
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bl = 124
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case blt = 125
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bltu = 126
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bne = 127
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bnez = 128
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case `break` = 129
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bstrinsD = 130
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bstrinsW = 131
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bstrpickD = 132
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bstrpickW = 133
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bytepickD = 134
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case bytepickW = 135
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case cacop = 136
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case cloD = 137
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case cloW = 138
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case clzD = 139
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case clzW = 140
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case cpucfg = 141
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crccWBW = 142
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crccWDW = 143
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crccWHW = 144
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crccWWW = 145
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crcWBW = 146
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crcWDW = 147
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crcWHW = 148
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case crcWWW = 149
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case csrrd = 150
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case csrwr = 151
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case csrxchg = 152
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ctoD = 153
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ctoW = 154
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ctzD = 155
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ctzW = 156
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case dbar = 157
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case dbcl = 158
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case divD = 159
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case divDu = 160
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case divW = 161
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case divWu = 162
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ertn = 163
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case extWB = 164
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case extWH = 165
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fabsD = 166
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fabsS = 167
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case faddD = 168
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case faddS = 169
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fclassD = 170
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fclassS = 171
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCafD = 172
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCafS = 173
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCeqD = 174
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCeqS = 175
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCleD = 176
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCleS = 177
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCltD = 178
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCltS = 179
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCneD = 180
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCneS = 181
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCorD = 182
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCorS = 183
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCueqD = 184
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCueqS = 185
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCuleD = 186
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCuleS = 187
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCultD = 188
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCultS = 189
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCuneD = 190
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCuneS = 191
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCunD = 192
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpCunS = 193
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSafD = 194
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSafS = 195
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSeqD = 196
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSeqS = 197
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSleD = 198
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSleS = 199
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSltD = 200
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSltS = 201
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSneD = 202
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSneS = 203
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSorD = 204
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSorS = 205
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSueqD = 206
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSueqS = 207
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSuleD = 208
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSuleS = 209
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSultD = 210
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSultS = 211
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSuneD = 212
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSuneS = 213
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSunD = 214
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcmpSunS = 215
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcopysignD = 216
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcopysignS = 217
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcvtDLd = 218
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcvtDS = 219
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcvtLdD = 220
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcvtSD = 221
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fcvtUdD = 222
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fdivD = 223
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fdivS = 224
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ffintDL = 225
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ffintDW = 226
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ffintSL = 227
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ffintSW = 228
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldgtD = 229
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldgtS = 230
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldleD = 231
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldleS = 232
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldxD = 233
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldxS = 234
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldD = 235
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fldS = 236
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case flogbD = 237
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case flogbS = 238
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaddD = 239
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaddS = 240
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaxaD = 241
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaxaS = 242
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaxD = 243
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmaxS = 244
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fminaD = 245
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fminaS = 246
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fminD = 247
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fminS = 248
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmovD = 249
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmovS = 250
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmsubD = 251
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmsubS = 252
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmulD = 253
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fmulS = 254
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnegD = 255
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnegS = 256
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnmaddD = 257
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnmaddS = 258
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnmsubD = 259
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fnmsubS = 260
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frecipeD = 261
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frecipeS = 262
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frecipD = 263
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frecipS = 264
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frintD = 265
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frintS = 266
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frsqrteD = 267
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frsqrteS = 268
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frsqrtD = 269
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case frsqrtS = 270
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fscalebD = 271
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fscalebS = 272
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fsel = 273
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fsqrtD = 274
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fsqrtS = 275
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstgtD = 276
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstgtS = 277
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstleD = 278
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstleS = 279
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstxD = 280
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstxS = 281
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstD = 282
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fstS = 283
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fsubD = 284
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case fsubS = 285
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrmLD = 286
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrmLS = 287
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrmWD = 288
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrmWS = 289
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrneLD = 290
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrneLS = 291
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrneWD = 292
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrneWS = 293
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrpLD = 294
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrpLS = 295
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrpWD = 296
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrpWS = 297
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrzLD = 298
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrzLS = 299
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrzWD = 300
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintrzWS = 301
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintLD = 302
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintLS = 303
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintWD = 304
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ftintWS = 305
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case gcsrrd = 306
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case gcsrwr = 307
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case gcsrxchg = 308
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case gtlbflush = 309
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case hvcl = 310
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ibar = 311
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case idle = 312
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case invtlb = 313
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrrdB = 314
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrrdD = 315
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrrdH = 316
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrrdW = 317
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrwrB = 318
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrwrD = 319
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrwrH = 320
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case iocsrwrW = 321
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case jirl = 322
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case jiscr0 = 323
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case jiscr1 = 324
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case lddir = 325
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldgtB = 326
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldgtD = 327
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldgtH = 328
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldgtW = 329
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldleB = 330
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldleD = 331
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldleH = 332
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldleW = 333
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldlD = 334
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldlW = 335
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldpte = 336
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldptrD = 337
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldptrW = 338
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldrD = 339
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldrW = 340
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxB = 341
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxBu = 342
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxD = 343
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxH = 344
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxHu = 345
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxW = 346
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldxWu = 347
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldB = 348
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldBu = 349
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldD = 350
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldH = 351
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldHu = 352
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldW = 353
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ldWu = 354
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case llacqD = 355
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case llacqW = 356
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case llD = 357
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case llW = 358
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case lu12iW = 359
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case lu32iD = 360
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case lu52iD = 361
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case maskeqz = 362
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case masknez = 363
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case modD = 364
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case modDu = 365
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case modW = 366
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case modWu = 367
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movcf2fr = 368
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movcf2gr = 369
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movfcsr2gr = 370
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movfr2cf = 371
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movfr2grD = 372
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movfr2grS = 373
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movfrh2grS = 374
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2cf = 375
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2fcsr = 376
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2frhW = 377
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2frD = 378
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2frW = 379
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movgr2scr = 380
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case movscr2gr = 381
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulhD = 382
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulhDu = 383
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulhW = 384
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulhWu = 385
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulwDW = 386
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulwDWu = 387
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulD = 388
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case mulW = 389
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case nor = 390
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case or = 391
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case ori = 392
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case orn = 393
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case pcaddi = 394
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case pcaddu12i = 395
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case pcaddu18i = 396
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case pcalau12i = 397
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case preld = 398
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case preldx = 399
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcriB = 400
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcriD = 401
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcriH = 402
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcriW = 403
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcrB = 404
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcrD = 405
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcrH = 406
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rcrW = 407
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rdtimehW = 408
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rdtimelW = 409
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rdtimeD = 410
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revb2H = 411
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revb2W = 412
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revb4H = 413
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revbD = 414
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revh2W = 415
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case revhD = 416
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotriB = 417
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotriD = 418
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotriH = 419
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotriW = 420
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotrB = 421
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotrD = 422
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotrH = 423
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case rotrW = 424
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sbcB = 425
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sbcD = 426
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sbcH = 427
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sbcW = 428
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case screlD = 429
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case screlW = 430
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case scD = 431
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case scQ = 432
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case scW = 433
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case setarmj = 434
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case setx86j = 435
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case setx86loope = 436
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case setx86loopne = 437
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case slliD = 438
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case slliW = 439
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sllD = 440
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sllW = 441
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case slt = 442
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case slti = 443
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sltu = 444
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sltui = 445
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sraiD = 446
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sraiW = 447
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sraD = 448
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case sraW = 449
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case srliD = 450
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case srliW = 451
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case srlD = 452
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case srlW = 453
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stgtB = 454
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stgtD = 455
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stgtH = 456
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stgtW = 457
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stleB = 458
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stleD = 459
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stleH = 460
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stleW = 461
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stlD = 462
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stlW = 463
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stptrD = 464
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stptrW = 465
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case strD = 466
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case strW = 467
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stxB = 468
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stxD = 469
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stxH = 470
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stxW = 471
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stB = 472
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stD = 473
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stH = 474
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case stW = 475
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case subD = 476
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case subW = 477
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case syscall = 478
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbclr = 479
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbfill = 480
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbflush = 481
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbrd = 482
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbsrch = 483
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case tlbwr = 484
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdB = 485
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdBu = 486
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdD = 487
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdDu = 488
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdH = 489
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdHu = 490
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdW = 491
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vabsdWu = 492
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddaB = 493
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddaD = 494
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddaH = 495
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddaW = 496
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddiBu = 497
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddiDu = 498
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddiHu = 499
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddiWu = 500
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevDW = 501
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevDWu = 502
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevDWuW = 503
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevHB = 504
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevHBu = 505
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevHBuB = 506
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevQD = 507
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevQDu = 508
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevQDuD = 509
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevWH = 510
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevWHu = 511
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwevWHuH = 512
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodDW = 513
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodDWu = 514
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodDWuW = 515
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodHB = 516
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodHBu = 517
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodHBuB = 518
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodQD = 519
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodQDu = 520
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodQDuD = 521
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodWH = 522
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodWHu = 523
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddwodWHuH = 524
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddB = 525
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddD = 526
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddH = 527
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddQ = 528
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vaddW = 529
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vandiB = 530
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vandnV = 531
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vandV = 532
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrB = 533
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrBu = 534
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrD = 535
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrDu = 536
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrH = 537
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrHu = 538
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrW = 539
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgrWu = 540
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgB = 541
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgBu = 542
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgD = 543
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgDu = 544
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgH = 545
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgHu = 546
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgW = 547
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vavgWu = 548
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclriB = 549
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclriD = 550
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclriH = 551
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclriW = 552
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclrB = 553
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclrD = 554
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclrH = 555
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitclrW = 556
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitreviB = 557
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitreviD = 558
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitreviH = 559
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitreviW = 560
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitrevB = 561
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitrevD = 562
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitrevH = 563
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitrevW = 564
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitseliB = 565
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitselV = 566
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetiB = 567
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetiD = 568
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetiH = 569
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetiW = 570
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetB = 571
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetD = 572
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetH = 573
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbitsetW = 574
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbsllV = 575
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vbsrlV = 576
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vcloB = 577
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vcloD = 578
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vcloH = 579
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vcloW = 580
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vclzB = 581
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vclzD = 582
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vclzH = 583
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vclzW = 584
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivB = 585
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivBu = 586
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivD = 587
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivDu = 588
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivH = 589
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivHu = 590
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivW = 591
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vdivWu = 592
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDuBu = 593
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDuHu = 594
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDuWu = 595
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDB = 596
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDH = 597
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvDW = 598
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvHuBu = 599
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvHB = 600
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvWuBu = 601
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvWuHu = 602
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvWB = 603
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vext2xvWH = 604
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthDuWu = 605
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthDW = 606
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthHuBu = 607
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthHB = 608
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthQuDu = 609
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthQD = 610
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthWuHu = 611
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vexthWH = 612
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextlQuDu = 613
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextlQD = 614
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextrinsB = 615
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextrinsD = 616
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextrinsH = 617
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vextrinsW = 618
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfaddD = 619
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfaddS = 620
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfclassD = 621
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfclassS = 622
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCafD = 623
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCafS = 624
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCeqD = 625
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCeqS = 626
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCleD = 627
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCleS = 628
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCltD = 629
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCltS = 630
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCneD = 631
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCneS = 632
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCorD = 633
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCorS = 634
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCueqD = 635
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCueqS = 636
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCuleD = 637
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCuleS = 638
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCultD = 639
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCultS = 640
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCuneD = 641
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCuneS = 642
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCunD = 643
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpCunS = 644
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSafD = 645
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSafS = 646
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSeqD = 647
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSeqS = 648
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSleD = 649
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSleS = 650
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSltD = 651
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSltS = 652
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSneD = 653
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSneS = 654
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSorD = 655
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSorS = 656
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSueqD = 657
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSueqS = 658
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSuleD = 659
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSuleS = 660
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSultD = 661
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSultS = 662
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSuneD = 663
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSuneS = 664
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSunD = 665
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcmpSunS = 666
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvthDS = 667
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvthSH = 668
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvtlDS = 669
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvtlSH = 670
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvtHS = 671
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfcvtSD = 672
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfdivD = 673
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfdivS = 674
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffinthDW = 675
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintlDW = 676
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintDL = 677
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintDLu = 678
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintSL = 679
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintSW = 680
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vffintSWu = 681
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vflogbD = 682
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vflogbS = 683
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaddD = 684
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaddS = 685
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaxaD = 686
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaxaS = 687
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaxD = 688
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmaxS = 689
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfminaD = 690
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfminaS = 691
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfminD = 692
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfminS = 693
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmsubD = 694
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmsubS = 695
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmulD = 696
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfmulS = 697
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfnmaddD = 698
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfnmaddS = 699
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfnmsubD = 700
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfnmsubS = 701
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrecipeD = 702
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrecipeS = 703
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrecipD = 704
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrecipS = 705
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrmD = 706
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrmS = 707
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrneD = 708
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrneS = 709
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrpD = 710
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrpS = 711
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrzD = 712
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintrzS = 713
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintD = 714
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrintS = 715
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrsqrteD = 716
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrsqrteS = 717
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrsqrtD = 718
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrsqrtS = 719
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrstpiB = 720
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrstpiH = 721
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrstpB = 722
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfrstpH = 723
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfsqrtD = 724
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfsqrtS = 725
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfsubD = 726
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vfsubS = 727
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftinthLS = 728
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintlLS = 729
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrmhLS = 730
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrmlLS = 731
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrmLD = 732
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrmWD = 733
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrmWS = 734
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrnehLS = 735
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrnelLS = 736
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrneLD = 737
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrneWD = 738
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrneWS = 739
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrphLS = 740
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrplLS = 741
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrpLD = 742
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrpWD = 743
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrpWS = 744
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzhLS = 745
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzlLS = 746
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzLuD = 747
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzLD = 748
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzWuS = 749
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzWD = 750
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintrzWS = 751
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintLuD = 752
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintLD = 753
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintWuS = 754
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintWD = 755
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vftintWS = 756
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwDuWu = 757
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwDW = 758
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwHuBu = 759
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwHB = 760
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwQuDu = 761
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwQD = 762
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwWuHu = 763
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhaddwWH = 764
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwDuWu = 765
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwDW = 766
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwHuBu = 767
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwHB = 768
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwQuDu = 769
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwQD = 770
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwWuHu = 771
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vhsubwWH = 772
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvhB = 773
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvhD = 774
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvhH = 775
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvhW = 776
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvlB = 777
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvlD = 778
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvlH = 779
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vilvlW = 780
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vinsgr2vrB = 781
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vinsgr2vrD = 782
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vinsgr2vrH = 783
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vinsgr2vrW = 784
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vld = 785
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldi = 786
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldreplB = 787
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldreplD = 788
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldreplH = 789
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldreplW = 790
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vldx = 791
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevDW = 792
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevDWu = 793
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevDWuW = 794
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevHB = 795
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevHBu = 796
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevHBuB = 797
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevQD = 798
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevQDu = 799
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevQDuD = 800
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevWH = 801
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevWHu = 802
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwevWHuH = 803
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodDW = 804
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodDWu = 805
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodDWuW = 806
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodHB = 807
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodHBu = 808
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodHBuB = 809
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodQD = 810
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodQDu = 811
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodQDuD = 812
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodWH = 813
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodWHu = 814
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddwodWHuH = 815
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddB = 816
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddD = 817
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddH = 818
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaddW = 819
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiB = 820
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiBu = 821
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiD = 822
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiDu = 823
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiH = 824
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiHu = 825
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiW = 826
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxiWu = 827
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxB = 828
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxBu = 829
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxD = 830
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxDu = 831
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxH = 832
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxHu = 833
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxW = 834
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmaxWu = 835
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiB = 836
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiBu = 837
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiD = 838
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiDu = 839
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiH = 840
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiHu = 841
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiW = 842
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminiWu = 843
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminB = 844
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminBu = 845
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminD = 846
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminDu = 847
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminH = 848
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminHu = 849
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminW = 850
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vminWu = 851
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodB = 852
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodBu = 853
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodD = 854
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodDu = 855
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodH = 856
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodHu = 857
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodW = 858
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmodWu = 859
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmskgezB = 860
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmskltzB = 861
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmskltzD = 862
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmskltzH = 863
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmskltzW = 864
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmsknzB = 865
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmsubB = 866
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmsubD = 867
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmsubH = 868
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmsubW = 869
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhB = 870
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhBu = 871
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhD = 872
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhDu = 873
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhH = 874
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhHu = 875
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhW = 876
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmuhWu = 877
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevDW = 878
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevDWu = 879
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevDWuW = 880
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevHB = 881
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevHBu = 882
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevHBuB = 883
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevQD = 884
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevQDu = 885
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevQDuD = 886
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevWH = 887
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevWHu = 888
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwevWHuH = 889
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodDW = 890
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodDWu = 891
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodDWuW = 892
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodHB = 893
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodHBu = 894
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodHBuB = 895
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodQD = 896
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodQDu = 897
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodQDuD = 898
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodWH = 899
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodWHu = 900
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulwodWHuH = 901
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulB = 902
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulD = 903
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulH = 904
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vmulW = 905
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnegB = 906
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnegD = 907
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnegH = 908
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnegW = 909
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnoriB = 910
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vnorV = 911
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case voriB = 912
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vornV = 913
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vorV = 914
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackevB = 915
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackevD = 916
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackevH = 917
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackevW = 918
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackodB = 919
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackodD = 920
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackodH = 921
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpackodW = 922
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpcntB = 923
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpcntD = 924
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpcntH = 925
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpcntW = 926
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpermiW = 927
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickevB = 928
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickevD = 929
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickevH = 930
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickevW = 931
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickodB = 932
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickodD = 933
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickodH = 934
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickodW = 935
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grB = 936
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grBu = 937
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grD = 938
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grDu = 939
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grH = 940
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grHu = 941
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grW = 942
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vpickve2grWu = 943
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplgr2vrB = 944
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplgr2vrD = 945
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplgr2vrH = 946
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplgr2vrW = 947
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveiB = 948
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveiD = 949
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveiH = 950
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveiW = 951
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveB = 952
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveD = 953
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveH = 954
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vreplveW = 955
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotriB = 956
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotriD = 957
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotriH = 958
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotriW = 959
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotrB = 960
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotrD = 961
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotrH = 962
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vrotrW = 963
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddB = 964
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddBu = 965
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddD = 966
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddDu = 967
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddH = 968
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddHu = 969
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddW = 970
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsaddWu = 971
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatB = 972
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatBu = 973
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatD = 974
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatDu = 975
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatH = 976
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatHu = 977
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatW = 978
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsatWu = 979
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqiB = 980
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqiD = 981
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqiH = 982
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqiW = 983
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqB = 984
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqD = 985
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqH = 986
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseqW = 987
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetallnezB = 988
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetallnezD = 989
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetallnezH = 990
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetallnezW = 991
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetanyeqzB = 992
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetanyeqzD = 993
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetanyeqzH = 994
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetanyeqzW = 995
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vseteqzV = 996
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsetnezV = 997
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshuf4iB = 998
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshuf4iD = 999
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshuf4iH = 1000
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshuf4iW = 1001
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshufB = 1002
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshufD = 1003
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshufH = 1004
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vshufW = 1005
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsigncovB = 1006
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsigncovD = 1007
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsigncovH = 1008
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsigncovW = 1009
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiB = 1010
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiBu = 1011
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiD = 1012
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiDu = 1013
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiH = 1014
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiHu = 1015
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiW = 1016
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleiWu = 1017
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleB = 1018
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleBu = 1019
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleD = 1020
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleDu = 1021
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleH = 1022
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleHu = 1023
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleW = 1024
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsleWu = 1025
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vslliB = 1026
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vslliD = 1027
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vslliH = 1028
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vslliW = 1029
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilDuWu = 1030
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilDW = 1031
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilHuBu = 1032
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilHB = 1033
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilWuHu = 1034
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllwilWH = 1035
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllB = 1036
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllD = 1037
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllH = 1038
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsllW = 1039
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiB = 1040
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiBu = 1041
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiD = 1042
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiDu = 1043
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiH = 1044
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiHu = 1045
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiW = 1046
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltiWu = 1047
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltB = 1048
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltBu = 1049
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltD = 1050
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltDu = 1051
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltH = 1052
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltHu = 1053
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltW = 1054
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsltWu = 1055
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraiB = 1056
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraiD = 1057
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraiH = 1058
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraiW = 1059
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraniBH = 1060
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraniDQ = 1061
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraniHW = 1062
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraniWD = 1063
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsranBH = 1064
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsranHW = 1065
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsranWD = 1066
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrariB = 1067
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrariD = 1068
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrariH = 1069
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrariW = 1070
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarniBH = 1071
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarniDQ = 1072
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarniHW = 1073
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarniWD = 1074
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarnBH = 1075
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarnHW = 1076
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarnWD = 1077
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarB = 1078
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarD = 1079
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarH = 1080
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrarW = 1081
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraB = 1082
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraD = 1083
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraH = 1084
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsraW = 1085
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrliB = 1086
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrliD = 1087
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrliH = 1088
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrliW = 1089
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlniBH = 1090
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlniDQ = 1091
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlniHW = 1092
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlniWD = 1093
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlnBH = 1094
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlnHW = 1095
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlnWD = 1096
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlriB = 1097
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlriD = 1098
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlriH = 1099
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlriW = 1100
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrniBH = 1101
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrniDQ = 1102
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrniHW = 1103
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrniWD = 1104
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrnBH = 1105
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrnHW = 1106
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrnWD = 1107
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrB = 1108
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrD = 1109
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrH = 1110
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlrW = 1111
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlB = 1112
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlD = 1113
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlH = 1114
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsrlW = 1115
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniBuH = 1116
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniBH = 1117
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniDuQ = 1118
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniDQ = 1119
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniHuW = 1120
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniHW = 1121
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniWuD = 1122
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssraniWD = 1123
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranBuH = 1124
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranBH = 1125
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranHuW = 1126
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranHW = 1127
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranWuD = 1128
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssranWD = 1129
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniBuH = 1130
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniBH = 1131
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniDuQ = 1132
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniDQ = 1133
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniHuW = 1134
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniHW = 1135
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniWuD = 1136
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarniWD = 1137
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnBuH = 1138
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnBH = 1139
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnHuW = 1140
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnHW = 1141
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnWuD = 1142
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrarnWD = 1143
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniBuH = 1144
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniBH = 1145
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniDuQ = 1146
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniDQ = 1147
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniHuW = 1148
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniHW = 1149
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniWuD = 1150
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlniWD = 1151
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnBuH = 1152
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnBH = 1153
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnHuW = 1154
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnHW = 1155
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnWuD = 1156
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlnWD = 1157
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniBuH = 1158
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniBH = 1159
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniDuQ = 1160
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniDQ = 1161
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniHuW = 1162
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniHW = 1163
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniWuD = 1164
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrniWD = 1165
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnBuH = 1166
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnBH = 1167
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnHuW = 1168
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnHW = 1169
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnWuD = 1170
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssrlrnWD = 1171
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubB = 1172
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubBu = 1173
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubD = 1174
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubDu = 1175
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubH = 1176
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubHu = 1177
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubW = 1178
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vssubWu = 1179
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vst = 1180
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vstelmB = 1181
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vstelmD = 1182
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vstelmH = 1183
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vstelmW = 1184
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vstx = 1185
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubiBu = 1186
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubiDu = 1187
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubiHu = 1188
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubiWu = 1189
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevDW = 1190
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevDWu = 1191
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevHB = 1192
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevHBu = 1193
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevQD = 1194
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevQDu = 1195
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevWH = 1196
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwevWHu = 1197
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodDW = 1198
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodDWu = 1199
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodHB = 1200
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodHBu = 1201
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodQD = 1202
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodQDu = 1203
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodWH = 1204
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubwodWHu = 1205
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubB = 1206
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubD = 1207
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubH = 1208
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubQ = 1209
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vsubW = 1210
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vxoriB = 1211
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case vxorV = 1212
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86adcB = 1213
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86adcD = 1214
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86adcH = 1215
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86adcW = 1216
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addB = 1217
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addD = 1218
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addDu = 1219
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addH = 1220
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addW = 1221
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86addWu = 1222
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86andB = 1223
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86andD = 1224
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86andH = 1225
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86andW = 1226
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86clrtm = 1227
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86dectop = 1228
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86decB = 1229
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86decD = 1230
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86decH = 1231
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86decW = 1232
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86inctop = 1233
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86incB = 1234
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86incD = 1235
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86incH = 1236
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86incW = 1237
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mfflag = 1238
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mftop = 1239
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mtflag = 1240
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mttop = 1241
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulB = 1242
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulBu = 1243
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulD = 1244
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulDu = 1245
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulH = 1246
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulHu = 1247
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulW = 1248
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86mulWu = 1249
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86orB = 1250
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86orD = 1251
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86orH = 1252
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86orW = 1253
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcliB = 1254
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcliD = 1255
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcliH = 1256
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcliW = 1257
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rclB = 1258
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rclD = 1259
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rclH = 1260
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rclW = 1261
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcriB = 1262
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcriD = 1263
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcriH = 1264
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcriW = 1265
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcrB = 1266
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcrD = 1267
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcrH = 1268
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rcrW = 1269
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotliB = 1270
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotliD = 1271
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotliH = 1272
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotliW = 1273
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotlB = 1274
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotlD = 1275
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotlH = 1276
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotlW = 1277
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotriB = 1278
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotriD = 1279
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotriH = 1280
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotriW = 1281
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotrB = 1282
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotrD = 1283
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotrH = 1284
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86rotrW = 1285
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sbcB = 1286
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sbcD = 1287
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sbcH = 1288
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sbcW = 1289
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86settag = 1290
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86settm = 1291
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86slliB = 1292
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86slliD = 1293
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86slliH = 1294
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86slliW = 1295
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sllB = 1296
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sllD = 1297
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sllH = 1298
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sllW = 1299
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraiB = 1300
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraiD = 1301
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraiH = 1302
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraiW = 1303
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraB = 1304
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraD = 1305
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraH = 1306
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86sraW = 1307
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srliB = 1308
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srliD = 1309
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srliH = 1310
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srliW = 1311
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srlB = 1312
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srlD = 1313
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srlH = 1314
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86srlW = 1315
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subB = 1316
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subD = 1317
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subDu = 1318
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subH = 1319
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subW = 1320
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86subWu = 1321
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86xorB = 1322
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86xorD = 1323
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86xorH = 1324
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case x86xorW = 1325
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xor = 1326
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xori = 1327
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdB = 1328
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdBu = 1329
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdD = 1330
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdDu = 1331
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdH = 1332
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdHu = 1333
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdW = 1334
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvabsdWu = 1335
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddaB = 1336
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddaD = 1337
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddaH = 1338
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddaW = 1339
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddiBu = 1340
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddiDu = 1341
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddiHu = 1342
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddiWu = 1343
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevDW = 1344
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevDWu = 1345
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevDWuW = 1346
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevHB = 1347
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevHBu = 1348
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevHBuB = 1349
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevQD = 1350
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevQDu = 1351
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevQDuD = 1352
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevWH = 1353
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevWHu = 1354
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwevWHuH = 1355
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodDW = 1356
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodDWu = 1357
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodDWuW = 1358
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodHB = 1359
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodHBu = 1360
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodHBuB = 1361
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodQD = 1362
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodQDu = 1363
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodQDuD = 1364
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodWH = 1365
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodWHu = 1366
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddwodWHuH = 1367
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddB = 1368
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddD = 1369
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddH = 1370
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddQ = 1371
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvaddW = 1372
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvandiB = 1373
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvandnV = 1374
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvandV = 1375
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrB = 1376
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrBu = 1377
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrD = 1378
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrDu = 1379
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrH = 1380
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrHu = 1381
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrW = 1382
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgrWu = 1383
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgB = 1384
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgBu = 1385
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgD = 1386
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgDu = 1387
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgH = 1388
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgHu = 1389
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgW = 1390
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvavgWu = 1391
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclriB = 1392
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclriD = 1393
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclriH = 1394
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclriW = 1395
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclrB = 1396
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclrD = 1397
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclrH = 1398
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitclrW = 1399
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitreviB = 1400
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitreviD = 1401
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitreviH = 1402
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitreviW = 1403
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitrevB = 1404
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitrevD = 1405
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitrevH = 1406
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitrevW = 1407
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitseliB = 1408
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitselV = 1409
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetiB = 1410
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetiD = 1411
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetiH = 1412
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetiW = 1413
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetB = 1414
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetD = 1415
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetH = 1416
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbitsetW = 1417
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbsllV = 1418
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvbsrlV = 1419
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvcloB = 1420
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvcloD = 1421
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvcloH = 1422
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvcloW = 1423
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvclzB = 1424
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvclzD = 1425
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvclzH = 1426
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvclzW = 1427
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivB = 1428
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivBu = 1429
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivD = 1430
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivDu = 1431
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivH = 1432
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivHu = 1433
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivW = 1434
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvdivWu = 1435
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthDuWu = 1436
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthDW = 1437
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthHuBu = 1438
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthHB = 1439
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthQuDu = 1440
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthQD = 1441
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthWuHu = 1442
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvexthWH = 1443
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextlQuDu = 1444
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextlQD = 1445
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextrinsB = 1446
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextrinsD = 1447
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextrinsH = 1448
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvextrinsW = 1449
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfaddD = 1450
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfaddS = 1451
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfclassD = 1452
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfclassS = 1453
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCafD = 1454
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCafS = 1455
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCeqD = 1456
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCeqS = 1457
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCleD = 1458
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCleS = 1459
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCltD = 1460
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCltS = 1461
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCneD = 1462
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCneS = 1463
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCorD = 1464
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCorS = 1465
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCueqD = 1466
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCueqS = 1467
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCuleD = 1468
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCuleS = 1469
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCultD = 1470
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCultS = 1471
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCuneD = 1472
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCuneS = 1473
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCunD = 1474
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpCunS = 1475
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSafD = 1476
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSafS = 1477
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSeqD = 1478
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSeqS = 1479
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSleD = 1480
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSleS = 1481
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSltD = 1482
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSltS = 1483
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSneD = 1484
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSneS = 1485
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSorD = 1486
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSorS = 1487
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSueqD = 1488
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSueqS = 1489
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSuleD = 1490
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSuleS = 1491
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSultD = 1492
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSultS = 1493
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSuneD = 1494
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSuneS = 1495
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSunD = 1496
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcmpSunS = 1497
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvthDS = 1498
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvthSH = 1499
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvtlDS = 1500
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvtlSH = 1501
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvtHS = 1502
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfcvtSD = 1503
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfdivD = 1504
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfdivS = 1505
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffinthDW = 1506
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintlDW = 1507
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintDL = 1508
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintDLu = 1509
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintSL = 1510
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintSW = 1511
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvffintSWu = 1512
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvflogbD = 1513
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvflogbS = 1514
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaddD = 1515
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaddS = 1516
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaxaD = 1517
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaxaS = 1518
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaxD = 1519
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmaxS = 1520
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfminaD = 1521
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfminaS = 1522
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfminD = 1523
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfminS = 1524
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmsubD = 1525
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmsubS = 1526
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmulD = 1527
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfmulS = 1528
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfnmaddD = 1529
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfnmaddS = 1530
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfnmsubD = 1531
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfnmsubS = 1532
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrecipeD = 1533
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrecipeS = 1534
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrecipD = 1535
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrecipS = 1536
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrmD = 1537
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrmS = 1538
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrneD = 1539
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrneS = 1540
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrpD = 1541
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrpS = 1542
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrzD = 1543
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintrzS = 1544
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintD = 1545
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrintS = 1546
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrsqrteD = 1547
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrsqrteS = 1548
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrsqrtD = 1549
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrsqrtS = 1550
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrstpiB = 1551
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrstpiH = 1552
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrstpB = 1553
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfrstpH = 1554
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfsqrtD = 1555
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfsqrtS = 1556
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfsubD = 1557
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvfsubS = 1558
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftinthLS = 1559
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintlLS = 1560
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrmhLS = 1561
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrmlLS = 1562
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrmLD = 1563
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrmWD = 1564
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrmWS = 1565
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrnehLS = 1566
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrnelLS = 1567
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrneLD = 1568
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrneWD = 1569
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrneWS = 1570
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrphLS = 1571
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrplLS = 1572
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrpLD = 1573
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrpWD = 1574
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrpWS = 1575
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzhLS = 1576
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzlLS = 1577
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzLuD = 1578
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzLD = 1579
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzWuS = 1580
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzWD = 1581
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintrzWS = 1582
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintLuD = 1583
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintLD = 1584
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintWuS = 1585
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintWD = 1586
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvftintWS = 1587
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwDuWu = 1588
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwDW = 1589
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwHuBu = 1590
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwHB = 1591
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwQuDu = 1592
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwQD = 1593
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwWuHu = 1594
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhaddwWH = 1595
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhseliD = 1596
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwDuWu = 1597
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwDW = 1598
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwHuBu = 1599
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwHB = 1600
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwQuDu = 1601
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwQD = 1602
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwWuHu = 1603
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvhsubwWH = 1604
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvhB = 1605
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvhD = 1606
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvhH = 1607
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvhW = 1608
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvlB = 1609
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvlD = 1610
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvlH = 1611
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvilvlW = 1612
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvinsgr2vrD = 1613
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvinsgr2vrW = 1614
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvinsve0D = 1615
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvinsve0W = 1616
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvld = 1617
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldi = 1618
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldreplB = 1619
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldreplD = 1620
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldreplH = 1621
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldreplW = 1622
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvldx = 1623
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevDW = 1624
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevDWu = 1625
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevDWuW = 1626
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevHB = 1627
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevHBu = 1628
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevHBuB = 1629
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevQD = 1630
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevQDu = 1631
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevQDuD = 1632
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevWH = 1633
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevWHu = 1634
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwevWHuH = 1635
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodDW = 1636
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodDWu = 1637
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodDWuW = 1638
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodHB = 1639
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodHBu = 1640
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodHBuB = 1641
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodQD = 1642
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodQDu = 1643
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodQDuD = 1644
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodWH = 1645
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodWHu = 1646
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddwodWHuH = 1647
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddB = 1648
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddD = 1649
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddH = 1650
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaddW = 1651
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiB = 1652
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiBu = 1653
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiD = 1654
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiDu = 1655
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiH = 1656
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiHu = 1657
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiW = 1658
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxiWu = 1659
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxB = 1660
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxBu = 1661
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxD = 1662
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxDu = 1663
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxH = 1664
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxHu = 1665
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxW = 1666
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmaxWu = 1667
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiB = 1668
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiBu = 1669
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiD = 1670
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiDu = 1671
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiH = 1672
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiHu = 1673
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiW = 1674
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminiWu = 1675
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminB = 1676
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminBu = 1677
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminD = 1678
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminDu = 1679
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminH = 1680
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminHu = 1681
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminW = 1682
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvminWu = 1683
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodB = 1684
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodBu = 1685
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodD = 1686
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodDu = 1687
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodH = 1688
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodHu = 1689
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodW = 1690
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmodWu = 1691
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmskgezB = 1692
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmskltzB = 1693
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmskltzD = 1694
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmskltzH = 1695
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmskltzW = 1696
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmsknzB = 1697
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmsubB = 1698
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmsubD = 1699
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmsubH = 1700
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmsubW = 1701
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhB = 1702
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhBu = 1703
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhD = 1704
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhDu = 1705
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhH = 1706
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhHu = 1707
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhW = 1708
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmuhWu = 1709
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevDW = 1710
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevDWu = 1711
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevDWuW = 1712
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevHB = 1713
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevHBu = 1714
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevHBuB = 1715
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevQD = 1716
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevQDu = 1717
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevQDuD = 1718
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevWH = 1719
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevWHu = 1720
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwevWHuH = 1721
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodDW = 1722
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodDWu = 1723
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodDWuW = 1724
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodHB = 1725
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodHBu = 1726
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodHBuB = 1727
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodQD = 1728
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodQDu = 1729
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodQDuD = 1730
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodWH = 1731
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodWHu = 1732
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulwodWHuH = 1733
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulB = 1734
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulD = 1735
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulH = 1736
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvmulW = 1737
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnegB = 1738
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnegD = 1739
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnegH = 1740
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnegW = 1741
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnoriB = 1742
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvnorV = 1743
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvoriB = 1744
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvornV = 1745
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvorV = 1746
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackevB = 1747
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackevD = 1748
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackevH = 1749
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackevW = 1750
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackodB = 1751
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackodD = 1752
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackodH = 1753
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpackodW = 1754
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpcntB = 1755
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpcntD = 1756
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpcntH = 1757
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpcntW = 1758
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpermiD = 1759
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpermiQ = 1760
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpermiW = 1761
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpermW = 1762
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickevB = 1763
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickevD = 1764
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickevH = 1765
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickevW = 1766
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickodB = 1767
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickodD = 1768
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickodH = 1769
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickodW = 1770
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickve2grD = 1771
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickve2grDu = 1772
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickve2grW = 1773
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickve2grWu = 1774
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickveD = 1775
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvpickveW = 1776
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepl128veiB = 1777
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepl128veiD = 1778
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepl128veiH = 1779
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrepl128veiW = 1780
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplgr2vrB = 1781
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplgr2vrD = 1782
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplgr2vrH = 1783
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplgr2vrW = 1784
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplve0B = 1785
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplve0D = 1786
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplve0H = 1787
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplve0Q = 1788
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplve0W = 1789
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplveB = 1790
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplveD = 1791
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplveH = 1792
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvreplveW = 1793
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotriB = 1794
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotriD = 1795
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotriH = 1796
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotriW = 1797
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotrB = 1798
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotrD = 1799
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotrH = 1800
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvrotrW = 1801
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddB = 1802
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddBu = 1803
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddD = 1804
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddDu = 1805
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddH = 1806
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddHu = 1807
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddW = 1808
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsaddWu = 1809
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatB = 1810
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatBu = 1811
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatD = 1812
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatDu = 1813
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatH = 1814
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatHu = 1815
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatW = 1816
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsatWu = 1817
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqiB = 1818
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqiD = 1819
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqiH = 1820
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqiW = 1821
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqB = 1822
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqD = 1823
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqH = 1824
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseqW = 1825
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetallnezB = 1826
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetallnezD = 1827
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetallnezH = 1828
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetallnezW = 1829
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetanyeqzB = 1830
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetanyeqzD = 1831
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetanyeqzH = 1832
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetanyeqzW = 1833
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvseteqzV = 1834
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsetnezV = 1835
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshuf4iB = 1836
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshuf4iD = 1837
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshuf4iH = 1838
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshuf4iW = 1839
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshufB = 1840
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshufD = 1841
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshufH = 1842
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvshufW = 1843
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsigncovB = 1844
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsigncovD = 1845
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsigncovH = 1846
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsigncovW = 1847
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiB = 1848
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiBu = 1849
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiD = 1850
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiDu = 1851
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiH = 1852
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiHu = 1853
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiW = 1854
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleiWu = 1855
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleB = 1856
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleBu = 1857
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleD = 1858
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleDu = 1859
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleH = 1860
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleHu = 1861
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleW = 1862
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsleWu = 1863
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvslliB = 1864
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvslliD = 1865
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvslliH = 1866
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvslliW = 1867
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilDuWu = 1868
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilDW = 1869
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilHuBu = 1870
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilHB = 1871
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilWuHu = 1872
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllwilWH = 1873
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllB = 1874
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllD = 1875
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllH = 1876
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsllW = 1877
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiB = 1878
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiBu = 1879
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiD = 1880
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiDu = 1881
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiH = 1882
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiHu = 1883
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiW = 1884
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltiWu = 1885
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltB = 1886
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltBu = 1887
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltD = 1888
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltDu = 1889
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltH = 1890
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltHu = 1891
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltW = 1892
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsltWu = 1893
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraiB = 1894
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraiD = 1895
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraiH = 1896
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraiW = 1897
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraniBH = 1898
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraniDQ = 1899
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraniHW = 1900
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraniWD = 1901
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsranBH = 1902
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsranHW = 1903
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsranWD = 1904
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrariB = 1905
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrariD = 1906
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrariH = 1907
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrariW = 1908
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarniBH = 1909
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarniDQ = 1910
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarniHW = 1911
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarniWD = 1912
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarnBH = 1913
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarnHW = 1914
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarnWD = 1915
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarB = 1916
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarD = 1917
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarH = 1918
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrarW = 1919
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraB = 1920
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraD = 1921
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraH = 1922
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsraW = 1923
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrliB = 1924
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrliD = 1925
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrliH = 1926
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrliW = 1927
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlniBH = 1928
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlniDQ = 1929
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlniHW = 1930
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlniWD = 1931
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlnBH = 1932
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlnHW = 1933
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlnWD = 1934
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlriB = 1935
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlriD = 1936
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlriH = 1937
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlriW = 1938
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrniBH = 1939
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrniDQ = 1940
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrniHW = 1941
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrniWD = 1942
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrnBH = 1943
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrnHW = 1944
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrnWD = 1945
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrB = 1946
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrD = 1947
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrH = 1948
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlrW = 1949
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlB = 1950
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlD = 1951
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlH = 1952
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsrlW = 1953
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniBuH = 1954
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniBH = 1955
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniDuQ = 1956
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniDQ = 1957
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniHuW = 1958
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniHW = 1959
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniWuD = 1960
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssraniWD = 1961
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranBuH = 1962
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranBH = 1963
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranHuW = 1964
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranHW = 1965
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranWuD = 1966
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssranWD = 1967
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniBuH = 1968
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniBH = 1969
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniDuQ = 1970
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniDQ = 1971
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniHuW = 1972
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniHW = 1973
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniWuD = 1974
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarniWD = 1975
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnBuH = 1976
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnBH = 1977
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnHuW = 1978
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnHW = 1979
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnWuD = 1980
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrarnWD = 1981
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniBuH = 1982
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniBH = 1983
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniDuQ = 1984
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniDQ = 1985
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniHuW = 1986
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniHW = 1987
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniWuD = 1988
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlniWD = 1989
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnBuH = 1990
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnBH = 1991
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnHuW = 1992
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnHW = 1993
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnWuD = 1994
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlnWD = 1995
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniBuH = 1996
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniBH = 1997
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniDuQ = 1998
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniDQ = 1999
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniHuW = 2000
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniHW = 2001
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniWuD = 2002
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrniWD = 2003
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnBuH = 2004
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnBH = 2005
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnHuW = 2006
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnHW = 2007
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnWuD = 2008
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssrlrnWD = 2009
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubB = 2010
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubBu = 2011
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubD = 2012
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubDu = 2013
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubH = 2014
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubHu = 2015
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubW = 2016
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvssubWu = 2017
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvst = 2018
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvstelmB = 2019
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvstelmD = 2020
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvstelmH = 2021
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvstelmW = 2022
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvstx = 2023
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubiBu = 2024
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubiDu = 2025
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubiHu = 2026
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubiWu = 2027
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevDW = 2028
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevDWu = 2029
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevHB = 2030
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevHBu = 2031
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevQD = 2032
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevQDu = 2033
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevWH = 2034
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwevWHu = 2035
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodDW = 2036
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodDWu = 2037
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodHB = 2038
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodHBu = 2039
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodQD = 2040
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodQDu = 2041
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodWH = 2042
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubwodWHu = 2043
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubB = 2044
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubD = 2045
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubH = 2046
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubQ = 2047
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvsubW = 2048
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvxoriB = 2049
    /// generated content <LoongArchGenCSInsnEnum.inc> begin clang-format off
    case xvxorV = 2050
    /// clang-format on generated content <LoongArchGenCSInsnEnum.inc> end
    case ending = 2051
    /// clang-format on generated content <LoongArchGenCSInsnEnum.inc> end
    case aliasBegin = 2052
    /// Real instr.: LOONGARCH_PseudoLA_GOT
    case aliasLa = 2053
    /// Real instr.: LOONGARCH_PseudoLA_GOT
    case aliasLaGlobal = 2054
    /// Real instr.: LOONGARCH_PseudoLA_PCREL
    case aliasLaLocal = 2055
    /// Real instr.: LOONGARCH_ANDI
    case aliasNop = 2056
    /// Real instr.: LOONGARCH_OR
    case aliasMove = 2057
    /// Real instr.: LOONGARCH_JIRL
    case aliasRet = 2058
    /// Real instr.: LOONGARCH_JIRL
    case aliasJr = 2059
    /// clang-format on generated content <LoongArchGenCSInsnEnum.inc> end
    case aliasEnd = 2060
}

/// LoongArch instruction formats. To get details about them please refer to `LoongArchInstrFormats.td` in LLVM.
public enum LoongArchInsnForm: UInt32 {
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case pseudo = 0
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3r = 1
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri12 = 2
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri5 = 3
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri16 = 4
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3ri2 = 5
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt2ri4 = 6
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri8 = 7
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri4 = 8
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1ri4 = 9
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1ri5i4 = 10
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtasrt = 11
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmti26 = 12
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmtbr = 13
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri21 = 14
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2r = 15
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmti15 = 16
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtbstrD = 17
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtbstrW = 18
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3ri3 = 19
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtcacop = 20
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtcsr = 21
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtcsrxchg = 22
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmti32 = 23
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmt2r = 24
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmt3r = 25
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmtfcmp = 26
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmtmem = 27
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmt2ri12 = 28
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmt4r = 29
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmtmov = 30
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fpfmtfsel = 31
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtinvtlb = 32
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtjiscr = 33
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8 = 34
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtldpte = 35
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri14 = 36
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri20 = 37
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtgr2scr = 38
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtscr2gr = 39
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtpreld = 40
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtpreldx = 41
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3 = 42
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri6 = 43
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri4 = 44
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rVvv = 45
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri5Vvi = 46
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8Vvi = 47
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Vvi = 48
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri6Vvi = 49
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri4Vvi = 50
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt4rVvvv = 51
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rVv = 52
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rXx = 53
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri4Vri = 54
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri1Vri = 55
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Vri = 56
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Vri = 57
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri12Vri = 58
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri13Vi = 59
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri9Vri = 60
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri11Vri = 61
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri10Vri = 62
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rVrr = 63
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri4Rvi = 64
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri1Rvi = 65
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Rvi = 66
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Rvi = 67
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rVr = 68
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri1Vvi = 69
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Vvi = 70
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rVvr = 71
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rCv = 72
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri7Vvi = 73
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i4Vrii = 74
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i1Vrii = 75
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i3Vrii = 76
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i2Vrii = 77
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt2r = 78
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1r = 79
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtmftop = 80
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmtmttop = 81
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1ri3 = 82
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1ri6 = 83
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case nodstfmt1ri5 = 84
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri5i8 = 85
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rXxx = 86
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri5Xxi = 87
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8Xxi = 88
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Xxi = 89
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri6Xxi = 90
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri4Xxi = 91
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt4rXxxx = 92
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Xri = 93
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Xri = 94
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Xxi = 95
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri12Xri = 96
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt1ri13Xi = 97
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri9Xri = 98
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri11Xri = 99
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri10Xri = 100
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rXrr = 101
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri2Rxi = 102
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri3Rxi = 103
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri1Xxi = 104
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rXr = 105
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt3rXxr = 106
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2rCx = 107
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri7Xxi = 108
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i5Xrii = 109
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i2Xrii = 110
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i4Xrii = 111
    /// generated content <LoongArchGenCSInsnFormatsEnum.inc> begin clang-format off
    case fmt2ri8i3Xrii = 112
}

/// Operand type for instruction's operands
public struct LoongArchOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Invalid
    public static let invalid: LoongArchOp = []
    /// Register operand
    public static let reg = LoongArchOp(rawValue: 1)
    /// Immediate operand
    public static let imm = LoongArchOp(rawValue: 2)
    /// Memory operand
    public static let mem = LoongArchOp(rawValue: 128)
}

/// LoongArch registers
public enum LoongArchReg: UInt16 {
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f0 = 1
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1 = 2
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2 = 3
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f3 = 4
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f4 = 5
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f5 = 6
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f6 = 7
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f7 = 8
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f8 = 9
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f9 = 10
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f10 = 11
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f11 = 12
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f12 = 13
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f13 = 14
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f14 = 15
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f15 = 16
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f16 = 17
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f17 = 18
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f18 = 19
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f19 = 20
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f20 = 21
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f21 = 22
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f22 = 23
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f23 = 24
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f24 = 25
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f25 = 26
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f26 = 27
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f27 = 28
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f28 = 29
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f29 = 30
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f30 = 31
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f31 = 32
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc0 = 33
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc1 = 34
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc2 = 35
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc3 = 36
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc4 = 37
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc5 = 38
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc6 = 39
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcc7 = 40
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcsr0 = 41
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcsr1 = 42
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcsr2 = 43
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case fcsr3 = 44
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r0 = 45
    /// alias registers
    public static let zero = 45
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r1 = 46
    /// alias registers
    public static let ra = 46
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r2 = 47
    /// alias registers
    public static let tp = 47
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r3 = 48
    /// alias registers
    public static let sp = 48
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r4 = 49
    /// alias registers
    public static let a0 = 49
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r5 = 50
    /// alias registers
    public static let a1 = 50
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r6 = 51
    /// alias registers
    public static let a2 = 51
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r7 = 52
    /// alias registers
    public static let a3 = 52
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r8 = 53
    /// alias registers
    public static let a4 = 53
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r9 = 54
    /// alias registers
    public static let a5 = 54
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r10 = 55
    /// alias registers
    public static let a6 = 55
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r11 = 56
    /// alias registers
    public static let a7 = 56
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r12 = 57
    /// alias registers
    public static let t0 = 57
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r13 = 58
    /// alias registers
    public static let t1 = 58
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r14 = 59
    /// alias registers
    public static let t2 = 59
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r15 = 60
    /// alias registers
    public static let t3 = 60
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r16 = 61
    /// alias registers
    public static let t4 = 61
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r17 = 62
    /// alias registers
    public static let t5 = 62
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r18 = 63
    /// alias registers
    public static let t6 = 63
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r19 = 64
    /// alias registers
    public static let t7 = 64
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r20 = 65
    /// alias registers
    public static let t8 = 65
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r21 = 66
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r22 = 67
    /// alias registers
    public static let fp = 67
    /// alias registers
    public static let s9 = 67
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r23 = 68
    /// alias registers
    public static let s0 = 68
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r24 = 69
    /// alias registers
    public static let s1 = 69
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r25 = 70
    /// alias registers
    public static let s2 = 70
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r26 = 71
    /// alias registers
    public static let s3 = 71
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r27 = 72
    /// alias registers
    public static let s4 = 72
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r28 = 73
    /// alias registers
    public static let s5 = 73
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r29 = 74
    /// alias registers
    public static let s6 = 74
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r30 = 75
    /// alias registers
    public static let s7 = 75
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case r31 = 76
    /// alias registers
    public static let s8 = 76
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case scr0 = 77
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case scr1 = 78
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case scr2 = 79
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case scr3 = 80
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr0 = 81
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr1 = 82
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr2 = 83
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr3 = 84
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr4 = 85
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr5 = 86
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr6 = 87
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr7 = 88
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr8 = 89
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr9 = 90
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr10 = 91
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr11 = 92
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr12 = 93
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr13 = 94
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr14 = 95
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr15 = 96
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr16 = 97
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr17 = 98
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr18 = 99
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr19 = 100
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr20 = 101
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr21 = 102
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr22 = 103
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr23 = 104
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr24 = 105
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr25 = 106
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr26 = 107
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr27 = 108
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr28 = 109
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr29 = 110
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr30 = 111
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case vr31 = 112
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr0 = 113
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr1 = 114
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr2 = 115
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr3 = 116
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr4 = 117
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr5 = 118
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr6 = 119
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr7 = 120
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr8 = 121
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr9 = 122
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr10 = 123
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr11 = 124
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr12 = 125
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr13 = 126
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr14 = 127
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr15 = 128
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr16 = 129
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr17 = 130
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr18 = 131
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr19 = 132
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr20 = 133
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr21 = 134
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr22 = 135
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr23 = 136
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr24 = 137
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr25 = 138
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr26 = 139
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr27 = 140
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr28 = 141
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr29 = 142
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr30 = 143
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case xr31 = 144
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f064 = 145
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f164 = 146
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f264 = 147
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f364 = 148
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f464 = 149
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f564 = 150
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f664 = 151
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f764 = 152
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f864 = 153
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f964 = 154
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1064 = 155
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1164 = 156
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1264 = 157
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1364 = 158
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1464 = 159
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1564 = 160
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1664 = 161
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1764 = 162
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1864 = 163
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f1964 = 164
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2064 = 165
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2164 = 166
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2264 = 167
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2364 = 168
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2464 = 169
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2564 = 170
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2664 = 171
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2764 = 172
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2864 = 173
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f2964 = 174
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f3064 = 175
    /// generated content <LoongArchGenCSRegEnum.inc> begin clang-format off
    case f3164 = 176
    /// 177
    case ending = 177
}

#endif
