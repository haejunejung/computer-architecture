//! Shared

/**
 ************************************************************* Classes *************************************************************
 */

/**
 *  InstT
 */
class InstT {
  name_: string = "";
  op_: string = "";
  type_: string = "";
  funct_: string = "";

  constructor(name: string, op: string, type: string, funct: string) {
    this.name_ = name;
    this.op_ = op;
    this.type_ = type;
    this.funct_ = funct;
  }
}

/**
 * SymbolT
 */
class SymbolT {
  name_: string = "";
  address_: i32 = 0;

  constructor(name: string, address: i32) {
    this.name_ = name;
    this.address_ = address;
  }
}

export function getName(ptr: usize): string {
  let symbol_t = changetype<SymbolT>(ptr);
  return symbol_t.name_;
}

export function getAddress(ptr: usize): i32 {
  let symbol_t = changetype<SymbolT>(ptr);
  return symbol_t.address_;
}

class SymbolTable {
  symbols_: Array<SymbolT> = new Array<SymbolT>(MAX_SYMBOL_TABLE_SIZE);
  curIndex: i32 = 0;

  addEntry(symbol: SymbolT): void {
    this.symbols_[this.curIndex] = symbol;
    this.curIndex += 1;
  }

  findTargetAddress(name: string): i32 {
    let address = 0;
    for (let i = 0; i < this.curIndex; i++) {
      if (this.symbols_[i].name_ === name) {
        address = this.symbols_[i].address_;
      }
    }

    return address;
  }
}

export function createSymbolTable(): SymbolTable {
  return new SymbolTable();
}

class DataSegment {
  dataSeg_: Array<string> = [];
  sectionSize_: i32 = 0;
}

export function createDataSegment(): DataSegment {
  return new DataSegment();
}

export function getDataSeg(ptr: usize): Array<string> {
  const dataSeg = changetype<DataSegment>(ptr);
  return dataSeg.dataSeg_;
}

class TextSegment {
  textSeg_: Array<string> = [];
  sectionSize_: i32 = 0;
}

export function createTextSegment(): TextSegment {
  return new TextSegment();
}

export function getTextSeg(ptr: usize): Array<string> {
  const textSeg = changetype<TextSegment>(ptr);
  return textSeg.textSeg_;
}

/**
 ************************************************************* Shared Functions *************************************************************
 */
function numtoBits(num: i32, pad: i8 = 32): string {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
}

function numToHexAndPad(num: i32, pad: i8 = 8): string {
  if (num < 0) {
    num = 0xffffffff + num + 1; // 음수를 양의 32비트 정수로 변환
  }

  return num.toString(16).padStart(pad, "0");
}

function customSplit(input: string, delimiters: string[]): string[] {
  const result: string[] = [];
  let currentToken = "";

  for (let i = 0; i < input.length; i++) {
    const currentChar = input.charAt(i);

    if (delimiters.includes(currentChar)) {
      if (currentToken) {
        result.push(currentToken);
        currentToken = "";
      }
    } else {
      currentToken += currentChar;
    }
  }

  if (currentToken) {
    result.push(currentToken);
  }

  return result;
}

function trimReg(value: string): i32 {
  return parseInt(value.replace("$", "").replace(",", "")) as i32;
}

function fromBinaryToNum(bits: string): i32 {
  let eq: i32 = 0;
  let m: i32 = 1;

  bits = bits.split("").reverse().join("");
  for (let i = 0; i < bits.length; i++) {
    const b: i32 = parseInt(bits.charAt(i), 10) as i32;
    eq += b * m;
    m *= 2;
  }

  return eq;
}

/**
 ************************************************************* Constants *************************************************************
 */
export const SymbolTId = idof<SymbolT>();
export const SymbolTableId = idof<SymbolTable>();
export const StringArrayId = idof<Array<string>>();
const ADD = new InstT("add", "000000", "R", "100000");
const ADDI = new InstT("addi", "001000", "I", "");
const ADDIU = new InstT("addiu", "001001", "I", "");
const ADDU = new InstT("addu", "000000", "R", "100001");
const AND = new InstT("and", "000000", "R", "100100");
const ANDI = new InstT("andi", "001100", "I", "");
const BEQ = new InstT("beq", "000100", "I", "");
const BNE = new InstT("bne", "000101", "I", "");
const J = new InstT("j", "000010", "J", "");
const JAL = new InstT("jal", "000011", "J", "");
const JR = new InstT("jr", "000000", "R", "001000");
const LHU = new InstT("lhu", "100101", "I", "");
const LUI = new InstT("lui", "001111", "I", "");
const LW = new InstT("lw", "100011", "I", "");
const NOR = new InstT("nor", "000000", "R", "100111");
const OR = new InstT("or", "000000", "R", "100101");
const ORI = new InstT("ori", "001101", "I", "");
const SLT = new InstT("slt", "000000", "R", "101010");
const SLTI = new InstT("slti", "001010", "I", "");
const SLTIU = new InstT("sltiu", "001011", "I", "");
const SLTU = new InstT("sltu", "000000", "R", "101011");
const SLL = new InstT("sll", "000000", "R", "000000");
const SRL = new InstT("srl", "000000", "R", "000010");
const SH = new InstT("sh", "101001", "I", "");
const SW = new InstT("sw", "101011", "I", "");
const SUB = new InstT("sub", "000000", "R", "100010");
const SUBU = new InstT("subu", "000000", "R", "100011");
const inst_list = [
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
const MAX_SYMBOL_TABLE_SIZE = 1024;
const MEM_TEXT_START = 0x00400000;
const MEM_DATA_START = 0x10000000;
const BYTES_PER_WORD = 4;

enum section {
  DATA = 0,
  TEXT = 1,
  MAX_SIZE = 2,
}

/**
 ************************************************************* Assembler *************************************************************
 */
export function makeSymbolTable(
  symbolTablePtr: usize,
  dataSegPtr: usize,
  textSegPtr: usize,
  input: Array<string>
): void {
  const SYMBOL_TABLE = changetype<SymbolTable>(symbolTablePtr);
  const DATA_SEG = changetype<DataSegment>(dataSegPtr);
  const TEXT_SEG = changetype<TextSegment>(textSegPtr);

  let curSection: section = section.MAX_SIZE;
  let address: i32 = 0;

  for (let i = 0; i < input.length; i++) {
    const line: string = input[i];
    const tokenLine: Array<string> = customSplit(line.trim(), [
      "\t",
      " ",
      "\n",
    ]);
    const temp: string = tokenLine[0];

    if (temp === ".data") {
      address = MEM_DATA_START;
      curSection = section.DATA;
      continue;
    }

    if (temp === ".text") {
      address = MEM_TEXT_START;
      curSection = section.TEXT;
      continue;
    }

    if (curSection === section.DATA) {
      if (temp.trim().charAt(temp.length - 1) === ":") {
        const name = temp.slice(0, temp.length - 1);
        const addr = address;
        const symbol = new SymbolT(name, addr);
        SYMBOL_TABLE.addEntry(symbol);
      }

      const word = line.includes(".word");

      if (word) {
        DATA_SEG.dataSeg_.push(`${tokenLine.slice(tokenLine.length - 1)}`);
        DATA_SEG.sectionSize_ += BYTES_PER_WORD;
      }
    }

    if (curSection === section.TEXT) {
      if (temp.trim().charAt(temp.length - 1) === ":") {
        const name = temp.slice(0, temp.length - 1);
        const addr = address;
        const symbol = new SymbolT(name, addr);
        SYMBOL_TABLE.addEntry(symbol);
        continue;
      } else {
        if (temp === "la") {
          const targetSymbolName: string = tokenLine.slice(
            tokenLine.length - 1
          )[0];
          const targetAddress =
            SYMBOL_TABLE.findTargetAddress(targetSymbolName);
          const targetHexAddress: string = numToHexAndPad(targetAddress);
          TEXT_SEG.textSeg_.push(`lui ${tokenLine[1]} ${tokenLine[2]}`);

          if (targetHexAddress.slice(4) !== "0000") {
            TEXT_SEG.sectionSize_ += BYTES_PER_WORD;
            address += BYTES_PER_WORD;
            TEXT_SEG.textSeg_.push(
              `ori ${tokenLine[1]} ${tokenLine[1]} ${tokenLine[2]}`
            );
          }
        } else if (temp === "move") {
          TEXT_SEG.textSeg_.push(`add ${tokenLine[1]} ${tokenLine[2]}, $0`);
        } else {
          TEXT_SEG.textSeg_.push(line.trim());
        }

        TEXT_SEG.sectionSize_ += BYTES_PER_WORD;
      }
    }

    address += BYTES_PER_WORD;
  }
}

export function recordSectionSize(
  textSegPtr: usize,
  dataSegPtr: usize
): Array<string> {
  const DATA_SEG = changetype<DataSegment>(dataSegPtr);
  const TEXT_SEG = changetype<TextSegment>(textSegPtr);

  const binary_text_section_size = numtoBits(TEXT_SEG.sectionSize_);
  const binary_data_section_size = numtoBits(DATA_SEG.sectionSize_);
  return [binary_text_section_size, binary_data_section_size];
}

export function recordDataSection(dataSegPtr: usize): Array<string> {
  const DATA_SEG = changetype<DataSegment>(dataSegPtr);

  const binary_data_section: Array<string> = [];

  for (let i = 0; i < DATA_SEG.dataSeg_.length; i++) {
    const data = DATA_SEG.dataSeg_[i];
    const dataToNum =
      data.slice(0, 2) === "0x"
        ? (parseInt(data.slice(2), 16) as i32)
        : (parseInt(data) as i32);
    binary_data_section.push(numtoBits(dataToNum));
  }

  return binary_data_section;
}

export function recordTextSection(
  symbolTablePtr: usize,
  textSegPtr: usize
): Array<string> {
  const SYMBOL_TABLE = changetype<SymbolTable>(symbolTablePtr);
  const TEXT_SEG = changetype<TextSegment>(textSegPtr);
  const binaryText: Array<string> = [];

  let curAddress: i32 = MEM_TEXT_START;
  let address: i32 = 0;
  let type: string;
  let rs: string;
  let rt: string;
  let rd: string;
  let imm: string;
  let shamt: string;

  for (let i = 0; i < TEXT_SEG.textSeg_.length; i++) {
    const line: string = TEXT_SEG.textSeg_[i];
    const instruct: Array<string> = line.split(" ");
    const instName: string = instruct[0];
    let curInst: InstT | null = null;

    for (let i = 0; i < inst_list.length; i++) {
      if (inst_list[i].name_ === instName) {
        curInst = inst_list[i];
        break;
      }
    }

    if (curInst !== null) {
      const name = curInst.name_;
      const type = curInst.type_;

      if (type === "R") {
        if (name === SLL.name_ || name === SRL.name_) {
          rs = numtoBits(0, 5);
          rt = numtoBits(trimReg(instruct[2]), 5);
          rd = numtoBits(trimReg(instruct[1]), 5);
          shamt = numtoBits(parseInt(instruct[3]) as i32, 5);
        } else if (name === JR.name_) {
          rs = numtoBits(trimReg(instruct[1]), 5);
          rt = numtoBits(0, 5);
          rd = numtoBits(0, 5);
          shamt = numtoBits(0, 5);
        } else {
          rs = numtoBits(trimReg(instruct[2]), 5);
          rt = numtoBits(trimReg(instruct[3]), 5);
          rd = numtoBits(trimReg(instruct[1]), 5);
          shamt = numtoBits(0, 5);
        }

        binaryText.push(curInst.op_ + rs + rt + rd + shamt + curInst.funct_);
      } else if (type === "I") {
        if (name === LUI.name_) {
          rs = numtoBits(0, 5);
          rt = numtoBits(trimReg(instruct[1]), 5);

          if (instruct[2].includes("0x")) {
            imm = numtoBits(parseInt(instruct[2].slice(2), 16) as i32, 16);
          } else if (isNaN(parseInt(instruct[2]))) {
            address = SYMBOL_TABLE.findTargetAddress(instruct[2]);
            imm = numtoBits(
              parseInt(address.toString(16).slice(0, 4), 16) as i32,
              16
            );
          } else {
            imm = numtoBits(parseInt(instruct[2]) as i32, 16);
          }
        } else if (name === BEQ.name_ || name === BNE.name_) {
          rs = numtoBits(trimReg(instruct[1]), 5);
          rt = numtoBits(trimReg(instruct[2]), 5);
          address = SYMBOL_TABLE.findTargetAddress(instruct[3]);
          imm = numtoBits((address - (curAddress + 4)) / 4, 16);
        } else if (
          name === LW.name_ ||
          name === LHU.name_ ||
          name === SW.name_ ||
          name === SH.name_
        ) {
          rs = numtoBits(
            trimReg(instruct[2].split("(")[1].split(")")[0]) as i32,
            5
          );
          rt = numtoBits(trimReg(instruct[1]), 5);
          imm = numtoBits(trimReg(instruct[2].split("(")[0]) as i32, 16);
        } else {
          rs = numtoBits(trimReg(instruct[2]), 5);
          rt = numtoBits(trimReg(instruct[1]), 5);

          if (instruct[3].includes("0x")) {
            imm = numtoBits(parseInt(instruct[3].slice(2), 16) as i32, 16);
          } else if (isNaN(parseInt(instruct[3]))) {
            address = SYMBOL_TABLE.findTargetAddress(instruct[3]);
            imm = numtoBits(
              parseInt(address.toString(16).slice(4), 16) as i32,
              16
            );
          } else {
            imm = numtoBits(parseInt(instruct[3]) as i32, 16);
          }
        }

        binaryText.push(curInst.op_ + rs + rt + imm);
      } else if (type === "J") {
        address = SYMBOL_TABLE.findTargetAddress(instruct[1]) / 4;
        binaryText.push(curInst.op_ + numtoBits(address, 26));
      }

      curAddress += BYTES_PER_WORD;
    }
  }

  return binaryText;
}

export function makeBinaryFile(
  symbolTablePtr: usize,
  dataSegPtr: usize,
  textSegPtr: usize,
  input: Array<string>
): Array<string> {
  makeSymbolTable(symbolTablePtr, dataSegPtr, textSegPtr, input);
  const binarySize: Array<string> = recordSectionSize(textSegPtr, dataSegPtr);
  const binaryText: Array<string> = recordTextSection(
    symbolTablePtr,
    textSegPtr
  );
  const binaryData: Array<string> = recordDataSection(dataSegPtr);

  return binarySize.concat(binaryText.concat(binaryData));
}

/**
 ************************************************************* Parser *************************************************************
 */
const MEM_TEXT_SIZE: i32 = 0x00100000;
const MEM_DATA_SIZE: i32 = 0x00100000;
const MEM_STACK_START: i32 = 0x80000000;
const MEM_STACK_SIZE: i32 = 0x00100000;
const MIPS_REGS: u8 = 32;
const MEM_GROW_UP: i8 = 1;
const MEM_GROW_DOWN: i8 = -1;
const INT_MAX: i32 = 2147483647;
const UINT_MAX: u32 = 4294967295;

class Instruction {
  opcode_: i8 = 0;
  funcCode_: i8 = 0;
  value_: u32 = 0;
  target_: u32 = 0;
  rs_: u8 = 0;
  rt_: u8 = 0;
  rd_: u8 = 0;
  imm_: i8 = 0;
  shamt_: u8 = 0;
}

class cpuState {
  pc_: i32 = 0;
  regs_: Array<i32> = new Array<i32>(MIPS_REGS).fill(0);

  constructor() {
    this.regs_[29] = MEM_STACK_START;
  }
}

class MemRegionT {
  start_: i32 = 0;
  size_: i32 = 0;
  mem_: Array<i32> = [];
  offBound_: i32 = 0;
  type_: i8 = 0;
  dirty_: boolean = false;

  constructor(start: i32, size: i32, type: i8 = MEM_GROW_UP) {
    this.start_ = start;
    this.size_ = size;
    this.offBound_ = -(size - 4) * type;
    this.type_ = type;
  }

  setOffBound(off: i32): void {
    this.dirty_ = true;
    if ((this.type_ = MEM_GROW_UP)) {
      this.offBound_ = Math.max(off, this.offBound_) as i32;
    } else {
      this.offBound_ = Math.min(off, this.offBound_) as i32;
    }
  }
}

class ComputerSystem {
  PC_: string = "0x00400000";
  REGS_: Map<string, string> = new Map<string, string>();
  dataSection_: Map<string, string> = new Map<string, string>();
  stackSection_: Map<string, string> = new Map<string, string>();
}

export function createComputerSystem(): ComputerSystem {
  return new ComputerSystem();
}

class MIPS {
  memRegions_: Array<MemRegionT>;
  runBit_: boolean = true;
  instInfos_: Array<Instruction> = new Array<Instruction>(1024);
  currentState_: cpuState = new cpuState();
  textSize_: i32 = 0;
  dataSize_: i32 = 0;

  constructor() {
    const memText = new MemRegionT(MEM_TEXT_START, MEM_TEXT_SIZE);
    const memData = new MemRegionT(MEM_DATA_START, MEM_DATA_SIZE);
    const memStack = new MemRegionT(
      MEM_STACK_START - MEM_STACK_SIZE,
      MEM_STACK_SIZE,
      MEM_GROW_DOWN
    );

    this.memRegions_ = [memText, memData, memStack];
    this.currentState_.pc_ = MEM_TEXT_START;
  }
}

export function createMIPS(): MIPS {
  return new MIPS();
}

export function getTextSize(ptr: usize): i32 {
  const mips = changetype<MIPS>(ptr);
  return mips.textSize_;
}

export function getDataSize(ptr: usize): i32 {
  const mips = changetype<MIPS>(ptr);
  return mips.dataSize_;
}

export function getCycles(
  csPtr: usize,
  mipsPtr: usize,
  input: string,
  numCycles: i32 = 10000
): Array<string> {
  const mips = changetype<MIPS>(mipsPtr);
  const cs = changetype<MIPS>(csPtr);
  initInstr(mips, input);

  const cycles: Array<string> = [];
  for (let i = 0; i < numCycles; i++) {
    if (mips.runBit_ === false) {
      break;
    }
  }

  return cycles;
}

function initInstr(mips: MIPS, input: string): void {
  const textSize: i32 = fromBinaryToNum(input.slice(0, 32));
  const dataSize: i32 = fromBinaryToNum(input.slice(32, 64));
  mips.textSize_ = textSize;
  mips.dataSize_ = dataSize;
  const bufferCount: i32 = input.length >> 5;
  let readStart: i32 = 64;
  let ii: i32 = 0;

  for (let i = 0; i < bufferCount; i++) {
    const buffer = input.slice(readStart, readStart + 32);
    if (ii < textSize) {
      mips.instInfos_[i] = makeInstr(buffer);
      parseText(mips.memRegions_, buffer, ii);
    } else if (ii < textSize + dataSize) {
      parseData(mips.memRegions_, buffer, ii - textSize);
    }

    ii += 4;
    readStart += 32;
  }
}

function makeInstr(buffer: string): Instruction {
  const instr: Instruction = new Instruction();

  instr.opcode_ = fromBinaryToNum(buffer.slice(0, 6)) as i8;

  if (instr.opcode_ === 0x0) {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11)) as u8;
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16)) as u8;
    instr.rd_ = fromBinaryToNum(buffer.slice(16, 21)) as u8;
    instr.shamt_ = fromBinaryToNum(buffer.slice(21, 26)) as u8;
    instr.funcCode_ = fromBinaryToNum(buffer.slice(26, 32)) as i8;
  } else if (instr.opcode_ === 0x2 || instr.opcode_ === 0x3) {
    instr.target_ = fromBinaryToNum(buffer.slice(6, 32)) as u32;
  } else {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11)) as u8;
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16)) as u8;
    instr.imm_ = fromBinaryToNum(buffer.slice(16, 32)) as i8;
  }

  return instr;
}

function parseText(
  memRegions: Array<MemRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_TEXT_START + index, fromBinaryToNum(buffer));
}

function parseData(
  memRegions: Array<MemRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_DATA_START + index, fromBinaryToNum(buffer));
}

function memRead(memRegions: Array<MemRegionT>, address: i32): i32 {
  let ret = 0;
  for (let i = 0; i < memRegions.length; i++) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;
      ret =
        (memRegions[i].mem_[offset + 3] << 24) |
        (memRegions[i].mem_[offset + 2] << 16) |
        (memRegions[i].mem_[offset + 1] << 8) |
        (memRegions[i].mem_[offset + 0] << 0);
    }
  }

  return ret;
}

function memWrite(
  memRegions: Array<MemRegionT>,
  address: i32,
  value: i32
): void {
  for (let i = 0; i < memRegions.length; i++) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;

      memRegions[i].mem_[offset + 3] = (value >> 24) & 0xff;
      memRegions[i].mem_[offset + 2] = (value >> 16) & 0xff;
      memRegions[i].mem_[offset + 1] = (value >> 8) & 0xff;
      memRegions[i].mem_[offset + 0] = (value >> 0) & 0xff;

      memRegions[i].setOffBound(offset + 4);
      break;
    }
  }
}

function memWriteHalf(
  memRegions: Array<MemRegionT>,
  address: i32,
  value: i32
): void {
  for (let i = 0; i < memRegions.length; i++) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;
      memRegions[i].mem_[offset + 1] = (value >> 8) & 0xff;
      memRegions[i].mem_[offset + 0] = (value >> 0) & 0xff;
      memRegions[i].setOffBound(offset + 2);
    }
  }
}
