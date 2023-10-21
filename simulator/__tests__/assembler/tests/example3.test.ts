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
    __dirname + "/../sample_input/example3.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example3.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("data3", 268435464),
      new symbol_t("main", 4194304),
      ...Array(1020).fill(undefined),
    ];
    const expected_symbol_table_cur_index: number = 4;

    const expected_symbol_table_info: SymbolTable = {
      symbol_table: expected_symbol_table,
      symbol_table_cur_index: expected_symbol_table_cur_index,
    };

    expect(make_symbol_table(ContentToStringArray).SYMBOL_TABLE).toEqual(
      expected_symbol_table_info
    );
  });

  test("example3.s data seg", () => {
    const expected_data_seg: string[] = ["100", "200", "0x12345678", "0x12341"];
    const expected_data_section_size: number = 16;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example3.s text seg", () => {
    const expected_text_seg: string[] = [
      "lui $3, 0x1000",
      "lhu $5, 0($3)",
      "lhu $8, 4($3)",
      "lw $9, 8($3)",
      "lw $10, 12($3)",
      "addiu $5, $5, 24",
      "addiu $6, $0, 124",
      "addu $7, $5, $6",
      "sh $5, 16($3)",
      "sh $6, 20($3)",
      "sh $7, 24($3)",
      "addiu $3, $3, 12",
      "lw $12, -4($3)",
      "lhu $13, -8($3)",
      "lhu $14, -12($3)",
    ];
    const expected_text_section_size = 60;
    const expected_text_segment: TextSegment = {
      text_seg: expected_text_seg,
      text_section_size: expected_text_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).TEXT_SEG).toEqual(
      expected_text_segment
    );
  });
});

//*
describe("record section size module", () => {
  test("example3.s section size", () => {
    const data_seg: string[] = ["100", "200", "0x12345678", "0x12341"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "lui $3, 0x1000",
      "lhu $5, 0($3)",
      "lhu $8, 4($3)",
      "lw $9, 8($3)",
      "lw $10, 12($3)",
      "addiu $5, $5, 24",
      "addiu $6, $0, 124",
      "addu $7, $5, $6",
      "sh $5, 16($3)",
      "sh $6, 20($3)",
      "sh $7, 24($3)",
      "addiu $3, $3, 12",
      "lw $12, -4($3)",
      "lhu $13, -8($3)",
      "lhu $14, -12($3)",
    ];
    const text_section_size = 60;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000000111100",
      "00000000000000000000000000010000",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});
//*
describe("record data section module", () => {
  test("example3.s data section", () => {
    const data_seg: string[] = ["100", "200", "0x12345678", "0x12341"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section = [
      "00000000000000000000000001100100",
      "00000000000000000000000011001000",
      "00010010001101000101011001111000",
      "00000000000000010010001101000001",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example3.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("data3", 268435464),
      new symbol_t("main", 4194304),
      ...Array(1020).fill(undefined),
    ];
    const symbol_table_cur_index: number = 3;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "lui $3, 0x1000",
      "lhu $5, 0($3)",
      "lhu $8, 4($3)",
      "lw $9, 8($3)",
      "lw $10, 12($3)",
      "addiu $5, $5, 24",
      "addiu $6, $0, 124",
      "addu $7, $5, $6",
      "sh $5, 16($3)",
      "sh $6, 20($3)",
      "sh $7, 24($3)",
      "addiu $3, $3, 12",
      "lw $12, -4($3)",
      "lhu $13, -8($3)",
      "lhu $14, -12($3)",
    ];
    const text_section_size = 60;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00111100000000110001000000000000",
      "10010100011001010000000000000000",
      "10010100011010000000000000000100",
      "10001100011010010000000000001000",
      "10001100011010100000000000001100",
      "00100100101001010000000000011000",
      "00100100000001100000000001111100",
      "00000000101001100011100000100001",
      "10100100011001010000000000010000",
      "10100100011001100000000000010100",
      "10100100011001110000000000011000",
      "00100100011000110000000000001100",
      "10001100011011001111111111111100",
      "10010100011011011111111111111000",
      "10010100011011101111111111110100",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example3.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example3.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000000111100",
      "00000000000000000000000000010000",
      "00111100000000110001000000000000",
      "10010100011001010000000000000000",
      "10010100011010000000000000000100",
      "10001100011010010000000000001000",
      "10001100011010100000000000001100",
      "00100100101001010000000000011000",
      "00100100000001100000000001111100",
      "00000000101001100011100000100001",
      "10100100011001010000000000010000",
      "10100100011001100000000000010100",
      "10100100011001110000000000011000",
      "00100100011000110000000000001100",
      "10001100011011001111111111111100",
      "10010100011011011111111111111000",
      "10010100011011101111111111110100",
      "00000000000000000000000001100100",
      "00000000000000000000000011001000",
      "00010010001101000101011001111000",
      "00000000000000010010001101000001",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
