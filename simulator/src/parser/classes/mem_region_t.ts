import { MEM_GROW_UP } from "../constants";

export class mem_region_t {
  private _start: number;
  private _size: number;
  private _mem: Array<number> = [];
  private _off_bound: number;
  private _type: number;
  private _dirty: boolean = false;

  constructor(start: number, size: number, type: number = MEM_GROW_UP) {
    this._start = start;
    this._size = size;
    this._off_bound = -(size - 4) * type;
    this._type = type;
  }

  get start() {
    return this._start;
  }
  get size() {
    return this._size;
  }
  get mem() {
    return this._mem;
  }
  get dirty() {
    return this._dirty;
  }
  get off_bound() {
    return this._off_bound;
  }

  set mem(mem) {
    this._mem = mem;
  }

  set_off_bound(off: number) {
    this._dirty = true;

    if (this._type === MEM_GROW_UP) {
      this._off_bound = Math.max(off, this._off_bound);
    } else {
      this._off_bound = Math.min(off, this._off_bound);
    }
  }
}
