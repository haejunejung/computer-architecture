import { readFileSync } from "fs";
import { register_file } from "../../../src/parser/interface";
import { go } from "../../../src/parser/functions/parser";

describe("parser integration test", () => {
  test(`example03.o test`, async () => {
    const expected_result: register_file = {
      PC: "0x0040003c",
      Registers: {
        R0: "0x00000000",
        R1: "0x00000000",
        R2: "0x00000000",
        R3: "0x1000000c",
        R4: "0x00000000",
        R5: "0x0000007c",
        R6: "0x0000007c",
        R7: "0x000000f8",
        R8: "0x000000c8",
        R9: "0x12345678",
        R10: "0x00012341",
        R11: "0x00000000",
        R12: "0x12345678",
        R13: "0x000000c8",
        R14: "0x00000064",
        R15: "0x00000000",
        R16: "0x00000000",
        R17: "0x00000000",
        R18: "0x00000000",
        R19: "0x00000000",
        R20: "0x00000000",
        R21: "0x00000000",
        R22: "0x00000000",
        R23: "0x00000000",
        R24: "0x00000000",
        R25: "0x00000000",
        R26: "0x00000000",
        R27: "0x00000000",
        R28: "0x00000000",
        R29: "0x80000000",
        R30: "0x00000000",
        R31: "0x00000000",
      },
      Data_section: {
        "0x10000000": "0x00000064",
        "0x10000004": "0x000000c8",
        "0x10000008": "0x12345678",
        "0x1000000c": "0x00012341",
        "0x10000010": "0x0000007c",
        "0x10000014": "0x0000007c",
        "0x10000018": "0x000000f8",
      },
      Stack_section: {},
    };

    const binary_input: string = readFileSync(
      __dirname + `/../sample_input/example03.o`,
      "utf-8"
    );

    expect(go(binary_input, 10000).pop()).toEqual(expected_result);
  });
});
