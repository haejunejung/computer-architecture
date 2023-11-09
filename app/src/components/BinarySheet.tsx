import React, {useEffect, useState} from 'react';
import loader from '@assemblyscript/loader';
import {useRecoilState, useRecoilValue} from 'recoil';
import {fileContentsState, wasmModuleState} from '../states/recoil';
import {loadBinaryFile} from '../wasmLoader';
import {wasm} from 'webpack';

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

const BinarySheet = (): JSX.Element => {
  const wasmModule = useRecoilValue<
    (loader.ASUtil & Record<string, unknown>) | undefined | null
  >(wasmModuleState);
  const fileContents = useRecoilValue<string[]>(fileContentsState);
  const [binaryContent, setBinaryContent] = useState<Array<string>>([]);

  const onClick = async () => {
    if (wasmModule) {
      try {
        const b = await loadBinaryFile(wasmModule, assemblyCode); // await를 사용하여 Promise가 resolve 될 때까지 기다립니다.
        setBinaryContent(b || []); // 결과가 있으면 상태를 업데이트하고, 없으면 빈 배열을 사용합니다.
      } catch (error) {
        console.error('Error loading binary file:', error);
        setBinaryContent([]); // 오류가 발생하면 빈 배열로 상태를 설정합니다.
      }
    }
  };

  return (
    <>
      <button onClick={onClick}>bt</button>
      <div>
        {binaryContent.map((line, index) => (
          <div key={index}>{line}</div>
        ))}
      </div>
    </>
  );
};

export default BinarySheet;
