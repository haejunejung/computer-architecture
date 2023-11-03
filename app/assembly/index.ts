import {
  make_symbol_table,
  record_data_section,
  record_section_size,
  record_text_section,
} from "./assembler/assembler";

export const make_binary_file = (input: string[]): string[] => {
  const mips = make_symbol_table(input);
  const binarySize = record_section_size(mips.DATA_SEG, mips.TEXT_SEG);
  const binaryText = record_text_section(mips);
  const binaryData = record_data_section(mips.DATA_SEG);

  return binarySize.concat(binaryText.concat(binaryData));
};

export const add = (a: i32, b: i32): i32 => {
  return a + b;
};
