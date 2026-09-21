#if CAPSTONE_HAS_SYSTEMZ
// For Capstone Engine. AUTO-GENERATED FILE, DO NOT EDIT (SystemZ)

public enum SystemZAm: UInt32 {
    case invalid = 0
    /// Base and displacement are set.
    case bd = 1
    /// Base, displacement and index register are set.
    case bdx = 2
    /// Base, displacement and length (immediate) are set.
    case bdl = 3
    /// Base, displacement and length (register) are set.
    case bdr = 4
    /// Base, displacement and index vector register are set.
    case bdv = 5
}

/// Enums corresponding to SystemZ condition codes
public enum SystemZCc: UInt32 {
    case o = 0
    case h = 1
    case nle = 2
    case l = 3
    case nhe = 4
    case lh = 5
    case ne = 6
    case e = 7
    case nlh = 8
    case he = 9
    case nl = 10
    case le = 11
    case nh = 12
    case no = 13
    case invalid = 14
}

/// Group of SystemZ instructions
public enum SystemZFeature: UInt32 {
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuresoftfloat = 128
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurebackchain = 129
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuredistinctops = 130
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurefastserialization = 131
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurefpextension = 132
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurehighword = 133
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureinterlockedaccess1 = 134
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureloadstoreoncond = 135
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurepopulationcount = 136
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist3 = 137
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist4 = 138
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureresetreferencebitsmultiple = 139
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureexecutionhint = 140
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureloadandtrap = 141
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremiscellaneousextensions = 142
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureprocessorassist = 143
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuretransactionalexecution = 144
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuredfpzonedconversion = 145
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureenhanceddat2 = 146
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureloadandzerorightmostbyte = 147
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureloadstoreoncond2 = 148
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist5 = 149
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuredfppackedconversion = 150
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevector = 151
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremiscellaneousextensions2 = 152
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureguardedstorage = 153
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist7 = 154
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist8 = 155
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevectorenhancements1 = 156
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevectorpackeddecimal = 157
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureinsertreferencebitsmultiple = 158
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremiscellaneousextensions3 = 159
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuremessagesecurityassist9 = 160
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevectorenhancements2 = 161
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevectorpackeddecimalenhancement = 162
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureenhancedsort = 163
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featuredeflateconversion = 164
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurevectorpackeddecimalenhancement2 = 165
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurennpassist = 166
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featurebearenhancement = 167
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureresetdatprotection = 168
    /// generated content <SystemZGenCSFeatureEnum.inc> begin clang-format off
    case featureprocessoractivityinstrumentation = 169
}

/// Group of SystemZ instructions
public enum SystemZGrp: UInt8 {
    /// = CS_GRP_INVALID
    case invalid = 0
    /// = CS_GRP_JUMP
    case jump = 1
    /// CS_GRP_CALL
    case call = 2
    /// CS_GRP_RET
    case ret = 3
    /// CS_GRP_INT
    case int = 4
    /// CS_GRP_IRET
    case iret = 5
    /// CS_GRP_PRIVILEGE
    case privilege = 6
    /// CS_GRP_BRANCH_RELATIVE
    case branchRelative = 7
    /// <-- mark the end of the list of groups
    case ending = 170
}

/// SystemZ instruction
public enum SystemZIns: UInt32 {
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case a = 1
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ad = 2
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case adb = 3
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case adbr = 4
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case adr = 5
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case adtr = 6
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case adtra = 7
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ae = 8
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aeb = 9
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aebr = 10
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aer = 11
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case afi = 12
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ag = 13
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agf = 14
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agfi = 15
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agfr = 16
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agh = 17
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aghi = 18
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aghik = 19
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agr = 20
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agrk = 21
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case agsi = 22
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ah = 23
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ahhhr = 24
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ahhlr = 25
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ahi = 26
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ahik = 27
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ahy = 28
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aih = 29
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case al = 30
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alc = 31
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alcg = 32
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alcgr = 33
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alcr = 34
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alfi = 35
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alg = 36
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algf = 37
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algfi = 38
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algfr = 39
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alghsik = 40
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algr = 41
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algrk = 42
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case algsi = 43
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alhhhr = 44
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alhhlr = 45
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alhsik = 46
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alr = 47
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alrk = 48
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alsi = 49
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alsih = 50
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case alsihn = 51
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aly = 52
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ap = 53
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ar = 54
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ark = 55
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case asi = 56
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case au = 57
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aur = 58
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case aw = 59
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case awr = 60
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case axbr = 61
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case axr = 62
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case axtr = 63
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case axtra = 64
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ay = 65
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case b = 66
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bakr = 67
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bal = 68
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case balr = 69
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bas = 70
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case basr = 71
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bassm = 72
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case be = 73
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bh = 74
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bhe = 75
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bl = 76
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ble = 77
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case blh = 78
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bm = 79
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bne = 80
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnh = 81
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnhe = 82
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnl = 83
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnle = 84
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnlh = 85
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnm = 86
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bno = 87
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnp = 88
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnz = 89
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bo = 90
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bp = 91
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bz = 92
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bc = 93
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bcr = 94
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bct = 95
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bctg = 96
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bctgr = 97
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bctr = 98
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bi = 99
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bie = 100
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bih = 101
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bihe = 102
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bil = 103
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bile = 104
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bilh = 105
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bim = 106
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bine = 107
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binh = 108
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binhe = 109
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binl = 110
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binle = 111
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binlh = 112
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binm = 113
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bino = 114
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binp = 115
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case binz = 116
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bio = 117
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bip = 118
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case biz = 119
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bic = 120
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bpp = 121
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bprp = 122
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case br = 123
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bras = 124
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brasl = 125
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ber = 126
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bhr = 127
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bher = 128
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case blr = 129
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bler = 130
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case blhr = 131
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bmr = 132
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bner = 133
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnhr = 134
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnher = 135
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnlr = 136
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnler = 137
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnlhr = 138
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnmr = 139
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnor = 140
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnpr = 141
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bnzr = 142
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bor = 143
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bpr = 144
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bzr = 145
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brc = 146
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brcl = 147
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brct = 148
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brctg = 149
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brcth = 150
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brxh = 151
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brxhg = 152
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brxle = 153
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case brxlg = 154
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bsa = 155
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bsg = 156
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bsm = 157
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bxh = 158
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bxhg = 159
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bxle = 160
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case bxleg = 161
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case c = 162
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cd = 163
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdb = 164
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdbr = 165
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdfbr = 166
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdfbra = 167
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdfr = 168
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdftr = 169
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdgbr = 170
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdgbra = 171
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdgr = 172
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdgtr = 173
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdgtra = 174
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdlfbr = 175
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdlftr = 176
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdlgbr = 177
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdlgtr = 178
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdpt = 179
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdr = 180
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cds = 181
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdsg = 182
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdstr = 183
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdsy = 184
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdtr = 185
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdutr = 186
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cdzt = 187
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ce = 188
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ceb = 189
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cebr = 190
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cedtr = 191
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cefbr = 192
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cefbra = 193
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cefr = 194
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cegbr = 195
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cegbra = 196
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cegr = 197
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case celfbr = 198
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case celgbr = 199
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cer = 200
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cextr = 201
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfc = 202
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfdbr = 203
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfdbra = 204
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfdr = 205
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfdtr = 206
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfebr = 207
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfebra = 208
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfer = 209
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfi = 210
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfxbr = 211
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfxbra = 212
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfxr = 213
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cfxtr = 214
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cg = 215
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgdbr = 216
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgdbra = 217
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgdr = 218
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgdtr = 219
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgdtra = 220
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgebr = 221
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgebra = 222
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cger = 223
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgf = 224
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgfi = 225
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgfr = 226
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgfrl = 227
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgh = 228
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cghi = 229
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cghrl = 230
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cghsi = 231
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgib = 232
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibe = 233
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibh = 234
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibhe = 235
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibl = 236
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgible = 237
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgiblh = 238
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibne = 239
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibnh = 240
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibnhe = 241
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibnl = 242
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibnle = 243
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgibnlh = 244
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgij = 245
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgije = 246
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijh = 247
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijhe = 248
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijl = 249
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijle = 250
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijlh = 251
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijne = 252
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijnh = 253
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijnhe = 254
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijnl = 255
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijnle = 256
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgijnlh = 257
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgit = 258
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgite = 259
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgith = 260
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgithe = 261
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitl = 262
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitle = 263
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitlh = 264
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitne = 265
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitnh = 266
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitnhe = 267
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitnl = 268
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitnle = 269
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgitnlh = 270
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgr = 271
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrb = 272
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbe = 273
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbh = 274
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbhe = 275
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbl = 276
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrble = 277
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrblh = 278
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbne = 279
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbnh = 280
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbnhe = 281
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbnl = 282
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbnle = 283
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrbnlh = 284
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrj = 285
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrje = 286
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjh = 287
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjhe = 288
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjl = 289
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjle = 290
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjlh = 291
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjne = 292
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjnh = 293
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjnhe = 294
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjnl = 295
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjnle = 296
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrjnlh = 297
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrl = 298
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrt = 299
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrte = 300
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrth = 301
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrthe = 302
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtl = 303
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtle = 304
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtlh = 305
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtne = 306
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtnh = 307
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtnhe = 308
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtnl = 309
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtnle = 310
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgrtnlh = 311
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgxbr = 312
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgxbra = 313
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgxr = 314
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgxtr = 315
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cgxtra = 316
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ch = 317
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chf = 318
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chhr = 319
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chhsi = 320
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chi = 321
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chlr = 322
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chrl = 323
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chsi = 324
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case chy = 325
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cib = 326
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibe = 327
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibh = 328
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibhe = 329
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibl = 330
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cible = 331
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ciblh = 332
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibne = 333
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibnh = 334
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibnhe = 335
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibnl = 336
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibnle = 337
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cibnlh = 338
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cih = 339
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cij = 340
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cije = 341
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijh = 342
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijhe = 343
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijl = 344
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijle = 345
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijlh = 346
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijne = 347
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijnh = 348
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijnhe = 349
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijnl = 350
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijnle = 351
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cijnlh = 352
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cit = 353
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cite = 354
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cith = 355
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cithe = 356
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citl = 357
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citle = 358
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citlh = 359
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citne = 360
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citnh = 361
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citnhe = 362
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citnl = 363
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citnle = 364
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case citnlh = 365
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cksm = 366
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cl = 367
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clc = 368
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clcl = 369
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clcle = 370
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clclu = 371
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfdbr = 372
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfdtr = 373
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfebr = 374
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfhsi = 375
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfi = 376
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfit = 377
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfite = 378
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfith = 379
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfithe = 380
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitl = 381
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitle = 382
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitlh = 383
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitne = 384
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitnh = 385
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitnhe = 386
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitnl = 387
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitnle = 388
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfitnlh = 389
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfxbr = 390
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clfxtr = 391
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clg = 392
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgdbr = 393
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgdtr = 394
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgebr = 395
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgf = 396
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgfi = 397
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgfr = 398
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgfrl = 399
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clghrl = 400
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clghsi = 401
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgib = 402
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibe = 403
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibh = 404
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibhe = 405
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibl = 406
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgible = 407
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgiblh = 408
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibne = 409
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibnh = 410
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibnhe = 411
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibnl = 412
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibnle = 413
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgibnlh = 414
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgij = 415
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgije = 416
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijh = 417
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijhe = 418
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijl = 419
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijle = 420
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijlh = 421
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijne = 422
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijnh = 423
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijnhe = 424
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijnl = 425
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijnle = 426
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgijnlh = 427
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgit = 428
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgite = 429
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgith = 430
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgithe = 431
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitl = 432
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitle = 433
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitlh = 434
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitne = 435
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitnh = 436
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitnhe = 437
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitnl = 438
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitnle = 439
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgitnlh = 440
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgr = 441
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrb = 442
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbe = 443
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbh = 444
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbhe = 445
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbl = 446
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrble = 447
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrblh = 448
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbne = 449
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbnh = 450
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbnhe = 451
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbnl = 452
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbnle = 453
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrbnlh = 454
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrj = 455
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrje = 456
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjh = 457
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjhe = 458
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjl = 459
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjle = 460
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjlh = 461
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjne = 462
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjnh = 463
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjnhe = 464
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjnl = 465
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjnle = 466
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrjnlh = 467
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrl = 468
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrt = 469
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrte = 470
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrth = 471
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrthe = 472
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtl = 473
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtle = 474
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtlh = 475
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtne = 476
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtnh = 477
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtnhe = 478
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtnl = 479
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtnle = 480
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgrtnlh = 481
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgt = 482
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgte = 483
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgth = 484
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgthe = 485
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtl = 486
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtle = 487
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtlh = 488
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtne = 489
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtnh = 490
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtnhe = 491
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtnl = 492
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtnle = 493
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgtnlh = 494
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgxbr = 495
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clgxtr = 496
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clhf = 497
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clhhr = 498
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clhhsi = 499
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clhlr = 500
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clhrl = 501
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cli = 502
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clib = 503
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibe = 504
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibh = 505
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibhe = 506
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibl = 507
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clible = 508
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cliblh = 509
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibne = 510
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibnh = 511
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibnhe = 512
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibnl = 513
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibnle = 514
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clibnlh = 515
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clih = 516
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clij = 517
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clije = 518
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijh = 519
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijhe = 520
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijl = 521
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijle = 522
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijlh = 523
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijne = 524
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijnh = 525
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijnhe = 526
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijnl = 527
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijnle = 528
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clijnlh = 529
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cliy = 530
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clm = 531
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clmh = 532
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clmy = 533
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clr = 534
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrb = 535
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbe = 536
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbh = 537
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbhe = 538
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbl = 539
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrble = 540
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrblh = 541
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbne = 542
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbnh = 543
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbnhe = 544
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbnl = 545
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbnle = 546
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrbnlh = 547
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrj = 548
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrje = 549
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjh = 550
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjhe = 551
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjl = 552
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjle = 553
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjlh = 554
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjne = 555
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjnh = 556
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjnhe = 557
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjnl = 558
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjnle = 559
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrjnlh = 560
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrl = 561
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrt = 562
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrte = 563
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrth = 564
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrthe = 565
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtl = 566
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtle = 567
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtlh = 568
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtne = 569
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtnh = 570
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtnhe = 571
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtnl = 572
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtnle = 573
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clrtnlh = 574
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clst = 575
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clt = 576
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clte = 577
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clth = 578
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case clthe = 579
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltl = 580
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltle = 581
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltlh = 582
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltne = 583
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltnh = 584
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltnhe = 585
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltnl = 586
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltnle = 587
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cltnlh = 588
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cly = 589
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cmpsc = 590
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cp = 591
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cpdt = 592
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cpsdr = 593
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cpxt = 594
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cpya = 595
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cr = 596
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crb = 597
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbe = 598
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbh = 599
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbhe = 600
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbl = 601
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crble = 602
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crblh = 603
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbne = 604
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbnh = 605
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbnhe = 606
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbnl = 607
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbnle = 608
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crbnlh = 609
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crdte = 610
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crj = 611
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crje = 612
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjh = 613
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjhe = 614
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjl = 615
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjle = 616
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjlh = 617
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjne = 618
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjnh = 619
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjnhe = 620
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjnl = 621
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjnle = 622
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crjnlh = 623
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crl = 624
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crt = 625
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crte = 626
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crth = 627
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crthe = 628
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtl = 629
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtle = 630
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtlh = 631
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtne = 632
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtnh = 633
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtnhe = 634
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtnl = 635
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtnle = 636
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case crtnlh = 637
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cs = 638
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csch = 639
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csdtr = 640
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csg = 641
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csp = 642
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cspg = 643
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csst = 644
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csxtr = 645
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case csy = 646
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu12 = 647
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu14 = 648
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu21 = 649
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu24 = 650
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu41 = 651
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cu42 = 652
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cudtr = 653
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cuse = 654
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cutfu = 655
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cuutf = 656
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cuxtr = 657
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvb = 658
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvbg = 659
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvby = 660
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvd = 661
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvdg = 662
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cvdy = 663
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxbr = 664
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxfbr = 665
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxfbra = 666
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxfr = 667
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxftr = 668
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxgbr = 669
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxgbra = 670
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxgr = 671
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxgtr = 672
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxgtra = 673
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxlfbr = 674
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxlftr = 675
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxlgbr = 676
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxlgtr = 677
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxpt = 678
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxr = 679
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxstr = 680
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxtr = 681
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxutr = 682
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cxzt = 683
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case cy = 684
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case czdt = 685
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case czxt = 686
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case d = 687
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dd = 688
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ddb = 689
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ddbr = 690
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ddr = 691
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ddtr = 692
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ddtra = 693
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case de = 694
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case deb = 695
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case debr = 696
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case der = 697
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dfltcc = 698
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case diag = 699
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case didbr = 700
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case diebr = 701
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dl = 702
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dlg = 703
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dlgr = 704
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dlr = 705
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dp = 706
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dr = 707
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dsg = 708
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dsgf = 709
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dsgfr = 710
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dsgr = 711
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dxbr = 712
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dxr = 713
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dxtr = 714
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case dxtra = 715
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ear = 716
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ecag = 717
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ecctr = 718
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ecpga = 719
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ectg = 720
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ed = 721
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case edmk = 722
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case eedtr = 723
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case eextr = 724
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case efpc = 725
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case epair = 726
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case epar = 727
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case epctr = 728
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case epsw = 729
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ereg = 730
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case eregg = 731
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esair = 732
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esar = 733
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esdtr = 734
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esea = 735
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esta = 736
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case esxtr = 737
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case etnd = 738
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ex = 739
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case exrl = 740
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fidbr = 741
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fidbra = 742
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fidr = 743
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fidtr = 744
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fiebr = 745
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fiebra = 746
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fier = 747
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fixbr = 748
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fixbra = 749
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fixr = 750
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case fixtr = 751
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case flogr = 752
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case hdr = 753
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case her = 754
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case hsch = 755
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iac = 756
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ic = 757
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case icm = 758
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case icmh = 759
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case icmy = 760
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case icy = 761
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case idte = 762
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iedtr = 763
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iextr = 764
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iihf = 765
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iihh = 766
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iihl = 767
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iilf = 768
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iilh = 769
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iill = 770
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ipk = 771
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ipm = 772
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ipte = 773
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case irbm = 774
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case iske = 775
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ivsk = 776
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case j = 777
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case je = 778
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jh = 779
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jhe = 780
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jl = 781
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jle = 782
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jlh = 783
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jm = 784
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jne = 785
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnh = 786
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnhe = 787
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnl = 788
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnle = 789
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnlh = 790
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnm = 791
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jno = 792
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnp = 793
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jnz = 794
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jo = 795
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jp = 796
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jz = 797
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLu = 798
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLE = 799
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLH = 800
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLHe = 801
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLL = 802
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLLe = 803
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLLh = 804
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLM = 805
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNe = 806
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNh = 807
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNhe = 808
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNl = 809
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNle = 810
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNlh = 811
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNm = 812
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNo = 813
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNp = 814
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLNz = 815
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLO = 816
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLP = 817
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case jGLZ = 818
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kdb = 819
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kdbr = 820
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kdsa = 821
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kdtr = 822
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case keb = 823
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kebr = 824
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kimd = 825
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case klmd = 826
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case km = 827
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kma = 828
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kmac = 829
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kmc = 830
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kmctr = 831
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kmf = 832
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kmo = 833
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kxbr = 834
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case kxtr = 835
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case l = 836
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case la = 837
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laa = 838
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laag = 839
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laal = 840
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laalg = 841
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lae = 842
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laey = 843
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lam = 844
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lamy = 845
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lan = 846
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lang = 847
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lao = 848
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laog = 849
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case larl = 850
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lasp = 851
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lat = 852
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lax = 853
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case laxg = 854
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lay = 855
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lb = 856
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lbear = 857
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lbh = 858
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lbr = 859
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcbb = 860
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcctl = 861
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcdbr = 862
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcdfr = 863
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcdr = 864
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcebr = 865
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcer = 866
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcgfr = 867
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcgr = 868
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcr = 869
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lctl = 870
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lctlg = 871
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcxbr = 872
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lcxr = 873
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ld = 874
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lde = 875
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldeb = 876
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldebr = 877
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lder = 878
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldetr = 879
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldgr = 880
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldr = 881
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldxbr = 882
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldxbra = 883
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldxr = 884
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldxtr = 885
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ldy = 886
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case le = 887
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ledbr = 888
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ledbra = 889
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ledr = 890
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ledtr = 891
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ler = 892
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lexbr = 893
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lexbra = 894
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lexr = 895
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ley = 896
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lfas = 897
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lfh = 898
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lfhat = 899
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lfpc = 900
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lg = 901
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgat = 902
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgb = 903
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgbr = 904
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgdr = 905
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgf = 906
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgfi = 907
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgfr = 908
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgfrl = 909
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgg = 910
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgh = 911
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lghi = 912
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lghr = 913
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lghrl = 914
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgr = 915
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgrl = 916
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lgsc = 917
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lh = 918
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lhh = 919
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lhi = 920
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lhr = 921
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lhrl = 922
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lhy = 923
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llc = 924
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llch = 925
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llcr = 926
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgc = 927
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgcr = 928
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgf = 929
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgfat = 930
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgfr = 931
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgfrl = 932
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgfsg = 933
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgh = 934
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llghr = 935
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llghrl = 936
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgt = 937
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgtat = 938
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llgtr = 939
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llh = 940
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llhh = 941
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llhr = 942
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llhrl = 943
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llihf = 944
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llihh = 945
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llihl = 946
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llilf = 947
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llilh = 948
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llill = 949
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case llzrgf = 950
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lm = 951
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lmd = 952
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lmg = 953
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lmh = 954
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lmy = 955
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lndbr = 956
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lndfr = 957
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lndr = 958
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lnebr = 959
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lner = 960
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lngfr = 961
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lngr = 962
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lnr = 963
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lnxbr = 964
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lnxr = 965
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loc = 966
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loce = 967
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loch = 968
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loche = 969
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locl = 970
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locle = 971
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loclh = 972
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locm = 973
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locne = 974
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnh = 975
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnhe = 976
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnl = 977
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnle = 978
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnlh = 979
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnm = 980
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locno = 981
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnp = 982
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locnz = 983
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case loco = 984
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locp = 985
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locz = 986
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfh = 987
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhe = 988
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhh = 989
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhhe = 990
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhl = 991
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhle = 992
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhlh = 993
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhm = 994
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhne = 995
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnh = 996
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnhe = 997
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnl = 998
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnle = 999
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnlh = 1000
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnm = 1001
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhno = 1002
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnp = 1003
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhnz = 1004
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfho = 1005
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhp = 1006
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhz = 1007
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhr = 1008
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhre = 1009
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrh = 1010
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrhe = 1011
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrl = 1012
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrle = 1013
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrlh = 1014
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrm = 1015
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrne = 1016
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnh = 1017
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnhe = 1018
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnl = 1019
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnle = 1020
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnlh = 1021
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnm = 1022
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrno = 1023
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnp = 1024
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrnz = 1025
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhro = 1026
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrp = 1027
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locfhrz = 1028
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locg = 1029
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locge = 1030
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgh = 1031
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghe = 1032
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgl = 1033
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgle = 1034
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locglh = 1035
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgm = 1036
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgne = 1037
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnh = 1038
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnhe = 1039
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnl = 1040
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnle = 1041
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnlh = 1042
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnm = 1043
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgno = 1044
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnp = 1045
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgnz = 1046
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgo = 1047
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgp = 1048
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgz = 1049
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghi = 1050
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghie = 1051
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghih = 1052
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghihe = 1053
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghil = 1054
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghile = 1055
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghilh = 1056
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghim = 1057
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghine = 1058
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinh = 1059
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinhe = 1060
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinl = 1061
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinle = 1062
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinlh = 1063
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinm = 1064
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghino = 1065
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinp = 1066
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghinz = 1067
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghio = 1068
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghip = 1069
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locghiz = 1070
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgr = 1071
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgre = 1072
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrh = 1073
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrhe = 1074
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrl = 1075
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrle = 1076
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrlh = 1077
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrm = 1078
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrne = 1079
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnh = 1080
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnhe = 1081
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnl = 1082
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnle = 1083
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnlh = 1084
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnm = 1085
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrno = 1086
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnp = 1087
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrnz = 1088
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgro = 1089
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrp = 1090
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locgrz = 1091
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhi = 1092
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhie = 1093
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhih = 1094
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhihe = 1095
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhil = 1096
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhile = 1097
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhilh = 1098
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhim = 1099
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhine = 1100
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinh = 1101
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinhe = 1102
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinl = 1103
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinle = 1104
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinlh = 1105
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinm = 1106
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhino = 1107
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinp = 1108
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhinz = 1109
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhio = 1110
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhip = 1111
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochhiz = 1112
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochi = 1113
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochie = 1114
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochih = 1115
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochihe = 1116
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochil = 1117
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochile = 1118
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochilh = 1119
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochim = 1120
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochine = 1121
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinh = 1122
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinhe = 1123
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinl = 1124
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinle = 1125
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinlh = 1126
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinm = 1127
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochino = 1128
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinp = 1129
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochinz = 1130
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochio = 1131
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochip = 1132
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lochiz = 1133
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locr = 1134
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locre = 1135
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrh = 1136
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrhe = 1137
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrl = 1138
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrle = 1139
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrlh = 1140
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrm = 1141
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrne = 1142
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnh = 1143
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnhe = 1144
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnl = 1145
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnle = 1146
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnlh = 1147
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnm = 1148
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrno = 1149
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnp = 1150
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrnz = 1151
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locro = 1152
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrp = 1153
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case locrz = 1154
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpctl = 1155
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpd = 1156
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpdbr = 1157
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpdfr = 1158
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpdg = 1159
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpdr = 1160
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpebr = 1161
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lper = 1162
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpgfr = 1163
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpgr = 1164
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpp = 1165
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpq = 1166
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpr = 1167
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpsw = 1168
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpswe = 1169
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpswey = 1170
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lptea = 1171
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpxbr = 1172
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lpxr = 1173
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lr = 1174
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lra = 1175
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrag = 1176
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lray = 1177
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrdr = 1178
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrer = 1179
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrl = 1180
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrv = 1181
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrvg = 1182
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrvgr = 1183
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrvh = 1184
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lrvr = 1185
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lsctl = 1186
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lt = 1187
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltdbr = 1188
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltdr = 1189
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltdtr = 1190
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltebr = 1191
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lter = 1192
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltg = 1193
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltgf = 1194
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltgfr = 1195
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltgr = 1196
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltr = 1197
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltxbr = 1198
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltxr = 1199
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ltxtr = 1200
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lura = 1201
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lurag = 1202
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxd = 1203
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxdb = 1204
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxdbr = 1205
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxdr = 1206
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxdtr = 1207
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxe = 1208
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxeb = 1209
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxebr = 1210
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxer = 1211
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lxr = 1212
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ly = 1213
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lzdr = 1214
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lzer = 1215
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lzrf = 1216
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lzrg = 1217
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case lzxr = 1218
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case m = 1219
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mad = 1220
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case madb = 1221
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case madbr = 1222
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case madr = 1223
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mae = 1224
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case maeb = 1225
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case maebr = 1226
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case maer = 1227
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case may = 1228
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mayh = 1229
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mayhr = 1230
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mayl = 1231
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case maylr = 1232
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mayr = 1233
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mc = 1234
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case md = 1235
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdb = 1236
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdbr = 1237
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mde = 1238
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdeb = 1239
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdebr = 1240
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mder = 1241
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdr = 1242
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdtr = 1243
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mdtra = 1244
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case me = 1245
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mee = 1246
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case meeb = 1247
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case meebr = 1248
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case meer = 1249
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mer = 1250
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mfy = 1251
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mg = 1252
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mgh = 1253
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mghi = 1254
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mgrk = 1255
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mh = 1256
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mhi = 1257
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mhy = 1258
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ml = 1259
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mlg = 1260
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mlgr = 1261
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mlr = 1262
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mp = 1263
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mr = 1264
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ms = 1265
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msc = 1266
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msch = 1267
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msd = 1268
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msdb = 1269
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msdbr = 1270
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msdr = 1271
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mse = 1272
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mseb = 1273
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msebr = 1274
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mser = 1275
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msfi = 1276
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msg = 1277
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgc = 1278
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgf = 1279
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgfi = 1280
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgfr = 1281
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgr = 1282
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msgrkc = 1283
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msr = 1284
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msrkc = 1285
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msta = 1286
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case msy = 1287
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvc = 1288
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcdk = 1289
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcin = 1290
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvck = 1291
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcl = 1292
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcle = 1293
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvclu = 1294
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcos = 1295
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcp = 1296
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcrl = 1297
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcs = 1298
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvcsk = 1299
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvghi = 1300
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvhhi = 1301
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvhi = 1302
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvi = 1303
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mviy = 1304
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvn = 1305
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvo = 1306
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvpg = 1307
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvst = 1308
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mvz = 1309
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxbr = 1310
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxd = 1311
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxdb = 1312
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxdbr = 1313
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxdr = 1314
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxr = 1315
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxtr = 1316
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mxtra = 1317
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case my = 1318
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case myh = 1319
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case myhr = 1320
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case myl = 1321
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case mylr = 1322
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case myr = 1323
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case n = 1324
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nc = 1325
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ncgrk = 1326
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ncrk = 1327
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ng = 1328
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ngr = 1329
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ngrk = 1330
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ni = 1331
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case niai = 1332
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nihf = 1333
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nihh = 1334
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nihl = 1335
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nilf = 1336
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nilh = 1337
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nill = 1338
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case niy = 1339
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nngrk = 1340
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nnpa = 1341
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nnrk = 1342
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nogrk = 1343
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nop = 1344
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nork = 1345
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nr = 1346
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nrk = 1347
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ntstg = 1348
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nxgrk = 1349
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case nxrk = 1350
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ny = 1351
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case o = 1352
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oc = 1353
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ocgrk = 1354
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ocrk = 1355
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case og = 1356
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ogr = 1357
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ogrk = 1358
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oi = 1359
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oihf = 1360
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oihh = 1361
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oihl = 1362
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oilf = 1363
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oilh = 1364
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oill = 1365
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oiy = 1366
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case or = 1367
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ork = 1368
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case oy = 1369
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pack = 1370
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case palb = 1371
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pc = 1372
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pcc = 1373
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pckmo = 1374
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pfd = 1375
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pfdrl = 1376
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pfmf = 1377
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pfpo = 1378
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pgin = 1379
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pgout = 1380
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pka = 1381
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pku = 1382
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case plo = 1383
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case popcnt = 1384
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ppa = 1385
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ppno = 1386
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pr = 1387
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case prno = 1388
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pt = 1389
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ptf = 1390
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ptff = 1391
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case pti = 1392
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ptlb = 1393
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case qadtr = 1394
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case qaxtr = 1395
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case qctri = 1396
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case qpaci = 1397
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case qsi = 1398
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rchp = 1399
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rdp = 1400
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case risbg = 1401
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case risbgn = 1402
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case risbhg = 1403
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case risblg = 1404
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rll = 1405
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rllg = 1406
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rnsbg = 1407
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rosbg = 1408
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rp = 1409
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rrbe = 1410
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rrbm = 1411
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rrdtr = 1412
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rrxtr = 1413
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rsch = 1414
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case rxsbg = 1415
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case s = 1416
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sac = 1417
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sacf = 1418
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sal = 1419
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sam24 = 1420
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sam31 = 1421
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sam64 = 1422
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sar = 1423
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case scctr = 1424
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case schm = 1425
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sck = 1426
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sckc = 1427
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sckpf = 1428
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sd = 1429
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sdb = 1430
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sdbr = 1431
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sdr = 1432
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sdtr = 1433
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sdtra = 1434
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case se = 1435
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case seb = 1436
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sebr = 1437
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhr = 1438
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhre = 1439
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrh = 1440
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrhe = 1441
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrl = 1442
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrle = 1443
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrlh = 1444
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrm = 1445
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrne = 1446
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnh = 1447
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnhe = 1448
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnl = 1449
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnle = 1450
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnlh = 1451
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnm = 1452
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrno = 1453
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnp = 1454
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrnz = 1455
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhro = 1456
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrp = 1457
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selfhrz = 1458
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgr = 1459
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgre = 1460
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrh = 1461
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrhe = 1462
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrl = 1463
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrle = 1464
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrlh = 1465
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrm = 1466
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrne = 1467
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnh = 1468
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnhe = 1469
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnl = 1470
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnle = 1471
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnlh = 1472
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnm = 1473
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrno = 1474
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnp = 1475
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrnz = 1476
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgro = 1477
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrp = 1478
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selgrz = 1479
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selr = 1480
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selre = 1481
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrh = 1482
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrhe = 1483
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrl = 1484
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrle = 1485
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrlh = 1486
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrm = 1487
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrne = 1488
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnh = 1489
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnhe = 1490
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnl = 1491
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnle = 1492
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnlh = 1493
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnm = 1494
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrno = 1495
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnp = 1496
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrnz = 1497
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selro = 1498
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrp = 1499
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case selrz = 1500
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ser = 1501
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sfasr = 1502
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sfpc = 1503
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sg = 1504
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sgf = 1505
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sgfr = 1506
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sgh = 1507
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sgr = 1508
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sgrk = 1509
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sh = 1510
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case shhhr = 1511
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case shhlr = 1512
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case shy = 1513
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sie = 1514
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case siga = 1515
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sigp = 1516
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sl = 1517
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sla = 1518
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slag = 1519
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slak = 1520
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slb = 1521
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slbg = 1522
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slbgr = 1523
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slbr = 1524
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slda = 1525
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sldl = 1526
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sldt = 1527
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slfi = 1528
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slg = 1529
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slgf = 1530
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slgfi = 1531
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slgfr = 1532
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slgr = 1533
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slgrk = 1534
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slhhhr = 1535
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slhhlr = 1536
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sll = 1537
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sllg = 1538
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sllk = 1539
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slr = 1540
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slrk = 1541
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case slxt = 1542
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sly = 1543
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sortl = 1544
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sp = 1545
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case spctr = 1546
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case spka = 1547
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case spm = 1548
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case spt = 1549
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case spx = 1550
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqd = 1551
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqdb = 1552
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqdbr = 1553
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqdr = 1554
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqe = 1555
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqeb = 1556
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqebr = 1557
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqer = 1558
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqxbr = 1559
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sqxr = 1560
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sr = 1561
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sra = 1562
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srag = 1563
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srak = 1564
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srda = 1565
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srdl = 1566
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srdt = 1567
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srk = 1568
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srl = 1569
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srlg = 1570
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srlk = 1571
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srnm = 1572
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srnmb = 1573
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srnmt = 1574
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srp = 1575
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srst = 1576
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srstu = 1577
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case srxt = 1578
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ssair = 1579
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ssar = 1580
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ssch = 1581
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sske = 1582
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ssm = 1583
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case st = 1584
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stam = 1585
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stamy = 1586
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stap = 1587
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stbear = 1588
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stc = 1589
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stch = 1590
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stck = 1591
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stckc = 1592
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcke = 1593
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stckf = 1594
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcm = 1595
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcmh = 1596
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcmy = 1597
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcps = 1598
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcrw = 1599
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stctg = 1600
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stctl = 1601
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stcy = 1602
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case std = 1603
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stdy = 1604
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ste = 1605
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stey = 1606
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stfh = 1607
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stfl = 1608
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stfle = 1609
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stfpc = 1610
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stg = 1611
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stgrl = 1612
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stgsc = 1613
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sth = 1614
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sthh = 1615
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sthrl = 1616
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sthy = 1617
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stidp = 1618
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stm = 1619
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stmg = 1620
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stmh = 1621
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stmy = 1622
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stnsm = 1623
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoc = 1624
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoce = 1625
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoch = 1626
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoche = 1627
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocl = 1628
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocle = 1629
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoclh = 1630
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocm = 1631
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocne = 1632
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnh = 1633
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnhe = 1634
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnl = 1635
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnle = 1636
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnlh = 1637
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnm = 1638
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocno = 1639
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnp = 1640
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocnz = 1641
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stoco = 1642
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocp = 1643
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocz = 1644
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfh = 1645
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhe = 1646
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhh = 1647
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhhe = 1648
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhl = 1649
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhle = 1650
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhlh = 1651
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhm = 1652
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhne = 1653
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnh = 1654
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnhe = 1655
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnl = 1656
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnle = 1657
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnlh = 1658
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnm = 1659
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhno = 1660
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnp = 1661
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhnz = 1662
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfho = 1663
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhp = 1664
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocfhz = 1665
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocg = 1666
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocge = 1667
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgh = 1668
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocghe = 1669
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgl = 1670
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgle = 1671
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocglh = 1672
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgm = 1673
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgne = 1674
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnh = 1675
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnhe = 1676
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnl = 1677
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnle = 1678
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnlh = 1679
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnm = 1680
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgno = 1681
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnp = 1682
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgnz = 1683
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgo = 1684
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgp = 1685
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stocgz = 1686
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stosm = 1687
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stpq = 1688
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stpt = 1689
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stpx = 1690
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case strag = 1691
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case strl = 1692
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case strv = 1693
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case strvg = 1694
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case strvh = 1695
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stsch = 1696
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stsi = 1697
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case stura = 1698
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sturg = 1699
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sty = 1700
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case su = 1701
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sur = 1702
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case svc = 1703
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sw = 1704
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case swr = 1705
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sxbr = 1706
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sxr = 1707
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sxtr = 1708
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sxtra = 1709
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case sy = 1710
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tabort = 1711
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tam = 1712
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tar = 1713
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tb = 1714
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tbdr = 1715
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tbedr = 1716
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tbegin = 1717
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tbeginc = 1718
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tcdb = 1719
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tceb = 1720
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tcxb = 1721
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdcdt = 1722
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdcet = 1723
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdcxt = 1724
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdgdt = 1725
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdget = 1726
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tdgxt = 1727
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tend = 1728
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case thder = 1729
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case thdr = 1730
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tm = 1731
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tmhh = 1732
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tmhl = 1733
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tmlh = 1734
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tmll = 1735
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tmy = 1736
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tp = 1737
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tpi = 1738
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tprot = 1739
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tr = 1740
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trace = 1741
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tracg = 1742
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trap2 = 1743
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trap4 = 1744
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tre = 1745
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case troo = 1746
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trot = 1747
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trt = 1748
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trte = 1749
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trto = 1750
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trtr = 1751
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trtre = 1752
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case trtt = 1753
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case ts = 1754
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case tsch = 1755
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case unpk = 1756
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case unpka = 1757
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case unpku = 1758
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case upt = 1759
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case va = 1760
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vab = 1761
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vac = 1762
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vacc = 1763
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaccb = 1764
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaccc = 1765
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vacccq = 1766
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaccf = 1767
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaccg = 1768
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vacch = 1769
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaccq = 1770
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vacq = 1771
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaf = 1772
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vag = 1773
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vah = 1774
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vap = 1775
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vaq = 1776
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavg = 1777
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavgb = 1778
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavgf = 1779
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavgg = 1780
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavgh = 1781
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavgl = 1782
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavglb = 1783
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavglf = 1784
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavglg = 1785
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vavglh = 1786
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vbperm = 1787
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcdg = 1788
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcdgb = 1789
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcdlg = 1790
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcdlgb = 1791
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcefb = 1792
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcelfb = 1793
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceq = 1794
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqb = 1795
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqbs = 1796
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqf = 1797
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqfs = 1798
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqg = 1799
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqgs = 1800
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqh = 1801
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vceqhs = 1802
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcfeb = 1803
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcfn = 1804
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcfpl = 1805
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcfps = 1806
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcgd = 1807
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcgdb = 1808
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vch = 1809
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchb = 1810
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchbs = 1811
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchf = 1812
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchfs = 1813
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchg = 1814
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchgs = 1815
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchh = 1816
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchhs = 1817
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchl = 1818
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlb = 1819
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlbs = 1820
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlf = 1821
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlfs = 1822
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlg = 1823
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlgs = 1824
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlh = 1825
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vchlhs = 1826
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcksm = 1827
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclfeb = 1828
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclfnh = 1829
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclfnl = 1830
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclfp = 1831
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclgd = 1832
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclgdb = 1833
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclz = 1834
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclzb = 1835
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclzdp = 1836
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclzf = 1837
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclzg = 1838
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vclzh = 1839
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcnf = 1840
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcp = 1841
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcrnf = 1842
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcsfp = 1843
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcsph = 1844
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vctz = 1845
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vctzb = 1846
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vctzf = 1847
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vctzg = 1848
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vctzh = 1849
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcvb = 1850
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcvbg = 1851
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcvd = 1852
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vcvdg = 1853
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vdp = 1854
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vec = 1855
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vecb = 1856
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vecf = 1857
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vecg = 1858
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vech = 1859
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vecl = 1860
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veclb = 1861
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veclf = 1862
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veclg = 1863
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veclh = 1864
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verim = 1865
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verimb = 1866
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verimf = 1867
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verimg = 1868
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verimh = 1869
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verll = 1870
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllb = 1871
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllf = 1872
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllg = 1873
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllh = 1874
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllv = 1875
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllvb = 1876
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllvf = 1877
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllvg = 1878
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case verllvh = 1879
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesl = 1880
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslb = 1881
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslf = 1882
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslg = 1883
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslh = 1884
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslv = 1885
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslvb = 1886
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslvf = 1887
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslvg = 1888
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case veslvh = 1889
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesra = 1890
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrab = 1891
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesraf = 1892
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrag = 1893
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrah = 1894
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrav = 1895
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesravb = 1896
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesravf = 1897
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesravg = 1898
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesravh = 1899
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrl = 1900
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlb = 1901
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlf = 1902
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlg = 1903
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlh = 1904
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlv = 1905
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlvb = 1906
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlvf = 1907
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlvg = 1908
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vesrlvh = 1909
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfa = 1910
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfadb = 1911
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfae = 1912
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaeb = 1913
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaebs = 1914
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaef = 1915
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaefs = 1916
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaeh = 1917
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaehs = 1918
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezb = 1919
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezbs = 1920
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezf = 1921
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezfs = 1922
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezh = 1923
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfaezhs = 1924
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfasb = 1925
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfce = 1926
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfcedb = 1927
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfcedbs = 1928
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfcesb = 1929
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfcesbs = 1930
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfch = 1931
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchdb = 1932
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchdbs = 1933
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfche = 1934
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchedb = 1935
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchedbs = 1936
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchesb = 1937
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchesbs = 1938
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchsb = 1939
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfchsbs = 1940
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfd = 1941
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfddb = 1942
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfdsb = 1943
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfee = 1944
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeeb = 1945
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeebs = 1946
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeef = 1947
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeefs = 1948
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeeh = 1949
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeehs = 1950
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezb = 1951
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezbs = 1952
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezf = 1953
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezfs = 1954
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezh = 1955
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeezhs = 1956
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfene = 1957
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeneb = 1958
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenebs = 1959
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenef = 1960
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenefs = 1961
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfeneh = 1962
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenehs = 1963
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezb = 1964
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezbs = 1965
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezf = 1966
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezfs = 1967
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezh = 1968
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfenezhs = 1969
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfi = 1970
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfidb = 1971
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfisb = 1972
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkedb = 1973
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkedbs = 1974
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkesb = 1975
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkesbs = 1976
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhdb = 1977
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhdbs = 1978
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhedb = 1979
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhedbs = 1980
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhesb = 1981
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhesbs = 1982
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhsb = 1983
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfkhsbs = 1984
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflcdb = 1985
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflcsb = 1986
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfll = 1987
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflls = 1988
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflndb = 1989
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflnsb = 1990
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflpdb = 1991
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflpsb = 1992
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflr = 1993
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vflrd = 1994
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfm = 1995
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfma = 1996
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmadb = 1997
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmasb = 1998
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmax = 1999
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmaxdb = 2000
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmaxsb = 2001
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmdb = 2002
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmin = 2003
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmindb = 2004
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfminsb = 2005
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfms = 2006
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmsb = 2007
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmsdb = 2008
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfmssb = 2009
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnma = 2010
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnmadb = 2011
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnmasb = 2012
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnms = 2013
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnmsdb = 2014
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfnmssb = 2015
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfpso = 2016
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfpsodb = 2017
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfpsosb = 2018
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfs = 2019
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfsdb = 2020
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfsq = 2021
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfsqdb = 2022
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfsqsb = 2023
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vfssb = 2024
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vftci = 2025
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vftcidb = 2026
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vftcisb = 2027
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgbm = 2028
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgef = 2029
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgeg = 2030
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfm = 2031
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfma = 2032
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmab = 2033
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmaf = 2034
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmag = 2035
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmah = 2036
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmb = 2037
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmf = 2038
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmg = 2039
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgfmh = 2040
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgm = 2041
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgmb = 2042
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgmf = 2043
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgmg = 2044
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vgmh = 2045
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistr = 2046
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrb = 2047
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrbs = 2048
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrf = 2049
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrfs = 2050
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrh = 2051
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vistrhs = 2052
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vl = 2053
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbb = 2054
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbr = 2055
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrf = 2056
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrg = 2057
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrh = 2058
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrq = 2059
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrrep = 2060
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrrepf = 2061
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrrepg = 2062
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlbrreph = 2063
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlc = 2064
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlcb = 2065
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlcf = 2066
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlcg = 2067
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlch = 2068
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlde = 2069
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vldeb = 2070
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleb = 2071
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlebrf = 2072
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlebrg = 2073
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlebrh = 2074
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vled = 2075
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vledb = 2076
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlef = 2077
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleg = 2078
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleh = 2079
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleib = 2080
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleif = 2081
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleig = 2082
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vleih = 2083
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vler = 2084
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlerf = 2085
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlerg = 2086
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlerh = 2087
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlgv = 2088
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlgvb = 2089
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlgvf = 2090
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlgvg = 2091
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlgvh = 2092
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlip = 2093
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vll = 2094
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllebrz = 2095
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllebrze = 2096
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllebrzf = 2097
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllebrzg = 2098
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllebrzh = 2099
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllez = 2100
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllezb = 2101
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllezf = 2102
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllezg = 2103
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllezh = 2104
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vllezlf = 2105
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlm = 2106
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlp = 2107
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlpb = 2108
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlpf = 2109
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlpg = 2110
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlph = 2111
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlr = 2112
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrep = 2113
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrepb = 2114
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrepf = 2115
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrepg = 2116
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlreph = 2117
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrl = 2118
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlrlr = 2119
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvg = 2120
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvgb = 2121
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvgf = 2122
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvgg = 2123
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvgh = 2124
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vlvgp = 2125
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmae = 2126
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaeb = 2127
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaef = 2128
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaeh = 2129
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmah = 2130
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmahb = 2131
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmahf = 2132
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmahh = 2133
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmal = 2134
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalb = 2135
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmale = 2136
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaleb = 2137
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalef = 2138
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaleh = 2139
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalf = 2140
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalh = 2141
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalhb = 2142
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalhf = 2143
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalhh = 2144
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalhw = 2145
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalo = 2146
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalob = 2147
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmalof = 2148
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaloh = 2149
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmao = 2150
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaob = 2151
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaof = 2152
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmaoh = 2153
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vme = 2154
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmeb = 2155
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmef = 2156
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmeh = 2157
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmh = 2158
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmhb = 2159
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmhf = 2160
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmhh = 2161
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vml = 2162
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlb = 2163
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmle = 2164
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmleb = 2165
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlef = 2166
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmleh = 2167
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlf = 2168
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlh = 2169
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlhb = 2170
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlhf = 2171
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlhh = 2172
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlhw = 2173
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlo = 2174
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlob = 2175
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmlof = 2176
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmloh = 2177
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmn = 2178
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnb = 2179
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnf = 2180
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmng = 2181
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnh = 2182
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnl = 2183
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnlb = 2184
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnlf = 2185
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnlg = 2186
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmnlh = 2187
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmo = 2188
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmob = 2189
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmof = 2190
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmoh = 2191
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmp = 2192
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrh = 2193
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrhb = 2194
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrhf = 2195
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrhg = 2196
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrhh = 2197
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrl = 2198
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrlb = 2199
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrlf = 2200
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrlg = 2201
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmrlh = 2202
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmsl = 2203
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmslg = 2204
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmsp = 2205
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmx = 2206
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxb = 2207
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxf = 2208
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxg = 2209
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxh = 2210
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxl = 2211
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxlb = 2212
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxlf = 2213
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxlg = 2214
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vmxlh = 2215
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vn = 2216
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vnc = 2217
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vnn = 2218
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vno = 2219
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vnx = 2220
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vo = 2221
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case voc = 2222
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vone = 2223
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpdi = 2224
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vperm = 2225
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpk = 2226
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkf = 2227
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkg = 2228
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkh = 2229
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkls = 2230
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklsf = 2231
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklsfs = 2232
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklsg = 2233
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklsgs = 2234
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklsh = 2235
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpklshs = 2236
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpks = 2237
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpksf = 2238
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpksfs = 2239
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpksg = 2240
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpksgs = 2241
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpksh = 2242
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkshs = 2243
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkz = 2244
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpkzr = 2245
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpopct = 2246
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpopctb = 2247
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpopctf = 2248
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpopctg = 2249
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpopcth = 2250
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vpsop = 2251
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrep = 2252
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepb = 2253
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepf = 2254
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepg = 2255
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vreph = 2256
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepi = 2257
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepib = 2258
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepif = 2259
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepig = 2260
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrepih = 2261
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vrp = 2262
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vs = 2263
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsb = 2264
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsbcbi = 2265
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsbcbiq = 2266
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsbi = 2267
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsbiq = 2268
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbi = 2269
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbib = 2270
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbif = 2271
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbig = 2272
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbih = 2273
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscbiq = 2274
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscef = 2275
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsceg = 2276
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vschdp = 2277
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vschp = 2278
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vschsp = 2279
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vschxp = 2280
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vscshp = 2281
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsdp = 2282
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vseg = 2283
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsegb = 2284
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsegf = 2285
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsegh = 2286
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsel = 2287
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsf = 2288
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsg = 2289
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsh = 2290
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsl = 2291
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vslb = 2292
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsld = 2293
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsldb = 2294
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsp = 2295
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsq = 2296
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsra = 2297
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrab = 2298
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrd = 2299
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrl = 2300
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrlb = 2301
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrp = 2302
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsrpr = 2303
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vst = 2304
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstbr = 2305
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstbrf = 2306
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstbrg = 2307
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstbrh = 2308
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstbrq = 2309
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsteb = 2310
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstebrf = 2311
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstebrg = 2312
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstebrh = 2313
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstef = 2314
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsteg = 2315
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsteh = 2316
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vster = 2317
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsterf = 2318
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsterg = 2319
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsterh = 2320
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstl = 2321
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstm = 2322
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrc = 2323
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrcb = 2324
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrcbs = 2325
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrcf = 2326
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrcfs = 2327
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrch = 2328
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrchs = 2329
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczb = 2330
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczbs = 2331
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczf = 2332
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczfs = 2333
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczh = 2334
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrczhs = 2335
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrl = 2336
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrlr = 2337
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrs = 2338
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrsb = 2339
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrsf = 2340
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrsh = 2341
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrszb = 2342
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrszf = 2343
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vstrszh = 2344
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsum = 2345
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumb = 2346
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumg = 2347
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumgf = 2348
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumgh = 2349
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumh = 2350
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumq = 2351
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumqf = 2352
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vsumqg = 2353
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vtm = 2354
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vtp = 2355
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuph = 2356
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuphb = 2357
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuphf = 2358
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuphh = 2359
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupkz = 2360
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupkzh = 2361
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupkzl = 2362
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupl = 2363
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplb = 2364
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplf = 2365
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplh = 2366
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplhb = 2367
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplhf = 2368
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplhh = 2369
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vuplhw = 2370
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupll = 2371
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupllb = 2372
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupllf = 2373
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vupllh = 2374
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vx = 2375
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case vzero = 2376
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcdgb = 2377
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcdlgb = 2378
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcefb = 2379
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcelfb = 2380
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcfeb = 2381
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wcgdb = 2382
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wclfeb = 2383
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wclgdb = 2384
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfadb = 2385
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfasb = 2386
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfaxb = 2387
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfc = 2388
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcdb = 2389
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcedb = 2390
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcedbs = 2391
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcesb = 2392
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcesbs = 2393
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcexb = 2394
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcexbs = 2395
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchdb = 2396
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchdbs = 2397
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchedb = 2398
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchedbs = 2399
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchesb = 2400
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchesbs = 2401
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchexb = 2402
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchexbs = 2403
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchsb = 2404
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchsbs = 2405
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchxb = 2406
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfchxbs = 2407
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcsb = 2408
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfcxb = 2409
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfddb = 2410
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfdsb = 2411
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfdxb = 2412
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfidb = 2413
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfisb = 2414
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfixb = 2415
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfk = 2416
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkdb = 2417
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkedb = 2418
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkedbs = 2419
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkesb = 2420
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkesbs = 2421
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkexb = 2422
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkexbs = 2423
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhdb = 2424
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhdbs = 2425
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhedb = 2426
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhedbs = 2427
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhesb = 2428
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhesbs = 2429
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhexb = 2430
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhexbs = 2431
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhsb = 2432
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhsbs = 2433
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhxb = 2434
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkhxbs = 2435
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfksb = 2436
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfkxb = 2437
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflcdb = 2438
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflcsb = 2439
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflcxb = 2440
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflld = 2441
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflls = 2442
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflndb = 2443
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflnsb = 2444
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflnxb = 2445
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflpdb = 2446
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflpsb = 2447
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflpxb = 2448
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflrd = 2449
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wflrx = 2450
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmadb = 2451
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmasb = 2452
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmaxb = 2453
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmaxdb = 2454
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmaxsb = 2455
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmaxxb = 2456
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmdb = 2457
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmindb = 2458
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfminsb = 2459
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfminxb = 2460
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmsb = 2461
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmsdb = 2462
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmssb = 2463
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmsxb = 2464
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfmxb = 2465
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmadb = 2466
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmasb = 2467
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmaxb = 2468
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmsdb = 2469
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmssb = 2470
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfnmsxb = 2471
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfpsodb = 2472
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfpsosb = 2473
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfpsoxb = 2474
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfsdb = 2475
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfsqdb = 2476
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfsqsb = 2477
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfsqxb = 2478
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfssb = 2479
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wfsxb = 2480
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wftcidb = 2481
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wftcisb = 2482
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wftcixb = 2483
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wldeb = 2484
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case wledb = 2485
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case x = 2486
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xc = 2487
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xg = 2488
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xgr = 2489
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xgrk = 2490
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xi = 2491
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xihf = 2492
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xilf = 2493
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xiy = 2494
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xr = 2495
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xrk = 2496
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xsch = 2497
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case xy = 2498
    /// generated content <SystemZGenCSInsnEnum.inc> begin clang-format off
    case zap = 2499
    /// clang-format on generated content <SystemZGenCSInsnEnum.inc> end
    case ending = 2500
    /// clang-format on generated content <SystemZGenCSInsnEnum.inc> end
    case aliasBegin = 2501
    /// Real instr.: SYSTEMZ_VISTRB
    case aliasVistrb = 2502
    /// Real instr.: SYSTEMZ_VISTR
    case aliasVistr = 2503
    /// Real instr.: SYSTEMZ_VFEEB
    case aliasVfeeb = 2504
    /// Real instr.: SYSTEMZ_VFEE
    case aliasVfee = 2505
    /// Real instr.: SYSTEMZ_VFAEB
    case aliasVfaeb = 2506
    /// Real instr.: SYSTEMZ_VFAEBS
    case aliasVfaebs = 2507
    /// Real instr.: SYSTEMZ_VFAE
    case aliasVfae = 2508
    /// Real instr.: SYSTEMZ_VSTRSB
    case aliasVstrsb = 2509
    /// Real instr.: SYSTEMZ_VSTRS
    case aliasVstrs = 2510
    /// Real instr.: SYSTEMZ_VSTRCB
    case aliasVstrcb = 2511
    /// Real instr.: SYSTEMZ_VSTRCBS
    case aliasVstrcbs = 2512
    /// Real instr.: SYSTEMZ_VSTRC
    case aliasVstrc = 2513
    /// Real instr.: SYSTEMZ_VFAEH
    case aliasVfaeh = 2514
    /// Real instr.: SYSTEMZ_VFAEHS
    case aliasVfaehs = 2515
    /// Real instr.: SYSTEMZ_VFAEF
    case aliasVfaef = 2516
    /// Real instr.: SYSTEMZ_VFAEFS
    case aliasVfaefs = 2517
    /// Real instr.: SYSTEMZ_VFAEZB
    case aliasVfaezb = 2518
    /// Real instr.: SYSTEMZ_VFAEZBS
    case aliasVfaezbs = 2519
    /// Real instr.: SYSTEMZ_VFAEZH
    case aliasVfaezh = 2520
    /// Real instr.: SYSTEMZ_VFAEZHS
    case aliasVfaezhs = 2521
    /// Real instr.: SYSTEMZ_VFAEZF
    case aliasVfaezf = 2522
    /// Real instr.: SYSTEMZ_VFAEZFS
    case aliasVfaezfs = 2523
    /// Real instr.: SYSTEMZ_VFEEH
    case aliasVfeeh = 2524
    /// Real instr.: SYSTEMZ_VFEEF
    case aliasVfeef = 2525
    /// Real instr.: SYSTEMZ_VFENE
    case aliasVfene = 2526
    /// Real instr.: SYSTEMZ_VFENEB
    case aliasVfeneb = 2527
    /// Real instr.: SYSTEMZ_VFENEH
    case aliasVfeneh = 2528
    /// Real instr.: SYSTEMZ_VFENEF
    case aliasVfenef = 2529
    /// Real instr.: SYSTEMZ_VISTRH
    case aliasVistrh = 2530
    /// Real instr.: SYSTEMZ_VISTRF
    case aliasVistrf = 2531
    /// Real instr.: SYSTEMZ_VSTRCH
    case aliasVstrch = 2532
    /// Real instr.: SYSTEMZ_VSTRCHS
    case aliasVstrchs = 2533
    /// Real instr.: SYSTEMZ_VSTRCF
    case aliasVstrcf = 2534
    /// Real instr.: SYSTEMZ_VSTRCFS
    case aliasVstrcfs = 2535
    /// Real instr.: SYSTEMZ_VSTRCZB
    case aliasVstrczb = 2536
    /// Real instr.: SYSTEMZ_VSTRCZBS
    case aliasVstrczbs = 2537
    /// Real instr.: SYSTEMZ_VSTRCZH
    case aliasVstrczh = 2538
    /// Real instr.: SYSTEMZ_VSTRCZHS
    case aliasVstrczhs = 2539
    /// Real instr.: SYSTEMZ_VSTRCZF
    case aliasVstrczf = 2540
    /// Real instr.: SYSTEMZ_VSTRCZFS
    case aliasVstrczfs = 2541
    /// Real instr.: SYSTEMZ_VSTRSH
    case aliasVstrsh = 2542
    /// Real instr.: SYSTEMZ_VSTRSF
    case aliasVstrsf = 2543
    /// Hard-coded alias come here
    case aliasEnd = 2544
}

public enum SystemZInsnForm: UInt32 {
    case invalid = 0
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxa = 1
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxe = 2
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrre = 3
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrr = 4
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrfa = 5
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrila = 6
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxya = 7
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instria = 8
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instried = 9
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instsiy = 10
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instssb = 11
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxb = 12
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxyb = 13
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instsmi = 14
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instmii = 15
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrib = 16
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrilb = 17
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instric = 18
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrilc = 19
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsi = 20
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instriee = 21
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsa = 22
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsya = 23
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrfe = 24
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrslb = 25
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case insts = 26
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instsil = 27
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instris = 28
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instriec = 29
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instriea = 30
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrs = 31
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrieb = 32
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrfc = 33
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instssa = 34
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsyb = 35
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instsi = 36
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsb = 37
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrfb = 38
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrfd = 39
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instssf = 40
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instsse = 41
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrieg = 42
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrxf = 43
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrrd = 44
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instssd = 45
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instie = 46
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case inste = 47
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrief = 48
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instssc = 49
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case insti = 50
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instrsla = 51
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrc = 52
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrd = 53
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrif = 54
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrra = 55
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrb = 56
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrk = 57
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrh = 58
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrj = 59
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrri = 60
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrii = 61
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrid = 62
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrsa = 63
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrre = 64
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrie = 65
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvria = 66
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrv = 67
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrib = 68
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrx = 69
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrsc = 70
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrih = 71
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrsb = 72
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvsi = 73
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrsd = 74
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrf = 75
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrig = 76
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvric = 77
    /// generated content <SystemZGenCSInsnFormatsEnum.inc> begin clang-format off
    case instvrrg = 78
}

/// Operand type for instruction's operands
public struct SystemZOp: OptionSet {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// CS_OP_INVALID (Uninitialized).
    public static let invalid: SystemZOp = []
    /// = CS_OP_REG (Register operand).
    public static let reg = SystemZOp(rawValue: 1)
    /// = CS_OP_IMM (Immediate operand).
    public static let imm = SystemZOp(rawValue: 2)
    /// = CS_OP_MEM (Memory operand).
    public static let mem = SystemZOp(rawValue: 128)
}

/// SystemZ registers
public enum SystemZReg: UInt16 {
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case invalid = 0
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case cc = 1
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case fpc = 2
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a0 = 3
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a1 = 4
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a2 = 5
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a3 = 6
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a4 = 7
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a5 = 8
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a6 = 9
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a7 = 10
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a8 = 11
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a9 = 12
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a10 = 13
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a11 = 14
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a12 = 15
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a13 = 16
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a14 = 17
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case a15 = 18
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c0 = 19
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c1 = 20
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c2 = 21
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c3 = 22
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c4 = 23
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c5 = 24
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c6 = 25
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c7 = 26
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c8 = 27
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c9 = 28
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c10 = 29
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c11 = 30
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c12 = 31
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c13 = 32
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c14 = 33
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case c15 = 34
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v0 = 35
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v1 = 36
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v2 = 37
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v3 = 38
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v4 = 39
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v5 = 40
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v6 = 41
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v7 = 42
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v8 = 43
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v9 = 44
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v10 = 45
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v11 = 46
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v12 = 47
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v13 = 48
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v14 = 49
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v15 = 50
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v16 = 51
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v17 = 52
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v18 = 53
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v19 = 54
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v20 = 55
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v21 = 56
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v22 = 57
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v23 = 58
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v24 = 59
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v25 = 60
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v26 = 61
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v27 = 62
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v28 = 63
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v29 = 64
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v30 = 65
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case v31 = 66
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f0d = 67
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f1d = 68
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f2d = 69
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f3d = 70
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f4d = 71
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f5d = 72
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f6d = 73
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f7d = 74
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f8d = 75
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f9d = 76
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f10d = 77
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f11d = 78
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f12d = 79
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f13d = 80
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f14d = 81
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f15d = 82
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f16d = 83
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f17d = 84
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f18d = 85
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f19d = 86
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f20d = 87
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f21d = 88
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f22d = 89
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f23d = 90
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f24d = 91
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f25d = 92
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f26d = 93
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f27d = 94
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f28d = 95
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f29d = 96
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f30d = 97
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f31d = 98
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f0q = 99
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f1q = 100
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f4q = 101
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f5q = 102
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f8q = 103
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f9q = 104
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f12q = 105
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f13q = 106
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f0s = 107
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f1s = 108
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f2s = 109
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f3s = 110
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f4s = 111
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f5s = 112
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f6s = 113
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f7s = 114
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f8s = 115
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f9s = 116
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f10s = 117
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f11s = 118
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f12s = 119
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f13s = 120
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f14s = 121
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f15s = 122
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f16s = 123
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f17s = 124
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f18s = 125
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f19s = 126
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f20s = 127
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f21s = 128
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f22s = 129
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f23s = 130
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f24s = 131
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f25s = 132
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f26s = 133
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f27s = 134
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f28s = 135
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f29s = 136
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f30s = 137
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case f31s = 138
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r0d = 139
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r1d = 140
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r2d = 141
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r3d = 142
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r4d = 143
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r5d = 144
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r6d = 145
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r7d = 146
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r8d = 147
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r9d = 148
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r10d = 149
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r11d = 150
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r12d = 151
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r13d = 152
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r14d = 153
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r15d = 154
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r0h = 155
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r1h = 156
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r2h = 157
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r3h = 158
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r4h = 159
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r5h = 160
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r6h = 161
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r7h = 162
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r8h = 163
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r9h = 164
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r10h = 165
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r11h = 166
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r12h = 167
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r13h = 168
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r14h = 169
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r15h = 170
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r0l = 171
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r1l = 172
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r2l = 173
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r3l = 174
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r4l = 175
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r5l = 176
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r6l = 177
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r7l = 178
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r8l = 179
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r9l = 180
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r10l = 181
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r11l = 182
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r12l = 183
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r13l = 184
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r14l = 185
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r15l = 186
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r0q = 187
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r2q = 188
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r4q = 189
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r6q = 190
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r8q = 191
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r10q = 192
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r12q = 193
    /// generated content <SystemZGenCSRegEnum.inc> begin clang-format off
    case r14q = 194
    /// 195
    case ending = 195
}

#endif
