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
    __dirname + "/../sample_input/example2.s",
    "utf-8"
  );
  const ContentToStringArray: string[] = fileContent.split("\n");

  test("example2.s symbol table", () => {
    const expected_symbol_table: symbol_t[] = [
      new symbol_t("array", 268435456),
      new symbol_t("array2", 268435468),
      new symbol_t("main", 4194304),
      ...Array(1021).fill(undefined),
    ];
    const expected_symbol_table_cur_index: number = 3;

    const expected_symbol_table_info: SymbolTable = {
      symbol_table: expected_symbol_table,
      symbol_table_cur_index: expected_symbol_table_cur_index,
    };

    expect(make_symbol_table(ContentToStringArray).SYMBOL_TABLE).toEqual(
      expected_symbol_table_info
    );
  });

  test("example2.s data seg", () => {
    const expected_data_seg: string[] = ["3", "123", "4346", "0x11111111"];
    const expected_data_section_size: number = 16;
    const expected_data_segment: DataSegment = {
      data_seg: expected_data_seg,
      data_section_size: expected_data_section_size,
    };

    expect(make_symbol_table(ContentToStringArray).DATA_SEG).toEqual(
      expected_data_segment
    );
  });

  test("example2.s text seg", () => {
    const expected_text_seg: string[] = [
      "addiu $2, $0, 1024",
      "addu $3, $2, $2",
      "or $4, $3, $2",
      "sll $6, $5, 16",
      "addiu $7, $6, 9999",
      "subu $8, $7, $2",
      "nor $9, $4, $3",
      "ori $10, $2, 255",
      "srl $11, $6, 5",
      "lui $4, array2",
      "ori $4, $4, array2",
      "and $13, $11, $5",
      "andi $14, $4, 100",
      "lui $17, 100",
      "addiu $2, $0, 0xa",
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

describe("record section size module", () => {
  test("example2.s section size", () => {
    const data_seg: string[] = ["3", "123", "4346", "0x11111111"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const text_seg: string[] = [
      "addiu $2, $0, 1024",
      "addu $3, $2, $2",
      "or $4, $3, $2",
      "sll $6, $5, 16",
      "addiu $7, $6, 9999",
      "subu $8, $7, $2",
      "nor $9, $4, $3",
      "ori $10, $2, 255",
      "srl $11, $6, 5",
      "lui $4, array2",
      "ori $4, $4, array2",
      "and $13, $11, $5",
      "andi $14, $4, 100",
      "lui $17, 100",
      "addiu $2, $0, 0xa",
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

describe("record data section module", () => {
  test("example2.s data section", () => {
    const data_seg: string[] = ["3", "123", "4346", "0x11111111"];
    const data_section_size: number = 16;
    const data_segment: DataSegment = {
      data_seg: data_seg,
      data_section_size: data_section_size,
    };

    const expected_record_data_section = [
      "00000000000000000000000000000011",
      "00000000000000000000000001111011",
      "00000000000000000001000011111010",
      "00010001000100010001000100010001",
    ];

    expect(record_data_section(data_segment)).toEqual(
      expected_record_data_section
    );
  });
});

describe("record text section module", () => {
  test("example2.s text section", () => {
    const symbol_table: symbol_t[] = [
      new symbol_t("array", 268435456),
      new symbol_t("array2", 268435468),
      new symbol_t("main", 4194304),
      ...Array(1021).fill(undefined),
    ];
    const symbol_table_cur_index: number = 3;

    const symbol_table_info: SymbolTable = {
      symbol_table: symbol_table,
      symbol_table_cur_index: symbol_table_cur_index,
    };

    const text_seg: string[] = [
      "addiu $2, $0, 1024",
      "addu $3, $2, $2",
      "or $4, $3, $2",
      "sll $6, $5, 16",
      "addiu $7, $6, 9999",
      "subu $8, $7, $2",
      "nor $9, $4, $3",
      "ori $10, $2, 255",
      "srl $11, $6, 5",
      "lui $4, array2",
      "ori $4, $4, array2",
      "and $13, $11, $5",
      "andi $14, $4, 100",
      "lui $17, 100",
      "addiu $2, $0, 0xa",
    ];
    const text_section_size = 60;
    const text_segment: TextSegment = {
      text_seg: text_seg,
      text_section_size: text_section_size,
    };
    const expected_record_text_section = [
      "00100100000000100000010000000000",
      "00000000010000100001100000100001",
      "00000000011000100010000000100101",
      "00000000000001010011010000000000",
      "00100100110001110010011100001111",
      "00000000111000100100000000100011",
      "00000000100000110100100000100111",
      "00110100010010100000000011111111",
      "00000000000001100101100101000010",
      "00111100000001000001000000000000",
      "00110100100001000000000000001100",
      "00000001011001010110100000100100",
      "00110000100011100000000001100100",
      "00111100000100010000000001100100",
      "00100100000000100000000000001010",
    ];

    expect(record_text_section(symbol_table_info, text_segment)).toEqual(
      expected_record_text_section
    );
  });
});

describe("make binary file module", () => {
  test("example2.s binary file", () => {
    const fileContent: string = readFileSync(
      __dirname + "/../sample_input/example2.s",
      "utf-8"
    );
    const ContentToStringArray: string[] = fileContent.split("\n");
    const expected_binary_file: string[] = [
      "00000000000000000000000000111100",
      "00000000000000000000000000010000",
      "00100100000000100000010000000000",
      "00000000010000100001100000100001",
      "00000000011000100010000000100101",
      "00000000000001010011010000000000",
      "00100100110001110010011100001111",
      "00000000111000100100000000100011",
      "00000000100000110100100000100111",
      "00110100010010100000000011111111",
      "00000000000001100101100101000010",
      "00111100000001000001000000000000",
      "00110100100001000000000000001100",
      "00000001011001010110100000100100",
      "00110000100011100000000001100100",
      "00111100000100010000000001100100",
      "00100100000000100000000000001010",
      "00000000000000000000000000000011",
      "00000000000000000000000001111011",
      "00000000000000000001000011111010",
      "00010001000100010001000100010001",
    ];

    expect(make_binary_file(ContentToStringArray)).toEqual(
      expected_binary_file
    );
  });
});
