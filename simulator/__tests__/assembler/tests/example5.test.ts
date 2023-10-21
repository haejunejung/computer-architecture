import { readFileSync } from "fs";
import {
  make_binary_file,
  make_symbol_table,
  record_data_section,
  record_section_size,
  record_text_section,
} from "../../../src/assembler/assembler";
import { symbol_t } from "../../../src/assembler/class";
import {
  DataSegment,
  SymbolTable,
  TextSegment,
} from "../../../src/assembler/interface";

describe("Make Symbol Table module", () => {
  const fileContent: string = readFileSync(
    __dirname + "/../sample_input/example5.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example5.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("main", 4194304),
      new symbol_t("loop", 4194336),
      new symbol_t("exit", 4194376),
      ...Array(1019).fill(undefined),
    ];
    const expected_symbol_table_cur_index: number = 5;

    const expected_symbol_table_info: SymbolTable = {
      symbol_table: expected_symbol_table,
      symbol_table_cur_index: expected_symbol_table_cur_index,
    };

    expect(make_symbol_table(ContentToStringArray).SYMBOL_TABLE).toEqual(
      expected_symbol_table_info
    );
  });

  test("example5.s data seg", () => {
    const expected_data_seg: string[] = ["0x12c", "0xc8"];
    const expected_data_section_size: number = 8;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example5.s text seg", () => {
    const expected_text_seg: string[] = [
      "and $10, $10, $0",
      "and $11, $11, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "addiu $10, $10, 0x1",
      "sll $10, $10, 1",
      "sll $11, $11, 1",
      "addiu $10, $10, 0x1",
      "addiu $11, $11, 1",
      "or $9, $9, $0",
      "subu $18, $18, $10",
      "sll $18, $17, 1",
      "sll $17, $18, 1",
      "addu $11, $11, $31",
      "nor $16, $17, $18",
      "bne $11, $8, loop",
      "j exit",
      "andi $15, $15, 0x0f",
    ];
    const expected_text_section_size = 76;
    const expected_text_segment: TextSegment = {
      text_seg: expected_text_seg,
      text_section_size: expected_text_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).TEXT_SEG).toEqual(
      expected_text_segment
    );
  });
});

describe("record section size module", () => {
  test("example5.s section size", () => {
    const data_seg: string[] = ["0x12c", "0xc8"];
    const data_section_size: number = 8;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "and $10, $10, $0",
      "and $11, $11, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "addiu $10, $10, 0x1",
      "sll $10, $10, 1",
      "sll $11, $11, 1",
      "addiu $10, $10, 0x1",
      "addiu $11, $11, 1",
      "or $9, $9, $0",
      "subu $18, $18, $10",
      "sll $18, $17, 1",
      "sll $17, $18, 1",
      "addu $11, $11, $31",
      "nor $16, $17, $18",
      "bne $11, $8, loop",
      "j exit",
      "andi $15, $15, 0x0f",
    ];
    const text_section_size = 76;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000001001100",
      "00000000000000000000000000001000",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});

describe("record data section module", () => {
  test("example5.s data section", () => {
    const data_seg: string[] = ["0x12c", "0xc8"];
    const data_section_size: number = 8;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section: string[] = [
      "00000000000000000000000100101100",
      "00000000000000000000000011001000",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example5.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("main", 4194304),
      new symbol_t("loop", 4194336),
      new symbol_t("exit", 4194376),
      ...Array(1019).fill(undefined),
    ];
    const symbol_table_cur_index: number = 5;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "and $10, $10, $0",
      "and $11, $11, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "addiu $10, $10, 0x1",
      "sll $10, $10, 1",
      "sll $11, $11, 1",
      "addiu $10, $10, 0x1",
      "addiu $11, $11, 1",
      "or $9, $9, $0",
      "subu $18, $18, $10",
      "sll $18, $17, 1",
      "sll $17, $18, 1",
      "addu $11, $11, $31",
      "nor $16, $17, $18",
      "bne $11, $8, loop",
      "j exit",
      "andi $15, $15, 0x0f",
    ];
    const text_section_size = 76;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00000001010000000101000000100100",
      "00000001011000000101100000100100",
      "00111100000010000001000000000000",
      "00111100000010010001000000000000",
      "00110101001010010000000000000100",
      "00100101010010100000000000000001",
      "00000000000010100101000001000000",
      "00000000000010110101100001000000",
      "00100101010010100000000000000001",
      "00100101011010110000000000000001",
      "00000001001000000100100000100101",
      "00000010010010101001000000100011",
      "00000000000100011001000001000000",
      "00000000000100101000100001000000",
      "00000001011111110101100000100001",
      "00000010001100101000000000100111",
      "00010101011010001111111111110111",
      "00001000000100000000000000010010",
      "00110001111011110000000000001111",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example5.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example5.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000001001100",
      "00000000000000000000000000001000",
      "00000001010000000101000000100100",
      "00000001011000000101100000100100",
      "00111100000010000001000000000000",
      "00111100000010010001000000000000",
      "00110101001010010000000000000100",
      "00100101010010100000000000000001",
      "00000000000010100101000001000000",
      "00000000000010110101100001000000",
      "00100101010010100000000000000001",
      "00100101011010110000000000000001",
      "00000001001000000100100000100101",
      "00000010010010101001000000100011",
      "00000000000100011001000001000000",
      "00000000000100101000100001000000",
      "00000001011111110101100000100001",
      "00000010001100101000000000100111",
      "00010101011010001111111111110111",
      "00001000000100000000000000010010",
      "00110001111011110000000000001111",
      "00000000000000000000000100101100",
      "00000000000000000000000011001000",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
