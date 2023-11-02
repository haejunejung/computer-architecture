import {
  MEM_DATA_SIZE,
  MEM_DATA_START,
  MEM_GROW_DOWN,
  MEM_STACK_SIZE,
  MEM_STACK_START,
  MEM_TEXT_SIZE,
  MEM_TEXT_START,
} from "../constants";
import { from_binary_to_num } from "../functions/utils";
import { make_instr, parse_data, parse_text } from "../functions/parse";
import { cpu_state } from "./cpu_state";
import { instruction } from "./instruction";
import { mem_region_t } from "./mem_region_t";

export class MIPS {
  private mem_text = new mem_region_t(MEM_TEXT_START, MEM_TEXT_SIZE);
  private mem_data = new mem_region_t(MEM_DATA_START, MEM_DATA_SIZE);
  private mem_stack = new mem_region_t(
    MEM_STACK_START - MEM_STACK_SIZE,
    MEM_STACK_SIZE,
    MEM_GROW_DOWN
  );
  private _mem_regions: Array<mem_region_t> = [
    this.mem_text,
    this.mem_data,
    this.mem_stack,
  ];
  private _run_bit: boolean = true;
  private _inst_infos: Array<instruction> = [];
  private _current_state: cpu_state = new cpu_state();
  private _binary_input: string;
  private _text_size: number = 0;
  private _data_size: number = 0;

  constructor(binary_input: string) {
    this._binary_input = binary_input;
    // this.init_memory();
    this.init_instr();
    this.init_pc();
  }

  get mem_regions() {
    return this._mem_regions;
  }
  get current_state() {
    return this._current_state;
  }
  get text_size() {
    return this._text_size;
  }
  get run_bit() {
    return this._run_bit;
  }
  get inst_infos() {
    return this._inst_infos;
  }

  set run_bit(b: boolean) {
    this._run_bit = b;
  }

  init_memory() {
    for (const i in this._mem_regions) {
      this._mem_regions[i].mem = new Array<number>(this._mem_regions[i].size);
    }
  }

  init_instr() {
    this._text_size = from_binary_to_num(this._binary_input.slice(0, 32));
    this._data_size = from_binary_to_num(this._binary_input.slice(32, 64));
    const buffer_count = this._binary_input.length >> 5;
    let read_start = 64;
    let ii = 0;
    for (let i = 0; i < buffer_count; i++) {
      const buffer = this._binary_input.slice(read_start, read_start + 32);
      if (ii < this._text_size) {
        this._inst_infos[i] = make_instr(buffer);
        parse_text(this._mem_regions, buffer, ii);
      } else if (ii < this._text_size + this._data_size) {
        parse_data(this._mem_regions, buffer, ii - this._text_size);
      }

      ii += 4;
      read_start += 32;
    }
  }

  init_pc() {
    this._current_state.pc = MEM_TEXT_START;
  }
}
