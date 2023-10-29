import { readFileSync } from "fs";
import { register_file } from "../../../src/parser/interface";
import { go } from "../../../src/parser/parser";

describe("parser integration test", () => {
  test(`example07.o test`, async () => {
    const expected_result: register_file = {
      PC: "0x00400058",
      Registers: {
        R0: "0x00000000",
        R1: "0x00000000",
        R2: "0x00000000",
        R3: "0x0000000a",
        R4: "0x10000000",
        R5: "0x00000000",
        R6: "0x00000000",
        R7: "0x00000000",
        R8: "0x00000000",
        R9: "0x00000000",
        R10: "0x00000000",
        R11: "0x00000000",
        R12: "0x00000000",
        R13: "0x00000000",
        R14: "0x00000000",
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
        "0x10000000": "0x00000001",
        "0x10000004": "0x0000000a",
        "0x10000008": "0x00000000",
      },
      Stack_section: {
        "0x7ffffff4": "0x0000000a",
        "0x7ffffff8": "0x00000000",
        "0x7ffffffc": "0x00000000",
      },
    };

    const binary_input: string = readFileSync(
      __dirname + `/../sample_input/example07.o`,
      "utf-8"
    );

    expect(go(binary_input, 10000).pop()).toEqual(expected_result);
  });
});
