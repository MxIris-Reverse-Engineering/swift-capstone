#if CAPSTONE_HAS_HPPA
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (Hppa)

/// Group of HPPA instructions
public enum HppaGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    case computation = 128
    case multimedia = 129
    case memRef = 130
    case longImm = 131
    case branch = 132
    case sysctrl = 133
    case assist = 134
    case float = 135
    case perfmon = 136
    case ending = 137
}

/// HPPA instruction
public enum HppaIns: UInt32 {
    case invalid = 0
    case add = 1
    case addi = 2
    case addio = 3
    case addit = 4
    case addito = 5
    case addb = 6
    case addbt = 7
    case addbf = 8
    case addib = 9
    case addibt = 10
    case addibf = 11
    case addil = 12
    case addc = 13
    case addco = 14
    case addl = 15
    case addo = 16
    case and = 17
    case andcm = 18
    case b = 19
    case bb = 20
    case be = 21
    case bl = 22
    case ble = 23
    case blr = 24
    case `break` = 25
    case bv = 26
    case bvb = 27
    case bve = 28
    case call = 29
    case cldd = 30
    case cldds = 31
    case clddx = 32
    case cldw = 33
    case cldws = 34
    case cldwx = 35
    case clrbts = 36
    case cmpb = 37
    case cmpclr = 38
    case cmpib = 39
    case cmpiclr = 40
    case comb = 41
    case combt = 42
    case combf = 43
    case comclr = 44
    case comib = 45
    case comibt = 46
    case comibf = 47
    case comiclr = 48
    case copr = 49
    case copy = 50
    case cstd = 51
    case cstds = 52
    case cstdx = 53
    case cstw = 54
    case cstws = 55
    case cstwx = 56
    case dcor = 57
    case dep = 58
    case depi = 59
    case depd = 60
    case depdi = 61
    case depw = 62
    case depwi = 63
    case diag = 64
    case ds = 65
    case extrd = 66
    case extrs = 67
    case extru = 68
    case extrw = 69
    case fabs = 70
    case fadd = 71
    case fcmp = 72
    case fcnv = 73
    case fcnvff = 74
    case fcnvfx = 75
    case fcnvfxt = 76
    case fcnvxf = 77
    case fcpy = 78
    case fdc = 79
    case fdce = 80
    case fdiv = 81
    case fic = 82
    case fice = 83
    case fid = 84
    case fldd = 85
    case fldds = 86
    case flddx = 87
    case fldw = 88
    case fldws = 89
    case fldwx = 90
    case fmpy = 91
    case fmpyadd = 92
    case fmpyfadd = 93
    case fmpynfadd = 94
    case fmpysub = 95
    case fneg = 96
    case fnegabs = 97
    case frem = 98
    case frnd = 99
    case fsqrt = 100
    case fstd = 101
    case fstds = 102
    case fstdx = 103
    case fstw = 104
    case fstws = 105
    case fstwx = 106
    case fstqs = 107
    case fstqx = 108
    case fsub = 109
    case ftest = 110
    case gate = 111
    case gfr = 112
    case gfw = 113
    case grshdw = 114
    case hadd = 115
    case havg = 116
    case hshl = 117
    case hshladd = 118
    case hshr = 119
    case hshradd = 120
    case hsub = 121
    case idtlba = 122
    case idtlbp = 123
    case idtlbt = 124
    case idcor = 125
    case iitlba = 126
    case iitlbp = 127
    case iitlbt = 128
    case lci = 129
    case ldb = 130
    case ldbs = 131
    case ldbx = 132
    case ldcd = 133
    case ldcw = 134
    case ldcws = 135
    case ldcwx = 136
    case ldd = 137
    case ldda = 138
    case ldh = 139
    case ldhs = 140
    case ldhx = 141
    case ldi = 142
    case ldil = 143
    case ldo = 144
    case ldsid = 145
    case ldw = 146
    case ldwa = 147
    case ldwas = 148
    case ldwax = 149
    case ldwm = 150
    case ldws = 151
    case ldwx = 152
    case lpa = 153
    case mfcpu = 154
    case mfctl = 155
    case mfia = 156
    case mfsp = 157
    case mixh = 158
    case mixw = 159
    case movb = 160
    case movib = 161
    case mtcpu = 162
    case mtctl = 163
    case mtsar = 164
    case mtsarcm = 165
    case mtsm = 166
    case mtsp = 167
    case nop = 168
    case or = 169
    case pdc = 170
    case pdtlb = 171
    case pdtlbe = 172
    case permh = 173
    case pitlb = 174
    case pitlbe = 175
    case pmdis = 176
    case pmenb = 177
    case popbts = 178
    case probe = 179
    case probei = 180
    case prober = 181
    case proberi = 182
    case probew = 183
    case probewi = 184
    case pushbts = 185
    case pushnom = 186
    case ret = 187
    case rfi = 188
    case rfir = 189
    case rsm = 190
    case shdwgr = 191
    case shladd = 192
    case sh1add = 193
    case sh1addl = 194
    case sh1addo = 195
    case sh2add = 196
    case sh2addl = 197
    case sh2addo = 198
    case sh3add = 199
    case sh3addl = 200
    case sh3addo = 201
    case shd = 202
    case shrpd = 203
    case shrpw = 204
    case spop0 = 205
    case spop1 = 206
    case spop2 = 207
    case spop3 = 208
    case ssm = 209
    case stb = 210
    case stbs = 211
    case stby = 212
    case stbys = 213
    case std = 214
    case stda = 215
    case stdby = 216
    case sth = 217
    case sths = 218
    case stw = 219
    case stwa = 220
    case stwas = 221
    case stws = 222
    case stwm = 223
    case sub = 224
    case subb = 225
    case subbo = 226
    case subi = 227
    case subio = 228
    case subo = 229
    case subt = 230
    case subto = 231
    case sync = 232
    case syncdma = 233
    case tocdis = 234
    case tocen = 235
    case uaddcm = 236
    case uaddcmt = 237
    case uxor = 238
    case vdep = 239
    case vdepi = 240
    case vextrs = 241
    case vextru = 242
    case vshd = 243
    case xmpyu = 244
    case xor = 245
    case zdep = 246
    case zdepi = 247
    case zvdep = 248
    case zvdepi = 249
    case ending = 250
}

/// HPPA modifiers type. Can be string (most of them) or int (uid, sop)
public enum HppaMod: UInt32 {
    case str = 0
    case int = 1
}

/// Operand type for instruction's operands
public enum HppaOp: UInt32 {
    case invalid = 0
    case reg = 1
    case imm = 2
    case idxReg = 16
    case disp = 17
    case target = 18
    case mem = 128
}

/// > HPPA registers
public enum HppaReg: UInt16 {
    case invalid = 0
    /// > General registers
    case gr0 = 1
    /// > General registers
    case gr1 = 2
    /// > General registers
    case gr2 = 3
    /// > General registers
    case gr3 = 4
    /// > General registers
    case gr4 = 5
    /// > General registers
    case gr5 = 6
    /// > General registers
    case gr6 = 7
    /// > General registers
    case gr7 = 8
    /// > General registers
    case gr8 = 9
    /// > General registers
    case gr9 = 10
    /// > General registers
    case gr10 = 11
    /// > General registers
    case gr11 = 12
    /// > General registers
    case gr12 = 13
    /// > General registers
    case gr13 = 14
    /// > General registers
    case gr14 = 15
    /// > General registers
    case gr15 = 16
    /// > General registers
    case gr16 = 17
    /// > General registers
    case gr17 = 18
    /// > General registers
    case gr18 = 19
    /// > General registers
    case gr19 = 20
    /// > General registers
    case gr20 = 21
    /// > General registers
    case gr21 = 22
    /// > General registers
    case gr22 = 23
    /// > General registers
    case gr23 = 24
    /// > General registers
    case gr24 = 25
    /// > General registers
    case gr25 = 26
    /// > General registers
    case gr26 = 27
    /// > General registers
    case gr27 = 28
    /// > General registers
    case gr28 = 29
    /// > General registers
    case gr29 = 30
    /// > General registers
    case gr30 = 31
    /// > General registers
    case gr31 = 32
    /// > Floating-point registers
    case fpr0 = 33
    /// > Floating-point registers
    case fpr1 = 34
    /// > Floating-point registers
    case fpr2 = 35
    /// > Floating-point registers
    case fpr3 = 36
    /// > Floating-point registers
    case fpr4 = 37
    /// > Floating-point registers
    case fpr5 = 38
    /// > Floating-point registers
    case fpr6 = 39
    /// > Floating-point registers
    case fpr7 = 40
    /// > Floating-point registers
    case fpr8 = 41
    /// > Floating-point registers
    case fpr9 = 42
    /// > Floating-point registers
    case fpr10 = 43
    /// > Floating-point registers
    case fpr11 = 44
    /// > Floating-point registers
    case fpr12 = 45
    /// > Floating-point registers
    case fpr13 = 46
    /// > Floating-point registers
    case fpr14 = 47
    /// > Floating-point registers
    case fpr15 = 48
    /// > Floating-point registers
    case fpr16 = 49
    /// > Floating-point registers
    case fpr17 = 50
    /// > Floating-point registers
    case fpr18 = 51
    /// > Floating-point registers
    case fpr19 = 52
    /// > Floating-point registers
    case fpr20 = 53
    /// > Floating-point registers
    case fpr21 = 54
    /// > Floating-point registers
    case fpr22 = 55
    /// > Floating-point registers
    case fpr23 = 56
    /// > Floating-point registers
    case fpr24 = 57
    /// > Floating-point registers
    case fpr25 = 58
    /// > Floating-point registers
    case fpr26 = 59
    /// > Floating-point registers
    case fpr27 = 60
    /// > Floating-point registers
    case fpr28 = 61
    /// > Floating-point registers
    case fpr29 = 62
    /// > Floating-point registers
    case fpr30 = 63
    /// > Floating-point registers
    case fpr31 = 64
    /// > Space registers
    case sr0 = 65
    /// > Space registers
    case sr1 = 66
    /// > Space registers
    case sr2 = 67
    /// > Space registers
    case sr3 = 68
    /// > Space registers
    case sr4 = 69
    /// > Space registers
    case sr5 = 70
    /// > Space registers
    case sr6 = 71
    /// > Space registers
    case sr7 = 72
    /// > Control registers
    case cr0 = 73
    /// > Control registers
    case cr1 = 74
    /// > Control registers
    case cr2 = 75
    /// > Control registers
    case cr3 = 76
    /// > Control registers
    case cr4 = 77
    /// > Control registers
    case cr5 = 78
    /// > Control registers
    case cr6 = 79
    /// > Control registers
    case cr7 = 80
    /// > Control registers
    case cr8 = 81
    /// > Control registers
    case cr9 = 82
    /// > Control registers
    case cr10 = 83
    /// > Control registers
    case cr11 = 84
    /// > Control registers
    case cr12 = 85
    /// > Control registers
    case cr13 = 86
    /// > Control registers
    case cr14 = 87
    /// > Control registers
    case cr15 = 88
    /// > Control registers
    case cr16 = 89
    /// > Control registers
    case cr17 = 90
    /// > Control registers
    case cr18 = 91
    /// > Control registers
    case cr19 = 92
    /// > Control registers
    case cr20 = 93
    /// > Control registers
    case cr21 = 94
    /// > Control registers
    case cr22 = 95
    /// > Control registers
    case cr23 = 96
    /// > Control registers
    case cr24 = 97
    /// > Control registers
    case cr25 = 98
    /// > Control registers
    case cr26 = 99
    /// > Control registers
    case cr27 = 100
    /// > Control registers
    case cr28 = 101
    /// > Control registers
    case cr29 = 102
    /// > Control registers
    case cr30 = 103
    /// > Control registers
    case cr31 = 104
    /// > Special floating point exception registers
    case fpe0 = 105
    /// > Special floating point exception registers
    case fpe1 = 106
    /// > Special floating point exception registers
    case fpe2 = 107
    /// > Special floating point exception registers
    case fpe3 = 108
    /// > Special floating point exception registers
    case fpe4 = 109
    /// > Special floating point exception registers
    case fpe5 = 110
    /// > Special floating point exception registers
    case fpe6 = 111
    /// > Special floating point exception registers
    case fpe7 = 112
    /// > Special floating point exception registers
    case fpe8 = 113
    /// > Special floating point exception registers
    case fpe9 = 114
    /// > Special floating point exception registers
    case fpe10 = 115
    /// > Special floating point exception registers
    case fpe11 = 116
    /// > Special floating point exception registers
    case fpe12 = 117
    /// > Special floating point exception registers
    case fpe13 = 118
    /// > Special floating point exception registers
    case fpe14 = 119
    /// > Special floating point exception registers
    case fpe15 = 120
    /// > Special floating point exception registers
    case fpe16 = 121
    /// > Special floating point exception registers
    case fpe17 = 122
    /// > Special floating point exception registers
    case fpe18 = 123
    /// > Special floating point exception registers
    case fpe19 = 124
    /// > Special floating point exception registers
    case fpe20 = 125
    /// > Special floating point exception registers
    case fpe21 = 126
    /// > Special floating point exception registers
    case fpe22 = 127
    /// > Special floating point exception registers
    case fpe23 = 128
    /// > Special floating point exception registers
    case fpe24 = 129
    /// > Special floating point exception registers
    case fpe25 = 130
    /// > Special floating point exception registers
    case fpe26 = 131
    /// > Special floating point exception registers
    case fpe27 = 132
    /// > Special floating point exception registers
    case fpe28 = 133
    /// > Special floating point exception registers
    case fpe29 = 134
    /// > Special floating point exception registers
    case fpe30 = 135
    /// > Special floating point exception registers
    case fpe31 = 136
    /// > Single-precision floating point registers
    case spFpr0 = 137
    /// > Single-precision floating point registers
    case spFpr1 = 138
    /// > Single-precision floating point registers
    case spFpr2 = 139
    /// > Single-precision floating point registers
    case spFpr3 = 140
    /// > Single-precision floating point registers
    case spFpr4 = 141
    /// > Single-precision floating point registers
    case spFpr5 = 142
    /// > Single-precision floating point registers
    case spFpr6 = 143
    /// > Single-precision floating point registers
    case spFpr7 = 144
    /// > Single-precision floating point registers
    case spFpr8 = 145
    /// > Single-precision floating point registers
    case spFpr9 = 146
    /// > Single-precision floating point registers
    case spFpr10 = 147
    /// > Single-precision floating point registers
    case spFpr11 = 148
    /// > Single-precision floating point registers
    case spFpr12 = 149
    /// > Single-precision floating point registers
    case spFpr13 = 150
    /// > Single-precision floating point registers
    case spFpr14 = 151
    /// > Single-precision floating point registers
    case spFpr15 = 152
    /// > Single-precision floating point registers
    case spFpr16 = 153
    /// > Single-precision floating point registers
    case spFpr17 = 154
    /// > Single-precision floating point registers
    case spFpr18 = 155
    /// > Single-precision floating point registers
    case spFpr19 = 156
    /// > Single-precision floating point registers
    case spFpr20 = 157
    /// > Single-precision floating point registers
    case spFpr21 = 158
    /// > Single-precision floating point registers
    case spFpr22 = 159
    /// > Single-precision floating point registers
    case spFpr23 = 160
    /// > Single-precision floating point registers
    case spFpr24 = 161
    /// > Single-precision floating point registers
    case spFpr25 = 162
    /// > Single-precision floating point registers
    case spFpr26 = 163
    /// > Single-precision floating point registers
    case spFpr27 = 164
    /// > Single-precision floating point registers
    case spFpr28 = 165
    /// > Single-precision floating point registers
    case spFpr29 = 166
    /// > Single-precision floating point registers
    case spFpr30 = 167
    /// > Single-precision floating point registers
    case spFpr31 = 168
    /// > Single-precision floating point registers
    case ending = 169
}

#endif
