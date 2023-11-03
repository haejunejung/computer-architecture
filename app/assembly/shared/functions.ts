export const trimValue = (
  value: string,
  expression: string = "/$,/"
): string => {
  let start: i32 = 0;
  let end: i32 = value.length;

  while (start < end && expression.indexOf(value.charAt(start)) >= 0) {
    ++start;
  }

  while (start < end && expression.indexOf(value.charAt(end - 1)) >= 0) {
    ++end;
  }

  return value.substring(start, end);
};

export const customSplit = (input: string, delimiters: string[]): string[] => {
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
};

export const numToBit = (num: i32, pad: i8 = 32): string => {
  if (num < 0) {
    num = 2 ** pad + num;
  }

  const bit = num.toString(2).padStart(pad, "0");
  return bit;
};

export const numToHex = (num: i32, pad: i8 = 8): string => {
  return num.toString(16).padStart(pad, "0");
};
