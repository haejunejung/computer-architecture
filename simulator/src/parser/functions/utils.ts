import { instruction } from "../classes/instruction";
import { MIPS } from "../classes/mips";
import { INT_MAX, MEM_TEXT_START, UINT_MAX } from "../constants";

export const from_binary_to_num = (bits: string) => {
  let eq = 0;
  let m = 1;

  bits = bits.split("").reverse().join("");
  for (const bit of bits) {
    const b = parseInt(bit, 10);
    eq += b * m;
    m *= 2;
  }

  return eq;
};

export const num_to_hex_and_pad = (num: number, pad = 8): string => {
  return Number(num >>> 0)
    .toString(16)
    .padStart(pad, "0");
};

export const get_inst_info = (mips: MIPS, pc: number) => {
  return mips.inst_infos[(pc - MEM_TEXT_START) >> 2];
};

export const get_reg_val = (val: number) => {
  if (val > INT_MAX) {
    return (val & 0xffffffff) - UINT_MAX - 1;
  } else {
    return val;
  }
};

export const sign_ex = (x: number) => {
  if (x & 0x8000) {
    return x | 0xffff0000;
  } else {
    return x;
  }
};

export const zero_ex = (x: number) => {
  return x & 0x0000ffff;
};

export const load_inst = (load: number, mask: number) => {
  return load & mask;
};

export const ioffset = (info: instruction) => {
  return info.imm;
};
