import { trim } from "lodash";
import { symbol_t } from "./class";

const trim_value = (value: string, chars: string): string => {
  return trim(value, chars);
};

const num_to_bits = (num: number, pad = 32): string => {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
};

const num_to_hex_and_pad = (num: number, pad = 8): string => {
  return Number(num).toString(16).padStart(pad, "0");
};

const find_addr_target_symbol = (
  SYMBOL_TABLE: symbol_t[],
  name: string,
  symbol_table_cur_index: number
) => {
  let address = 0;
  for (let i = 0; i < symbol_table_cur_index; i++) {
    if (SYMBOL_TABLE[i].name === name) {
      address = SYMBOL_TABLE[i].address;
    }
  }

  return address;
};

export { trim_value, num_to_bits, num_to_hex_and_pad, find_addr_target_symbol };
