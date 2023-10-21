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
    __dirname + "/../sample_input/example6.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example6.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("sum", 268435456),
      new symbol_t("data1", 268435460),
      new symbol_t("data2", 268435464),
      new symbol_t("iter", 268435468),
      new symbol_t("main", 4194304),
      new symbol_t("loop3", 4194320),
      new symbol_t("loop2", 4194344),
      new symbol_t("loop1", 4194360),
      ...Array(1016).fill(undefined),
    ];
    const expected_symbol_table_cur_index: number = 8;

    const expected_symbol_table_info: SymbolTable = {
      symbol_table: expected_symbol_table,
      symbol_table_cur_index: expected_symbol_table_cur_index,
    };

    expect(make_symbol_table(ContentToStringArray).SYMBOL_TABLE).toEqual(
      expected_symbol_table_info
    );
  });

  test("example6.s data seg", () => {
    const expected_data_seg: string[] = ["0x1000000", "0x10", "0x100", "0x1"];
    const expected_data_section_size: number = 16;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example6.s text seg", () => {
    const expected_text_seg: string[] = [
      "addiu $29, $29, -8",
      "sw $30, 4($29)",
      "addu $30, $29, $0",
      "j loop1",
      "lui $2, sum",
      "slti $2, $2, 3",
      "bne $2, $0, loop2",
      "lui $2, sum",
      "srl $3, $2, 1",
      "sw $2, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addiu $3, $2, 1",
      "sw $3, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addi $28, $0, 10",
      "slt $2, $2, $28",
      "bne $2, $0, loop3",
      "addu $2, $2, $0",
      "add $29, $30, $0",
      "lw $30, 4($29)",
      "addiu $29, $29, 8",
    ];
    const expected_text_section_size = 92;
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
  test("example6.s section size", () => {
    const data_seg: string[] = ["0x1000000", "0x10", "0x100", "0x1"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "addiu $29, $29, -8",
      "sw $30, 4($29)",
      "addu $30, $29, $0",
      "j loop1",
      "lui $2, sum",
      "slti $2, $2, 3",
      "bne $2, $0, loop2",
      "lui $2, sum",
      "srl $3, $2, 1",
      "sw $2, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addiu $3, $2, 1",
      "sw $3, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addi $28, $0, 10",
      "slt $2, $2, $28",
      "bne $2, $0, loop3",
      "addu $2, $2, $0",
      "add $29, $30, $0",
      "lw $30, 4($29)",
      "addiu $29, $29, 8",
    ];
    const text_section_size = 92;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };

    const expected_record_section_size = [
      "00000000000000000000000001011100",
      "00000000000000000000000000010000",
    ];

    expect(record_section_size(data_segment, text_segment)).toEqual(
      expected_record_section_size
    );
  });
});

describe("record data section module", () => {
  test("example6.s data section", () => {
    const data_seg: string[] = ["0x1000000", "0x10", "0x100", "0x1"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section: string[] = [
      "00000001000000000000000000000000",
      "00000000000000000000000000010000",
      "00000000000000000000000100000000",
      "00000000000000000000000000000001",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example6.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("sum", 268435456),
      new symbol_t("data1", 268435460),
      new symbol_t("data2", 268435464),
      new symbol_t("iter", 268435468),
      new symbol_t("main", 4194304),
      new symbol_t("loop3", 4194320),
      new symbol_t("loop2", 4194344),
      new symbol_t("loop1", 4194360),
      ...Array(1016).fill(undefined),
    ];
    const symbol_table_cur_index: number = 8;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "addiu $29, $29, -8",
      "sw $30, 4($29)",
      "addu $30, $29, $0",
      "j loop1",
      "lui $2, sum",
      "slti $2, $2, 3",
      "bne $2, $0, loop2",
      "lui $2, sum",
      "srl $3, $2, 1",
      "sw $2, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addiu $3, $2, 1",
      "sw $3, 0($2)",
      "lui $2, iter",
      "ori $2, $2, iter",
      "addi $28, $0, 10",
      "slt $2, $2, $28",
      "bne $2, $0, loop3",
      "addu $2, $2, $0",
      "add $29, $30, $0",
      "lw $30, 4($29)",
      "addiu $29, $29, 8",
    ];
    const text_section_size = 92;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00100111101111011111111111111000",
      "10101111101111100000000000000100",
      "00000011101000001111000000100001",
      "00001000000100000000000000001110",
      "00111100000000100001000000000000",
      "00101000010000100000000000000011",
      "00010100010000000000000000000011",
      "00111100000000100001000000000000",
      "00000000000000100001100001000010",
      "10101100010000100000000000000000",
      "00111100000000100001000000000000",
      "00110100010000100000000000001100",
      "00100100010000110000000000000001",
      "10101100010000110000000000000000",
      "00111100000000100001000000000000",
      "00110100010000100000000000001100",
      "00100000000111000000000000001010",
      "00000000010111000001000000101010",
      "00010100010000001111111111110001",
      "00000000010000000001000000100001",
      "00000011110000001110100000100000",
      "10001111101111100000000000000100",
      "00100111101111010000000000001000",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example6.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example6.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000001011100",
      "00000000000000000000000000010000",
      "00100111101111011111111111111000",
      "10101111101111100000000000000100",
      "00000011101000001111000000100001",
      "00001000000100000000000000001110",
      "00111100000000100001000000000000",
      "00101000010000100000000000000011",
      "00010100010000000000000000000011",
      "00111100000000100001000000000000",
      "00000000000000100001100001000010",
      "10101100010000100000000000000000",
      "00111100000000100001000000000000",
      "00110100010000100000000000001100",
      "00100100010000110000000000000001",
      "10101100010000110000000000000000",
      "00111100000000100001000000000000",
      "00110100010000100000000000001100",
      "00100000000111000000000000001010",
      "00000000010111000001000000101010",
      "00010100010000001111111111110001",
      "00000000010000000001000000100001",
      "00000011110000001110100000100000",
      "10001111101111100000000000000100",
      "00100111101111010000000000001000",
      "00000001000000000000000000000000",
      "00000000000000000000000000010000",
      "00000000000000000000000100000000",
      "00000000000000000000000000000001",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
