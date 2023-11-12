class cpuState {
  pc_: i32 = 0;
  regs_: Array<number> = new Array<number>(MIPS_REGS).fill(0);

  constructor() {
    this.regs_[29] = MEM_STACK_START;
  }
}

const MIPS_REGS: u8 = 32;
const MEM_STACK_START: i32 = 0x80000000;

class instruction {
  opcode_: i8 = 0;
  funcCode_: i8 = 0;
  value_: u32 = 0;
  target_: u32 = 0;
  rs_: u8 = 0;
  rt_: u8 = 0;
  rd_: u8 = 0;
  imm_: i8 = 0;
  shamt_: u8 = 0;
}

class memRegionT {
  start_: i32 = 0;
  size_: i32 = 0;
  mem_: Array<i32> = [];
  offBound_: i32 = 0;
  type_: i8 = 0;
  dirty_: boolean = false;

  constructor(start: i32, size: i32, type: i8 = MEM_GROW_UP) {
    this.start_ = start;
    this.size_ = size;
    this.offBound_ = -(size - 4) * type;
    this.type_ = type;
  }

  setOffBound(off: i32) {
    this.dirty_ = true;
    if ((this.type_ = MEM_GROW_UP)) {
      this.offBound_ = Math.max(off, this.offBound_);
    } else {
      this.offBound_ = Math.min(off, this.offBound_);
    }
  }
}

const MEM_GROW_UP: i8 = 1;
const MEM_GROW_DOWN: i8 = -1;

const MEM_TEXT_SIZE: i32 = 0x00100000;
const MEM_DATA_SIZE: i32 = 0x00100000;
const MEM_STACK_SIZE: i32 = 0x00100000;
class MIPS {
  memRegions_: Array<memRegionT>;
  runBit_: boolean = true;
  instInfos_: Array<instruction> = [];
  currentState_: cpuState;
  input_: string;
  textSize_: i32 = 0;
  dataSize_: i32 = 0;
  constructor(input: string) {
    const memText: memRegionT = new memRegionT(MEM_TEXT_START, MEM_TEXT_SIZE);
    const memData: memRegionT = new memRegionT(MEM_DATA_START, MEM_DATA_SIZE);
    const memStack: memRegionT = new memRegionT(
      MEM_STACK_START - MEM_STACK_SIZE,
      MEM_STACK_SIZE,
      MEM_GROW_DOWN
    );

    this.memRegions_ = [memText, memData, memStack];
    this.currentState_ = new cpuState();
    this.input_ = input;

    this.initInstr();
    this.initPC();
  }

  initInstr() {
    this.textSize_ = fromBinaryToNum(this.input_.slice(0, 32));
    this.dataSize_ = fromBinaryToNum(this.input_.slice(32, 64));
    const bufferCount: i32 = this.input_.length >> 5;
    let readStart: i32 = 64;
    let ii: i32 = 0;
    for (let i = 0; i < bufferCount; i++) {
      const buffer = this.input_.slice(readStart, readStart + 32);
      if (ii < this.textSize_) {
        this.instInfos_[i] = makeInstr(buffer);
      }
    }
  }

  initPC() {
    this.currentState_.pc_ = MEM_TEXT_START;
  }
}

function makeInstr(buffer: string): instruction {
  const instr: instruction = new instruction();

  instr.opcode_ = fromBinaryToNum(buffer.slice(0, 6));

  if (instr.opcode_ === 0x0) {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11));
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16));
    instr.rd_ = fromBinaryToNum(buffer.slice(16, 21));
    instr.shamt_ = fromBinaryToNum(buffer.slice(21, 26));
    instr.funcCode_ = fromBinaryToNum(buffer.slice(26, 32));
  } else if (instr.opcode_ === 0x2 || instr.opcode_ === 0x3) {
    instr.target_ = fromBinaryToNum(buffer.slice(6, 32));
  } else {
    instr.rs_ = fromBinaryToNum(buffer.slice(6, 11));
    instr.rt_ = fromBinaryToNum(buffer.slice(11, 16));
    instr.imm_ = fromBinaryToNum(buffer.slice(16, 32));
  }

  return instr;
}

function fromBinaryToNum(bits: string): i32 {
  let eq: i32 = 0;
  let m: i32 = 1;

  bits = bits.split("").reverse().join("");
  for (let i = 0; i < bits.length; i++) {
    const b: i32 = parseInt(bits.charAt(i), 10) as i32;
    eq += b * m;
    m *= 2;
  }

  return eq;
}

function parseText(
  memRegions: Array<memRegionT>,
  buffer: string,
  index: i32
): void {}

function memWrite(
  memRegions: Array<memRegionT>,
  address: i32,
  value: i32
): void {
  for (const i in memRegions) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;

      memRegions[i].mem_[offset + 3] = (value >> 24) & 0xff;
      memRegions[i].mem_[offset + 2] = (value >> 16) & 0xff;
      memRegions[i].mem_[offset + 1] = (value >> 8) & 0xff;
      memRegions[i].mem_[offset + 0] = (value >> 0) & 0xff;

      memRegions[i].setOffBound(offset + 4);
      break;
    }
  }
}
