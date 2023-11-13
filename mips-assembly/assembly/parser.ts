const MEM_TEXT_SIZE: i32 = 0x00100000;
const MEM_DATA_SIZE: i32 = 0x00100000;
const MEM_STACK_START: i32 = 0x80000000;
const MEM_STACK_SIZE: i32 = 0x00100000;
const MIPS_REGS: u8 = 32;
const MEM_GROW_UP: i8 = 1;
const MEM_GROW_DOWN: i8 = -1;
const INT_MAX: i32 = 2147483647;
const UINT_MAX: u32 = 4294967295;

class Register {
  regs_: Map<string, string>;

  constructor() {
    this.regs_ = new Map<string, string>();
    this.regs_.set("R0", "0x00000000");
    this.regs_.set("R1", "0x00001000");
  }
}

class MemorySection {
  dataSection_: Map<string, string>;
  stackSection_: Map<string, string>;

  constructor() {
    this.dataSection_ = new Map<string, string>();
    this.stackSection_ = new Map<string, string>();
  }
}

class computerSystem {
  PC_: string = "0x0040000";
  REGS_: Register = new Register();
  MEMS_: MemorySection = new MemorySection();
}

export function createComputerSystem(): computerSystem {
  return new computerSystem();
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

  setOffBound(off: i32): void {
    this.dirty_ = true;
    if ((this.type_ = MEM_GROW_UP)) {
      this.offBound_ = Math.max(off, this.offBound_) as i32;
    } else {
      this.offBound_ = Math.min(off, this.offBound_) as i32;
    }
  }
}

//TODO type
class instruction {
  opcode_: i32 = 0;
  funcCode_: i32 = 0;
  value_: i32 = 0;
  target_: i32 = 0;
  rs_: i32 = 0;
  rt_: i32 = 0;
  rd_: i32 = 0;
  imm_: i32 = 0;
  shamt_: i32 = 0;
}

class MIPS {
  memRegions_: Array<memRegionT>;
  runBit_: boolean = true;
  instInfos_: Array<instruction> = new Array<instruction>(1024); //!
  currentState_: cpuState;
  textSize_: i32 = 0;
  dataSize_: i32 = 0;
  constructor() {
    const memText: memRegionT = new memRegionT(MEM_TEXT_START, MEM_TEXT_SIZE);
    const memData: memRegionT = new memRegionT(MEM_DATA_START, MEM_DATA_SIZE);
    const memStack: memRegionT = new memRegionT(
      MEM_STACK_START - MEM_STACK_SIZE,
      MEM_STACK_SIZE,
      MEM_GROW_DOWN
    );

    this.memRegions_ = [memText, memData, memStack];
    this.currentState_ = new cpuState();
    this.currentState_.pc_ = MEM_TEXT_START;
  }
}

export function createMIPS(): MIPS {
  return new MIPS();
}

export function getcpuPC(ptr: usize): i32 {
  const mips = changetype<MIPS>(ptr);
  return mips.currentState_.pc_;
}

class cpuState {
  pc_: i32 = 0;
  regs_: Array<i32> = new Array<i32>(MIPS_REGS).fill(0);

  constructor() {
    this.regs_[29] = MEM_STACK_START;
  }
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

function parseText(
  memRegions: Array<memRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_TEXT_START + index, fromBinaryToNum(buffer));
}

function parseData(
  memRegions: Array<memRegionT>,
  buffer: string,
  index: i32
): void {
  memWrite(memRegions, MEM_DATA_START + index, fromBinaryToNum(buffer));
}

export function getPC(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  return cs.PC_;
}

function getInstInfo(mips: MIPS, pc: i32): instruction {
  return mips.instInfos_[(pc - MEM_TEXT_START) >> 2];
}

function getRegVal(val: i32): i32 {
  if (val > INT_MAX) {
    return (val & 0xffffffff) - UINT_MAX - 1;
  } else {
    return val;
  }
}

function signEx(x: i32): i32 {
  if (x & 0x8000) {
    return x | 0xffff0000;
  } else {
    return x;
  }
}

function zeroEx(x: i32): i32 {
  return x & 0x0000ffff;
}

function loadInst(load: i32, mask: i32): i32 {
  return load & mask;
}

function RType(
  mips: MIPS,
  rs: i32,
  rt: i32,
  rd: i32,
  shamt: i32,
  funcCode: i32
): void {
  if (funcCode === 0) {
    mips.currentState_.regs_[rd] = mips.currentState_.regs_[rt] << shamt;
  } else if (funcCode === 2) {
    mips.currentState_.regs_[rd] = mips.currentState_.regs_[rt] >> shamt;
  } else if (funcCode === 8) {
    mips.currentState_.pc_ = mips.currentState_.regs_[rs];
  } else if (funcCode === 32) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) +
      getRegVal(mips.currentState_.regs_[rt]);
  } else if (funcCode === 33) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] + mips.currentState_.regs_[rt];
  } else if (funcCode === 34) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) -
      getRegVal(mips.currentState_.regs_[rt]);
  } else if (funcCode === 35) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] - mips.currentState_.regs_[rt];
  } else if (funcCode === 36) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] & mips.currentState_.regs_[rt];
  } else if (funcCode === 37) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] | mips.currentState_.regs_[rt];
  } else if (funcCode === 39) {
    mips.currentState_.regs_[rd] = ~(
      mips.currentState_.regs_[rs] | mips.currentState_.regs_[rt]
    );
  } else if (funcCode === 42) {
    mips.currentState_.regs_[rd] =
      getRegVal(mips.currentState_.regs_[rs]) <
      getRegVal(mips.currentState_.regs_[rt])
        ? 1
        : 0;
  } else if (funcCode === 43) {
    mips.currentState_.regs_[rd] =
      mips.currentState_.regs_[rs] < mips.currentState_.regs_[rt] ? 1 : 0;
  }

  if (funcCode !== 8) {
    mips.currentState_.pc_ += BYTES_PER_WORD;
  }
}

function JType(mips: MIPS, op: i32, target: i32): void {
  if (op === 0x2) {
    mips.currentState_.pc_ = target << 2;
  } else if (op === 0x3) {
    mips.currentState_.regs_[31] = mips.currentState_.pc_ + 8;
    mips.currentState_.pc_ = target << 2;
  }
}

function IType(mips: MIPS, op: i32, rs: i32, rt: i32, imm: i32): void {
  if (op === 0x8) {
    mips.currentState_.regs_[rt] =
      getRegVal(mips.currentState_.regs_[rs]) + signEx(imm);
  } else if (op === 0x9) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] + signEx(imm);
  } else if (op === 0xc) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] & zeroEx(imm);
  } else if (op === 0x4) {
    if (mips.currentState_.regs_[rs] === mips.currentState_.regs_[rt]) {
      mips.currentState_.pc_ += imm * 4;
    }
  } else if (op === 0x5) {
    if (mips.currentState_.regs_[rs] !== mips.currentState_.regs_[rt]) {
      mips.currentState_.pc_ += imm * 4;
    }
  } else if (op === 0x25) {
    mips.currentState_.regs_[rt] = loadInst(
      memRead(mips.memRegions_, mips.currentState_.regs_[rs] + signEx(imm)),
      0x0000ffff
    );
  } else if (op === 0xf) {
    mips.currentState_.regs_[rt] = imm << 16;
  } else if (op === 0x23) {
    mips.currentState_.regs_[rt] = memRead(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm)
    );
  } else if (op === 0xd) {
    mips.currentState_.regs_[rt] = mips.currentState_.regs_[rs] | zeroEx(imm);
  } else if (op === 0xa) {
    if (getRegVal(mips.currentState_.regs_[rs]) < signEx(imm)) {
      mips.currentState_.regs_[rt] = 1;
    } else {
      mips.currentState_.regs_[rt] = 0;
    }
  } else if (op === 0xb) {
    if (mips.currentState_.regs_[rs] < signEx(imm)) {
      mips.currentState_.regs_[rt] = 1;
    } else {
      mips.currentState_.regs_[rt] = 0;
    }
  } else if (op === 0x29) {
    memWriteHalf(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm),
      mips.currentState_.regs_[rt]
    );
  } else if (op === 0x2b) {
    memWrite(
      mips.memRegions_,
      mips.currentState_.regs_[rs] + signEx(imm),
      mips.currentState_.regs_[rt]
    );
  }

  mips.currentState_.pc_ += BYTES_PER_WORD;
}

/** memory **/
function memRead(memRegions: Array<memRegionT>, address: i32): i32 {
  let ret = 0;
  for (let i = 0; i < memRegions.length; i++) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;
      ret =
        (memRegions[i].mem_[offset + 3] << 24) |
        (memRegions[i].mem_[offset + 2] << 16) |
        (memRegions[i].mem_[offset + 1] << 8) |
        (memRegions[i].mem_[offset + 0] << 0);
    }
  }

  return ret;
}

function memWrite(
  memRegions: Array<memRegionT>,
  address: i32,
  value: i32
): void {
  for (let i = 0; i < memRegions.length; i++) {
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

function memWriteHalf(
  memRegions: Array<memRegionT>,
  address: i32,
  value: i32
): void {
  for (let i = 0; i < memRegions.length; i++) {
    if (
      address >= memRegions[i].start_ &&
      address < memRegions[i].start_ + memRegions[i].size_
    ) {
      const offset = address - memRegions[i].start_;
      memRegions[i].mem_[offset + 1] = (value >> 8) & 0xff;
      memRegions[i].mem_[offset + 0] = (value >> 0) & 0xff;
      memRegions[i].setOffBound(offset + 2);
    }
  }
}

function processInstruction(mips: MIPS): void {
  const info = getInstInfo(mips, mips.currentState_.pc_);
  const opcode = info.opcode_;
  const rs = info.rs_;
  const rt = info.rt_;
  const rd = info.rd_;
  const imm = info.imm_;
  const shamt = info.shamt_;
  const funcCode = info.funcCode_;
  const target = info.target_;

  if (opcode === 0x0) {
    RType(mips, rs, rt, rd, shamt, funcCode);
  } else if (opcode === 0x2 || opcode === 0x3) {
    JType(mips, opcode, target);
  } else {
    IType(mips, opcode, rs, rt, imm);
  }

  if (mips.currentState_.pc_ - MEM_TEXT_START === mips.textSize_) {
    mips.runBit_ = false;
  }
}

/** exports **/
export function initInstr(ptr: usize, input: string): void {
  const mips = changetype<MIPS>(ptr);
  const textSize: i32 = fromBinaryToNum(input.slice(0, 32));
  const dataSize: i32 = fromBinaryToNum(input.slice(32, 64));
  mips.textSize_ = textSize;
  mips.dataSize_ = dataSize;
  const bufferCount: i32 = input.length >> 5;
  let readStart: i32 = 64;
  let ii: i32 = 0;

  for (let i = 0; i < bufferCount; i++) {
    const buffer = input.slice(readStart, readStart + 32);
    if (ii < textSize) {
      mips.instInfos_[i] = makeInstr(buffer);
      parseText(mips.memRegions_, buffer, ii);
    } else if (ii < textSize + dataSize) {
      parseData(mips.memRegions_, buffer, ii - textSize);
    }

    ii += 4;
    readStart += 32;
  }
}

export function getRegs(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.REGS_.regs_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.REGS_.regs_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

export function getDataSection(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.MEMS_.dataSection_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.MEMS_.dataSection_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

export function getStackSection(ptr: usize): string {
  const cs = changetype<computerSystem>(ptr);
  let serializeMap: string[] = [];
  const keys = cs.MEMS_.stackSection_.keys();
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    const value = cs.MEMS_.stackSection_.get(key);
    if (value !== null) {
      serializeMap.push(`${key}:${value}`);
    }
  }

  return serializeMap.join(",");
}

export function getCycles(
  csPtr: usize,
  mipsPtr: usize,
  input: string,
  num_cycles: i32 = 10000
): Array<string> {
  const cs = changetype<computerSystem>(csPtr);
  const mips = changetype<MIPS>(mipsPtr);
  const cycles: Array<string> = [];

  initInstr(mipsPtr, input); // TEST 완료
  for (let i = 0; i < num_cycles; i++) {
    processInstruction(mips);
    const pc = getPC(csPtr);
    const regs = getRegs(csPtr);
    const dataSection = getDataSection(csPtr);
    const stackSection = getStackSection(csPtr);

    cycles.push(
      `.pc${pc}.regs${regs}.dataSection${dataSection}.stackSection${stackSection}`
    );
  }
  return cycles;
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
