import { cloneDeep, trim } from "lodash";
import { symbol_t } from "./class";
import {
  BYTES_PER_WORD,
  MAX_SYMBOL_TABLE_SIZE,
  MEM_DATA_START,
  MEM_TEXT_START,
  section,
} from "./constants";
import { find_addr_target_symbol, num_to_hex_and_pad } from "./function";

const SYMBOL_TABLE: symbol_t[] = new Array<symbol_t>(MAX_SYMBOL_TABLE_SIZE);
let symbol_table_cur_index: number = 0;
let DATA_SECTION_SIZE: number = 0;
let TEXT_SECTION_SIZE: number = 0;
let data_seg: string = "";
let text_seg: string = "";

const symbol_table_add_entry = (symbol: symbol_t) => {
  SYMBOL_TABLE[symbol_table_cur_index] = symbol;
  symbol_table_cur_index += 1;
};

const make_symbol_table = (input: string[]) => {
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
      if (temp[-1] === ":") {
        const symbol = new symbol_t();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        symbol_table_add_entry(symbol);
      }

      const word = _line.includes(".word");

      if (word) {
        data_seg += `${token_line[-1]}\n`;
        DATA_SECTION_SIZE += BYTES_PER_WORD;
      }
    }

    if ((cur_section as section) === section.TEXT) {
      if (temp[-1] === ":") {
        const symbol = new symbol_t();
        symbol.name = temp.slice(0, -1);
        symbol.address = address;
        symbol_table_add_entry(symbol);
        continue;
      } else {
        if (temp === "la") {
          const target_symbol_name: string = token_line[-1];
          const target_hex_address: string = num_to_hex_and_pad(
            find_addr_target_symbol(
              SYMBOL_TABLE,
              target_symbol_name,
              symbol_table_cur_index
            )
          );

          text_seg += `lui\t${token_line[1]}\t${token_line[2]}\n`;

          if (target_hex_address.slice(4) === "0000") {
            TEXT_SECTION_SIZE += 1;
            address += BYTES_PER_WORD;
            text_seg += `ori\t${token_line[1]}\t${token_line[1]}\t${token_line[2]}\n`;
          }
        } else {
          text_seg += _line + "\n";
        }

        TEXT_SECTION_SIZE += 1;
      }
    }

    address += BYTES_PER_WORD;
  }
};

const record_text_section = () => {};

const record_data_section = () => {};

const make_binary_file = () => {};
