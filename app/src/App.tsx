import React, {useEffect} from 'react';
import {loadWebAssembly} from './wasmLoader';
import {useSetRecoilState} from 'recoil';
import loader from '@assemblyscript/loader';
import {wasmModuleState} from './states/recoil';

const App = (): JSX.Element => {
  const setWasmModule = useSetRecoilState<
    (loader.ASUtil & Record<string, unknown>) | undefined | null
  >(wasmModuleState);

  useEffect(() => {
    loadWebAssembly('release.wasm').then(response => {
      setWasmModule(response);
    });
  }, []);

  return <div></div>;
};

export default App;
