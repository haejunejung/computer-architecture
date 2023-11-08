const MEM_DATA_START: u32 = 0x10000000;

class Foo {
  a_: f32 = 0;
  b_: i32 = 0;

  constructor(a: f32, b: i32) {
    this.a_ = a;
    this.b_ = b;
  }
}

export function getA(ptr: usize): f32 {
  let foo = changetype<Foo>(ptr);
  return foo.a_;
}

export function getB(ptr: usize): i32 {
  let foo = changetype<Foo>(ptr);
  return foo.b_;
}

export function makeTextSymbol(ptr: usize, length: usize): Foo {
  const input = String.UTF16.decodeUnsafe(ptr, length);
  const lines: Array<string> = input.split("\n");

  let address: u32 = 0;
  for (let i = 0; i < lines.length; i++) {
    const line: string = lines[i];
    const tokenLine: Array<string> = line.split(" ");
    const temp: string = tokenLine[0];

    if (temp === ".data") {
      address = MEM_DATA_START;
      continue;
    }
  }

  return new Foo(1, 2);
}

export function strTostr(ptr: usize, length: usize): string {
  let str = String.UTF16.decodeUnsafe(ptr, length);
  return str;
}

export const StringArrayId = idof<Array<string>>();
export const USizeArrayId = idof<Array<usize>>();

export function strToStrs(ptr: usize, length: usize): Array<string> {
  const input = String.UTF16.decodeUnsafe(ptr, length);
  const lines: Array<string> = input.split("\n");
  return lines;
}
