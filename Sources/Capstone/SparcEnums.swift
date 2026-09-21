#if CAPSTONE_HAS_SPARC
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Sparc)

public enum SparcAsitagAsi: UInt32 {
    case invalid = 0
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case n = 4
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let nucleus = 4
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case nL = 12
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let nucleusLittle = 12
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case aiup = 16
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let asIfUserPrimary = 16
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case aius = 17
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let asIfUserSecondary = 17
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case aiupL = 24
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let asIfUserPrimaryLittle = 24
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case aiusL = 25
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let asIfUserSecondaryLittle = 25
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case p = 128
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let primary = 128
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case s = 129
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let secondary = 129
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case pnf = 130
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let primaryNofault = 130
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case snf = 131
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let secondaryNofault = 131
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case pL = 136
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let primaryLittle = 136
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case sL = 137
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let secondaryLittle = 137
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case pnfL = 138
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let primaryNofaultLittle = 138
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    case snfL = 139
    /// generated content <SparcGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ASITag> begin clang-format off
    public static let secondaryNofaultLittle = 139
}

/// Enums corresponding to Sparc condition codes, both icc's and fcc's.
public enum SparcCc: UInt32 {
    /// Greater than or equal to zero
    case undef = 65535
}

/// Enums corresponding to Sparc condition codes, both icc's and fcc's.
public enum SparcCcCpcc: UInt32 {
    /// Co-processor conditional branches
    case begin = 32
    /// Never
    public static let n = 32
    case _123 = 33
    case _12 = 34
    case _13 = 35
    case _1 = 36
    case _23 = 37
    case _2 = 38
    case _3 = 39
    /// Always
    case a = 40
    case _0 = 41
    case _03 = 42
    case _02 = 43
    case _023 = 44
    case _01 = 45
    case _013 = 46
    case _012 = 47
}

/// Enums corresponding to Sparc condition codes, both icc's and fcc's.
public enum SparcCcFcc: UInt32 {
    case begin = 16
    /// Never
    public static let n = 16
    /// Not Equal
    case ne = 17
    /// Less or Greater
    case lg = 18
    /// Unordered or Less
    case ul = 19
    /// Less
    case l = 20
    /// Unordered or Greater
    case ug = 21
    /// Greater
    case g = 22
    /// Unordered
    case u = 23
    /// Always
    case a = 24
    /// Equal
    case e = 25
    /// Unordered or Equal
    case ue = 26
    /// Greater or Equal
    case ge = 27
    /// Unordered or Greater or Equal
    case uge = 28
    /// Less or Equal
    case le = 29
    /// Unordered or Less or Equal
    case ule = 30
    /// Ordered
    case o = 31
}

/// The cc field values encoded in the cc0, cc1, cc2 bits or opf_cc. They are equivalent to ISA Sparc v9 - Table 41 - Chapter E.2 Tables - Page 281.
public enum SparcCcField: UInt32 {
    case fcc0 = 0
    case fcc1 = 1
    case fcc2 = 2
    case fcc3 = 3
    case icc = 4
    case reservedI = 5
    case xcc = 6
    case reservedIi = 7
    case none = 255
}

/// Enums corresponding to Sparc condition codes, both icc's and fcc's.
public enum SparcCcIcc: UInt32 {
    /// Never
    case n = 0
    /// Equal
    case e = 1
    /// Less or Equal
    case le = 2
    /// Less
    case l = 3
    /// Less or Equal Unsigned
    case leu = 4
    /// Carry Set/Less Unsigned
    case cs = 5
    /// Negative
    case neg = 6
    /// Overflow Set
    case vs = 7
    /// Always
    case a = 8
    /// Not Equal
    case ne = 9
    /// Greater
    case g = 10
    /// Greater or Equal
    case ge = 11
    /// Greater Unsigned
    case gu = 12
    /// Carry Clear/Great or Equal Unsigned
    case cc = 13
    /// Positive
    case pos = 14
    /// Overflow Clear
    case vc = 15
}

/// Enums corresponding to Sparc condition codes, both icc's and fcc's.
public enum SparcCcReg: UInt16 {
    case begin = 48
    /// Is zero
    case z = 49
    /// Less or equal to zero
    case lez = 50
    /// Less than zero
    case lz = 51
    /// Is not zero
    case nz = 53
    /// Greater than zero
    case gz = 54
    /// Greater than or equal to zero
    case gez = 55
}

/// Group of SPARC instructions
public enum SparcFeature: UInt32 {
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case is64bit = 128
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case usesoftmuldiv = 129
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case hasv9 = 130
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case hasvis = 131
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case hasvis2 = 132
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case hasvis3 = 133
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case hascasa = 134
    /// Architecture-specific groups generated content <SparcGenCSFeatureEnum.inc> begin clang-format off
    case haspwrpsr = 135
}

/// Group of SPARC instructions
public enum SparcGrp: UInt8 {
    /// = CS_GRP_INVALID = 0
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
    /// <-- mark the end of the list of groups
    case ending = 136
}

/// Branch hint
public enum SparcHint: UInt32 {
    /// no hint
    case invalid = 0
    /// annul delay slot instruction
    case a = 1
    /// branch taken
    case pt = 2
    case aPt = 3
    /// branch NOT taken
    case pn = 4
    case aPn = 5
}

/// SPARC instruction
public enum SparcIns: UInt32 {
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case set = 1
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case setx = 2
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case addcc = 3
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case addx = 4
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case addxcc = 5
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case addxc = 6
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case addxccc = 7
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case add = 8
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case alignaddr = 9
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case alignaddrl = 10
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case andcc = 11
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case andncc = 12
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case andn = 13
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case and = 14
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case array16 = 15
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case array32 = 16
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case array8 = 17
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case b = 18
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case bmask = 19
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fb = 20
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case br = 21
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case bshuffle = 22
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case call = 23
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case casa = 24
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case casxa = 25
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case cb = 26
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case cmask16 = 27
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case cmask32 = 28
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case cmask8 = 29
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case done = 30
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge16 = 31
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge16l = 32
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge16ln = 33
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge16n = 34
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge32 = 35
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge32l = 36
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge32ln = 37
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge32n = 38
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge8 = 39
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge8l = 40
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge8ln = 41
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case edge8n = 42
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fabsd = 43
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fabsq = 44
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fabss = 45
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case faddd = 46
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case faddq = 47
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fadds = 48
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case faligndata = 49
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fand = 50
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fandnot1 = 51
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fandnot1s = 52
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fandnot2 = 53
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fandnot2s = 54
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fands = 55
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fchksm16 = 56
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpeq16 = 57
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpeq32 = 58
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpgt16 = 59
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpgt32 = 60
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmple16 = 61
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmple32 = 62
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpne16 = 63
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpne32 = 64
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdivd = 65
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdivq = 66
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdivs = 67
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdmulq = 68
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdtoi = 69
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdtoq = 70
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdtos = 71
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fdtox = 72
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fexpand = 73
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fhaddd = 74
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fhadds = 75
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fhsubd = 76
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fhsubs = 77
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fitod = 78
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fitoq = 79
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fitos = 80
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case flcmpd = 81
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case flcmps = 82
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case flush = 83
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case flushw = 84
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmean16 = 85
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovd = 86
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovq = 87
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovrd = 88
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovrq = 89
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovrs = 90
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmovs = 91
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmul8sux16 = 92
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmul8ulx16 = 93
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmul8x16 = 94
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmul8x16al = 95
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmul8x16au = 96
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmuld = 97
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmuld8sux16 = 98
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmuld8ulx16 = 99
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmulq = 100
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fmuls = 101
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnaddd = 102
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnadds = 103
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnand = 104
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnands = 105
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnegd = 106
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnegq = 107
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnegs = 108
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnhaddd = 109
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnhadds = 110
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnmuld = 111
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnmuls = 112
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnor = 113
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnors = 114
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnot1 = 115
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnot1s = 116
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnot2 = 117
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnot2s = 118
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fnsmuld = 119
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fone = 120
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fones = 121
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case `for` = 122
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fornot1 = 123
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fornot1s = 124
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fornot2 = 125
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fornot2s = 126
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fors = 127
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpack16 = 128
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpack32 = 129
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpackfix = 130
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpadd16 = 131
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpadd16s = 132
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpadd32 = 133
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpadd32s = 134
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpadd64 = 135
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpmerge = 136
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpsub16 = 137
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpsub16s = 138
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpsub32 = 139
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fpsub32s = 140
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fqtod = 141
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fqtoi = 142
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fqtos = 143
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fqtox = 144
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fslas16 = 145
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fslas32 = 146
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsll16 = 147
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsll32 = 148
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsmuld = 149
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsqrtd = 150
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsqrtq = 151
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsqrts = 152
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsra16 = 153
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsra32 = 154
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrc1 = 155
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrc1s = 156
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrc2 = 157
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrc2s = 158
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrl16 = 159
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsrl32 = 160
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fstod = 161
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fstoi = 162
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fstoq = 163
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fstox = 164
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsubd = 165
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsubq = 166
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fsubs = 167
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxnor = 168
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxnors = 169
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxor = 170
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxors = 171
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxtod = 172
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxtoq = 173
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fxtos = 174
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fzero = 175
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fzeros = 176
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldx = 177
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ld = 178
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case jmpl = 179
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case lda = 180
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldda = 181
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldd = 182
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldqa = 183
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldq = 184
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldsba = 185
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldsb = 186
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldsha = 187
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldsh = 188
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldstuba = 189
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldstub = 190
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldswa = 191
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldsw = 192
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case lduba = 193
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldub = 194
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case lduha = 195
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case lduh = 196
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ldxa = 197
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case lzcnt = 198
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case membar = 199
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movdtox = 200
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case mov = 201
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movr = 202
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movstosw = 203
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movstouw = 204
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movwtos = 205
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case movxtod = 206
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case mulscc = 207
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case mulx = 208
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case nop = 209
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case orcc = 210
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case orncc = 211
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case orn = 212
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case or = 213
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case pdist = 214
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case pdistn = 215
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case popc = 216
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case prefetch = 217
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case pwr = 218
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case rd = 219
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case rdpr = 220
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case restored = 221
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case restore = 222
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case retry = 223
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case rett = 224
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case saved = 225
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case save = 226
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sdivcc = 227
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sdivx = 228
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sdiv = 229
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sethi = 230
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case shutdown = 231
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case siam = 232
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sir = 233
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sllx = 234
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sll = 235
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case smac = 236
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case smulcc = 237
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case smul = 238
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case srax = 239
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sra = 240
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case srlx = 241
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case srl = 242
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sta = 243
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stbar = 244
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stba = 245
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stb = 246
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case st = 247
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stda = 248
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case std = 249
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stha = 250
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sth = 251
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stqa = 252
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stq = 253
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stxa = 254
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case stx = 255
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case subcc = 256
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case subx = 257
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case subxcc = 258
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case sub = 259
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case swapa = 260
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case swap = 261
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case ta = 262
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case taddcctv = 263
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case taddcc = 264
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case t = 265
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case tsubcctv = 266
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case tsubcc = 267
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case udivcc = 268
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case udivx = 269
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case udiv = 270
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case umac = 271
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case umulcc = 272
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case umulxhi = 273
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case umul = 274
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case unimp = 275
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpd = 276
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmped = 277
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpeq = 278
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpes = 279
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmpq = 280
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case fcmps = 281
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case wr = 282
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case wrpr = 283
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xmulx = 284
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xmulxhi = 285
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xnorcc = 286
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xnor = 287
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xorcc = 288
    /// generated content <SparcGenCSInsnEnum.inc> begin clang-format off
    case xor = 289
    /// <-- mark the end of the list of instructions
    case ending = 290
    case aliasBegin = 291
    /// Real instr.: SPARC_MOVICCrr
    case aliasMova = 292
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsa = 293
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovda = 294
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrz = 295
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrsz = 296
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdz = 297
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqz = 298
    /// Real instr.: SPARC_BCOND
    case aliasBa = 299
    /// Real instr.: SPARC_BCONDA
    case aliasBaA = 300
    /// Real instr.: SPARC_BPICC
    case aliasBaPt = 301
    /// Real instr.: SPARC_BPICCA
    case aliasBaAPt = 302
    /// Real instr.: SPARC_BPICCNT
    case aliasBaPn = 303
    /// Real instr.: SPARC_BPICCANT
    case aliasBaAPn = 304
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqa = 305
    /// Real instr.: SPARC_TICCrr
    case aliasTa = 306
    /// Real instr.: SPARC_BPFCC
    case aliasFba = 307
    /// Real instr.: SPARC_BPFCC
    case aliasFbaPt = 308
    /// Real instr.: SPARC_BPFCCA
    case aliasFbaA = 309
    /// Real instr.: SPARC_BPFCCA
    case aliasFbaAPt = 310
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbaPn = 311
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbaAPn = 312
    /// Real instr.: SPARC_BPR
    case aliasBrz = 313
    /// Real instr.: SPARC_BPR
    case aliasBrzPt = 314
    /// Real instr.: SPARC_BPRNT
    case aliasBrzPn = 315
    /// Real instr.: SPARC_BPRA
    case aliasBrzA = 316
    /// Real instr.: SPARC_BPRA
    case aliasBrzAPt = 317
    /// Real instr.: SPARC_BPRANT
    case aliasBrzAPn = 318
    /// Real instr.: SPARC_BCOND
    case aliasBn = 319
    /// Real instr.: SPARC_BCONDA
    case aliasBnA = 320
    /// Real instr.: SPARC_BPICC
    case aliasBnPt = 321
    /// Real instr.: SPARC_BPICCA
    case aliasBnAPt = 322
    /// Real instr.: SPARC_BPICCNT
    case aliasBnPn = 323
    /// Real instr.: SPARC_BPICCANT
    case aliasBnAPn = 324
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovn = 325
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsn = 326
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdn = 327
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqn = 328
    /// Real instr.: SPARC_TICCrr
    case aliasTn = 329
    /// Real instr.: SPARC_BCOND
    case aliasBne = 330
    /// Real instr.: SPARC_BCONDA
    case aliasBneA = 331
    /// Real instr.: SPARC_BPICC
    case aliasBnePt = 332
    /// Real instr.: SPARC_BPICCA
    case aliasBneAPt = 333
    /// Real instr.: SPARC_BPICCNT
    case aliasBnePn = 334
    /// Real instr.: SPARC_BPICCANT
    case aliasBneAPn = 335
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovne = 336
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsne = 337
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdne = 338
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqne = 339
    /// Real instr.: SPARC_TICCrr
    case aliasTne = 340
    /// Real instr.: SPARC_BCOND
    case aliasBe = 341
    /// Real instr.: SPARC_BCONDA
    case aliasBeA = 342
    /// Real instr.: SPARC_BPICC
    case aliasBePt = 343
    /// Real instr.: SPARC_BPICCA
    case aliasBeAPt = 344
    /// Real instr.: SPARC_BPICCNT
    case aliasBePn = 345
    /// Real instr.: SPARC_BPICCANT
    case aliasBeAPn = 346
    /// Real instr.: SPARC_MOVICCrr
    case aliasMove = 347
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovse = 348
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovde = 349
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqe = 350
    /// Real instr.: SPARC_TICCrr
    case aliasTe = 351
    /// Real instr.: SPARC_BCOND
    case aliasBg = 352
    /// Real instr.: SPARC_BCONDA
    case aliasBgA = 353
    /// Real instr.: SPARC_BPICC
    case aliasBgPt = 354
    /// Real instr.: SPARC_BPICCA
    case aliasBgAPt = 355
    /// Real instr.: SPARC_BPICCNT
    case aliasBgPn = 356
    /// Real instr.: SPARC_BPICCANT
    case aliasBgAPn = 357
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovg = 358
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsg = 359
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdg = 360
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqg = 361
    /// Real instr.: SPARC_TICCrr
    case aliasTg = 362
    /// Real instr.: SPARC_BCOND
    case aliasBle = 363
    /// Real instr.: SPARC_BCONDA
    case aliasBleA = 364
    /// Real instr.: SPARC_BPICC
    case aliasBlePt = 365
    /// Real instr.: SPARC_BPICCA
    case aliasBleAPt = 366
    /// Real instr.: SPARC_BPICCNT
    case aliasBlePn = 367
    /// Real instr.: SPARC_BPICCANT
    case aliasBleAPn = 368
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovle = 369
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsle = 370
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdle = 371
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqle = 372
    /// Real instr.: SPARC_TICCrr
    case aliasTle = 373
    /// Real instr.: SPARC_BCOND
    case aliasBge = 374
    /// Real instr.: SPARC_BCONDA
    case aliasBgeA = 375
    /// Real instr.: SPARC_BPICC
    case aliasBgePt = 376
    /// Real instr.: SPARC_BPICCA
    case aliasBgeAPt = 377
    /// Real instr.: SPARC_BPICCNT
    case aliasBgePn = 378
    /// Real instr.: SPARC_BPICCANT
    case aliasBgeAPn = 379
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovge = 380
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsge = 381
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdge = 382
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqge = 383
    /// Real instr.: SPARC_TICCrr
    case aliasTge = 384
    /// Real instr.: SPARC_BCOND
    case aliasBl = 385
    /// Real instr.: SPARC_BCONDA
    case aliasBlA = 386
    /// Real instr.: SPARC_BPICC
    case aliasBlPt = 387
    /// Real instr.: SPARC_BPICCA
    case aliasBlAPt = 388
    /// Real instr.: SPARC_BPICCNT
    case aliasBlPn = 389
    /// Real instr.: SPARC_BPICCANT
    case aliasBlAPn = 390
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovl = 391
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsl = 392
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdl = 393
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovql = 394
    /// Real instr.: SPARC_TICCrr
    case aliasTl = 395
    /// Real instr.: SPARC_BCOND
    case aliasBgu = 396
    /// Real instr.: SPARC_BCONDA
    case aliasBguA = 397
    /// Real instr.: SPARC_BPICC
    case aliasBguPt = 398
    /// Real instr.: SPARC_BPICCA
    case aliasBguAPt = 399
    /// Real instr.: SPARC_BPICCNT
    case aliasBguPn = 400
    /// Real instr.: SPARC_BPICCANT
    case aliasBguAPn = 401
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovgu = 402
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsgu = 403
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdgu = 404
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqgu = 405
    /// Real instr.: SPARC_TICCrr
    case aliasTgu = 406
    /// Real instr.: SPARC_BCOND
    case aliasBleu = 407
    /// Real instr.: SPARC_BCONDA
    case aliasBleuA = 408
    /// Real instr.: SPARC_BPICC
    case aliasBleuPt = 409
    /// Real instr.: SPARC_BPICCA
    case aliasBleuAPt = 410
    /// Real instr.: SPARC_BPICCNT
    case aliasBleuPn = 411
    /// Real instr.: SPARC_BPICCANT
    case aliasBleuAPn = 412
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovleu = 413
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsleu = 414
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdleu = 415
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqleu = 416
    /// Real instr.: SPARC_TICCrr
    case aliasTleu = 417
    /// Real instr.: SPARC_BCOND
    case aliasBcc = 418
    /// Real instr.: SPARC_BCONDA
    case aliasBccA = 419
    /// Real instr.: SPARC_BPICC
    case aliasBccPt = 420
    /// Real instr.: SPARC_BPICCA
    case aliasBccAPt = 421
    /// Real instr.: SPARC_BPICCNT
    case aliasBccPn = 422
    /// Real instr.: SPARC_BPICCANT
    case aliasBccAPn = 423
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovcc = 424
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovscc = 425
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdcc = 426
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqcc = 427
    /// Real instr.: SPARC_TICCrr
    case aliasTcc = 428
    /// Real instr.: SPARC_BCOND
    case aliasBcs = 429
    /// Real instr.: SPARC_BCONDA
    case aliasBcsA = 430
    /// Real instr.: SPARC_BPICC
    case aliasBcsPt = 431
    /// Real instr.: SPARC_BPICCA
    case aliasBcsAPt = 432
    /// Real instr.: SPARC_BPICCNT
    case aliasBcsPn = 433
    /// Real instr.: SPARC_BPICCANT
    case aliasBcsAPn = 434
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovcs = 435
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovscs = 436
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdcs = 437
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqcs = 438
    /// Real instr.: SPARC_TICCrr
    case aliasTcs = 439
    /// Real instr.: SPARC_BCOND
    case aliasBpos = 440
    /// Real instr.: SPARC_BCONDA
    case aliasBposA = 441
    /// Real instr.: SPARC_BPICC
    case aliasBposPt = 442
    /// Real instr.: SPARC_BPICCA
    case aliasBposAPt = 443
    /// Real instr.: SPARC_BPICCNT
    case aliasBposPn = 444
    /// Real instr.: SPARC_BPICCANT
    case aliasBposAPn = 445
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovpos = 446
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovspos = 447
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdpos = 448
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqpos = 449
    /// Real instr.: SPARC_TICCrr
    case aliasTpos = 450
    /// Real instr.: SPARC_BCOND
    case aliasBneg = 451
    /// Real instr.: SPARC_BCONDA
    case aliasBnegA = 452
    /// Real instr.: SPARC_BPICC
    case aliasBnegPt = 453
    /// Real instr.: SPARC_BPICCA
    case aliasBnegAPt = 454
    /// Real instr.: SPARC_BPICCNT
    case aliasBnegPn = 455
    /// Real instr.: SPARC_BPICCANT
    case aliasBnegAPn = 456
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovneg = 457
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsneg = 458
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdneg = 459
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqneg = 460
    /// Real instr.: SPARC_TICCrr
    case aliasTneg = 461
    /// Real instr.: SPARC_BCOND
    case aliasBvc = 462
    /// Real instr.: SPARC_BCONDA
    case aliasBvcA = 463
    /// Real instr.: SPARC_BPICC
    case aliasBvcPt = 464
    /// Real instr.: SPARC_BPICCA
    case aliasBvcAPt = 465
    /// Real instr.: SPARC_BPICCNT
    case aliasBvcPn = 466
    /// Real instr.: SPARC_BPICCANT
    case aliasBvcAPn = 467
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovvc = 468
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsvc = 469
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdvc = 470
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqvc = 471
    /// Real instr.: SPARC_TICCrr
    case aliasTvc = 472
    /// Real instr.: SPARC_BCOND
    case aliasBvs = 473
    /// Real instr.: SPARC_BCONDA
    case aliasBvsA = 474
    /// Real instr.: SPARC_BPICC
    case aliasBvsPt = 475
    /// Real instr.: SPARC_BPICCA
    case aliasBvsAPt = 476
    /// Real instr.: SPARC_BPICCNT
    case aliasBvsPn = 477
    /// Real instr.: SPARC_BPICCANT
    case aliasBvsAPn = 478
    /// Real instr.: SPARC_MOVICCrr
    case aliasMovvs = 479
    /// Real instr.: SPARC_FMOVS_ICC
    case aliasFmovsvs = 480
    /// Real instr.: SPARC_FMOVD_ICC
    case aliasFmovdvs = 481
    /// Real instr.: SPARC_FMOVQ_ICC
    case aliasFmovqvs = 482
    /// Real instr.: SPARC_TICCrr
    case aliasTvs = 483
    /// Real instr.: SPARC_BPFCC
    case aliasFbn = 484
    /// Real instr.: SPARC_BPFCC
    case aliasFbnPt = 485
    /// Real instr.: SPARC_BPFCCA
    case aliasFbnA = 486
    /// Real instr.: SPARC_BPFCCA
    case aliasFbnAPt = 487
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbnPn = 488
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbnAPn = 489
    /// Real instr.: SPARC_BPFCC
    case aliasFbu = 490
    /// Real instr.: SPARC_BPFCC
    case aliasFbuPt = 491
    /// Real instr.: SPARC_BPFCCA
    case aliasFbuA = 492
    /// Real instr.: SPARC_BPFCCA
    case aliasFbuAPt = 493
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbuPn = 494
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbuAPn = 495
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovu = 496
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsu = 497
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdu = 498
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqu = 499
    /// Real instr.: SPARC_BPFCC
    case aliasFbg = 500
    /// Real instr.: SPARC_BPFCC
    case aliasFbgPt = 501
    /// Real instr.: SPARC_BPFCCA
    case aliasFbgA = 502
    /// Real instr.: SPARC_BPFCCA
    case aliasFbgAPt = 503
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbgPn = 504
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbgAPn = 505
    /// Real instr.: SPARC_BPFCC
    case aliasFbug = 506
    /// Real instr.: SPARC_BPFCC
    case aliasFbugPt = 507
    /// Real instr.: SPARC_BPFCCA
    case aliasFbugA = 508
    /// Real instr.: SPARC_BPFCCA
    case aliasFbugAPt = 509
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbugPn = 510
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbugAPn = 511
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovug = 512
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsug = 513
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdug = 514
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqug = 515
    /// Real instr.: SPARC_BPFCC
    case aliasFbl = 516
    /// Real instr.: SPARC_BPFCC
    case aliasFblPt = 517
    /// Real instr.: SPARC_BPFCCA
    case aliasFblA = 518
    /// Real instr.: SPARC_BPFCCA
    case aliasFblAPt = 519
    /// Real instr.: SPARC_BPFCCNT
    case aliasFblPn = 520
    /// Real instr.: SPARC_BPFCCANT
    case aliasFblAPn = 521
    /// Real instr.: SPARC_BPFCC
    case aliasFbul = 522
    /// Real instr.: SPARC_BPFCC
    case aliasFbulPt = 523
    /// Real instr.: SPARC_BPFCCA
    case aliasFbulA = 524
    /// Real instr.: SPARC_BPFCCA
    case aliasFbulAPt = 525
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbulPn = 526
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbulAPn = 527
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovul = 528
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsul = 529
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdul = 530
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqul = 531
    /// Real instr.: SPARC_BPFCC
    case aliasFblg = 532
    /// Real instr.: SPARC_BPFCC
    case aliasFblgPt = 533
    /// Real instr.: SPARC_BPFCCA
    case aliasFblgA = 534
    /// Real instr.: SPARC_BPFCCA
    case aliasFblgAPt = 535
    /// Real instr.: SPARC_BPFCCNT
    case aliasFblgPn = 536
    /// Real instr.: SPARC_BPFCCANT
    case aliasFblgAPn = 537
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovlg = 538
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovslg = 539
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdlg = 540
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqlg = 541
    /// Real instr.: SPARC_BPFCC
    case aliasFbne = 542
    /// Real instr.: SPARC_BPFCC
    case aliasFbnePt = 543
    /// Real instr.: SPARC_BPFCCA
    case aliasFbneA = 544
    /// Real instr.: SPARC_BPFCCA
    case aliasFbneAPt = 545
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbnePn = 546
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbneAPn = 547
    /// Real instr.: SPARC_BPFCC
    case aliasFbe = 548
    /// Real instr.: SPARC_BPFCC
    case aliasFbePt = 549
    /// Real instr.: SPARC_BPFCCA
    case aliasFbeA = 550
    /// Real instr.: SPARC_BPFCCA
    case aliasFbeAPt = 551
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbePn = 552
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbeAPn = 553
    /// Real instr.: SPARC_BPFCC
    case aliasFbue = 554
    /// Real instr.: SPARC_BPFCC
    case aliasFbuePt = 555
    /// Real instr.: SPARC_BPFCCA
    case aliasFbueA = 556
    /// Real instr.: SPARC_BPFCCA
    case aliasFbueAPt = 557
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbuePn = 558
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbueAPn = 559
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovue = 560
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsue = 561
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdue = 562
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovque = 563
    /// Real instr.: SPARC_BPFCC
    case aliasFbge = 564
    /// Real instr.: SPARC_BPFCC
    case aliasFbgePt = 565
    /// Real instr.: SPARC_BPFCCA
    case aliasFbgeA = 566
    /// Real instr.: SPARC_BPFCCA
    case aliasFbgeAPt = 567
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbgePn = 568
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbgeAPn = 569
    /// Real instr.: SPARC_BPFCC
    case aliasFbuge = 570
    /// Real instr.: SPARC_BPFCC
    case aliasFbugePt = 571
    /// Real instr.: SPARC_BPFCCA
    case aliasFbugeA = 572
    /// Real instr.: SPARC_BPFCCA
    case aliasFbugeAPt = 573
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbugePn = 574
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbugeAPn = 575
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovuge = 576
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsuge = 577
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovduge = 578
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovquge = 579
    /// Real instr.: SPARC_BPFCC
    case aliasFble = 580
    /// Real instr.: SPARC_BPFCC
    case aliasFblePt = 581
    /// Real instr.: SPARC_BPFCCA
    case aliasFbleA = 582
    /// Real instr.: SPARC_BPFCCA
    case aliasFbleAPt = 583
    /// Real instr.: SPARC_BPFCCNT
    case aliasFblePn = 584
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbleAPn = 585
    /// Real instr.: SPARC_BPFCC
    case aliasFbule = 586
    /// Real instr.: SPARC_BPFCC
    case aliasFbulePt = 587
    /// Real instr.: SPARC_BPFCCA
    case aliasFbuleA = 588
    /// Real instr.: SPARC_BPFCCA
    case aliasFbuleAPt = 589
    /// Real instr.: SPARC_BPFCCNT
    case aliasFbulePn = 590
    /// Real instr.: SPARC_BPFCCANT
    case aliasFbuleAPn = 591
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovule = 592
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovsule = 593
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdule = 594
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqule = 595
    /// Real instr.: SPARC_BPFCC
    case aliasFbo = 596
    /// Real instr.: SPARC_BPFCC
    case aliasFboPt = 597
    /// Real instr.: SPARC_BPFCCA
    case aliasFboA = 598
    /// Real instr.: SPARC_BPFCCA
    case aliasFboAPt = 599
    /// Real instr.: SPARC_BPFCCNT
    case aliasFboPn = 600
    /// Real instr.: SPARC_BPFCCANT
    case aliasFboAPn = 601
    /// Real instr.: SPARC_V9MOVFCCrr
    case aliasMovo = 602
    /// Real instr.: SPARC_V9FMOVS_FCC
    case aliasFmovso = 603
    /// Real instr.: SPARC_V9FMOVD_FCC
    case aliasFmovdo = 604
    /// Real instr.: SPARC_V9FMOVQ_FCC
    case aliasFmovqo = 605
    /// Real instr.: SPARC_BPR
    case aliasBrlez = 606
    /// Real instr.: SPARC_BPR
    case aliasBrlezPt = 607
    /// Real instr.: SPARC_BPRNT
    case aliasBrlezPn = 608
    /// Real instr.: SPARC_BPRA
    case aliasBrlezA = 609
    /// Real instr.: SPARC_BPRA
    case aliasBrlezAPt = 610
    /// Real instr.: SPARC_BPRANT
    case aliasBrlezAPn = 611
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrlez = 612
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrslez = 613
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdlez = 614
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqlez = 615
    /// Real instr.: SPARC_BPR
    case aliasBrlz = 616
    /// Real instr.: SPARC_BPR
    case aliasBrlzPt = 617
    /// Real instr.: SPARC_BPRNT
    case aliasBrlzPn = 618
    /// Real instr.: SPARC_BPRA
    case aliasBrlzA = 619
    /// Real instr.: SPARC_BPRA
    case aliasBrlzAPt = 620
    /// Real instr.: SPARC_BPRANT
    case aliasBrlzAPn = 621
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrlz = 622
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrslz = 623
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdlz = 624
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqlz = 625
    /// Real instr.: SPARC_BPR
    case aliasBrnz = 626
    /// Real instr.: SPARC_BPR
    case aliasBrnzPt = 627
    /// Real instr.: SPARC_BPRNT
    case aliasBrnzPn = 628
    /// Real instr.: SPARC_BPRA
    case aliasBrnzA = 629
    /// Real instr.: SPARC_BPRA
    case aliasBrnzAPt = 630
    /// Real instr.: SPARC_BPRANT
    case aliasBrnzAPn = 631
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrnz = 632
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrsnz = 633
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdnz = 634
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqnz = 635
    /// Real instr.: SPARC_BPR
    case aliasBrgz = 636
    /// Real instr.: SPARC_BPR
    case aliasBrgzPt = 637
    /// Real instr.: SPARC_BPRNT
    case aliasBrgzPn = 638
    /// Real instr.: SPARC_BPRA
    case aliasBrgzA = 639
    /// Real instr.: SPARC_BPRA
    case aliasBrgzAPt = 640
    /// Real instr.: SPARC_BPRANT
    case aliasBrgzAPn = 641
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrgz = 642
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrsgz = 643
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdgz = 644
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqgz = 645
    /// Real instr.: SPARC_BPR
    case aliasBrgez = 646
    /// Real instr.: SPARC_BPR
    case aliasBrgezPt = 647
    /// Real instr.: SPARC_BPRNT
    case aliasBrgezPn = 648
    /// Real instr.: SPARC_BPRA
    case aliasBrgezA = 649
    /// Real instr.: SPARC_BPRA
    case aliasBrgezAPt = 650
    /// Real instr.: SPARC_BPRANT
    case aliasBrgezAPn = 651
    /// Real instr.: SPARC_MOVRrr
    case aliasMovrgez = 652
    /// Real instr.: SPARC_FMOVRS
    case aliasFmovrsgez = 653
    /// Real instr.: SPARC_FMOVRD
    case aliasFmovrdgez = 654
    /// Real instr.: SPARC_FMOVRQ
    case aliasFmovrqgez = 655
    /// Real instr.: SPARC_SUBCCrr
    case aliasCmp = 656
    /// Real instr.: SPARC_ORCCrr
    case aliasTst = 657
    /// Real instr.: SPARC_RET
    case aliasRet = 658
    /// Real instr.: SPARC_RETL
    case aliasRetl = 659
    /// Real instr.: SPARC_RESTORErr
    case aliasRestore = 660
    /// Real instr.: SPARC_SAVErr
    case aliasSave = 661
    /// Real instr.: SPARC_CASArr
    case aliasCas = 662
    /// Real instr.: SPARC_CASArr
    case aliasCasl = 663
    /// Real instr.: SPARC_CASXArr
    case aliasCasx = 664
    /// Real instr.: SPARC_CASXArr
    case aliasCasxl = 665
    /// Real instr.: SPARC_ORrr
    case aliasMov = 666
    /// Real instr.: SPARC_V9FCMPS
    case aliasFcmps = 667
    /// Real instr.: SPARC_V9FCMPD
    case aliasFcmpd = 668
    /// Real instr.: SPARC_V9FCMPQ
    case aliasFcmpq = 669
    /// Real instr.: SPARC_V9FCMPES
    case aliasFcmpes = 670
    /// Real instr.: SPARC_V9FCMPED
    case aliasFcmped = 671
    /// Real instr.: SPARC_V9FCMPEQ
    case aliasFcmpeq = 672
    /// Real instr.: SPARC_INS_JMPL
    case aliasCall = 673
    case aliasEnd = 674
}

/// The instruction formats. They are only loosely equivalent to the one in the ISA. Because in LLVM they are not defined one to one.
public enum SparcInsnForm: UInt32 {
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case asmpseudoinst = 0
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f32 = 1
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f31Asi = 2
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f33 = 3
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f22 = 4
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f23 = 5
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f24 = 6
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f1 = 7
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f33U = 8
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f43 = 9
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f44R = 10
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f42 = 11
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f41 = 12
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f44I = 13
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f21 = 14
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f3Si = 15
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f3Sr = 16
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case trapsp = 17
    /// generated content <SparcGenCSInsnFormatsEnum.inc> begin clang-format off
    case f33C = 18
}

public struct SparcMembarTag: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    public static let none: SparcMembarTag = []
    public static let loadload = SparcMembarTag(rawValue: 1)
    public static let storeload = SparcMembarTag(rawValue: 2)
    public static let loadstore = SparcMembarTag(rawValue: 4)
    public static let storestore = SparcMembarTag(rawValue: 8)
    public static let lookaside = SparcMembarTag(rawValue: 16)
    public static let memissue = SparcMembarTag(rawValue: 32)
    public static let sync = SparcMembarTag(rawValue: 64)
}

/// Operand type for instruction's operands
public enum SparcOp: UInt32 {
    /// = CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    case membarTag = 16
    case asi = 17
    /// = CS_OP_MEM (Memory operand).
    case mem = 128
}

/// SPARC registers
public enum SparcReg: UInt16 {
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case canrestore = 1
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case cansave = 2
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case cleanwin = 3
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case cpq = 4
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case cpsr = 5
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case cwp = 6
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fq = 7
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fsr = 8
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case gl = 9
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case icc = 10
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case otherwin = 11
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case pil = 12
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case psr = 13
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case pstate = 14
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tba = 15
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tbr = 16
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tick = 17
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tl = 18
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tnpc = 19
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tpc = 20
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tstate = 21
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case tt = 22
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case ver = 23
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case wim = 24
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case wstate = 25
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case y = 26
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr1 = 27
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr2 = 28
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr3 = 29
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr4 = 30
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr5 = 31
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr6 = 32
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr7 = 33
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr8 = 34
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr9 = 35
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr10 = 36
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr11 = 37
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr12 = 38
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr13 = 39
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr14 = 40
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr15 = 41
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr16 = 42
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr17 = 43
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr18 = 44
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr19 = 45
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr20 = 46
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr21 = 47
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr22 = 48
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr23 = 49
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr24 = 50
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr25 = 51
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr26 = 52
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr27 = 53
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr28 = 54
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr29 = 55
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr30 = 56
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case asr31 = 57
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c0 = 58
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c1 = 59
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c2 = 60
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c3 = 61
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c4 = 62
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c5 = 63
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c6 = 64
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c7 = 65
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c8 = 66
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c9 = 67
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c10 = 68
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c11 = 69
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c12 = 70
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c13 = 71
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c14 = 72
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c15 = 73
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c16 = 74
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c17 = 75
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c18 = 76
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c19 = 77
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c20 = 78
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c21 = 79
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c22 = 80
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c23 = 81
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c24 = 82
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c25 = 83
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c26 = 84
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c27 = 85
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c28 = 86
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c29 = 87
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c30 = 88
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c31 = 89
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d0 = 90
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d1 = 91
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d2 = 92
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d3 = 93
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d4 = 94
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d5 = 95
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d6 = 96
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d7 = 97
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d8 = 98
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d9 = 99
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d10 = 100
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d11 = 101
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d12 = 102
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d13 = 103
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d14 = 104
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d15 = 105
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d16 = 106
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d17 = 107
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d18 = 108
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d19 = 109
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d20 = 110
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d21 = 111
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d22 = 112
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d23 = 113
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d24 = 114
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d25 = 115
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d26 = 116
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d27 = 117
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d28 = 118
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d29 = 119
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d30 = 120
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case d31 = 121
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f0 = 122
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f1 = 123
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f2 = 124
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f3 = 125
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f4 = 126
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f5 = 127
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f6 = 128
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f7 = 129
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f8 = 130
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f9 = 131
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f10 = 132
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f11 = 133
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f12 = 134
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f13 = 135
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f14 = 136
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f15 = 137
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f16 = 138
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f17 = 139
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f18 = 140
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f19 = 141
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f20 = 142
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f21 = 143
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f22 = 144
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f23 = 145
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f24 = 146
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f25 = 147
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f26 = 148
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f27 = 149
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f28 = 150
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f29 = 151
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f30 = 152
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case f31 = 153
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fcc0 = 154
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fcc1 = 155
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fcc2 = 156
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case fcc3 = 157
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g0 = 158
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g1 = 159
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g2 = 160
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g3 = 161
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g4 = 162
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g5 = 163
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g6 = 164
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g7 = 165
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i0 = 166
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i1 = 167
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i2 = 168
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i3 = 169
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i4 = 170
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i5 = 171
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i6 = 172
    /// extras
    public static let fp = 172
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i7 = 173
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l0 = 174
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l1 = 175
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l2 = 176
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l3 = 177
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l4 = 178
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l5 = 179
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l6 = 180
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l7 = 181
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o0 = 182
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o1 = 183
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o2 = 184
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o3 = 185
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o4 = 186
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o5 = 187
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o6 = 188
    /// extras
    public static let sp = 188
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o7 = 189
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q0 = 190
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q1 = 191
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q2 = 192
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q3 = 193
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q4 = 194
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q5 = 195
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q6 = 196
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q7 = 197
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q8 = 198
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q9 = 199
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q10 = 200
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q11 = 201
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q12 = 202
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q13 = 203
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q14 = 204
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case q15 = 205
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c0C1 = 206
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c2C3 = 207
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c4C5 = 208
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c6C7 = 209
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c8C9 = 210
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c10C11 = 211
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c12C13 = 212
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c14C15 = 213
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c16C17 = 214
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c18C19 = 215
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c20C21 = 216
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c22C23 = 217
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c24C25 = 218
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c26C27 = 219
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c28C29 = 220
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case c30C31 = 221
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g0G1 = 222
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g2G3 = 223
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g4G5 = 224
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case g6G7 = 225
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i0I1 = 226
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i2I3 = 227
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i4I5 = 228
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case i6I7 = 229
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l0L1 = 230
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l2L3 = 231
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l4L5 = 232
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case l6L7 = 233
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o0O1 = 234
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o2O3 = 235
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o4O5 = 236
    /// generated content <SparcGenCSRegEnum.inc> begin clang-format off
    case o6O7 = 237
    /// 238
    case ending = 238
}

#endif
