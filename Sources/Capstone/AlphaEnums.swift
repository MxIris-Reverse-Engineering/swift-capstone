#if CAPSTONE_HAS_ALPHA
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Alpha)

/// > Group of Alpha instructions
public enum AlphaGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_CALL
    case call = 1
    /// = CS_GRP_JUMP
    case jump = 2
    /// = CS_GRP_BRANCH_RELATIVE
    case branchRelative = 3
    /// = mark the end of the list of groups
    case ending = 4
}

/// > Alpha instruction
public enum AlphaIns: UInt32 {
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case invalid = 0
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case addl = 1
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case addq = 2
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case addsssu = 3
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case addtssu = 4
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case and = 5
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case beq = 6
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bge = 7
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bgt = 8
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bic = 9
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bis = 10
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case blbc = 11
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case blbs = 12
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ble = 13
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case blt = 14
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bne = 15
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case br = 16
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case bsr = 17
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmoveq = 18
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovge = 19
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovgt = 20
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovlbc = 21
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovlbs = 22
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovle = 23
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovlt = 24
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmovne = 25
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmpbge = 26
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmpeq = 27
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmple = 28
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmplt = 29
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmpteqssu = 30
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmptlessu = 31
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmptltssu = 32
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmptunssu = 33
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmpule = 34
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cmpult = 35
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case callPal = 36
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case condBranch = 37
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cpyse = 38
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cpysn = 39
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cpys = 40
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ctlz = 41
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ctpop = 42
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cttz = 43
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cvtqsssui = 44
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cvtqtssui = 45
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cvtstss = 46
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cvttqssvc = 47
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case cvttsssui = 48
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case divsssu = 49
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case divtssu = 50
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ecb = 51
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case eqv = 52
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case excb = 53
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extbl = 54
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extlh = 55
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extll = 56
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extqh = 57
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extql = 58
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extwh = 59
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case extwl = 60
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fbeq = 61
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fbge = 62
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fbgt = 63
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fble = 64
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fblt = 65
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fbne = 66
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmoveq = 67
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmovge = 68
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmovgt = 69
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmovle = 70
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmovlt = 71
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fcmovne = 72
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fetch = 73
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case fetchM = 74
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ftois = 75
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ftoit = 76
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case insbl = 77
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case inslh = 78
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case insll = 79
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case insqh = 80
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case insql = 81
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case inswh = 82
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case inswl = 83
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case itofs = 84
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case itoft = 85
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case jmp = 86
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case jsr = 87
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case jsrCoroutine = 88
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case lda = 89
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldah = 90
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldbu = 91
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldl = 92
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldlL = 93
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldq = 94
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldqL = 95
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldqU = 96
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case lds = 97
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldt = 98
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ldwu = 99
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mb = 100
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskbl = 101
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case msklh = 102
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskll = 103
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskqh = 104
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskql = 105
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskwh = 106
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mskwl = 107
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mull = 108
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mulq = 109
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case mulsssu = 110
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case multssu = 111
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ornot = 112
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case rc = 113
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case ret = 114
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case rpcc = 115
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case rs = 116
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s4addl = 117
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s4addq = 118
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s4subl = 119
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s4subq = 120
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s8addl = 121
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s8addq = 122
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s8subl = 123
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case s8subq = 124
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sextb = 125
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sextw = 126
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sll = 127
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sqrtsssu = 128
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sqrttssu = 129
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sra = 130
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case srl = 131
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stb = 132
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stl = 133
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stlC = 134
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stq = 135
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stqC = 136
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stqU = 137
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case sts = 138
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stt = 139
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case stw = 140
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case subl = 141
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case subq = 142
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case subsssu = 143
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case subtssu = 144
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case trapb = 145
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case umulh = 146
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case wh64 = 147
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case wh64en = 148
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case wmb = 149
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case xor = 150
    /// generated content <AlphaGenCSInsnEnum.inc:GET_INSTR_ENUM> begin clang-format off
    case zapnot = 151
    /// <-- mark the end of the list of instructions
    case ending = 152
}

/// > Operand type for instruction's operands
public enum AlphaOp: UInt32 {
    /// CS_OP_INVALID (Uninitialized).
    case invalid = 0
    /// CS_OP_REG (Register operand).
    case reg = 1
    /// CS_OP_IMM (Immediate operand).
    case imm = 2
}

/// > Alpha registers
public enum AlphaReg: UInt16 {
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f0 = 1
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f1 = 2
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f2 = 3
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f3 = 4
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f4 = 5
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f5 = 6
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f6 = 7
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f7 = 8
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f8 = 9
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f9 = 10
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f10 = 11
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f11 = 12
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f12 = 13
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f13 = 14
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f14 = 15
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f15 = 16
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f16 = 17
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f17 = 18
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f18 = 19
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f19 = 20
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f20 = 21
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f21 = 22
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f22 = 23
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f23 = 24
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f24 = 25
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f25 = 26
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f26 = 27
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f27 = 28
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f28 = 29
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f29 = 30
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f30 = 31
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case f31 = 32
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r0 = 33
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r1 = 34
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r2 = 35
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r3 = 36
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r4 = 37
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r5 = 38
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r6 = 39
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r7 = 40
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r8 = 41
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r9 = 42
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r10 = 43
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r11 = 44
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r12 = 45
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r13 = 46
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r14 = 47
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r15 = 48
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r16 = 49
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r17 = 50
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r18 = 51
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r19 = 52
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r20 = 53
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r21 = 54
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r22 = 55
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r23 = 56
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r24 = 57
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r25 = 58
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r26 = 59
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r27 = 60
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r28 = 61
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r29 = 62
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r30 = 63
    /// generated content <AlphaGenCSRegEnum.inc> begin clang-format off
    case r31 = 64
    /// 65
    case ending = 65
}

#endif
