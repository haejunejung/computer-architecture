(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i64_=>_i32 (func (param i32 i32 i64) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $shared/constants/MAX_SYMBOL_TABLE_SIZE i32 (i32.const 1024))
 (global $shared/constants/MEM_TEXT_START i32 (i32.const 4194304))
 (global $shared/constants/MEM_DATA_START i32 (i32.const 268435456))
 (global $shared/constants/BYTES_PER_WORD i32 (i32.const 4))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
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
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $shared/constants/INST_LIST (mut i32) (i32.const 0))
 (global $shared/constants/section.DATA i32 (i32.const 0))
 (global $shared/constants/section.TEXT i32 (i32.const 1))
 (global $shared/constants/section.MAX_SIZE i32 (i32.const 2))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $shared/functions/trimValue i32 (i32.const 2224))
 (global $shared/functions/customSplit i32 (i32.const 2352))
 (global $shared/functions/numToBit i32 (i32.const 4160))
 (global $shared/functions/numToHex i32 (i32.const 4192))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $assembler/assembler/make_symbol_table i32 (i32.const 5136))
 (global $assembler/assembler/record_text_section i32 (i32.const 5392))
 (global $assembler/assembler/record_data_section i32 (i32.const 5456))
 (global $assembler/assembler/record_section_size i32 (i32.const 5488))
 (global $assembler/assembler/make_binary_file i32 (i32.const 5520))
 (global $index/make_binary_file i32 (i32.const 5552))
 (global $index/add i32 (i32.const 5584))
 (global $~lib/rt/__rtti_base i32 (i32.const 5728))
 (global $~lib/memory/__data_end i32 (i32.const 5828))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 38596))
 (global $~lib/memory/__heap_base i32 (i32.const 38596))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 172) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 220) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $5 (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00a\00d\00d\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\000\000\000\000\00")
 (data $10 (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00R\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\000\000\000\00")
 (data $12 (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00a\00d\00d\00i\00\00\00\00\00")
 (data $13 (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\000\000\000\00")
 (data $14 (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00I\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00a\00d\00d\00i\00u\00\00\00")
 (data $17 (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\000\000\001\00")
 (data $18 (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00a\00d\00d\00u\00\00\00\00\00")
 (data $19 (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\000\000\001\00")
 (data $20 (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00a\00n\00d\00\00\00\00\00\00\00")
 (data $21 (i32.const 828) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\001\000\000\00")
 (data $22 (i32.const 860) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00a\00n\00d\00i\00\00\00\00\00")
 (data $23 (i32.const 892) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\001\000\000\00")
 (data $24 (i32.const 924) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00b\00e\00q\00\00\00\00\00\00\00")
 (data $25 (i32.const 956) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\000\001\000\000\00")
 (data $26 (i32.const 988) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00b\00n\00e\00\00\00\00\00\00\00")
 (data $27 (i32.const 1020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\000\001\000\001\00")
 (data $28 (i32.const 1052) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00j\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 1084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\000\000\001\000\00")
 (data $30 (i32.const 1116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00J\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 1148) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00j\00a\00l\00\00\00\00\00\00\00")
 (data $32 (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\000\000\001\001\00")
 (data $33 (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00j\00r\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00l\00h\00u\00\00\00\00\00\00\00")
 (data $35 (i32.const 1276) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\001\000\001\00")
 (data $36 (i32.const 1308) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00l\00u\00i\00\00\00\00\00\00\00")
 (data $37 (i32.const 1340) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\001\001\001\00")
 (data $38 (i32.const 1372) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00l\00w\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 1404) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\000\001\001\00")
 (data $40 (i32.const 1436) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00n\00o\00r\00\00\00\00\00\00\00")
 (data $41 (i32.const 1468) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\001\001\001\00")
 (data $42 (i32.const 1500) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00o\00r\00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 1532) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00o\00r\00i\00\00\00\00\00\00\00")
 (data $44 (i32.const 1564) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\001\000\001\00")
 (data $45 (i32.const 1596) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00s\00l\00t\00\00\00\00\00\00\00")
 (data $46 (i32.const 1628) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\001\000\001\000\00")
 (data $47 (i32.const 1660) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00s\00l\00t\00i\00\00\00\00\00")
 (data $48 (i32.const 1692) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\000\001\000\00")
 (data $49 (i32.const 1724) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00s\00l\00t\00i\00u\00\00\00")
 (data $50 (i32.const 1756) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\000\000\001\000\001\001\00")
 (data $51 (i32.const 1788) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00s\00l\00t\00u\00\00\00\00\00")
 (data $52 (i32.const 1820) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\001\000\001\001\00")
 (data $53 (i32.const 1852) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00s\00l\00l\00\00\00\00\00\00\00")
 (data $54 (i32.const 1884) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00s\00r\00l\00\00\00\00\00\00\00")
 (data $55 (i32.const 1916) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00s\00h\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 1948) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\001\000\000\001\00")
 (data $57 (i32.const 1980) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00s\00w\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 2012) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00s\00u\00b\00\00\00\00\00\00\00")
 (data $59 (i32.const 2044) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\000\000\000\001\000\00")
 (data $60 (i32.const 2076) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00s\00u\00b\00u\00\00\00\00\00")
 (data $61 (i32.const 2108) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $62 (i32.const 2156) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $63 (i32.const 2204) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 2236) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 2268) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $66 (i32.const 2300) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $67 (i32.const 2332) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $68 (i32.const 2364) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 2492) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $70 (i32.const 2556) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $71 (i32.const 2588) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $72 (i32.const 2988) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $73 (i32.const 4044) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $74 (i32.const 4140) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $75 (i32.const 4172) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $76 (i32.const 4204) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $77 (i32.const 4236) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $78 (i32.const 4268) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $79 (i32.const 4396) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00\n\00\t\00\00\00\00\00\00\00\00\00")
 (data $80 (i32.const 4428) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $81 (i32.const 4460) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data $82 (i32.const 4492) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data $83 (i32.const 4524) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00`\11\00\00\80\11\00\00\a0\11\00\00")
 (data $84 (i32.const 4556) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00.\00d\00a\00t\00a\00\00\00")
 (data $85 (i32.const 4588) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00.\00t\00e\00x\00t\00\00\00")
 (data $86 (i32.const 4620) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $87 (i32.const 4652) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00.\00w\00o\00r\00d\00\00\00")
 (data $88 (i32.const 4684) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $89 (i32.const 4716) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00l\00a\00\00\00\00\00\00\00\00\00")
 (data $90 (i32.const 4748) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00l\00u\00i\00 \00\00\00\00\00")
 (data $91 (i32.const 4780) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\10\00\00\00\a0\12\00\00\00\00\00\00`\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $92 (i32.const 4828) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\000\000\000\000\00\00\00\00\00")
 (data $93 (i32.const 4860) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00o\00r\00i\00 \00\00\00\00\00")
 (data $94 (i32.const 4892) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\18\00\00\00\10\13\00\00\00\00\00\00`\11\00\00\00\00\00\00`\11\00\00\00\00\00\00\00\00\00\00")
 (data $95 (i32.const 4940) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00m\00o\00v\00e\00\00\00\00\00")
 (data $96 (i32.const 4972) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00a\00d\00d\00 \00\00\00\00\00")
 (data $97 (i32.const 5004) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00,\00 \00$\000\00\00\00\00\00")
 (data $98 (i32.const 5036) ",\00\00\00\03\00\00\00\00\00\00\00\11\00\00\00\14\00\00\00\80\13\00\00\00\00\00\00`\11\00\00\00\00\00\00\a0\13\00\00\00\00\00\00\00\00\00\00")
 (data $99 (i32.const 5084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00\t\00\n\00\00\00\00\00\00\00\00\00")
 (data $100 (i32.const 5116) "\1c\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data $101 (i32.const 5148) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $102 (i32.const 5180) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00/\00$\00,\00/\00\00\00\00\00")
 (data $103 (i32.const 5212) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\000\00x\00\00\00\00\00\00\00\00\00")
 (data $104 (i32.const 5244) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $105 (i32.const 5276) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\90\14\00\00\00\00\00\00\00\00\00\00")
 (data $106 (i32.const 5308) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00$\00\00\00\00\00\00\00\00\00\00\00")
 (data $107 (i32.const 5340) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00\d0\14\00\00`\12\00\00\00\00\00\00")
 (data $108 (i32.const 5372) "\1c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data $109 (i32.const 5404) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $110 (i32.const 5436) "\1c\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data $111 (i32.const 5468) "\1c\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data $112 (i32.const 5500) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data $113 (i32.const 5532) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data $114 (i32.const 5564) "\1c\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data $115 (i32.const 5596) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data $116 (i32.const 5660) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data $117 (i32.const 5728) "\18\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\02A\00\00\02\t\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\04A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 12 12 funcref)
 (elem $0 (i32.const 1) $start:shared/functions~anonymous|0@varargs $start:shared/functions~anonymous|1 $start:shared/functions~anonymous|2@varargs $start:shared/functions~anonymous|3@varargs $start:assembler/assembler~anonymous|0 $start:assembler/assembler~anonymous|1 $start:assembler/assembler~anonymous|2 $start:assembler/assembler~anonymous|3 $start:assembler/assembler~anonymous|4 $start:index~anonymous|0 $start:index~anonymous|1)
 (export "make_binary_file" (global $index/make_binary_file))
 (export "add" (global $index/add))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 128
   i32.const 192
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 32
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $shared/types/InstT#set:_name (param $this i32) (param $_name i32)
  local.get $this
  local.get $_name
  i32.store $0
  local.get $this
  local.get $_name
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $shared/types/InstT#set:_op (param $this i32) (param $_op i32)
  local.get $this
  local.get $_op
  i32.store $0 offset=4
  local.get $this
  local.get $_op
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $shared/types/InstT#set:_type (param $this i32) (param $_type i32)
  local.get $this
  local.get $_type
  i32.store $0 offset=8
  local.get $this
  local.get $_type
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $shared/types/InstT#set:_funct (param $this i32) (param $_funct i32)
  local.get $this
  local.get $_funct
  i32.store $0 offset=12
  local.get $this
  local.get $_funct
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load $0
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store $0 offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store $0 offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load $0
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store $0
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store $0 offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store $0 offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size $0
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
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
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store $0 offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store $0 offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store $0 offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 240
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size $0
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size $0
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 240
   i32.const 32
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill $0
  local.get $ptr
  return
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy $0 $0
  end
  local.get $buffer
  return
 )
 (func $~lib/array/Array<shared/types/InstT>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy $0 $0
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<shared/types/InstT>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<shared/types/InstT>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load $0
     local.get $ptr2
     i64.load $0
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u $0
    local.set $a
    local.get $ptr2
    i32.load16_u $0
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $~lib/array/Array<~lib/string/String>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/math/ipow32 (param $x i32) (param $e i32) (result i32)
  (local $out i32)
  (local $log i32)
  (local $4 i32)
  i32.const 1
  local.set $out
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $x
  i32.const 2
  i32.eq
  if
   i32.const 1
   local.get $e
   i32.shl
   i32.const 0
   local.get $e
   i32.const 32
   i32.lt_u
   select
   return
  end
  local.get $e
  i32.const 0
  i32.le_s
  if
   local.get $x
   i32.const -1
   i32.eq
   if
    i32.const -1
    i32.const 1
    local.get $e
    i32.const 1
    i32.and
    select
    return
   end
   local.get $e
   i32.const 0
   i32.eq
   local.get $x
   i32.const 1
   i32.eq
   i32.or
   return
  else
   local.get $e
   i32.const 1
   i32.eq
   if
    local.get $x
    return
   else
    local.get $e
    i32.const 2
    i32.eq
    if
     local.get $x
     local.get $x
     i32.mul
     return
    else
     local.get $e
     i32.const 32
     i32.lt_s
     if
      i32.const 32
      local.get $e
      i32.clz
      i32.sub
      local.set $log
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $log
            local.set $4
            local.get $4
            i32.const 5
            i32.eq
            br_if $case0|0
            local.get $4
            i32.const 4
            i32.eq
            br_if $case1|0
            local.get $4
            i32.const 3
            i32.eq
            br_if $case2|0
            local.get $4
            i32.const 2
            i32.eq
            br_if $case3|0
            local.get $4
            i32.const 1
            i32.eq
            br_if $case4|0
            br $break|0
           end
           local.get $e
           i32.const 1
           i32.and
           if
            local.get $out
            local.get $x
            i32.mul
            local.set $out
           end
           local.get $e
           i32.const 1
           i32.shr_u
           local.set $e
           local.get $x
           local.get $x
           i32.mul
           local.set $x
          end
          local.get $e
          i32.const 1
          i32.and
          if
           local.get $out
           local.get $x
           i32.mul
           local.set $out
          end
          local.get $e
          i32.const 1
          i32.shr_u
          local.set $e
          local.get $x
          local.get $x
          i32.mul
          local.set $x
         end
         local.get $e
         i32.const 1
         i32.and
         if
          local.get $out
          local.get $x
          i32.mul
          local.set $out
         end
         local.get $e
         i32.const 1
         i32.shr_u
         local.set $e
         local.get $x
         local.get $x
         i32.mul
         local.set $x
        end
        local.get $e
        i32.const 1
        i32.and
        if
         local.get $out
         local.get $x
         i32.mul
         local.set $out
        end
        local.get $e
        i32.const 1
        i32.shr_u
        local.set $e
        local.get $x
        local.get $x
        i32.mul
        local.set $x
       end
       local.get $e
       i32.const 1
       i32.and
       if
        local.get $out
        local.get $x
        i32.mul
        local.set $out
       end
      end
      local.get $out
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $e
   if
    local.get $e
    i32.const 1
    i32.and
    if
     local.get $out
     local.get $x
     i32.mul
     local.set $out
    end
    local.get $e
    i32.const 1
    i32.shr_u
    local.set $e
    local.get $x
    local.get $x
    i32.mul
    local.set $x
    br $while-continue|1
   end
  end
  local.get $out
  return
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 2588
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits1
    i32.const 2588
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2588
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store $0
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2588
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store $0
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16 $0
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3008
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    i32.store $0
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 3008
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u $0
   i32.store16 $0
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4064
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4064
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/memory/memory.repeat (param $dst i32) (param $src i32) (param $srcLength i32) (param $count i32)
  (local $index i32)
  (local $total i32)
  i32.const 0
  local.set $index
  local.get $srcLength
  local.get $count
  i32.mul
  local.set $total
  loop $while-continue|0
   local.get $index
   local.get $total
   i32.lt_u
   if
    local.get $dst
    local.get $index
    i32.add
    local.get $src
    local.get $srcLength
    memory.copy $0 $0
    local.get $index
    local.get $srcLength
    i32.add
    local.set $index
    br $while-continue|0
   end
  end
 )
 (func $~lib/array/Array<shared/types/symbolT>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store $0
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<shared/types/symbolT>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<shared/types/symbolT>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<shared/types/symbolT>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $shared/types/symbolT#set:_name (param $this i32) (param $_name i32)
  local.get $this
  local.get $_name
  i32.store $0
  local.get $this
  local.get $_name
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $shared/types/symbolT#set:_address (param $this i32) (param $_address i32)
  local.get $this
  local.get $_address
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<shared/types/symbolT>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<shared/types/symbolT>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembler/assembler/SymbolTable#set:symbols (param $this i32) (param $symbols i32)
  local.get $this
  local.get $symbols
  i32.store $0
  local.get $this
  local.get $symbols
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/SymbolTable#set:curIndex (param $this i32) (param $curIndex i32)
  local.get $this
  local.get $curIndex
  i32.store $0 offset=4
 )
 (func $assembler/assembler/MipsAssembler#set:_SYMBOL_TABLE (param $this i32) (param $_SYMBOL_TABLE i32)
  local.get $this
  local.get $_SYMBOL_TABLE
  i32.store $0
  local.get $this
  local.get $_SYMBOL_TABLE
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/DataSegment#set:dataSeg (param $this i32) (param $dataSeg i32)
  local.get $this
  local.get $dataSeg
  i32.store $0
  local.get $this
  local.get $dataSeg
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/DataSegment#set:sectionSize (param $this i32) (param $sectionSize i32)
  local.get $this
  local.get $sectionSize
  i32.store $0 offset=4
 )
 (func $assembler/assembler/MipsAssembler#set:_DATA_SEG (param $this i32) (param $_DATA_SEG i32)
  local.get $this
  local.get $_DATA_SEG
  i32.store $0 offset=4
  local.get $this
  local.get $_DATA_SEG
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/TextSegment#set:textSeg (param $this i32) (param $textSeg i32)
  local.get $this
  local.get $textSeg
  i32.store $0
  local.get $this
  local.get $textSeg
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/TextSegment#set:sectionSize (param $this i32) (param $sectionSize i32)
  local.get $this
  local.get $sectionSize
  i32.store $0 offset=4
 )
 (func $assembler/assembler/MipsAssembler#set:_TEXT_SEG (param $this i32) (param $_TEXT_SEG i32)
  local.get $this
  local.get $_TEXT_SEG
  i32.store $0 offset=8
  local.get $this
  local.get $_TEXT_SEG
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembler/assembler/MipsAssembler#get:_DATA_SEG (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembler/assembler/MipsAssembler#get:_TEXT_SEG (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $assembler/assembler/MipsAssembler#get:_SYMBOL_TABLE (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembler/assembler/SymbolTable#get:symbols (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembler/assembler/SymbolTable#get:curIndex (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembler/assembler/DataSegment#get:dataSeg (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembler/assembler/DataSegment#get:sectionSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $shared/types/symbolT#get:_name (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $shared/types/symbolT#get:_address (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembler/assembler/TextSegment#get:textSeg (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $assembler/assembler/TextSegment#get:sectionSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $shared/types/InstT#get:_name (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $shared/types/InstT#get:_type (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/util/string/isSpace (param $c i32) (result i32)
  (local $1 i32)
  local.get $c
  i32.const 5760
  i32.lt_u
  if
   local.get $c
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $c
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   return
  end
  local.get $c
  i32.const 8192
  i32.sub
  i32.const 8202
  i32.const 8192
  i32.sub
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $c
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $shared/types/InstT#get:_op (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $shared/types/InstT#get:_funct (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $start:assembler/assembler
  call $start:shared/constants
 )
 (func $start:index~anonymous|1 (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  return
 )
 (func $start:index
  call $start:assembler/assembler
 )
 (func $~lib/rt/itcms/__pin (param $ptr i32) (result i32)
  (local $obj i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $obj
   local.get $obj
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 5616
    i32.const 32
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__unpin (param $ptr i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 5680
   i32.const 32
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
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
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $start:shared/functions~anonymous|2@varargs (param $num i32) (param $pad i32) (result i32)
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
   local.set $pad
  end
  local.get $num
  local.get $pad
  call $start:shared/functions~anonymous|2
 )
 (func $start:shared/functions~anonymous|3@varargs (param $num i32) (param $pad i32) (result i32)
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
   local.set $pad
  end
  local.get $num
  local.get $pad
  call $start:shared/functions~anonymous|3
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 128
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2176
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4288
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 240
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5616
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5680
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3008
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4064
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $shared/constants/ADD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDI
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDIU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ADDU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/AND
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ANDI
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/BEQ
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/BNE
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/J
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/JAL
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/JR
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LHU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LUI
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/LW
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/NOR
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/OR
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/ORI
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLT
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTI
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTIU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLTU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SLL
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SRL
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SH
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SW
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SUB
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/SUBU
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $shared/constants/INST_LIST
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $shared/types/InstT~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<shared/types/InstT>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<shared/types/InstT>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<shared/types/InstT>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>#__visit
 )
 (func $~lib/array/Array<~lib/string/String>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>#__visit
 )
 (func $assembler/assembler/MipsAssembler~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembler/assembler/SymbolTable~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $shared/types/symbolT~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<shared/types/symbolT>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<shared/types/symbolT>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<shared/types/symbolT>#__visit
 )
 (func $assembler/assembler/DataSegment~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembler/assembler/TextSegment~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>#__visit
 )
 (func $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28i32%2Ci32%29=>i32>
    block $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>
     block $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>
      block $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>
       block $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>
        block $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>
         block $~lib/staticarray/StaticArray<~lib/string/String>
          block $assembler/assembler/TextSegment
           block $assembler/assembler/DataSegment
            block $~lib/array/Array<shared/types/symbolT>
             block $shared/types/symbolT
              block $assembler/assembler/SymbolTable
               block $assembler/assembler/MipsAssembler
                block $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>
                 block $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>
                  block $~lib/array/Array<~lib/string/String>
                   block $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>
                    block $~lib/array/Array<i32>
                     block $~lib/array/Array<shared/types/InstT>
                      block $shared/types/InstT
                       block $~lib/arraybuffer/ArrayBufferView
                        block $~lib/string/String
                         block $~lib/arraybuffer/ArrayBuffer
                          block $~lib/object/Object
                           local.get $0
                           i32.const 8
                           i32.sub
                           i32.load $0
                           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $shared/types/InstT $~lib/array/Array<shared/types/InstT> $~lib/array/Array<i32> $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String> $~lib/array/Array<~lib/string/String> $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>> $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String> $assembler/assembler/MipsAssembler $assembler/assembler/SymbolTable $shared/types/symbolT $~lib/array/Array<shared/types/symbolT> $assembler/assembler/DataSegment $assembler/assembler/TextSegment $~lib/staticarray/StaticArray<~lib/string/String> $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler> $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>> $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>> $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>> $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>> $~lib/function/Function<%28i32%2Ci32%29=>i32> $invalid
                          end
                          return
                         end
                         return
                        end
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/arraybuffer/ArrayBufferView~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $shared/types/InstT~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/array/Array<shared/types/InstT>~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/array/Array<i32>~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/array/Array<~lib/string/String>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>~visit
                return
               end
               local.get $0
               local.get $1
               call $assembler/assembler/MipsAssembler~visit
               return
              end
              local.get $0
              local.get $1
              call $assembler/assembler/SymbolTable~visit
              return
             end
             local.get $0
             local.get $1
             call $shared/types/symbolT~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<shared/types/symbolT>~visit
            return
           end
           local.get $0
           local.get $1
           call $assembler/assembler/DataSegment~visit
           return
          end
          local.get $0
          local.get $1
          call $assembler/assembler/TextSegment~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/staticarray/StaticArray<~lib/string/String>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 38624
   i32.const 38672
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $shared/types/InstT#constructor (param $this i32) (param $name i32) (param $op i32) (param $type i32) (param $funct i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $shared/types/InstT#set:_name
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $shared/types/InstT#set:_op
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $shared/types/InstT#set:_type
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $shared/types/InstT#set:_funct
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $name
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $shared/types/InstT#set:_name
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $op
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $shared/types/InstT#set:_op
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $type
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $shared/types/InstT#set:_type
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $funct
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $shared/types/InstT#set:_funct
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store $0
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2176
    i32.const 2128
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store $0
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store $0
    local.get $array
    local.get $newData
    i32.store $0 offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<shared/types/InstT>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/InstT>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 2128
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<shared/types/InstT>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/InstT>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:shared/constants
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill $0
  i32.const 80
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size $0
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  i32.const 432
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 528
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADD
  i32.const 0
  i32.const 560
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 592
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDI
  i32.const 0
  i32.const 688
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 720
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDIU
  i32.const 0
  i32.const 752
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 784
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ADDU
  i32.const 0
  i32.const 816
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 848
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/AND
  i32.const 0
  i32.const 880
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 912
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ANDI
  i32.const 0
  i32.const 944
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 976
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/BEQ
  i32.const 0
  i32.const 1008
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1040
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/BNE
  i32.const 0
  i32.const 1072
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1104
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 1136
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/J
  i32.const 0
  i32.const 1168
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1200
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 1136
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/JAL
  i32.const 0
  i32.const 1232
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 592
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/JR
  i32.const 0
  i32.const 1264
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1296
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/LHU
  i32.const 0
  i32.const 1328
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1360
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/LUI
  i32.const 0
  i32.const 1392
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1424
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/LW
  i32.const 0
  i32.const 1456
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1488
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/NOR
  i32.const 0
  i32.const 1520
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1296
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/OR
  i32.const 0
  i32.const 1552
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1584
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/ORI
  i32.const 0
  i32.const 1616
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1648
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLT
  i32.const 0
  i32.const 1680
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1712
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTI
  i32.const 0
  i32.const 1744
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1776
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTIU
  i32.const 0
  i32.const 1808
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1840
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLTU
  i32.const 0
  i32.const 1872
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SLL
  i32.const 0
  i32.const 1904
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1104
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SRL
  i32.const 0
  i32.const 1936
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1968
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SH
  i32.const 0
  i32.const 2000
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1840
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 624
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 656
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SW
  i32.const 0
  i32.const 2032
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 2064
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SUB
  i32.const 0
  i32.const 2096
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 464
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 496
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1424
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $shared/types/InstT#constructor
  global.set $shared/constants/SUBU
  global.get $~lib/memory/__stack_pointer
  i32.const 27
  i32.const 2
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0 offset=4
  local.tee $1
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
 (func $~lib/string/String#charAt (param $this i32) (param $pos i32) (result i32)
  (local $out i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $pos
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 656
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $pos
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  i32.store16 $0
  local.get $out
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String#indexOf (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  local.get $len
  local.get $searchLen
  i32.sub
  local.set $len
  loop $for-loop|0
   local.get $searchStart
   local.get $len
   i32.le_s
   if
    local.get $this
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0
    local.get $10
    local.get $searchStart
    local.get $search
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    i32.const 0
    local.get $searchLen
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $searchStart
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $10
     return
    end
    local.get $searchStart
    i32.const 1
    i32.add
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/string/String#substring (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $finalStart i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $finalEnd i32)
  (local $14 i32)
  (local $15 i32)
  (local $fromPos i32)
  (local $17 i32)
  (local $18 i32)
  (local $toPos i32)
  (local $size i32)
  (local $out i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0
  local.get $22
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $finalStart
  local.get $end
  local.tee $9
  i32.const 0
  local.tee $10
  local.get $9
  local.get $10
  i32.gt_s
  select
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $finalEnd
  local.get $finalStart
  local.tee $14
  local.get $finalEnd
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $fromPos
  local.get $finalStart
  local.tee $17
  local.get $finalEnd
  local.tee $18
  local.get $17
  local.get $18
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $toPos
  local.get $toPos
  local.get $fromPos
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 656
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $fromPos
  i32.eqz
  if (result i32)
   local.get $toPos
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $fromPos
  i32.add
  local.get $size
  memory.copy $0 $0
  local.get $out
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $start:shared/functions~anonymous|0 (param $value i32) (param $expression i32) (result i32)
  (local $start i32)
  (local $end i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  i32.const 0
  local.set $start
  local.get $value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/string/String#get:length
  local.set $end
  loop $while-continue|0
   local.get $start
   local.get $end
   i32.lt_s
   if (result i32)
    local.get $expression
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $value
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    local.get $start
    call $~lib/string/String#charAt
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    i32.const 0
    call $~lib/string/String#indexOf
    i32.const 0
    i32.ge_s
   else
    i32.const 0
   end
   if
    local.get $start
    i32.const 1
    i32.add
    local.set $start
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $start
   local.get $end
   i32.lt_s
   if (result i32)
    local.get $expression
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $value
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    local.get $end
    i32.const 1
    i32.sub
    call $~lib/string/String#charAt
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    i32.const 0
    call $~lib/string/String#indexOf
    i32.const 0
    i32.ge_s
   else
    i32.const 0
   end
   if
    local.get $end
    i32.const 1
    i32.add
    local.set $end
    br $while-continue|1
   end
  end
  local.get $value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $start
  local.get $end
  call $~lib/string/String#substring
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/string/String>#indexOf (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  local.get $len
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $fromIndex
   local.get $len
   i32.ge_s
  end
  if
   i32.const -1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $fromIndex
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $fromIndex
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $fromIndex
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  loop $while-continue|0
   local.get $fromIndex
   local.get $len
   i32.lt_s
   if
    local.get $ptr
    local.get $fromIndex
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0
    local.get $7
    local.get $value
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    call $~lib/string/String.__eq
    if
     local.get $fromIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     return
    end
    local.get $fromIndex
    i32.const 1
    i32.add
    local.set $fromIndex
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<~lib/string/String>#includes (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  i32.const 0
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $fromIndex
  call $~lib/array/Array<~lib/string/String>#indexOf
  i32.const 0
  i32.ge_s
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 656
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load $0
   local.tee $4
   i32.store $0
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 656
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store $0 offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store $0 offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store $0 offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy $0 $0
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/util/string/joinStringArray
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $len
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $start:shared/functions~anonymous|1 (param $input i32) (param $delimiters i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $tokens i32)
  (local $5 i32)
  (local $6 i32)
  (local $currentToken i32)
  (local $i i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 2256
  call $~lib/rt/__newArray
  local.tee $tokens
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 2288
  call $~lib/rt/__newArray
  local.tee $currentToken
  i32.store $0 offset=4
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $input
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=8
   local.get $11
   call $~lib/string/String#get:length
   i32.lt_s
   if
    local.get $delimiters
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    local.get $input
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=16
    local.get $11
    local.get $i
    call $~lib/string/String#charAt
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=12
    local.get $11
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#includes
    if
     local.get $currentToken
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store $0 offset=8
     local.get $11
     call $~lib/array/Array<~lib/string/String>#get:length
     i32.const 0
     i32.gt_s
     if
      local.get $tokens
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store $0 offset=8
      local.get $11
      local.get $currentToken
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store $0 offset=16
      local.get $11
      i32.const 656
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store $0 offset=20
      local.get $11
      call $~lib/array/Array<~lib/string/String>#join
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store $0 offset=12
      local.get $11
      call $~lib/array/Array<~lib/string/String>#push
      drop
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 2
      i32.const 8
      i32.const 2320
      call $~lib/rt/__newArray
      local.tee $currentToken
      i32.store $0 offset=4
     end
    else
     local.get $currentToken
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store $0 offset=8
     local.get $11
     local.get $input
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store $0 offset=16
     local.get $11
     local.get $i
     call $~lib/string/String#charAt
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store $0 offset=12
     local.get $11
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $currentToken
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=8
  local.get $11
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $tokens
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=8
   local.get $11
   local.get $currentToken
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=16
   local.get $11
   i32.const 656
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=20
   local.get $11
   call $~lib/array/Array<~lib/string/String>#join
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $11
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $tokens
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/string/String#padStart (param $this i32) (param $length i32) (param $pad i32) (result i32)
  (local $thisSize i32)
  (local $targetSize i32)
  (local $padSize i32)
  (local $prependSize i32)
  (local $out i32)
  (local $repeatCount i32)
  (local $restBase i32)
  (local $restSize i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0
  local.get $11
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $length
  i32.const 1
  i32.shl
  local.set $targetSize
  local.get $pad
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0
  local.get $11
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $padSize
  local.get $targetSize
  local.get $thisSize
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $padSize
   i32.eqz
  end
  if
   local.get $this
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $targetSize
  local.get $thisSize
  i32.sub
  local.set $prependSize
  global.get $~lib/memory/__stack_pointer
  local.get $targetSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $prependSize
  local.get $padSize
  i32.gt_u
  if
   local.get $prependSize
   i32.const 2
   i32.sub
   local.get $padSize
   i32.div_u
   local.set $repeatCount
   local.get $repeatCount
   local.get $padSize
   i32.mul
   local.set $restBase
   local.get $prependSize
   local.get $restBase
   i32.sub
   local.set $restSize
   local.get $out
   local.get $pad
   local.get $padSize
   local.get $repeatCount
   call $~lib/memory/memory.repeat
   local.get $out
   local.get $restBase
   i32.add
   local.get $pad
   local.get $restSize
   memory.copy $0 $0
  else
   local.get $out
   local.get $pad
   local.get $prependSize
   memory.copy $0 $0
  end
  local.get $out
  local.get $prependSize
  i32.add
  local.get $this
  local.get $thisSize
  memory.copy $0 $0
  local.get $out
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $start:shared/functions~anonymous|2 (param $num i32) (param $pad i32) (result i32)
  (local $bit i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $num
  i32.const 0
  i32.lt_s
  if
   i32.const 2
   local.get $pad
   i32.extend8_s
   call $~lib/math/ipow32
   local.get $num
   i32.add
   local.set $num
  end
  global.get $~lib/memory/__stack_pointer
  local.get $num
  i32.const 2
  call $~lib/number/I32#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $pad
  i32.extend8_s
  i32.const 2576
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/string/String#padStart
  local.tee $bit
  i32.store $0 offset=8
  local.get $bit
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $start:shared/functions~anonymous|3 (param $num i32) (param $pad i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $num
  i32.const 16
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $pad
  i32.extend8_s
  i32.const 2576
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String#padStart
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<shared/types/symbolT>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<shared/types/symbolT>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<shared/types/symbolT>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<shared/types/symbolT>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<shared/types/symbolT>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2176
   i32.const 2128
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store $0 offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=12
  local.get $6
  call $~lib/array/Array<shared/types/symbolT>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<shared/types/symbolT>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<shared/types/symbolT>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<shared/types/symbolT>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $shared/types/symbolT#constructor (param $this i32) (param $name i32) (param $address i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $shared/types/symbolT#set:_name
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $shared/types/symbolT#set:_address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $name
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $shared/types/symbolT#set:_name
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $address
  call $shared/types/symbolT#set:_address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<shared/types/symbolT>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/symbolT>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 2128
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<shared/types/symbolT>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/symbolT>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembler/assembler/SymbolTable#constructor (param $this i32) (param $symbols i32) (param $curIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/SymbolTable#set:symbols
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/SymbolTable#set:curIndex
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $symbols
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembler/assembler/SymbolTable#set:symbols
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $curIndex
  call $assembler/assembler/SymbolTable#set:curIndex
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembler/assembler/DataSegment#constructor (param $this i32) (param $dataSeg i32) (param $sectionSize i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/DataSegment#set:dataSeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/DataSegment#set:sectionSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $dataSeg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembler/assembler/DataSegment#set:dataSeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $sectionSize
  call $assembler/assembler/DataSegment#set:sectionSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembler/assembler/TextSegment#constructor (param $this i32) (param $textSeg i32) (param $sectionSize i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/TextSegment#set:textSeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembler/assembler/TextSegment#set:sectionSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $textSeg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembler/assembler/TextSegment#set:textSeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $sectionSize
  call $assembler/assembler/TextSegment#set:sectionSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembler/assembler/MipsAssembler#constructor (param $this i32) (result i32)
  (local $symbols i32)
  (local $2 i32)
  (local $3 i32)
  (local $dataSeg i32)
  (local $5 i32)
  (local $6 i32)
  (local $textSeg i32)
  (local $i i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  call $assembler/assembler/MipsAssembler#set:_SYMBOL_TABLE
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  call $assembler/assembler/MipsAssembler#set:_DATA_SEG
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  call $assembler/assembler/MipsAssembler#set:_TEXT_SEG
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $shared/constants/MAX_SYMBOL_TABLE_SIZE
  call $~lib/array/Array<shared/types/symbolT>#constructor
  local.tee $symbols
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 4224
  call $~lib/rt/__newArray
  local.tee $dataSeg
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 4256
  call $~lib/rt/__newArray
  local.tee $textSeg
  i32.store $0 offset=16
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   global.get $shared/constants/MAX_SYMBOL_TABLE_SIZE
   i32.lt_s
   if
    local.get $symbols
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=4
    local.get $9
    local.get $i
    i32.const 0
    i32.const 656
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=24
    local.get $9
    i32.const 0
    call $shared/types/symbolT#constructor
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=20
    local.get $9
    call $~lib/array/Array<shared/types/symbolT>#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  local.get $symbols
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=24
  local.get $9
  i32.const 0
  call $assembler/assembler/SymbolTable#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=20
  local.get $9
  call $assembler/assembler/MipsAssembler#set:_SYMBOL_TABLE
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  local.get $dataSeg
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=24
  local.get $9
  i32.const 0
  call $assembler/assembler/DataSegment#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=20
  local.get $9
  call $assembler/assembler/MipsAssembler#set:_DATA_SEG
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  local.get $textSeg
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=24
  local.get $9
  i32.const 0
  call $assembler/assembler/TextSegment#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=20
  local.get $9
  call $assembler/assembler/MipsAssembler#set:_TEXT_SEG
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $assembler/assembler/MipsAssembler#get:DATA_SEG (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembler/assembler/MipsAssembler#get:_DATA_SEG
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembler/assembler/MipsAssembler#get:TEXT_SEG (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembler/assembler/MipsAssembler#get:_TEXT_SEG
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 2128
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 4288
   i32.const 2128
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $out i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store $0
  local.get $13
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.set $len
  local.get $len
  i32.const 0
  i32.le_s
  if
   i32.const 656
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $start
  i32.const 1
  i32.shl
  i32.add
  local.get $len
  i32.const 1
  i32.shl
  memory.copy $0 $0
  local.get $out
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/string/String#slice@varargs (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $start
  local.get $end
  call $~lib/string/String#slice
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $shared/types/symbolT#set:name (param $this i32) (param $n i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $n
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $shared/types/symbolT#set:_name
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $shared/types/symbolT#set:address (param $this i32) (param $addr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $addr
  call $shared/types/symbolT#set:_address
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembler/assembler/MipsAssembler#get:_SYMBOL_TABLE
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembler/assembler/MipsAssembler#symbolTableAddEntry (param $this i32) (param $symbol i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembler/assembler/SymbolTable#get:symbols
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembler/assembler/SymbolTable#get:curIndex
  local.get $symbol
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/array/Array<shared/types/symbolT>#__set
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembler/assembler/SymbolTable#get:curIndex
  i32.const 1
  i32.add
  call $assembler/assembler/SymbolTable#set:curIndex
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#includes (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $search
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $start
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/string/String>#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
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
  (local $slice i32)
  (local $sliceBase i32)
  (local $thisBase i32)
  (local $off i32)
  (local $end|18 i32)
  (local $ref i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0
  local.get $20
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.tee $12
  i32.const 0
  local.tee $13
  local.get $12
  local.get $13
  i32.gt_s
  select
  local.set $len
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $slice
  i32.store $0 offset=4
  local.get $slice
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0
  local.get $20
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $sliceBase
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0
  local.get $20
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $start
  i32.const 2
  i32.shl
  i32.add
  local.set $thisBase
  i32.const 1
  drop
  i32.const 0
  local.set $off
  local.get $len
  i32.const 2
  i32.shl
  local.set $end|18
  loop $while-continue|0
   local.get $off
   local.get $end|18
   i32.lt_u
   if
    local.get $thisBase
    local.get $off
    i32.add
    i32.load $0
    local.set $ref
    local.get $sliceBase
    local.get $off
    i32.add
    local.get $ref
    i32.store $0
    local.get $slice
    local.get $ref
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $off
    i32.const 4
    i32.add
    local.set $off
    br $while-continue|0
   end
  end
  local.get $slice
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
  return
 )
 (func $~lib/array/Array<~lib/string/String>#slice@varargs (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
    local.set $start
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $start
  local.get $end
  call $~lib/array/Array<~lib/string/String>#slice
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#toString (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 4704
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<shared/types/symbolT>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/symbolT>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 2128
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/symbolT>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 4288
   i32.const 2128
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $shared/types/symbolT#get:name (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/symbolT#get:_name
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $shared/types/symbolT#get:address (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/symbolT#get:_address
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembler/assembler/MipsAssembler#findTargetSymbolAddr (param $this i32) (param $name i32) (result i32)
  (local $address i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill $0
  i32.const 0
  local.set $address
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembler/assembler/SymbolTable#get:curIndex
   i32.lt_s
   if
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=20
    local.get $4
    call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=16
    local.get $4
    call $assembler/assembler/SymbolTable#get:symbols
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=12
    local.get $4
    local.get $i
    call $~lib/array/Array<shared/types/symbolT>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    call $shared/types/symbolT#get:name
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $name
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $~lib/string/String.__eq
    if
     local.get $this
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=12
     local.get $4
     call $assembler/assembler/MipsAssembler#get:SYMBOL_TABLE
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=8
     local.get $4
     call $assembler/assembler/SymbolTable#get:symbols
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $4
     local.get $i
     call $~lib/array/Array<shared/types/symbolT>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0
     local.get $4
     call $shared/types/symbolT#get:address
     local.set $address
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $address
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String.__ne (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#replace (param $this i32) (param $search i32) (param $replacement i32) (result i32)
  (local $len i32)
  (local $slen i32)
  (local $index i32)
  (local $rlen i32)
  (local $olen i32)
  (local $out i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $~lib/string/String#get:length
  local.set $len
  local.get $search
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $~lib/string/String#get:length
  local.set $slen
  local.get $len
  local.get $slen
  i32.le_u
  if
   local.get $len
   local.get $slen
   i32.lt_u
   if (result i32)
    local.get $this
   else
    local.get $replacement
    local.get $this
    local.get $search
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=4
    local.get $9
    call $~lib/string/String.__eq
    select
   end
   local.set $9
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  local.get $search
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const 0
  call $~lib/string/String#indexOf
  local.set $index
  local.get $index
  i32.const -1
  i32.xor
  if
   local.get $replacement
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $~lib/string/String#get:length
   local.set $rlen
   local.get $len
   local.get $slen
   i32.sub
   local.set $len
   local.get $len
   local.get $rlen
   i32.add
   local.set $olen
   local.get $olen
   if
    global.get $~lib/memory/__stack_pointer
    local.get $olen
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0 offset=8
    local.get $out
    local.get $this
    local.get $index
    i32.const 1
    i32.shl
    memory.copy $0 $0
    local.get $out
    local.get $index
    i32.const 1
    i32.shl
    i32.add
    local.get $replacement
    local.get $rlen
    i32.const 1
    i32.shl
    memory.copy $0 $0
    local.get $out
    local.get $index
    local.get $rlen
    i32.add
    i32.const 1
    i32.shl
    i32.add
    local.get $this
    local.get $index
    local.get $slen
    i32.add
    i32.const 1
    i32.shl
    i32.add
    local.get $len
    local.get $index
    i32.sub
    i32.const 1
    i32.shl
    memory.copy $0 $0
    local.get $out
    local.set $9
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $9
    return
   end
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $start:assembler/assembler~anonymous|0 (param $input i32) (result i32)
  (local $mips i32)
  (local $DATA_SEG i32)
  (local $TEXT_SEG i32)
  (local $cur_section i32)
  (local $address i32)
  (local $i i32)
  (local $line i32)
  (local $8 i32)
  (local $9 i32)
  (local $tokenLine i32)
  (local $temp i32)
  (local $symbol i32)
  (local $word i32)
  (local $symbol|14 i32)
  (local $targetSymbolName i32)
  (local $targetAddress i32)
  (local $targetHexAddress i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 96
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $assembler/assembler/MipsAssembler#constructor
  local.tee $mips
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $25
  global.get $~lib/memory/__stack_pointer
  local.get $25
  i32.store $0 offset=4
  local.get $25
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.tee $DATA_SEG
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $25
  global.get $~lib/memory/__stack_pointer
  local.get $25
  i32.store $0 offset=4
  local.get $25
  call $assembler/assembler/MipsAssembler#get:TEXT_SEG
  local.tee $TEXT_SEG
  i32.store $0 offset=12
  global.get $shared/constants/section.MAX_SIZE
  local.set $cur_section
  i32.const 0
  local.set $address
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $input
   local.set $25
   global.get $~lib/memory/__stack_pointer
   local.get $25
   i32.store $0 offset=4
   local.get $25
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.lt_s
   if
    block $for-continue|0
     global.get $~lib/memory/__stack_pointer
     local.get $input
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=4
     local.get $25
     local.get $i
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $line
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $line
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=24
     local.get $25
     i32.const 4416
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=28
     local.get $25
     i32.const 2
     global.set $~argumentsLength
     global.get $shared/functions/trimValue
     i32.load $0
     call_indirect $0 (type $i32_i32_=>_i32)
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=4
     local.get $25
     i32.const 3
     i32.const 2
     i32.const 8
     i32.const 4544
     call $~lib/rt/__newArray
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=20
     local.get $25
     i32.const 2
     global.set $~argumentsLength
     global.get $shared/functions/customSplit
     i32.load $0
     call_indirect $0 (type $i32_i32_=>_i32)
     local.tee $tokenLine
     i32.store $0 offset=32
     global.get $~lib/memory/__stack_pointer
     local.get $tokenLine
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=4
     local.get $25
     i32.const 0
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $temp
     i32.store $0 offset=36
     local.get $temp
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=4
     local.get $25
     i32.const 4576
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=20
     local.get $25
     call $~lib/string/String.__eq
     if
      global.get $shared/constants/MEM_DATA_START
      local.set $address
      global.get $shared/constants/section.DATA
      local.set $cur_section
      br $for-continue|0
     end
     local.get $temp
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=4
     local.get $25
     i32.const 4608
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=20
     local.get $25
     call $~lib/string/String.__eq
     if
      global.get $shared/constants/MEM_TEXT_START
      local.set $address
      global.get $shared/constants/section.TEXT
      local.set $cur_section
      br $for-continue|0
     end
     local.get $cur_section
     global.get $shared/constants/section.DATA
     i32.eq
     if
      local.get $temp
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      i32.const 4512
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=40
      local.get $25
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/trimValue
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=24
      local.get $25
      i32.const -1
      i32.const 1
      global.set $~argumentsLength
      i32.const 0
      call $~lib/string/String#slice@varargs
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=4
      local.get $25
      i32.const 4640
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=20
      local.get $25
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 656
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       i32.const 0
       call $shared/types/symbolT#constructor
       local.tee $symbol
       i32.store $0 offset=44
       local.get $symbol
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $temp
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=24
       local.get $25
       i32.const 0
       i32.const -1
       call $~lib/string/String#slice
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $shared/types/symbolT#set:name
       local.get $symbol
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $address
       call $shared/types/symbolT#set:address
       local.get $mips
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $symbol
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $assembler/assembler/MipsAssembler#symbolTableAddEntry
      end
      local.get $line
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=4
      local.get $25
      i32.const 4672
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=20
      local.get $25
      i32.const 0
      call $~lib/string/String#includes
      local.set $word
      local.get $word
      if
       local.get $DATA_SEG
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=24
       local.get $25
       call $assembler/assembler/DataSegment#get:dataSeg
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $tokenLine
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const -1
       i32.const 1
       global.set $~argumentsLength
       i32.const 0
       call $~lib/array/Array<~lib/string/String>#slice@varargs
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=24
       local.get $25
       call $~lib/array/Array<~lib/string/String>#toString
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $~lib/array/Array<~lib/string/String>#push
       drop
       local.get $DATA_SEG
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $DATA_SEG
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $assembler/assembler/DataSegment#get:sectionSize
       global.get $shared/constants/BYTES_PER_WORD
       i32.add
       call $assembler/assembler/DataSegment#set:sectionSize
      end
     end
     local.get $cur_section
     global.get $shared/constants/section.TEXT
     i32.eq
     if
      local.get $temp
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      i32.const 4512
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=40
      local.get $25
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/trimValue
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=24
      local.get $25
      i32.const -1
      i32.const 1
      global.set $~argumentsLength
      i32.const 0
      call $~lib/string/String#slice@varargs
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=4
      local.get $25
      i32.const 4640
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=20
      local.get $25
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 656
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       i32.const 0
       call $shared/types/symbolT#constructor
       local.tee $symbol|14
       i32.store $0 offset=48
       local.get $symbol|14
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $temp
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=24
       local.get $25
       i32.const 0
       i32.const -1
       call $~lib/string/String#slice
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $shared/types/symbolT#set:name
       local.get $symbol|14
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $address
       call $shared/types/symbolT#set:address
       local.get $mips
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $symbol|14
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $assembler/assembler/MipsAssembler#symbolTableAddEntry
       br $for-continue|0
      else
       local.get $temp
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       i32.const 4736
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $tokenLine
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=20
        local.get $25
        i32.const -1
        i32.const 1
        global.set $~argumentsLength
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#slice@varargs
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=4
        local.get $25
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        local.tee $targetSymbolName
        i32.store $0 offset=52
        local.get $mips
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=4
        local.get $25
        local.get $targetSymbolName
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=20
        local.get $25
        call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
        local.set $targetAddress
        global.get $~lib/memory/__stack_pointer
        local.get $targetAddress
        i32.const 0
        i32.const 1
        global.set $~argumentsLength
        global.get $shared/functions/numToHex
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $targetHexAddress
        i32.store $0 offset=56
        local.get $TEXT_SEG
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        call $assembler/assembler/TextSegment#get:textSeg
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=4
        local.get $25
        global.get $~lib/memory/__stack_pointer
        local.get $tokenLine
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 1
        call $~lib/array/Array<~lib/string/String>#__get
        local.tee $18
        i32.store $0 offset=60
        global.get $~lib/memory/__stack_pointer
        local.get $tokenLine
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.tee $19
        i32.store $0 offset=64
        i32.const 4800
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 1
        local.get $18
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        i32.const 4800
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 3
        local.get $19
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        i32.const 4800
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 656
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        call $~lib/staticarray/StaticArray<~lib/string/String>#join
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=20
        local.get $25
        call $~lib/array/Array<~lib/string/String>#push
        drop
        local.get $targetHexAddress
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=24
        local.get $25
        i32.const 4
        i32.const 1
        global.set $~argumentsLength
        i32.const 0
        call $~lib/string/String#slice@varargs
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=4
        local.get $25
        i32.const 4848
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=20
        local.get $25
        call $~lib/string/String.__ne
        if
         local.get $TEXT_SEG
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=4
         local.get $25
         local.get $TEXT_SEG
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=20
         local.get $25
         call $assembler/assembler/TextSegment#get:sectionSize
         global.get $shared/constants/BYTES_PER_WORD
         i32.add
         call $assembler/assembler/TextSegment#set:sectionSize
         local.get $address
         global.get $shared/constants/BYTES_PER_WORD
         i32.add
         local.set $address
         local.get $TEXT_SEG
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         call $assembler/assembler/TextSegment#get:textSeg
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=4
         local.get $25
         global.get $~lib/memory/__stack_pointer
         local.get $tokenLine
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $20
         i32.store $0 offset=68
         global.get $~lib/memory/__stack_pointer
         local.get $tokenLine
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $21
         i32.store $0 offset=72
         global.get $~lib/memory/__stack_pointer
         local.get $tokenLine
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $22
         i32.store $0 offset=76
         i32.const 4912
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 1
         local.get $20
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 4912
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 3
         local.get $21
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 4912
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 5
         local.get $22
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 4912
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 656
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#join
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=20
         local.get $25
         call $~lib/array/Array<~lib/string/String>#push
         drop
        end
       else
        local.get $temp
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=4
        local.get $25
        i32.const 4960
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=20
        local.get $25
        call $~lib/string/String.__eq
        if
         local.get $TEXT_SEG
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         call $assembler/assembler/TextSegment#get:textSeg
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=4
         local.get $25
         global.get $~lib/memory/__stack_pointer
         local.get $tokenLine
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $23
         i32.store $0 offset=80
         global.get $~lib/memory/__stack_pointer
         local.get $tokenLine
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.tee $24
         i32.store $0 offset=84
         i32.const 5056
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 1
         local.get $23
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 5056
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 3
         local.get $24
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         i32.const 5056
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 656
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $~lib/staticarray/StaticArray<~lib/string/String>#join
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=20
         local.get $25
         call $~lib/array/Array<~lib/string/String>#push
         drop
        else
         local.get $TEXT_SEG
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         call $assembler/assembler/TextSegment#get:textSeg
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=4
         local.get $25
         local.get $line
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=88
         local.get $25
         i32.const 5104
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=92
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=24
         local.get $25
         i32.const 4480
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 4448
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=40
         local.get $25
         call $~lib/string/String#replace
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=20
         local.get $25
         call $~lib/array/Array<~lib/string/String>#push
         drop
        end
       end
       local.get $TEXT_SEG
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=4
       local.get $25
       local.get $TEXT_SEG
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=20
       local.get $25
       call $assembler/assembler/TextSegment#get:sectionSize
       global.get $shared/constants/BYTES_PER_WORD
       i32.add
       call $assembler/assembler/TextSegment#set:sectionSize
      end
     end
     local.get $address
     global.get $shared/constants/BYTES_PER_WORD
     i32.add
     local.set $address
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $mips
  local.set $25
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $25
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 128
    i32.const 2128
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/string/String>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#split (param $this i32) (param $separator i32) (param $limit i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $length i32)
  (local $sepLen i32)
  (local $7 i32)
  (local $8 i32)
  (local $result i32)
  (local $resultStart i32)
  (local $i i32)
  (local $charStr i32)
  (local $result|13 i32)
  (local $result|14 i32)
  (local $end i32)
  (local $start i32)
  (local $i|17 i32)
  (local $len i32)
  (local $out i32)
  (local $len|20 i32)
  (local $out|21 i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill $0
  local.get $limit
  i32.eqz
  if
   i32.const 0
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $separator
  i32.const 0
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load $0 offset=4
   local.tee $4
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   local.get $this
   call $~lib/array/Array<~lib/string/String>#__set
   local.get $3
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=8
  local.get $22
  call $~lib/string/String#get:length
  local.set $length
  local.get $separator
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=8
  local.get $22
  call $~lib/string/String#get:length
  local.set $sepLen
  local.get $limit
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $limit
  end
  local.get $sepLen
  i32.eqz
  if
   local.get $length
   i32.eqz
   if
    i32.const 0
    i32.const 2
    i32.const 8
    i32.const 0
    call $~lib/rt/__newArray
    local.set $22
    global.get $~lib/memory/__stack_pointer
    i32.const 40
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $22
    return
   end
   local.get $length
   local.tee $7
   local.get $limit
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.set $length
   global.get $~lib/memory/__stack_pointer
   local.get $length
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $result
   i32.store $0 offset=12
   local.get $result
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=8
   local.get $22
   call $~lib/array/Array<~lib/string/String>#get:dataStart
   local.set $resultStart
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $length
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 2
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $charStr
     i32.store $0 offset=16
     local.get $charStr
     local.get $this
     local.get $i
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u $0
     i32.store16 $0
     local.get $resultStart
     local.get $i
     i32.const 2
     i32.shl
     i32.add
     local.get $charStr
     i32.store $0
     local.get $result
     local.get $charStr
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
   local.get $result
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  else
   local.get $length
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 8
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $result|13
    i32.store $0 offset=20
    local.get $result|13
    local.set $22
    global.get $~lib/memory/__stack_pointer
    local.get $22
    i32.store $0 offset=8
    local.get $22
    call $~lib/array/Array<~lib/string/String>#get:dataStart
    i32.const 656
    i32.store $0
    local.get $result|13
    local.set $22
    global.get $~lib/memory/__stack_pointer
    i32.const 40
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $22
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result|14
  i32.store $0 offset=24
  i32.const 0
  local.set $end
  i32.const 0
  local.set $start
  i32.const 0
  local.set $i|17
  loop $while-continue|1
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=8
   local.get $22
   local.get $separator
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=28
   local.get $22
   local.get $start
   call $~lib/string/String#indexOf
   local.tee $end
   i32.const -1
   i32.xor
   if
    local.get $end
    local.get $start
    i32.sub
    local.set $len
    local.get $len
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $len
     i32.const 1
     i32.shl
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $out
     i32.store $0 offset=32
     local.get $out
     local.get $this
     local.get $start
     i32.const 1
     i32.shl
     i32.add
     local.get $len
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store $0 offset=8
     local.get $22
     local.get $out
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store $0 offset=28
     local.get $22
     call $~lib/array/Array<~lib/string/String>#push
     drop
    else
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store $0 offset=8
     local.get $22
     i32.const 656
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store $0 offset=28
     local.get $22
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $i|17
    i32.const 1
    i32.add
    local.tee $i|17
    local.get $limit
    i32.eq
    if
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $22
     return
    end
    local.get $end
    local.get $sepLen
    i32.add
    local.set $start
    br $while-continue|1
   end
  end
  local.get $start
  i32.eqz
  if
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=8
   local.get $22
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $length
  local.get $start
  i32.sub
  local.set $len|20
  local.get $len|20
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $len|20
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out|21
   i32.store $0 offset=36
   local.get $out|21
   local.get $this
   local.get $start
   i32.const 1
   i32.shl
   i32.add
   local.get $len|20
   i32.const 1
   i32.shl
   memory.copy $0 $0
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=8
   local.get $22
   local.get $out|21
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
  else
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=8
   local.get $22
   i32.const 656
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store $0 offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $result|14
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $~lib/string/String#split@varargs (param $this i32) (param $separator i32) (param $limit i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
    local.set $separator
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $limit
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $separator
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $limit
  call $~lib/string/String#split
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<shared/types/InstT>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<shared/types/InstT>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<shared/types/InstT>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/InstT>#get:length_
  i32.ge_u
  if
   i32.const 128
   i32.const 2128
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<shared/types/InstT>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 4288
   i32.const 2128
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $shared/types/InstT#get:name (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/InstT#get:_name
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $shared/types/InstT#get:type (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/InstT#get:_type
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/util/string/strtol<f64> (param $str i32) (param $radix i32) (result f64)
  (local $len i32)
  (local $ptr i32)
  (local $code i32)
  (local $sign f64)
  (local $6 i32)
  (local $num f64)
  (local $initial i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $str
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const 1
   drop
   f64.const nan:0x8000000000000
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $str
  local.set $ptr
  local.get $ptr
  i32.load16_u $0
  local.set $code
  loop $while-continue|0
   local.get $code
   call $~lib/util/string/isSpace
   if
    local.get $ptr
    i32.const 2
    i32.add
    local.tee $ptr
    i32.load16_u $0
    local.set $code
    local.get $len
    i32.const 1
    i32.sub
    local.set $len
    br $while-continue|0
   end
  end
  f64.const 1
  local.set $sign
  local.get $code
  i32.const 45
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $code
   i32.const 43
   i32.eq
  end
  if
   local.get $len
   i32.const 1
   i32.sub
   local.tee $len
   i32.eqz
   if
    i32.const 1
    drop
    f64.const nan:0x8000000000000
    local.set $11
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $11
    return
   end
   local.get $code
   i32.const 45
   i32.eq
   if
    f64.const -1
    local.set $sign
   end
   local.get $ptr
   i32.const 2
   i32.add
   local.tee $ptr
   i32.load16_u $0
   local.set $code
  end
  local.get $radix
  if
   local.get $radix
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $radix
    i32.const 36
    i32.gt_s
   end
   if
    i32.const 1
    drop
    f64.const nan:0x8000000000000
    local.set $11
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $11
    return
   end
   local.get $radix
   i32.const 16
   i32.eq
   if
    local.get $len
    i32.const 2
    i32.gt_s
    if (result i32)
     local.get $code
     i32.const 48
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $ptr
     i32.load16_u $0 offset=2
     i32.const 32
     i32.or
     i32.const 120
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
    end
   end
  else
   local.get $code
   i32.const 48
   i32.eq
   if (result i32)
    local.get $len
    i32.const 2
    i32.gt_s
   else
    i32.const 0
   end
   if
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $ptr
        i32.load16_u $0 offset=2
        i32.const 32
        i32.or
        local.set $6
        local.get $6
        i32.const 98
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 111
        i32.eq
        br_if $case1|1
        local.get $6
        i32.const 120
        i32.eq
        br_if $case2|1
        br $break|1
       end
       local.get $ptr
       i32.const 4
       i32.add
       local.set $ptr
       local.get $len
       i32.const 2
       i32.sub
       local.set $len
       i32.const 2
       local.set $radix
       br $break|1
      end
      local.get $ptr
      i32.const 4
      i32.add
      local.set $ptr
      local.get $len
      i32.const 2
      i32.sub
      local.set $len
      i32.const 8
      local.set $radix
      br $break|1
     end
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
     i32.const 16
     local.set $radix
     br $break|1
    end
   end
   local.get $radix
   i32.eqz
   if
    i32.const 10
    local.set $radix
   end
  end
  f64.const 0
  local.set $num
  local.get $len
  i32.const 1
  i32.sub
  local.set $initial
  block $while-break|2
   loop $while-continue|2
    local.get $len
    local.tee $9
    i32.const 1
    i32.sub
    local.set $len
    local.get $9
    if
     local.get $ptr
     i32.load16_u $0
     local.set $code
     local.get $code
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if
      local.get $code
      i32.const 48
      i32.sub
      local.set $code
     else
      local.get $code
      i32.const 65
      i32.sub
      i32.const 90
      i32.const 65
      i32.sub
      i32.le_u
      if
       local.get $code
       i32.const 65
       i32.const 10
       i32.sub
       i32.sub
       local.set $code
      else
       local.get $code
       i32.const 97
       i32.sub
       i32.const 122
       i32.const 97
       i32.sub
       i32.le_u
       if
        local.get $code
        i32.const 97
        i32.const 10
        i32.sub
        i32.sub
        local.set $code
       end
      end
     end
     local.get $code
     local.get $radix
     i32.ge_u
     if
      local.get $initial
      local.get $len
      i32.eq
      if
       i32.const 1
       drop
       f64.const nan:0x8000000000000
       local.set $11
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $11
       return
      end
      br $while-break|2
     end
     local.get $num
     local.get $radix
     f64.convert_i32_s
     f64.mul
     local.get $code
     f64.convert_i32_u
     f64.add
     local.set $num
     local.get $ptr
     i32.const 2
     i32.add
     local.set $ptr
     br $while-continue|2
    end
   end
  end
  local.get $sign
  local.get $num
  f64.mul
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/string/parseInt (param $str i32) (param $radix i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $str
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $radix
  call $~lib/util/string/strtol<f64>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $shared/types/InstT#get:op (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/InstT#get:_op
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 656
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy $0 $0
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy $0 $0
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $shared/types/InstT#get:funct (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $shared/types/InstT#get:_funct
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $start:assembler/assembler~anonymous|1 (param $mips i32) (result i32)
  (local $TEXT_SEG i32)
  (local $2 i32)
  (local $3 i32)
  (local $binaryText i32)
  (local $cur_address i32)
  (local $address i32)
  (local $rs i32)
  (local $rt i32)
  (local $rd i32)
  (local $imm i32)
  (local $shamt i32)
  (local $i i32)
  (local $line i32)
  (local $instruct i32)
  (local $inst_name i32)
  (local $cur_inst i32)
  (local $j i32)
  (local $inst i32)
  (local $name i32)
  (local $type i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 108
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 108
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $25
  global.get $~lib/memory/__stack_pointer
  local.get $25
  i32.store $0
  local.get $25
  call $assembler/assembler/MipsAssembler#get:TEXT_SEG
  local.tee $TEXT_SEG
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 5168
  call $~lib/rt/__newArray
  local.tee $binaryText
  i32.store $0 offset=8
  global.get $shared/constants/MEM_TEXT_START
  local.set $cur_address
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $TEXT_SEG
   local.set $25
   global.get $~lib/memory/__stack_pointer
   local.get $25
   i32.store $0
   local.get $25
   call $assembler/assembler/TextSegment#get:sectionSize
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $TEXT_SEG
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=12
    local.get $25
    call $assembler/assembler/TextSegment#get:textSeg
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    local.get $i
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $line
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $line
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    i32.const 4448
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=12
    local.get $25
    i32.const 1
    global.set $~argumentsLength
    i32.const 0
    call $~lib/string/String#split@varargs
    local.tee $instruct
    i32.store $0 offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $instruct
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $inst_name
    i32.store $0 offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 656
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    i32.const 656
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=12
    local.get $25
    i32.const 656
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=28
    local.get $25
    i32.const 656
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=32
    local.get $25
    call $shared/types/InstT#constructor
    local.tee $cur_inst
    i32.store $0 offset=36
    i32.const 0
    local.set $j
    loop $for-loop|1
     local.get $j
     global.get $shared/constants/INST_LIST
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0
     local.get $25
     call $~lib/array/Array<shared/types/InstT>#get:length
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      global.get $shared/constants/INST_LIST
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      local.get $j
      call $~lib/array/Array<shared/types/InstT>#__get
      local.tee $inst
      i32.store $0 offset=40
      local.get $inst
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      call $shared/types/InstT#get:name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      local.get $inst_name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $inst
       local.tee $cur_inst
       i32.store $0 offset=36
      end
      local.get $j
      i32.const 1
      i32.add
      local.set $j
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $cur_inst
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    call $shared/types/InstT#get:name
    local.tee $name
    i32.store $0 offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $cur_inst
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    call $shared/types/InstT#get:type
    local.tee $type
    i32.store $0 offset=48
    local.get $type
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0
    local.get $25
    i32.const 496
    local.set $25
    global.get $~lib/memory/__stack_pointer
    local.get $25
    i32.store $0 offset=12
    local.get $25
    call $~lib/string/String.__eq
    if
     local.get $name
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0
     local.get $25
     global.get $shared/constants/SLL
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=28
     local.get $25
     call $shared/types/InstT#get:name
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=12
     local.get $25
     call $~lib/string/String.__eq
     if (result i32)
      i32.const 1
     else
      local.get $name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      global.get $shared/constants/SRL
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      call $shared/types/InstT#get:name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/string/String.__eq
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 5
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/numToBit
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.tee $rs
      i32.store $0 offset=52
      global.get $~lib/memory/__stack_pointer
      local.get $instruct
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=32
      local.get $25
      i32.const 2
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      i32.const 5200
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/trimValue
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      i32.const 0
      call $~lib/string/parseInt
      i32.trunc_sat_f64_s
      i32.const 5
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/numToBit
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.tee $rt
      i32.store $0 offset=56
      global.get $~lib/memory/__stack_pointer
      local.get $instruct
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=32
      local.get $25
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      i32.const 5200
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/trimValue
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      i32.const 0
      call $~lib/string/parseInt
      i32.trunc_sat_f64_s
      i32.const 5
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/numToBit
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.tee $rd
      i32.store $0 offset=60
      global.get $~lib/memory/__stack_pointer
      local.get $instruct
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      i32.const 3
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      i32.const 0
      call $~lib/string/parseInt
      i32.trunc_sat_f64_s
      i32.const 5
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/numToBit
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.tee $shamt
      i32.store $0 offset=64
     else
      local.get $name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      global.get $shared/constants/JR
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      call $shared/types/InstT#get:name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=32
       local.get $25
       i32.const 1
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 5200
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/trimValue
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rs
       i32.store $0 offset=52
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rt
       i32.store $0 offset=56
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rd
       i32.store $0 offset=60
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $shamt
       i32.store $0 offset=64
      else
       global.get $~lib/memory/__stack_pointer
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=32
       local.get $25
       i32.const 2
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 5200
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/trimValue
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rs
       i32.store $0 offset=52
       global.get $~lib/memory/__stack_pointer
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=32
       local.get $25
       i32.const 3
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 5200
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/trimValue
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rt
       i32.store $0 offset=56
       global.get $~lib/memory/__stack_pointer
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=32
       local.get $25
       i32.const 1
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 5200
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/trimValue
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rd
       i32.store $0 offset=60
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $shamt
       i32.store $0 offset=64
      end
     end
     local.get $binaryText
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0
     local.get $25
     local.get $cur_inst
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=100
     local.get $25
     call $shared/types/InstT#get:op
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=92
     local.get $25
     local.get $rs
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=96
     local.get $25
     call $~lib/string/String.__concat
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=84
     local.get $25
     local.get $rt
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=88
     local.get $25
     call $~lib/string/String.__concat
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=76
     local.get $25
     local.get $rd
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=80
     local.get $25
     call $~lib/string/String.__concat
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=68
     local.get $25
     local.get $shamt
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=72
     local.get $25
     call $~lib/string/String.__concat
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=28
     local.get $25
     local.get $cur_inst
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=68
     local.get $25
     call $shared/types/InstT#get:funct
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=32
     local.get $25
     call $~lib/string/String.__concat
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=12
     local.get $25
     call $~lib/array/Array<~lib/string/String>#push
     drop
    else
     local.get $type
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0
     local.get $25
     i32.const 624
     local.set $25
     global.get $~lib/memory/__stack_pointer
     local.get $25
     i32.store $0 offset=12
     local.get $25
     call $~lib/string/String.__eq
     if
      local.get $name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      global.get $shared/constants/LUI
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      call $shared/types/InstT#get:name
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rs
       i32.store $0 offset=52
       global.get $~lib/memory/__stack_pointer
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=32
       local.get $25
       i32.const 1
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 5200
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/trimValue
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_sat_f64_s
       i32.const 5
       i32.const 2
       global.set $~argumentsLength
       global.get $shared/functions/numToBit
       i32.load $0
       call_indirect $0 (type $i32_i32_=>_i32)
       local.tee $rt
       i32.store $0 offset=56
       local.get $instruct
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       i32.const 2
       call $~lib/array/Array<~lib/string/String>#__get
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       i32.const 5232
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       i32.const 0
       call $~lib/string/String#includes
       if
        global.get $~lib/memory/__stack_pointer
        local.get $instruct
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        i32.const 2
        i32.const 1
        global.set $~argumentsLength
        i32.const 0
        call $~lib/string/String#slice@varargs
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        i32.const 16
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        i32.const 16
        i32.const 2
        global.set $~argumentsLength
        global.get $shared/functions/numToBit
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $imm
        i32.store $0 offset=104
       else
        local.get $instruct
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        drop
        i32.const 0
        if
         local.get $mips
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
         local.set $address
         global.get $~lib/memory/__stack_pointer
         local.get $address
         i32.const 16
         call $~lib/number/I32#toString
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 0
         i32.const 4
         call $~lib/string/String#slice
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 16
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 16
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $imm
         i32.store $0 offset=104
        else
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 16
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $imm
         i32.store $0 offset=104
        end
       end
      else
       local.get $name
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0
       local.get $25
       global.get $shared/constants/BEQ
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=28
       local.get $25
       call $shared/types/InstT#get:name
       local.set $25
       global.get $~lib/memory/__stack_pointer
       local.get $25
       i32.store $0 offset=12
       local.get $25
       call $~lib/string/String.__eq
       if (result i32)
        i32.const 1
       else
        local.get $name
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        global.get $shared/constants/BNE
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        call $shared/types/InstT#get:name
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        call $~lib/string/String.__eq
       end
       if
        global.get $~lib/memory/__stack_pointer
        local.get $instruct
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        i32.const 1
        call $~lib/array/Array<~lib/string/String>#__get
        drop
        i32.const 5200
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        i32.const 5
        i32.const 2
        global.set $~argumentsLength
        global.get $shared/functions/numToBit
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $rs
        i32.store $0 offset=52
        global.get $~lib/memory/__stack_pointer
        local.get $instruct
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        i32.const 2
        call $~lib/array/Array<~lib/string/String>#__get
        drop
        i32.const 5200
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_sat_f64_s
        i32.const 5
        i32.const 2
        global.set $~argumentsLength
        global.get $shared/functions/numToBit
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $rt
        i32.store $0 offset=56
        local.get $mips
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        local.get $instruct
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        i32.const 3
        call $~lib/array/Array<~lib/string/String>#__get
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
        local.set $address
        global.get $~lib/memory/__stack_pointer
        local.get $address
        local.get $cur_address
        i32.const 4
        i32.add
        i32.sub
        i32.const 4
        i32.div_s
        i32.const 16
        i32.const 2
        global.set $~argumentsLength
        global.get $shared/functions/numToBit
        i32.load $0
        call_indirect $0 (type $i32_i32_=>_i32)
        local.tee $imm
        i32.store $0 offset=104
       else
        local.get $name
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0
        local.get $25
        global.get $shared/constants/LW
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=28
        local.get $25
        call $shared/types/InstT#get:name
        local.set $25
        global.get $~lib/memory/__stack_pointer
        local.get $25
        i32.store $0 offset=12
        local.get $25
        call $~lib/string/String.__eq
        if (result i32)
         i32.const 1
        else
         local.get $name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         global.get $shared/constants/LHU
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $shared/types/InstT#get:name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         call $~lib/string/String.__eq
        end
        if (result i32)
         i32.const 1
        else
         local.get $name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         global.get $shared/constants/SW
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $shared/types/InstT#get:name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         call $~lib/string/String.__eq
        end
        if (result i32)
         i32.const 1
        else
         local.get $name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         global.get $shared/constants/SH
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         call $shared/types/InstT#get:name
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         call $~lib/string/String.__eq
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=84
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=76
         local.get $25
         i32.const 1
         i32.const 2
         i32.const 8
         i32.const 5296
         call $~lib/rt/__newArray
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=80
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/customSplit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=72
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=68
         local.get $25
         i32.const 0
         i32.const 1
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         i32.const 2
         i32.const 8
         i32.const 5360
         call $~lib/rt/__newArray
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=32
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/customSplit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 0
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 0
         i32.const 1
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $rs
         i32.store $0 offset=52
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=32
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 5200
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 5
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $rt
         i32.store $0 offset=56
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=76
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=68
         local.get $25
         i32.const 5264
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=72
         local.get $25
         i32.const 1
         global.set $~argumentsLength
         i32.const 0
         call $~lib/string/String#split@varargs
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=32
         local.get $25
         i32.const 0
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 5200
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 16
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $imm
         i32.store $0 offset=104
        else
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=32
         local.get $25
         i32.const 2
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 5200
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 5
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $rs
         i32.store $0 offset=52
         global.get $~lib/memory/__stack_pointer
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=32
         local.get $25
         i32.const 1
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 5200
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/trimValue
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 0
         call $~lib/string/parseInt
         i32.trunc_sat_f64_s
         i32.const 5
         i32.const 2
         global.set $~argumentsLength
         global.get $shared/functions/numToBit
         i32.load $0
         call_indirect $0 (type $i32_i32_=>_i32)
         local.tee $rt
         i32.store $0 offset=56
         local.get $instruct
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=28
         local.get $25
         i32.const 3
         call $~lib/array/Array<~lib/string/String>#__get
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0
         local.get $25
         i32.const 5232
         local.set $25
         global.get $~lib/memory/__stack_pointer
         local.get $25
         i32.store $0 offset=12
         local.get $25
         i32.const 0
         call $~lib/string/String#includes
         if
          global.get $~lib/memory/__stack_pointer
          local.get $instruct
          local.set $25
          global.get $~lib/memory/__stack_pointer
          local.get $25
          i32.store $0 offset=28
          local.get $25
          i32.const 3
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $25
          global.get $~lib/memory/__stack_pointer
          local.get $25
          i32.store $0 offset=12
          local.get $25
          i32.const 2
          i32.const 1
          global.set $~argumentsLength
          i32.const 0
          call $~lib/string/String#slice@varargs
          local.set $25
          global.get $~lib/memory/__stack_pointer
          local.get $25
          i32.store $0
          local.get $25
          i32.const 16
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          i32.const 16
          i32.const 2
          global.set $~argumentsLength
          global.get $shared/functions/numToBit
          i32.load $0
          call_indirect $0 (type $i32_i32_=>_i32)
          local.tee $imm
          i32.store $0 offset=104
         else
          local.get $instruct
          local.set $25
          global.get $~lib/memory/__stack_pointer
          local.get $25
          i32.store $0 offset=12
          local.get $25
          i32.const 3
          call $~lib/array/Array<~lib/string/String>#__get
          local.set $25
          global.get $~lib/memory/__stack_pointer
          local.get $25
          i32.store $0
          local.get $25
          i32.const 0
          call $~lib/string/parseInt
          i32.trunc_sat_f64_s
          drop
          i32.const 0
          if
           local.get $mips
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0
           local.get $25
           local.get $instruct
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0 offset=28
           local.get $25
           i32.const 3
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0 offset=12
           local.get $25
           call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
           local.set $address
           global.get $~lib/memory/__stack_pointer
           local.get $address
           i32.const 16
           call $~lib/number/I32#toString
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0 offset=12
           local.get $25
           i32.const 4
           i32.const 1
           global.set $~argumentsLength
           i32.const 0
           call $~lib/string/String#slice@varargs
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0
           local.get $25
           i32.const 16
           call $~lib/string/parseInt
           i32.trunc_sat_f64_s
           i32.const 16
           i32.const 2
           global.set $~argumentsLength
           global.get $shared/functions/numToBit
           i32.load $0
           call_indirect $0 (type $i32_i32_=>_i32)
           local.tee $imm
           i32.store $0 offset=104
          else
           global.get $~lib/memory/__stack_pointer
           local.get $instruct
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0 offset=12
           local.get $25
           i32.const 3
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $25
           global.get $~lib/memory/__stack_pointer
           local.get $25
           i32.store $0
           local.get $25
           i32.const 0
           call $~lib/string/parseInt
           i32.trunc_sat_f64_s
           i32.const 16
           i32.const 2
           global.set $~argumentsLength
           global.get $shared/functions/numToBit
           i32.load $0
           call_indirect $0 (type $i32_i32_=>_i32)
           local.tee $imm
           i32.store $0 offset=104
          end
         end
        end
       end
      end
      local.get $binaryText
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      local.get $cur_inst
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=84
      local.get $25
      call $shared/types/InstT#get:op
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=76
      local.get $25
      local.get $rs
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=80
      local.get $25
      call $~lib/string/String.__concat
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=68
      local.get $25
      local.get $rt
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=72
      local.get $25
      call $~lib/string/String.__concat
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      local.get $imm
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=32
      local.get $25
      call $~lib/string/String.__concat
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/array/Array<~lib/string/String>#push
      drop
     else
      local.get $mips
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      local.get $instruct
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $assembler/assembler/MipsAssembler#findTargetSymbolAddr
      i32.const 4
      i32.div_s
      local.set $address
      local.get $binaryText
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0
      local.get $25
      local.get $cur_inst
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=68
      local.get $25
      call $shared/types/InstT#get:op
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=28
      local.get $25
      local.get $address
      i32.const 26
      i32.const 2
      global.set $~argumentsLength
      global.get $shared/functions/numToBit
      i32.load $0
      call_indirect $0 (type $i32_i32_=>_i32)
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=32
      local.get $25
      call $~lib/string/String.__concat
      local.set $25
      global.get $~lib/memory/__stack_pointer
      local.get $25
      i32.store $0 offset=12
      local.get $25
      call $~lib/array/Array<~lib/string/String>#push
      drop
     end
    end
    local.get $cur_address
    global.get $shared/constants/BYTES_PER_WORD
    i32.add
    local.set $cur_address
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $binaryText
  local.set $25
  global.get $~lib/memory/__stack_pointer
  i32.const 108
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $25
  return
 )
 (func $start:assembler/assembler~anonymous|2 (param $DATA_SEG i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $binaryData i32)
  (local $i i32)
  (local $data i32)
  (local $dataToNum i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 5424
  call $~lib/rt/__newArray
  local.tee $binaryData
  i32.store $0
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $DATA_SEG
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   call $assembler/assembler/DataSegment#get:sectionSize
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $DATA_SEG
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=8
    local.get $7
    call $assembler/assembler/DataSegment#get:dataSeg
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    local.get $i
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $data
    i32.store $0 offset=12
    local.get $data
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=16
    local.get $7
    i32.const 0
    i32.const 2
    call $~lib/string/String#slice
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    i32.const 5232
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=8
    local.get $7
    call $~lib/string/String.__eq
    if (result i32)
     local.get $data
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=8
     local.get $7
     i32.const 2
     i32.const 1
     global.set $~argumentsLength
     i32.const 0
     call $~lib/string/String#slice@varargs
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     local.get $7
     i32.const 16
     call $~lib/string/parseInt
     i32.trunc_sat_f64_s
    else
     local.get $data
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     local.get $7
     i32.const 0
     call $~lib/string/parseInt
     i32.trunc_sat_f64_s
    end
    local.set $dataToNum
    local.get $binaryData
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=4
    local.get $7
    local.get $dataToNum
    i32.const 0
    i32.const 1
    global.set $~argumentsLength
    global.get $shared/functions/numToBit
    i32.load $0
    call_indirect $0 (type $i32_i32_=>_i32)
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=8
    local.get $7
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $binaryData
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $start:assembler/assembler~anonymous|3 (param $DATA_SEG i32) (param $TEXT_SEG i32) (result i32)
  (local $binary_data_section_size i32)
  (local $binary_text_section_size i32)
  (local $4 i32)
  (local $5 i32)
  (local $sectionSizes i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $DATA_SEG
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembler/assembler/DataSegment#get:sectionSize
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  global.get $shared/functions/numToBit
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $binary_data_section_size
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $TEXT_SEG
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembler/assembler/TextSegment#get:sectionSize
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  global.get $shared/functions/numToBit
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $binary_text_section_size
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load $0 offset=4
  local.tee $5
  i32.store $0 offset=16
  local.get $4
  i32.const 0
  local.get $binary_data_section_size
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $4
  i32.const 1
  local.get $binary_text_section_size
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $4
  local.tee $sectionSizes
  i32.store $0 offset=20
  local.get $sectionSizes
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<~lib/string/String>#concat (param $this i32) (param $other i32) (result i32)
  (local $thisLen i32)
  (local $otherLen i32)
  (local $outLen i32)
  (local $out i32)
  (local $outStart i32)
  (local $thisSize i32)
  (local $thisStart i32)
  (local $offset i32)
  (local $ref i32)
  (local $otherStart i32)
  (local $otherSize i32)
  (local $offset|13 i32)
  (local $ref|14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $thisLen
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $otherLen
  local.get $thisLen
  local.get $otherLen
  i32.add
  local.set $outLen
  local.get $outLen
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2176
   i32.const 2128
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outLen
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $outStart
  local.get $thisLen
  i32.const 2
  i32.shl
  local.set $thisSize
  i32.const 1
  drop
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $thisStart
  i32.const 0
  local.set $offset
  loop $for-loop|0
   local.get $offset
   local.get $thisSize
   i32.lt_u
   if
    local.get $thisStart
    local.get $offset
    i32.add
    i32.load $0
    local.set $ref
    local.get $outStart
    local.get $offset
    i32.add
    local.get $ref
    i32.store $0
    local.get $out
    local.get $ref
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset
    i32.const 4
    i32.add
    local.set $offset
    br $for-loop|0
   end
  end
  local.get $outStart
  local.get $thisSize
  i32.add
  local.set $outStart
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $otherStart
  local.get $otherLen
  i32.const 2
  i32.shl
  local.set $otherSize
  i32.const 0
  local.set $offset|13
  loop $for-loop|1
   local.get $offset|13
   local.get $otherSize
   i32.lt_u
   if
    local.get $otherStart
    local.get $offset|13
    i32.add
    i32.load $0
    local.set $ref|14
    local.get $outStart
    local.get $offset|13
    i32.add
    local.get $ref|14
    i32.store $0
    local.get $out
    local.get $ref|14
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset|13
    i32.const 4
    i32.add
    local.set $offset|13
    br $for-loop|1
   end
  end
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $start:assembler/assembler~anonymous|4 (param $input i32) (result i32)
  (local $mips i32)
  (local $binarySize i32)
  (local $binaryText i32)
  (local $binaryData i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/make_symbol_table
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $mips
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  call $assembler/assembler/MipsAssembler#get:TEXT_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  i32.const 2
  global.set $~argumentsLength
  global.get $assembler/assembler/record_section_size
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $binarySize
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/record_text_section
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $binaryText
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/record_data_section
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $binaryData
  i32.store $0 offset=24
  local.get $binarySize
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $binaryText
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  local.get $binaryData
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=28
  local.get $5
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $start:index~anonymous|0 (param $input i32) (result i32)
  (local $mips i32)
  (local $binarySize i32)
  (local $binaryText i32)
  (local $binaryData i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/make_symbol_table
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $mips
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  call $assembler/assembler/MipsAssembler#get:TEXT_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  i32.const 2
  global.set $~argumentsLength
  global.get $assembler/assembler/record_section_size
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.tee $binarySize
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/record_text_section
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $binaryText
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $mips
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembler/assembler/MipsAssembler#get:DATA_SEG
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 1
  global.set $~argumentsLength
  global.get $assembler/assembler/record_data_section
  i32.load $0
  call_indirect $0 (type $i32_=>_i32)
  local.tee $binaryData
  i32.store $0 offset=24
  local.get $binarySize
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $binaryText
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  local.get $binaryData
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=28
  local.get $5
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/array/Array<~lib/string/String>#concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $start:shared/functions~anonymous|0@varargs (param $value i32) (param $expression i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
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
   global.get $~lib/memory/__stack_pointer
   i32.const 5200
   local.tee $expression
   i32.store $0
  end
  local.get $value
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $expression
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $start:shared/functions~anonymous|0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<shared/types/InstT>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/InstT>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/InstT>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/InstT>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/string/String%2C~lib/string/String?%29=>~lib/string/String>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/string/String%2C~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28i32%2Ci8?%29=>~lib/string/String>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<shared/types/symbolT>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/symbolT>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/symbolT>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<shared/types/symbolT>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>assembler/assembler/MipsAssembler>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28assembler/assembler/MipsAssembler%29=>~lib/array/Array<~lib/string/String>>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28assembler/assembler/DataSegment%29=>~lib/array/Array<~lib/string/String>>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28assembler/assembler/DataSegment%2Cassembler/assembler/TextSegment%29=>~lib/array/Array<~lib/string/String>>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%29=>~lib/array/Array<~lib/string/String>>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store $0
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store $0
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store $0 offset=4
  local.get $array
  local.get $bufferSize
  i32.store $0 offset=8
  local.get $array
  local.get $length
  i32.store $0 offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2384
   i32.const 2512
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 2576
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store $0
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16 $0
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
)
