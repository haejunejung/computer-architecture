import loader, {ASUtil} from '@assemblyscript/loader';

const assemblyCode: Array<string> = [
  '.data',
  'data1: .word 100',
  'data2: .word 200',
  'data3: .word 0x12345678',
  '.text',
  'main:',
  'and $17, $17, $0',
  'and $18, $18, $0',
  'la $8, data1',
  'la $9, data2',
  'and $10, $10, $0',
  'lab1:',
  'and $11, $11, $0',
  'lab2:',
  'addi $17, $17, 0x1',
  'addi $11, $11, 0x1',
  'or $9, $9, $0',
  'bne $11, $8, lab2',
  'lab3:',
  'addi $18, $18, 0x2',
  'addi $11, $11, 1',
  'sll $18, $17, 1',
  'srl $17, $18, 1',
  'and $19, $17, $18',
  'bne $11, $9, lab3',
  'lab4:',
  'add $5, $5, $31',
  'nor $16, $17, $18',
  'beq $10, $8, lab5',
  'j lab1',
  'lab5:',
  'ori $16, $16, 0xf0f0',
];

export const loadWebAssembly = async (filename: string) => {
  try {
    loader.instantiate(fetch(filename)).then(instance => {
      if ('makeSymbolTable' in instance.exports) {
        const makeSymbolTable = instance.exports.makeSymbolTable;
        if (typeof makeSymbolTable === 'function') {
          console.log(makeSymbolTable(assemblyCode));
        }
      }
    });
  } catch (error) {
    console.log(error);
  }

  try {
    loader.instantiate(fetch(filename)).then(instance => {
      if ('makeSymbolTable2' in instance.exports) {
        const makeSymbolTable2 = instance.exports.makeSymbolTable2;
        if (typeof makeSymbolTable2 === 'function') {
          console.log(makeSymbolTable2('AAAAAAAAAAAAA'));
        }
      }
    });
  } catch (error) {
    console.log(error);
  }

  try {
    loader.instantiate(fetch(filename)).then(instance => {
      if ('makeSymbolTable3' in instance.exports) {
        const makeSymbolTable3 = instance.exports.makeSymbolTable3;
        if (typeof makeSymbolTable3 === 'function') {
          console.log(makeSymbolTable3(3));
        }
      }
    });
  } catch (error) {
    console.log(error);
  }

  try {
    loader.instantiate(fetch(filename)).then(instance => {
      if ('makeSymbolTable2' in instance.exports) {
        const makeSymbolTable2 = instance.exports.makeSymbolTable2;
        if (typeof makeSymbolTable2 === 'function') {
          const str = assemblyCode.join('\n');
          const strPtr = instance.exports.__newString(str);
          const newStrPtr = makeSymbolTable2(strPtr, str.length);
          const newStr = instance.exports.__getString(newStrPtr);
          console.log(newStr);
        }
      }
    });
  } catch (error) {
    console.log(error);
  }

  try {
    loader.instantiate(fetch(filename)).then(instance => {
      if ('takeStringArray' in instance.exports) {
        const takeStringArray = instance.exports.takeStringArray;
        if (typeof takeStringArray === 'function') {
          const str = ['AA', 'BB'];
          const str_ptrs = str.map(s => instance.exports.__newString(s));
          const str_arr = instance.exports.__newArray(
            instance.exports.StringArray_ID as number,
            str_ptrs,
          );

          const newArrayptr = takeStringArray(str_arr);
          const newStrArray = instance.exports
            .__getArray(newArrayptr)
            .map(ptr => instance.exports.__getString(ptr));

          console.log(newStrArray);
        }
      }
    });
  } catch (error) {
    console.log(error);
  }
};

// export const loadWebAssembly = async (filename: string) => {
//   try {
//     // loader.instantiate(fetch(filename)).then(instance => {
//     //   if ('makeBinaryFile' in instance.exports) {
//     //     const makeBinaryFile = instance.exports.makeBinaryFile;
//     //     if (typeof makeBinaryFile === 'function') {
//     //       // makeBinaryFile 함수로부터 배열의 포인터를 얻습니다.
//     //       const stringArrayPointer = makeBinaryFile(['sll']);
//     //       // 배열의 포인터를 사용하여 실제 배열을 얻습니다.
//     //       const stringArray = instance.exports.__getArray(stringArrayPointer);
//     //       // 배열의 각 원소에 대한 실제 문자열을 얻습니다.
//     //       const actualStrings = stringArray.map(ptr =>
//     //         instance.exports.__getString(ptr),
//     //       );
//     //       // 전체 문자열 배열을 출력합니다.
//     //       console.log(actualStrings);
//     //     }
//     //   }
//     // });
//   } catch (error) {
//     console.error('WebAssembly 로드 중 오류 발생:', error);
//   }

//   try {
//     const {exports} = await loader.instantiateStreaming(fetch(filename), {});

//     // WebAssembly 모듈에서 문자열을 반환하는 함수를 호출합니다.
//     // 예를 들어, exports.stringarray()가 문자열의 포인터를 반환한다고 가정합니다.

//     if ('stringarray' in exports) {
//       const stringarray = exports.stringarray;
//       if (typeof stringarray === 'function') {
//         const stringPointer = stringarray();

//         // __getString 함수를 사용하여 메모리 내의 실제 문자열 값을 읽어옵니다.
//         const actualString = exports.__getString(stringPointer);

//         // 콘솔에 문자열을 출력합니다.
//         console.log(actualString);
//       }
//     }
//   } catch (error) {
//     console.error('WebAssembly 로드 중 오류 발생:', error);
//   }

//   try {
//     const {exports} = await loader.instantiateStreaming(fetch(filename), {});

//     // WebAssembly 모듈에서 문자열을 반환하는 함수를 호출합니다.
//     // 예를 들어, exports.stringarray()가 문자열의 포인터를 반환한다고 가정합니다.

//     if ('sub' in exports) {
//       const sub = exports.sub;
//       if (typeof sub === 'function') {
//         console.log(sub(2, 1));
//       }
//     }
//   } catch (error) {
//     console.error('WebAssembly 로드 중 오류 발생:', error);
//   }

//   try {
//     const {exports} = await loader.instantiateStreaming(fetch(filename), {});

//     // WebAssembly 모듈에서 문자열을 반환하는 함수를 호출합니다.
//     // 예를 들어, exports.stringarray()가 문자열의 포인터를 반환한다고 가정합니다.

//     if ('stringarray2' in exports) {
//       const stringarray2 = exports.stringarray2;
//       if (typeof stringarray2 === 'function') {
//         const stringPointer = stringarray2();

//         // __getString 함수를 사용하여 메모리 내의 실제 문자열 값을 읽어옵니다.
//         const pt = exports.__getArray(stringPointer);

//         pt.map(prt => console.log(exports.__getString(prt)));
//       }
//     }
//   } catch (error) {
//     console.error('WebAssembly 로드 중 오류 발생:', error);
//   }

//   try {
//     const {exports} = await loader.instantiateStreaming(fetch(filename), {});

//     if ('MyFunc' in exports) {
//       const MyFunc = exports.MyFunc;
//       if (typeof MyFunc === 'function') {
//         const stringPointer = MyFunc(assemblyCode);

//         const pt = exports.__getArray(stringPointer);

//         pt.map(prt => console.log(exports.__getString(prt)));
//       }
//     }
//   } catch (error) {
//     console.error('WebAssembly 로드 중 오류 발생:', error);
//   }
// };
