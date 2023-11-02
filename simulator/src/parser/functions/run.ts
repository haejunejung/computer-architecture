import { MIPS } from "../classes/mips";
import { BYTES_PER_WORD, MEM_TEXT_START } from "../constants";
import { mem_read, mem_write, mem_write_half } from "./memory";
import {
  get_inst_info,
  get_reg_val,
  load_inst,
  sign_ex,
  zero_ex,
} from "./utils";

const RType = (
  mips: MIPS,
  rs: number,
  rt: number,
  rd: number,
  shamt: number,
  func_code: number
) => {
  switch (func_code) {
    case 0:
      mips.current_state.regs[rd] = mips.current_state.regs[rt] << shamt;
      break;
    case 2:
      mips.current_state.regs[rd] = mips.current_state.regs[rt] >> shamt;
      break;
    case 8:
      mips.current_state.pc = mips.current_state.regs[rs];
      break;
    case 32:
      mips.current_state.regs[rd] =
        get_reg_val(mips.current_state.regs[rs]) +
        get_reg_val(mips.current_state.regs[rt]);
      break;
    case 33:
      mips.current_state.regs[rd] =
        mips.current_state.regs[rs] + mips.current_state.regs[rt];
      break;
    case 34:
      mips.current_state.regs[rd] =
        get_reg_val(mips.current_state.regs[rs]) -
        get_reg_val(mips.current_state.regs[rt]);
      break;
    case 35:
      mips.current_state.regs[rd] =
        mips.current_state.regs[rs] - mips.current_state.regs[rt];
      break;
    case 36:
      mips.current_state.regs[rd] =
        mips.current_state.regs[rs] & mips.current_state.regs[rt];
      break;
    case 37:
      mips.current_state.regs[rd] =
        mips.current_state.regs[rs] | mips.current_state.regs[rt];
      break;
    case 39:
      mips.current_state.regs[rd] = ~(
        mips.current_state.regs[rs] | mips.current_state.regs[rt]
      );
      break;
    case 42:
      mips.current_state.regs[rd] =
        get_reg_val(mips.current_state.regs[rs]) <
        get_reg_val(mips.current_state.regs[rt])
          ? 1
          : 0;
      break;
    case 43:
      mips.current_state.regs[rd] =
        mips.current_state.regs[rs] < mips.current_state.regs[rt] ? 1 : 0;
      break;
    default:
      break;
  }

  if (func_code !== 8) {
    mips.current_state.pc += BYTES_PER_WORD;
  }
};

const JType = (mips: MIPS, op: number, target: number) => {
  switch (op) {
    case 0x2:
      mips.current_state.pc = target << 2;
      break;
    case 0x3:
      mips.current_state.regs[31] = mips.current_state.pc + 8;
      mips.current_state.pc = target << 2;
      break;
    default:
      break;
  }
};

const IType = (mips: MIPS, op: number, rs: number, rt: number, imm: number) => {
  switch (op) {
    case 0x8:
      mips.current_state.regs[rt] =
        get_reg_val(mips.current_state.regs[rs]) + sign_ex(imm);
      break;
    case 0x9:
      mips.current_state.regs[rt] = mips.current_state.regs[rs] + sign_ex(imm);
      break;
    case 0xc:
      mips.current_state.regs[rt] = mips.current_state.regs[rs] & zero_ex(imm);
      break;
    case 0x4:
      if (mips.current_state.regs[rs] === mips.current_state.regs[rt])
        mips.current_state.pc += imm * 4;
      break;
    case 0x5:
      if (mips.current_state.regs[rs] !== mips.current_state.regs[rt])
        mips.current_state.pc += imm * 4;
      break;
    case 0x25:
      mips.current_state.regs[rt] = load_inst(
        mem_read(mips.mem_regions, mips.current_state.regs[rs] + sign_ex(imm)),
        0x0000ffff
      );
      break;
    case 0xf:
      mips.current_state.regs[rt] = imm << 16;
      break;
    case 0x23:
      mips.current_state.regs[rt] = mem_read(
        mips.mem_regions,
        mips.current_state.regs[rs] + sign_ex(imm)
      );
      break;
    case 0xd:
      mips.current_state.regs[rt] = mips.current_state.regs[rs] | zero_ex(imm);
      break;
    case 0xa:
      if (get_reg_val(mips.current_state.regs[rs]) < sign_ex(imm))
        mips.current_state.regs[rt] = 1;
      else mips.current_state.regs[rt] = 0;
      break;
    case 0xb:
      if (mips.current_state.regs[rs] < sign_ex(imm))
        mips.current_state.regs[rt] = 1;
      else mips.current_state.regs[rt] = 0;
      break;
    case 0x29:
      mem_write_half(
        mips.mem_regions,
        mips.current_state.regs[rs] + sign_ex(imm),
        mips.current_state.regs[rt]
      );
      break;
    case 0x2b:
      mem_write(
        mips.mem_regions,
        mips.current_state.regs[rs] + sign_ex(imm),
        mips.current_state.regs[rt]
      );
      break;
    default:
      break;
  }

  mips.current_state.pc += BYTES_PER_WORD;
};

export const process_instruction = (mips: MIPS) => {
  const info = get_inst_info(mips, mips.current_state.pc);
  const opcode = info.opcode;
  const rs = info.rs;
  const rt = info.rt;
  const rd = info.rd;
  const imm = info.imm;
  const shamt = info.shamt;
  const func_code = info.func_code;
  const target = info.target;

  if (opcode === 0x0) {
    RType(mips, rs, rt, rd, shamt, func_code);
  } else if (opcode === 0x2 || opcode === 0x3) {
    JType(mips, opcode, target);
  } else {
    IType(mips, opcode, rs, rt, imm);
  }

  if (mips.current_state.pc - MEM_TEXT_START === mips.text_size) {
    mips.run_bit = false;
  }
};
