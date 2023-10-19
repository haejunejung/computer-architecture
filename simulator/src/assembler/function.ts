import { symbol_t } from "./class";

const symbol_table_add_entry = (symbol: symbol_t) => {};

const num_to_bits = (num: number, len: number) => {};

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

export { num_to_hex_and_pad, find_addr_target_symbol };
