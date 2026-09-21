#if CAPSTONE_HAS_ARM
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Arm)

/// Mask values for IT and VPT Blocks, to be used by MCOperands. Note that this is different from the "real" encoding used by the instructions. In this encoding, the lowest set bit indicates the end of the encoding, and above that, "1" indicates an else, while "0" indicates a then. Tx = x100 Txy = xy10 Txyz = xyz1
public enum Arm: UInt32 {
    case predblockmaskinvalid = 0
    /// 0b0001
    case tttt = 1
    /// 0b0010
    case ttt = 2
    /// 0b0011
    case ttte = 3
    /// 0b0100
    case tt = 4
    /// 0b0101
    case ttet = 5
    /// 0b0110
    case tte = 6
    /// 0b0111
    case ttee = 7
    /// 0b1000
    case t = 8
    /// 0b1001
    case tett = 9
    /// 0b1010
    case tet = 10
    /// 0b1011
    case tete = 11
    /// 0b1100
    case te = 12
    /// 0b1101
    case teet = 13
    /// 0b1110
    case tee = 14
    /// 0b1111
    case teee = 15
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregElr: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case hyp = 30
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregLr: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 6
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 14
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case irq = 16
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case svc = 18
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case abt = 20
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case und = 22
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case mon = 28
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregR10: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 2
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 10
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregR11: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 3
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 11
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregR12: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 4
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 12
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregR8: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 0
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 8
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregR9: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 1
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 9
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregSp: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case usr = 5
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 13
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case irq = 17
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case svc = 19
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case abt = 21
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case und = 23
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case mon = 29
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case hyp = 31
}

/// From LLVM docs: The values here come from B9.2.3 of the ARM ARM, where bits 4-0 are SysM field and bit 5 is R.
public enum ArmBankedregSpsr: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case fiq = 46
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case irq = 48
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case svc = 50
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case abt = 52
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case und = 54
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case mon = 60
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_BankedReg> begin clang-format off
    case hyp = 62
}

/// Enums corresponding to ARM condition codes The CondCodes constants map directly to the 4-bit encoding of the condition field for predicated instructions.
public enum ArmCc: UInt32 {
    /// Equal Equal
    case eq = 0
    /// Not equal Not equal, or unordered
    case ne = 1
    /// Carry set >, ==, or unordered
    case hs = 2
    /// Carry clear Less than
    case lo = 3
    /// Minus, negative Less than
    case mi = 4
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
    /// Less than Less than, or unordered
    case lt = 11
    /// Greater than Greater than
    case gt = 12
    /// Less than or equal <, ==, or unordered
    case le = 13
    /// Always (unconditional) Always (unconditional)
    case al = 14
    /// Undefined
    case undef = 15
    /// Invalid
    case invalid = 16
}

/// Operand type for SETEND instruction
public struct ArmCpsflag: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    public static let invalid: ArmCpsflag = []
    public static let f = ArmCpsflag(rawValue: 1)
    public static let i = ArmCpsflag(rawValue: 2)
    public static let a = ArmCpsflag(rawValue: 4)
    /// no flag
    public static let none = ArmCpsflag(rawValue: 16)
}

public enum ArmCpsmode: UInt32 {
    case invalid = 0
    case ie = 2
    case id = 3
}

/// Group of ARM instructions
public enum ArmFeature: UInt32 {
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv4t = 128
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv5t = 129
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv5te = 130
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv6 = 131
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv6m = 132
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv8mbaseline = 133
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv8mmainline = 134
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasmveint = 136
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasmvefloat = 137
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hascde = 138
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfpregs = 139
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfpregs16 = 140
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasnofpregs16 = 141
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfpregs64 = 142
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv6t2 = 144
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv6k = 145
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv7 = 146
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv8 = 147
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case prev8 = 148
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasvfp2 = 156
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasvfp3 = 157
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasvfp4 = 158
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdpvfp = 159
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfparmv8 = 160
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasneon = 161
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hassha2 = 162
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasaes = 163
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hascrypto = 164
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdotprod = 165
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hascrc = 166
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasras = 167
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case haslob = 168
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case haspacbti = 169
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfp16 = 170
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfullfp16 = 171
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasfp16fml = 172
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasbf16 = 173
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasmatmulint8 = 174
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdivideinthumb = 175
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdivideinarm = 176
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdsp = 177
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdb = 178
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasdfb = 179
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasv7clrex = 180
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasacquirerelease = 181
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasmp = 182
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasvirtualization = 183
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hastrustzone = 184
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case has8msecext = 185
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case isthumb = 186
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case isthumb2 = 187
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case ismclass = 188
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case isnotmclass = 189
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case isarm = 190
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case usenacltrap = 191
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case usenegativeimmediates = 192
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hassb = 193
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case hasclrbhb = 194
}

/// Group of ARM instructions
public enum ArmFeatureHasfpregsv8: UInt32 {
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _1m = 143
}

/// Group of ARM instructions
public enum ArmFeatureHasv8: UInt32 {
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _1mmainline = 135
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _1a = 149
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _2a = 150
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _3a = 151
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _4a = 152
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _5a = 153
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _6a = 154
    /// Architecture-specific groups generated content <ARMGenCSFeatureEnum.inc> begin clang-format off
    case _7a = 155
}

public struct ArmFieldCpsr: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// CPSR* field flags can be OR combined
    public static let c = ArmFieldCpsr(rawValue: 16)
    /// CPSR* field flags can be OR combined
    public static let x = ArmFieldCpsr(rawValue: 32)
    /// CPSR* field flags can be OR combined
    public static let s = ArmFieldCpsr(rawValue: 64)
    /// CPSR* field flags can be OR combined
    public static let f = ArmFieldCpsr(rawValue: 128)
}

public struct ArmFieldSpsr: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// SPSR* field flags can be OR combined
    public static let c = ArmFieldSpsr(rawValue: 1)
    /// SPSR* field flags can be OR combined
    public static let x = ArmFieldSpsr(rawValue: 2)
    /// SPSR* field flags can be OR combined
    public static let s = ArmFieldSpsr(rawValue: 4)
    /// SPSR* field flags can be OR combined
    public static let f = ArmFieldSpsr(rawValue: 8)
}

/// Group of ARM instructions
public enum ArmGrp: UInt8 {
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
    /// = CS_GRP_PRIVILEGE
    case privilege = 6
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// clang-format on generated content <ARMGenCSFeatureEnum.inc> end
    case ending = 195
}

/// ARM instruction
public enum ArmIns: UInt32 {
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case asr = 1
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case it = 2
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrbt = 3
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldr = 4
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrht = 5
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrsbt = 6
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrsht = 7
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrt = 8
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lsl = 9
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lsr = 10
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ror = 11
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rrx = 12
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strbt = 13
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strt = 14
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld1 = 15
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld2 = 16
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld3 = 17
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld4 = 18
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst1 = 19
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst2 = 20
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst3 = 21
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst4 = 22
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrb = 23
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrh = 24
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrsb = 25
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrsh = 26
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case movs = 27
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mov = 28
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strb = 29
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strh = 30
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case str = 31
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case adc = 32
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case add = 33
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case adr = 34
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case aesd = 35
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case aese = 36
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case aesimc = 37
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case aesmc = 38
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case and = 39
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vdot = 40
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvt = 41
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtb = 42
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtt = 43
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bfc = 44
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bfi = 45
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bic = 46
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bkpt = 47
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bl = 48
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case blx = 49
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bx = 50
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bxj = 51
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case b = 52
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx1 = 53
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx1a = 54
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx1d = 55
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx1da = 56
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx2 = 57
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx2a = 58
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx2d = 59
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx2da = 60
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx3 = 61
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx3a = 62
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx3d = 63
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cx3da = 64
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx1a = 65
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx1 = 66
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx2a = 67
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx2 = 68
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx3a = 69
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcx3 = 70
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cdp = 71
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cdp2 = 72
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case clrex = 73
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case clz = 74
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cmn = 75
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cmp = 76
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cps = 77
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32b = 78
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32cb = 79
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32ch = 80
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32cw = 81
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32h = 82
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case crc32w = 83
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dbg = 84
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dmb = 85
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dsb = 86
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case eor = 87
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case eret = 88
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmov = 89
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case fldmdbx = 90
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case fldmiax = 91
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmrs = 92
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case fstmdbx = 93
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case fstmiax = 94
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case hint = 95
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case hlt = 96
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case hvc = 97
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case isb = 98
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lda = 99
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldab = 100
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldaex = 101
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldaexb = 102
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldaexd = 103
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldaexh = 104
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldah = 105
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldc2l = 106
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldc2 = 107
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldcl = 108
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldc = 109
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldmda = 110
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldmdb = 111
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldm = 112
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldmib = 113
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrd = 114
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrex = 115
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrexb = 116
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrexd = 117
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ldrexh = 118
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mcr = 119
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mcr2 = 120
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mcrr = 121
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mcrr2 = 122
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mla = 123
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mls = 124
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case movt = 125
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case movw = 126
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mrc = 127
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mrc2 = 128
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mrrc = 129
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mrrc2 = 130
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mrs = 131
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case msr = 132
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mul = 133
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case asrl = 134
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dlstp = 135
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lctp = 136
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case letp = 137
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lsll = 138
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case lsrl = 139
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sqrshr = 140
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sqrshrl = 141
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sqshl = 142
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sqshll = 143
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srshr = 144
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srshrl = 145
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqrshl = 146
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqrshll = 147
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqshl = 148
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqshll = 149
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case urshr = 150
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case urshrl = 151
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vabav = 152
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vabd = 153
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vabs = 154
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vadc = 155
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vadci = 156
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddlva = 157
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddlv = 158
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddva = 159
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddv = 160
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vadd = 161
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vand = 162
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vbic = 163
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vbrsr = 164
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcadd = 165
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcls = 166
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vclz = 167
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcmla = 168
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcmp = 169
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcmul = 170
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vctp = 171
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvta = 172
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtm = 173
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtn = 174
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtp = 175
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vddup = 176
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vdup = 177
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vdwdup = 178
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case veor = 179
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfmas = 180
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfma = 181
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfms = 182
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vhadd = 183
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vhcadd = 184
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vhsub = 185
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vidup = 186
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case viwdup = 187
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld20 = 188
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld21 = 189
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld40 = 190
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld41 = 191
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld42 = 192
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vld43 = 193
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldrb = 194
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldrd = 195
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldrh = 196
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldrw = 197
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxav = 198
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxa = 199
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxnmav = 200
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxnma = 201
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxnmv = 202
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxnm = 203
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmaxv = 204
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmax = 205
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminav = 206
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmina = 207
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminnmav = 208
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminnma = 209
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminnmv = 210
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminnm = 211
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vminv = 212
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmin = 213
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmladava = 214
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmladavax = 215
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmladav = 216
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmladavx = 217
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlaldava = 218
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlaldavax = 219
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlaldav = 220
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlaldavx = 221
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlas = 222
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmla = 223
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsdava = 224
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsdavax = 225
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsdav = 226
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsdavx = 227
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsldava = 228
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsldavax = 229
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsldav = 230
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsldavx = 231
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovlb = 232
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovlt = 233
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovnb = 234
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovnt = 235
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmulh = 236
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmullb = 237
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmullt = 238
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmul = 239
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmvn = 240
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vneg = 241
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vorn = 242
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vorr = 243
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpnot = 244
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpsel = 245
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpst = 246
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpt = 247
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqabs = 248
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqadd = 249
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmladhx = 250
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmladh = 251
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlah = 252
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlash = 253
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlsdhx = 254
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlsdh = 255
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmulh = 256
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmullb = 257
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmullt = 258
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovnb = 259
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovnt = 260
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovunb = 261
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovunt = 262
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqneg = 263
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmladhx = 264
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmladh = 265
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmlah = 266
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmlash = 267
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmlsdhx = 268
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmlsdh = 269
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmulh = 270
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshl = 271
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrnb = 272
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrnt = 273
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrunb = 274
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrunt = 275
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshlu = 276
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshl = 277
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrnb = 278
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrnt = 279
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrunb = 280
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrunt = 281
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqsub = 282
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrev16 = 283
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrev32 = 284
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrev64 = 285
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrhadd = 286
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrinta = 287
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintm = 288
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintn = 289
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintp = 290
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintx = 291
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintz = 292
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlaldavha = 293
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlaldavhax = 294
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlaldavh = 295
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlaldavhx = 296
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlsldavha = 297
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlsldavhax = 298
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlsldavh = 299
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmlsldavhx = 300
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrmulh = 301
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrshl = 302
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrshrnb = 303
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrshrnt = 304
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrshr = 305
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsbc = 306
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsbci = 307
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshlc = 308
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshllb = 309
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshllt = 310
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshl = 311
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshrnb = 312
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshrnt = 313
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshr = 314
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsli = 315
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsri = 316
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst20 = 317
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst21 = 318
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst40 = 319
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst41 = 320
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst42 = 321
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vst43 = 322
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstrb = 323
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstrd = 324
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstrh = 325
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstrw = 326
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsub = 327
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case wlstp = 328
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case mvn = 329
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case orr = 330
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pkhbt = 331
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pkhtb = 332
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pldw = 333
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pld = 334
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pli = 335
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qadd = 336
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qadd16 = 337
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qadd8 = 338
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qasx = 339
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qdadd = 340
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qdsub = 341
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qsax = 342
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qsub = 343
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qsub16 = 344
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case qsub8 = 345
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rbit = 346
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rev = 347
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rev16 = 348
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case revsh = 349
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rfeda = 350
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rfedb = 351
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rfeia = 352
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rfeib = 353
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rsb = 354
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case rsc = 355
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sadd16 = 356
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sadd8 = 357
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sasx = 358
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sb = 359
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sbc = 360
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sbfx = 361
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sdiv = 362
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sel = 363
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case setend = 364
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case setpan = 365
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1c = 366
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1h = 367
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1m = 368
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1p = 369
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1su0 = 370
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha1su1 = 371
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha256h = 372
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha256h2 = 373
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha256su0 = 374
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sha256su1 = 375
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shadd16 = 376
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shadd8 = 377
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shasx = 378
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shsax = 379
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shsub16 = 380
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case shsub8 = 381
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smc = 382
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlabb = 383
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlabt = 384
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlad = 385
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smladx = 386
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlal = 387
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlalbb = 388
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlalbt = 389
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlald = 390
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlaldx = 391
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlaltb = 392
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlaltt = 393
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlatb = 394
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlatt = 395
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlawb = 396
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlawt = 397
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlsd = 398
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlsdx = 399
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlsld = 400
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smlsldx = 401
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmla = 402
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmlar = 403
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmls = 404
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmlsr = 405
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmul = 406
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smmulr = 407
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smuad = 408
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smuadx = 409
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smulbb = 410
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smulbt = 411
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smull = 412
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smultb = 413
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smultt = 414
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smulwb = 415
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smulwt = 416
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smusd = 417
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case smusdx = 418
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srsda = 419
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srsdb = 420
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srsia = 421
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case srsib = 422
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ssat = 423
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ssat16 = 424
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ssax = 425
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ssub16 = 426
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ssub8 = 427
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stc2l = 428
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stc2 = 429
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stcl = 430
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stc = 431
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stl = 432
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlb = 433
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlex = 434
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlexb = 435
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlexd = 436
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlexh = 437
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stlh = 438
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stmda = 439
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stmdb = 440
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stm = 441
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case stmib = 442
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strd = 443
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strex = 444
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strexb = 445
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strexd = 446
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strexh = 447
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case strht = 448
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sub = 449
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case svc = 450
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case swp = 451
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case swpb = 452
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxtab = 453
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxtab16 = 454
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxtah = 455
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxtb = 456
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxtb16 = 457
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sxth = 458
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case teq = 459
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case trap = 460
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tsb = 461
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tst = 462
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uadd16 = 463
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uadd8 = 464
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uasx = 465
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ubfx = 466
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case udf = 467
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case udiv = 468
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhadd16 = 469
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhadd8 = 470
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhasx = 471
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhsax = 472
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhsub16 = 473
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uhsub8 = 474
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case umaal = 475
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case umlal = 476
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case umull = 477
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqadd16 = 478
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqadd8 = 479
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqasx = 480
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqsax = 481
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqsub16 = 482
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uqsub8 = 483
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usad8 = 484
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usada8 = 485
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usat = 486
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usat16 = 487
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usax = 488
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usub16 = 489
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case usub8 = 490
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxtab = 491
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxtab16 = 492
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxtah = 493
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxtb = 494
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxtb16 = 495
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case uxth = 496
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vabal = 497
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaba = 498
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vabdl = 499
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vacge = 500
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vacgt = 501
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddhn = 502
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddl = 503
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vaddw = 504
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfmab = 505
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfmat = 506
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vbif = 507
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vbit = 508
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vbsl = 509
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vceq = 510
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcge = 511
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcgt = 512
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcle = 513
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vclt = 514
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcmpe = 515
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcnt = 516
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vdiv = 517
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vext = 518
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfmal = 519
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfmsl = 520
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfnma = 521
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vfnms = 522
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vins = 523
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vjcvt = 524
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldmdb = 525
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldmia = 526
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vldr = 527
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vlldm = 528
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vlstm = 529
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlal = 530
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmls = 531
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmlsl = 532
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmmla = 533
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovx = 534
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovl = 535
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmovn = 536
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmsr = 537
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vmull = 538
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vnmla = 539
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vnmls = 540
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vnmul = 541
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpadal = 542
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpaddl = 543
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpadd = 544
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpmax = 545
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vpmin = 546
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlal = 547
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmlsl = 548
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqdmull = 549
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovun = 550
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqmovn = 551
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrdmlsh = 552
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrn = 553
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqrshrun = 554
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrn = 555
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vqshrun = 556
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vraddhn = 557
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrecpe = 558
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrecps = 559
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrintr = 560
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrshrn = 561
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrsqrte = 562
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrsqrts = 563
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrsra = 564
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vrsubhn = 565
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vscclrm = 566
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsdot = 567
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vseleq = 568
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vselge = 569
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vselgt = 570
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vselvs = 571
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshll = 572
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vshrn = 573
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsmmla = 574
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsqrt = 575
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsra = 576
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstmdb = 577
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstmia = 578
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vstr = 579
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsubhn = 580
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsubl = 581
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsubw = 582
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vsudot = 583
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vswp = 584
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vtbl = 585
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vtbx = 586
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vcvtr = 587
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vtrn = 588
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vtst = 589
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vudot = 590
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vummla = 591
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vusdot = 592
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vusmmla = 593
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vuzp = 594
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case vzip = 595
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case addw = 596
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case aut = 597
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case autg = 598
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bfl = 599
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bflx = 600
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bf = 601
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bfcsel = 602
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bfx = 603
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bti = 604
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bxaut = 605
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case clrm = 606
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case csel = 607
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case csinc = 608
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case csinv = 609
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case csneg = 610
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dcps1 = 611
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dcps2 = 612
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dcps3 = 613
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case dls = 614
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case le = 615
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case orn = 616
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pac = 617
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pacbti = 618
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pacg = 619
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case sg = 620
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case subs = 621
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case subw = 622
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tbb = 623
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tbh = 624
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tt = 625
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case tta = 626
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ttat = 627
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case ttt = 628
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case wls = 629
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case blxns = 630
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case bxns = 631
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cbnz = 632
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case cbz = 633
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case pop = 634
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case push = 635
    /// generated content <ARMGenCSInsnEnum.inc> begin clang-format off
    case brkdiv0 = 636
    /// <-- mark the end of the list of instructions
    case ending = 637
    case aliasBegin = 638
    /// Real instr.: ARM_MVE_VORR
    case aliasVmov = 639
    /// Real instr.: ARM_HINT
    case aliasNop = 640
    /// Real instr.: ARM_HINT
    case aliasYield = 641
    /// Real instr.: ARM_HINT
    case aliasWfe = 642
    /// Real instr.: ARM_HINT
    case aliasWfi = 643
    /// Real instr.: ARM_HINT
    case aliasSev = 644
    /// Real instr.: ARM_HINT
    case aliasSevl = 645
    /// Real instr.: ARM_HINT
    case aliasEsb = 646
    /// Real instr.: ARM_HINT
    case aliasCsdb = 647
    /// Real instr.: ARM_HINT
    case aliasClrbhb = 648
    /// Real instr.: ARM_t2HINT
    case aliasPacbti = 649
    /// Real instr.: ARM_t2HINT
    case aliasBti = 650
    /// Real instr.: ARM_t2HINT
    case aliasPac = 651
    /// Real instr.: ARM_t2HINT
    case aliasAut = 652
    /// Real instr.: ARM_t2DSB
    case aliasSsbb = 653
    /// Real instr.: ARM_t2DSB
    case aliasPssbb = 654
    /// Real instr.: ARM_t2DSB
    case aliasDfb = 655
    /// Real instr.: ARM_t2CSINV
    case aliasCsetm = 656
    /// Real instr.: ARM_t2CSINC
    case aliasCset = 657
    /// Real instr.: ARM_t2CSINC
    case aliasCinc = 658
    /// Real instr.: ARM_t2CSINV
    case aliasCinv = 659
    /// Real instr.: ARM_t2CSNEG
    case aliasCneg = 660
    /// Real instr.: ARM_MVE_VMLADAVs8
    case aliasVmlav = 661
    /// Real instr.: ARM_MVE_VMLADAVas8
    case aliasVmlava = 662
    /// Real instr.: ARM_MVE_VRMLALDAVHs32
    case aliasVrmlalvh = 663
    /// Real instr.: ARM_MVE_VRMLALDAVHas32
    case aliasVrmlalvha = 664
    /// Real instr.: ARM_MVE_VMLALDAVs16
    case aliasVmlalv = 665
    /// Real instr.: ARM_MVE_VMLALDAVas16
    case aliasVmlalva = 666
    /// Real instr.: ARM_MVE_VBIC
    case aliasVbic = 667
    /// Real instr.: ARM_MVE_VEOR
    case aliasVeor = 668
    /// Real instr.: ARM_MVE_VORN
    case aliasVorn = 669
    /// Real instr.: ARM_MVE_VORR
    case aliasVorr = 670
    /// Real instr.: ARM_MVE_VAND
    case aliasVand = 671
    /// Real instr.: ARM_MVE_VPSEL
    case aliasVpsel = 672
    /// Real instr.: ARM_t2SUBS_PC_LR
    case aliasEret = 673
    /// Hardcoded in LLVM printer
    case aliasAsr = 674
    /// Hardcoded in LLVM printer
    case aliasLsl = 675
    /// Hardcoded in LLVM printer
    case aliasLsr = 676
    /// Hardcoded in LLVM printer
    case aliasRor = 677
    /// Hardcoded in LLVM printer
    case aliasRrx = 678
    /// Hardcoded in LLVM printer
    case aliasUxtw = 679
    /// Hardcoded in LLVM printer
    case aliasLdm = 680
    /// Hardcoded in LLVM printer
    case aliasPop = 681
    /// Hardcoded in LLVM printer
    case aliasPush = 682
    /// Hardcoded in LLVM printer
    case aliasPopw = 683
    /// Hardcoded in LLVM printer
    case aliasPushw = 684
    /// Hardcoded in LLVM printer
    case aliasVpop = 685
    /// Hardcoded in LLVM printer
    case aliasVpush = 686
    /// Hardcoded in LLVM printer
    case aliasEnd = 687
}

/// The memory barrier constants map directly to the 4-bit encoding of the option field for Memory Barrier operations.
public enum ArmMb: UInt32 {
    case oshld = 1
    case oshst = 2
    case osh = 3
    case nshld = 5
    case nshst = 6
    case nsh = 7
    case ishld = 9
    case ishst = 10
    case ish = 11
    case ld = 13
    case st = 14
    case sy = 15
}

/// The memory barrier constants map directly to the 4-bit encoding of the option field for Memory Barrier operations.
public enum ArmMbReserved: UInt32 {
    case _0 = 0
    case _4 = 4
    case _8 = 8
    case _12 = 12
}

public enum ArmMclasssysreg: UInt32 {
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case apsrG = 1024
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case iapsrG = 1025
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case eapsrG = 1026
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case xpsrG = 1027
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case apsr = 2048
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    public static let apsrNzcvq = 2048
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case iapsr = 2049
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    public static let iapsrNzcvq = 2049
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case eapsr = 2050
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    public static let eapsrNzcvq = 2050
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case xpsr = 2051
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    public static let xpsrNzcvq = 2051
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case ipsr = 2053
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case epsr = 2054
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case iepsr = 2055
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case msp = 2056
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case psp = 2057
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case msplim = 2058
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case psplim = 2059
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case primask = 2064
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case basepri = 2065
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case basepriMax = 2066
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case faultmask = 2067
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case control = 2068
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP0 = 2080
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP1 = 2081
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP2 = 2082
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP3 = 2083
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU0 = 2084
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU1 = 2085
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU2 = 2086
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU3 = 2087
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case mspNs = 2184
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pspNs = 2185
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case msplimNs = 2186
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case psplimNs = 2187
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case primaskNs = 2192
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case basepriNs = 2193
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case faultmaskNs = 2195
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case controlNs = 2196
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case spNs = 2200
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP0Ns = 2208
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP1Ns = 2209
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP2Ns = 2210
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyP3Ns = 2211
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU0Ns = 2212
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU1Ns = 2213
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU2Ns = 2214
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case pacKeyU3Ns = 2215
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case apsrNzcvqg = 3072
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case iapsrNzcvqg = 3073
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case eapsrNzcvqg = 3074
    /// generated content <ARMGenCSSystemOperandsEnum.inc:GET_ENUM_VALUES_MClassSysReg> begin clang-format off
    case xpsrNzcvqg = 3075
}

/// Operand type for instruction's operands
public enum ArmOp: UInt32 {
    /// Invalid
    case invalid = 0
    /// Register operand
    case reg = 1
    /// Immediate operand
    case imm = 2
    /// Floating-Point operand
    case fp = 3
    /// Predicate
    case pred = 4
    /// C-Immediate (coprocessor registers)
    case cimm = 16
    /// P-Immediate (coprocessor registers)
    case pimm = 17
    /// operand for SETEND instruction
    case setend = 18
    /// MSR/MRS special register operand
    case sysreg = 19
    /// Banked register operand
    case bankedreg = 20
    /// Collection of SPSR bits
    case spsr = 21
    /// Collection of CPSR bits
    case cpsr = 22
    /// Raw SYSm field
    case sysm = 23
    /// Vector predicate. Leaves inactive lanes of output vector register unchanged.
    case vpredR = 24
    /// Vector predicate. Don't preserved inactive lanes of output register.
    case vpredN = 25
    /// Memory operand
    case mem = 128
}

/// ARM registers
public enum ArmReg: UInt16 {
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case apsr = 1
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case apsrNzcv = 2
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case cpsr = 3
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpcxtns = 4
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpcxts = 5
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpexc = 6
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpinst = 7
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpscr = 8
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpscrNzcv = 9
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpscrNzcvqc = 10
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpsid = 11
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case itstate = 12
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case lr = 13
    /// alias registers
    public static let r14 = 13
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case pc = 14
    /// alias registers
    public static let r15 = 14
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case raAuthCode = 15
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case sp = 16
    /// alias registers
    public static let r13 = 16
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case spsr = 17
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case vpr = 18
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case zr = 19
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d0 = 20
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1 = 21
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d2 = 22
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3 = 23
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d4 = 24
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5 = 25
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d6 = 26
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7 = 27
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d8 = 28
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9 = 29
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d10 = 30
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11 = 31
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d12 = 32
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13 = 33
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d14 = 34
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15 = 35
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d16 = 36
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17 = 37
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d18 = 38
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19 = 39
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d20 = 40
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21 = 41
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d22 = 42
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23 = 43
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d24 = 44
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25 = 45
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d26 = 46
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27 = 47
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d28 = 48
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d29 = 49
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d30 = 50
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d31 = 51
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case fpinst2 = 52
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case mvfr0 = 53
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case mvfr1 = 54
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case mvfr2 = 55
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case p0 = 56
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q0 = 57
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q1 = 58
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q2 = 59
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q3 = 60
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q4 = 61
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q5 = 62
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q6 = 63
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q7 = 64
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q8 = 65
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q9 = 66
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q10 = 67
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q11 = 68
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q12 = 69
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q13 = 70
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q14 = 71
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q15 = 72
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r0 = 73
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r1 = 74
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r2 = 75
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r3 = 76
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r4 = 77
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r5 = 78
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r6 = 79
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r7 = 80
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r8 = 81
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r9 = 82
    /// alias registers
    public static let sb = 82
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r10 = 83
    /// alias registers
    public static let sl = 83
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r11 = 84
    /// alias registers
    public static let fp = 84
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r12 = 85
    /// alias registers
    public static let ip = 85
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s0 = 86
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s1 = 87
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s2 = 88
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s3 = 89
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s4 = 90
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s5 = 91
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s6 = 92
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s7 = 93
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s8 = 94
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s9 = 95
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s10 = 96
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s11 = 97
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s12 = 98
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s13 = 99
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s14 = 100
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s15 = 101
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s16 = 102
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s17 = 103
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s18 = 104
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s19 = 105
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s20 = 106
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s21 = 107
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s22 = 108
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s23 = 109
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s24 = 110
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s25 = 111
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s26 = 112
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s27 = 113
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s28 = 114
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s29 = 115
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s30 = 116
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case s31 = 117
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d0D2 = 118
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D3 = 119
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d2D4 = 120
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D5 = 121
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d4D6 = 122
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D7 = 123
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d6D8 = 124
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D9 = 125
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d8D10 = 126
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D11 = 127
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d10D12 = 128
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D13 = 129
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d12D14 = 130
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D15 = 131
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d14D16 = 132
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D17 = 133
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d16D18 = 134
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D19 = 135
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d18D20 = 136
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D21 = 137
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d20D22 = 138
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D23 = 139
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d22D24 = 140
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D25 = 141
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d24D26 = 142
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D27 = 143
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d26D28 = 144
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27D29 = 145
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d28D30 = 146
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d29D31 = 147
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q0Q1 = 148
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q1Q2 = 149
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q2Q3 = 150
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q3Q4 = 151
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q4Q5 = 152
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q5Q6 = 153
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q6Q7 = 154
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q7Q8 = 155
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q8Q9 = 156
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q9Q10 = 157
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q10Q11 = 158
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q11Q12 = 159
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q12Q13 = 160
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q13Q14 = 161
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q14Q15 = 162
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q0Q1Q2Q3 = 163
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q1Q2Q3Q4 = 164
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q2Q3Q4Q5 = 165
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q3Q4Q5Q6 = 166
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q4Q5Q6Q7 = 167
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q5Q6Q7Q8 = 168
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q6Q7Q8Q9 = 169
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q7Q8Q9Q10 = 170
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q8Q9Q10Q11 = 171
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q9Q10Q11Q12 = 172
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q10Q11Q12Q13 = 173
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q11Q12Q13Q14 = 174
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case q12Q13Q14Q15 = 175
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r0R1 = 176
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r2R3 = 177
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r4R5 = 178
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r6R7 = 179
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r8R9 = 180
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r10R11 = 181
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case r12Sp = 182
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d0D1D2 = 183
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D2D3 = 184
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d2D3D4 = 185
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D4D5 = 186
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d4D5D6 = 187
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D6D7 = 188
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d6D7D8 = 189
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D8D9 = 190
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d8D9D10 = 191
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D10D11 = 192
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d10D11D12 = 193
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D12D13 = 194
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d12D13D14 = 195
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D14D15 = 196
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d14D15D16 = 197
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D16D17 = 198
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d16D17D18 = 199
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D18D19 = 200
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d18D19D20 = 201
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D20D21 = 202
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d20D21D22 = 203
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D22D23 = 204
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d22D23D24 = 205
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D24D25 = 206
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d24D25D26 = 207
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D26D27 = 208
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d26D27D28 = 209
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27D28D29 = 210
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d28D29D30 = 211
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d29D30D31 = 212
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d0D2D4 = 213
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D3D5 = 214
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d2D4D6 = 215
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D5D7 = 216
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d4D6D8 = 217
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D7D9 = 218
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d6D8D10 = 219
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D9D11 = 220
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d8D10D12 = 221
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D11D13 = 222
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d10D12D14 = 223
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D13D15 = 224
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d12D14D16 = 225
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D15D17 = 226
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d14D16D18 = 227
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D17D19 = 228
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d16D18D20 = 229
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D19D21 = 230
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d18D20D22 = 231
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D21D23 = 232
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d20D22D24 = 233
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D23D25 = 234
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d22D24D26 = 235
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D25D27 = 236
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d24D26D28 = 237
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D27D29 = 238
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d26D28D30 = 239
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27D29D31 = 240
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d0D2D4D6 = 241
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D3D5D7 = 242
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d2D4D6D8 = 243
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D5D7D9 = 244
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d4D6D8D10 = 245
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D7D9D11 = 246
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d6D8D10D12 = 247
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D9D11D13 = 248
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d8D10D12D14 = 249
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D11D13D15 = 250
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d10D12D14D16 = 251
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D13D15D17 = 252
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d12D14D16D18 = 253
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D15D17D19 = 254
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d14D16D18D20 = 255
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D17D19D21 = 256
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d16D18D20D22 = 257
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D19D21D23 = 258
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d18D20D22D24 = 259
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D21D23D25 = 260
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d20D22D24D26 = 261
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D23D25D27 = 262
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d22D24D26D28 = 263
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D25D27D29 = 264
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d24D26D28D30 = 265
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D27D29D31 = 266
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D2 = 267
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D4 = 268
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D6 = 269
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D8 = 270
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D10 = 271
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D12 = 272
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D14 = 273
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D16 = 274
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D18 = 275
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D20 = 276
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D22 = 277
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D24 = 278
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D26 = 279
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27D28 = 280
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d29D30 = 281
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d1D2D3D4 = 282
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d3D4D5D6 = 283
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d5D6D7D8 = 284
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d7D8D9D10 = 285
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d9D10D11D12 = 286
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d11D12D13D14 = 287
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d13D14D15D16 = 288
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d15D16D17D18 = 289
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d17D18D19D20 = 290
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d19D20D21D22 = 291
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d21D22D23D24 = 292
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d23D24D25D26 = 293
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d25D26D27D28 = 294
    /// generated content <ARMGenCSRegEnum.inc> begin clang-format off
    case d27D28D29D30 = 295
    /// 296
    case ending = 296
}

/// Operand type for SETEND instruction
public enum ArmSetend: UInt32 {
    /// Uninitialized.
    case invalid = 0
    /// BE operand.
    case be = 1
    /// LE operand
    case le = 2
}

/// ARM shift type
public enum ArmSft: UInt32 {
    case invalid = 0
    case asr = 1
    case lsl = 2
    case lsr = 3
    case ror = 4
    case rrx = 5
    case uxtw = 6
    /// Added by Capstone to signal that the shift amount is stored in a register. shift.val should be interpreted as register id.
    case reg = 7
    /// Added by Capstone to signal that the shift amount is stored in a register. shift.val should be interpreted as register id.
    case asrReg = 8
    /// Added by Capstone to signal that the shift amount is stored in a register. shift.val should be interpreted as register id.
    case lslReg = 9
    /// Added by Capstone to signal that the shift amount is stored in a register. shift.val should be interpreted as register id.
    case lsrReg = 10
    /// Added by Capstone to signal that the shift amount is stored in a register. shift.val should be interpreted as register id.
    case rorReg = 11
}

public enum ArmVcc: UInt32 {
    case none = 0
    case then = 1
    case `else` = 2
}

/// Data type for elements of vector instructions.
public enum ArmVectordata: UInt32 {
    case invalid = 0
    /// Integer type
    case i8 = 1
    /// Integer type
    case i16 = 2
    /// Integer type
    case i32 = 3
    /// Integer type
    case i64 = 4
    /// Signed integer type
    case s8 = 5
    /// Signed integer type
    case s16 = 6
    /// Signed integer type
    case s32 = 7
    /// Signed integer type
    case s64 = 8
    /// Unsigned integer type
    case u8 = 9
    /// Unsigned integer type
    case u16 = 10
    /// Unsigned integer type
    case u32 = 11
    /// Unsigned integer type
    case u64 = 12
    /// Data type for VMUL/VMULL
    case p8 = 13
    /// Data type for VMUL/VMULL
    case p16 = 14
    /// Floating type
    case f16 = 15
    /// Floating type
    case f32 = 16
    /// Floating type
    case f64 = 17
    /// f16.f64
    case f16f64 = 18
    /// f64.f16
    case f64f16 = 19
    /// f32.f16
    case f32f16 = 20
    /// f32.f16
    case f16f32 = 21
    /// f64.f32
    case f64f32 = 22
    /// f32.f64
    case f32f64 = 23
    /// s32.f32
    case s32f32 = 24
    /// u32.f32
    case u32f32 = 25
    /// f32.s32
    case f32s32 = 26
    /// f32.u32
    case f32u32 = 27
    /// f64.s16
    case f64s16 = 28
    /// f32.s16
    case f32s16 = 29
    /// f64.s32
    case f64s32 = 30
    /// s16.f64
    case s16f64 = 31
    /// s16.f64
    case s16f32 = 32
    /// s32.f64
    case s32f64 = 33
    /// u16.f64
    case u16f64 = 34
    /// u16.f32
    case u16f32 = 35
    /// u32.f64
    case u32f64 = 36
    /// f64.u16
    case f64u16 = 37
    /// f32.u16
    case f32u16 = 38
    /// f64.u32
    case f64u32 = 39
    /// f16.u16
    case f16u16 = 40
    /// u16.f16
    case u16f16 = 41
    /// f16.u32
    case f16u32 = 42
    /// u32.f16
    case u32f16 = 43
    case f16s16 = 44
    case s16f16 = 45
    case f16s32 = 46
    case s32f16 = 47
}

#endif
