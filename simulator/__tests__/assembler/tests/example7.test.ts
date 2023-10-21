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
    __dirname + "/../sample_input/example7.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example7.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("main", 4194304),
      new symbol_t("loop1", 4194320),
      new symbol_t("loop2", 4194376),
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

  test("example7.s data seg", () => {
    const expected_data_seg: string[] = ["1", "10"];
    const expected_data_section_size: number = 8;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example7.s text seg", () => {
    const expected_text_seg: string[] = [
      "addiu $29, $29, -24",
      "sw $30, 20($29)",
      "addu $30, $29, $0",
      "sw $0, 8($30)",
      "lw $2, 8($30)",
      "sltiu $2, $2, 20",
      "beq $2, $0, loop2",
      "lui $4, 0x1000",
      "lw $2, 0($4)",
      "sw $2, 12($30)",
      "lw $3, 4($4)",
      "sw $3, 0($4)",
      "lw $3, 12($30)",
      "sw $3, 4($4)",
      "lw $2, 8($30)",
      "addiu $2, $2, 1",
      "sw $2, 8($30)",
      "j loop1",
      "addu $2, $2, $0",
      "addu $29, $30, $0",
      "lw $30, 20($29)",
      "addiu $29, $29, 24",
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
  test("example7.s section size", () => {
    const data_seg: string[] = ["1", "10"];
    const data_section_size: number = 8;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "addiu $29, $29, -24",
      "sw $30, 20($29)",
      "addu $30, $29, $0",
      "sw $0, 8($30)",
      "lw $2, 8($30)",
      "sltiu $2, $2, 20",
      "beq $2, $0, loop2",
      "lui $4, 0x1000",
      "lw $2, 0($4)",
      "sw $2, 12($30)",
      "lw $3, 4($4)",
      "sw $3, 0($4)",
      "lw $3, 12($30)",
      "sw $3, 4($4)",
      "lw $2, 8($30)",
      "addiu $2, $2, 1",
      "sw $2, 8($30)",
      "j loop1",
      "addu $2, $2, $0",
      "addu $29, $30, $0",
      "lw $30, 20($29)",
      "addiu $29, $29, 24",
    ];
    const text_section_size = 88;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000001011000",
      "00000000000000000000000000001000",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});

describe("record data section module", () => {
  test("example7.s data section", () => {
    const data_seg: string[] = ["1", "10"];
    const data_section_size: number = 8;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section: string[] = [
      "00000000000000000000000000000001",
      "00000000000000000000000000001010",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example7.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("data1", 268435456),
      new symbol_t("data2", 268435460),
      new symbol_t("main", 4194304),
      new symbol_t("loop1", 4194320),
      new symbol_t("loop2", 4194376),
      ...Array(1019).fill(undefined),
    ];
    const symbol_table_cur_index: number = 5;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "addiu $29, $29, -24",
      "sw $30, 20($29)",
      "addu $30, $29, $0",
      "sw $0, 8($30)",
      "lw $2, 8($30)",
      "sltiu $2, $2, 20",
      "beq $2, $0, loop2",
      "lui $4, 0x1000",
      "lw $2, 0($4)",
      "sw $2, 12($30)",
      "lw $3, 4($4)",
      "sw $3, 0($4)",
      "lw $3, 12($30)",
      "sw $3, 4($4)",
      "lw $2, 8($30)",
      "addiu $2, $2, 1",
      "sw $2, 8($30)",
      "j loop1",
      "addu $2, $2, $0",
      "addu $29, $30, $0",
      "lw $30, 20($29)",
      "addiu $29, $29, 24",
    ];
    const text_section_size = 88;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00100111101111011111111111101000",
      "10101111101111100000000000010100",
      "00000011101000001111000000100001",
      "10101111110000000000000000001000",
      "10001111110000100000000000001000",
      "00101100010000100000000000010100",
      "00010000010000000000000000001011",
      "00111100000001000001000000000000",
      "10001100100000100000000000000000",
      "10101111110000100000000000001100",
      "10001100100000110000000000000100",
      "10101100100000110000000000000000",
      "10001111110000110000000000001100",
      "10101100100000110000000000000100",
      "10001111110000100000000000001000",
      "00100100010000100000000000000001",
      "10101111110000100000000000001000",
      "00001000000100000000000000000100",
      "00000000010000000001000000100001",
      "00000011110000001110100000100001",
      "10001111101111100000000000010100",
      "00100111101111010000000000011000",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example7.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example7.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000001011000",
      "00000000000000000000000000001000",
      "00100111101111011111111111101000",
      "10101111101111100000000000010100",
      "00000011101000001111000000100001",
      "10101111110000000000000000001000",
      "10001111110000100000000000001000",
      "00101100010000100000000000010100",
      "00010000010000000000000000001011",
      "00111100000001000001000000000000",
      "10001100100000100000000000000000",
      "10101111110000100000000000001100",
      "10001100100000110000000000000100",
      "10101100100000110000000000000000",
      "10001111110000110000000000001100",
      "10101100100000110000000000000100",
      "10001111110000100000000000001000",
      "00100100010000100000000000000001",
      "10101111110000100000000000001000",
      "00001000000100000000000000000100",
      "00000000010000000001000000100001",
      "00000011110000001110100000100001",
      "10001111101111100000000000010100",
      "00100111101111010000000000011000",
      "00000000000000000000000000000001",
      "00000000000000000000000000001010",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
