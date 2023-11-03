export class InstT {
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

  constructor(
    name: string = "",
    op: string = "",
    type: string = "",
    funct: string = ""
  ) {
    this._name = name;
    this._op = op;
    this._type = type;
    this._funct = funct;
  }
}

export class symbolT {
  private _name: string;
  private _address: i32;

  get name(): string {
    return this._name;
  }

  set name(n: string) {
    this._name = n;
  }

  get address(): i32 {
    return this._address;
  }

  set address(addr: i32) {
    this._address = addr;
  }

  constructor(name: string = "", address: i32 = 0) {
    this._name = name;
    this._address = address;
  }
}
