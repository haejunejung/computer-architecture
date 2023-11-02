import { MEM_STACK_START, MIPS_REGS } from "../constants";

export class cpu_state {
  private _pc: number = 0;
  private _regs: Array<number> = new Array<number>(MIPS_REGS).fill(0);

  constructor() {
    this._regs[29] = MEM_STACK_START;
  }

  get pc() {
    return this._pc;
  }
  get regs() {
    return this._regs;
  }
  set pc(pc: number) {
    this._pc = pc;
  }
  set regs(regs: Array<number>) {
    this._regs = regs;
  }
}
