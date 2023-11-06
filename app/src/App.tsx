import React, { useEffect, useState } from "react";
import { loadWasm } from "./wasmLoader";

function App() {
  const [wasmLoaded, setWasmLoaded] = useState(null);

  useEffect(() => {
    loadWasm().then((result) => {
      console.log(result);
      console.log(result.exports.makeBinaryFile);
    });
  });

  useEffect(() => {
    if (wasmLoaded) {
      console.log(wasmLoaded);
    }
  }, [wasmLoaded]);

  return <div className="App"></div>;
}

export default App;
