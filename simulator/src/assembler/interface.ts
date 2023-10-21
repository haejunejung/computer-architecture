import { symbol_t } from "./class";

interface SymbolTable {
  symbol_table: symbol_t[];
  symbol_table_cur_index: number;
}

interface DataSegment {
  data_seg: string[];
  data_section_size: number;
}

interface TextSegment {
  text_seg: string[];
  text_section_size: number;
}

export { SymbolTable, DataSegment, TextSegment };
