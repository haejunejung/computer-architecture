import { MIPS } from "../classes/mips";
import { BYTES_PER_WORD, MEM_STACK_SIZE, MIPS_REGS } from "../constants";
import { mem_read } from "./memory";
import { process_instruction } from "./run";
import { num_to_hex_and_pad } from "./utils";
import { register_file } from "../interface";

const rdump = (
  mips: MIPS
): { PC: string; Registers: { [key: string]: string } } => {
  const result = {
    PC: `0x${num_to_hex_and_pad(mips.current_state.pc)}`,
    Registers: {} as { [key: string]: string },
  };

  for (let i = 0; i < MIPS_REGS; i++) {
    result.Registers[`R${i}`] = `0x${num_to_hex_and_pad(
      mips.current_state.regs[i]
    )}`;
  }

  return result;
};

const dump_memory = (
  mips: MIPS
): {
  Data_section: { [key: string]: string };
  Stack_section: { [key: string]: string };
} => {
  let Data_section: { [key: string]: string } = {};
  let Stack_section: { [key: string]: string } = {};

  if (mips.mem_regions[1].dirty) {
    const dstart = mips.mem_regions[1].start;
    const dstop = mips.mem_regions[1].start + mips.mem_regions[1].off_bound;

    for (let i = dstart; i <= dstop; i += BYTES_PER_WORD) {
      Data_section[`0x${num_to_hex_and_pad(i)}`] = `0x${num_to_hex_and_pad(
        mem_read(mips.mem_regions, i)
      )}`;
    }
  }

  if (mips.mem_regions[2].dirty) {
    const dstart = mips.mem_regions[2].start + mips.mem_regions[2].off_bound;
    const dstop = mips.mem_regions[2].start + MEM_STACK_SIZE - 4;

    for (let i = dstart; i <= dstop; i += BYTES_PER_WORD) {
      Stack_section[`0x${num_to_hex_and_pad(i)}`] = `0x${num_to_hex_and_pad(
        mem_read(mips.mem_regions, i)
      )}`;
    }
  }

  return { Data_section, Stack_section };
};

export const go = (
  binary_input: string,
  num_cycles: number
): Array<register_file> => {
  const mips = new MIPS(binary_input);
  const cycles: Array<register_file> = [];
  for (let i = 0; i < num_cycles; i++) {
    if (mips.run_bit === false) {
      break;
    }
    process_instruction(mips);
    const regs = rdump(mips);
    const mem = dump_memory(mips);

    const reg_file: register_file = {
      PC: regs.PC,
      Registers: regs.Registers,
      Data_section: mem.Data_section,
      Stack_section: mem.Stack_section,
    };

    cycles.push(reg_file);
  }

  return cycles;
};
