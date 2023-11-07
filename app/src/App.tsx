import React, {useEffect} from 'react';
import {loadWebAssembly} from './useWasm';

const App = (): JSX.Element => {
  useEffect(() => {
    loadWebAssembly('release.wasm').then(response => {
      console.log(response);
    });
  }, []);

  return <div></div>;
};

export default App;
