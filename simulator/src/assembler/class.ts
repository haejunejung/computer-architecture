class inst_t {
  private _name: string;
  private _op: string;
  private _type: string;
  private _funct: string;

  get name(): string {
    return this._name;
  }

  get op(): string {
    return this._op;
  }

  get type(): string {
    return this._type;
  }

  get funct(): string {
    return this._funct;
  }

  constructor(name?: string, op?: string, type?: string, funct?: string) {
    this._name = name || "";
    this._op = op || "";
    this._type = type || "";
    this._funct = funct || "";
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

  constructor(name?: string, address?: number) {
    this._name = name || "";
    this._address = address || 0;
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
