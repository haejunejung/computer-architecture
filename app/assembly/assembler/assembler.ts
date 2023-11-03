import {
  BEQ,
  BNE,
  BYTES_PER_WORD,
  INST_LIST,
  JR,
  LHU,
  LUI,
  LW,
  MAX_SYMBOL_TABLE_SIZE,
  MEM_DATA_START,
  MEM_TEXT_START,
  SH,
  SLL,
  SRL,
  SW,
  section,
} from "../shared/constants";
import {
  customSplit,
  numToBit,
  numToHex,
  trimValue,
} from "../shared/functions";
import { InstT, symbolT } from "../shared/types";

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

export const make_symbol_table = (input: string[]): MipsAssembler => {
  const mips = new MipsAssembler();
  const DATA_SEG = mips.DATA_SEG;
  const TEXT_SEG = mips.TEXT_SEG;

  let cur_section: section = section.MAX_SIZE;
  let address = 0;

  for (let i = 0; i < input.length; i++) {
    const line: string = input[i];
    const tokenLine: string[] = customSplit(trimValue(line, "\n\t"), [
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
      if (trimValue(temp, "\n").slice(-1) === ":") {
        const symbol = new symbolT();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        mips.symbolTableAddEntry(symbol);
      }

      const word = line.includes(".word");

      if (word) {
        DATA_SEG.dataSeg.push(`${tokenLine.slice(-1)}`);
        DATA_SEG.sectionSize += BYTES_PER_WORD;
      }
    }

    if ((cur_section as section) === section.TEXT) {
      if (trimValue(temp, "\n").slice(-1) === ":") {
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

          TEXT_SEG.textSeg.push(`lui ${tokenLine[1]} ${tokenLine[2]}`);

          if (targetHexAddress.slice(4) !== "0000") {
            TEXT_SEG.sectionSize += BYTES_PER_WORD;
            address += BYTES_PER_WORD;
            TEXT_SEG.textSeg.push(
              `ori ${tokenLine[1]} ${tokenLine[1]} ${tokenLine[2]}`
            );
          }
        } else if (temp === "move") {
          TEXT_SEG.textSeg.push(`add ${tokenLine[1]} ${tokenLine[2]}, $0`);
        } else {
          TEXT_SEG.textSeg.push(trimValue(line, "\t\n").replace("\t", " "));
        }

        TEXT_SEG.sectionSize += BYTES_PER_WORD;
      }
    }

    address += BYTES_PER_WORD;
  }

  return mips;
};

export const record_text_section = (mips: MipsAssembler): string[] => {
  const TEXT_SEG = mips.TEXT_SEG;
  const binaryText: string[] = [];
  let cur_address: i32 = MEM_TEXT_START;
  let address: i32;
  let rs: string;
  let rt: string;
  let rd: string;
  let imm: string;
  let shamt: string;

  for (let i = 0; i < TEXT_SEG.sectionSize; i++) {
    const line = TEXT_SEG.textSeg[i];
    const instruct = line.split(" ");
    const inst_name: string = instruct[0];
    let cur_inst: InstT = new InstT();

    for (let j = 0; j < INST_LIST.length; j++) {
      const inst = INST_LIST[j];
      if (inst.name === inst_name) {
        cur_inst = inst;
      }
    }

    const name = cur_inst.name;
    const type = cur_inst.type;

    if (type === "R") {
      if (name === SLL.name || name === SRL.name) {
        rs = numToBit(0, 5);
        rt = numToBit(parseInt(trimValue(instruct[2], "/$,/")) as i32, 5);
        rd = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);
        shamt = numToBit(parseInt(instruct[3]) as i32, 5);
      } else if (name === JR.name) {
        rs = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);
        rt = numToBit(0, 5);
        rd = numToBit(0, 5);
        shamt = numToBit(0, 5);
      } else {
        rs = numToBit(parseInt(trimValue(instruct[2], "/$,/")) as i32, 5);
        rt = numToBit(parseInt(trimValue(instruct[3], "/$,/")) as i32, 5);
        rd = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);
        shamt = numToBit(0, 5);
      }

      binaryText.push(cur_inst.op + rs + rt + rd + shamt + cur_inst.funct);
    } else if (type === "I") {
      if (name === LUI.name) {
        rs = numToBit(0, 5);
        rt = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);

        if (instruct[2].includes("0x")) {
          imm = numToBit(parseInt(instruct[2].slice(2), 16) as i32, 16);
        } else if (isNaN(parseInt(instruct[2]) as i32)) {
          address = mips.findTargetSymbolAddr(instruct[2]);
          imm = numToBit(
            parseInt(address.toString(16).slice(0, 4), 16) as i32,
            16
          );
        } else {
          imm = numToBit(parseInt(instruct[2]) as i32, 16);
        }
      } else if (name === BEQ.name || name === BNE.name) {
        rs = numToBit(parseInt((instruct[1], "/$,/")) as i32, 5);
        rt = numToBit(parseInt((instruct[2], "/$,/")) as i32, 5);
        address = mips.findTargetSymbolAddr(instruct[3]);
        imm = numToBit((address - (cur_address + 4)) / 4, 16);
      } else if (
        name === LW.name ||
        name === LHU.name ||
        name === SW.name ||
        name === SH.name
      ) {
        rs = numToBit(
          parseInt(
            customSplit(trimValue(customSplit(instruct[2], ["("])[1]), [
              "$",
              ",",
            ])[0]
          ) as i32
        );
        rt = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);
        imm = numToBit(
          parseInt(trimValue(instruct[2].split("(")[0], "/$,/")) as i32,
          16
        );
      } else {
        rs = numToBit(parseInt(trimValue(instruct[2], "/$,/")) as i32, 5);
        rt = numToBit(parseInt(trimValue(instruct[1], "/$,/")) as i32, 5);

        if (instruct[3].includes("0x")) {
          imm = numToBit(parseInt(instruct[3].slice(2), 16) as i32, 16);
        } else if (isNaN(parseInt(instruct[3]) as i32)) {
          address = mips.findTargetSymbolAddr(instruct[3]) as i32;
          imm = numToBit(
            parseInt(address.toString(16).slice(4), 16) as i32,
            16
          );
        } else {
          imm = numToBit(parseInt(instruct[3]) as i32, 16);
        }
      }

      binaryText.push(cur_inst.op + rs + rt + imm);
    } else {
      address = mips.findTargetSymbolAddr(instruct[1]) / 4;
      binaryText.push(cur_inst.op + numToBit(address as i32, 26));
    }

    cur_address += BYTES_PER_WORD;
  }

  return binaryText;
};

export const record_data_section = (DATA_SEG: DataSegment): string[] => {
  const binaryData: string[] = [];
  for (let i = 0; i < DATA_SEG.sectionSize; i++) {
    const data = DATA_SEG.dataSeg[i];
    const dataToNum =
      data.slice(0, 2) === "0x"
        ? (parseInt(data.slice(2), 16) as i32)
        : (parseInt(data) as i32);
    binaryData.push(numToBit(dataToNum));
  }

  return binaryData;
};

export const record_section_size = (
  DATA_SEG: DataSegment,
  TEXT_SEG: TextSegment
): string[] => {
  const binary_data_section_size = numToBit(DATA_SEG.sectionSize);
  const binary_text_section_size = numToBit(TEXT_SEG.sectionSize);
  const sectionSizes = [binary_data_section_size, binary_text_section_size];

  return sectionSizes;
};

export const make_binary_file = (input: string[]): string[] => {
  const mips = make_symbol_table(input);
  const binarySize = record_section_size(mips.DATA_SEG, mips.TEXT_SEG);
  const binaryText = record_text_section(mips);
  const binaryData = record_data_section(mips.DATA_SEG);

  return binarySize.concat(binaryText.concat(binaryData));
};
