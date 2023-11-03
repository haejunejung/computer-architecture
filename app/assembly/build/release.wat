(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $shared/constants/ADD (mut i32) (i32.const 0))
 (global $shared/constants/ADDI (mut i32) (i32.const 0))
 (global $shared/constants/ADDIU (mut i32) (i32.const 0))
 (global $shared/constants/ADDU (mut i32) (i32.const 0))
 (global $shared/constants/AND (mut i32) (i32.const 0))
 (global $shared/constants/ANDI (mut i32) (i32.const 0))
 (global $shared/constants/BEQ (mut i32) (i32.const 0))
 (global $shared/constants/BNE (mut i32) (i32.const 0))
 (global $shared/constants/J (mut i32) (i32.const 0))
 (global $shared/constants/JAL (mut i32) (i32.const 0))
 (global $shared/constants/JR (mut i32) (i32.const 0))
 (global $shared/constants/LHU (mut i32) (i32.const 0))
 (global $shared/constants/LUI (mut i32) (i32.const 0))
 (global $shared/constants/LW (mut i32) (i32.const 0))
 (global $shared/constants/NOR (mut i32) (i32.const 0))
 (global $shared/constants/OR (mut i32) (i32.const 0))
 (global $shared/constants/ORI (mut i32) (i32.const 0))
 (global $shared/constants/SLT (mut i32) (i32.const 0))
 (global $shared/constants/SLTI (mut i32) (i32.const 0))
 (global $shared/constants/SLTIU (mut i32) (i32.const 0))
 (global $shared/constants/SLTU (mut i32) (i32.const 0))
 (global $shared/constants/SLL (mut i32) (i32.const 0))
 (global $shared/constants/SRL (mut i32) (i32.const 0))
 (global $shared/constants/SH (mut i32) (i32.const 0))
 (global $shared/constants/SW (mut i32) (i32.const 0))
 (global $shared/constants/SUB (mut i32) (i32.const 0))
 (global $shared/constants/SUBU (mut i32) (i32.const 0))
 (global $shared/constants/INST_LIST (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $index/make_binary_file i32 (i32.const 6576))
 (global $index/add i32 (i32.const 6608))
 (global $~lib/rt/__rtti_base i32 (i32.const 6752))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39620))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $3 (i32.const 1196) ",")
 (data $3.1 (i32.const 1208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $4 (i32.const 1244) "<")
 (data $4.1 (i32.const 1256) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\02\00\00\00\06\00\00\00a\00d\00d")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\02\00\00\00\0c\00\00\000\000\000\000\000\000")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\02\00\00\00\02\00\00\00R")
 (data $11 (i32.const 1532) "\1c")
 (data $11.1 (i32.const 1544) "\02\00\00\00\0c\00\00\001\000\000\000\000\000")
 (data $12 (i32.const 1564) "\1c")
 (data $12.1 (i32.const 1576) "\02\00\00\00\08\00\00\00a\00d\00d\00i")
 (data $13 (i32.const 1596) "\1c")
 (data $13.1 (i32.const 1608) "\02\00\00\00\0c\00\00\000\000\001\000\000\000")
 (data $14 (i32.const 1628) "\1c")
 (data $14.1 (i32.const 1640) "\02\00\00\00\02\00\00\00I")
 (data $15 (i32.const 1660) "\1c")
 (data $15.1 (i32.const 1672) "\02")
 (data $16 (i32.const 1692) "\1c")
 (data $16.1 (i32.const 1704) "\02\00\00\00\n\00\00\00a\00d\00d\00i\00u")
 (data $17 (i32.const 1724) "\1c")
 (data $17.1 (i32.const 1736) "\02\00\00\00\0c\00\00\000\000\001\000\000\001")
 (data $18 (i32.const 1756) "\1c")
 (data $18.1 (i32.const 1768) "\02\00\00\00\08\00\00\00a\00d\00d\00u")
 (data $19 (i32.const 1788) "\1c")
 (data $19.1 (i32.const 1800) "\02\00\00\00\0c\00\00\001\000\000\000\000\001")
 (data $20 (i32.const 1820) "\1c")
 (data $20.1 (i32.const 1832) "\02\00\00\00\06\00\00\00a\00n\00d")
 (data $21 (i32.const 1852) "\1c")
 (data $21.1 (i32.const 1864) "\02\00\00\00\0c\00\00\001\000\000\001\000\000")
 (data $22 (i32.const 1884) "\1c")
 (data $22.1 (i32.const 1896) "\02\00\00\00\08\00\00\00a\00n\00d\00i")
 (data $23 (i32.const 1916) "\1c")
 (data $23.1 (i32.const 1928) "\02\00\00\00\0c\00\00\000\000\001\001\000\000")
 (data $24 (i32.const 1948) "\1c")
 (data $24.1 (i32.const 1960) "\02\00\00\00\06\00\00\00b\00e\00q")
 (data $25 (i32.const 1980) "\1c")
 (data $25.1 (i32.const 1992) "\02\00\00\00\0c\00\00\000\000\000\001\000\000")
 (data $26 (i32.const 2012) "\1c")
 (data $26.1 (i32.const 2024) "\02\00\00\00\06\00\00\00b\00n\00e")
 (data $27 (i32.const 2044) "\1c")
 (data $27.1 (i32.const 2056) "\02\00\00\00\0c\00\00\000\000\000\001\000\001")
 (data $28 (i32.const 2076) "\1c")
 (data $28.1 (i32.const 2088) "\02\00\00\00\02\00\00\00j")
 (data $29 (i32.const 2108) "\1c")
 (data $29.1 (i32.const 2120) "\02\00\00\00\0c\00\00\000\000\000\000\001\000")
 (data $30 (i32.const 2140) "\1c")
 (data $30.1 (i32.const 2152) "\02\00\00\00\02\00\00\00J")
 (data $31 (i32.const 2172) "\1c")
 (data $31.1 (i32.const 2184) "\02\00\00\00\06\00\00\00j\00a\00l")
 (data $32 (i32.const 2204) "\1c")
 (data $32.1 (i32.const 2216) "\02\00\00\00\0c\00\00\000\000\000\000\001\001")
 (data $33 (i32.const 2236) "\1c")
 (data $33.1 (i32.const 2248) "\02\00\00\00\04\00\00\00j\00r")
 (data $34 (i32.const 2268) "\1c")
 (data $34.1 (i32.const 2280) "\02\00\00\00\06\00\00\00l\00h\00u")
 (data $35 (i32.const 2300) "\1c")
 (data $35.1 (i32.const 2312) "\02\00\00\00\0c\00\00\001\000\000\001\000\001")
 (data $36 (i32.const 2332) "\1c")
 (data $36.1 (i32.const 2344) "\02\00\00\00\06\00\00\00l\00u\00i")
 (data $37 (i32.const 2364) "\1c")
 (data $37.1 (i32.const 2376) "\02\00\00\00\0c\00\00\000\000\001\001\001\001")
 (data $38 (i32.const 2396) "\1c")
 (data $38.1 (i32.const 2408) "\02\00\00\00\04\00\00\00l\00w")
 (data $39 (i32.const 2428) "\1c")
 (data $39.1 (i32.const 2440) "\02\00\00\00\0c\00\00\001\000\000\000\001\001")
 (data $40 (i32.const 2460) "\1c")
 (data $40.1 (i32.const 2472) "\02\00\00\00\06\00\00\00n\00o\00r")
 (data $41 (i32.const 2492) "\1c")
 (data $41.1 (i32.const 2504) "\02\00\00\00\0c\00\00\001\000\000\001\001\001")
 (data $42 (i32.const 2524) "\1c")
 (data $42.1 (i32.const 2536) "\02\00\00\00\04\00\00\00o\00r")
 (data $43 (i32.const 2556) "\1c")
 (data $43.1 (i32.const 2568) "\02\00\00\00\06\00\00\00o\00r\00i")
 (data $44 (i32.const 2588) "\1c")
 (data $44.1 (i32.const 2600) "\02\00\00\00\0c\00\00\000\000\001\001\000\001")
 (data $45 (i32.const 2620) "\1c")
 (data $45.1 (i32.const 2632) "\02\00\00\00\06\00\00\00s\00l\00t")
 (data $46 (i32.const 2652) "\1c")
 (data $46.1 (i32.const 2664) "\02\00\00\00\0c\00\00\001\000\001\000\001\000")
 (data $47 (i32.const 2684) "\1c")
 (data $47.1 (i32.const 2696) "\02\00\00\00\08\00\00\00s\00l\00t\00i")
 (data $48 (i32.const 2716) "\1c")
 (data $48.1 (i32.const 2728) "\02\00\00\00\0c\00\00\000\000\001\000\001\000")
 (data $49 (i32.const 2748) "\1c")
 (data $49.1 (i32.const 2760) "\02\00\00\00\n\00\00\00s\00l\00t\00i\00u")
 (data $50 (i32.const 2780) "\1c")
 (data $50.1 (i32.const 2792) "\02\00\00\00\0c\00\00\000\000\001\000\001\001")
 (data $51 (i32.const 2812) "\1c")
 (data $51.1 (i32.const 2824) "\02\00\00\00\08\00\00\00s\00l\00t\00u")
 (data $52 (i32.const 2844) "\1c")
 (data $52.1 (i32.const 2856) "\02\00\00\00\0c\00\00\001\000\001\000\001\001")
 (data $53 (i32.const 2876) "\1c")
 (data $53.1 (i32.const 2888) "\02\00\00\00\06\00\00\00s\00l\00l")
 (data $54 (i32.const 2908) "\1c")
 (data $54.1 (i32.const 2920) "\02\00\00\00\06\00\00\00s\00r\00l")
 (data $55 (i32.const 2940) "\1c")
 (data $55.1 (i32.const 2952) "\02\00\00\00\04\00\00\00s\00h")
 (data $56 (i32.const 2972) "\1c")
 (data $56.1 (i32.const 2984) "\02\00\00\00\0c\00\00\001\000\001\000\000\001")
 (data $57 (i32.const 3004) "\1c")
 (data $57.1 (i32.const 3016) "\02\00\00\00\04\00\00\00s\00w")
 (data $58 (i32.const 3036) "\1c")
 (data $58.1 (i32.const 3048) "\02\00\00\00\06\00\00\00s\00u\00b")
 (data $59 (i32.const 3068) "\1c")
 (data $59.1 (i32.const 3080) "\02\00\00\00\0c\00\00\001\000\000\000\001\000")
 (data $60 (i32.const 3100) "\1c")
 (data $60.1 (i32.const 3112) "\02\00\00\00\08\00\00\00s\00u\00b\00u")
 (data $61 (i32.const 3132) ",")
 (data $61.1 (i32.const 3144) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $62 (i32.const 3180) ",")
 (data $62.1 (i32.const 3192) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $63 (i32.const 3228) "\1c")
 (data $63.1 (i32.const 3240) "\07\00\00\00\08\00\00\00\01")
 (data $64 (i32.const 3260) "\1c")
 (data $64.1 (i32.const 3272) "\01")
 (data $65 (i32.const 3292) "\1c")
 (data $65.1 (i32.const 3304) "\01")
 (data $66 (i32.const 3324) "\1c")
 (data $66.1 (i32.const 3336) "\01")
 (data $67 (i32.const 3356) "\1c")
 (data $67.1 (i32.const 3368) "\t\00\00\00\08\00\00\00\02")
 (data $68 (i32.const 3388) "|")
 (data $68.1 (i32.const 3400) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $69 (i32.const 3516) "<")
 (data $69.1 (i32.const 3528) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $70 (i32.const 3580) "\1c")
 (data $70.1 (i32.const 3592) "\02\00\00\00\02\00\00\000")
 (data $71 (i32.const 3612) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $72 (i32.const 4012) "\1c\04")
 (data $72.1 (i32.const 4024) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $73 (i32.const 5068) "\\")
 (data $73.1 (i32.const 5080) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $74 (i32.const 5164) "\1c")
 (data $74.1 (i32.const 5176) "\n\00\00\00\08\00\00\00\03")
 (data $75 (i32.const 5196) "\1c")
 (data $75.1 (i32.const 5208) "\n\00\00\00\08\00\00\00\04")
 (data $76 (i32.const 5228) "\1c")
 (data $76.1 (i32.const 5240) "\01")
 (data $77 (i32.const 5260) "\1c")
 (data $77.1 (i32.const 5272) "\01")
 (data $78 (i32.const 5292) "|")
 (data $78.1 (i32.const 5304) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $79 (i32.const 5420) "\1c")
 (data $79.1 (i32.const 5432) "\02\00\00\00\04\00\00\00\n\00\t")
 (data $80 (i32.const 5452) "\1c")
 (data $80.1 (i32.const 5464) "\02\00\00\00\02\00\00\00 ")
 (data $81 (i32.const 5484) "\1c")
 (data $81.1 (i32.const 5496) "\02\00\00\00\02\00\00\00\t")
 (data $82 (i32.const 5516) "\1c")
 (data $82.1 (i32.const 5528) "\02\00\00\00\02\00\00\00\n")
 (data $83 (i32.const 5548) "\1c")
 (data $83.1 (i32.const 5560) "\01\00\00\00\0c\00\00\00`\15\00\00\80\15\00\00\a0\15")
 (data $84 (i32.const 5580) "\1c")
 (data $84.1 (i32.const 5592) "\02\00\00\00\n\00\00\00.\00d\00a\00t\00a")
 (data $85 (i32.const 5612) "\1c")
 (data $85.1 (i32.const 5624) "\02\00\00\00\n\00\00\00.\00t\00e\00x\00t")
 (data $86 (i32.const 5644) "\1c")
 (data $86.1 (i32.const 5656) "\02\00\00\00\02\00\00\00:")
 (data $87 (i32.const 5676) "\1c")
 (data $87.1 (i32.const 5688) "\02\00\00\00\n\00\00\00.\00w\00o\00r\00d")
 (data $88 (i32.const 5708) "\1c")
 (data $88.1 (i32.const 5720) "\02\00\00\00\02\00\00\00,")
 (data $89 (i32.const 5740) "\1c")
 (data $89.1 (i32.const 5752) "\02\00\00\00\04\00\00\00l\00a")
 (data $90 (i32.const 5772) "\1c")
 (data $90.1 (i32.const 5784) "\02\00\00\00\08\00\00\00l\00u\00i\00 ")
 (data $91 (i32.const 5804) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\10\00\00\00\a0\16\00\00\00\00\00\00`\15")
 (data $92 (i32.const 5852) "\1c")
 (data $92.1 (i32.const 5864) "\02\00\00\00\08\00\00\000\000\000\000")
 (data $93 (i32.const 5884) "\1c")
 (data $93.1 (i32.const 5896) "\02\00\00\00\08\00\00\00o\00r\00i\00 ")
 (data $94 (i32.const 5916) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\18\00\00\00\10\17\00\00\00\00\00\00`\15\00\00\00\00\00\00`\15")
 (data $95 (i32.const 5964) "\1c")
 (data $95.1 (i32.const 5976) "\02\00\00\00\08\00\00\00m\00o\00v\00e")
 (data $96 (i32.const 5996) "\1c")
 (data $96.1 (i32.const 6008) "\02\00\00\00\08\00\00\00a\00d\00d\00 ")
 (data $97 (i32.const 6028) "\1c")
 (data $97.1 (i32.const 6040) "\02\00\00\00\08\00\00\00,\00 \00$\000")
 (data $98 (i32.const 6060) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\14\00\00\00\80\17\00\00\00\00\00\00`\15\00\00\00\00\00\00\a0\17")
 (data $99 (i32.const 6108) "\1c")
 (data $99.1 (i32.const 6120) "\02\00\00\00\04\00\00\00\t\00\n")
 (data $100 (i32.const 6140) "\1c")
 (data $100.1 (i32.const 6152) "\12\00\00\00\08\00\00\00\05")
 (data $101 (i32.const 6172) "\1c")
 (data $101.1 (i32.const 6184) "\01")
 (data $102 (i32.const 6204) "\1c")
 (data $102.1 (i32.const 6216) "\02\00\00\00\08\00\00\00/\00$\00,\00/")
 (data $103 (i32.const 6236) "\1c")
 (data $103.1 (i32.const 6248) "\02\00\00\00\04\00\00\000\00x")
 (data $104 (i32.const 6268) "\1c")
 (data $104.1 (i32.const 6280) "\02\00\00\00\02\00\00\00(")
 (data $105 (i32.const 6300) "\1c")
 (data $105.1 (i32.const 6312) "\01\00\00\00\04\00\00\00\90\18")
 (data $106 (i32.const 6332) "\1c")
 (data $106.1 (i32.const 6344) "\02\00\00\00\02\00\00\00$")
 (data $107 (i32.const 6364) "\1c")
 (data $107.1 (i32.const 6376) "\01\00\00\00\08\00\00\00\d0\18\00\00`\16")
 (data $108 (i32.const 6396) "\1c")
 (data $108.1 (i32.const 6408) "\13\00\00\00\08\00\00\00\06")
 (data $109 (i32.const 6428) "\1c")
 (data $109.1 (i32.const 6440) "\01")
 (data $110 (i32.const 6460) "\1c")
 (data $110.1 (i32.const 6472) "\14\00\00\00\08\00\00\00\07")
 (data $111 (i32.const 6492) "\1c")
 (data $111.1 (i32.const 6504) "\15\00\00\00\08\00\00\00\08")
 (data $112 (i32.const 6524) "\1c")
 (data $112.1 (i32.const 6536) "\16\00\00\00\08\00\00\00\t")
 (data $113 (i32.const 6556) "\1c")
 (data $113.1 (i32.const 6568) "\16\00\00\00\08\00\00\00\n")
 (data $114 (i32.const 6588) "\1c")
 (data $114.1 (i32.const 6600) "\17\00\00\00\08\00\00\00\0b")
 (data $115 (i32.const 6620) "<")
 (data $115.1 (i32.const 6632) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $116 (i32.const 6684) "<")
 (data $116.1 (i32.const 6696) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $117 (i32.const 6752) "\18\00\00\00 \00\00\00 \00\00\00 ")
 (data $117.1 (i32.const 6776) "\02A\00\00\02\t\00\00\00\00\00\00\02A")
 (data $117.2 (i32.const 6812) "\02A")
 (data $117.3 (i32.const 6824) "\04A")
 (table $0 12 12 funcref)
 (elem $0 (i32.const 1) $start:shared/functions~anonymous|0@varargs $start:shared/functions~anonymous|1 $start:shared/functions~anonymous|2@varargs $start:shared/functions~anonymous|3@varargs $start:assembler/assembler~anonymous|0 $start:assembler/assembler~anonymous|1 $start:assembler/assembler~anonymous|2 $start:assembler/assembler~anonymous|3 $start:assembler/assembler~anonymous|4 $start:assembler/assembler~anonymous|4 $start:index~anonymous|1)
 (export "make_binary_file" (global $index/make_binary_file))
 (export "add" (global $index/add))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load $0 offset=8
   i32.eqz
   local.get $0
   i32.const 39620
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 6752
   i32.load $0
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 6756
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load $0 offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1152
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3200
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5312
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1264
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6640
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6704
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4032
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5088
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $shared/constants/ADD
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDI
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDIU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/AND
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ANDI
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/BEQ
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/BNE
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/J
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/JAL
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/JR
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LHU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LUI
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LW
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/NOR
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/OR
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ORI
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLT
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTI
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTIU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLL
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SRL
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SH
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SW
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SUB
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SUBU
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $shared/constants/INST_LIST
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 39632
  i32.const 0
  i32.store $0
  i32.const 41200
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 39632
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 39632
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 39632
  i32.const 41204
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 39632
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 39620
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 39620
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 39620
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1264
   i32.const 1056
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1264
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 1
    i32.const 27
    local.get $5
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.get $5
    local.get $5
    i32.const 536870910
    i32.lt_u
    select
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.tee $1
  i32.const 7
  i32.and
  local.get $2
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $1
    i64.load $0
    local.get $2
    i64.load $0
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u $0
    local.tee $0
    local.get $2
    i32.load16_u $0
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $1
  i32.const 2
  i32.lt_s
  local.get $1
  i32.const 36
  i32.gt_s
  i32.or
  if
   i32.const 3408
   i32.const 3536
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3600
    local.set $5
    br $__inlined_func$~lib/util/number/itoa32
   end
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $6
   select
   local.set $0
   local.get $1
   i32.const 10
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $0
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $0
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $0
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $0
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $0
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $1
    i32.const 1
    i32.shl
    local.get $6
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store $0
    local.get $5
    local.get $6
    i32.add
    local.set $2
    loop $while-continue|0
     local.get $0
     i32.const 10000
     i32.ge_u
     if
      local.get $0
      i32.const 10000
      i32.rem_u
      local.set $7
      local.get $0
      i32.const 10000
      i32.div_u
      local.set $0
      local.get $2
      local.get $1
      i32.const 4
      i32.sub
      local.tee $1
      i32.const 1
      i32.shl
      i32.add
      local.get $7
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 3612
      i32.add
      i64.load32_u $0
      local.get $7
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 3612
      i32.add
      i64.load32_u $0
      i64.const 32
      i64.shl
      i64.or
      i64.store $0
      br $while-continue|0
     end
    end
    local.get $0
    i32.const 100
    i32.ge_u
    if
     local.get $2
     local.get $1
     i32.const 2
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 3612
     i32.add
     i32.load $0
     i32.store $0
     local.get $0
     i32.const 100
     i32.div_u
     local.set $0
    end
    local.get $0
    i32.const 10
    i32.ge_u
    if
     local.get $2
     local.get $1
     i32.const 2
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     i32.const 2
     i32.shl
     i32.const 3612
     i32.add
     i32.load $0
     i32.store $0
    else
     local.get $2
     local.get $1
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     i32.const 48
     i32.add
     i32.store16 $0
    end
   else
    local.get $1
    i32.const 16
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 31
     local.get $0
     i32.clz
     i32.sub
     i32.const 2
     i32.shr_s
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.shl
     local.get $6
     i32.add
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.store $0
     local.get $5
     local.get $6
     i32.add
     local.set $2
     local.get $0
     i64.extend_i32_u
     local.set $3
     loop $while-continue|01
      local.get $1
      i32.const 2
      i32.ge_u
      if
       local.get $2
       local.get $1
       i32.const 2
       i32.sub
       local.tee $1
       i32.const 1
       i32.shl
       i32.add
       local.get $3
       i32.wrap_i64
       i32.const 255
       i32.and
       i32.const 2
       i32.shl
       i32.const 4032
       i32.add
       i32.load $0
       i32.store $0
       local.get $3
       i64.const 8
       i64.shr_u
       local.set $3
       br $while-continue|01
      end
     end
     local.get $1
     i32.const 1
     i32.and
     if
      local.get $2
      local.get $3
      i32.wrap_i64
      i32.const 6
      i32.shl
      i32.const 4032
      i32.add
      i32.load16_u $0
      i32.store16 $0
     end
    else
     global.get $~lib/memory/__stack_pointer
     block $__inlined_func$~lib/util/number/ulog_base (result i32)
      local.get $0
      local.tee $2
      i64.extend_i32_u
      local.set $4
      local.get $1
      i32.popcnt
      i32.const 1
      i32.eq
      if
       i32.const 63
       local.get $4
       i64.clz
       i32.wrap_i64
       i32.sub
       i32.const 31
       local.get $1
       i32.clz
       i32.sub
       i32.div_u
       i32.const 1
       i32.add
       br $__inlined_func$~lib/util/number/ulog_base
      end
      local.get $1
      i64.extend_i32_s
      local.tee $8
      local.set $3
      i32.const 1
      local.set $0
      loop $while-continue|02
       local.get $3
       local.get $4
       i64.le_u
       if
        local.get $4
        local.get $3
        i64.div_u
        local.set $4
        local.get $3
        local.get $3
        i64.mul
        local.set $3
        local.get $0
        i32.const 1
        i32.shl
        local.set $0
        br $while-continue|02
       end
      end
      loop $while-continue|1
       local.get $4
       i64.const 0
       i64.ne
       if
        local.get $4
        local.get $8
        i64.div_u
        local.set $4
        local.get $0
        i32.const 1
        i32.add
        local.set $0
        br $while-continue|1
       end
      end
      local.get $0
      i32.const 1
      i32.sub
     end
     local.tee $0
     i32.const 1
     i32.shl
     local.get $6
     i32.add
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.store $0
     local.get $5
     local.get $6
     i32.add
     local.set $7
     local.get $2
     i64.extend_i32_u
     local.set $3
     local.get $1
     i64.extend_i32_s
     local.set $4
     local.get $1
     local.get $1
     i32.const 1
     i32.sub
     i32.and
     if
      loop $do-loop|1
       local.get $7
       local.get $0
       i32.const 1
       i32.sub
       local.tee $0
       i32.const 1
       i32.shl
       i32.add
       local.get $3
       local.get $4
       local.get $3
       local.get $4
       i64.div_u
       local.tee $3
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 1
       i32.shl
       i32.const 5088
       i32.add
       i32.load16_u $0
       i32.store16 $0
       local.get $3
       i64.const 0
       i64.ne
       br_if $do-loop|1
      end
     else
      local.get $1
      i32.ctz
      i32.const 7
      i32.and
      i64.extend_i32_s
      local.set $8
      local.get $4
      i64.const 1
      i64.sub
      local.set $4
      loop $do-loop|0
       local.get $7
       local.get $0
       i32.const 1
       i32.sub
       local.tee $0
       i32.const 1
       i32.shl
       i32.add
       local.get $3
       local.get $4
       i64.and
       i32.wrap_i64
       i32.const 1
       i32.shl
       i32.const 5088
       i32.add
       i32.load16_u $0
       i32.store16 $0
       local.get $3
       local.get $8
       i64.shr_u
       local.tee $3
       i64.const 0
       i64.ne
       br_if $do-loop|0
      end
     end
    end
   end
   local.get $6
   if
    local.get $5
    i32.const 45
    i32.store16 $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $5
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $start:index~anonymous|1 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 6640
    i32.const 1056
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 6704
   i32.const 1056
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load $0 offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $start:shared/functions~anonymous|2@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 32
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   i32.const 1
   local.get $1
   i32.extend8_s
   local.tee $0
   i32.shl
   i32.const 0
   local.get $0
   i32.const 32
   i32.lt_u
   select
   i32.add
  else
   local.get $0
  end
  i32.const 2
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $3
  i32.const 3600
  i32.store $0 offset=4
  local.get $2
  local.get $0
  local.get $1
  i32.extend8_s
  call $~lib/string/String#padStart
  local.tee $0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:shared/functions~anonymous|3@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 8
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 16
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3600
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.extend8_s
  call $~lib/string/String#padStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       block $invalid
        block $~lib/staticarray/StaticArray<~lib/string/String>
         block $assembler/assembler/MipsAssembler
          block $~lib/array/Array<i32>
           block $shared/types/InstT
            block $~lib/string/String
             block $~lib/arraybuffer/ArrayBuffer
              block $~lib/object/Object
               local.get $0
               i32.const 8
               i32.sub
               i32.load $0
               br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $shared/types/InstT $folding-inner1 $~lib/array/Array<i32> $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner2 $assembler/assembler/MipsAssembler $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner0 $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $invalid
              end
              return
             end
             return
            end
            return
           end
           local.get $0
           i32.load $0
           local.tee $1
           if
            local.get $1
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load $0 offset=4
           local.tee $1
           if
            local.get $1
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load $0 offset=8
           local.tee $1
           if
            local.get $1
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load $0 offset=12
           local.tee $0
           if
            local.get $0
            call $byn-split-outlined-A$~lib/rt/itcms/__visit
           end
           return
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 6852
          i32.lt_s
          br_if $folding-inner3
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          i32.const 0
          i32.store $0
          local.get $1
          local.get $0
          i32.store $0
          br $folding-inner4
         end
         local.get $0
         i32.load $0
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load $0 offset=4
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load $0 offset=8
         local.tee $0
         if
          local.get $0
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         return
        end
        local.get $0
        local.get $0
        i32.const 20
        i32.sub
        i32.load $0 offset=16
        i32.add
        local.set $1
        loop $while-continue|0
         local.get $0
         local.get $1
         i32.lt_u
         if
          local.get $0
          i32.load $0
          local.tee $2
          if
           local.get $2
           call $byn-split-outlined-A$~lib/rt/itcms/__visit
          end
          local.get $0
          i32.const 4
          i32.add
          local.set $0
          br $while-continue|0
         end
        end
        return
       end
       unreachable
      end
      local.get $0
      i32.load $0
      local.tee $0
      if
       local.get $0
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6852
     i32.lt_s
     br_if $folding-inner3
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0
     local.get $0
     i32.load $0 offset=4
     local.set $1
     local.get $2
     local.get $0
     i32.store $0
     local.get $1
     local.get $0
     i32.load $0 offset=12
     i32.const 2
     i32.shl
     i32.add
     local.set $2
     loop $while-continue|00
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $1
       i32.load $0
       local.tee $3
       if
        local.get $3
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       br $while-continue|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     br $folding-inner4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6852
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  call $start:shared/constants
 )
 (func $shared/types/InstT#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store $0
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  local.get $4
  i32.const 16
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  local.get $4
  i32.store $0 offset=4
  local.get $5
  local.get $0
  i32.store $0 offset=8
  local.get $4
  local.get $0
  i32.store $0
  local.get $0
  if
   local.get $4
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $4
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $4
  local.get $1
  i32.store $0 offset=4
  local.get $1
  if
   local.get $4
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $4
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $4
  local.get $2
  i32.store $0 offset=8
  local.get $2
  if
   local.get $4
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $4
  i32.store $0 offset=4
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $4
  local.get $3
  i32.store $0 offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3200
    i32.const 3152
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   block $__inlined_func$~lib/rt/itcms/__renew
    i32.const 1073741820
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    i32.const 8
    local.get $1
    local.get $1
    i32.const 8
    i32.le_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $3
    local.get $0
    i32.load $0
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load $0
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store $0 offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $3
    local.get $4
    i32.load $0 offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load $0 offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    memory.copy $0 $0
   end
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store $0
    local.get $0
    local.get $1
    i32.store $0 offset=4
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $3
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<shared/types/InstT>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1152
    i32.const 3152
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $3
   i32.store $0 offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:shared/constants
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.const 24
  memory.fill $0
  i32.const 1108
  i32.const 1104
  i32.store $0
  i32.const 1112
  i32.const 1104
  i32.store $0
  i32.const 1104
  global.set $~lib/rt/itcms/toSpace
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 39620
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1316
  i32.const 1312
  i32.store $0
  i32.const 1320
  i32.const 1312
  i32.store $0
  i32.const 1312
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1348
  i32.const 1344
  i32.store $0
  i32.const 1352
  i32.const 1344
  i32.store $0
  i32.const 1344
  global.set $~lib/rt/itcms/fromSpace
  local.get $0
  i32.const 1456
  i32.store $0
  local.get $0
  i32.const 1488
  i32.store $0 offset=4
  local.get $0
  i32.const 1520
  i32.store $0 offset=8
  local.get $0
  i32.const 1552
  i32.store $0 offset=12
  i32.const 1456
  i32.const 1488
  i32.const 1520
  i32.const 1552
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADD
  global.get $~lib/memory/__stack_pointer
  i32.const 1584
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1616
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 1584
  i32.const 1616
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDI
  global.get $~lib/memory/__stack_pointer
  i32.const 1712
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1744
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 1712
  i32.const 1744
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDIU
  global.get $~lib/memory/__stack_pointer
  i32.const 1776
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1808
  i32.store $0 offset=12
  i32.const 1776
  i32.const 1488
  i32.const 1520
  i32.const 1808
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDU
  global.get $~lib/memory/__stack_pointer
  i32.const 1840
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store $0 offset=12
  i32.const 1840
  i32.const 1488
  i32.const 1520
  i32.const 1872
  call $shared/types/InstT#constructor
  global.set $shared/constants/AND
  global.get $~lib/memory/__stack_pointer
  i32.const 1904
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1936
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 1904
  i32.const 1936
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/ANDI
  global.get $~lib/memory/__stack_pointer
  i32.const 1968
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 1968
  i32.const 2000
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/BEQ
  global.get $~lib/memory/__stack_pointer
  i32.const 2032
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2032
  i32.const 2064
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/BNE
  global.get $~lib/memory/__stack_pointer
  i32.const 2096
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2096
  i32.const 2128
  i32.const 2160
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/J
  global.get $~lib/memory/__stack_pointer
  i32.const 2192
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2224
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2192
  i32.const 2224
  i32.const 2160
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/JAL
  global.get $~lib/memory/__stack_pointer
  i32.const 2256
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1616
  i32.store $0 offset=12
  i32.const 2256
  i32.const 1488
  i32.const 1520
  i32.const 1616
  call $shared/types/InstT#constructor
  global.set $shared/constants/JR
  global.get $~lib/memory/__stack_pointer
  i32.const 2288
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2320
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2288
  i32.const 2320
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/LHU
  global.get $~lib/memory/__stack_pointer
  i32.const 2352
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2384
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2352
  i32.const 2384
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/LUI
  global.get $~lib/memory/__stack_pointer
  i32.const 2416
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2448
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2416
  i32.const 2448
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/LW
  global.get $~lib/memory/__stack_pointer
  i32.const 2480
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2512
  i32.store $0 offset=12
  i32.const 2480
  i32.const 1488
  i32.const 1520
  i32.const 2512
  call $shared/types/InstT#constructor
  global.set $shared/constants/NOR
  global.get $~lib/memory/__stack_pointer
  i32.const 2544
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2320
  i32.store $0 offset=12
  i32.const 2544
  i32.const 1488
  i32.const 1520
  i32.const 2320
  call $shared/types/InstT#constructor
  global.set $shared/constants/OR
  global.get $~lib/memory/__stack_pointer
  i32.const 2576
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2608
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2576
  i32.const 2608
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/ORI
  global.get $~lib/memory/__stack_pointer
  i32.const 2640
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2672
  i32.store $0 offset=12
  i32.const 2640
  i32.const 1488
  i32.const 1520
  i32.const 2672
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLT
  global.get $~lib/memory/__stack_pointer
  i32.const 2704
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2736
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2704
  i32.const 2736
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTI
  global.get $~lib/memory/__stack_pointer
  i32.const 2768
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2800
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2768
  i32.const 2800
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTIU
  global.get $~lib/memory/__stack_pointer
  i32.const 2832
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2864
  i32.store $0 offset=12
  i32.const 2832
  i32.const 1488
  i32.const 1520
  i32.const 2864
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTU
  global.get $~lib/memory/__stack_pointer
  i32.const 2896
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=12
  i32.const 2896
  i32.const 1488
  i32.const 1520
  i32.const 1488
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLL
  global.get $~lib/memory/__stack_pointer
  i32.const 2928
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store $0 offset=12
  i32.const 2928
  i32.const 1488
  i32.const 1520
  i32.const 2128
  call $shared/types/InstT#constructor
  global.set $shared/constants/SRL
  global.get $~lib/memory/__stack_pointer
  i32.const 2960
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2992
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 2960
  i32.const 2992
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/SH
  global.get $~lib/memory/__stack_pointer
  i32.const 3024
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 2864
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1648
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1680
  i32.store $0 offset=12
  i32.const 3024
  i32.const 2864
  i32.const 1648
  i32.const 1680
  call $shared/types/InstT#constructor
  global.set $shared/constants/SW
  global.get $~lib/memory/__stack_pointer
  i32.const 3056
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 3088
  i32.store $0 offset=12
  i32.const 3056
  i32.const 1488
  i32.const 1520
  i32.const 3088
  call $shared/types/InstT#constructor
  global.set $shared/constants/SUB
  global.get $~lib/memory/__stack_pointer
  i32.const 3120
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1488
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1520
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2448
  i32.store $0 offset=12
  i32.const 3120
  i32.const 1488
  i32.const 1520
  i32.const 2448
  call $shared/types/InstT#constructor
  global.set $shared/constants/SUBU
  global.get $~lib/memory/__stack_pointer
  i32.const 27
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0 offset=4
  i32.store $0 offset=20
  local.get $0
  i32.const 0
  global.get $shared/constants/ADD
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 1
  global.get $shared/constants/ADDI
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 2
  global.get $shared/constants/ADDIU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 3
  global.get $shared/constants/ADDU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 4
  global.get $shared/constants/AND
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 5
  global.get $shared/constants/ANDI
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 6
  global.get $shared/constants/BEQ
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 7
  global.get $shared/constants/BNE
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 8
  global.get $shared/constants/J
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 9
  global.get $shared/constants/JAL
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 10
  global.get $shared/constants/JR
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 11
  global.get $shared/constants/LHU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 12
  global.get $shared/constants/LUI
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 13
  global.get $shared/constants/LW
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 14
  global.get $shared/constants/NOR
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 15
  global.get $shared/constants/OR
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 16
  global.get $shared/constants/ORI
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 17
  global.get $shared/constants/SLT
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 18
  global.get $shared/constants/SLTI
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 19
  global.get $shared/constants/SLTIU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 20
  global.get $shared/constants/SLTU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 21
  global.get $shared/constants/SLL
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 22
  global.get $shared/constants/SRL
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 23
  global.get $shared/constants/SH
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 24
  global.get $shared/constants/SW
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 25
  global.get $shared/constants/SUB
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 26
  global.get $shared/constants/SUBU
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  global.set $shared/constants/INST_LIST
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  i32.store16 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $1
  i32.store $0
  local.get $1
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.set $2
  local.get $3
  local.get $4
  i32.sub
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.le_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0
    local.get $3
    local.get $1
    i32.store $0 offset=4
    local.get $0
    local.get $2
    local.get $1
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $start:shared/functions~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store $0
     local.get $4
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $3
     call $~lib/string/String#charAt
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $1
     local.get $4
     i32.const 0
     call $~lib/string/String#indexOf
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   loop $while-continue|1
    local.get $2
    local.get $3
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store $0
     local.get $4
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $2
     i32.const 1
     i32.sub
     call $~lib/string/String#charAt
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $1
     local.get $4
     i32.const 0
     call $~lib/string/String#indexOf
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.tee $1
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.tee $3
   local.get $1
   local.get $3
   i32.lt_s
   select
   local.tee $1
   local.get $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.tee $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   local.tee $2
   local.get $1
   local.get $2
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.set $4
   block $__inlined_func$~lib/string/String#substring
    local.get $1
    local.get $2
    local.get $1
    local.get $2
    i32.gt_s
    select
    i32.const 1
    i32.shl
    local.tee $1
    local.get $4
    i32.sub
    local.tee $2
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1680
     local.set $0
     br $__inlined_func$~lib/string/String#substring
    end
    local.get $4
    i32.eqz
    local.get $1
    local.get $3
    i32.const 1
    i32.shl
    i32.eq
    i32.and
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/string/String#substring
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store $0 offset=4
    local.get $1
    local.get $0
    local.get $4
    i32.add
    local.get $2
    memory.copy $0 $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   local.get $3
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store $0
  local.get $5
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  local.get $5
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1680
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $6
    i32.store $0 offset=4
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     local.get $3
     local.get $6
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $2
  i32.store $0 offset=8
  local.get $1
  local.get $3
  local.get $2
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $5
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store $0 offset=12
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $7
    i32.store $0 offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=8
     local.get $6
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $7
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $4
     local.get $7
     i32.add
     local.set $4
    end
    local.get $1
    if
     local.get $6
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $1
     local.get $4
     i32.add
     local.set $4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   local.get $6
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   memory.copy $0 $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $3
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $2
  local.get $1
  i32.store $0
  local.get $3
  local.get $0
  local.get $1
  call $~lib/util/string/joinStringArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:shared/functions~anonymous|1 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 24
   memory.fill $0
   local.get $2
   i32.const 0
   i32.const 8
   i32.const 3280
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 3312
   call $~lib/rt/__newArray
   local.tee $2
   i32.store $0 offset=4
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $5
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $1
     i32.store $0 offset=8
     local.get $3
     local.get $0
     i32.store $0 offset=16
     local.get $0
     local.get $5
     call $~lib/string/String#charAt
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=12
     block $__inlined_func$~lib/array/Array<~lib/string/String>#includes (result i32)
      i32.const 0
      local.set $3
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      block $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i32.const 6852
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $7
       i64.const 0
       i64.store $0
       local.get $7
       local.get $1
       i32.store $0
       local.get $7
       local.get $6
       i32.store $0 offset=4
       local.get $7
       i32.const 8
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 6852
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $7
       i64.const 0
       i64.store $0
       local.get $7
       local.get $1
       i32.store $0
       block $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf
        local.get $1
        i32.load $0 offset=12
        local.tee $8
        i32.eqz
        local.get $8
        i32.const 0
        i32.le_s
        i32.or
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const -1
         local.set $3
         br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf
        end
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.load $0 offset=4
        local.set $9
        loop $while-continue|0
         local.get $3
         local.get $8
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $10
          local.get $9
          local.get $3
          i32.const 2
          i32.shl
          i32.add
          i32.load $0
          local.tee $7
          i32.store $0
          local.get $10
          local.get $6
          i32.store $0 offset=4
          local.get $7
          local.get $6
          call $~lib/string/String.__eq
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 8
           i32.add
           global.set $~lib/memory/__stack_pointer
           br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf
          end
          local.get $3
          i32.const 1
          i32.add
          local.set $3
          br $while-continue|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const -1
        local.set $3
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $3
       i32.const 0
       i32.ge_s
       br $__inlined_func$~lib/array/Array<~lib/string/String>#includes
      end
      br $folding-inner1
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      local.get $2
      call $~lib/array/Array<~lib/string/String>#get:length
      i32.const 0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $4
       i32.store $0 offset=8
       local.get $3
       local.get $2
       i32.store $0 offset=16
       local.get $3
       i32.const 1680
       i32.store $0 offset=20
       local.get $2
       i32.const 1680
       call $~lib/array/Array<~lib/string/String>#join
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=12
       local.get $4
       local.get $2
       call $~lib/array/Array<~lib/string/String>#push
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 8
       i32.const 3344
       call $~lib/rt/__newArray
       local.tee $2
       i32.store $0 offset=4
      end
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store $0 offset=8
      local.get $3
      local.get $0
      i32.store $0 offset=16
      local.get $0
      local.get $5
      call $~lib/string/String#charAt
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0 offset=12
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/string/String>#push
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 0
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $4
    i32.store $0 offset=8
    local.get $0
    local.get $2
    i32.store $0 offset=16
    local.get $0
    i32.const 1680
    i32.store $0 offset=20
    local.get $2
    i32.const 1680
    call $~lib/array/Array<~lib/string/String>#join
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=12
    local.get $4
    local.get $0
    call $~lib/array/Array<~lib/string/String>#push
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store $0
  local.get $4
  local.get $0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const -2
  i32.and
  local.set $2
  local.get $4
  i32.const 3600
  i32.store $0
  i32.const 3596
  i32.load $0
  i32.const -2
  i32.and
  local.tee $4
  i32.eqz
  local.get $2
  local.get $1
  i32.const 1
  i32.shl
  local.tee $5
  i32.gt_u
  i32.or
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store $0 offset=4
  local.get $5
  local.get $2
  i32.sub
  local.tee $5
  local.get $4
  i32.gt_u
  if
   local.get $5
   local.get $5
   i32.const 2
   i32.sub
   local.get $4
   i32.div_u
   local.get $4
   i32.mul
   local.tee $6
   i32.sub
   local.set $7
   loop $while-continue|0
    local.get $3
    local.get $6
    i32.lt_u
    if
     local.get $1
     local.get $3
     i32.add
     i32.const 3600
     local.get $4
     memory.copy $0 $0
     local.get $3
     local.get $4
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   local.get $1
   local.get $6
   i32.add
   i32.const 3600
   local.get $7
   memory.copy $0 $0
  else
   local.get $1
   i32.const 3600
   local.get $5
   memory.copy $0 $0
  end
  local.get $1
  local.get $5
  i32.add
  local.get $0
  local.get $2
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $shared/types/symbolT#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 8
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  i32.const 1680
  i32.store $0 offset=8
  local.get $0
  i32.const 1680
  i32.store $0
  local.get $0
  i32.const 1680
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembler/assembler/MipsAssembler#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $0
   i32.const 12
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i64.const 0
   i64.store $0 offset=8
   local.get $3
   i32.const 16
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=4
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=12
   local.get $4
   i32.const 4096
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=12
   local.get $3
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $3
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $3
   i32.store $0 offset=4
   local.get $3
   local.get $4
   i32.store $0 offset=4
   local.get $5
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 4096
   i32.store $0 offset=8
   local.get $5
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 1024
   i32.store $0 offset=12
   local.get $5
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 5248
   call $~lib/rt/__newArray
   local.tee $2
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 5280
   call $~lib/rt/__newArray
   local.tee $4
   i32.store $0 offset=16
   loop $for-loop|0
    local.get $1
    i32.const 1024
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $3
     i32.store $0 offset=4
     local.get $5
     i32.const 1680
     i32.store $0 offset=24
     call $shared/types/symbolT#constructor
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=20
     local.get $3
     local.get $1
     local.get $5
     call $~lib/array/Array<shared/types/InstT>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $3
   i32.store $0 offset=24
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $5
   local.get $1
   i32.store $0 offset=4
   local.get $5
   local.get $3
   i32.store $0 offset=8
   local.get $1
   local.get $3
   i32.store $0
   local.get $3
   if
    local.get $1
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $3
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=20
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=24
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $3
   local.get $2
   i32.store $0 offset=8
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $1
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=20
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $4
   i32.store $0 offset=24
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $4
   i32.store $0 offset=8
   local.get $1
   local.get $4
   i32.store $0
   local.get $4
   if
    local.get $1
    local.get $4
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=20
   local.get $0
   local.get $1
   i32.store $0 offset=8
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembler/assembler/MipsAssembler#get:DATA_SEG (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembler/assembler/MipsAssembler#get:TEXT_SEG (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=8
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1152
   i32.const 3152
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.eqz
  if
   i32.const 5312
   i32.const 3152
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1680
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0 offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#slice@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2147483647
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#slice
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $shared/types/symbolT#set:name (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $shared/types/symbolT#set:address (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembler/assembler/MipsAssembler#symbolTableAddEntry (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0 offset=12
  local.get $0
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load $0
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  local.get $0
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  i32.load $0 offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $3
  local.get $1
  call $~lib/array/Array<shared/types/InstT>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  i32.add
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#slice@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const -1
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   block $2of2
    block $1of2
     block $0of2
      block $outOfRange
       global.get $~argumentsLength
       br_table $0of2 $1of2 $2of2 $outOfRange
      end
      unreachable
     end
     i32.const 0
     local.set $1
    end
    i32.const 2147483647
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=12
   local.set $3
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $1
    local.get $3
    i32.add
    local.tee $1
    i32.const 0
    local.get $1
    i32.const 0
    i32.gt_s
    select
   else
    local.get $1
    local.get $3
    local.get $1
    local.get $3
    i32.lt_s
    select
   end
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $2
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
   else
    local.get $2
    local.get $3
    local.get $2
    local.get $3
    i32.lt_s
    select
   end
   local.set $3
   i32.const 0
   local.set $2
   local.get $1
   local.get $3
   local.get $4
   i32.sub
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.tee $1
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $3
   i32.store $0
   local.get $3
   i32.load $0 offset=4
   local.set $6
   local.get $5
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.set $0
   local.get $1
   i32.const 2
   i32.shl
   local.set $1
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.gt_u
    if
     local.get $2
     local.get $6
     i32.add
     local.get $0
     local.get $2
     i32.add
     i32.load $0
     local.tee $4
     i32.store $0
     local.get $4
     if
      local.get $3
      local.get $4
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembler/assembler/MipsAssembler#findTargetSymbolAddr (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $3
    local.get $4
    i32.load $0 offset=4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=20
     local.get $0
     call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load $0
     local.tee $4
     i32.store $0 offset=12
     local.get $4
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     local.get $4
     call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $4
     local.get $1
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=12
      local.get $0
      call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.load $0
      local.tee $2
      i32.store $0 offset=4
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6852
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i32.const 0
      i32.store $0
      local.get $4
      local.get $2
      i32.store $0
      local.get $2
      i32.load $0 offset=4
      local.set $2
      local.get $4
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 2
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 1680
  i32.store $0
  local.get $0
  local.get $2
  i32.const 1680
  call $~lib/util/string/joinStringArray
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:assembler/assembler~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 96
   memory.fill $0
   local.get $2
   call $assembler/assembler/MipsAssembler#constructor
   local.tee $5
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   call $assembler/assembler/MipsAssembler#get:DATA_SEG
   local.tee $6
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   call $assembler/assembler/MipsAssembler#get:TEXT_SEG
   local.tee $4
   i32.store $0 offset=12
   i32.const 2
   local.set $7
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $8
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $0
     local.get $8
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $2
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 5440
     i32.store $0 offset=28
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     i32.const 5440
     i32.const 3248
     i32.load $0
     call_indirect $0 (type $i32_i32_=>_i32)
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     i32.const 3
     i32.const 8
     i32.const 5568
     call $~lib/rt/__newArray
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=20
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $9
     local.get $10
     i32.const 3376
     i32.load $0
     call_indirect $0 (type $i32_i32_=>_i32)
     local.tee $3
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 0
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $9
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 5600
     i32.store $0 offset=20
     block $for-continue|0
      local.get $9
      i32.const 5600
      call $~lib/string/String.__eq
      if
       i32.const 268435456
       local.set $1
       i32.const 0
       local.set $7
       br $for-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $10
      local.get $9
      i32.store $0 offset=4
      local.get $10
      i32.const 5632
      i32.store $0 offset=20
      local.get $9
      i32.const 5632
      call $~lib/string/String.__eq
      if
       i32.const 4194304
       local.set $1
       i32.const 1
       local.set $7
       br $for-continue|0
      end
      local.get $7
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $10
       local.get $9
       i32.store $0 offset=28
       local.get $10
       i32.const 5536
       i32.store $0 offset=40
       i32.const 2
       global.set $~argumentsLength
       local.get $9
       i32.const 5536
       i32.const 3248
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store $0 offset=24
       i32.const 1
       global.set $~argumentsLength
       local.get $10
       i32.const -1
       call $~lib/string/String#slice@varargs
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store $0 offset=4
       global.get $~lib/memory/__stack_pointer
       i32.const 5664
       i32.store $0 offset=20
       local.get $10
       i32.const 5664
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $10
        i32.const 1680
        i32.store $0 offset=4
        local.get $10
        call $shared/types/symbolT#constructor
        local.tee $10
        i32.store $0 offset=44
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store $0 offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store $0 offset=24
        local.get $9
        i32.const 0
        i32.const -1
        call $~lib/string/String#slice
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store $0 offset=20
        local.get $10
        local.get $11
        call $shared/types/symbolT#set:name
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store $0 offset=4
        local.get $10
        local.get $1
        call $shared/types/symbolT#set:address
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store $0 offset=20
        local.get $5
        local.get $10
        call $assembler/assembler/MipsAssembler#symbolTableAddEntry
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $10
       local.get $2
       i32.store $0 offset=4
       local.get $10
       i32.const 5696
       i32.store $0 offset=20
       local.get $2
       i32.const 5696
       call $~lib/string/String#includes
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $10
        local.get $6
        i32.store $0 offset=24
        local.get $10
        local.get $6
        i32.load $0
        local.tee $11
        i32.store $0 offset=4
        local.get $10
        local.get $3
        i32.store $0 offset=28
        i32.const 1
        global.set $~argumentsLength
        local.get $3
        call $~lib/array/Array<~lib/string/String>#slice@varargs
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store $0 offset=24
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 6852
        i32.lt_s
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        local.tee $12
        i64.const 0
        i64.store $0
        local.get $12
        local.get $10
        i32.store $0
        local.get $12
        i32.const 5728
        i32.store $0 offset=4
        local.get $10
        i32.const 5728
        call $~lib/array/Array<~lib/string/String>#join
        local.set $10
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store $0 offset=20
        local.get $11
        local.get $10
        call $~lib/array/Array<~lib/string/String>#push
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=20
        local.get $6
        local.get $6
        i32.load $0 offset=4
        i32.const 4
        i32.add
        i32.store $0 offset=4
       end
      end
      local.get $7
      i32.const 1
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $10
       local.get $9
       i32.store $0 offset=28
       local.get $10
       i32.const 5536
       i32.store $0 offset=40
       i32.const 2
       global.set $~argumentsLength
       local.get $9
       i32.const 5536
       i32.const 3248
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store $0 offset=24
       i32.const 1
       global.set $~argumentsLength
       local.get $10
       i32.const -1
       call $~lib/string/String#slice@varargs
       local.set $10
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store $0 offset=4
       global.get $~lib/memory/__stack_pointer
       i32.const 5664
       i32.store $0 offset=20
       local.get $10
       i32.const 5664
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i32.const 1680
        i32.store $0 offset=4
        local.get $2
        call $shared/types/symbolT#constructor
        local.tee $2
        i32.store $0 offset=48
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store $0 offset=24
        local.get $9
        i32.const 0
        i32.const -1
        call $~lib/string/String#slice
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store $0 offset=20
        local.get $2
        local.get $3
        call $shared/types/symbolT#set:name
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=4
        local.get $2
        local.get $1
        call $shared/types/symbolT#set:address
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=20
        local.get $5
        local.get $2
        call $assembler/assembler/MipsAssembler#symbolTableAddEntry
        br $for-continue|0
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $10
        local.get $9
        i32.store $0 offset=4
        local.get $10
        i32.const 5760
        i32.store $0 offset=20
        local.get $9
        i32.const 5760
        call $~lib/string/String.__eq
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $3
         i32.store $0 offset=20
         i32.const 1
         global.set $~argumentsLength
         local.get $3
         call $~lib/array/Array<~lib/string/String>#slice@varargs
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store $0 offset=4
         local.get $2
         local.get $9
         i32.const 0
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $2
         i32.store $0 offset=52
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store $0 offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store $0 offset=20
         local.get $5
         local.get $2
         call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
         local.set $2
         i32.const 1
         global.set $~argumentsLength
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.const 0
         i32.const 5216
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $2
         i32.store $0 offset=56
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.load $0
         local.tee $9
         i32.store $0 offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $10
         i32.store $0 offset=60
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $11
         i32.store $0 offset=64
         global.get $~lib/memory/__stack_pointer
         i32.const 5824
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store $0 offset=28
         i32.const 5824
         i32.const 1
         local.get $10
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         global.get $~lib/memory/__stack_pointer
         i32.const 5824
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $11
         i32.store $0 offset=28
         i32.const 5824
         i32.const 3
         local.get $11
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         global.get $~lib/memory/__stack_pointer
         i32.const 5824
         i32.store $0 offset=24
         global.get $~lib/memory/__stack_pointer
         i32.const 1680
         i32.store $0 offset=28
         i32.const 5824
         call $~lib/staticarray/StaticArray<~lib/string/String>#join
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $10
         i32.store $0 offset=20
         local.get $9
         local.get $10
         call $~lib/array/Array<~lib/string/String>#push
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store $0 offset=24
         i32.const 1
         global.set $~argumentsLength
         local.get $2
         i32.const 4
         call $~lib/string/String#slice@varargs
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store $0 offset=4
         global.get $~lib/memory/__stack_pointer
         i32.const 5872
         i32.store $0 offset=20
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 6852
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         local.tee $9
         i64.const 0
         i64.store $0
         local.get $9
         local.get $2
         i32.store $0
         local.get $9
         i32.const 5872
         i32.store $0 offset=4
         local.get $2
         i32.const 5872
         call $~lib/string/String.__eq
         i32.eqz
         local.set $2
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $2
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          local.get $4
          i32.store $0 offset=4
          local.get $2
          local.get $4
          i32.store $0 offset=20
          local.get $4
          local.get $4
          i32.load $0 offset=4
          i32.const 4
          i32.add
          i32.store $0 offset=4
          local.get $2
          local.get $4
          i32.store $0 offset=24
          local.get $2
          local.get $4
          i32.load $0
          local.tee $9
          i32.store $0 offset=4
          local.get $2
          local.get $3
          i32.store $0 offset=24
          local.get $2
          local.get $3
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.tee $2
          i32.store $0 offset=68
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.tee $10
          i32.store $0 offset=72
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.const 2
          call $~lib/array/Array<~lib/string/String>#__get
          local.tee $3
          i32.store $0 offset=76
          global.get $~lib/memory/__stack_pointer
          i32.const 5936
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=28
          i32.const 5936
          i32.const 1
          local.get $2
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 5936
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store $0 offset=28
          i32.const 5936
          i32.const 3
          local.get $10
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 5936
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=28
          i32.const 5936
          i32.const 5
          local.get $3
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 5936
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          i32.const 1680
          i32.store $0 offset=28
          i32.const 5936
          call $~lib/staticarray/StaticArray<~lib/string/String>#join
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=20
          local.get $9
          local.get $2
          call $~lib/array/Array<~lib/string/String>#push
          local.get $1
          i32.const 4
          i32.add
          local.set $1
         end
        else
         global.get $~lib/memory/__stack_pointer
         local.tee $10
         local.get $9
         i32.store $0 offset=4
         local.get $10
         i32.const 5984
         i32.store $0 offset=20
         local.get $9
         i32.const 5984
         call $~lib/string/String.__eq
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          local.get $4
          i32.store $0 offset=24
          local.get $2
          local.get $4
          i32.load $0
          local.tee $9
          i32.store $0 offset=4
          local.get $2
          local.get $3
          i32.store $0 offset=24
          local.get $2
          local.get $3
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.tee $2
          i32.store $0 offset=80
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.const 2
          call $~lib/array/Array<~lib/string/String>#__get
          local.tee $3
          i32.store $0 offset=84
          global.get $~lib/memory/__stack_pointer
          i32.const 6080
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=28
          i32.const 6080
          i32.const 1
          local.get $2
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 6080
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=28
          i32.const 6080
          i32.const 3
          local.get $3
          call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          global.get $~lib/memory/__stack_pointer
          i32.const 6080
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          i32.const 1680
          i32.store $0 offset=28
          i32.const 6080
          call $~lib/staticarray/StaticArray<~lib/string/String>#join
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=20
          local.get $9
          local.get $2
          call $~lib/array/Array<~lib/string/String>#push
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          local.get $4
          i32.store $0 offset=24
          local.get $3
          local.get $4
          i32.load $0
          local.tee $11
          i32.store $0 offset=4
          local.get $3
          local.get $2
          i32.store $0 offset=88
          local.get $3
          i32.const 6128
          i32.store $0 offset=92
          i32.const 2
          global.set $~argumentsLength
          local.get $2
          i32.const 6128
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=24
          global.get $~lib/memory/__stack_pointer
          i32.const 5504
          i32.store $0 offset=28
          global.get $~lib/memory/__stack_pointer
          i32.const 5472
          i32.store $0 offset=40
          block $__inlined_func$~lib/string/String#replace (result i32)
           global.get $~lib/memory/__stack_pointer
           i32.const 12
           i32.sub
           global.set $~lib/memory/__stack_pointer
           global.get $~lib/memory/__stack_pointer
           i32.const 6852
           i32.lt_s
           br_if $folding-inner1
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           i64.const 0
           i64.store $0
           local.get $2
           i32.const 0
           i32.store $0 offset=8
           local.get $2
           local.get $3
           i32.store $0
           local.get $3
           i32.const 20
           i32.sub
           i32.load $0 offset=16
           i32.const 1
           i32.shr_u
           local.set $9
           local.get $2
           i32.const 5504
           i32.store $0
           block $folding-inner00
            i32.const 5500
            i32.load $0
            i32.const 1
            i32.shr_u
            local.tee $12
            local.get $9
            i32.ge_u
            if
             local.get $9
             local.get $12
             i32.ge_u
             if (result i32)
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              i32.const 5504
              i32.store $0
              local.get $2
              local.get $3
              i32.store $0 offset=4
              i32.const 5472
              local.get $3
              i32.const 5504
              local.get $3
              call $~lib/string/String.__eq
              select
             else
              local.get $3
             end
             local.set $2
             br $folding-inner00
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            local.get $3
            i32.store $0
            local.get $2
            i32.const 5504
            i32.store $0 offset=4
            local.get $3
            i32.const 5504
            i32.const 0
            call $~lib/string/String#indexOf
            local.tee $13
            i32.const -1
            i32.xor
            if
             global.get $~lib/memory/__stack_pointer
             i32.const 5472
             i32.store $0
             local.get $9
             local.get $12
             i32.sub
             local.tee $9
             i32.const 5468
             i32.load $0
             i32.const 1
             i32.shr_u
             local.tee $10
             i32.add
             local.tee $2
             if
              global.get $~lib/memory/__stack_pointer
              local.get $2
              i32.const 1
              i32.shl
              i32.const 2
              call $~lib/rt/itcms/__new
              local.tee $2
              i32.store $0 offset=8
              local.get $2
              local.get $3
              local.get $13
              i32.const 1
              i32.shl
              local.tee $14
              memory.copy $0 $0
              local.get $2
              local.get $14
              i32.add
              i32.const 5472
              local.get $10
              i32.const 1
              i32.shl
              memory.copy $0 $0
              local.get $2
              local.get $10
              local.get $13
              i32.add
              i32.const 1
              i32.shl
              i32.add
              local.get $3
              local.get $12
              local.get $13
              i32.add
              i32.const 1
              i32.shl
              i32.add
              local.get $9
              local.get $13
              i32.sub
              i32.const 1
              i32.shl
              memory.copy $0 $0
              br $folding-inner00
             end
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 12
            i32.add
            global.set $~lib/memory/__stack_pointer
            local.get $3
            br $__inlined_func$~lib/string/String#replace
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 12
           i32.add
           global.set $~lib/memory/__stack_pointer
           local.get $2
          end
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=20
          local.get $11
          local.get $2
          call $~lib/array/Array<~lib/string/String>#push
         end
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $4
        i32.store $0 offset=4
        local.get $2
        local.get $4
        i32.store $0 offset=20
        local.get $4
        local.get $4
        i32.load $0 offset=4
        i32.const 4
        i32.add
        i32.store $0 offset=4
       end
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     end
     local.get $8
     i32.const 1
     i32.add
     local.set $8
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 96
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#split (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill $0
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1
      i32.const 8
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $1
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load $0 offset=4
      i32.store $0 offset=4
      local.get $1
      i32.const 0
      local.get $0
      call $~lib/array/Array<shared/types/InstT>#__set
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $0
     i32.store $0 offset=8
     local.get $0
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     local.set $5
     local.get $6
     local.get $1
     i32.store $0 offset=8
     i32.const 2147483647
     local.get $2
     local.get $2
     i32.const 0
     i32.lt_s
     select
     local.set $7
     local.get $1
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     local.tee $8
     if
      local.get $5
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       i32.const 8
       i32.const 0
       call $~lib/rt/__newArray
       local.tee $1
       i32.store $0 offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=8
       local.get $1
       i32.load $0 offset=4
       i32.const 1680
       i32.store $0
       br $folding-inner1
      end
     else
      local.get $5
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $5
      local.get $7
      local.get $5
      local.get $7
      i32.lt_s
      select
      local.tee $3
      i32.const 8
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $1
      i32.store $0 offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=8
      local.get $1
      i32.load $0 offset=4
      local.set $4
      i32.const 0
      local.set $2
      loop $for-loop|0
       local.get $2
       local.get $3
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $5
        i32.store $0 offset=16
        local.get $5
        local.get $0
        local.get $2
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u $0
        i32.store16 $0
        local.get $4
        local.get $2
        i32.const 2
        i32.shl
        i32.add
        local.get $5
        i32.store $0
        local.get $5
        if
         local.get $1
         local.get $5
         i32.const 1
         call $byn-split-outlined-A$~lib/rt/itcms/__link
        end
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|0
       end
      end
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 8
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.store $0 offset=24
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      local.get $0
      i32.store $0 offset=8
      local.get $6
      local.get $1
      i32.store $0 offset=28
      local.get $0
      local.get $1
      local.get $3
      call $~lib/string/String#indexOf
      local.tee $9
      i32.const -1
      i32.xor
      if
       local.get $9
       local.get $3
       i32.sub
       local.tee $6
       i32.const 0
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.const 1
        i32.shl
        local.tee $10
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $6
        i32.store $0 offset=32
        local.get $6
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        local.get $10
        memory.copy $0 $0
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=28
        local.get $2
        local.get $6
        call $~lib/array/Array<~lib/string/String>#push
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $2
        i32.store $0 offset=8
        local.get $3
        i32.const 1680
        i32.store $0 offset=28
        local.get $2
        i32.const 1680
        call $~lib/array/Array<~lib/string/String>#push
       end
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $7
       i32.eq
       br_if $folding-inner2
       local.get $8
       local.get $9
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $2
      i32.store $0 offset=8
      local.get $1
      local.get $0
      i32.store $0 offset=28
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#push
      br $folding-inner2
     end
     local.get $5
     local.get $3
     i32.sub
     local.tee $1
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.shl
      local.tee $1
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $4
      i32.store $0 offset=36
      local.get $4
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      memory.copy $0 $0
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=28
      local.get $2
      local.get $4
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $2
      i32.store $0 offset=8
      local.get $0
      i32.const 1680
      i32.store $0 offset=28
      local.get $2
      i32.const 1680
      call $~lib/array/Array<~lib/string/String>#push
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    i32.const 0
    i32.const 8
    i32.const 0
    call $~lib/rt/__newArray
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#split@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 2147483647
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $3
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#split
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.tee $2
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $3
   i32.load16_u $0
   local.set $0
   loop $while-continue|0
    block $__inlined_func$~lib/util/string/isSpace (result i32)
     local.get $0
     i32.const 128
     i32.or
     i32.const 160
     i32.eq
     local.get $0
     i32.const 9
     i32.sub
     i32.const 4
     i32.le_u
     i32.or
     local.get $0
     i32.const 5760
     i32.lt_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     block $break|0
      block $case0|0
       local.get $0
       i32.const 5760
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8232
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8233
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8239
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8287
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 12288
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 65279
       i32.eq
       br_if $case0|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace
     end
     i32.const 0
    end
    if
     local.get $3
     i32.const 2
     i32.add
     local.tee $3
     i32.load16_u $0
     local.set $0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   f64.const 1
   local.set $4
   local.get $0
   i32.const 43
   i32.eq
   local.get $0
   i32.const 45
   i32.eq
   i32.or
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    f64.const 1
    local.get $0
    i32.const 45
    i32.eq
    select
    local.set $4
    local.get $3
    i32.const 2
    i32.add
    local.tee $3
    i32.load16_u $0
    local.set $0
   end
   local.get $1
   if
    local.get $1
    i32.const 2
    i32.lt_s
    local.get $1
    i32.const 36
    i32.gt_s
    i32.or
    br_if $folding-inner0
    local.get $1
    i32.const 16
    i32.eq
    if
     local.get $0
     i32.const 48
     i32.eq
     local.get $2
     i32.const 2
     i32.gt_s
     i32.and
     if (result i32)
      local.get $3
      i32.load16_u $0 offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $3
      i32.const 4
      i32.add
      local.set $3
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
     end
    end
   else
    local.get $0
    i32.const 48
    i32.eq
    local.get $2
    i32.const 2
    i32.gt_s
    i32.and
    if
     block $break|1
      block $case2|1
       block $case1|1
        local.get $3
        i32.load16_u $0 offset=2
        i32.const 32
        i32.or
        local.tee $0
        i32.const 98
        i32.ne
        if
         local.get $0
         i32.const 111
         i32.eq
         br_if $case1|1
         local.get $0
         i32.const 120
         i32.eq
         br_if $case2|1
         br $break|1
        end
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        local.get $2
        i32.const 2
        i32.sub
        local.set $2
        i32.const 2
        local.set $1
        br $break|1
       end
       local.get $3
       i32.const 4
       i32.add
       local.set $3
       local.get $2
       i32.const 2
       i32.sub
       local.set $2
       i32.const 8
       local.set $1
       br $break|1
      end
      local.get $3
      i32.const 4
      i32.add
      local.set $3
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 16
      local.set $1
     end
    end
    local.get $1
    i32.const 10
    local.get $1
    select
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.sub
   local.set $6
   loop $while-continue|2
    local.get $2
    local.tee $0
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    if
     block $while-break|2
      local.get $3
      i32.load16_u $0
      local.tee $0
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 48
       i32.sub
      else
       local.get $0
       i32.const 65
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $0
        i32.const 55
        i32.sub
       else
        local.get $0
        i32.const 87
        i32.sub
        local.get $0
        local.get $0
        i32.const 97
        i32.sub
        i32.const 25
        i32.le_u
        select
       end
      end
      local.tee $0
      local.get $1
      i32.ge_u
      if
       local.get $2
       local.get $6
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $5
      local.get $1
      f64.convert_i32_s
      f64.mul
      local.get $0
      f64.convert_i32_u
      f64.add
      local.set $5
      local.get $3
      i32.const 2
      i32.add
      local.set $3
      br $while-continue|2
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   f64.mul
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  f64.const nan:0x8000000000000
 )
 (func $~lib/string/parseInt (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<f64>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   local.tee $2
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.set $4
   local.get $3
   local.get $1
   i32.store $0
   block $__inlined_func$~lib/string/String#concat
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $4
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1680
     local.set $0
     br $__inlined_func$~lib/string/String#concat
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0 offset=4
    local.get $0
    local.get $2
    local.get $4
    memory.copy $0 $0
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy $0 $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:assembler/assembler~anonymous|1 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 108
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6852
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 108
   memory.fill $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   call $assembler/assembler/MipsAssembler#get:TEXT_SEG
   local.tee $8
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 6192
   call $~lib/rt/__newArray
   local.tee $9
   i32.store $0 offset=8
   i32.const 4194304
   local.set $7
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $6
    local.get $8
    i32.load $0 offset=4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $8
     i32.store $0 offset=12
     local.get $2
     local.get $8
     i32.load $0
     local.tee $1
     i32.store $0
     local.get $2
     local.get $1
     local.get $6
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $1
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 5472
     i32.store $0 offset=12
     i32.const 1
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.const 5472
     call $~lib/string/String#split@varargs
     local.tee $5
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.const 0
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $4
     i32.store $0 offset=24
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     i32.const 1680
     i32.const 1680
     i32.const 1680
     i32.const 1680
     call $shared/types/InstT#constructor
     local.tee $2
     i32.store $0 offset=36
     i32.const 0
     local.set $10
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      global.get $shared/constants/INST_LIST
      local.tee $1
      i32.store $0
      local.get $1
      call $~lib/array/Array<~lib/string/String>#get:length
      local.get $10
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       global.get $shared/constants/INST_LIST
       local.tee $1
       i32.store $0
       local.get $3
       local.get $1
       local.get $10
       call $~lib/array/Array<~lib/string/String>#__get
       local.tee $1
       i32.store $0 offset=40
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=28
       local.get $1
       call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store $0 offset=12
       local.get $3
       local.get $4
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $1
        local.tee $2
        i32.store $0 offset=36
       end
       local.get $10
       i32.const 1
       i32.add
       local.set $10
       br $for-loop|1
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $2
     i32.store $0
     local.get $1
     local.get $2
     call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
     local.tee $4
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $assembler/assembler/MipsAssembler#get:TEXT_SEG
     local.tee $3
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 1520
     i32.store $0 offset=12
     local.get $3
     i32.const 1520
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $4
      i32.store $0
      local.get $1
      global.get $shared/constants/SLL
      local.tee $1
      i32.store $0 offset=28
      local.get $1
      call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=12
      local.get $4
      local.get $1
      call $~lib/string/String.__eq
      if (result i32)
       i32.const 1
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $4
       i32.store $0
       local.get $1
       global.get $shared/constants/SRL
       local.tee $1
       i32.store $0 offset=28
       local.get $1
       call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       local.get $4
       local.get $1
       call $~lib/string/String.__eq
      end
      if
       i32.const 2
       global.set $~argumentsLength
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $11
       i32.store $0 offset=52
       global.get $~lib/memory/__stack_pointer
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=32
       local.get $5
       i32.const 2
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       global.get $~lib/memory/__stack_pointer
       i32.const 6224
       i32.store $0 offset=28
       i32.const 2
       global.set $~argumentsLength
       local.get $1
       i32.const 6224
       i32.const 3248
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0
       local.get $1
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       local.set $1
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $1
       i32.const 5
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $4
       i32.store $0 offset=56
       global.get $~lib/memory/__stack_pointer
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=32
       local.get $5
       i32.const 1
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       global.get $~lib/memory/__stack_pointer
       i32.const 6224
       i32.store $0 offset=28
       i32.const 2
       global.set $~argumentsLength
       local.get $1
       i32.const 6224
       i32.const 3248
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0
       local.get $1
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       local.set $1
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $1
       i32.const 5
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $10
       i32.store $0 offset=60
       global.get $~lib/memory/__stack_pointer
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=12
       local.get $5
       i32.const 3
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0
       local.get $1
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       local.set $1
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $1
       i32.const 5
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $3
       i32.store $0 offset=64
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $4
       i32.store $0
       local.get $1
       global.get $shared/constants/JR
       local.tee $1
       i32.store $0 offset=28
       local.get $1
       call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       local.get $4
       local.get $1
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $5
        i32.store $0 offset=32
        local.get $5
        i32.const 1
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 6224
        i32.store $0 offset=28
        i32.const 2
        global.set $~argumentsLength
        local.get $1
        i32.const 6224
        i32.const 3248
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $3
        local.get $1
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $11
        i32.store $0 offset=52
        i32.const 2
        global.set $~argumentsLength
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $4
        i32.store $0 offset=56
        i32.const 2
        global.set $~argumentsLength
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $10
        i32.store $0 offset=60
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $5
        i32.store $0 offset=32
        local.get $5
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 6224
        i32.store $0 offset=28
        i32.const 2
        global.set $~argumentsLength
        local.get $1
        i32.const 6224
        i32.const 3248
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $3
        local.get $1
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $11
        i32.store $0 offset=52
        global.get $~lib/memory/__stack_pointer
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=32
        local.get $5
        i32.const 3
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 6224
        i32.store $0 offset=28
        i32.const 2
        global.set $~argumentsLength
        local.get $1
        i32.const 6224
        i32.const 3248
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $3
        local.get $1
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $4
        i32.store $0 offset=56
        global.get $~lib/memory/__stack_pointer
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=32
        local.get $5
        i32.const 1
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 6224
        i32.store $0 offset=28
        i32.const 2
        global.set $~argumentsLength
        local.get $1
        i32.const 6224
        i32.const 3248
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $3
        local.get $1
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $10
        i32.store $0 offset=60
       end
       i32.const 2
       global.set $~argumentsLength
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $3
       i32.store $0 offset=64
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $9
      i32.store $0
      local.get $1
      local.get $2
      i32.store $0 offset=100
      local.get $2
      call $assembler/assembler/MipsAssembler#get:DATA_SEG
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=92
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store $0 offset=96
      local.get $1
      local.get $11
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=84
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=88
      local.get $1
      local.get $4
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=76
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=80
      local.get $1
      local.get $10
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=68
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0 offset=72
      local.get $1
      local.get $3
      call $~lib/string/String.__concat
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=68
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6852
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      i32.const 0
      i32.store $0
      local.get $3
      local.get $2
      i32.store $0
      local.get $2
      i32.load $0 offset=12
      local.set $1
      local.get $3
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=32
      local.get $4
      local.get $1
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=12
      local.get $9
      local.get $1
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $3
      i32.store $0
      local.get $1
      i32.const 1648
      i32.store $0 offset=12
      local.get $3
      i32.const 1648
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $4
       i32.store $0
       local.get $1
       global.get $shared/constants/LUI
       local.tee $1
       i32.store $0 offset=28
       local.get $1
       call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       local.get $4
       local.get $1
       call $~lib/string/String.__eq
       if
        i32.const 2
        global.set $~argumentsLength
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $11
        i32.store $0 offset=52
        global.get $~lib/memory/__stack_pointer
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=32
        local.get $5
        i32.const 1
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 6224
        i32.store $0 offset=28
        i32.const 2
        global.set $~argumentsLength
        local.get $1
        i32.const 6224
        i32.const 3248
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        local.get $1
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $3
        local.get $1
        i32.const 5
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $4
        i32.store $0 offset=56
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0 offset=28
        local.get $5
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        i32.const 6256
        i32.store $0 offset=12
        local.get $1
        i32.const 6256
        call $~lib/string/String#includes
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.tee $10
         local.get $5
         i32.store $0 offset=28
         local.get $5
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0 offset=12
         i32.const 1
         global.set $~argumentsLength
         local.get $1
         i32.const 2
         call $~lib/string/String#slice@varargs
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0
         local.get $1
         i32.const 16
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
        else
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store $0 offset=12
         local.get $5
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0
         local.get $1
         i32.const 0
         call $~lib/string/parseInt
         drop
         global.get $~lib/memory/__stack_pointer
         local.set $10
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store $0 offset=12
         local.get $5
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0
         local.get $1
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
        end
        local.set $1
        i32.const 2
        global.set $~argumentsLength
        local.get $10
        local.get $1
        i32.const 16
        i32.const 5184
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $3
        i32.store $0 offset=104
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $4
        i32.store $0
        local.get $1
        global.get $shared/constants/BEQ
        local.tee $1
        i32.store $0 offset=28
        local.get $1
        call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=12
        local.get $4
        local.get $1
        call $~lib/string/String.__eq
        if (result i32)
         i32.const 1
        else
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $4
         i32.store $0
         local.get $1
         global.get $shared/constants/BNE
         local.tee $1
         i32.store $0 offset=28
         local.get $1
         call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0 offset=12
         local.get $4
         local.get $1
         call $~lib/string/String.__eq
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $5
         i32.store $0 offset=12
         local.get $5
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         drop
         global.get $~lib/memory/__stack_pointer
         i32.const 6224
         i32.store $0
         i32.const 6224
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         local.set $1
         i32.const 2
         global.set $~argumentsLength
         local.get $3
         local.get $1
         i32.const 5
         i32.const 5184
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $11
         i32.store $0 offset=52
         global.get $~lib/memory/__stack_pointer
         local.set $3
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store $0 offset=12
         local.get $5
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         drop
         global.get $~lib/memory/__stack_pointer
         i32.const 6224
         i32.store $0
         i32.const 6224
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         local.set $1
         i32.const 2
         global.set $~argumentsLength
         local.get $3
         local.get $1
         i32.const 5
         i32.const 5184
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $4
         i32.store $0 offset=56
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store $0
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store $0 offset=28
         local.get $5
         i32.const 3
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0 offset=12
         local.get $0
         local.get $1
         call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
         local.set $1
         i32.const 2
         global.set $~argumentsLength
         global.get $~lib/memory/__stack_pointer
         local.get $1
         local.get $7
         i32.const 4
         i32.add
         i32.sub
         i32.const 4
         i32.div_s
         i32.const 16
         i32.const 5184
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $3
         i32.store $0 offset=104
        else
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $4
         i32.store $0
         local.get $1
         global.get $shared/constants/LW
         local.tee $1
         i32.store $0 offset=28
         local.get $1
         call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0 offset=12
         local.get $4
         local.get $1
         call $~lib/string/String.__eq
         if (result i32)
          i32.const 1
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $4
          i32.store $0
          local.get $1
          global.get $shared/constants/LHU
          local.tee $1
          i32.store $0 offset=28
          local.get $1
          call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          local.get $4
          local.get $1
          call $~lib/string/String.__eq
         end
         if (result i32)
          i32.const 1
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $4
          i32.store $0
          local.get $1
          global.get $shared/constants/SW
          local.tee $1
          i32.store $0 offset=28
          local.get $1
          call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          local.get $4
          local.get $1
          call $~lib/string/String.__eq
         end
         if (result i32)
          i32.const 1
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $4
          i32.store $0
          local.get $1
          global.get $shared/constants/SH
          local.tee $1
          i32.store $0 offset=28
          local.get $1
          call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          local.get $4
          local.get $1
          call $~lib/string/String.__eq
         end
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          local.get $5
          i32.store $0 offset=84
          local.get $5
          i32.const 2
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=76
          i32.const 1
          i32.const 8
          i32.const 6320
          call $~lib/rt/__newArray
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=80
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 3376
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=72
          local.get $1
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=68
          i32.const 1
          global.set $~argumentsLength
          local.get $1
          i32.const 0
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store $0 offset=28
          i32.const 2
          i32.const 8
          i32.const 6384
          call $~lib/rt/__newArray
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=32
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 3376
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          local.get $1
          i32.const 0
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          local.get $1
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          local.set $1
          i32.const 1
          global.set $~argumentsLength
          local.get $4
          local.get $1
          i32.const 0
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $11
          i32.store $0 offset=52
          global.get $~lib/memory/__stack_pointer
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store $0 offset=32
          local.get $5
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          global.get $~lib/memory/__stack_pointer
          i32.const 6224
          i32.store $0 offset=28
          i32.const 2
          global.set $~argumentsLength
          local.get $1
          i32.const 6224
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          local.get $1
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          local.set $1
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 5
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $4
          i32.store $0 offset=56
          global.get $~lib/memory/__stack_pointer
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store $0 offset=76
          local.get $5
          i32.const 2
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=68
          global.get $~lib/memory/__stack_pointer
          i32.const 6288
          i32.store $0 offset=72
          i32.const 1
          global.set $~argumentsLength
          local.get $1
          i32.const 6288
          call $~lib/string/String#split@varargs
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=32
          local.get $1
          i32.const 0
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          global.get $~lib/memory/__stack_pointer
          i32.const 6224
          i32.store $0 offset=28
          i32.const 2
          global.set $~argumentsLength
          local.get $1
          i32.const 6224
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          local.get $1
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          local.set $1
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 16
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $3
          i32.store $0 offset=104
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          local.get $5
          i32.store $0 offset=32
          local.get $5
          i32.const 2
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          global.get $~lib/memory/__stack_pointer
          i32.const 6224
          i32.store $0 offset=28
          i32.const 2
          global.set $~argumentsLength
          local.get $1
          i32.const 6224
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          local.get $1
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          local.set $1
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 5
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $11
          i32.store $0 offset=52
          global.get $~lib/memory/__stack_pointer
          local.set $3
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store $0 offset=32
          local.get $5
          i32.const 1
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=12
          global.get $~lib/memory/__stack_pointer
          i32.const 6224
          i32.store $0 offset=28
          i32.const 2
          global.set $~argumentsLength
          local.get $1
          i32.const 6224
          i32.const 3248
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          local.get $1
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          local.set $1
          i32.const 2
          global.set $~argumentsLength
          local.get $3
          local.get $1
          i32.const 5
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $4
          i32.store $0 offset=56
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store $0 offset=28
          local.get $5
          i32.const 3
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0
          global.get $~lib/memory/__stack_pointer
          i32.const 6256
          i32.store $0 offset=12
          local.get $1
          i32.const 6256
          call $~lib/string/String#includes
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.tee $10
           local.get $5
           i32.store $0 offset=28
           local.get $5
           i32.const 3
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store $0 offset=12
           i32.const 1
           global.set $~argumentsLength
           local.get $1
           i32.const 2
           call $~lib/string/String#slice@varargs
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store $0
           local.get $1
           i32.const 16
           call $~lib/string/parseInt
           i32.trunc_sat_f64_s
          else
           global.get $~lib/memory/__stack_pointer
           local.get $5
           i32.store $0 offset=12
           local.get $5
           i32.const 3
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store $0
           local.get $1
           i32.const 0
           call $~lib/string/parseInt
           drop
           global.get $~lib/memory/__stack_pointer
           local.set $10
           global.get $~lib/memory/__stack_pointer
           local.get $5
           i32.store $0 offset=12
           local.get $5
           i32.const 3
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store $0
           local.get $1
           i32.const 0
           call $~lib/string/parseInt
           i32.trunc_sat_f64_s
          end
          local.set $1
          i32.const 2
          global.set $~argumentsLength
          local.get $10
          local.get $1
          i32.const 16
          i32.const 5184
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $3
          i32.store $0 offset=104
         end
        end
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $9
       i32.store $0
       local.get $1
       local.get $2
       i32.store $0 offset=84
       local.get $2
       call $assembler/assembler/MipsAssembler#get:DATA_SEG
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=76
       global.get $~lib/memory/__stack_pointer
       local.get $11
       i32.store $0 offset=80
       local.get $1
       local.get $11
       call $~lib/string/String.__concat
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=68
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store $0 offset=72
       local.get $1
       local.get $4
       call $~lib/string/String.__concat
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=28
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.store $0
       local.get $1
       local.get $5
       i32.store $0 offset=28
       local.get $5
       i32.const 1
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=12
       local.get $0
       local.get $1
       call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
       i32.const 4
       i32.div_s
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=68
       local.get $2
       call $assembler/assembler/MipsAssembler#get:DATA_SEG
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=28
       i32.const 2
       global.set $~argumentsLength
       local.get $1
       i32.const 26
       i32.const 5184
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $3
      end
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store $0 offset=32
      local.get $2
      local.get $3
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=12
      local.get $9
      local.get $1
      call $~lib/array/Array<~lib/string/String>#push
     end
     local.get $7
     i32.const 4
     i32.add
     local.set $7
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 108
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  i32.const 39648
  i32.const 39696
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:assembler/assembler~anonymous|2 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $3
  i32.const 0
  i32.const 8
  i32.const 6448
  call $~lib/rt/__newArray
  local.tee $3
  i32.store $0
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $0
    i32.store $0 offset=8
    local.get $4
    local.get $0
    i32.load $0
    local.tee $5
    i32.store $0 offset=4
    local.get $4
    local.get $5
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $4
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=16
    local.get $4
    i32.const 0
    i32.const 2
    call $~lib/string/String#slice
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 6256
    i32.store $0 offset=8
    local.get $5
    i32.const 6256
    call $~lib/string/String.__eq
    if (result f64)
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     i32.const 1
     global.set $~argumentsLength
     local.get $4
     i32.const 2
     call $~lib/string/String#slice@varargs
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $4
     i32.const 16
     call $~lib/string/parseInt
    else
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $4
     i32.const 0
     call $~lib/string/parseInt
    end
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    i32.const 1
    global.set $~argumentsLength
    local.get $2
    i32.trunc_sat_f64_s
    i32.const 0
    i32.const 5184
    i32.load $0
    call_indirect $0 (type $i32_i32_=>_i32)
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $3
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $start:assembler/assembler~anonymous|3 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 24
  memory.fill $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  local.get $0
  i32.const 0
  i32.const 5184
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.load $0 offset=4
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  i32.const 5184
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $1
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0 offset=4
  i32.store $0 offset=16
  local.get $0
  i32.const 0
  local.get $2
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $0
  i32.const 1
  local.get $1
  call $~lib/array/Array<shared/types/InstT>#__set
  local.get $3
  local.get $0
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $4
  local.get $2
  local.get $1
  i32.store $0
  local.get $1
  i32.load $0 offset=12
  local.tee $5
  local.get $4
  i32.add
  local.tee $2
  i32.const 268435455
  i32.gt_u
  if
   i32.const 3200
   i32.const 3152
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.load $0 offset=4
  local.set $3
  local.get $4
  i32.const 2
  i32.shl
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $7
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $6
   i32.lt_u
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    local.get $7
    i32.add
    i32.load $0
    local.tee $4
    i32.store $0
    local.get $4
    if
     local.get $2
     local.get $4
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
  local.get $6
  i32.add
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.load $0 offset=4
  local.set $3
  local.get $5
  i32.const 2
  i32.shl
  local.set $4
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $0
    local.get $1
    i32.add
    local.get $1
    local.get $3
    i32.add
    i32.load $0
    local.tee $5
    i32.store $0
    local.get $5
    if
     local.get $2
     local.get $5
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:assembler/assembler~anonymous|4 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 32
  memory.fill $0
  local.get $1
  local.get $0
  i32.store $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  i32.const 6160
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  local.get $0
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  local.get $0
  call $assembler/assembler/MipsAssembler#get:TEXT_SEG
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  i32.const 2
  global.set $~argumentsLength
  local.get $1
  local.get $2
  local.get $3
  i32.const 6512
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $1
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 6416
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $2
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $0
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  local.get $0
  i32.const 6480
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $0
  i32.store $0 offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=28
  local.get $2
  local.get $0
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:shared/functions~anonymous|0@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 6224
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 6224
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  call $start:shared/functions~anonymous|0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6852
  i32.lt_s
  if
   i32.const 39648
   i32.const 39696
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy $0 $0
  end
  local.get $5
  local.get $3
  i32.store $0
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $3
  i32.store $0 offset=4
  local.get $1
  local.get $4
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
)
