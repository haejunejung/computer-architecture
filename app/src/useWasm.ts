import loader from '@assemblyscript/loader';

export const loadWebAssembly = async (filename: string) => {
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

  const instance = await loader.instantiate(fetch(filename));
  const {exports} = instance;
  const {
    __pin,
    __unpin,
    __getString,
    __newString,
    __collect,
    __getArray,
    __newArray,
    i32ArrayId,
    StringArrayId,
    getA,
    getB,
    strTostr,
    strToStrs,
    makeTextSymbol,
    recordSectionSize,
    recordDataSection,
    memory,
  } = exports;
  const str = assemblyCode.join('\n');
  const strPtr = __newString(str);

  if (typeof strTostr === 'function') {
    const newStrPtr = strTostr(strPtr, str.length * 2);
    const newStr = __getString(newStrPtr);
    console.log(newStr);
    __collect();
  }

  if (typeof makeTextSymbol === 'function') {
    const fooPtr = __pin(makeTextSymbol(strPtr, str.length * 2));
    if (typeof getA === 'function' && typeof getB === 'function') {
      const a = getA(fooPtr); // `a` 필드의 메모리 오프셋은 0입니다.
      const b = getB(fooPtr); // `b` 필드의 메모리 오프셋은 4입니다 (32비트 float 이후).
      console.log({a, b});
    }

    // 사용이 끝났으면 객체를 unpin하여 가비지 컬렉션을 허용합니다.
    __unpin(fooPtr);
    __collect();
  }

  if (typeof strToStrs === 'function') {
    const newStrPtr = strToStrs(strPtr, str.length * 2);
    const newArr = __getArray(newStrPtr);
    console.log(newArr);

    for (let i = 0; i < newStrPtr.length; i++) {
      const newStr = __getString(newStrPtr);
      console.log(newStr);
    }
    __collect();
  }

  if (typeof recordSectionSize === 'function') {
    const newStrptr = recordSectionSize(1, 2);
    const arr = __getArray(newStrptr);
    arr.map(p => console.log(__getString(p)));
    // console.log(__getString(newStrptr));
  }

  // if (typeof recordDataSection === 'function') {
  //   const a = __newString('1');
  //   const b = __newString('2');
  //   const arrayPtr = __pin(__newArray(StringArrayId as number, [a, b]));
  //   const newStrptr = recordDataSection(arrayPtr);
  //   console.log(__getString(newStrptr));
  // }

  if (typeof recordDataSection === 'function') {
    const a = __newString('0x100');
    const b = __newString('200');
    const arrayPtr = __pin(__newArray(StringArrayId as number, [a, b]));
    const newStrptr = recordDataSection(arrayPtr);
    const arr = __getArray(newStrptr);
    arr.map(p => console.log(__getString(p)));
  }
};
