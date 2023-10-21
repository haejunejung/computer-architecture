import { cloneDeep, trim } from "lodash";
import { inst_t, symbol_t } from "./class";
import {
  BEQ,
  BNE,
  BYTES_PER_WORD,
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
  inst_list,
  section,
} from "./constants";
import {
  find_addr_target_symbol,
  num_to_bits,
  num_to_hex_and_pad,
  trim_value,
} from "./function";
import { DataSegment, SymbolTable, TextSegment } from "./interface";

const symbol_table_add_entry = (
  SYMBOL_TABLE: SymbolTable,
  symbol: symbol_t
) => {
  SYMBOL_TABLE.symbol_table[SYMBOL_TABLE.symbol_table_cur_index] = symbol;
  SYMBOL_TABLE.symbol_table_cur_index += 1;
};

const make_symbol_table = (input: string[]) => {
  const symbol_table: symbol_t[] = new Array<symbol_t>(MAX_SYMBOL_TABLE_SIZE);
  const symbol_table_cur_index: number = 0;
  const data_section_size: number = 0;
  const text_section_size: number = 0;
  const data_seg: string[] = [];
  const text_seg: string[] = [];

  const SYMBOL_TABLE: SymbolTable = { symbol_table, symbol_table_cur_index };
  const DATA_SEG: DataSegment = { data_seg, data_section_size };
  const TEXT_SEG: TextSegment = { text_seg, text_section_size };

  let cur_section: section = section.MAX_SIZE;
  let address = 0;

  for (const line of input) {
    const _line: string = cloneDeep(line);
    const token_line: string[] = trim(_line, "\n\t").split(/\t| |\n/);
    const temp: string = token_line[0];

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
      if (trim(temp, "\n").slice(-1) === ":") {
        const symbol = new symbol_t();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        symbol_table_add_entry(SYMBOL_TABLE, symbol);
      }

      const word = _line.includes(".word");

      if (word) {
        DATA_SEG.data_seg.push(`${token_line.slice(-1)}`);
        DATA_SEG.data_section_size += BYTES_PER_WORD;
      }
    }

    if ((cur_section as section) === section.TEXT) {
      if (trim(temp, "\n").slice(-1) === ":") {
        const symbol = new symbol_t();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        symbol_table_add_entry(SYMBOL_TABLE, symbol);
        continue;
      } else {
        if (temp === "la") {
          const target_symbol_name: string = token_line.slice(-1)[0];
          const target_address = find_addr_target_symbol(
            SYMBOL_TABLE.symbol_table,
            target_symbol_name,
            SYMBOL_TABLE.symbol_table_cur_index
          );
          const target_hex_address: string = num_to_hex_and_pad(target_address);

          TEXT_SEG.text_seg.push(`lui ${token_line[1]} ${token_line[2]}`);

          if (target_hex_address.slice(4) !== "0000") {
            TEXT_SEG.text_section_size += BYTES_PER_WORD;
            address += BYTES_PER_WORD;
            TEXT_SEG.text_seg.push(
              `ori ${token_line[1]} ${token_line[1]} ${token_line[2]}`
            );
          }
        } else if (temp === "move") {
          TEXT_SEG.text_seg.push(`add ${token_line[1]} ${token_line[2]}, $0`);
        } else {
          TEXT_SEG.text_seg.push(trim(_line, "\t\n").replace("\t", " "));
        }

        TEXT_SEG.text_section_size += BYTES_PER_WORD;
      }
    }

    address += BYTES_PER_WORD;
  }

  return { SYMBOL_TABLE, DATA_SEG, TEXT_SEG };
};

const record_text_section = (
  SYMBOL_TABLE: SymbolTable,
  TEXT_SEG: TextSegment
) => {
  const binaryText: string[] = [];
  let cur_address: number = MEM_TEXT_START;
  let address: number;
  let type: string;
  let rs: string;
  let rt: string;
  let rd: string;
  let imm: string;
  let shamt: string;

  for (const line of TEXT_SEG.text_seg) {
    const instruct = line.split(" ");
    const inst_name: string = instruct[0];
    let cur_inst: inst_t = new inst_t();

    for (const inst of inst_list) {
      if (inst.name === inst_name) {
        cur_inst = cloneDeep(inst);
      }
    }

    const name = cur_inst.name;
    const type = cur_inst.type;
    switch (type) {
      case "R":
        if (name === SLL.name || name === SRL.name) {
          rs = num_to_bits(0, 5);
          rt = num_to_bits(+trim_value(instruct[2], "/$,/"), 5);
          rd = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);
          shamt = num_to_bits(Number(instruct[3]), 5);
        } else if (name === JR.name) {
          rs = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);
          rt = num_to_bits(0, 5);
          rd = num_to_bits(0, 5);
          shamt = num_to_bits(0, 5);
        } else {
          rs = num_to_bits(+trim_value(instruct[2], "/$,/"), 5);
          rt = num_to_bits(+trim_value(instruct[3], "/$,/"), 5);
          rd = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);
          shamt = num_to_bits(0, 5);
        }

        binaryText.push(cur_inst.op + rs + rt + rd + shamt + cur_inst.funct);
        break;

      case "I":
        if (name === LUI.name) {
          rs = num_to_bits(0, 5);
          rt = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);

          if (instruct[2].includes("0x")) {
            imm = num_to_bits(parseInt(instruct[2].slice(2), 16), 16);
          } else if (isNaN(+instruct[2])) {
            address = find_addr_target_symbol(
              SYMBOL_TABLE.symbol_table,
              instruct[2],
              SYMBOL_TABLE.symbol_table_cur_index
            );
            imm = num_to_bits(
              parseInt(address.toString(16).slice(0, 4), 16),
              16
            );
          } else {
            imm = num_to_bits(+instruct[2], 16);
          }
        } else if (name === BEQ.name || name === BNE.name) {
          rs = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);
          rt = num_to_bits(+trim_value(instruct[2], "/$,/"), 5);
          address = find_addr_target_symbol(
            SYMBOL_TABLE.symbol_table,
            instruct[3],
            SYMBOL_TABLE.symbol_table_cur_index
          );
          imm = num_to_bits((address - (cur_address + 4)) / 4, 16);
        } else if (
          name === LW.name ||
          name === LHU.name ||
          name === SW.name ||
          name === SH.name
        ) {
          rs = num_to_bits(
            +trim_value(instruct[2].split("(")[1].split(")")[0], "/$,/"),
            5
          );
          rt = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);
          imm = num_to_bits(+trim_value(instruct[2].split("(")[0], "/$,/"), 16);
        } else {
          rs = num_to_bits(+trim_value(instruct[2], "/$,/"), 5);
          rt = num_to_bits(+trim_value(instruct[1], "/$,/"), 5);

          if (instruct[3].includes("0x")) {
            imm = num_to_bits(parseInt(instruct[3].slice(2), 16), 16);
          } else if (isNaN(+instruct[3])) {
            address = find_addr_target_symbol(
              SYMBOL_TABLE.symbol_table,
              instruct[3],
              SYMBOL_TABLE.symbol_table_cur_index
            );
            imm = num_to_bits(parseInt(address.toString(16).slice(4), 16), 16);
          } else {
            imm = num_to_bits(+instruct[3], 16);
          }
        }

        binaryText.push(cur_inst.op + rs + rt + imm);
        break;
      case "J":
        address =
          find_addr_target_symbol(
            SYMBOL_TABLE.symbol_table,
            instruct[1],
            SYMBOL_TABLE.symbol_table_cur_index
          ) / 4;
        binaryText.push(cur_inst.op + num_to_bits(address, 26));
        break;
    }

    cur_address += BYTES_PER_WORD;
  }

  return binaryText;
};

const record_data_section = (DATA_SEG: DataSegment) => {
  const binaryData: string[] = [];
  for (const data of DATA_SEG.data_seg) {
    const dataToNum =
      data.slice(0, 2) === "0x" ? parseInt(data.slice(2), 16) : Number(data);
    binaryData.push(num_to_bits(dataToNum));
  }

  return binaryData;
};

const record_section_size = (DATA_SEG: DataSegment, TEXT_SEG: TextSegment) => {
  const binary_data_section_size = num_to_bits(DATA_SEG.data_section_size);
  const binary_text_section_size = num_to_bits(TEXT_SEG.text_section_size);

  return [binary_text_section_size, binary_data_section_size];
};

const make_binary_file = (input: string[]) => {
  const { SYMBOL_TABLE, DATA_SEG, TEXT_SEG } = make_symbol_table(input);
  const binarySize = record_section_size(DATA_SEG, TEXT_SEG);
  const binaryText = record_text_section(SYMBOL_TABLE, TEXT_SEG);
  const binaryData = record_data_section(DATA_SEG);

  return binarySize.concat(binaryText.concat(binaryData));
};

export {
  make_symbol_table,
  record_section_size,
  record_text_section,
  record_data_section,
  make_binary_file,
};
