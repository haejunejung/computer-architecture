import React, {useEffect} from 'react';
import {ASUtil} from '@assemblyscript/loader';
import {useRecoilValue} from 'recoil';
import {fileContentsState, wasmModuleState} from '../states/recoil';

const BinarySheet = (): JSX.Element => {
  const wasmModule = useRecoilValue<ASUtil | null>(wasmModuleState);
  const fileContents = useRecoilValue<string[]>(fileContentsState);

  const onClick = () => {
    if ('makeBinaryFile' in wasmModule!) {
      if (typeof wasmModule.makeBinaryFile === 'function') {
        console.log(
          wasmModule.makeBinaryFile([
            '.data',
            'data1:	.word 100',
            '.text',
            'main:',
            'and $17, $17, $0',
          ]),
        );
      }
    }
    console.log(wasmModule);
  };

  return (
    <>
      <button onClick={onClick}>bt</button>
    </>
  );
};

export default BinarySheet;
