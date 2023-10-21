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
    __dirname + "/../sample_input/example4.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example4.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("main", 4194304),
      new symbol_t("lab1", 4194316),
      new symbol_t("lab3", 4194332),
      new symbol_t("lab4", 4194352),
      new symbol_t("lab5", 4194364),
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

  test("example4.s data seg", () => {
    const expected_data_seg: string[] = [];
    const expected_data_section_size: number = 0;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example4.s text seg", () => {
    const expected_text_seg: string[] = [
      "addu $2, $4, $5",
      "addu $2, $6, $7",
      "subu $9, $3, $2",
      "and $11, $11, $0",
      "addiu $10, $10, 0x1",
      "or $6, $6, $0",
      "jal lab3",
      "sll $7, $6, 2",
      "srl $5, $4, 2",
      "sltiu $9, $10, 100",
      "beq $9, $0, lab4",
      "jr $31",
      "sltu $4, $2, $3",
      "bne $4, $0, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const expected_text_section_size = 64;
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
  test("example4.s section size", () => {
    const data_seg: string[] = [];
    const data_section_size: number = 0;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "addu $2, $4, $5",
      "addu $2, $6, $7",
      "subu $9, $3, $2",
      "and $11, $11, $0",
      "addiu $10, $10, 0x1",
      "or $6, $6, $0",
      "jal lab3",
      "sll $7, $6, 2",
      "srl $5, $4, 2",
      "sltiu $9, $10, 100",
      "beq $9, $0, lab4",
      "jr $31",
      "sltu $4, $2, $3",
      "bne $4, $0, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const text_section_size = 64;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000001000000",
      "00000000000000000000000000000000",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});

describe("record data section module", () => {
  test("example4.s data section", () => {
    const data_seg: string[] = [];
    const data_section_size: number = 0;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section: string[] = [];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example4.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("main", 4194304),
      new symbol_t("lab1", 4194316),
      new symbol_t("lab3", 4194332),
      new symbol_t("lab4", 4194352),
      new symbol_t("lab5", 4194364),
      ...Array(1019).fill(undefined),
    ];
    const symbol_table_cur_index: number = 5;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "addu $2, $4, $5",
      "addu $2, $6, $7",
      "subu $9, $3, $2",
      "and $11, $11, $0",
      "addiu $10, $10, 0x1",
      "or $6, $6, $0",
      "jal lab3",
      "sll $7, $6, 2",
      "srl $5, $4, 2",
      "sltiu $9, $10, 100",
      "beq $9, $0, lab4",
      "jr $31",
      "sltu $4, $2, $3",
      "bne $4, $0, lab5",
      "j lab1",
      "ori $16, $16, 0xf0f0",
    ];
    const text_section_size = 64;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00000000100001010001000000100001",
      "00000000110001110001000000100001",
      "00000000011000100100100000100011",
      "00000001011000000101100000100100",
      "00100101010010100000000000000001",
      "00000000110000000011000000100101",
      "00001100000100000000000000000111",
      "00000000000001100011100010000000",
      "00000000000001000010100010000010",
      "00101101010010010000000001100100",
      "00010001001000000000000000000001",
      "00000011111000000000000000001000",
      "00000000010000110010000000101011",
      "00010100100000000000000000000001",
      "00001000000100000000000000000011",
      "00110110000100001111000011110000",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example4.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example4.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000001000000",
      "00000000000000000000000000000000",
      "00000000100001010001000000100001",
      "00000000110001110001000000100001",
      "00000000011000100100100000100011",
      "00000001011000000101100000100100",
      "00100101010010100000000000000001",
      "00000000110000000011000000100101",
      "00001100000100000000000000000111",
      "00000000000001100011100010000000",
      "00000000000001000010100010000010",
      "00101101010010010000000001100100",
      "00010001001000000000000000000001",
      "00000011111000000000000000001000",
      "00000000010000110010000000101011",
      "00010100100000000000000000000001",
      "00001000000100000000000000000011",
      "00110110000100001111000011110000",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
