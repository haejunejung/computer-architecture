import React, {useEffect} from 'react';
import {loadWebAssembly} from './useWasm';
import {useSetRecoilState} from 'recoil';
import {ASUtil} from '@assemblyscript/loader';
import {wasmModuleState} from './states/recoil';

const App = (): JSX.Element => {
  const setWasmModule = useSetRecoilState<ASUtil | null>(wasmModuleState);

  useEffect(() => {
    loadWebAssembly('release.wasm').then(response => {
      // setWasmModule(response.instance.exports);
      // if ('makeBinaryFile' in response?.exports!) {
      //   if (typeof response?.exports.makeBinaryFile === 'function') {
      //     console.log(
      //       response?.exports.makeBinaryFile([
      //         '.data',
      //         'data1:	.word 100',
      //         '.text',
      //         'main:',
      //         'and $17, $17, $0',
      //       ]),
      //     );
      //   }
      // }
    });
  }, []);

  return <div></div>;
};

export default App;
