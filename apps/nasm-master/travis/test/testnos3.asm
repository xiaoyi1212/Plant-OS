; Double-precision floating point tests, derived from Fred Tydeman's posting
; of 26 February 1996 to comp.arch.arithmetic, via David M. Gay's gdtoa
; package.
;
	bits 64

	dq	9.e0306
	dq	0x7fa9a2028368022e

	dq	4.e-079
	dq	0x2fa7b6d71d20b96c

	dq	7.e-261
	dq	0x09eb8d7e32be6396

	dq	6.e-025
	dq	0x3ae7361cb863de62

	dq	7.e-161
	dq	0x1eaf7e0db3799aa3

	dq	7.e0289
	dq	0x7c1cbb547777a285

	dq	5.e0079
	dq	0x507afcef51f0fb5f

	dq	1.e0080
	dq	0x508afcef51f0fb5f

	dq	7.e-303
	dq	0x0133339131c46f8b

	dq	5.e0152
	dq	0x5fa317e5ef3ab327

	dq	5.e0125
	dq	0x5a07a2ecc414a03f

	dq	2.e0126
	dq	0x5a27a2ecc414a03f

	dq	7.e-141
	dq	0x22d5570f59bd178c

	dq	4.e-192
	dq	0x18323ff06eea847a

	dq	9.e0043
	dq	0x49102498ea6df0c4

	dq	1.e0303
	dq	0x7ed754e31cd072da

	dq	95.e-089
	dq	0x2dde3cbc9907fdc8

	dq	85.e0194
	dq	0x689d1c26db7d0dae

	dq	69.e0267
	dq	0x77c0b7cb60c994da

	dq	97.e-019
	dq	0x3c665dde8e688ba6

	dq	37.e0046
	dq	0x49d033d7eca0adef

	dq	74.e0046
	dq	0x49e033d7eca0adef

	dq	61.e-099
	dq	0x2bc0ad836f269a17

	dq	53.e-208
	dq	0x151b39ae1909c31b

	dq	93.e-234
	dq	0x0fc27b2e4f210075

	dq	79.e-095
	dq	0x2c9a5db812948281

	dq	87.e-274
	dq	0x0772d36cf48e7abd

	dq	83.e0025
	dq	0x4585747ab143e353

	dq	17.e-036
	dq	0x38b698ccdc60015a

	dq	53.e0033
	dq	0x47246a3418629ef6

	dq	51.e-074
	dq	0x30ecd5bee57763e6

	dq	63.e-022
	dq	0x3bbdc03b8fd7016a

	dq	839.e0143
	dq	0x5e3ae03f245703e2

	dq	749.e-182
	dq	0x1abf14727744c63e

	dq	999.e-026
	dq	0x3b282782afe1869e

	dq	345.e0266
	dq	0x77b0b7cb60c994da

	dq	914.e-102
	dq	0x2b5ffc81bc29f02b

	dq	829.e0102
	dq	0x55b7221a79cdd1d9

	dq	307.e0090
	dq	0x5322d6b183fe4b55

	dq	859.e0182
	dq	0x6654374d8b87ac63

	dq	283.e0085
	dq	0x5216c309024bab4b

	dq	589.e0187
	dq	0x675526be9c22eb17

	dq	302.e0176
	dq	0x64fdcf7df8f573b7

	dq	604.e0176
	dq	0x650dcf7df8f573b7

	dq	761.e-244
	dq	0x0de03cea3586452e

	dq	647.e0230
	dq	0x7044d64d4079150c

	dq	755.e0174
	dq	0x64a7d93193f78fc6

	dq	255.e-075
	dq	0x30dcd5bee57763e6

	dq	3391.e0055
	dq	0x4c159bd3ad46e346

	dq	4147.e-015
	dq	0x3d923d1b5eb1d778

	dq	3996.e-026
	dq	0x3b482782afe1869e

	dq	1998.e-026
	dq	0x3b382782afe1869e

	dq	3338.e-296
	dq	0x0335519ac5142aab

	dq	1669.e-296
	dq	0x0325519ac5142aab

	dq	8699.e-276
	dq	0x0772d2df246ecd2d

	dq	5311.e0243
	dq	0x73284e91f4aa0fdb

	dq	7903.e-096
	dq	0x2cd07c2d27a5b989

	dq	7611.e-226
	dq	0x11d19b8744033457

	dq	3257.e0058
	dq	0x4cb444b34a6fb3eb

	dq	6514.e0058
	dq	0x4cc444b34a6fb3eb

	dq	3571.e0263
	dq	0x77462644c61d41aa

	dq	7142.e0263
	dq	0x77562644c61d41aa

	dq	5311.e0242
	dq	0x72f3720e5d54d97c

	dq	1617.e-063
	dq	0x3384c98fce16152e

	dq	51881.e0037
	dq	0x4897d2950dc76da4

	dq	31441.e-118
	dq	0x285ef890f5de4c86

	dq	30179.e0079
	dq	0x5143e272a77478e8

	dq	60358.e0079
	dq	0x5153e272a77478e8

	dq	63876.e-020
	dq	0x3cc703856844bdbf

	dq	31938.e-020
	dq	0x3cb703856844bdbf

	dq	46073.e-032
	dq	0x3a42405b773fbdf3

	dq	32941.e0051
	dq	0x4b757eb8ad52a5c9

	dq	82081.e0041
	dq	0x49770105df3d47cb

	dq	38701.e-215
	dq	0x1440492a4a8a37fd

	dq	62745.e0047
	dq	0x4ab0c52fe6dc6a1b

	dq	12549.e0048
	dq	0x4ac0c52fe6dc6a1b

	dq	64009.e-183
	dq	0x1af099b393b84832

	dq	89275.e0261
	dq	0x77262644c61d41aa

	dq	75859.e0025
	dq	0x46232645e1ba93f0

	dq	57533.e0287
	dq	0x7c8272ed2307f56a

	dq	584169.e0229
	dq	0x70ad657059dc79aa

	dq	940189.e-112
	dq	0x29eb99d6240c1a28

	dq	416121.e0197
	dq	0x6a00fd07ed297f80

	dq	832242.e0197
	dq	0x6a10fd07ed297f80

	dq	584738.e0076
	dq	0x50e8a85eb277e645

	dq	933587.e-140
	dq	0x241b248728b9c117

	dq	252601.e0121
	dq	0x5a2dda592e398dd7

	dq	358423.e0274
	dq	0x79f9463b59b8f2bd

	dq	892771.e-213
	dq	0x14f25818c7294f27

	dq	410405.e0040
	dq	0x49670105df3d47cb

	dq	928609.e-261
	dq	0x0afbe2dd66200bef

	dq	302276.e-254
	dq	0x0c55a462d91c6ab3

	dq	920657.e-023
	dq	0x3c653a9985dbde6c

	dq	609019.e-025
	dq	0x3bf1f99e11ea0a24

	dq	252601.e0120
	dq	0x59f7e1e0f1c7a4ac

	dq	654839.e-060
	dq	0x34b00e7db3b3f242

	dq	8823691.e0130
	dq	0x5c5e597c0b94b7ae

	dq	2920845.e0228
	dq	0x709d657059dc79aa

	dq	9210917.e0080
	dq	0x51fda232347e6032

	dq	5800419.e-303
	dq	0x026e58ffa48f4fce

	dq	6119898.e-243
	dq	0x0ee3ecf22ea07863

	dq	3059949.e-243
	dq	0x0ed3ecf22ea07863

	dq	2572231.e0223
	dq	0x6f90f73be1dff9ad

	dq	5444097.e-021
	dq	0x3cf8849dd33c95af

	dq	5783893.e-127
	dq	0x26f7e5902ce0e151

	dq	3865421.e-225
	dq	0x1295d4fe53afec65

	dq	4590831.e0156
	dq	0x61b4689b4a5fa201

	dq	9181662.e0156
	dq	0x61c4689b4a5fa201

	dq	5906361.e-027
	dq	0x3bbbe45a312d08a0

	dq	7315057.e0235
	dq	0x7225f0d408362a72

	dq	9088115.e0106
	dq	0x5762e51a84a3c6a0

	dq	1817623.e0107
	dq	0x5772e51a84a3c6a0

	dq	44118455.e0129
	dq	0x5c4e597c0b94b7ae

	dq	35282041.e0293
	dq	0x7e5512d5273e62e8

	dq	31279898.e-291
	dq	0x05129b01b6885d36

	dq	15639949.e-291
	dq	0x05029b01b6885d36

	dq	27966061.e0145
	dq	0x5f955bcf72fd10f9

	dq	55932122.e0145
	dq	0x5fa55bcf72fd10f9

	dq	70176353.e-053
	dq	0x36900683a21de855

	dq	40277543.e-032
	dq	0x3adf29ca0ff893b1

	dq	50609263.e0157
	dq	0x622193aff1f1c8e3

	dq	66094077.e0077
	dq	0x518b37c4b7928317

	dq	84863171.e0114
	dq	0x59406e98f5ec8f37

	dq	89396333.e0264
	dq	0x786526f061ca9053

	dq	87575437.e-309
	dq	0x016e07320602056c

	dq	78693511.e-044
	dq	0x3870bc7b7603a2ca

	dq	90285923.e-206
	dq	0x16d1470083f89d48

	dq	30155207.e-030
	dq	0x3b423a4ad20748a2

	dq	245540327.e0121
	dq	0x5acc569e968e0944

	dq	263125459.e0287
	dq	0x7d44997a298b2f2e

	dq	566446538.e-257
	dq	0x0c64472ba9550e86

	dq	283223269.e-257
	dq	0x0c54472ba9550e86

	dq	245540327.e0122
	dq	0x5b01b6231e18c5cb

	dq	491080654.e0122
	dq	0x5b11b6231e18c5cb

	dq	971212611.e-126
	dq	0x27a397d3c9745d2f

	dq	229058583.e0052
	dq	0x4c76ce94febdc7a5

	dq	325270231.e0039
	dq	0x49cc7ccf90c9f8ab

	dq	989648089.e-035
	dq	0x3a8880a3d515e849

	dq	653777767.e0273
	dq	0x7a720223f2b3a881

	dq	923091487.e0209
	dq	0x6d30bc60e6896717

	dq	526250918.e0288
	dq	0x7d89bfd8b3edfafa

	dq	350301748.e-309
	dq	0x018e07320602056c

	dq	741111169.e-203
	dq	0x17a14fe7daf8f3ae

	dq	667284113.e-240
	dq	0x0ff09355f8050c02

	dq	1227701635.e0120
	dq	0x5abc569e968e0944

	dq	9981396317.e-182
	dq	0x1c38afe10a2a66aa

	dq	5232604057.e-298
	dq	0x041465b896c24520

	dq	5572170023.e-088
	dq	0x2fb0847822f765b2

	dq	1964322616.e0122
	dq	0x5b31b6231e18c5cb

	dq	3928645232.e0122
	dq	0x5b41b6231e18c5cb

	dq	8715380633.e-058
	dq	0x35f4614c3219891f

	dq	4856063055.e-127
	dq	0x279397d3c9745d2f

	dq	8336960483.e-153
	dq	0x223a06a1024b95e1

	dq	1007046393.e-155
	dq	0x21a01891fc4717fd

	dq	5378822089.e-176
	dq	0x1d695fd4c88d4b1b

	dq	5981342308.e-190
	dq	0x1a83db11ac608107

	dq	7214782613.e-086
	dq	0x3020b552d2edcdea

	dq	5458466829.e0142
	dq	0x5f70acde6a98eb4c

	dq	9078555839.e-109
	dq	0x2b5fc575867314ee

	dq	6418488827.e0079
	dq	0x526021f14ed7b3fa

	dq	65325840981.e0069
	dq	0x5081a151ddbd3c4a

	dq	49573485983.e0089
	dq	0x54a221bd871d2cf4

	dq	46275205733.e0074
	dq	0x51830e6c7d4e3480

	dq	92550411466.e0074
	dq	0x51930e6c7d4e3480

	dq	41129842097.e-202
	dq	0x1832c3e72d179607

	dq	93227267727.e-049
	dq	0x380960fe08d5847f

	dq	41297294357.e0185
	dq	0x688c49437fccfadb

	dq	41534892987.e-067
	dq	0x343a12666477886d

	dq	42333842451.e0201
	dq	0x6be0189a26df575f

	dq	78564021519.e-227
	dq	0x131155515fd37265

	dq	53587107423.e-061
	dq	0x35800a19a3ffd981

	dq	53827010643.e-200
	dq	0x18a32fa69a69bd6d

	dq	83356057653.e0193
	dq	0x6a4544e6daee2a18

	dq	45256834646.e-118
	dq	0x29a541ecdfd48694

	dq	45392779195.e-110
	dq	0x2b4fc575867314ee

	dq	23934638219.e0291
	dq	0x7e81deaf40ead9a0

	dq	995779191233.e0113
	dq	0x59e2d44edcc51304

	dq	997422852243.e-265
	dq	0x0b676688faee99bc

	dq	653532977297.e-123
	dq	0x28d925a0aabcdc68

	dq	938885684947.e0147
	dq	0x60f11894b202e9f4

	dq	619534293513.e0124
	dq	0x5c210c20303fe0f1

	dq	539879452414.e-042
	dq	0x39a5e66dc3d6bdb5

	dq	742522891517.e0259
	dq	0x782c1c352fc3c309

	dq	254901016865.e-022
	dq	0x3dbc06d366394441

	dq	685763015669.e0280
	dq	0x7c85fd7aa44d9477

	dq	384865004907.e-285
	dq	0x072aa65b58639e69

	dq	286556458711.e0081
	dq	0x5321958b36c5102b

	dq	573112917422.e0081
	dq	0x5331958b36c5102b

	dq	769525178383.e-150
	dq	0x234253ec0e161420

	dq	416780288265.e0192
	dq	0x6a3544e6daee2a18

	dq	226963895975.e-111
	dq	0x2b3fc575867314ee

	dq	665592809339.e0063
	dq	0x4f778b6516c2b478

	dq	3891901811465.e0217
	dq	0x6f99ab8261990292

	dq	4764593340755.e0069
	dq	0x50e4177a9915fbf8

	dq	6336156586177.e0269
	dq	0x7a7173f76c63b792

	dq	8233559360849.e0095
	dq	0x56566fee05649a7a

	dq	3662265515198.e-107
	dq	0x2c538e6edd48f2a3

	dq	1831132757599.e-107
	dq	0x2c438e6edd48f2a3

	dq	7812878489261.e-179
	dq	0x1d726dae7bbeda75

	dq	6363857920591.e0145
	dq	0x60b28a61cf9483b7

	dq	8811915538555.e0082
	dq	0x53a51f508b287ae7

	dq	9997878507563.e-195
	dq	0x1a253db2fea1ea31

	dq	9224786422069.e-291
	dq	0x0634ee5d56b32957

	dq	6284426329974.e-294
	dq	0x058d3409dfbca26f

	dq	9199302046091.e-062
	dq	0x35c135972630774c

	dq	6070482281213.e-122
	dq	0x29423fa9e6fcf47e

	dq	2780161250963.e-301
	dq	0x0405acc2053064c2

	dq	8233559360849.e0094
	dq	0x5621f324d11d4862

	dq	72027097041701.e0206
	dq	0x6d94677812d3a606

	dq	97297545286625.e0215
	dq	0x6f79ab8261990292

	dq	99021992302453.e-025
	dq	0x3da5c6714def374c

	dq	54104687080198.e-022
	dq	0x3e373cdf8db7a7bc

	dq	33519685743233.e0089
	dq	0x5537f203339c9629

	dq	67039371486466.e0089
	dq	0x5547f203339c9629

	dq	39064392446305.e-180
	dq	0x1d626dae7bbeda75

	dq	17796979903653.e0261
	dq	0x78e072f3819c1321

	dq	28921916763211.e0038
	dq	0x4a9eebabe0957af3

	dq	87605699161665.e0155
	dq	0x6302920f96e7f9ef

	dq	41921560615349.e-067
	dq	0x34d9b2a5c4041e4b

	dq	80527976643809.e0061
	dq	0x4f7c7c5aea080a49

	dq	72335858886654.e-159
	dq	0x21cce77c2b3328fc

	dq	52656615219377.e0102
	dq	0x57f561def4a9ee32

	dq	15400733123779.e-072
	dq	0x33b8bf7e7fa6f02a

	dq	77003665618895.e-073
	dq	0x33a8bf7e7fa6f02a

	dq	475603213226859.e-042
	dq	0x3a42d73088f4050a

	dq	972708181182949.e0116
	dq	0x5b218a7f36172332

	dq	246411729980464.e-071
	dq	0x342eef5e1f90ac34

	dq	123205864990232.e-071
	dq	0x341eef5e1f90ac34

	dq	609610927149051.e-255
	dq	0x0e104273b18918b1

	dq	475603213226859.e-041
	dq	0x3a778cfcab31064d

	dq	672574798934795.e0065
	dq	0x508226c684c87261

	dq	134514959786959.e0066
	dq	0x509226c684c87261

	dq	294897574603217.e-151
	dq	0x2395f2df5e675a0f

	dq	723047919080275.e0036
	dq	0x4a7eebabe0957af3

	dq	660191429952702.e-088
	dq	0x30bddc7e975c5045

	dq	330095714976351.e-088
	dq	0x30addc7e975c5045

	dq	578686871093232.e-159
	dq	0x21fce77c2b3328fc

	dq	144671717773308.e-159
	dq	0x21dce77c2b3328fc

	dq	385018328094475.e-074
	dq	0x3398bf7e7fa6f02a

	dq	330095714976351.e-089
	dq	0x3077e3987916a69e

	dq	2215901545757777.e-212
	dq	0x171a80a6e566428c

	dq	1702061899637397.e-276
	dq	0x09cacc46749dccfe

	dq	1864950924021923.e0213
	dq	0x6f53ae60753af6ca

	dq	3729901848043846.e0213
	dq	0x6f63ae60753af6ca

	dq	7487252720986826.e-165
	dq	0x20f8823a57adbef9

	dq	3743626360493413.e-165
	dq	0x20e8823a57adbef9

	dq	4988915232824583.e0119
	dq	0x5be5f6de9d5d6b5b

	dq	3771476185376383.e0277
	dq	0x7cae3c14d6916ce9

	dq	6182410494241627.e-119
	dq	0x2a81b96458445d07

	dq	2572981889477453.e0142
	dq	0x609dfc11fbf46087

	dq	7793560217139653.e0051
	dq	0x4dd280461b856ec5

	dq	9163942927285259.e-202
	dq	0x194fe601457dce4d

	dq	6353227084707473.e0155
	dq	0x63650aff653ffe8a

	dq	4431803091515554.e-211
	dq	0x176090684f5fe998

	dq	9324754620109615.e0211
	dq	0x6f0f7d6721f7f144

	dq	8870461176410409.e0263
	dq	0x79d90529a37b7e22

	dq	90372559027740405.e0143
	dq	0x612491daad0ba280

	dq	18074511805548081.e0146
	dq	0x61a011f2d73116f4

	dq	54897030182071313.e0029
	dq	0x496ec55666d8f9ec

	dq	76232626624829156.e-032
	dq	0x3ccb7738011e75fe

	dq	59898021767894608.e-165
	dq	0x2128823a57adbef9

	dq	29949010883947304.e-165
	dq	0x2118823a57adbef9

	dq	26153245263757307.e0049
	dq	0x4d83de005bd620df

	dq	27176258005319167.e-261
	dq	0x0d27c0747bd76fa1

	dq	18074511805548081.e0147
	dq	0x61d4166f8cfd5cb1

	dq	24691002732654881.e-115
	dq	0x2b759a2783ce70ab

	dq	58483921078398283.e0057
	dq	0x4f408ce499519ce3

	dq	64409240769861689.e-159
	dq	0x22692238f7987779

	dq	94080055902682397.e-242
	dq	0x11364981e39e66ca

	dq	31766135423537365.e0154
	dq	0x63550aff653ffe8a

	dq	68985865317742005.e0164
	dq	0x657a999ddec72aca

	dq	13797173063548401.e0165
	dq	0x658a999ddec72aca

	dq	902042358290366539.e-281
	dq	0x09522dc01ca1cb8c

	dq	238296178309629163.e0272
	dq	0x7c038fd93f1f5342

	dq	783308178698887621.e0226
	dq	0x72925ae62cb346d8

	dq	439176241456570504.e0029
	dq	0x499ec55666d8f9ec

	dq	899810892172646163.e0283
	dq	0x7e6adf51fa055e03

	dq	926145344610700019.e-225
	dq	0x14f307a67f1f69ff

	dq	653831131593932675.e0047
	dq	0x4d63de005bd620df

	dq	130766226318786535.e0048
	dq	0x4d73de005bd620df

	dq	557035730189854663.e-294
	dq	0x0693bfac6bc4767b

	dq	902042358290366539.e-280
	dq	0x0986b93023ca3e6f

	dq	272104041512242479.e0200
	dq	0x6d13bbb4bf05f087

	dq	544208083024484958.e0200
	dq	0x6d23bbb4bf05f087

	dq	680429695511221511.e0192
	dq	0x6b808ebc116f8a20

	dq	308975121073410857.e0236
	dq	0x7490db75cc001072

	dq	792644927852378159.e0078
	dq	0x53d7bff336d8ff06

	dq	783308178698887621.e0223
	dq	0x71f2cbac35f71140

	dq	8396094300569779681.e-252
	dq	0x0f8ab223efcee35a

	dq	3507665085003296281.e-074
	dq	0x346b85c026a264e4

	dq	7322325862592278999.e0074
	dq	0x5336775b6caa5ae0

	dq	6014546754280072926.e0209
	dq	0x6f396397b06732a4

	dq	7120190517612959703.e0120
	dq	0x5cc3220dcd5899fd

	dq	3507665085003296281.e-073
	dq	0x34a1339818257f0f

	dq	4345544743100783551.e-218
	dq	0x168a9c42e5b6d89f

	dq	9778613303868468131.e-090
	dq	0x313146fe1075e1ef

	dq	7539204280836061195.e-082
	dq	0x32d3d969e3dbe723

	dq	7862637540082247119.e-202
	dq	0x19eaba3262ee707b

	dq	2176832332097939832.e0200
	dq	0x6d43bbb4bf05f087

	dq	8643988913946659879.e0115
	dq	0x5bbe71ec1ed0a4f9

	dq	5529436763613147623.e0138
	dq	0x6079c677be6f236e

	dq	6764958008109694533.e-173
	dq	0x1fed06692e6f5ef6

	dq	6802601037806061975.e0197
	dq	0x6cbf92bacb3cb40c

	dq	1360520207561212395.e0198
	dq	0x6ccf92bacb3cb40c

	dq	62259110684423957791.e0047
	dq	0x4dcd8f2cfc20d6e8

	dq	88800290202542652011.e-226
	dq	0x1526cec51a43f41a

	dq	41010852717673354694.e-221
	dq	0x162012954b6aabba

	dq	20505426358836677347.e-221
	dq	0x161012954b6aabba

	dq	66102447903809911604.e0055
	dq	0x4f7762068a24fd55

	dq	35600952588064798515.e0119
	dq	0x5cb3220dcd5899fd

	dq	14371240869903838702.e0205
	dq	0x6e78d92d2bcc7a81

	dq	57500690832492901689.e0043
	dq	0x4cf65d3e2acd616b

	dq	23432630639573022093.e-107
	dq	0x2dbdd54c40a2f25f

	dq	62259110684423957791.e0048
	dq	0x4e02797c1d948651

	dq	35620497849450218807.e-306
	dq	0x0475b22082529425

	dq	69658634627134074624.e0200
	dq	0x6d93bbb4bf05f087

	dq	99440755792436956989.e-062
	dq	0x37362d10462a26f4

	dq	55277197169490210673.e0081
	dq	0x54d945bfa911e32a

	dq	36992084760177624177.e-318
	dq	0x01f8c5f9551c2f9a

	dq	30888265282878466443.e-111
	dq	0x2cf01b8ef28251fc

	dq	2.4703282292062327208828439643411068618252990130716238221279284125033775363510437593264991818081799618989828234772285886546332835517796989819938739800539093906315035659515570226392290858392449105184435931802849936536152500319370457678249219365623669863658480757001585769269903706311928279558551332927834338409351978015531246597263579574622766465272827220056374006485499977096599470454020828166226237857393450736339007967761930577506740176324673600968951340535537458516661134223766678604162159680461914467291840300530057530849048765391711386591646239524912623653881879636239373280423891018672348497668235089863388587925628302755995657524455507255189313690836254779186948667994968324049705821028513185451396213837722826145437693412532098591327667236328125e-324
	dq	0x0000000000000000

	dq	2.47032822920623272e-324
	dq	0x0000000000000000
