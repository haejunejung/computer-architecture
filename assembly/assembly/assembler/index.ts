/**
 * types
 */

class InstT {
  private _name: string;
  private _op: string;
  private _type: string;
  private _funct: string;

  get name(): string {
    return this._name;
  }

  get op(): string {
    return this._op;
  }

  get type(): string {
    return this._type;
  }

  get funct(): string {
    return this._funct;
  }

  constructor(
    name: string = "",
    op: string = "",
    type: string = "",
    funct: string = ""
  ) {
    this._name = name;
    this._op = op;
    this._type = type;
    this._funct = funct;
  }
}

class symbolT {
  private _name: string;
  private _address: i32;

  get name(): string {
    return this._name;
  }

  set name(n: string) {
    this._name = n;
  }

  get address(): i32 {
    return this._address;
  }

  set address(addr: i32) {
    this._address = addr;
  }

  constructor(name: string = "", address: i32 = 0) {
    this._name = name;
    this._address = address;
  }
}

class SymbolTable {
  symbols: symbolT[];
  curIndex: i32;

  constructor(symbols: symbolT[], curIndex: i32) {
    this.symbols = symbols;
    this.curIndex = curIndex;
  }
}

class DataSegment {
  dataSeg: string[];
  sectionSize: i32;

  constructor(dataSeg: string[], sectionSize: i32) {
    this.dataSeg = dataSeg;
    this.sectionSize = sectionSize;
  }
}

class TextSegment {
  textSeg: string[];
  sectionSize: i32;

  constructor(textSeg: string[], sectionSize: i32) {
    this.textSeg = textSeg;
    this.sectionSize = sectionSize;
  }
}

class MipsAssembler {
  private _SYMBOL_TABLE: SymbolTable;
  private _DATA_SEG: DataSegment;
  private _TEXT_SEG: TextSegment;

  constructor() {
    const symbols: symbolT[] = new Array<symbolT>(MAX_SYMBOL_TABLE_SIZE);
    const curIndex: i32 = 0;
    const dataSeg: string[] = [];
    const dataSectionSize: i32 = 0;
    const textSeg: string[] = [];
    const textSectionSize: i32 = 0;

    for (let i = 0; i < MAX_SYMBOL_TABLE_SIZE; i++) {
      symbols[i] = new symbolT();
    }

    this._SYMBOL_TABLE = new SymbolTable(symbols, curIndex);
    this._DATA_SEG = new DataSegment(dataSeg, dataSectionSize);
    this._TEXT_SEG = new TextSegment(textSeg, textSectionSize);
  }

  get SYMBOL_TABLE(): SymbolTable {
    return this._SYMBOL_TABLE;
  }
  get DATA_SEG(): DataSegment {
    return this._DATA_SEG;
  }
  get TEXT_SEG(): TextSegment {
    return this._TEXT_SEG;
  }

  set SYMBOL_TABLE(SYMBOL_TABLE: SymbolTable) {
    this._SYMBOL_TABLE = SYMBOL_TABLE;
  }
  set DATA_SEG(DATA_SEG: DataSegment) {
    this._DATA_SEG = DATA_SEG;
  }
  set TEXT_SEG(TEXT_SEG: TextSegment) {
    this._TEXT_SEG = TEXT_SEG;
  }

  symbolTableAddEntry(symbol: symbolT): void {
    this.SYMBOL_TABLE.symbols[this.SYMBOL_TABLE.curIndex] = symbol;
    this.SYMBOL_TABLE.curIndex += 1;
  }

  findTargetSymbolAddr(name: string): i32 {
    let address: i32 = 0;
    for (let i = 0; i < this.SYMBOL_TABLE.curIndex; i++) {
      if (this.SYMBOL_TABLE.symbols[i].name === name) {
        address = this.SYMBOL_TABLE.symbols[i].address;
      }
    }

    return address;
  }
}

/**
 * constants
 */

const MAX_SYMBOL_TABLE_SIZE: i16 = 1024;
const MEM_TEXT_START: i32 = 0x00400000;
const MEM_DATA_START: i32 = 0x10000000;
const BYTES_PER_WORD: i8 = 4;

/**
 * instructions
 */
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
const INST_LIST = [
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
enum section {
  DATA = 0,
  TEXT = 1,
  MAX_SIZE = 2,
}

/**
 * functions
 */

function trimValue(value: string, expressions: string[] = ["$", ","]): string {
  let start = 0;
  let end = value.length;

  for (let i = 0; i < value.length; i++) {
    for (let j = 0; j < expressions.length; j++) {
      if (value.charAt(i) === expressions[j]) {
        start = i;
      } else {
        break;
      }
    }
  }

  for (let i = value.length - 1; i >= 0; i--) {
    for (let j = 0; j < expressions.length; j++) {
      if (value.charAt(i) === expressions[j]) {
        end = i;
      } else {
        break;
      }
    }
  }

  return value.substring(start, end);
}

function customSplit(input: string, delimiters: string[]): string[] {
  let tokens: string[] = [];
  let currentToken: string[] = [];

  for (let i = 0; i < input.length; i++) {
    if (delimiters.includes(input.charAt(i))) {
      if (currentToken.length > 0) {
        tokens.push(currentToken.join(""));
        currentToken = [];
      }
    } else {
      currentToken.push(input.charAt(i));
    }
  }

  if (currentToken.length > 0) {
    tokens.push(currentToken.join(""));
  }

  return tokens;
}

function numToBit(num: i32, pad: i8 = 32): string {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
}

function numToHex(num: i32, pad: i8 = 8): string {
  return num.toString(16).padStart(pad, "0");
}

function makeSymbolTable(input: string[]): MipsAssembler {
  const mips = new MipsAssembler();

  let cur_section: section = section.MAX_SIZE;
  let address: i32 = 0;

  for (let i = 0; i < input.length; i++) {
    const line: string = input[i];
    const tokenLine: string[] = customSplit(trimValue(line, ["\n", "\t"]), [
      " ",
      "\t",
      "\n",
    ]);
    const temp: string = tokenLine[0];

    if (temp === ".data") {
      address = MEM_DATA_START;
      cur_section = section.DATA;
      continue;
    }

    if (temp === ".text") {
      address = MEM_TEXT_START;
      cur_section = section.TEXT;
      continue;
    }

    if ((cur_section as section) === section.DATA) {
      if (trimValue(temp, ["\n"]).slice(-1) === ":") {
        const symbol = new symbolT();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        mips.symbolTableAddEntry(symbol);
      }

      const word = line.includes(".word");

      if (word) {
        mips.DATA_SEG.dataSeg.push(`${tokenLine.slice(-1)}`);
        mips.DATA_SEG.sectionSize += BYTES_PER_WORD;
      }
    }

    if ((cur_section as section) === section.TEXT) {
      if (trimValue(temp, ["\n"]).slice(-1) === ":") {
        const symbol = new symbolT();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        mips.symbolTableAddEntry(symbol);
        continue;
      } else {
        if (temp === "la") {
          const targetSymbolName: string = tokenLine.slice(-1)[0];
          const targetAddress = mips.findTargetSymbolAddr(targetSymbolName);
          const targetHexAddress: string = numToHex(targetAddress);

          mips.TEXT_SEG.textSeg.push(`lui ${tokenLine[1]} ${tokenLine[2]}`);

          if (targetHexAddress.slice(4) !== "0000") {
            mips.TEXT_SEG.sectionSize += BYTES_PER_WORD;
            address += BYTES_PER_WORD;
            mips.TEXT_SEG.textSeg.push(
              `ori ${tokenLine[1]} ${tokenLine[1]} ${tokenLine[2]}`
            );
          }
        } else if (temp === "move") {
          mips.TEXT_SEG.textSeg.push(`add ${tokenLine[1]} ${tokenLine[2]}, $0`);
        } else {
          mips.TEXT_SEG.textSeg.push(
            trimValue(line, ["\n", "\t"]).replace("\t", " ")
          );
        }

        mips.TEXT_SEG.sectionSize += BYTES_PER_WORD;
      }
    }
    address += BYTES_PER_WORD;
  }
  return mips;
}

function recordSectionSize(
  DATA_SEG: DataSegment,
  TEXT_SEG: TextSegment
): string[] {
  const binary_text_section_size = numToBit(TEXT_SEG.sectionSize);
  const binary_data_section_size = numToBit(DATA_SEG.sectionSize);
  const sectionSizes = [binary_text_section_size, binary_data_section_size];

  return sectionSizes;
}

function recordDataSection(DATA_SEG: DataSegment): string[] {
  const binaryData: string[] = [];

  for (let i = 0; i < DATA_SEG.dataSeg.length; i++) {
    const data = DATA_SEG.dataSeg[i];
    if (data.slice(0, 2) === "0x") {
      binaryData.push(numToBit(parseInt(data.slice(2), 16) as i32));
    } else {
      binaryData.push(numToBit(parseInt(data) as i32));
    }
  }

  return binaryData;
}

function recordTextSection(
  mips: MipsAssembler,
  TEXT_SEG: TextSegment
): string[] {
  const binaryText: string[] = [];

  let curAddress: i32 = MEM_TEXT_START;
  let address: i32 = 0;
  let rs: string;
  let rt: string;
  let rd: string;
  let imm: string;
  let shamt: string;

  for (let i = 0; i < TEXT_SEG.textSeg.length; i++) {
    const line: string = TEXT_SEG.textSeg[i];
    const instruct: string[] = customSplit(line, [" "]);
    const instName: string = instruct[0];

    let curInst: InstT = new InstT();
    for (let i = 0; i < INST_LIST.length; i++) {
      if (instName === INST_LIST[i].name) {
        curInst = INST_LIST[i];
        break;
      }
    }

    const name: string = curInst.name;
    const type: string = curInst.type;

    if (type === "R") {
      if (name === SLL.name || name === SRL.name) {
        rs = numToBit(0, 5);
        rt = numToBit(parseInt(trimValue(instruct[2])) as i32, 5);
        rd = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);
        shamt = numToBit(parseInt(instruct[3]) as i32, 5);
      } else if (name === JR.name) {
        rs = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);
        rt = numToBit(0, 5);
        rd = numToBit(0, 5);
        shamt = numToBit(0, 5);
      } else {
        rs = numToBit(parseInt(trimValue(instruct[2])) as i32, 5);
        rt = numToBit(parseInt(trimValue(instruct[3])) as i32, 5);
        rd = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);
        shamt = numToBit(0, 5);
      }

      binaryText.push(curInst.op + rs + rt + rd + shamt + curInst.funct);
    } else if (type === "I") {
      if (name === LUI.name) {
        rs = numToBit(0, 5);
        rt = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);

        if (instruct[2].includes("0x")) {
          imm = numToBit(parseInt(instruct[2].slice(2), 16) as i32, 16);
        } else {
          imm = numToBit(parseInt(instruct[2]) as i32, 16);
        }
      } else if (name === BEQ.name || name === BNE.name) {
        rs = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);
        rt = numToBit(parseInt(trimValue(instruct[2])) as i32, 5);
        address = mips.findTargetSymbolAddr(instruct[3]);
        imm = numToBit(address - (curAddress + 4) / 4, 16);
      } else if (
        name === LW.name ||
        name === LHU.name ||
        name === SW.name ||
        name === SH.name
      ) {
        rs = numToBit(
          parseInt(trimValue(instruct[2].split("(")[1].split(")")[0])) as i32,
          5
        );
        rt = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);
        imm = numToBit(
          parseInt(trimValue(instruct[2].split("(")[0])) as i32,
          16
        );
      } else {
        rs = numToBit(parseInt(trimValue(instruct[2])) as i32, 5);
        rt = numToBit(parseInt(trimValue(instruct[1])) as i32, 5);

        if (instruct[3].includes("0x")) {
          imm = numToBit(parseInt(instruct[3].slice(2), 16) as i32, 16);
        } else {
          imm = numToBit(parseInt(instruct[3]) as i32, 16);
        }
      }

      binaryText.push(curInst.op + rs + rt + imm);
    } else if (type === "J") {
      address = mips.findTargetSymbolAddr(instruct[1]) / 4;
      binaryText.push(curInst.op + numToBit(address, 16));
    }

    curAddress += BYTES_PER_WORD;
  }

  return binaryText;
}

export function makeBinaryFile(input: string[]): string[] {
  const mips = makeSymbolTable(input);
  const binarySize = recordSectionSize(mips.DATA_SEG, mips.TEXT_SEG);
  const binaryData = recordDataSection(mips.DATA_SEG);
  const binaryText = recordTextSection(mips, mips.TEXT_SEG);

  return binarySize.concat(binaryText.concat(binaryData));
}
