#if CAPSTONE_HAS_BPF
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Bpf)

public enum BpfExt: UInt32 {
    case invalid = 0
    case len = 1
}

/// Group of BPF instructions
public enum BpfGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    case load = 1
    case store = 2
    case alu = 3
    case jump = 4
    /// eBPF only
    case call = 5
    case `return` = 6
    /// cBPF only
    case misc = 7
    case ending = 8
}

/// BPF instruction
public enum BpfIns: UInt32 {
    case invalid = 0
    case add = 1
    case sub = 2
    case mul = 3
    case div = 4
    case sdiv = 5
    case or = 6
    case and = 7
    case lsh = 8
    case rsh = 9
    case neg = 10
    case mod = 11
    case smod = 12
    case xor = 13
    /// eBPF only
    case mov = 14
    /// eBPF only
    case movsb = 15
    /// eBPF only
    case movsh = 16
    /// eBPF only
    case arsh = 17
    case add64 = 18
    case sub64 = 19
    case mul64 = 20
    case div64 = 21
    case sdiv64 = 22
    case or64 = 23
    case and64 = 24
    case lsh64 = 25
    case rsh64 = 26
    case neg64 = 27
    case mod64 = 28
    case smod64 = 29
    case xor64 = 30
    case mov64 = 31
    case movsb64 = 32
    case movsh64 = 33
    case movsw64 = 34
    case arsh64 = 35
    case le16 = 36
    case le32 = 37
    case le64 = 38
    case be16 = 39
    case be32 = 40
    case be64 = 41
    case bswap16 = 42
    case bswap32 = 43
    case bswap64 = 44
    /// eBPF only
    case ldw = 45
    /// cBPF only
    public static let ld = 45
    case ldh = 46
    case ldb = 47
    /// eBPF only: load 64-bit imm
    case lddw = 48
    /// eBPF only
    case ldxw = 49
    /// cBPF only
    public static let ldx = 49
    /// eBPF only
    case ldxh = 50
    /// eBPF only
    case ldxb = 51
    /// eBPF only Packet data access
    case ldxdw = 52
    /// eBPF only
    case ldabsw = 53
    /// eBPF only
    case ldabsh = 54
    /// eBPF only
    case ldabsb = 55
    /// eBPF only
    case ldindw = 56
    /// eBPF only
    case ldindh = 57
    /// eBPF only
    case ldindb = 58
    /// eBPF only
    case stw = 59
    /// cBPF only
    public static let st = 59
    /// eBPF only
    case sth = 60
    /// eBPF only
    case stb = 61
    /// eBPF only
    case stdw = 62
    /// eBPF only
    case stxw = 63
    /// cBPF only
    public static let stx = 63
    /// eBPF only
    case stxh = 64
    /// eBPF only
    case stxb = 65
    /// eBPF only
    case stxdw = 66
    /// eBPF only
    case xaddw = 67
    /// eBPF only
    case xadddw = 68
    case ja = 69
    case jeq = 70
    case jgt = 71
    case jge = 72
    case jset = 73
    /// eBPF only
    case jne = 74
    /// eBPF only
    case jsgt = 75
    /// eBPF only
    case jsge = 76
    /// eBPF only
    case call = 77
    /// eBPF only
    case callx = 78
    /// eBPF only
    case exit = 79
    /// eBPF only
    case jlt = 80
    /// eBPF only
    case jle = 81
    /// eBPF only
    case jslt = 82
    /// eBPF only
    case jsle = 83
    case jal = 84
    case jeq32 = 85
    case jgt32 = 86
    case jge32 = 87
    case jset32 = 88
    case jne32 = 89
    case jsgt32 = 90
    case jsge32 = 91
    case jlt32 = 92
    case jle32 = 93
    case jslt32 = 94
    case jsle32 = 95
    case ret = 96
    case aadd = 97
    case aor = 98
    case aand = 99
    case axor = 100
    case afadd = 101
    case afor = 102
    case afand = 103
    case afxor = 104
    case axchg64 = 105
    case acmpxchg64 = 106
    case aadd64 = 107
    case aor64 = 108
    case aand64 = 109
    case axor64 = 110
    case afadd64 = 111
    case afor64 = 112
    case afand64 = 113
    case afxor64 = 114
    case tax = 115
    case txa = 116
    case ending = 117
}

/// Operand type for instruction's operands
public enum BpfOp: UInt32 {
    case invalid = 0
    case reg = 1
    case imm = 2
    case off = 16
    /// corresponds to cBPF's BPF_MSH mode
    case msh = 17
    /// cBPF's extension (not eBPF)
    case ext = 18
    case mem = 128
    /// M[k] in cBPF
    case mmem = 147
}

/// BPF registers
public enum BpfReg: UInt16 {
    case invalid = 0
    case a = 1
    case x = 2
    case r0 = 3
    case r1 = 4
    case r2 = 5
    case r3 = 6
    case r4 = 7
    case r5 = 8
    case r6 = 9
    case r7 = 10
    case r8 = 11
    case r9 = 12
    case r10 = 13
    case ending = 14
}

#endif
