export class instruction {
  private _opcode: number = 0;
  private _func_code: number = 0;
  private _value: number = 0;
  private _target: number = 0;
  private _rs: number = 0;
  private _rt: number = 0;
  private _imm: number = 0;
  private _rd: number = 0;
  private _shamt: number = 0;

  get opcode(): number {
    return this._opcode;
  }
  get func_code(): number {
    return this._func_code;
  }
  get value(): number {
    return this._value;
  }
  get target(): number {
    return this._target;
  }
  get rs(): number {
    return this._rs;
  }
  get rt(): number {
    return this._rt;
  }
  get imm(): number {
    return this._imm;
  }
  get rd(): number {
    return this._rd;
  }
  get shamt(): number {
    return this._shamt;
  }

  set opcode(op: number) {
    op = op & 0xffff;

    if (op & 0x8000) {
      op = op - 0x10000;
    }

    this._opcode = op;
  }
  set func_code(func_code: number) {
    func_code = func_code & 0xffff;

    if (func_code & 0x8000) {
      func_code = func_code - 0x10000;
    }

    this._func_code = func_code;
  }
  set value(value: number) {
    value = value >>> 0;
    this._value = value;
  }
  set target(target: number) {
    target = target >>> 0;
    this._target = target;
  }
  set rs(rs: number) {
    rs = rs & 0xff;
    this._rs = rs;
  }
  set rt(rt: number) {
    rt = rt & 0xff;
    this._rt = rt;
  }
  set imm(imm: number) {
    imm = imm & 0xffff;

    if (imm & 0x8000) {
      imm = imm - 0x10000;
    }

    this._imm = imm;
  }
  set rd(rd: number) {
    rd = rd & 0xff;
    this._rd = rd;
  }
  set shamt(shamt: number) {
    shamt = shamt & 0xff;
    this._shamt = shamt;
  }
}
