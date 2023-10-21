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
    __dirname + "/../sample_input/example1.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example1.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("data3", 268435464),
      new symbol_t("main", 4194304),
      new symbol_t("lab1", 4194328),
      new symbol_t("lab2", 4194332),
      new symbol_t("lab3", 4194348),
      new symbol_t("lab4", 4194372),
      new symbol_t("lab5", 4194388),
      ...Array(1015).fill(undefined),
    ];
    const expected_symbol_table_cur_index: number = 9;

    const expected_symbol_table_info: SymbolTable = {
      symbol_table: expected_symbol_table,
      symbol_table_cur_index: expected_symbol_table_cur_index,
    };

    expect(make_symbol_table(ContentToStringArray).SYMBOL_TABLE).toEqual(
      expected_symbol_table_info
    );
  });

  test("example1.s data seg", () => {
    const expected_data_seg: string[] = ["100", "200", "0x12345678"];
    const expected_data_section_size: number = 12;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example1.s text seg", () => {
    const expected_text_seg: string[] = [
      "and $17, $17, $0",
      "and $18, $18, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "and $10, $10, $0",
      "and $11, $11, $0",
      "addi $17, $17, 0x1",
      "addi $11, $11, 0x1",
      "or $9, $9, $0",
      "bne $11, $8, lab2",
      "addi $18, $18, 0x2",
      "addi $11, $11, 1",
      "sll $18, $17, 1",
      "srl $17, $18, 1",
      "and $19, $17, $18",
      "bne $11, $9, lab3",
      "add $5, $5, $31",
      "nor $16, $17, $18",
      "beq $10, $8, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const expected_text_section_size = 88;
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
  test("example1.s section size", () => {
    const data_seg: string[] = ["100", "200", "0x12345678"];
    const data_section_size: number = 12;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "and $17, $17, $0",
      "and $18, $18, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "and $10, $10, $0",
      "and $11, $11, $0",
      "addi $17, $17, 0x1",
      "addi $11, $11, 0x1",
      "or $9, $9, $0",
      "bne $11, $8, lab2",
      "addi $18, $18, 0x2",
      "addi $11, $11, 1",
      "sll $18, $17, 1",
      "srl $17, $18, 1",
      "and $19, $17, $18",
      "bne $11, $9, lab3",
      "add $5, $5, $31",
      "nor $16, $17, $18",
      "beq $10, $8, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const text_section_size = 88;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000001011000",
      "00000000000000000000000000001100",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});

describe("record data section module", () => {
  test("example1.s data section", () => {
    const data_seg: string[] = ["100", "200", "0x12345678"];
    const data_section_size: number = 12;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section = [
      "00000000000000000000000001100100",
      "00000000000000000000000011001000",
      "00010010001101000101011001111000",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example1.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("data3", 268435464),
      new symbol_t("main", 4194304),
      new symbol_t("lab1", 4194328),
      new symbol_t("lab2", 4194332),
      new symbol_t("lab3", 4194348),
      new symbol_t("lab4", 4194372),
      new symbol_t("lab5", 4194388),
      ...Array(1015).fill(undefined),
    ];
    const symbol_table_cur_index: number = 9;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "and $17, $17, $0",
      "and $18, $18, $0",
      "lui $8, data1",
      "lui $9, data2",
      "ori $9, $9, data2",
      "and $10, $10, $0",
      "and $11, $11, $0",
      "addi $17, $17, 0x1",
      "addi $11, $11, 0x1",
      "or $9, $9, $0",
      "bne $11, $8, lab2",
      "addi $18, $18, 0x2",
      "addi $11, $11, 1",
      "sll $18, $17, 1",
      "srl $17, $18, 1",
      "and $19, $17, $18",
      "bne $11, $9, lab3",
      "add $5, $5, $31",
      "nor $16, $17, $18",
      "beq $10, $8, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const text_section_size = 88;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00000010001000001000100000100100",
      "00000010010000001001000000100100",
      "00111100000010000001000000000000",
      "00111100000010010001000000000000",
      "00110101001010010000000000000100",
      "00000001010000000101000000100100",
      "00000001011000000101100000100100",
      "00100010001100010000000000000001",
      "00100001011010110000000000000001",
      "00000001001000000100100000100101",
      "00010101011010001111111111111100",
      "00100010010100100000000000000010",
      "00100001011010110000000000000001",
      "00000000000100011001000001000000",
      "00000000000100101000100001000010",
      "00000010001100101001100000100100",
      "00010101011010011111111111111010",
      "00000000101111110010100000100000",
      "00000010001100101000000000100111",
      "00010001010010000000000000000001",
      "00001000000100000000000000000110",
      "00110110000100001111000011110000",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example1.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example1.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000001011000",
      "00000000000000000000000000001100",
      "00000010001000001000100000100100",
      "00000010010000001001000000100100",
      "00111100000010000001000000000000",
      "00111100000010010001000000000000",
      "00110101001010010000000000000100",
      "00000001010000000101000000100100",
      "00000001011000000101100000100100",
      "00100010001100010000000000000001",
      "00100001011010110000000000000001",
      "00000001001000000100100000100101",
      "00010101011010001111111111111100",
      "00100010010100100000000000000010",
      "00100001011010110000000000000001",
      "00000000000100011001000001000000",
      "00000000000100101000100001000010",
      "00000010001100101001100000100100",
      "00010101011010011111111111111010",
      "00000000101111110010100000100000",
      "00000010001100101000000000100111",
      "00010001010010000000000000000001",
      "00001000000100000000000000000110",
      "00110110000100001111000011110000",
      "00000000000000000000000001100100",
      "00000000000000000000000011001000",
      "00010010001101000101011001111000",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
