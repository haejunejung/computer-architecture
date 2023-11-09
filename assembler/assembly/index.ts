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
