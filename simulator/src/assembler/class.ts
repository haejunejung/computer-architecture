class inst_t {
  private _name: string;
  private _op: string;
  private _type: string;
  private _funct: string;

  constructor(name: string, op: string, type: string, funct: string) {
    this._name = name;
    this._op = op;
    this._type = type;
    this._funct = funct;
  }
}

class symbol_t {
  private _name: string;
  private _address: number;

  get name(): string {
    return this._name;
  }

  set name(n: string) {
    this._name = n;
  }

  get address(): number {
    return this._address;
  }

  set address(addr) {
    this._address = addr;
  }

  constructor() {
    this._name = "";
    this._address = 0;
  }
}

class la_struct {
  private _op: string;
  private _rt: string;
  private _imm: string;

  constructor(op: string, rt: string, imm: string) {
    this._op = op;
    this._rt = rt;
    this._imm = imm;
  }
}

export { inst_t, symbol_t, la_struct };
