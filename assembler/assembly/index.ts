function numtoBits(num: i32, pad: i8 = 32): string {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
}

export const StringArrayId = idof<Array<string>>();

export function recordSectionSize(
  data_section_size: i32,
  text_section_size: i32
): Array<string> {
  const binary_text_section_size = numtoBits(text_section_size);
  const binary_data_section_size = numtoBits(data_section_size);
  return [binary_text_section_size, binary_data_section_size];
}

export function recordDataSection(dataSeg: Array<string>): Array<string> {
  const binary_data_section: Array<string> = [];

  for (let i = 0; i < dataSeg.length; i++) {
    const data = dataSeg[i];
    const dataToNum =
      data.slice(0, 2) === "0x"
        ? (parseInt(data.slice(2), 16) as i32)
        : (parseInt(data) as i32);
    binary_data_section.push(numtoBits(dataToNum));
  }

  return binary_data_section;
}

// export function makeDataSymbolTable(input: Array<string>): Array<string> {}

// export function makeTextSymbolTable(input: Array<string>): Array<string> {}
