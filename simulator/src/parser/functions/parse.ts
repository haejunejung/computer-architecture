import { instruction } from "../classes/instruction";
import { mem_region_t } from "../classes/mem_region_t";
import { MEM_DATA_START, MEM_TEXT_START } from "../constants";
import { from_binary_to_num } from "./utils";
import { mem_write } from "./memory";

export const parse_text = (
  mem_regions: Array<mem_region_t>,
  buffer: string,
  index: number
) => {
  mem_write(mem_regions, MEM_TEXT_START + index, from_binary_to_num(buffer));
};

export const parse_data = (
  mem_regions: Array<mem_region_t>,
  buffer: string,
  index: number
) => {
  mem_write(mem_regions, MEM_DATA_START + index, from_binary_to_num(buffer));
};

export const make_instr = (buffer: string): instruction => {
  const instr: instruction = new instruction();

  instr.opcode = from_binary_to_num(buffer.slice(0, 6));

  if (instr.opcode === 0x0) {
    instr.rs = from_binary_to_num(buffer.slice(6, 11));
    instr.rt = from_binary_to_num(buffer.slice(11, 16));
    instr.rd = from_binary_to_num(buffer.slice(16, 21));
    instr.shamt = from_binary_to_num(buffer.slice(21, 26));
    instr.func_code = from_binary_to_num(buffer.slice(26, 32));
  } else if (instr.opcode === 0x2 || instr.opcode === 0x3) {
    instr.target = from_binary_to_num(buffer.slice(6, 32));
  } else {
    instr.rs = from_binary_to_num(buffer.slice(6, 11));
    instr.rt = from_binary_to_num(buffer.slice(11, 16));
    instr.imm = from_binary_to_num(buffer.slice(16, 32));
  }

  return instr;
};
