export interface line {
  number: number;
  data: string;
}

export interface AssemblerOutput {
  binarys: Array<string>;
  texts: Array<string>;
  datas: Array<string>;
}

export interface Files {
  file: string;
  data: Array<string>;
}
