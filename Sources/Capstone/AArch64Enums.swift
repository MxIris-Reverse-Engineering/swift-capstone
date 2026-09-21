#if CAPSTONE_HAS_AARCH64
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (AArch64)

public enum AArch64At: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e1r = 960
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e1w = 961
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e0r = 962
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e0w = 963
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e1rp = 968
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e1wp = 969
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e1a = 970
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e2r = 9152
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e2w = 9153
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s12e1r = 9156
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s12e1w = 9157
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s12e0r = 9158
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s12e0w = 9159
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e2a = 9162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e3r = 13248
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e3w = 13249
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> end
    case ending = 13250
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_AT> begin clang-format off
    case s1e3a = 13258
}

public enum AArch64Bti: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BTI> begin clang-format off
    case c = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BTI> begin clang-format off
    case j = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BTI> begin clang-format off
    case jc = 6
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BTI> end
    case ending = 7
}

/// Moved from AArch64BaseInfo.h The CondCodes constants map directly to the 4-bit encoding of the condition field for predicated instructions.
public enum AArch64CondCode: UInt32 {
    /// Equal Equal
    case eq = 0
    /// ( Z)
    public static let noneActive = 0
    /// Not equal, or unordered
    case ne = 1
    /// (!Z)
    public static let anyActive = 1
    /// Unsigned higher or same >, ==, or unordered
    case hs = 2
    /// Unsigned lower Less than
    case lo = 3
    /// (!C)
    public static let lastActive = 3
    /// Minus, negative Less than
    case mi = 4
    /// ( N)
    public static let firstActive = 4
    /// Plus, positive or zero >, ==, or unordered
    case pl = 5
    /// Overflow Unordered
    case vs = 6
    /// No overflow Not unordered
    case vc = 7
    /// Unsigned higher Greater than, or unordered
    case hi = 8
    /// Unsigned lower or same Less than or equal
    case ls = 9
    /// Greater than or equal Greater than or equal
    case ge = 10
    /// Less than, or unordered
    case lt = 11
    /// Greater than Greater than
    case gt = 12
    /// Less than or equal <, ==, or unordered
    case le = 13
    /// Always (unconditional) Always (unconditional)
    case al = 14
    /// Always (unconditional) Always (unconditional)
    case nv = 15
    /// Note the NV exists purely to disassemble 0b1111. Execution is "always".
    case invalid = 16
}

public enum AArch64Db: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case oshld = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case oshst = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case osh = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case nshld = 5
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case nshst = 6
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case nsh = 7
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case ishld = 9
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case ishst = 10
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case ish = 11
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case ld = 13
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case st = 14
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> begin clang-format off
    case sy = 15
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DB> end
    case ending = 16
}

public enum AArch64Dbnxs: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DBnXS> begin clang-format off
    case oshnxs = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DBnXS> begin clang-format off
    case nshnxs = 7
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DBnXS> begin clang-format off
    case ishnxs = 11
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DBnXS> begin clang-format off
    case synxs = 15
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DBnXS> end
    case ending = 16
}

public enum AArch64Dc: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case ivac = 945
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case isw = 946
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case igvac = 947
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case igsw = 948
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case igdvac = 949
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case igdsw = 950
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case csw = 978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgsw = 980
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgdsw = 982
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cisw = 1010
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cigsw = 1012
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cigdsw = 1014
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case zva = 7073
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> end
    case ending = 7074
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case gva = 7075
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case gzva = 7076
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cvac = 7121
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgvac = 7123
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgdvac = 7125
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cvau = 7129
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cvap = 7137
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgvap = 7139
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgdvap = 7141
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cvadp = 7145
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgvadp = 7147
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cgdvadp = 7149
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case civac = 7153
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cigvac = 7155
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cigdvac = 7157
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cipae = 9200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_DC> begin clang-format off
    case cigdpae = 9207
}

public enum AArch64Exactfpimm: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> begin clang-format off
    case zero = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> begin clang-format off
    case half = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> begin clang-format off
    case one = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> begin clang-format off
    case two = 3
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> end
    case invalid = 4
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ExactFPImm> end
    case ending = 5
}

/// AArch64 extender type
public enum AArch64Ext: UInt32 {
    case invalid = 0
    case uxtb = 1
    case uxth = 2
    case uxtw = 3
    case uxtx = 4
    case sxtb = 5
    case sxth = 6
    case sxtw = 7
    case sxtx = 8
}

/// Group of AArch64 instructions
public enum AArch64Feature: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasel2vmsa = 144
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasel3 = 145
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasvh = 146
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haslor = 147
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haspauth = 148
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haspauthlr = 149
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasjs = 150
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasccidx = 151
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hascomplxnum = 152
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasnv = 153
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmpam = 154
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasdit = 155
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasam = 157
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassel2 = 158
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasflagm = 160
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfparmv8 = 162
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasneon = 163
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassm4 = 164
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassha3 = 165
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassha2 = 166
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasaes = 167
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasdotprod = 168
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hascrc = 169
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hascssc = 170
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haslse = 171
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasras = 172
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasrdm = 173
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfullfp16 = 174
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfp16fml = 175
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasspe = 176
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfuseaes = 177
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve = 178
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2 = 179
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2p1 = 180
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2aes = 181
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2sm4 = 182
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2sha3 = 183
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2bitperm = 184
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasb16b16 = 185
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme = 186
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmef64f64 = 187
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmef16f16 = 188
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmefa64 = 189
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmei16i64 = 190
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme2 = 191
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme2p1 = 192
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfpmr = 193
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfp8 = 194
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfaminmax = 195
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfp8fma = 196
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfp8dot2 = 198
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfp8dot4 = 200
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haslut = 202
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmef8f16 = 204
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassmef8f32 = 205
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassveorsme = 206
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2orsme = 207
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassve2orsme2 = 208
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasneonorsme = 212
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasrcpc = 213
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasaltnzcv = 214
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasfrint3264 = 215
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassb = 216
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haspredres = 217
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasccdp = 218
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasbti = 219
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmte = 220
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hastme = 221
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasete = 222
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hastrbe = 223
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasbf16 = 224
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmatmulint8 = 225
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmatmulfp32 = 226
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmatmulfp64 = 227
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasxs = 228
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haswfxt = 229
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasls64 = 230
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasbrbe = 231
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hashbc = 233
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmops = 234
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasclrbhb = 235
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasspecres2 = 236
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasite = 237
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasthe = 238
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasrcpc3 = 239
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haslse128 = 240
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasd128 = 241
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haschk = 242
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasgcs = 243
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hascpa = 244
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case usenegativeimmediates = 245
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasamx = 246
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasmul53 = 247
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasapplesys = 248
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hasccpp = 249
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haspan = 250
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case haspsuao = 251
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hascontextidrel2 = 253
}

/// Group of AArch64 instructions
public enum AArch64FeatureHaspan: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case rwv = 252
}

/// Group of AArch64 instructions
public enum AArch64FeatureHasrcpc: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case immo = 161
}

/// Group of AArch64 instructions
public enum AArch64FeatureHassme: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case lutv2 = 203
}

/// Group of AArch64 instructions
public enum AArch64FeatureHasspe: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case eef = 232
}

/// Group of AArch64 instructions
public enum AArch64FeatureHasssve: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case fp8fma = 197
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case fp8dot2 = 199
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case fp8dot4 = 201
}

/// Group of AArch64 instructions
public enum AArch64FeatureHassve2P1Or: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme = 209
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme2 = 210
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case hassme2p1 = 211
}

/// Group of AArch64 instructions
public enum AArch64FeatureHastlb: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case rmi = 159
}

/// Group of AArch64 instructions
public enum AArch64FeatureHastracev8: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _4 = 156
}

/// Group of AArch64 instructions
public enum AArch64FeatureHasv8: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _0a = 128
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _1a = 129
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _2a = 130
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _3a = 131
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _4a = 132
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _5a = 133
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _6a = 134
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _7a = 135
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _8a = 136
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _9a = 137
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _0r = 143
}

/// Group of AArch64 instructions
public enum AArch64FeatureHasv9: UInt32 {
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _0a = 138
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _1a = 139
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _2a = 140
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _3a = 141
    /// generated content <AArch64GenCSFeatureEnum.inc> begin clang-format off
    case _4a = 142
}

/// Group of AArch64 instructions
public enum AArch64Grp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    case call = 2
    case ret = 3
    case int = 4
    /// = CS_GRP_PRIVILEGE
    case privilege = 6
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// <-- mark the end of the list of groups
    case ending = 254
}

public enum AArch64Ic: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_IC> begin clang-format off
    case ialluis = 904
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_IC> begin clang-format off
    case iallu = 936
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_IC> begin clang-format off
    case ivau = 7081
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_IC> end
    case ending = 7082
}

/// AArch64 instruction
public enum AArch64Ins: UInt32 {
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case abs = 1
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adclb = 2
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adclt = 3
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adcs = 4
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adc = 5
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addg = 6
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addha = 7
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addhnb = 8
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addhnt = 9
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addhn = 10
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addhn2 = 11
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addpl = 12
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addpt = 13
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addp = 14
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addqv = 15
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addspl = 16
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addsvl = 17
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adds = 18
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addva = 19
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addvl = 20
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case addv = 21
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case add = 22
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adr = 23
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case adrp = 24
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case aesd = 25
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case aese = 26
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case aesimc = 27
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case aesmc = 28
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case andqv = 29
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ands = 30
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case andv = 31
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case and = 32
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case asrd = 33
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case asrr = 34
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case asr = 35
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case atAs1Elx = 36
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autda = 37
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autdb = 38
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autdza = 39
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autdzb = 40
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autia = 41
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case hint = 42
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autia171615 = 43
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autiasppc = 44
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autib = 45
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autib171615 = 46
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autibsppc = 47
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autiza = 48
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case autizb = 49
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case axflag = 50
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case b = 51
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bcax = 52
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bc = 53
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bdep = 54
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bext = 55
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfdot = 56
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf1cvtl2 = 57
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf1cvtlt = 58
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf1cvtl = 59
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf1cvt = 60
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf2cvtl2 = 61
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf2cvtlt = 62
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf2cvtl = 63
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bf2cvt = 64
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfadd = 65
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfclamp = 66
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfcvt = 67
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfcvtn = 68
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfcvtn2 = 69
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfcvtnt = 70
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmaxnm = 71
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmax = 72
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfminnm = 73
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmin = 74
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlalb = 75
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlalt = 76
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlal = 77
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmla = 78
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlslb = 79
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlslt = 80
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmlsl = 81
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmls = 82
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmmla = 83
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmopa = 84
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmops = 85
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfmul = 86
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfm = 87
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfsub = 88
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bfvdot = 89
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bgrp = 90
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bics = 91
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bic = 92
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bif = 93
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bit = 94
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bl = 95
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case blr = 96
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case blraa = 97
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case blraaz = 98
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case blrab = 99
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case blrabz = 100
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bmopa = 101
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bmops = 102
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case br = 103
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case braa = 104
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case braaz = 105
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brab = 106
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brabz = 107
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brb = 108
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brk = 109
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkas = 110
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brka = 111
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkbs = 112
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkb = 113
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkns = 114
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkn = 115
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkpas = 116
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkpa = 117
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkpbs = 118
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case brkpb = 119
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bsl1n = 120
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bsl2n = 121
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case bsl = 122
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cadd = 123
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casab = 124
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casah = 125
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casalb = 126
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casalh = 127
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casal = 128
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casa = 129
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casb = 130
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cash = 131
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case caslb = 132
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case caslh = 133
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casl = 134
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case caspal = 135
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case caspa = 136
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case caspl = 137
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case casp = 138
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cas = 139
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cbnz = 140
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cbz = 141
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ccmn = 142
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ccmp = 143
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cdot = 144
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cfinv = 145
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case clasta = 146
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case clastb = 147
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case clr = 148
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case clrex = 149
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cls = 150
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case clz = 151
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmeq = 152
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmge = 153
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmgt = 154
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmhi = 155
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmhs = 156
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmla = 157
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmle = 158
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmlt = 159
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmpeq = 160
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmpge = 161
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmpgt = 162
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmphi = 163
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmphs = 164
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmple = 165
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmplo = 166
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmpls = 167
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmplt = 168
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmpne = 169
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cmtst = 170
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cnot = 171
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cntb = 172
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cntd = 173
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cnth = 174
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cntp = 175
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cntw = 176
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cnt = 177
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case compact = 178
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpye = 179
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyen = 180
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyern = 181
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyert = 182
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyertn = 183
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyertrn = 184
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyertwn = 185
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyet = 186
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyetn = 187
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyetrn = 188
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyetwn = 189
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyewn = 190
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyewt = 191
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyewtn = 192
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyewtrn = 193
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyewtwn = 194
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfe = 195
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfen = 196
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfern = 197
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfert = 198
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfertn = 199
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfertrn = 200
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfertwn = 201
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfet = 202
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfetn = 203
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfetrn = 204
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfetwn = 205
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfewn = 206
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfewt = 207
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfewtn = 208
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfewtrn = 209
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfewtwn = 210
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfm = 211
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmn = 212
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmrn = 213
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmrt = 214
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmrtn = 215
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmrtrn = 216
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmrtwn = 217
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmt = 218
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmtn = 219
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmtrn = 220
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmtwn = 221
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmwn = 222
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmwt = 223
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmwtn = 224
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmwtrn = 225
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfmwtwn = 226
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfp = 227
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpn = 228
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfprn = 229
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfprt = 230
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfprtn = 231
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfprtrn = 232
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfprtwn = 233
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpt = 234
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfptn = 235
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfptrn = 236
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfptwn = 237
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpwn = 238
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpwt = 239
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpwtn = 240
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpwtrn = 241
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyfpwtwn = 242
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpym = 243
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymn = 244
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymrn = 245
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymrt = 246
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymrtn = 247
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymrtrn = 248
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymrtwn = 249
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymt = 250
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymtn = 251
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymtrn = 252
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymtwn = 253
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymwn = 254
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymwt = 255
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymwtn = 256
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymwtrn = 257
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpymwtwn = 258
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyp = 259
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypn = 260
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyprn = 261
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyprt = 262
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyprtn = 263
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyprtrn = 264
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyprtwn = 265
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypt = 266
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyptn = 267
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyptrn = 268
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpyptwn = 269
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypwn = 270
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypwt = 271
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypwtn = 272
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypwtrn = 273
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpypwtwn = 274
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case cpy = 275
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32b = 276
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32cb = 277
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32ch = 278
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32cw = 279
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32cx = 280
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32h = 281
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32w = 282
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case crc32x = 283
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case csel = 284
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case csinc = 285
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case csinv = 286
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case csneg = 287
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ctermeq = 288
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ctermne = 289
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ctz = 290
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dcps1 = 291
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dcps2 = 292
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dcps3 = 293
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case decb = 294
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case decd = 295
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dech = 296
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case decp = 297
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case decw = 298
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dmb = 299
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case drps = 300
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dsb = 301
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dupm = 302
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dupq = 303
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case dup = 304
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mov = 305
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eon = 306
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eor3 = 307
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eorbt = 308
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eorqv = 309
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eors = 310
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eortb = 311
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eorv = 312
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eor = 313
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eret = 314
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eretaa = 315
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case eretab = 316
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case extq = 317
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mova = 318
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case extr = 319
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case extrx = 320
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case extry = 321
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ext = 322
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f1cvtl2 = 323
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f1cvtlt = 324
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f1cvtl = 325
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f1cvt = 326
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f2cvtl2 = 327
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f2cvtlt = 328
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f2cvtl = 329
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case f2cvt = 330
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fabd = 331
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fabs = 332
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case facge = 333
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case facgt = 334
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fadda = 335
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fadd = 336
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case faddp = 337
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case faddqv = 338
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case faddv = 339
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case famax = 340
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case famin = 341
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcadd = 342
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fccmp = 343
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fccmpe = 344
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fclamp = 345
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmeq = 346
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmge = 347
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmgt = 348
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmla = 349
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmle = 350
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmlt = 351
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmne = 352
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmp = 353
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmpe = 354
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcmuo = 355
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcpy = 356
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcsel = 357
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtas = 358
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtau = 359
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvt = 360
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtlt = 361
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtl = 362
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtl2 = 363
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtms = 364
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtmu = 365
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtnb = 366
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtns = 367
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtnt = 368
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtnu = 369
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtn = 370
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtn2 = 371
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtps = 372
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtpu = 373
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtxnt = 374
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtxn = 375
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtxn2 = 376
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtx = 377
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtzs = 378
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fcvtzu = 379
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fdiv = 380
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fdivr = 381
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fdot = 382
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fdup = 383
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fexpa = 384
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fjcvtzs = 385
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case flogb = 386
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fma16 = 387
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fma32 = 388
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fma64 = 389
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmadd = 390
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmad = 391
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmax = 392
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxnm = 393
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxnmp = 394
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxnmqv = 395
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxnmv = 396
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxp = 397
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxqv = 398
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmaxv = 399
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmin = 400
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminnm = 401
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminnmp = 402
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminnmqv = 403
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminnmv = 404
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminp = 405
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminqv = 406
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fminv = 407
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlal2 = 408
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlalb = 409
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlallbb = 410
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlallbt = 411
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlalltb = 412
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlalltt = 413
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlall = 414
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlalt = 415
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlal = 416
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmla = 417
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlsl2 = 418
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlslb = 419
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlslt = 420
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmlsl = 421
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmls = 422
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmmla = 423
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmopa = 424
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmops = 425
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmov = 426
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fms16 = 427
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fms32 = 428
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fms64 = 429
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmsb = 430
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmsub = 431
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmul = 432
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fmulx = 433
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fneg = 434
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmadd = 435
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmad = 436
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmla = 437
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmls = 438
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmsb = 439
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmsub = 440
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fnmul = 441
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frecpe = 442
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frecps = 443
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frecpx = 444
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frint32x = 445
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frint32z = 446
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frint64x = 447
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frint64z = 448
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frinta = 449
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frinti = 450
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frintm = 451
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frintn = 452
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frintp = 453
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frintx = 454
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frintz = 455
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frsqrte = 456
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case frsqrts = 457
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fscale = 458
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fsqrt = 459
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fsub = 460
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fsubr = 461
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ftmad = 462
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ftsmul = 463
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ftssel = 464
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fvdotb = 465
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fvdott = 466
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case fvdot = 467
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcspopcx = 468
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcspopm = 469
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcspopx = 470
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcspushm = 471
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcspushx = 472
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcsss1 = 473
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcsss2 = 474
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcsstr = 475
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gcssttr = 476
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case genlut = 477
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case genter = 478
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gexit = 479
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1b = 480
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1d = 481
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1h = 482
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1q = 483
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1sb = 484
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1sh = 485
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1sw = 486
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1w = 487
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1b = 488
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1d = 489
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1h = 490
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1sb = 491
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1sh = 492
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1sw = 493
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldff1w = 494
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case gmi = 495
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case histcnt = 496
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case histseg = 497
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case hlt = 498
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case hvc = 499
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case incb = 500
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case incd = 501
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case inch = 502
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case incp = 503
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case incw = 504
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case index = 505
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case insr = 506
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ins = 507
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case irg = 508
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case isb = 509
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lasta = 510
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lastb = 511
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1 = 512
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rb = 513
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rd = 514
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rh = 515
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rob = 516
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rod = 517
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1roh = 518
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1row = 519
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rqb = 520
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rqd = 521
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rqh = 522
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rqw = 523
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rsb = 524
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rsh = 525
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rsw = 526
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1rw = 527
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld1r = 528
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2b = 529
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2d = 530
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2h = 531
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2q = 532
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2r = 533
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2 = 534
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld2w = 535
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3b = 536
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3d = 537
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3h = 538
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3q = 539
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3r = 540
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3 = 541
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld3w = 542
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4b = 543
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4d = 544
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4 = 545
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4h = 546
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4q = 547
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4r = 548
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld4w = 549
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ld64b = 550
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddab = 551
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddah = 552
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddalb = 553
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddalh = 554
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddal = 555
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldadda = 556
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddb = 557
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddh = 558
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddlb = 559
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddlh = 560
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaddl = 561
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldadd = 562
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldap1 = 563
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaprb = 564
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaprh = 565
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapr = 566
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapurb = 567
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapurh = 568
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapursb = 569
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapursh = 570
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapursw = 571
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldapur = 572
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldarb = 573
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldarh = 574
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldar = 575
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaxp = 576
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaxrb = 577
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaxrh = 578
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldaxr = 579
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrab = 580
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrah = 581
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclralb = 582
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclralh = 583
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclral = 584
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclra = 585
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrb = 586
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrh = 587
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrlb = 588
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrlh = 589
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrl = 590
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrp = 591
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrpa = 592
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrpal = 593
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclrpl = 594
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldclr = 595
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorab = 596
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorah = 597
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeoralb = 598
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeoralh = 599
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeoral = 600
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeora = 601
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorb = 602
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorh = 603
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorlb = 604
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorlh = 605
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeorl = 606
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldeor = 607
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldg = 608
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldgm = 609
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldiapp = 610
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldlarb = 611
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldlarh = 612
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldlar = 613
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1b = 614
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1d = 615
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1h = 616
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1sb = 617
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1sh = 618
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1sw = 619
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnf1w = 620
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnp = 621
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1b = 622
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1d = 623
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1h = 624
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1sb = 625
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1sh = 626
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1sw = 627
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldnt1w = 628
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldp = 629
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldpsw = 630
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldraa = 631
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrab = 632
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrb = 633
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldr = 634
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrh = 635
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrsb = 636
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrsh = 637
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldrsw = 638
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetab = 639
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetah = 640
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetalb = 641
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetalh = 642
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetal = 643
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldseta = 644
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetb = 645
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldseth = 646
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetlb = 647
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetlh = 648
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetl = 649
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetp = 650
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetpa = 651
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetpal = 652
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsetpl = 653
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldset = 654
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxab = 655
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxah = 656
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxalb = 657
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxalh = 658
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxal = 659
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxa = 660
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxb = 661
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxh = 662
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxlb = 663
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxlh = 664
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmaxl = 665
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmax = 666
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminab = 667
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminah = 668
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminalb = 669
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminalh = 670
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminal = 671
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmina = 672
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminb = 673
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminh = 674
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminlb = 675
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminlh = 676
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsminl = 677
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldsmin = 678
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtrb = 679
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtrh = 680
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtrsb = 681
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtrsh = 682
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtrsw = 683
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldtr = 684
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxab = 685
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxah = 686
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxalb = 687
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxalh = 688
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxal = 689
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxa = 690
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxb = 691
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxh = 692
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxlb = 693
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxlh = 694
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumaxl = 695
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumax = 696
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminab = 697
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminah = 698
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminalb = 699
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminalh = 700
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminal = 701
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumina = 702
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminb = 703
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminh = 704
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminlb = 705
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminlh = 706
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lduminl = 707
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldumin = 708
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldurb = 709
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldur = 710
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldurh = 711
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldursb = 712
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldursh = 713
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldursw = 714
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldx = 715
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldxp = 716
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldxrb = 717
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldxrh = 718
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldxr = 719
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldy = 720
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldz = 721
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ldzi = 722
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lslr = 723
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lsl = 724
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lsrr = 725
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case lsr = 726
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case luti2 = 727
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case luti4 = 728
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mac16 = 729
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case maddpt = 730
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case madd = 731
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case madpt = 732
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mad = 733
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case match = 734
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case matfp = 735
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case matint = 736
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mlapt = 737
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mla = 738
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mls = 739
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setge = 740
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgen = 741
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setget = 742
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgetn = 743
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movaz = 744
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movi = 745
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movk = 746
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movn = 747
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movprfx = 748
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movt = 749
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case movz = 750
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mrrs = 751
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mrs = 752
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case msb = 753
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case msr = 754
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case msrr = 755
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case msubpt = 756
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case msub = 757
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mul53hi = 758
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mul53lo = 759
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mul = 760
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case mvni = 761
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nands = 762
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nand = 763
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nbsl = 764
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case neg = 765
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nmatch = 766
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nors = 767
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case nor = 768
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case not = 769
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orns = 770
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orn = 771
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orqv = 772
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orrs = 773
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orr = 774
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case orv = 775
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacda = 776
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacdb = 777
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacdza = 778
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacdzb = 779
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacga = 780
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacia = 781
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacia171615 = 782
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case paciasppc = 783
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacib = 784
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacib171615 = 785
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacibsppc = 786
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case paciza = 787
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacizb = 788
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacnbiasppc = 789
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pacnbibsppc = 790
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pext = 791
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pfalse = 792
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pfirst = 793
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmov = 794
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmullb = 795
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmullt = 796
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmull2 = 797
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmull = 798
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pmul = 799
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case pnext = 800
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfb = 801
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfd = 802
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfh = 803
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfm = 804
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfum = 805
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case prfw = 806
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case psel = 807
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ptest = 808
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ptrues = 809
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ptrue = 810
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case punpkhi = 811
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case punpklo = 812
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case raddhnb = 813
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case raddhnt = 814
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case raddhn = 815
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case raddhn2 = 816
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rax1 = 817
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rbit = 818
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcas = 819
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcasa = 820
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcasal = 821
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcasl = 822
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcasp = 823
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcaspa = 824
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcaspal = 825
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwcaspl = 826
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclr = 827
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclra = 828
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclral = 829
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclrl = 830
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclrp = 831
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclrpa = 832
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclrpal = 833
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwclrpl = 834
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclr = 835
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclra = 836
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclral = 837
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclrl = 838
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclrp = 839
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclrpa = 840
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclrpal = 841
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsclrpl = 842
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscas = 843
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscasa = 844
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscasal = 845
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscasl = 846
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscasp = 847
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscaspa = 848
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscaspal = 849
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwscaspl = 850
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwset = 851
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwseta = 852
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetal = 853
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetl = 854
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetp = 855
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetpa = 856
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetpal = 857
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsetpl = 858
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsset = 859
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsseta = 860
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetal = 861
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetl = 862
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetp = 863
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetpa = 864
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetpal = 865
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwssetpl = 866
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswp = 867
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswpa = 868
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswpal = 869
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswpl = 870
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswpp = 871
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswppa = 872
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswppal = 873
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwswppl = 874
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswp = 875
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswpa = 876
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswpal = 877
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswpl = 878
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswpp = 879
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswppa = 880
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswppal = 881
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rcwsswppl = 882
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rdffrs = 883
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rdffr = 884
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rdsvl = 885
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rdvl = 886
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ret = 887
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case retaa = 888
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case retaasppc = 889
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case retab = 890
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case retabsppc = 891
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rev16 = 892
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rev32 = 893
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rev64 = 894
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case revb = 895
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case revd = 896
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case revh = 897
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case revw = 898
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rev = 899
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rmif = 900
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ror = 901
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rprfm = 902
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rshrnb = 903
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rshrnt = 904
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rshrn2 = 905
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rshrn = 906
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rsubhnb = 907
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rsubhnt = 908
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rsubhn = 909
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case rsubhn2 = 910
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabalb = 911
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabalt = 912
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabal2 = 913
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabal = 914
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saba = 915
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabdlb = 916
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabdlt = 917
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabdl2 = 918
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabdl = 919
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sabd = 920
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sadalp = 921
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddlbt = 922
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddlb = 923
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddlp = 924
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddlt = 925
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddlv = 926
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddl2 = 927
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddl = 928
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddv = 929
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddwb = 930
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddwt = 931
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddw2 = 932
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case saddw = 933
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sb = 934
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sbclb = 935
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sbclt = 936
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sbcs = 937
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sbc = 938
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sbfm = 939
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sclamp = 940
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case scvtf = 941
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sdivr = 942
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sdiv = 943
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sdot = 944
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sdsb = 945
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sel = 946
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case set = 947
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sete = 948
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case seten = 949
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setet = 950
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setetn = 951
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setf16 = 952
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setf8 = 953
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setffr = 954
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgm = 955
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgmn = 956
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgmt = 957
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgmtn = 958
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgp = 959
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgpn = 960
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgpt = 961
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setgptn = 962
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setm = 963
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setmn = 964
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setmt = 965
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setmtn = 966
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setp = 967
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setpn = 968
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setpt = 969
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case setptn = 970
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1c = 971
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1h = 972
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1m = 973
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1p = 974
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1su0 = 975
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha1su1 = 976
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha256h2 = 977
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha256h = 978
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha256su0 = 979
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha256su1 = 980
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha512h = 981
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha512h2 = 982
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha512su0 = 983
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sha512su1 = 984
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shadd = 985
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shll2 = 986
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shll = 987
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shl = 988
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shrnb = 989
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shrnt = 990
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shrn2 = 991
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shrn = 992
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shsubr = 993
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case shsub = 994
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sli = 995
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3partw1 = 996
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3partw2 = 997
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3ss1 = 998
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3tt1a = 999
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3tt1b = 1000
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3tt2a = 1001
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm3tt2b = 1002
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm4e = 1003
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sm4ekey = 1004
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smaddl = 1005
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smaxp = 1006
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smaxqv = 1007
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smaxv = 1008
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smax = 1009
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smc = 1010
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sminp = 1011
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sminqv = 1012
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sminv = 1013
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smin = 1014
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlalb = 1015
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlall = 1016
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlalt = 1017
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlal = 1018
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlal2 = 1019
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlslb = 1020
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlsll = 1021
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlslt = 1022
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlsl = 1023
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smlsl2 = 1024
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smmla = 1025
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smopa = 1026
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smops = 1027
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smov = 1028
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smsubl = 1029
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smulh = 1030
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smullb = 1031
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smullt = 1032
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smull2 = 1033
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case smull = 1034
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case splice = 1035
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqabs = 1036
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqadd = 1037
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqcadd = 1038
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqcvtn = 1039
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqcvtun = 1040
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqcvtu = 1041
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqcvt = 1042
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdecb = 1043
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdecd = 1044
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdech = 1045
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdecp = 1046
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdecw = 1047
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlalbt = 1048
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlalb = 1049
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlalt = 1050
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlal = 1051
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlal2 = 1052
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlslbt = 1053
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlslb = 1054
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlslt = 1055
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlsl = 1056
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmlsl2 = 1057
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmulh = 1058
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmullb = 1059
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmullt = 1060
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmull = 1061
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqdmull2 = 1062
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqincb = 1063
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqincd = 1064
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqinch = 1065
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqincp = 1066
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqincw = 1067
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqneg = 1068
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrdcmlah = 1069
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrdmlah = 1070
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrdmlsh = 1071
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrdmulh = 1072
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshlr = 1073
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshl = 1074
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrnb = 1075
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrnt = 1076
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrn = 1077
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrn2 = 1078
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrunb = 1079
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrunt = 1080
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrun = 1081
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshrun2 = 1082
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshru = 1083
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqrshr = 1084
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshlr = 1085
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshlu = 1086
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshl = 1087
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrnb = 1088
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrnt = 1089
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrn = 1090
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrn2 = 1091
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrunb = 1092
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrunt = 1093
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrun = 1094
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqshrun2 = 1095
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqsubr = 1096
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqsub = 1097
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtnb = 1098
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtnt = 1099
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtn2 = 1100
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtn = 1101
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtunb = 1102
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtunt = 1103
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtun2 = 1104
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sqxtun = 1105
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case srhadd = 1106
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sri = 1107
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case srshlr = 1108
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case srshl = 1109
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case srshr = 1110
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case srsra = 1111
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshllb = 1112
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshllt = 1113
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshll2 = 1114
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshll = 1115
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshl = 1116
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sshr = 1117
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssra = 1118
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1b = 1119
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1d = 1120
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1h = 1121
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1q = 1122
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1w = 1123
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssublbt = 1124
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssublb = 1125
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubltb = 1126
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssublt = 1127
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubl2 = 1128
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubl = 1129
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubwb = 1130
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubwt = 1131
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubw2 = 1132
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ssubw = 1133
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st1 = 1134
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2b = 1135
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2d = 1136
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2g = 1137
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2h = 1138
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2q = 1139
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2 = 1140
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st2w = 1141
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3b = 1142
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3d = 1143
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3h = 1144
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3q = 1145
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3 = 1146
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st3w = 1147
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4b = 1148
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4d = 1149
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4 = 1150
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4h = 1151
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4q = 1152
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st4w = 1153
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st64b = 1154
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st64bv = 1155
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case st64bv0 = 1156
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stgm = 1157
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stgp = 1158
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stg = 1159
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stilp = 1160
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stl1 = 1161
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stllrb = 1162
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stllrh = 1163
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stllr = 1164
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlrb = 1165
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlrh = 1166
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlr = 1167
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlurb = 1168
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlurh = 1169
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlur = 1170
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlxp = 1171
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlxrb = 1172
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlxrh = 1173
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stlxr = 1174
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stnp = 1175
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stnt1b = 1176
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stnt1d = 1177
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stnt1h = 1178
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stnt1w = 1179
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stp = 1180
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case strb = 1181
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case str = 1182
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case strh = 1183
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sttrb = 1184
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sttrh = 1185
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sttr = 1186
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sturb = 1187
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stur = 1188
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sturh = 1189
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stx = 1190
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stxp = 1191
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stxrb = 1192
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stxrh = 1193
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stxr = 1194
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sty = 1195
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stz = 1196
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stz2g = 1197
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stzgm = 1198
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stzg = 1199
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case stzi = 1200
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subg = 1201
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subhnb = 1202
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subhnt = 1203
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subhn = 1204
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subhn2 = 1205
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subp = 1206
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subps = 1207
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subpt = 1208
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subr = 1209
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case subs = 1210
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sub = 1211
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sudot = 1212
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sumlall = 1213
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sumopa = 1214
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sumops = 1215
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sunpkhi = 1216
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sunpklo = 1217
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sunpk = 1218
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case suqadd = 1219
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case suvdot = 1220
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case svc = 1221
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case svdot = 1222
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpab = 1223
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpah = 1224
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpalb = 1225
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpalh = 1226
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpal = 1227
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpa = 1228
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpb = 1229
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swph = 1230
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swplb = 1231
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swplh = 1232
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpl = 1233
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swpp = 1234
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swppa = 1235
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swppal = 1236
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swppl = 1237
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case swp = 1238
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sxtb = 1239
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sxth = 1240
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sxtw = 1241
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sysl = 1242
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sysp = 1243
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case sys = 1244
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tblq = 1245
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tbl = 1246
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tbnz = 1247
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tbxq = 1248
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tbx = 1249
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tbz = 1250
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tcancel = 1251
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tcommit = 1252
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case trcit = 1253
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case trn1 = 1254
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case trn2 = 1255
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tsb = 1256
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case tstart = 1257
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ttest = 1258
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabalb = 1259
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabalt = 1260
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabal2 = 1261
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabal = 1262
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaba = 1263
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabdlb = 1264
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabdlt = 1265
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabdl2 = 1266
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabdl = 1267
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uabd = 1268
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uadalp = 1269
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddlb = 1270
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddlp = 1271
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddlt = 1272
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddlv = 1273
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddl2 = 1274
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddl = 1275
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddv = 1276
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddwb = 1277
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddwt = 1278
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddw2 = 1279
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uaddw = 1280
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ubfm = 1281
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uclamp = 1282
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ucvtf = 1283
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case udf = 1284
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case udivr = 1285
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case udiv = 1286
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case udot = 1287
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uhadd = 1288
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uhsubr = 1289
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uhsub = 1290
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umaddl = 1291
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umaxp = 1292
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umaxqv = 1293
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umaxv = 1294
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umax = 1295
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uminp = 1296
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uminqv = 1297
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uminv = 1298
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umin = 1299
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlalb = 1300
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlall = 1301
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlalt = 1302
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlal = 1303
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlal2 = 1304
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlslb = 1305
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlsll = 1306
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlslt = 1307
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlsl = 1308
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umlsl2 = 1309
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ummla = 1310
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umopa = 1311
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umops = 1312
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umov = 1313
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umsubl = 1314
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umulh = 1315
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umullb = 1316
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umullt = 1317
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umull2 = 1318
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case umull = 1319
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqadd = 1320
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqcvtn = 1321
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqcvt = 1322
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqdecb = 1323
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqdecd = 1324
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqdech = 1325
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqdecp = 1326
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqdecw = 1327
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqincb = 1328
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqincd = 1329
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqinch = 1330
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqincp = 1331
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqincw = 1332
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshlr = 1333
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshl = 1334
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshrnb = 1335
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshrnt = 1336
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshrn = 1337
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshrn2 = 1338
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqrshr = 1339
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshlr = 1340
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshl = 1341
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshrnb = 1342
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshrnt = 1343
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshrn = 1344
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqshrn2 = 1345
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqsubr = 1346
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqsub = 1347
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqxtnb = 1348
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqxtnt = 1349
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqxtn2 = 1350
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uqxtn = 1351
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case urecpe = 1352
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case urhadd = 1353
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case urshlr = 1354
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case urshl = 1355
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case urshr = 1356
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ursqrte = 1357
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ursra = 1358
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usdot = 1359
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushllb = 1360
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushllt = 1361
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushll2 = 1362
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushll = 1363
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushl = 1364
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case ushr = 1365
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usmlall = 1366
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usmmla = 1367
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usmopa = 1368
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usmops = 1369
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usqadd = 1370
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usra = 1371
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usublb = 1372
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usublt = 1373
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubl2 = 1374
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubl = 1375
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubwb = 1376
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubwt = 1377
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubw2 = 1378
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usubw = 1379
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case usvdot = 1380
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uunpkhi = 1381
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uunpklo = 1382
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uunpk = 1383
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uvdot = 1384
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uxtb = 1385
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uxth = 1386
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uxtw = 1387
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uzp1 = 1388
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uzp2 = 1389
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uzpq1 = 1390
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uzpq2 = 1391
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case uzp = 1392
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case vecfp = 1393
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case vecint = 1394
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case wfet = 1395
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case wfit = 1396
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilege = 1397
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilegt = 1398
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilehi = 1399
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilehs = 1400
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilele = 1401
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilelo = 1402
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilels = 1403
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilelt = 1404
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilerw = 1405
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case whilewr = 1406
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case wkdmc = 1407
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case wkdmd = 1408
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case wrffr = 1409
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xaflag = 1410
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xar = 1411
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xpacd = 1412
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xpaci = 1413
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xtn2 = 1414
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case xtn = 1415
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zero = 1416
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zip1 = 1417
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zip2 = 1418
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zipq1 = 1419
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zipq2 = 1420
    /// generated content <AArch64GenCSInsnEnum.inc> begin clang-format off
    case zip = 1421
    /// <-- mark the end of the list of insn
    case ending = 1422
    case aliasBegin = 1423
    /// Real instr.: AARCH64_ADDPT_shift
    case aliasAddpt = 1424
    /// Real instr.: AARCH64_HINT
    case aliasGcsb = 1425
    /// Real instr.: AARCH64_GCSPOPM
    case aliasGcspopm = 1426
    /// Real instr.: AARCH64_LDAPURbi
    case aliasLdapur = 1427
    /// Real instr.: AARCH64_STLLRB
    case aliasStllrb = 1428
    /// Real instr.: AARCH64_STLLRH
    case aliasStllrh = 1429
    /// Real instr.: AARCH64_STLLRW
    case aliasStllr = 1430
    /// Real instr.: AARCH64_STLRB
    case aliasStlrb = 1431
    /// Real instr.: AARCH64_STLRH
    case aliasStlrh = 1432
    /// Real instr.: AARCH64_STLRW
    case aliasStlr = 1433
    /// Real instr.: AARCH64_STLURbi
    case aliasStlur = 1434
    /// Real instr.: AARCH64_SUBPT_shift
    case aliasSubpt = 1435
    /// Real instr.: AARCH64_LDRAAindexed
    case aliasLdraa = 1436
    /// Real instr.: AARCH64_ADDWrs
    case aliasAdd = 1437
    /// Real instr.: AARCH64_ADDSWri
    case aliasCmn = 1438
    /// Real instr.: AARCH64_ADDSWrs
    case aliasAdds = 1439
    /// Real instr.: AARCH64_ANDWrs
    case aliasAnd = 1440
    /// Real instr.: AARCH64_ANDSWrs
    case aliasAnds = 1441
    /// Real instr.: AARCH64_LDRXui
    case aliasLdr = 1442
    /// Real instr.: AARCH64_STRBui
    case aliasStr = 1443
    /// Real instr.: AARCH64_LDRBBroX
    case aliasLdrb = 1444
    /// Real instr.: AARCH64_STRBBroX
    case aliasStrb = 1445
    /// Real instr.: AARCH64_LDRHHroX
    case aliasLdrh = 1446
    /// Real instr.: AARCH64_STRHHroX
    case aliasStrh = 1447
    /// Real instr.: AARCH64_PRFMroX
    case aliasPrfm = 1448
    /// Real instr.: AARCH64_LDAPURBi
    case aliasLdapurb = 1449
    /// Real instr.: AARCH64_STLURBi
    case aliasStlurb = 1450
    /// Real instr.: AARCH64_LDURXi
    case aliasLdur = 1451
    /// Real instr.: AARCH64_STURXi
    case aliasStur = 1452
    /// Real instr.: AARCH64_PRFUMi
    case aliasPrfum = 1453
    /// Real instr.: AARCH64_LDTRXi
    case aliasLdtr = 1454
    /// Real instr.: AARCH64_STTRWi
    case aliasSttr = 1455
    /// Real instr.: AARCH64_LDPWi
    case aliasLdp = 1456
    /// Real instr.: AARCH64_STGPi
    case aliasStgp = 1457
    /// Real instr.: AARCH64_LDNPWi
    case aliasLdnp = 1458
    /// Real instr.: AARCH64_STNPWi
    case aliasStnp = 1459
    /// Real instr.: AARCH64_STGi
    case aliasStg = 1460
    /// Real instr.: AARCH64_UMOVvi32_idx0
    case aliasMov = 1461
    /// Real instr.: AARCH64_LD1Onev16b_POST
    case aliasLd1 = 1462
    /// Real instr.: AARCH64_LD1Rv8b_POST
    case aliasLd1R = 1463
    /// Real instr.: AARCH64_LDADDLB
    case aliasStaddlb = 1464
    /// Real instr.: AARCH64_LDADDLH
    case aliasStaddlh = 1465
    /// Real instr.: AARCH64_LDADDLW
    case aliasStaddl = 1466
    /// Real instr.: AARCH64_LDADDB
    case aliasStaddb = 1467
    /// Real instr.: AARCH64_LDADDH
    case aliasStaddh = 1468
    /// Real instr.: AARCH64_LDADDW
    case aliasStadd = 1469
    /// Real instr.: AARCH64_PTRUE_B
    case aliasPtrue = 1470
    /// Real instr.: AARCH64_PTRUES_B
    case aliasPtrues = 1471
    /// Real instr.: AARCH64_CNTB_XPiI
    case aliasCntb = 1472
    /// Real instr.: AARCH64_SQINCH_ZPiI
    case aliasSqinch = 1473
    /// Real instr.: AARCH64_INCB_XPiI
    case aliasIncb = 1474
    /// Real instr.: AARCH64_SQINCB_XPiWdI
    case aliasSqincb = 1475
    /// Real instr.: AARCH64_UQINCB_WPiI
    case aliasUqincb = 1476
    /// Real instr.: AARCH64_ORR_ZI
    case aliasOrr = 1477
    /// Real instr.: AARCH64_DUPM_ZI
    case aliasDupm = 1478
    /// Real instr.: AARCH64_DUP_ZI_H
    case aliasFmov = 1479
    /// Real instr.: AARCH64_EOR3_ZZZZ
    case aliasEor3 = 1480
    /// Real instr.: AARCH64_ST1B_IMM
    case aliasSt1B = 1481
    /// Real instr.: AARCH64_ST2B_IMM
    case aliasSt2B = 1482
    /// Real instr.: AARCH64_ST2Q_IMM
    case aliasSt2Q = 1483
    /// Real instr.: AARCH64_STNT1B_ZRI
    case aliasStnt1B = 1484
    /// Real instr.: AARCH64_LD1B_IMM
    case aliasLd1B = 1485
    /// Real instr.: AARCH64_LDNT1B_ZRI
    case aliasLdnt1B = 1486
    /// Real instr.: AARCH64_LD1RQ_B_IMM
    case aliasLd1Rqb = 1487
    /// Real instr.: AARCH64_LD1RB_IMM
    case aliasLd1Rb = 1488
    /// Real instr.: AARCH64_LDFF1B_REAL
    case aliasLdff1B = 1489
    /// Real instr.: AARCH64_LDNF1B_IMM_REAL
    case aliasLdnf1B = 1490
    /// Real instr.: AARCH64_LD2B_IMM
    case aliasLd2B = 1491
    /// Real instr.: AARCH64_GLD1SB_S_IMM_REAL
    case aliasLd1Sb = 1492
    /// Real instr.: AARCH64_PRFB_PRI
    case aliasPrfb = 1493
    /// Real instr.: AARCH64_LDNT1SB_ZZR_S_REAL
    case aliasLdnt1Sb = 1494
    /// Real instr.: AARCH64_LD1RO_B_IMM
    case aliasLd1Rob = 1495
    /// Real instr.: AARCH64_GLD1Q
    case aliasLd1Q = 1496
    /// Real instr.: AARCH64_SST1Q
    case aliasSt1Q = 1497
    /// Real instr.: AARCH64_LD1W_Q_IMM
    case aliasLd1W = 1498
    /// Real instr.: AARCH64_PMOV_PZI_B
    case aliasPmov = 1499
    /// Real instr.: AARCH64_MSRpstatesvcrImm1
    case aliasSmstart = 1500
    /// Real instr.: AARCH64_MSRpstatesvcrImm1
    case aliasSmstop = 1501
    /// Real instr.: AARCH64_ZERO_M
    case aliasZero = 1502
    /// Real instr.: AARCH64_MOVT
    case aliasMovt = 1503
    /// Real instr.: AARCH64_HINT
    case aliasNop = 1504
    /// Real instr.: AARCH64_HINT
    case aliasYield = 1505
    /// Real instr.: AARCH64_HINT
    case aliasWfe = 1506
    /// Real instr.: AARCH64_HINT
    case aliasWfi = 1507
    /// Real instr.: AARCH64_HINT
    case aliasSev = 1508
    /// Real instr.: AARCH64_HINT
    case aliasSevl = 1509
    /// Real instr.: AARCH64_HINT
    case aliasDgh = 1510
    /// Real instr.: AARCH64_HINT
    case aliasEsb = 1511
    /// Real instr.: AARCH64_HINT
    case aliasCsdb = 1512
    /// Real instr.: AARCH64_HINT
    case aliasBti = 1513
    /// Real instr.: AARCH64_HINT
    case aliasPsb = 1514
    /// Real instr.: AARCH64_CHKFEAT
    case aliasChkfeat = 1515
    /// Real instr.: AARCH64_PACIAZ
    case aliasPaciaz = 1516
    /// Real instr.: AARCH64_PACIBZ
    case aliasPacibz = 1517
    /// Real instr.: AARCH64_AUTIAZ
    case aliasAutiaz = 1518
    /// Real instr.: AARCH64_AUTIBZ
    case aliasAutibz = 1519
    /// Real instr.: AARCH64_PACIASP
    case aliasPaciasp = 1520
    /// Real instr.: AARCH64_PACIBSP
    case aliasPacibsp = 1521
    /// Real instr.: AARCH64_AUTIASP
    case aliasAutiasp = 1522
    /// Real instr.: AARCH64_AUTIBSP
    case aliasAutibsp = 1523
    /// Real instr.: AARCH64_PACIA1716
    case aliasPacia1716 = 1524
    /// Real instr.: AARCH64_PACIB1716
    case aliasPacib1716 = 1525
    /// Real instr.: AARCH64_AUTIA1716
    case aliasAutia1716 = 1526
    /// Real instr.: AARCH64_AUTIB1716
    case aliasAutib1716 = 1527
    /// Real instr.: AARCH64_XPACLRI
    case aliasXpaclri = 1528
    /// Real instr.: AARCH64_LDRABindexed
    case aliasLdrab = 1529
    /// Real instr.: AARCH64_PACM
    case aliasPacm = 1530
    /// Real instr.: AARCH64_CLREX
    case aliasClrex = 1531
    /// Real instr.: AARCH64_ISB
    case aliasIsb = 1532
    /// Real instr.: AARCH64_DSB
    case aliasSsbb = 1533
    /// Real instr.: AARCH64_DSB
    case aliasPssbb = 1534
    /// Real instr.: AARCH64_DSB
    case aliasDfb = 1535
    /// Real instr.: AARCH64_SYSxt
    case aliasSys = 1536
    /// Real instr.: AARCH64_MOVNWi
    case aliasMovn = 1537
    /// Real instr.: AARCH64_MOVZWi
    case aliasMovz = 1538
    /// Real instr.: AARCH64_SBCWr
    case aliasNgc = 1539
    /// Real instr.: AARCH64_SBCSWr
    case aliasNgcs = 1540
    /// Real instr.: AARCH64_SUBWrs
    case aliasSub = 1541
    /// Real instr.: AARCH64_SUBSWri
    case aliasCmp = 1542
    /// Real instr.: AARCH64_SUBSWrs
    case aliasSubs = 1543
    /// Real instr.: AARCH64_SUBWrs
    case aliasNeg = 1544
    /// Real instr.: AARCH64_SUBSWrs
    case aliasNegs = 1545
    /// Real instr.: AARCH64_MADDWrrr
    case aliasMul = 1546
    /// Real instr.: AARCH64_MSUBWrrr
    case aliasMneg = 1547
    /// Real instr.: AARCH64_SMADDLrrr
    case aliasSmull = 1548
    /// Real instr.: AARCH64_SMSUBLrrr
    case aliasSmnegl = 1549
    /// Real instr.: AARCH64_UMADDLrrr
    case aliasUmull = 1550
    /// Real instr.: AARCH64_UMSUBLrrr
    case aliasUmnegl = 1551
    /// Real instr.: AARCH64_LDCLRLB
    case aliasStclrlb = 1552
    /// Real instr.: AARCH64_LDCLRLH
    case aliasStclrlh = 1553
    /// Real instr.: AARCH64_LDCLRLW
    case aliasStclrl = 1554
    /// Real instr.: AARCH64_LDCLRB
    case aliasStclrb = 1555
    /// Real instr.: AARCH64_LDCLRH
    case aliasStclrh = 1556
    /// Real instr.: AARCH64_LDCLRW
    case aliasStclr = 1557
    /// Real instr.: AARCH64_LDEORLB
    case aliasSteorlb = 1558
    /// Real instr.: AARCH64_LDEORLH
    case aliasSteorlh = 1559
    /// Real instr.: AARCH64_LDEORLW
    case aliasSteorl = 1560
    /// Real instr.: AARCH64_LDEORB
    case aliasSteorb = 1561
    /// Real instr.: AARCH64_LDEORH
    case aliasSteorh = 1562
    /// Real instr.: AARCH64_LDEORW
    case aliasSteor = 1563
    /// Real instr.: AARCH64_LDSETLB
    case aliasStsetlb = 1564
    /// Real instr.: AARCH64_LDSETLH
    case aliasStsetlh = 1565
    /// Real instr.: AARCH64_LDSETLW
    case aliasStsetl = 1566
    /// Real instr.: AARCH64_LDSETB
    case aliasStsetb = 1567
    /// Real instr.: AARCH64_LDSETH
    case aliasStseth = 1568
    /// Real instr.: AARCH64_LDSETW
    case aliasStset = 1569
    /// Real instr.: AARCH64_LDSMAXLB
    case aliasStsmaxlb = 1570
    /// Real instr.: AARCH64_LDSMAXLH
    case aliasStsmaxlh = 1571
    /// Real instr.: AARCH64_LDSMAXLW
    case aliasStsmaxl = 1572
    /// Real instr.: AARCH64_LDSMAXB
    case aliasStsmaxb = 1573
    /// Real instr.: AARCH64_LDSMAXH
    case aliasStsmaxh = 1574
    /// Real instr.: AARCH64_LDSMAXW
    case aliasStsmax = 1575
    /// Real instr.: AARCH64_LDSMINLB
    case aliasStsminlb = 1576
    /// Real instr.: AARCH64_LDSMINLH
    case aliasStsminlh = 1577
    /// Real instr.: AARCH64_LDSMINLW
    case aliasStsminl = 1578
    /// Real instr.: AARCH64_LDSMINB
    case aliasStsminb = 1579
    /// Real instr.: AARCH64_LDSMINH
    case aliasStsminh = 1580
    /// Real instr.: AARCH64_LDSMINW
    case aliasStsmin = 1581
    /// Real instr.: AARCH64_LDUMAXLB
    case aliasStumaxlb = 1582
    /// Real instr.: AARCH64_LDUMAXLH
    case aliasStumaxlh = 1583
    /// Real instr.: AARCH64_LDUMAXLW
    case aliasStumaxl = 1584
    /// Real instr.: AARCH64_LDUMAXB
    case aliasStumaxb = 1585
    /// Real instr.: AARCH64_LDUMAXH
    case aliasStumaxh = 1586
    /// Real instr.: AARCH64_LDUMAXW
    case aliasStumax = 1587
    /// Real instr.: AARCH64_LDUMINLB
    case aliasStuminlb = 1588
    /// Real instr.: AARCH64_LDUMINLH
    case aliasStuminlh = 1589
    /// Real instr.: AARCH64_LDUMINLW
    case aliasStuminl = 1590
    /// Real instr.: AARCH64_LDUMINB
    case aliasStuminb = 1591
    /// Real instr.: AARCH64_LDUMINH
    case aliasStuminh = 1592
    /// Real instr.: AARCH64_LDUMINW
    case aliasStumin = 1593
    /// Real instr.: AARCH64_IRG
    case aliasIrg = 1594
    /// Real instr.: AARCH64_LDG
    case aliasLdg = 1595
    /// Real instr.: AARCH64_STZGi
    case aliasStzg = 1596
    /// Real instr.: AARCH64_ST2Gi
    case aliasSt2G = 1597
    /// Real instr.: AARCH64_STZ2Gi
    case aliasStz2G = 1598
    /// Real instr.: AARCH64_BICSWrs
    case aliasBics = 1599
    /// Real instr.: AARCH64_BICWrs
    case aliasBic = 1600
    /// Real instr.: AARCH64_EONWrs
    case aliasEon = 1601
    /// Real instr.: AARCH64_EORWrs
    case aliasEor = 1602
    /// Real instr.: AARCH64_ORNWrs
    case aliasOrn = 1603
    /// Real instr.: AARCH64_ORNWrs
    case aliasMvn = 1604
    /// Real instr.: AARCH64_ANDSWri
    case aliasTst = 1605
    /// Real instr.: AARCH64_EXTRWrri
    case aliasRor = 1606
    /// Real instr.: AARCH64_SBFMWri
    case aliasAsr = 1607
    /// Real instr.: AARCH64_SBFMWri
    case aliasSxtb = 1608
    /// Real instr.: AARCH64_SBFMWri
    case aliasSxth = 1609
    /// Real instr.: AARCH64_SBFMXri
    case aliasSxtw = 1610
    /// Real instr.: AARCH64_UBFMWri
    case aliasLsr = 1611
    /// Real instr.: AARCH64_UBFMWri
    case aliasUxtb = 1612
    /// Real instr.: AARCH64_UBFMWri
    case aliasUxth = 1613
    /// Real instr.: AARCH64_UBFMXri
    case aliasUxtw = 1614
    /// Real instr.: AARCH64_CSINCWr
    case aliasCset = 1615
    /// Real instr.: AARCH64_CSINVWr
    case aliasCsetm = 1616
    /// Real instr.: AARCH64_CSINCWr
    case aliasCinc = 1617
    /// Real instr.: AARCH64_CSINVWr
    case aliasCinv = 1618
    /// Real instr.: AARCH64_CSNEGWr
    case aliasCneg = 1619
    /// Real instr.: AARCH64_RET
    case aliasRet = 1620
    /// Real instr.: AARCH64_DCPS1
    case aliasDcps1 = 1621
    /// Real instr.: AARCH64_DCPS2
    case aliasDcps2 = 1622
    /// Real instr.: AARCH64_DCPS3
    case aliasDcps3 = 1623
    /// Real instr.: AARCH64_LDPSWi
    case aliasLdpsw = 1624
    /// Real instr.: AARCH64_LDRSHWroX
    case aliasLdrsh = 1625
    /// Real instr.: AARCH64_LDRSBWroX
    case aliasLdrsb = 1626
    /// Real instr.: AARCH64_LDRSWroX
    case aliasLdrsw = 1627
    /// Real instr.: AARCH64_LDURHHi
    case aliasLdurh = 1628
    /// Real instr.: AARCH64_LDURBBi
    case aliasLdurb = 1629
    /// Real instr.: AARCH64_LDURSHWi
    case aliasLdursh = 1630
    /// Real instr.: AARCH64_LDURSBWi
    case aliasLdursb = 1631
    /// Real instr.: AARCH64_LDURSWi
    case aliasLdursw = 1632
    /// Real instr.: AARCH64_LDTRHi
    case aliasLdtrh = 1633
    /// Real instr.: AARCH64_LDTRBi
    case aliasLdtrb = 1634
    /// Real instr.: AARCH64_LDTRSHWi
    case aliasLdtrsh = 1635
    /// Real instr.: AARCH64_LDTRSBWi
    case aliasLdtrsb = 1636
    /// Real instr.: AARCH64_LDTRSWi
    case aliasLdtrsw = 1637
    /// Real instr.: AARCH64_STPWi
    case aliasStp = 1638
    /// Real instr.: AARCH64_STURHHi
    case aliasSturh = 1639
    /// Real instr.: AARCH64_STURBBi
    case aliasSturb = 1640
    /// Real instr.: AARCH64_STLURHi
    case aliasStlurh = 1641
    /// Real instr.: AARCH64_LDAPURSBWi
    case aliasLdapursb = 1642
    /// Real instr.: AARCH64_LDAPURHi
    case aliasLdapurh = 1643
    /// Real instr.: AARCH64_LDAPURSHWi
    case aliasLdapursh = 1644
    /// Real instr.: AARCH64_LDAPURSWi
    case aliasLdapursw = 1645
    /// Real instr.: AARCH64_STTRHi
    case aliasSttrh = 1646
    /// Real instr.: AARCH64_STTRBi
    case aliasSttrb = 1647
    /// Real instr.: AARCH64_BICv4i16
    case aliasBic4H = 1648
    /// Real instr.: AARCH64_BICv8i16
    case aliasBic8H = 1649
    /// Real instr.: AARCH64_BICv2i32
    case aliasBic2S = 1650
    /// Real instr.: AARCH64_BICv4i32
    case aliasBic4S = 1651
    /// Real instr.: AARCH64_ORRv4i16
    case aliasOrr4H = 1652
    /// Real instr.: AARCH64_ORRv8i16
    case aliasOrr8H = 1653
    /// Real instr.: AARCH64_ORRv2i32
    case aliasOrr2S = 1654
    /// Real instr.: AARCH64_ORRv4i32
    case aliasOrr4S = 1655
    /// Real instr.: AARCH64_SSHLLv8i8_shift
    case aliasSxtl8H = 1656
    /// Real instr.: AARCH64_SSHLLv8i8_shift
    case aliasSxtl = 1657
    /// Real instr.: AARCH64_SSHLLv4i16_shift
    case aliasSxtl4S = 1658
    /// Real instr.: AARCH64_SSHLLv2i32_shift
    case aliasSxtl2D = 1659
    /// Real instr.: AARCH64_SSHLLv16i8_shift
    case aliasSxtl28H = 1660
    /// Real instr.: AARCH64_SSHLLv16i8_shift
    case aliasSxtl2 = 1661
    /// Real instr.: AARCH64_SSHLLv8i16_shift
    case aliasSxtl24S = 1662
    /// Real instr.: AARCH64_SSHLLv4i32_shift
    case aliasSxtl22D = 1663
    /// Real instr.: AARCH64_USHLLv8i8_shift
    case aliasUxtl8H = 1664
    /// Real instr.: AARCH64_USHLLv8i8_shift
    case aliasUxtl = 1665
    /// Real instr.: AARCH64_USHLLv4i16_shift
    case aliasUxtl4S = 1666
    /// Real instr.: AARCH64_USHLLv2i32_shift
    case aliasUxtl2D = 1667
    /// Real instr.: AARCH64_USHLLv16i8_shift
    case aliasUxtl28H = 1668
    /// Real instr.: AARCH64_USHLLv16i8_shift
    case aliasUxtl2 = 1669
    /// Real instr.: AARCH64_USHLLv8i16_shift
    case aliasUxtl24S = 1670
    /// Real instr.: AARCH64_USHLLv4i32_shift
    case aliasUxtl22D = 1671
    /// Real instr.: AARCH64_LD2Twov16b_POST
    case aliasLd2 = 1672
    /// Real instr.: AARCH64_LD3Threev16b_POST
    case aliasLd3 = 1673
    /// Real instr.: AARCH64_LD4Fourv16b_POST
    case aliasLd4 = 1674
    /// Real instr.: AARCH64_ST1Onev16b_POST
    case aliasSt1 = 1675
    /// Real instr.: AARCH64_ST2Twov16b_POST
    case aliasSt2 = 1676
    /// Real instr.: AARCH64_ST3Threev16b_POST
    case aliasSt3 = 1677
    /// Real instr.: AARCH64_ST4Fourv16b_POST
    case aliasSt4 = 1678
    /// Real instr.: AARCH64_LD2Rv8b_POST
    case aliasLd2R = 1679
    /// Real instr.: AARCH64_LD3Rv8b_POST
    case aliasLd3R = 1680
    /// Real instr.: AARCH64_LD4Rv8b_POST
    case aliasLd4R = 1681
    /// Real instr.: AARCH64_HINT
    case aliasClrbhb = 1682
    /// Real instr.: AARCH64_STILPW
    case aliasStilp = 1683
    /// Real instr.: AARCH64_STL1
    case aliasStl1 = 1684
    /// Real instr.: AARCH64_SYSPxt_XZR
    case aliasSysp = 1685
    /// Real instr.: AARCH64_LD1SW_D_IMM
    case aliasLd1Sw = 1686
    /// Real instr.: AARCH64_LD1H_IMM
    case aliasLd1H = 1687
    /// Real instr.: AARCH64_LD1SH_D_IMM
    case aliasLd1Sh = 1688
    /// Real instr.: AARCH64_LD1D_IMM
    case aliasLd1D = 1689
    /// Real instr.: AARCH64_LD1RSW_IMM
    case aliasLd1Rsw = 1690
    /// Real instr.: AARCH64_LD1RH_IMM
    case aliasLd1Rh = 1691
    /// Real instr.: AARCH64_LD1RSH_D_IMM
    case aliasLd1Rsh = 1692
    /// Real instr.: AARCH64_LD1RW_IMM
    case aliasLd1Rw = 1693
    /// Real instr.: AARCH64_LD1RSB_D_IMM
    case aliasLd1Rsb = 1694
    /// Real instr.: AARCH64_LD1RD_IMM
    case aliasLd1Rd = 1695
    /// Real instr.: AARCH64_LD1RQ_H_IMM
    case aliasLd1Rqh = 1696
    /// Real instr.: AARCH64_LD1RQ_W_IMM
    case aliasLd1Rqw = 1697
    /// Real instr.: AARCH64_LD1RQ_D_IMM
    case aliasLd1Rqd = 1698
    /// Real instr.: AARCH64_LDNF1SW_D_IMM_REAL
    case aliasLdnf1Sw = 1699
    /// Real instr.: AARCH64_LDNF1H_IMM_REAL
    case aliasLdnf1H = 1700
    /// Real instr.: AARCH64_LDNF1SH_D_IMM_REAL
    case aliasLdnf1Sh = 1701
    /// Real instr.: AARCH64_LDNF1W_IMM_REAL
    case aliasLdnf1W = 1702
    /// Real instr.: AARCH64_LDNF1SB_D_IMM_REAL
    case aliasLdnf1Sb = 1703
    /// Real instr.: AARCH64_LDNF1D_IMM_REAL
    case aliasLdnf1D = 1704
    /// Real instr.: AARCH64_LDFF1SW_D_REAL
    case aliasLdff1Sw = 1705
    /// Real instr.: AARCH64_LDFF1H_REAL
    case aliasLdff1H = 1706
    /// Real instr.: AARCH64_LDFF1SH_D_REAL
    case aliasLdff1Sh = 1707
    /// Real instr.: AARCH64_LDFF1W_REAL
    case aliasLdff1W = 1708
    /// Real instr.: AARCH64_LDFF1SB_D_REAL
    case aliasLdff1Sb = 1709
    /// Real instr.: AARCH64_LDFF1D_REAL
    case aliasLdff1D = 1710
    /// Real instr.: AARCH64_LD3B_IMM
    case aliasLd3B = 1711
    /// Real instr.: AARCH64_LD4B_IMM
    case aliasLd4B = 1712
    /// Real instr.: AARCH64_LD2H_IMM
    case aliasLd2H = 1713
    /// Real instr.: AARCH64_LD3H_IMM
    case aliasLd3H = 1714
    /// Real instr.: AARCH64_LD4H_IMM
    case aliasLd4H = 1715
    /// Real instr.: AARCH64_LD2W_IMM
    case aliasLd2W = 1716
    /// Real instr.: AARCH64_LD3W_IMM
    case aliasLd3W = 1717
    /// Real instr.: AARCH64_LD4W_IMM
    case aliasLd4W = 1718
    /// Real instr.: AARCH64_LD2D_IMM
    case aliasLd2D = 1719
    /// Real instr.: AARCH64_LD3D_IMM
    case aliasLd3D = 1720
    /// Real instr.: AARCH64_LD4D_IMM
    case aliasLd4D = 1721
    /// Real instr.: AARCH64_LD2Q_IMM
    case aliasLd2Q = 1722
    /// Real instr.: AARCH64_LD3Q_IMM
    case aliasLd3Q = 1723
    /// Real instr.: AARCH64_LD4Q_IMM
    case aliasLd4Q = 1724
    /// Real instr.: AARCH64_LDNT1H_ZRI
    case aliasLdnt1H = 1725
    /// Real instr.: AARCH64_LDNT1W_ZRI
    case aliasLdnt1W = 1726
    /// Real instr.: AARCH64_LDNT1D_ZRI
    case aliasLdnt1D = 1727
    /// Real instr.: AARCH64_ST1H_IMM
    case aliasSt1H = 1728
    /// Real instr.: AARCH64_ST1W_IMM
    case aliasSt1W = 1729
    /// Real instr.: AARCH64_ST1D_IMM
    case aliasSt1D = 1730
    /// Real instr.: AARCH64_ST3B_IMM
    case aliasSt3B = 1731
    /// Real instr.: AARCH64_ST4B_IMM
    case aliasSt4B = 1732
    /// Real instr.: AARCH64_ST2H_IMM
    case aliasSt2H = 1733
    /// Real instr.: AARCH64_ST3H_IMM
    case aliasSt3H = 1734
    /// Real instr.: AARCH64_ST4H_IMM
    case aliasSt4H = 1735
    /// Real instr.: AARCH64_ST2W_IMM
    case aliasSt2W = 1736
    /// Real instr.: AARCH64_ST3W_IMM
    case aliasSt3W = 1737
    /// Real instr.: AARCH64_ST4W_IMM
    case aliasSt4W = 1738
    /// Real instr.: AARCH64_ST2D_IMM
    case aliasSt2D = 1739
    /// Real instr.: AARCH64_ST3D_IMM
    case aliasSt3D = 1740
    /// Real instr.: AARCH64_ST4D_IMM
    case aliasSt4D = 1741
    /// Real instr.: AARCH64_ST3Q_IMM
    case aliasSt3Q = 1742
    /// Real instr.: AARCH64_ST4Q_IMM
    case aliasSt4Q = 1743
    /// Real instr.: AARCH64_STNT1H_ZRI
    case aliasStnt1H = 1744
    /// Real instr.: AARCH64_STNT1W_ZRI
    case aliasStnt1W = 1745
    /// Real instr.: AARCH64_STNT1D_ZRI
    case aliasStnt1D = 1746
    /// Real instr.: AARCH64_PRFH_PRI
    case aliasPrfh = 1747
    /// Real instr.: AARCH64_PRFW_PRI
    case aliasPrfw = 1748
    /// Real instr.: AARCH64_PRFD_PRI
    case aliasPrfd = 1749
    /// Real instr.: AARCH64_CNTH_XPiI
    case aliasCnth = 1750
    /// Real instr.: AARCH64_CNTW_XPiI
    case aliasCntw = 1751
    /// Real instr.: AARCH64_CNTD_XPiI
    case aliasCntd = 1752
    /// Real instr.: AARCH64_DECB_XPiI
    case aliasDecb = 1753
    /// Real instr.: AARCH64_INCH_XPiI
    case aliasInch = 1754
    /// Real instr.: AARCH64_DECH_XPiI
    case aliasDech = 1755
    /// Real instr.: AARCH64_INCW_XPiI
    case aliasIncw = 1756
    /// Real instr.: AARCH64_DECW_XPiI
    case aliasDecw = 1757
    /// Real instr.: AARCH64_INCD_XPiI
    case aliasIncd = 1758
    /// Real instr.: AARCH64_DECD_XPiI
    case aliasDecd = 1759
    /// Real instr.: AARCH64_SQDECB_XPiWdI
    case aliasSqdecb = 1760
    /// Real instr.: AARCH64_UQDECB_WPiI
    case aliasUqdecb = 1761
    /// Real instr.: AARCH64_UQINCH_WPiI
    case aliasUqinch = 1762
    /// Real instr.: AARCH64_SQDECH_XPiWdI
    case aliasSqdech = 1763
    /// Real instr.: AARCH64_UQDECH_WPiI
    case aliasUqdech = 1764
    /// Real instr.: AARCH64_SQINCW_XPiWdI
    case aliasSqincw = 1765
    /// Real instr.: AARCH64_UQINCW_WPiI
    case aliasUqincw = 1766
    /// Real instr.: AARCH64_SQDECW_XPiWdI
    case aliasSqdecw = 1767
    /// Real instr.: AARCH64_UQDECW_WPiI
    case aliasUqdecw = 1768
    /// Real instr.: AARCH64_SQINCD_XPiWdI
    case aliasSqincd = 1769
    /// Real instr.: AARCH64_UQINCD_WPiI
    case aliasUqincd = 1770
    /// Real instr.: AARCH64_SQDECD_XPiWdI
    case aliasSqdecd = 1771
    /// Real instr.: AARCH64_UQDECD_WPiI
    case aliasUqdecd = 1772
    /// Real instr.: AARCH64_ORRS_PPzPP
    case aliasMovs = 1773
    /// Real instr.: AARCH64_EOR_PPzPP
    case aliasNot = 1774
    /// Real instr.: AARCH64_EORS_PPzPP
    case aliasNots = 1775
    /// Real instr.: AARCH64_LD1RO_H_IMM
    case aliasLd1Roh = 1776
    /// Real instr.: AARCH64_LD1RO_W_IMM
    case aliasLd1Row = 1777
    /// Real instr.: AARCH64_LD1RO_D_IMM
    case aliasLd1Rod = 1778
    /// Real instr.: AARCH64_BCAX_ZZZZ
    case aliasBcax = 1779
    /// Real instr.: AARCH64_BSL_ZZZZ
    case aliasBsl = 1780
    /// Real instr.: AARCH64_BSL1N_ZZZZ
    case aliasBsl1N = 1781
    /// Real instr.: AARCH64_BSL2N_ZZZZ
    case aliasBsl2N = 1782
    /// Real instr.: AARCH64_NBSL_ZZZZ
    case aliasNbsl = 1783
    /// Real instr.: AARCH64_LDNT1SH_ZZR_S_REAL
    case aliasLdnt1Sh = 1784
    /// Real instr.: AARCH64_LDNT1SW_ZZR_D_REAL
    case aliasLdnt1Sw = 1785
    /// Hardcoded in LLVM printer
    case aliasCfp = 1786
    /// Hardcoded in LLVM printer
    case aliasDvp = 1787
    /// Hardcoded in LLVM printer
    case aliasCosp = 1788
    /// Hardcoded in LLVM printer
    case aliasCpp = 1789
    /// Hardcoded in LLVM printer
    case aliasIc = 1790
    /// Hardcoded in LLVM printer
    case aliasDc = 1791
    /// Hardcoded in LLVM printer
    case aliasAt = 1792
    /// Hardcoded in LLVM printer
    case aliasTlbi = 1793
    /// Hardcoded in LLVM printer
    case aliasTlbip = 1794
    /// Hardcoded in LLVM printer
    case aliasRprfm = 1795
    /// Hardcoded in LLVM printer
    case aliasLsl = 1796
    /// Hardcoded in LLVM printer
    case aliasSbfx = 1797
    /// Hardcoded in LLVM printer
    case aliasUbfx = 1798
    /// Hardcoded in LLVM printer
    case aliasSbfiz = 1799
    /// Hardcoded in LLVM printer
    case aliasUbfiz = 1800
    /// Hardcoded in LLVM printer
    case aliasBfc = 1801
    /// Hardcoded in LLVM printer
    case aliasBfi = 1802
    /// Hardcoded in LLVM printer
    case aliasBfxil = 1803
    /// Hardcoded in LLVM printer
    case aliasEnd = 1804
}

public enum AArch64Isb: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ISB> begin clang-format off
    case sy = 15
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_ISB> end
    case ending = 16
}

/// Moved from AArch64BaseInfo.h and modified With extension of Q
public enum AArch64Layout: UInt32 {
    case invalid = 0
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vlB = 8
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vlH = 16
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vlS = 32
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vlD = 64
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vlQ = 128
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl1S = 288
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl1D = 320
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl1Q = 384
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl2H = 528
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl2S = 544
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl2D = 576
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl4B = 1032
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl4H = 1040
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl4S = 1056
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl8B = 2056
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl8H = 2064
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl8D = 2112
    /// Indicates that the complete matrix is used.
    case vlComplete = 2113
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl16B = 4104
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl16S = 4128
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl32H = 8208
    /// Bare layout for the 128-bit vector (only show ".b", ".h", ".s", ".d" without vector number)
    case vl64B = 16392
}

/// Operand type for instruction's operands
public enum AArch64Op: UInt32 {
    /// CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// = CS_OP_REG (Register operand).
    case reg = 1
    /// = CS_OP_IMM (Immediate operand).
    case imm = 2
    /// = CS_OP_FP (Floating-Point operand).
    case fp = 3
    /// C-Immediate
    case cimm = 16
    /// MRS register operand.
    case regMrs = 17
    /// MSR register operand.
    case regMsr = 18
    /// Implicit immediate operand 0
    case implicitImm0 = 19
    /// Different system operands.
    case svcr = 20
    /// Different system operands.
    case at = 21
    /// Different system operands.
    case db = 22
    /// Different system operands.
    case dc = 23
    /// Different system operands.
    case isb = 24
    /// Different system operands.
    case tsb = 25
    /// Different system operands.
    case prfm = 26
    /// Different system operands.
    case sveprfm = 27
    /// Different system operands.
    case rprfm = 28
    /// Different system operands.
    case pstateimm015 = 29
    /// Different system operands.
    case pstateimm01 = 30
    /// Different system operands.
    case psb = 31
    /// Different system operands.
    case bti = 32
    /// Different system operands.
    case svepredpat = 33
    /// Different system operands.
    case sveveclenspecifier = 34
    /// Different system operands.
    case sme = 35
    /// Different system operands.
    case immRange = 36
    /// Different system operands.
    case tlbi = 37
    /// Different system operands.
    case ic = 38
    /// Different system operands.
    case dbnxs = 39
    /// Different system operands.
    case exactfpimm = 40
    /// Different system operands.
    case sysreg = 41
    /// Different system operands.
    case sysimm = 42
    /// Different system operands.
    case sysalias = 43
    /// Different system operands.
    case pred = 44
    /// = CS_OP_MEM (Memory operand).
    case mem = 128
    /// Register which references memory.
    case memReg = 129
    /// Immediate value which references memory.
    case memImm = 130
}

public enum AArch64Prfm: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl1keep = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl1strm = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl2keep = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl2strm = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl3keep = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldl3strm = 5
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldslckeep = 6
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pldslcstrm = 7
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil1keep = 8
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil1strm = 9
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil2keep = 10
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil2strm = 11
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil3keep = 12
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plil3strm = 13
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plislckeep = 14
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case plislcstrm = 15
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl1keep = 16
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl1strm = 17
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl2keep = 18
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl2strm = 19
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl3keep = 20
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstl3strm = 21
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstslckeep = 22
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> begin clang-format off
    case pstslcstrm = 23
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PRFM> end
    case ending = 24
}

public enum AArch64Psb: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PSB> begin clang-format off
    case csync = 17
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PSB> end
    case ending = 18
}

public enum AArch64Pstateimm01: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_1> begin clang-format off
    case allint = 8
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_1> begin clang-format off
    case pm = 72
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_1> end
    case ending = 73
}

public enum AArch64Pstateimm015: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case uao = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case pan = 4
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> end
    public static let ending = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case spsel = 5
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case ssbs = 25
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case dit = 26
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case tco = 28
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case daifset = 30
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_PStateImm0_15> begin clang-format off
    case daifclr = 31
}

/// AArch64 registers
public enum AArch64Reg: UInt16 {
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case ffr = 1
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case fp = 2
    /// alias registers
    public static let x29 = 2
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case fpcr = 3
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case lr = 4
    /// alias registers
    public static let x30 = 4
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case nzcv = 5
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case sp = 6
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case vg = 7
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case wsp = 8
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case wzr = 9
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case xzr = 10
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case xLane = 11
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case yLane = 12
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case za = 13
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zMatrix = 14
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b0 = 15
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b1 = 16
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b2 = 17
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b3 = 18
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b4 = 19
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b5 = 20
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b6 = 21
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b7 = 22
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b8 = 23
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b9 = 24
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b10 = 25
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b11 = 26
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b12 = 27
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b13 = 28
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b14 = 29
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b15 = 30
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b16 = 31
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b17 = 32
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b18 = 33
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b19 = 34
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b20 = 35
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b21 = 36
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b22 = 37
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b23 = 38
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b24 = 39
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b25 = 40
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b26 = 41
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b27 = 42
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b28 = 43
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b29 = 44
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b30 = 45
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case b31 = 46
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d0 = 47
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d1 = 48
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d2 = 49
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d3 = 50
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d4 = 51
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d5 = 52
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d6 = 53
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d7 = 54
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d8 = 55
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d9 = 56
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d10 = 57
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d11 = 58
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d12 = 59
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d13 = 60
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d14 = 61
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d15 = 62
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d16 = 63
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d17 = 64
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d18 = 65
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d19 = 66
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d20 = 67
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d21 = 68
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d22 = 69
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d23 = 70
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d24 = 71
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d25 = 72
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d26 = 73
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d27 = 74
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d28 = 75
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d29 = 76
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d30 = 77
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d31 = 78
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h0 = 79
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h1 = 80
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h2 = 81
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h3 = 82
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h4 = 83
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h5 = 84
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h6 = 85
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h7 = 86
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h8 = 87
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h9 = 88
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h10 = 89
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h11 = 90
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h12 = 91
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h13 = 92
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h14 = 93
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h15 = 94
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h16 = 95
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h17 = 96
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h18 = 97
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h19 = 98
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h20 = 99
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h21 = 100
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h22 = 101
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h23 = 102
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h24 = 103
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h25 = 104
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h26 = 105
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h27 = 106
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h28 = 107
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h29 = 108
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h30 = 109
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case h31 = 110
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p0 = 111
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p1 = 112
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p2 = 113
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p3 = 114
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p4 = 115
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p5 = 116
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p6 = 117
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p7 = 118
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p8 = 119
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p9 = 120
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p10 = 121
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p11 = 122
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p12 = 123
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p13 = 124
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p14 = 125
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p15 = 126
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn0 = 127
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn1 = 128
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn2 = 129
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn3 = 130
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn4 = 131
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn5 = 132
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn6 = 133
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn7 = 134
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn8 = 135
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn9 = 136
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn10 = 137
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn11 = 138
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn12 = 139
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn13 = 140
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn14 = 141
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case pn15 = 142
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q0 = 143
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q1 = 144
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q2 = 145
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q3 = 146
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q4 = 147
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q5 = 148
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q6 = 149
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q7 = 150
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q8 = 151
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q9 = 152
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q10 = 153
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q11 = 154
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q12 = 155
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q13 = 156
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q14 = 157
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q15 = 158
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q16 = 159
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q17 = 160
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q18 = 161
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q19 = 162
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q20 = 163
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q21 = 164
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q22 = 165
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q23 = 166
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q24 = 167
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q25 = 168
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q26 = 169
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q27 = 170
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q28 = 171
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q29 = 172
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q30 = 173
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q31 = 174
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s0 = 175
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s1 = 176
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s2 = 177
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s3 = 178
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s4 = 179
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s5 = 180
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s6 = 181
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s7 = 182
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s8 = 183
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s9 = 184
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s10 = 185
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s11 = 186
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s12 = 187
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s13 = 188
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s14 = 189
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s15 = 190
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s16 = 191
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s17 = 192
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s18 = 193
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s19 = 194
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s20 = 195
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s21 = 196
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s22 = 197
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s23 = 198
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s24 = 199
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s25 = 200
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s26 = 201
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s27 = 202
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s28 = 203
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s29 = 204
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s30 = 205
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case s31 = 206
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w0 = 207
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w1 = 208
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w2 = 209
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w3 = 210
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w4 = 211
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w5 = 212
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w6 = 213
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w7 = 214
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w8 = 215
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w9 = 216
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w10 = 217
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w11 = 218
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w12 = 219
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w13 = 220
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w14 = 221
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w15 = 222
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w16 = 223
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w17 = 224
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w18 = 225
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w19 = 226
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w20 = 227
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w21 = 228
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w22 = 229
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w23 = 230
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w24 = 231
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w25 = 232
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w26 = 233
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w27 = 234
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w28 = 235
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w29 = 236
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w30 = 237
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x0 = 238
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x1 = 239
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x2 = 240
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x3 = 241
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x4 = 242
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x5 = 243
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x6 = 244
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x7 = 245
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x8 = 246
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x9 = 247
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x10 = 248
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x11 = 249
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x12 = 250
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x13 = 251
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x14 = 252
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x15 = 253
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x16 = 254
    /// alias registers
    public static let ip0 = 254
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x17 = 255
    /// alias registers
    public static let ip1 = 255
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x18 = 256
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x19 = 257
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x20 = 258
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x21 = 259
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x22 = 260
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x23 = 261
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x24 = 262
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x25 = 263
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x26 = 264
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x27 = 265
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x28 = 266
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0 = 267
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1 = 268
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2 = 269
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3 = 270
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z4 = 271
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z5 = 272
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z6 = 273
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z7 = 274
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z8 = 275
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z9 = 276
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z10 = 277
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z11 = 278
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z12 = 279
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z13 = 280
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z14 = 281
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z15 = 282
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16 = 283
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17 = 284
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18 = 285
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19 = 286
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z20 = 287
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z21 = 288
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z22 = 289
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z23 = 290
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z24 = 291
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z25 = 292
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z26 = 293
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z27 = 294
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z28 = 295
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z29 = 296
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z30 = 297
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z31 = 298
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zab0 = 299
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad0 = 300
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad1 = 301
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad2 = 302
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad3 = 303
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad4 = 304
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad5 = 305
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad6 = 306
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zad7 = 307
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zah0 = 308
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zah1 = 309
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq0 = 310
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq1 = 311
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq2 = 312
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq3 = 313
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq4 = 314
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq5 = 315
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq6 = 316
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq7 = 317
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq8 = 318
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq9 = 319
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq10 = 320
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq11 = 321
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq12 = 322
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq13 = 323
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq14 = 324
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zaq15 = 325
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zas0 = 326
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zas1 = 327
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zas2 = 328
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zas3 = 329
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case zt0 = 330
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d0D1 = 331
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d1D2 = 332
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d2D3 = 333
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d3D4 = 334
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d4D5 = 335
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d5D6 = 336
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d6D7 = 337
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d7D8 = 338
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d8D9 = 339
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d9D10 = 340
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d10D11 = 341
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d11D12 = 342
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d12D13 = 343
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d13D14 = 344
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d14D15 = 345
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d15D16 = 346
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d16D17 = 347
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d17D18 = 348
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d18D19 = 349
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d19D20 = 350
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d20D21 = 351
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d21D22 = 352
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d22D23 = 353
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d23D24 = 354
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d24D25 = 355
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d25D26 = 356
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d26D27 = 357
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d27D28 = 358
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d28D29 = 359
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d29D30 = 360
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d30D31 = 361
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d31D0 = 362
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d0D1D2D3 = 363
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d1D2D3D4 = 364
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d2D3D4D5 = 365
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d3D4D5D6 = 366
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d4D5D6D7 = 367
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d5D6D7D8 = 368
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d6D7D8D9 = 369
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d7D8D9D10 = 370
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d8D9D10D11 = 371
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d9D10D11D12 = 372
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d10D11D12D13 = 373
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d11D12D13D14 = 374
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d12D13D14D15 = 375
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d13D14D15D16 = 376
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d14D15D16D17 = 377
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d15D16D17D18 = 378
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d16D17D18D19 = 379
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d17D18D19D20 = 380
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d18D19D20D21 = 381
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d19D20D21D22 = 382
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d20D21D22D23 = 383
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d21D22D23D24 = 384
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d22D23D24D25 = 385
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d23D24D25D26 = 386
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d24D25D26D27 = 387
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d25D26D27D28 = 388
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d26D27D28D29 = 389
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d27D28D29D30 = 390
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d28D29D30D31 = 391
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d29D30D31D0 = 392
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d30D31D0D1 = 393
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d31D0D1D2 = 394
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d0D1D2 = 395
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d1D2D3 = 396
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d2D3D4 = 397
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d3D4D5 = 398
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d4D5D6 = 399
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d5D6D7 = 400
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d6D7D8 = 401
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d7D8D9 = 402
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d8D9D10 = 403
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d9D10D11 = 404
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d10D11D12 = 405
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d11D12D13 = 406
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d12D13D14 = 407
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d13D14D15 = 408
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d14D15D16 = 409
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d15D16D17 = 410
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d16D17D18 = 411
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d17D18D19 = 412
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d18D19D20 = 413
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d19D20D21 = 414
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d20D21D22 = 415
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d21D22D23 = 416
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d22D23D24 = 417
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d23D24D25 = 418
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d24D25D26 = 419
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d25D26D27 = 420
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d26D27D28 = 421
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d27D28D29 = 422
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d28D29D30 = 423
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d29D30D31 = 424
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d30D31D0 = 425
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case d31D0D1 = 426
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p0P1 = 427
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p1P2 = 428
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p2P3 = 429
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p3P4 = 430
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p4P5 = 431
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p5P6 = 432
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p6P7 = 433
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p7P8 = 434
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p8P9 = 435
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p9P10 = 436
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p10P11 = 437
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p11P12 = 438
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p12P13 = 439
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p13P14 = 440
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p14P15 = 441
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case p15P0 = 442
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q0Q1 = 443
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q1Q2 = 444
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q2Q3 = 445
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q3Q4 = 446
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q4Q5 = 447
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q5Q6 = 448
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q6Q7 = 449
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q7Q8 = 450
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q8Q9 = 451
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q9Q10 = 452
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q10Q11 = 453
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q11Q12 = 454
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q12Q13 = 455
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q13Q14 = 456
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q14Q15 = 457
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q15Q16 = 458
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q16Q17 = 459
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q17Q18 = 460
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q18Q19 = 461
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q19Q20 = 462
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q20Q21 = 463
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q21Q22 = 464
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q22Q23 = 465
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q23Q24 = 466
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q24Q25 = 467
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q25Q26 = 468
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q26Q27 = 469
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q27Q28 = 470
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q28Q29 = 471
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q29Q30 = 472
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q30Q31 = 473
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q31Q0 = 474
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q0Q1Q2Q3 = 475
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q1Q2Q3Q4 = 476
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q2Q3Q4Q5 = 477
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q3Q4Q5Q6 = 478
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q4Q5Q6Q7 = 479
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q5Q6Q7Q8 = 480
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q6Q7Q8Q9 = 481
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q7Q8Q9Q10 = 482
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q8Q9Q10Q11 = 483
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q9Q10Q11Q12 = 484
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q10Q11Q12Q13 = 485
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q11Q12Q13Q14 = 486
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q12Q13Q14Q15 = 487
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q13Q14Q15Q16 = 488
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q14Q15Q16Q17 = 489
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q15Q16Q17Q18 = 490
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q16Q17Q18Q19 = 491
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q17Q18Q19Q20 = 492
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q18Q19Q20Q21 = 493
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q19Q20Q21Q22 = 494
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q20Q21Q22Q23 = 495
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q21Q22Q23Q24 = 496
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q22Q23Q24Q25 = 497
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q23Q24Q25Q26 = 498
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q24Q25Q26Q27 = 499
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q25Q26Q27Q28 = 500
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q26Q27Q28Q29 = 501
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q27Q28Q29Q30 = 502
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q28Q29Q30Q31 = 503
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q29Q30Q31Q0 = 504
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q30Q31Q0Q1 = 505
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q31Q0Q1Q2 = 506
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q0Q1Q2 = 507
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q1Q2Q3 = 508
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q2Q3Q4 = 509
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q3Q4Q5 = 510
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q4Q5Q6 = 511
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q5Q6Q7 = 512
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q6Q7Q8 = 513
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q7Q8Q9 = 514
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q8Q9Q10 = 515
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q9Q10Q11 = 516
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q10Q11Q12 = 517
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q11Q12Q13 = 518
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q12Q13Q14 = 519
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q13Q14Q15 = 520
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q14Q15Q16 = 521
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q15Q16Q17 = 522
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q16Q17Q18 = 523
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q17Q18Q19 = 524
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q18Q19Q20 = 525
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q19Q20Q21 = 526
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q20Q21Q22 = 527
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q21Q22Q23 = 528
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q22Q23Q24 = 529
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q23Q24Q25 = 530
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q24Q25Q26 = 531
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q25Q26Q27 = 532
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q26Q27Q28 = 533
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q27Q28Q29 = 534
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q28Q29Q30 = 535
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q29Q30Q31 = 536
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q30Q31Q0 = 537
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case q31Q0Q1 = 538
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x22X23X24X25X26X27X28Fp = 539
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x0X1X2X3X4X5X6X7 = 540
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x2X3X4X5X6X7X8X9 = 541
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x4X5X6X7X8X9X10X11 = 542
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x6X7X8X9X10X11X12X13 = 543
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x8X9X10X11X12X13X14X15 = 544
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x10X11X12X13X14X15X16X17 = 545
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x12X13X14X15X16X17X18X19 = 546
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x14X15X16X17X18X19X20X21 = 547
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x16X17X18X19X20X21X22X23 = 548
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x18X19X20X21X22X23X24X25 = 549
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x20X21X22X23X24X25X26X27 = 550
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w30Wzr = 551
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w0W1 = 552
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w2W3 = 553
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w4W5 = 554
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w6W7 = 555
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w8W9 = 556
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w10W11 = 557
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w12W13 = 558
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w14W15 = 559
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w16W17 = 560
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w18W19 = 561
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w20W21 = 562
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w22W23 = 563
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w24W25 = 564
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w26W27 = 565
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case w28W29 = 566
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case lrXzr = 567
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x28Fp = 568
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x0X1 = 569
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x2X3 = 570
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x4X5 = 571
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x6X7 = 572
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x8X9 = 573
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x10X11 = 574
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x12X13 = 575
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x14X15 = 576
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x16X17 = 577
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x18X19 = 578
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x20X21 = 579
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x22X23 = 580
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x24X25 = 581
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case x26X27 = 582
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0Z1 = 583
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1Z2 = 584
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2Z3 = 585
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3Z4 = 586
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z4Z5 = 587
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z5Z6 = 588
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z6Z7 = 589
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z7Z8 = 590
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z8Z9 = 591
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z9Z10 = 592
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z10Z11 = 593
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z11Z12 = 594
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z12Z13 = 595
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z13Z14 = 596
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z14Z15 = 597
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z15Z16 = 598
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16Z17 = 599
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17Z18 = 600
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18Z19 = 601
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19Z20 = 602
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z20Z21 = 603
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z21Z22 = 604
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z22Z23 = 605
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z23Z24 = 606
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z24Z25 = 607
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z25Z26 = 608
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z26Z27 = 609
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z27Z28 = 610
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z28Z29 = 611
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z29Z30 = 612
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z30Z31 = 613
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z31Z0 = 614
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0Z1Z2Z3 = 615
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1Z2Z3Z4 = 616
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2Z3Z4Z5 = 617
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3Z4Z5Z6 = 618
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z4Z5Z6Z7 = 619
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z5Z6Z7Z8 = 620
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z6Z7Z8Z9 = 621
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z7Z8Z9Z10 = 622
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z8Z9Z10Z11 = 623
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z9Z10Z11Z12 = 624
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z10Z11Z12Z13 = 625
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z11Z12Z13Z14 = 626
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z12Z13Z14Z15 = 627
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z13Z14Z15Z16 = 628
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z14Z15Z16Z17 = 629
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z15Z16Z17Z18 = 630
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16Z17Z18Z19 = 631
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17Z18Z19Z20 = 632
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18Z19Z20Z21 = 633
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19Z20Z21Z22 = 634
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z20Z21Z22Z23 = 635
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z21Z22Z23Z24 = 636
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z22Z23Z24Z25 = 637
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z23Z24Z25Z26 = 638
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z24Z25Z26Z27 = 639
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z25Z26Z27Z28 = 640
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z26Z27Z28Z29 = 641
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z27Z28Z29Z30 = 642
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z28Z29Z30Z31 = 643
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z29Z30Z31Z0 = 644
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z30Z31Z0Z1 = 645
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z31Z0Z1Z2 = 646
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0Z1Z2 = 647
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1Z2Z3 = 648
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2Z3Z4 = 649
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3Z4Z5 = 650
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z4Z5Z6 = 651
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z5Z6Z7 = 652
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z6Z7Z8 = 653
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z7Z8Z9 = 654
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z8Z9Z10 = 655
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z9Z10Z11 = 656
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z10Z11Z12 = 657
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z11Z12Z13 = 658
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z12Z13Z14 = 659
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z13Z14Z15 = 660
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z14Z15Z16 = 661
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z15Z16Z17 = 662
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16Z17Z18 = 663
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17Z18Z19 = 664
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18Z19Z20 = 665
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19Z20Z21 = 666
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z20Z21Z22 = 667
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z21Z22Z23 = 668
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z22Z23Z24 = 669
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z23Z24Z25 = 670
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z24Z25Z26 = 671
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z25Z26Z27 = 672
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z26Z27Z28 = 673
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z27Z28Z29 = 674
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z28Z29Z30 = 675
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z29Z30Z31 = 676
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z30Z31Z0 = 677
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z31Z0Z1 = 678
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16Z24 = 679
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17Z25 = 680
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18Z26 = 681
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19Z27 = 682
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z20Z28 = 683
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z21Z29 = 684
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z22Z30 = 685
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z23Z31 = 686
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0Z8 = 687
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1Z9 = 688
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2Z10 = 689
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3Z11 = 690
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z4Z12 = 691
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z5Z13 = 692
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z6Z14 = 693
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z7Z15 = 694
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z16Z20Z24Z28 = 695
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z17Z21Z25Z29 = 696
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z18Z22Z26Z30 = 697
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z19Z23Z27Z31 = 698
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z0Z4Z8Z12 = 699
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z1Z5Z9Z13 = 700
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z2Z6Z10Z14 = 701
    /// generated content <AArch64GenCSRegEnum.inc> begin clang-format off
    case z3Z7Z11Z15 = 702
    /// 703
    case ending = 703
}

public enum AArch64Rprfm: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_RPRFM> begin clang-format off
    case pldkeep = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_RPRFM> begin clang-format off
    case pstkeep = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_RPRFM> begin clang-format off
    case pldstrm = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_RPRFM> begin clang-format off
    case pststrm = 5
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_RPRFM> end
    case ending = 6
}

/// AArch64 shift type Those values do not correspond to the bit values encoded in the instruction.
public enum AArch64Sft: UInt32 {
    case invalid = 0
    case lsl = 1
    case msl = 2
    case lsr = 3
    case asr = 4
    case ror = 5
    case lslReg = 6
    case mslReg = 7
    case lsrReg = 8
    case asrReg = 9
    case rorReg = 10
}

public enum AArch64SmeOp: UInt32 {
    case invalid = 0
    /// SME operand is a single tile.
    case tile = 1
    /// SME operand is a tile indexed by a register and/or immediate
    case tileVec = 2
}

public enum AArch64Svcr: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVCR> begin clang-format off
    case svcrsm = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVCR> begin clang-format off
    case svcrza = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVCR> begin clang-format off
    case svcrsmza = 3
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVCR> end
    public static let ending = 3
}

public enum AArch64Svepredpat: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case pow2 = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl1 = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl2 = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl3 = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl4 = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl5 = 5
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl6 = 6
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl7 = 7
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl8 = 8
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl16 = 9
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> end
    public static let ending = 9
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl32 = 10
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl64 = 11
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl128 = 12
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case vl256 = 13
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case mul4 = 29
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case mul3 = 30
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPREDPAT> begin clang-format off
    case all = 31
}

public enum AArch64Sveprfm: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl1keep = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl1strm = 1
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl2keep = 2
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl2strm = 3
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl3keep = 4
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pldl3strm = 5
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl1keep = 8
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl1strm = 9
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl2keep = 10
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl2strm = 11
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl3keep = 12
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> begin clang-format off
    case pstl3strm = 13
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEPRFM> end
    case ending = 14
}

public enum AArch64Sveveclenspecifier: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEVECLENSPECIFIER> begin clang-format off
    case vlx2 = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEVECLENSPECIFIER> begin clang-format off
    case vlx4 = 1
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SVEVECLENSPECIFIER> end
    case ending = 2
}

public enum AArch64Sysreg: UInt32 {
    case invalid = 0
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case osdtrrxEl1 = 32770
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr0El1 = 32772
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr0El1 = 32773
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr0El1 = 32774
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr0El1 = 32775
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr1El1 = 32780
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr1El1 = 32781
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr1El1 = 32782
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr1El1 = 32783
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdccintEl1 = 32784
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdscrEl1 = 32786
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr2El1 = 32788
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr2El1 = 32789
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr2El1 = 32790
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr2El1 = 32791
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case osdtrtxEl1 = 32794
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr3El1 = 32796
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr3El1 = 32797
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr3El1 = 32798
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr3El1 = 32799
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdselrEl1 = 32802
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr4El1 = 32804
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr4El1 = 32805
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr4El1 = 32806
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr4El1 = 32807
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdstepopEl1 = 32810
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr5El1 = 32812
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr5El1 = 32813
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr5El1 = 32814
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr5El1 = 32815
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case oseccrEl1 = 32818
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr6El1 = 32820
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr6El1 = 32821
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr6El1 = 32822
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr6El1 = 32823
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr7El1 = 32828
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr7El1 = 32829
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr7El1 = 32830
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr7El1 = 32831
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr8El1 = 32836
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr8El1 = 32837
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr8El1 = 32838
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr8El1 = 32839
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr9El1 = 32844
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr9El1 = 32845
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr9El1 = 32846
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr9El1 = 32847
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr10El1 = 32852
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr10El1 = 32853
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr10El1 = 32854
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr10El1 = 32855
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr11El1 = 32860
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr11El1 = 32861
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr11El1 = 32862
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr11El1 = 32863
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr12El1 = 32868
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr12El1 = 32869
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr12El1 = 32870
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr12El1 = 32871
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr13El1 = 32876
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr13El1 = 32877
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr13El1 = 32878
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr13El1 = 32879
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr14El1 = 32884
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr14El1 = 32885
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr14El1 = 32886
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr14El1 = 32887
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbvr15El1 = 32892
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgbcr15El1 = 32893
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwvr15El1 = 32894
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgwcr15El1 = 32895
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdrarEl1 = 32896
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case oslarEl1 = 32900
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case oslsrEl1 = 32908
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case osdlrEl1 = 32924
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgprcrEl1 = 32932
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgclaimsetEl1 = 33734
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgclaimclrEl1 = 33742
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgauthstatusEl1 = 33782
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcgcr0El1 = 34024
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcgcr1El1 = 34025
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmaccessrEl1 = 34027
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmiidrEl1 = 34028
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmdevarchEl1 = 34029
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmdevaffEl1 = 34030
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcfgrEl1 = 34031
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmintensetEl1 = 34033
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmintenclrEl1 = 34034
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr0El1 = 34624
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr1El1 = 34625
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr2El1 = 34626
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr3El1 = 34627
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr4El1 = 34628
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr5El1 = 34629
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr6El1 = 34630
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr7El1 = 34631
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr8El1 = 34632
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr9El1 = 34633
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr10El1 = 34634
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr11El1 = 34635
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr12El1 = 34636
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr13El1 = 34637
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr14El1 = 34638
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr15El1 = 34639
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr16El1 = 34640
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr17El1 = 34641
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr18El1 = 34642
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr19El1 = 34643
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr20El1 = 34644
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr21El1 = 34645
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr22El1 = 34646
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr23El1 = 34647
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr24El1 = 34648
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr25El1 = 34649
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr26El1 = 34650
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr27El1 = 34651
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr28El1 = 34652
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr29El1 = 34653
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntsvr30El1 = 34654
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmccntsvrEl1 = 34655
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmicntsvrEl1 = 34656
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trctraceidr = 34817
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvictlr = 34818
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcseqevr0 = 34820
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntrldvr0 = 34821
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr8 = 34822
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec0 = 34823
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcprgctlr = 34824
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcqctlr = 34825
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcviiectlr = 34826
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcseqevr1 = 34828
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntrldvr1 = 34829
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr9 = 34830
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec1 = 34831
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcprocselr = 34832
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trciteedcr = 34833
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvissctlr = 34834
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcseqevr2 = 34836
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntrldvr2 = 34837
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr10 = 34838
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec2 = 34839
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcstatr = 34840
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvipcssctlr = 34842
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntrldvr3 = 34845
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr11 = 34846
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec3 = 34847
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcconfigr = 34848
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntctlr0 = 34853
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr12 = 34854
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec4 = 34855
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntctlr1 = 34861
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr13 = 34862
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec5 = 34863
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcauxctlr = 34864
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcseqrstevr = 34868
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntctlr2 = 34869
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec6 = 34871
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcseqstr = 34876
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntctlr3 = 34877
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcimspec7 = 34879
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trceventctl0r = 34880
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvdctlr = 34882
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcextinselr = 34884
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    public static let trcextinselr0 = 34884
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntvr0 = 34885
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr0 = 34887
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trceventctl1r = 34888
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvdsacctlr = 34890
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcextinselr1 = 34892
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntvr1 = 34893
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr1 = 34895
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsr = 34896
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvdarcctlr = 34898
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcextinselr2 = 34900
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntvr2 = 34901
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr2 = 34903
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcstallctlr = 34904
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcextinselr3 = 34908
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccntvr3 = 34909
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr3 = 34911
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trctsctlr = 34912
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr4 = 34919
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsyncpr = 34920
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr5 = 34927
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcccctlr = 34928
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr6 = 34935
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcbbctlr = 34936
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcidr7 = 34943
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr16 = 34945
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr0 = 34946
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr0 = 34947
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcoslar = 34948
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr17 = 34953
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr1 = 34954
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr1 = 34955
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcoslsr = 34956
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr2 = 34960
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr18 = 34961
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr2 = 34962
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr2 = 34963
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr3 = 34968
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr19 = 34969
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr3 = 34970
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr3 = 34971
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr4 = 34976
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr20 = 34977
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr4 = 34978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr4 = 34979
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpdcr = 34980
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr5 = 34984
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr21 = 34985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr5 = 34986
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr5 = 34987
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpdsr = 34988
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr6 = 34992
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr22 = 34993
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr6 = 34994
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr6 = 34995
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr7 = 35000
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr23 = 35001
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcssccr7 = 35002
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsspcicr7 = 35003
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr8 = 35008
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr24 = 35009
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr0 = 35010
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr9 = 35016
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr25 = 35017
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr1 = 35018
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr10 = 35024
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr26 = 35025
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr2 = 35026
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr11 = 35032
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr27 = 35033
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr3 = 35034
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr12 = 35040
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr28 = 35041
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr4 = 35042
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr13 = 35048
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr29 = 35049
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr5 = 35050
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr14 = 35056
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr30 = 35057
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr6 = 35058
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr15 = 35064
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcrsctlr31 = 35065
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcsscsr7 = 35066
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr0 = 35072
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr8 = 35073
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr0 = 35074
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr8 = 35075
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr0 = 35076
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr4 = 35077
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr0 = 35078
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr4 = 35079
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr1 = 35088
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr9 = 35089
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr1 = 35090
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr9 = 35091
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr2 = 35104
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr10 = 35105
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr2 = 35106
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr10 = 35107
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr1 = 35108
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr5 = 35109
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr1 = 35110
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr5 = 35111
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr3 = 35120
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr11 = 35121
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr3 = 35122
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr11 = 35123
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr4 = 35136
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr12 = 35137
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr4 = 35138
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr12 = 35139
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr2 = 35140
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr6 = 35141
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr2 = 35142
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr6 = 35143
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr5 = 35152
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr13 = 35153
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr5 = 35154
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr13 = 35155
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr6 = 35168
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr14 = 35169
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr6 = 35170
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr14 = 35171
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr3 = 35172
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcvr7 = 35173
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr3 = 35174
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdvcmr7 = 35175
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr7 = 35184
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacvr15 = 35185
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr7 = 35186
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcacatr15 = 35187
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr0 = 35200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr0 = 35201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcctlr0 = 35202
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcctlr1 = 35210
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr1 = 35216
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr1 = 35217
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcctlr0 = 35218
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcctlr1 = 35226
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr2 = 35232
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr2 = 35233
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr3 = 35248
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr3 = 35249
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr4 = 35264
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr4 = 35265
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr5 = 35280
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr5 = 35281
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr6 = 35296
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr6 = 35297
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidcvr7 = 35312
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcvmidcvr7 = 35313
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcitctrl = 35716
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdevid = 35735
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdevtype = 35743
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr4 = 35751
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr5 = 35759
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr6 = 35767
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr7 = 35775
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcclaimset = 35782
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr0 = 35783
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcclaimclr = 35790
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr1 = 35791
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdevaff0 = 35798
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr2 = 35799
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdevaff1 = 35806
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcpidr3 = 35807
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trclar = 35814
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidr0 = 35815
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trclsr = 35822
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidr1 = 35823
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcauthstatus = 35830
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidr2 = 35831
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcdevarch = 35838
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trccidr3 = 35839
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf0El1 = 35840
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc0El1 = 35841
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt0El1 = 35842
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf16El1 = 35844
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc16El1 = 35845
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt16El1 = 35846
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf1El1 = 35848
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc1El1 = 35849
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt1El1 = 35850
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf17El1 = 35852
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc17El1 = 35853
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt17El1 = 35854
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf2El1 = 35856
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc2El1 = 35857
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt2El1 = 35858
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf18El1 = 35860
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc18El1 = 35861
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt18El1 = 35862
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf3El1 = 35864
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc3El1 = 35865
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt3El1 = 35866
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf19El1 = 35868
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc19El1 = 35869
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt19El1 = 35870
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf4El1 = 35872
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc4El1 = 35873
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt4El1 = 35874
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf20El1 = 35876
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc20El1 = 35877
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt20El1 = 35878
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf5El1 = 35880
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc5El1 = 35881
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt5El1 = 35882
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf21El1 = 35884
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc21El1 = 35885
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt21El1 = 35886
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf6El1 = 35888
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc6El1 = 35889
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt6El1 = 35890
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf22El1 = 35892
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc22El1 = 35893
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt22El1 = 35894
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf7El1 = 35896
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc7El1 = 35897
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt7El1 = 35898
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf23El1 = 35900
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc23El1 = 35901
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt23El1 = 35902
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf8El1 = 35904
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc8El1 = 35905
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt8El1 = 35906
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf24El1 = 35908
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc24El1 = 35909
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt24El1 = 35910
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf9El1 = 35912
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc9El1 = 35913
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt9El1 = 35914
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf25El1 = 35916
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc25El1 = 35917
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt25El1 = 35918
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf10El1 = 35920
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc10El1 = 35921
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt10El1 = 35922
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf26El1 = 35924
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc26El1 = 35925
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt26El1 = 35926
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf11El1 = 35928
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc11El1 = 35929
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt11El1 = 35930
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf27El1 = 35932
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc27El1 = 35933
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt27El1 = 35934
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf12El1 = 35936
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc12El1 = 35937
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt12El1 = 35938
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf28El1 = 35940
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc28El1 = 35941
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt28El1 = 35942
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf13El1 = 35944
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc13El1 = 35945
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt13El1 = 35946
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf29El1 = 35948
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc29El1 = 35949
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt29El1 = 35950
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf14El1 = 35952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc14El1 = 35953
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt14El1 = 35954
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf30El1 = 35956
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc30El1 = 35957
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt30El1 = 35958
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf15El1 = 35960
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc15El1 = 35961
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt15El1 = 35962
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinf31El1 = 35964
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrc31El1 = 35965
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgt31El1 = 35966
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbcrEl1 = 35968
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbfcrEl1 = 35969
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtsEl1 = 35970
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbinfinjEl1 = 35976
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbsrcinjEl1 = 35977
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbtgtinjEl1 = 35978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbidr0El1 = 35984
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case teecr32El1 = 36864
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case teehbr32El1 = 36992
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdccsrEl0 = 38920
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgdtrEl0 = 38944
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgdtrrxEl0 = 38952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    public static let dbgdtrtxEl0 = 38952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcrEl0 = 40160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcntensetEl0 = 40161
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmcntenclrEl0 = 40162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmovsclrEl0 = 40163
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmzrEl0 = 40164
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmselrEl0 = 40165
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmovssetEl0 = 40179
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr0El0 = 40704
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr1El0 = 40705
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr2El0 = 40706
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr3El0 = 40707
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr4El0 = 40708
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr5El0 = 40709
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr6El0 = 40710
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr7El0 = 40711
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr8El0 = 40712
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr9El0 = 40713
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr10El0 = 40714
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr11El0 = 40715
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr12El0 = 40716
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr13El0 = 40717
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr14El0 = 40718
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevcntr15El0 = 40719
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper0El0 = 40720
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper1El0 = 40721
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper2El0 = 40722
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper3El0 = 40723
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper4El0 = 40724
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper5El0 = 40725
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper6El0 = 40726
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper7El0 = 40727
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper8El0 = 40728
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper9El0 = 40729
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper10El0 = 40730
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper11El0 = 40731
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper12El0 = 40732
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper13El0 = 40733
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper14El0 = 40734
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevtyper15El0 = 40735
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr0El0 = 40736
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr1El0 = 40737
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr2El0 = 40738
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr3El0 = 40739
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr4El0 = 40740
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr5El0 = 40741
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr6El0 = 40742
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr7El0 = 40743
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr8El0 = 40744
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr9El0 = 40745
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr10El0 = 40746
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr11El0 = 40747
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr12El0 = 40748
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr13El0 = 40749
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr14El0 = 40750
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfiltr15El0 = 40751
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r0El0 = 40752
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r1El0 = 40753
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r2El0 = 40754
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r3El0 = 40755
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r4El0 = 40756
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r5El0 = 40757
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r6El0 = 40758
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r7El0 = 40759
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r8El0 = 40760
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r9El0 = 40761
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r10El0 = 40762
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r11El0 = 40763
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r12El0 = 40764
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r13El0 = 40765
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r14El0 = 40766
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmevfilt2r15El0 = 40767
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dbgvcr32El2 = 41016
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbcrEl2 = 42112
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmaccessrEl2 = 42219
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case brbcrEl12 = 44160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmaccessrEl12 = 44267
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmaccessrEl3 = 46315
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmrootcrEl3 = 46327
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spmscrEl1 = 48375
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case midrEl1 = 49152
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpuirEl1 = 49156
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpidrEl1 = 49157
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case revidrEl1 = 49158
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idPfr0El1 = 49160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idPfr1El1 = 49161
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idDfr0El1 = 49162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAfr0El1 = 49163
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr0El1 = 49164
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr1El1 = 49165
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr2El1 = 49166
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr3El1 = 49167
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar0El1 = 49168
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar1El1 = 49169
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar2El1 = 49170
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar3El1 = 49171
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar4El1 = 49172
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar5El1 = 49173
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr4El1 = 49174
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idIsar6El1 = 49175
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvfr0El1 = 49176
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvfr1El1 = 49177
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mvfr2El1 = 49178
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idPfr2El1 = 49180
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idDfr1El1 = 49181
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idMmfr5El1 = 49182
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Pfr0El1 = 49184
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Pfr1El1 = 49185
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Pfr2El1 = 49186
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Zfr0El1 = 49188
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Smfr0El1 = 49189
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Fpfr0El1 = 49191
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Dfr0El1 = 49192
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Dfr1El1 = 49193
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Dfr2El1 = 49194
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Afr0El1 = 49196
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Afr1El1 = 49197
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Isar0El1 = 49200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Isar1El1 = 49201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Isar2El1 = 49202
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Isar3El1 = 49203
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Mmfr0El1 = 49208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Mmfr1El1 = 49209
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Mmfr2El1 = 49210
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Mmfr3El1 = 49211
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case idAa64Mmfr4El1 = 49212
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlrEl1 = 49280
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case actlrEl1 = 49281
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cpacrEl1 = 49282
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlr2El1 = 49283
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rgsrEl1 = 49285
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcrEl1 = 49286
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case zcrEl1 = 49296
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trfcrEl1 = 49297
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcitecrEl1 = 49299
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smpriEl1 = 49300
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smcrEl1 = 49302
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr0El1 = 49408
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr1El1 = 49409
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcrEl1 = 49410
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcr2El1 = 49411
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apiakeyloEl1 = 49416
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apiakeyhiEl1 = 49417
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apibkeyloEl1 = 49418
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apibkeyhiEl1 = 49419
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apdakeyloEl1 = 49424
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apdakeyhiEl1 = 49425
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apdbkeyloEl1 = 49426
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apdbkeyhiEl1 = 49427
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apgakeyloEl1 = 49432
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case apgakeyhiEl1 = 49433
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcscrEl1 = 49448
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcsprEl1 = 49449
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcscre0El1 = 49450
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrEl1 = 49664
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case elrEl1 = 49665
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spEl0 = 49672
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsel = 49680
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case currentel = 49682
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pan = 49683
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case uao = 49684
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case allint = 49688
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pm = 49689
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccPmrEl1 = 49712
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr0El1 = 49800
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr1El1 = 49801
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case esrEl1 = 49808
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erridrEl1 = 49816
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case errselrEl1 = 49817
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxgsrEl1 = 49818
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxfrEl1 = 49824
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxctlrEl1 = 49825
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxstatusEl1 = 49826
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxaddrEl1 = 49827
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxpfgfEl1 = 49828
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxpfgctlEl1 = 49829
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxpfgcdnEl1 = 49830
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxmisc0El1 = 49832
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxmisc1El1 = 49833
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxmisc2El1 = 49834
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case erxmisc3El1 = 49835
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tfsrEl1 = 49840
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tfsre0El1 = 49841
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case farEl1 = 49920
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pfarEl1 = 49925
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prenrEl1 = 49929
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prselrEl1 = 49937
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbarEl1 = 49984
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlarEl1 = 49985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar1El1 = 49988
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar1El1 = 49989
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar2El1 = 49992
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar2El1 = 49993
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar3El1 = 49996
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar3El1 = 49997
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar4El1 = 50000
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar4El1 = 50001
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar5El1 = 50004
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar5El1 = 50005
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar6El1 = 50008
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar6El1 = 50009
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar7El1 = 50012
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar7El1 = 50013
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar8El1 = 50016
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar8El1 = 50017
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar9El1 = 50020
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar9El1 = 50021
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar10El1 = 50024
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar10El1 = 50025
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar11El1 = 50028
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar11El1 = 50029
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar12El1 = 50032
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar12El1 = 50033
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar13El1 = 50036
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar13El1 = 50037
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar14El1 = 50040
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar14El1 = 50041
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar15El1 = 50044
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar15El1 = 50045
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case parEl1 = 50080
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmscrEl1 = 50376
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsnevfrEl1 = 50377
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsicrEl1 = 50378
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsirrEl1 = 50379
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsfcrEl1 = 50380
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsevfrEl1 = 50381
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmslatfrEl1 = 50382
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsidrEl1 = 50383
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmblimitrEl1 = 50384
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmbptrEl1 = 50385
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmbsrEl1 = 50387
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsdsfrEl1 = 50388
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmbidrEl1 = 50391
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trblimitrEl1 = 50392
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbptrEl1 = 50393
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbbaserEl1 = 50394
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbsrEl1 = 50395
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbmarEl1 = 50396
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbtrgEl1 = 50398
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trbidrEl1 = 50399
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmsscrEl1 = 50411
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmintensetEl1 = 50417
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmintenclrEl1 = 50418
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmuacrEl1 = 50420
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmecrEl1 = 50421
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmmirEl1 = 50422
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmiarEl1 = 50423
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mairEl1 = 50448
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mair2El1 = 50449
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pire0El1 = 50450
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pirEl1 = 50451
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case porEl1 = 50452
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case s2porEl1 = 50453
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amairEl1 = 50456
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amair2El1 = 50457
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case lorsaEl1 = 50464
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case loreaEl1 = 50465
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case lornEl1 = 50466
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case lorcEl1 = 50467
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamidrEl1 = 50468
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case loridEl1 = 50471
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpam1El1 = 50472
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpam0El1 = 50473
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamsmEl1 = 50475
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vbarEl1 = 50688
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rvbarEl1 = 50689
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rmrEl1 = 50690
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case isrEl1 = 50696
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case disrEl1 = 50697
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccIar0El1 = 50752
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccEoir0El1 = 50753
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccHppir0El1 = 50754
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccBpr0El1 = 50755
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp0R0El1 = 50756
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp0R1El1 = 50757
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp0R2El1 = 50758
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp0R3El1 = 50759
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp1R0El1 = 50760
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp1R1El1 = 50761
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp1R2El1 = 50762
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAp1R3El1 = 50763
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccNmiar1El1 = 50765
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccDirEl1 = 50777
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccRprEl1 = 50779
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccSgi1REl1 = 50781
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccAsgi1REl1 = 50782
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccSgi0REl1 = 50783
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccIar1El1 = 50784
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccEoir1El1 = 50785
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccHppir1El1 = 50786
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccBpr1El1 = 50787
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccCtlrEl1 = 50788
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccSreEl1 = 50789
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccIgrpen0El1 = 50790
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccIgrpen1El1 = 50791
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case contextidrEl1 = 50817
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rcwsmaskEl1 = 50819
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidrEl1 = 50820
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case accdataEl1 = 50821
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rcwmaskEl1 = 50822
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scxtnumEl1 = 50823
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntkctlEl1 = 50952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ccsidrEl1 = 51200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case clidrEl1 = 51201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ccsidr2El1 = 51202
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gmidEl1 = 51204
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smidrEl1 = 51206
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case aidrEl1 = 51207
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case csselrEl1 = 53248
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ctrEl0 = 55297
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dczidEl0 = 55303
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rndr = 55584
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rndrrs = 55585
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcsprEl0 = 55593
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case nzcv = 55824
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case daif = 55825
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case svcr = 55826
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dit = 55829
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ssbs = 55830
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tco = 55831
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fpcr = 55840
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fpsr = 55841
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fpmr = 55842
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dspsrEl0 = 55848
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dlrEl0 = 55849
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmicntrEl0 = 56480
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmicfiltrEl0 = 56496
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmcrEl0 = 56544
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmcntensetEl0 = 56545
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmcntenclrEl0 = 56546
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmovsclrEl0 = 56547
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmswincEl0 = 56548
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmselrEl0 = 56549
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmceid0El0 = 56550
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmceid1El0 = 56551
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmccntrEl0 = 56552
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmxevtyperEl0 = 56553
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmxevcntrEl0 = 56554
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmzrEl0 = 56556
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmuserenrEl0 = 56560
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmovssetEl0 = 56563
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case porEl0 = 56596
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidrEl0 = 56962
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidrroEl0 = 56963
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidr2El0 = 56965
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scxtnumEl0 = 56967
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcrEl0 = 56976
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcfgrEl0 = 56977
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcgcrEl0 = 56978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amuserenrEl0 = 56979
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcntenclr0El0 = 56980
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcntenset0El0 = 56981
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcg1idrEl0 = 56982
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcntenclr1El0 = 56984
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amcntenset1El0 = 56985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr00El0 = 56992
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr01El0 = 56993
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr02El0 = 56994
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr03El0 = 56995
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper00El0 = 57008
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper01El0 = 57009
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper02El0 = 57010
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper03El0 = 57011
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr10El0 = 57056
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr11El0 = 57057
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr12El0 = 57058
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr13El0 = 57059
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr14El0 = 57060
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr15El0 = 57061
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr16El0 = 57062
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr17El0 = 57063
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr18El0 = 57064
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr19El0 = 57065
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr110El0 = 57066
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr111El0 = 57067
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr112El0 = 57068
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr113El0 = 57069
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr114El0 = 57070
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntr115El0 = 57071
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper10El0 = 57072
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper11El0 = 57073
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper12El0 = 57074
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper13El0 = 57075
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper14El0 = 57076
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper15El0 = 57077
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper16El0 = 57078
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper17El0 = 57079
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper18El0 = 57080
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper19El0 = 57081
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper110El0 = 57082
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper111El0 = 57083
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper112El0 = 57084
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper113El0 = 57085
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper114El0 = 57086
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevtyper115El0 = 57087
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntfrqEl0 = 57088
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpctEl0 = 57089
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvctEl0 = 57090
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpctssEl0 = 57093
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvctssEl0 = 57094
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpTvalEl0 = 57104
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpCtlEl0 = 57105
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpCvalEl0 = 57106
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvTvalEl0 = 57112
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvCtlEl0 = 57113
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvCvalEl0 = 57114
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr0El0 = 57152
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr1El0 = 57153
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr2El0 = 57154
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr3El0 = 57155
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr4El0 = 57156
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr5El0 = 57157
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr6El0 = 57158
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr7El0 = 57159
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr8El0 = 57160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr9El0 = 57161
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr10El0 = 57162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr11El0 = 57163
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr12El0 = 57164
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr13El0 = 57165
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr14El0 = 57166
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr15El0 = 57167
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr16El0 = 57168
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr17El0 = 57169
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr18El0 = 57170
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr19El0 = 57171
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr20El0 = 57172
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr21El0 = 57173
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr22El0 = 57174
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr23El0 = 57175
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr24El0 = 57176
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr25El0 = 57177
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr26El0 = 57178
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr27El0 = 57179
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr28El0 = 57180
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr29El0 = 57181
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevcntr30El0 = 57182
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper0El0 = 57184
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper1El0 = 57185
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper2El0 = 57186
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper3El0 = 57187
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper4El0 = 57188
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper5El0 = 57189
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper6El0 = 57190
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper7El0 = 57191
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper8El0 = 57192
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper9El0 = 57193
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper10El0 = 57194
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper11El0 = 57195
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper12El0 = 57196
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper13El0 = 57197
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper14El0 = 57198
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper15El0 = 57199
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper16El0 = 57200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper17El0 = 57201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper18El0 = 57202
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper19El0 = 57203
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper20El0 = 57204
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper21El0 = 57205
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper22El0 = 57206
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper23El0 = 57207
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper24El0 = 57208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper25El0 = 57209
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper26El0 = 57210
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper27El0 = 57211
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper28El0 = 57212
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper29El0 = 57213
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmevtyper30El0 = 57214
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmccfiltrEl0 = 57215
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vpidrEl2 = 57344
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpuirEl2 = 57348
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vmpidrEl2 = 57349
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlrEl2 = 57472
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case actlrEl2 = 57473
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlr2El2 = 57475
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hcrEl2 = 57480
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdcrEl2 = 57481
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cptrEl2 = 57482
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hstrEl2 = 57483
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgrtrEl2 = 57484
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgwtrEl2 = 57485
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgitrEl2 = 57486
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hacrEl2 = 57487
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case zcrEl2 = 57488
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trfcrEl2 = 57489
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hcrxEl2 = 57490
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcitecrEl2 = 57491
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smprimapEl2 = 57493
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smcrEl2 = 57494
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sder32El2 = 57497
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr0El2 = 57600
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    public static let vsctlrEl2 = 57600
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr1El2 = 57601
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcrEl2 = 57602
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcr2El2 = 57603
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vttbrEl2 = 57608
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vtcrEl2 = 57610
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vncrEl2 = 57616
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdbssbrEl2 = 57626
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdbssprodEl2 = 57627
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hacdbsbrEl2 = 57628
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hacdbsconsEl2 = 57629
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcscrEl2 = 57640
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcsprEl2 = 57641
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsttbrEl2 = 57648
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vstcrEl2 = 57650
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case dacr32El2 = 57728
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdfgrtr2El2 = 57736
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdfgwtr2El2 = 57737
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgrtr2El2 = 57738
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgwtr2El2 = 57739
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdfgrtrEl2 = 57740
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hdfgwtrEl2 = 57741
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hafgrtrEl2 = 57742
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hfgitr2El2 = 57743
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrEl2 = 57856
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case elrEl2 = 57857
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spEl1 = 57864
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrIrq = 57880
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrAbt = 57881
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrUnd = 57882
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrFiq = 57883
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ifsr32El2 = 57985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr0El2 = 57992
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr1El2 = 57993
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case esrEl2 = 58000
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsesrEl2 = 58003
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fpexc32El2 = 58008
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tfsrEl2 = 58032
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case farEl2 = 58112
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case hpfarEl2 = 58116
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pfarEl2 = 58117
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prenrEl2 = 58121
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prselrEl2 = 58129
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbarEl2 = 58176
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlarEl2 = 58177
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar1El2 = 58180
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar1El2 = 58181
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar2El2 = 58184
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar2El2 = 58185
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar3El2 = 58188
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar3El2 = 58189
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar4El2 = 58192
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar4El2 = 58193
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar5El2 = 58196
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar5El2 = 58197
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar6El2 = 58200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar6El2 = 58201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar7El2 = 58204
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar7El2 = 58205
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar8El2 = 58208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar8El2 = 58209
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar9El2 = 58212
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar9El2 = 58213
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar10El2 = 58216
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar10El2 = 58217
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar11El2 = 58220
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar11El2 = 58221
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar12El2 = 58224
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar12El2 = 58225
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar13El2 = 58228
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar13El2 = 58229
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar14El2 = 58232
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar14El2 = 58233
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prbar15El2 = 58236
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case prlar15El2 = 58237
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmscrEl2 = 58568
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mair2El2 = 58633
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mairEl2 = 58640
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pire0El2 = 58642
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pirEl2 = 58643
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case porEl2 = 58644
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case s2pirEl2 = 58645
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amairEl2 = 58648
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amair2El2 = 58649
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamhcrEl2 = 58656
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpmvEl2 = 58657
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpam2El2 = 58664
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm0El2 = 58672
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm1El2 = 58673
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm2El2 = 58674
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm3El2 = 58675
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm4El2 = 58676
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm5El2 = 58677
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm6El2 = 58678
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpamvpm7El2 = 58679
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidP0El2 = 58688
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidA0El2 = 58689
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidP1El2 = 58690
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidA1El2 = 58691
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidrEl2 = 58695
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vmecidPEl2 = 58696
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vmecidAEl2 = 58697
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vbarEl2 = 58880
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rvbarEl2 = 58881
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rmrEl2 = 58882
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vdisrEl2 = 58889
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp0R0El2 = 58944
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp0R1El2 = 58945
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp0R2El2 = 58946
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp0R3El2 = 58947
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp1R0El2 = 58952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp1R1El2 = 58953
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp1R2El2 = 58954
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichAp1R3El2 = 58955
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccSreEl2 = 58957
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichHcrEl2 = 58968
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichVtrEl2 = 58969
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichMisrEl2 = 58970
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichEisrEl2 = 58971
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichElrsrEl2 = 58973
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichVmcrEl2 = 58975
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr0El2 = 58976
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr1El2 = 58977
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr2El2 = 58978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr3El2 = 58979
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr4El2 = 58980
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr5El2 = 58981
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr6El2 = 58982
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr7El2 = 58983
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr8El2 = 58984
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr9El2 = 58985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr10El2 = 58986
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr11El2 = 58987
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr12El2 = 58988
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr13El2 = 58989
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr14El2 = 58990
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ichLr15El2 = 58991
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case contextidrEl2 = 59009
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidrEl2 = 59010
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scxtnumEl2 = 59015
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff00El2 = 59072
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff01El2 = 59073
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff02El2 = 59074
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff03El2 = 59075
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff04El2 = 59076
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff05El2 = 59077
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff06El2 = 59078
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff07El2 = 59079
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff08El2 = 59080
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff09El2 = 59081
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff010El2 = 59082
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff011El2 = 59083
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff012El2 = 59084
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff013El2 = 59085
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff014El2 = 59086
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff015El2 = 59087
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff10El2 = 59088
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff11El2 = 59089
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff12El2 = 59090
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff13El2 = 59091
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff14El2 = 59092
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff15El2 = 59093
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff16El2 = 59094
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff17El2 = 59095
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff18El2 = 59096
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff19El2 = 59097
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff110El2 = 59098
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff111El2 = 59099
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff112El2 = 59100
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff113El2 = 59101
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff114El2 = 59102
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amevcntvoff115El2 = 59103
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvoffEl2 = 59139
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntscaleEl2 = 59140
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntiscaleEl2 = 59141
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpoffEl2 = 59142
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvfrqEl2 = 59143
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthctlEl2 = 59144
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpTvalEl2 = 59152
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpCtlEl2 = 59153
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpCvalEl2 = 59154
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvTvalEl2 = 59160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvCtlEl2 = 59161
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvCvalEl2 = 59162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvsTvalEl2 = 59168
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvsCtlEl2 = 59169
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthvsCvalEl2 = 59170
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpsTvalEl2 = 59176
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpsCtlEl2 = 59177
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cnthpsCvalEl2 = 59178
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlrEl12 = 59520
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cpacrEl12 = 59522
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlr2El12 = 59523
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case zcrEl12 = 59536
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trfcrEl12 = 59537
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case trcitecrEl12 = 59539
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smcrEl12 = 59542
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr0El12 = 59648
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr1El12 = 59649
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcrEl12 = 59650
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcr2El12 = 59651
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcscrEl12 = 59688
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcsprEl12 = 59689
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrEl12 = 59904
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case elrEl12 = 59905
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr0El12 = 60040
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr1El12 = 60041
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case esrEl12 = 60048
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tfsrEl12 = 60080
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case farEl12 = 60160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pfarEl12 = 60165
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pmscrEl12 = 60616
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mairEl12 = 60688
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mair2El12 = 60689
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pire0El12 = 60690
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pirEl12 = 60691
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case porEl12 = 60692
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amairEl12 = 60696
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amair2El12 = 60697
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpam1El12 = 60712
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vbarEl12 = 60928
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case contextidrEl12 = 61057
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scxtnumEl12 = 61063
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntkctlEl12 = 61192
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpTvalEl02 = 61200
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpCtlEl02 = 61201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpCvalEl02 = 61202
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvTvalEl02 = 61208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvCtlEl02 = 61209
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntvCvalEl02 = 61210
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlrEl3 = 61568
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case actlrEl3 = 61569
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sctlr2El3 = 61571
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scrEl3 = 61576
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case sder32El3 = 61577
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cptrEl3 = 61578
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case fgwte3El3 = 61581
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case zcrEl3 = 61584
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case smcrEl3 = 61590
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mdcrEl3 = 61593
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case ttbr0El3 = 61696
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tcrEl3 = 61698
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gptbrEl3 = 61708
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gpccrEl3 = 61710
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcscrEl3 = 61736
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case gcsprEl3 = 61737
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spsrEl3 = 61952
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case elrEl3 = 61953
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case spEl2 = 61960
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr0El3 = 62088
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case afsr1El3 = 62089
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case esrEl3 = 62096
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vsesrEl3 = 62099
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tfsrEl3 = 62128
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case farEl3 = 62208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mfarEl3 = 62213
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mair2El3 = 62729
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mairEl3 = 62736
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case pirEl3 = 62739
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case porEl3 = 62740
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amairEl3 = 62744
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case amair2El3 = 62745
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mpam3El3 = 62760
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case mecidRlAEl3 = 62801
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vbarEl3 = 62976
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rvbarEl3 = 62977
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case rmrEl3 = 62978
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case vdisrEl3 = 62985
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccCtlrEl3 = 63076
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccSreEl3 = 63077
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case iccIgrpen1El3 = 63079
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case tpidrEl3 = 63106
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case scxtnumEl3 = 63111
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpsTvalEl1 = 65296
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpsCtlEl1 = 65297
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cntpsCvalEl1 = 65298
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> begin clang-format off
    case cpmIoaccCtlEl3 = 65424
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_SysReg> end
    case ending = 65535
}

/// end namespace AArch64CC
public enum AArch64Tlbi: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1os = 1032
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1os = 1033
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1os = 1034
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1os = 1035
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1os = 1037
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1os = 1039
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1is = 1041
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1is = 1043
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1is = 1045
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1is = 1047
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1is = 1048
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1is = 1049
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1is = 1050
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1is = 1051
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1is = 1053
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1is = 1055
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1os = 1065
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1os = 1067
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1os = 1069
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1os = 1071
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1 = 1073
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1 = 1075
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1 = 1077
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1 = 1079
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1 = 1080
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1 = 1081
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1 = 1082
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1 = 1083
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1 = 1085
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1 = 1087
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1osnxs = 1160
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1osnxs = 1161
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1osnxs = 1162
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1osnxs = 1163
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1osnxs = 1165
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1osnxs = 1167
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1isnxs = 1169
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1isnxs = 1171
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1isnxs = 1173
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1isnxs = 1175
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1isnxs = 1176
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1isnxs = 1177
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1isnxs = 1178
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1isnxs = 1179
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1isnxs = 1181
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1isnxs = 1183
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1osnxs = 1193
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1osnxs = 1195
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1osnxs = 1197
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1osnxs = 1199
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae1nxs = 1201
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaae1nxs = 1203
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale1nxs = 1205
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvaale1nxs = 1207
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalle1nxs = 1208
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae1nxs = 1209
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case aside1nxs = 1210
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaae1nxs = 1211
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale1nxs = 1213
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vaale1nxs = 1215
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1is = 9217
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1is = 9218
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1is = 9221
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1is = 9222
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2os = 9224
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2os = 9225
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1os = 9228
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2os = 9229
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1os = 9230
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2is = 9233
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1is = 9234
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2is = 9237
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2is = 9240
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2is = 9241
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1is = 9244
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2is = 9245
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1is = 9246
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1os = 9248
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1 = 9249
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1 = 9250
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1os = 9251
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1os = 9252
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1 = 9253
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1 = 9254
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1os = 9255
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2os = 9257
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1os = 9258
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2os = 9261
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2 = 9265
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1 = 9266
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2 = 9269
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2 = 9272
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2 = 9273
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1 = 9276
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2 = 9277
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1 = 9278
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1isnxs = 9345
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1isnxs = 9346
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1isnxs = 9349
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1isnxs = 9350
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2osnxs = 9352
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2osnxs = 9353
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1osnxs = 9356
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2osnxs = 9357
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1osnxs = 9358
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2isnxs = 9361
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1isnxs = 9362
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2isnxs = 9365
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2isnxs = 9368
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2isnxs = 9369
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1isnxs = 9372
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2isnxs = 9373
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1isnxs = 9374
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1osnxs = 9376
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2e1nxs = 9377
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1nxs = 9378
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2e1osnxs = 9379
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1osnxs = 9380
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ipas2le1nxs = 9381
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1nxs = 9382
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case ripas2le1osnxs = 9383
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2osnxs = 9385
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1osnxs = 9386
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> end
    case ending = 9387
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2osnxs = 9389
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae2nxs = 9393
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmallws2e1nxs = 9394
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale2nxs = 9397
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle2nxs = 9400
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae2nxs = 9401
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle1nxs = 9404
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale2nxs = 9405
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vmalls12e1nxs = 9406
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3os = 13320
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3os = 13321
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case paallos = 13324
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3os = 13325
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3is = 13329
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3is = 13333
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3is = 13336
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3is = 13337
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3is = 13341
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rpaos = 13347
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rpalos = 13351
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3os = 13353
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3os = 13357
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3 = 13361
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3 = 13365
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3 = 13368
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3 = 13369
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case paall = 13372
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3 = 13373
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3osnxs = 13448
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3osnxs = 13449
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case paallosnxs = 13452
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3osnxs = 13453
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3isnxs = 13457
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3isnxs = 13461
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3isnxs = 13464
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3isnxs = 13465
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3isnxs = 13469
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rpaosnxs = 13475
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rpalosnxs = 13479
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3osnxs = 13481
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3osnxs = 13485
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvae3nxs = 13489
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case rvale3nxs = 13493
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case alle3nxs = 13496
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vae3nxs = 13497
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case paallnxs = 13500
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TLBI> begin clang-format off
    case vale3nxs = 13501
}

public enum AArch64Tsb: UInt32 {
    /// generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TSB> begin clang-format off
    case csync = 0
    /// clang-format on generated content <AArch64GenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_TSB> end
    case ending = 1
}

#endif
