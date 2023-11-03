import { InstT } from "./types";

/**
 * constants
 */
export const MAX_SYMBOL_TABLE_SIZE: i16 = 1024;
export const MEM_TEXT_START: i32 = 0x00400000;
export const MEM_DATA_START: i32 = 0x10000000;
export const BYTES_PER_WORD: i8 = 4;

/**
 * instructions
 */
export const ADD = new InstT("add", "000000", "R", "100000");
export const ADDI = new InstT("addi", "001000", "I", "");
export const ADDIU = new InstT("addiu", "001001", "I", "");
export const ADDU = new InstT("addu", "000000", "R", "100001");
export const AND = new InstT("and", "000000", "R", "100100");
export const ANDI = new InstT("andi", "001100", "I", "");
export const BEQ = new InstT("beq", "000100", "I", "");
export const BNE = new InstT("bne", "000101", "I", "");
export const J = new InstT("j", "000010", "J", "");
export const JAL = new InstT("jal", "000011", "J", "");
export const JR = new InstT("jr", "000000", "R", "001000");
export const LHU = new InstT("lhu", "100101", "I", "");
export const LUI = new InstT("lui", "001111", "I", "");
export const LW = new InstT("lw", "100011", "I", "");
export const NOR = new InstT("nor", "000000", "R", "100111");
export const OR = new InstT("or", "000000", "R", "100101");
export const ORI = new InstT("ori", "001101", "I", "");
export const SLT = new InstT("slt", "000000", "R", "101010");
export const SLTI = new InstT("slti", "001010", "I", "");
export const SLTIU = new InstT("sltiu", "001011", "I", "");
export const SLTU = new InstT("sltu", "000000", "R", "101011");
export const SLL = new InstT("sll", "000000", "R", "000000");
export const SRL = new InstT("srl", "000000", "R", "000010");
export const SH = new InstT("sh", "101001", "I", "");
export const SW = new InstT("sw", "101011", "I", "");
export const SUB = new InstT("sub", "000000", "R", "100010");
export const SUBU = new InstT("subu", "000000", "R", "100011");
export const INST_LIST = [
  ADD,
  ADDI,
  ADDIU,
  ADDU,
  AND,
  ANDI,
  BEQ,
  BNE,
  J,
  JAL,
  JR,
  LHU,
  LUI,
  LW,
  NOR,
  OR,
  ORI,
  SLT,
  SLTI,
  SLTIU,
  SLTU,
  SLL,
  SRL,
  SH,
  SW,
  SUB,
  SUBU,
];

/**
 * section
 */
export enum section {
  DATA = 0,
  TEXT = 1,
  MAX_SIZE = 2,
}
