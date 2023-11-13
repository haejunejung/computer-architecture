//! Shared

//! Assembler
function numtoBits(num: i32, pad: i8 = 32): string {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
}

class instT {
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

export const StringArrayId = idof<Array<string>>();

export const SymbolTableId = idof<SymbolTable>();

export const SymbolTId = idof<SymbolT>();

enum section {
  DATA = 0,
  TEXT = 1,
  MAX_SIZE = 2,
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

const MAX_SYMBOL_TABLE_SIZE = 1024;
const MEM_TEXT_START = 0x00400000;
const MEM_DATA_START = 0x10000000;
const BYTES_PER_WORD = 4;

function num_to_hex_and_pad(num: i32, pad: i8 = 8): string {
  return num.toString(16).padStart(pad, "0");
}

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
          const targetHexAddress: string = num_to_hex_and_pad(targetAddress);
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

export function symbol(symbol: SymbolT): string {
  return symbol.name_;
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

const ADD = new instT("add", "000000", "R", "100000");
const ADDI = new instT("addi", "001000", "I", "");
const ADDIU = new instT("addiu", "001001", "I", "");
const ADDU = new instT("addu", "000000", "R", "100001");
const AND = new instT("and", "000000", "R", "100100");
const ANDI = new instT("andi", "001100", "I", "");
const BEQ = new instT("beq", "000100", "I", "");
const BNE = new instT("bne", "000101", "I", "");
const J = new instT("j", "000010", "J", "");
const JAL = new instT("jal", "000011", "J", "");
const JR = new instT("jr", "000000", "R", "001000");
const LHU = new instT("lhu", "100101", "I", "");
const LUI = new instT("lui", "001111", "I", "");
const LW = new instT("lw", "100011", "I", "");
const NOR = new instT("nor", "000000", "R", "100111");
const OR = new instT("or", "000000", "R", "100101");
const ORI = new instT("ori", "001101", "I", "");
const SLT = new instT("slt", "000000", "R", "101010");
const SLTI = new instT("slti", "001010", "I", "");
const SLTIU = new instT("sltiu", "001011", "I", "");
const SLTU = new instT("sltu", "000000", "R", "101011");
const SLL = new instT("sll", "000000", "R", "000000");
const SRL = new instT("srl", "000000", "R", "000010");
const SH = new instT("sh", "101001", "I", "");
const SW = new instT("sw", "101011", "I", "");
const SUB = new instT("sub", "000000", "R", "100010");
const SUBU = new instT("subu", "000000", "R", "100011");

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
    let curInst: instT | null = null;

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

export function trimReg(value: string): i32 {
  return parseInt(value.replace("$", "").replace(",", "")) as i32;
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

//! Parser
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
const MEM_TEXT_SIZE: i32 = 0x00100000;
const MEM_DATA_SIZE: i32 = 0x00100000;
const MEM_STACK_START: i32 = 0x80000000;
const MEM_STACK_SIZE: i32 = 0x00100000;
const MIPS_REGS: u8 = 32;
const MEM_GROW_UP: i8 = 1;
const MEM_GROW_DOWN: i8 = -1;
const INT_MAX: i32 = 2147483647;
const UINT_MAX: u32 = 4294967295;

class Register {
  regs_: Map<string, string>;

  constructor() {
    this.regs_ = new Map<string, string>();
    this.regs_.set("R0", "0x00000000");
    this.regs_.set("R1", "0x00001000");
  }
}

class MemorySection {
  dataSection_: Map<string, string>;
  stackSection_: Map<string, string>;

  constructor() {
    this.dataSection_ = new Map<string, string>();
    this.stackSection_ = new Map<string, string>();
  }
}

class computerSystem {
  PC_: string = "0x0040000";
  REGS_: Register = new Register();
  MEMS_: MemorySection = new MemorySection();
}

export function createComputerSystem(): computerSystem {
  return new computerSystem();
}

class memRegionT {
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

//TODO type
class instruction {
  opcode_: i32 = 0;
  funcCode_: i32 = 0;
  value_: i32 = 0;
  target_: i32 = 0;
  rs_: i32 = 0;
  rt_: i32 = 0;
  rd_: i32 = 0;
  imm_: i32 = 0;
  shamt_: i32 = 0;
}

class MIPS {
  memRegions_: Array<memRegionT>;
  runBit_: boolean = true;
  instInfos_: Array<instruction> = new Array<instruction>(1024); //!
  currentState_: cpuState;
  textSize_: i32 = 0;
  dataSize_: i32 = 0;
  constructor() {
    const memText: memRegionT = new memRegionT(MEM_TEXT_START, MEM_TEXT_SIZE);
    const memData: memRegionT = new memRegionT(MEM_DATA_START, MEM_DATA_SIZE);
    const memStack: memRegionT = new memRegionT(
      MEM_STACK_START - MEM_STACK_SIZE,
      MEM_STACK_SIZE,
      MEM_GROW_DOWN
    );

    this.memRegions_ = [memText, memData, memStack];
    this.currentState_ = new cpuState();
    this.currentState_.pc_ = MEM_TEXT_START;
  }
}

class cpuState {
  pc_: i32 = 0;
  regs_: Array<number> = new Array<number>(MIPS_REGS).fill(0);

  constructor() {
    this.regs_[29] = MEM_STACK_START;
  }
}

export function getcpuPC(ptr: usize): i32 {
  const mips = changetype<MIPS>(ptr);
  return mips.currentState_.pc_;
}

export function createMIPS(): MIPS {
  return new MIPS();
}

export function getTextSize(ptr: usize): i32 {
  const mips = changetype<MIPS>(ptr);
  return mips.textSize_;
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

function makeInstr(buffer: string): instruction {
  const instr: instruction = new instruction();

  instr.opcode_ = fromBinaryToNum(buffer.slice(0, 6));

  if (instr.opcode_ === 0x0) {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11));
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16));
    instr.rd_ = fromBinaryToNum(buffer.slice(16, 21));
    instr.shamt_ = fromBinaryToNum(buffer.slice(21, 26));
    instr.funcCode_ = fromBinaryToNum(buffer.slice(26, 32));
  } else if (instr.opcode_ === 0x2 || instr.opcode_ === 0x3) {
    instr.target_ = fromBinaryToNum(buffer.slice(6, 32));
  } else {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11));
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16));
    instr.imm_ = fromBinaryToNum(buffer.slice(16, 32));
  }

  return instr;
}

function memWrite(
  memRegions: Array<memRegionT>,
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
  memRegions: Array<memRegionT>,
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

function parseText(
  memRegions: Array<memRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_TEXT_START + index, fromBinaryToNum(buffer));
}

function parseData(
  memRegions: Array<memRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_DATA_START + index, fromBinaryToNum(buffer));
}

export function initInstr(ptr: usize, input: string): void {
  const mips = changetype<MIPS>(ptr);
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

export function getCycles(
  csPtr: usize,
  mipsPtr: usize,
  num_cycles: i32 = 10000
): Array<string> {
  const cs = changetype<computerSystem>(csPtr);
  const mips = changetype<MIPS>(mipsPtr);
  const cycles: Array<string> = [];

  for (let i = 0; i < num_cycles; i++) {
    const pc = getPC(csPtr);
    const regs = getRegs(csPtr);
    const dataSection = getDataSection(csPtr);
    const stackSection = getStackSection(csPtr);

    cycles.push(
      `.pc${pc}.regs${regs}.dataSection${dataSection}.stackSection${stackSection}`
    );
  }
  return cycles;
}

export function getPC(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  return cs.PC_;
}

function numToHexAndPad(num: i32, pad: i8 = 8): string {
  if (num < 0) {
    num = 0xffffffff + num + 1; // 음수를 양의 32비트 정수로 변환
  }

  return num.toString(16).padStart(pad, "0");
}

function getInstInfo(mips: MIPS, pc: i32): instruction {
  return mips.instInfos_[(pc - MEM_TEXT_START) >> 2];
}

function getRegVal(val: i32): i32 {
  if (val > INT_MAX) {
    return (val & 0xffffffff) - UINT_MAX - 1;
  } else {
    return val;
  }
}

function signEx(x: i32): i32 {
  if (x & 0x8000) {
    return x | 0xffff0000;
  } else {
    return x;
  }
}

function zeroEx(x: i32): i32 {
  return x & 0x0000ffff;
}

export function getRegs(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.REGS_.regs_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.REGS_.regs_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

export function getDataSection(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.MEMS_.dataSection_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.MEMS_.dataSection_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

export function getStackSection(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.MEMS_.stackSection_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.MEMS_.stackSection_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

function processInstruction(mips: MIPS): void {
  const info = getInstInfo(mips, mips.currentState_.pc_);
  const opcode = info.opcode_;
  const rs = info.rs_;
  const rt = info.rt_;
  const rd = info.rd_;
  const imm = info.imm_;
  const shamt = info.shamt_;
  const funcCode = info.funcCode_;
  const target = info.target_;

  if (opcode === 0x0) {
    RType(mips, rs, rt, rd, shamt, funcCode);
  } else if (opcode === 0x2 || opcode === 0x3) {
    JType(mips, opcode, target);
  } else {
    IType(mips, opcode, rs, rt, imm);
  }

  if (mips.currentState_.pc_ - MEM_TEXT_START === mips.textSize_) {
    mips.runBit_ = false;
  }
}

function RType(
  mips: MIPS,
  rs: i32,
  rt: i32,
  rd: i32,
  shamt: i32,
  funcCode: i32
): void {
  if (funcCode === 0) {
    mips.currentState_.regs_[rd] = mips.currentState_.regs_[rt] << shamt;
  } else if (funcCode === 2) {
    mips.currentState_.regs_[rd] = mips.currentState_.regs_[rt] >> shamt;
  } else if (funcCode === 8) {
    mips.currentState_.pc_ = mips.currentState_.regs_[rs];
  } else if (funcCode === 32) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) +
      getRegVal(mips.currentState_.regs_[rt]);
  } else if (funcCode === 33) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] + mips.currentState_.regs_[rt];
  } else if (funcCode === 34) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) -
      getRegVal(mips.currentState_.regs_[rt]);
  } else if (funcCode === 35) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] - mips.currentState_.regs_[rt];
  } else if (funcCode === 36) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] & mips.currentState_.regs_[rt];
  } else if (funcCode === 37) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] | mips.currentState_.regs_[rt];
  } else if (funcCode === 39) {
    mips.currentState_.regs_[rd] = ~(
      mips.currentState_.regs_[rs] | mips.currentState_.regs_[rt]
    );
  } else if (funcCode === 42) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) <
      getRegVal(mips.currentState_.regs_[rt])
        ? 1
        : 0;
  } else if (funcCode === 43) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] < mips.currentState_.regs_[rt] ? 1 : 0;
  }

  if (funcCode !== 8) {
    mips.currentState_.pc_ += BYTES_PER_WORD;
  }
}

function loadInst(load: i32, mask: i32): i32 {
  return load & mask;
}

function JType(mips: MIPS, op: i32, target: i32): void {
  if (op === 0x2) {
    mips.currentState_.pc_ = target << 2;
  } else if (op === 0x3) {
    mips.currentState_.regs_[31] = mips.currentState_.pc_ + 8;
    mips.currentState_.pc_ = target << 2;
  }
}

function IType(mips: MIPS, op: i32, rs: i32, rt: i32, imm: i32): void {
  if (op === 0x8) {
    mips.currentState_.regs_[rt] =
      getRegVal(mips.currentState_.regs_[rs]) + signEx(imm);
  } else if (op === 0x9) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] + signEx(imm);
  } else if (op === 0xc) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] & zeroEx(imm);
  } else if (op === 0x4) {
    if (mips.currentState_.regs_[rs] === mips.currentState_.regs_[rt]) {
      mips.currentState_.pc_ += imm * 4;
    }
  } else if (op === 0x5) {
    if (mips.currentState_.regs_[rs] !== mips.currentState_.regs_[rt]) {
      mips.currentState_.pc_ += imm * 4;
    }
  } else if (op === 0x25) {
    mips.currentState_.regs_[rt] = loadInst(
      memRead(mips.memRegions_, mips.currentState_.regs_[rs] + signEx(imm)),
      0x0000ffff
    );
  } else if (op === 0xf) {
    mips.currentState_.regs_[rt] = imm << 16;
  } else if (op === 0x23) {
    mips.currentState_.regs_[rt] = memRead(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm)
    );
  } else if (op === 0xd) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] | zeroEx(imm);
  } else if (op === 0xa) {
    if (getRegVal(mips.currentState_.regs_[rs]) < signEx(imm)) {
      mips.currentState_.regs_[rt] = 1;
    } else {
      mips.currentState_.regs_[rt] = 0;
    }
  } else if (op === 0xb) {
    if (mips.currentState_.regs_[rs] < signEx(imm)) {
      mips.currentState_.regs_[rt] = 1;
    } else {
      mips.currentState_.regs_[rt] = 0;
    }
  } else if (op === 0x29) {
    memWriteHalf(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm),
      mips.currentState_.regs_[rt]
    );
  } else if (op === 0x2b) {
    memWrite(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm),
      mips.currentState_.regs_[rt]
    );
  }

  mips.currentState_.pc_ += BYTES_PER_WORD;
}

function memRead(memRegions: Array<memRegionT>, address: i32): i32 {
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

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
