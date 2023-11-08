enum section {
  DATA = 0,
  TEXT = 1,
  MAX_SIZE = 2,
}

function trimValue(value: string, expressions: string[] = ["$", ","]): string {
  let start = 0;
  let end = value.length;

  for (let i = 0; i < value.length; i++) {
    for (let j = 0; j < expressions.length; j++) {
      if (value.charAt(i) === expressions[j]) {
        start = i;
      } else {
        break;
      }
    }
  }

  for (let i = value.length - 1; i >= 0; i--) {
    for (let j = 0; j < expressions.length; j++) {
      if (value.charAt(i) === expressions[j]) {
        end = i;
      } else {
        break;
      }
    }
  }

  return value.substring(start, end);
}

function customSplit(input: string, delimiters: string[]): string[] {
  let tokens: string[] = [];
  let currentToken: string[] = [];

  for (let i = 0; i < input.length; i++) {
    if (delimiters.includes(input.charAt(i))) {
      if (currentToken.length > 0) {
        tokens.push(currentToken.join(""));
        currentToken = [];
      }
    } else {
      currentToken.push(input.charAt(i));
    }
  }

  if (currentToken.length > 0) {
    tokens.push(currentToken.join(""));
  }

  return tokens;
}

export function makeSymbolTable(input: Array<string>): Array<string> {
  let curSection: section = section.MAX_SIZE;
  let address: i32 = 0;

  for (let i = 0; i < input.length; i++) {
    const line: string = input[i];
    const tokenLine: Array<string> = customSplit(
      trimValue(line, ["\n", "\t"]),
      [" ", "\t", "\n"]
    );
  }

  return input;
}

export function makeSymbolTable2(ptr: usize, length: usize): string {
  let str = String.UTF8.decodeUnsafe(ptr, length);
  let newStr = "Processed: " + str;
  return newStr;
}

export function makeSymbolTable3(input: i32): i32 {
  return input;
}

// AssemblyScript에서 String Array 타입을 위한 일부 정보
export const StringArray_ID = idof<Array<string>>();

// AssemblyScript에서 문자열 배열을 받아 새 문자열 배열을 반환하는 함수
export function takeStringArray(arrayPtr: usize): Array<string> {
  // 포인터를 사용하여 문자열 배열을 가져옴
  const arr: Array<string> = load<Array<string>>(arrayPtr);
  // 새 문자열 배열을 생성
  const newArr = new Array<string>();
  for (let i = 0, k = arr.length; i < k; ++i) {
    newArr.push(arr[i]);
  }

  return newArr;
}
