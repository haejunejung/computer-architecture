import React, { useEffect, useState } from "react";
import { loadWasm } from "./wasmLoader";

function App() {
  const [wasmLoaded, setWasmLoaded] = useState(false);
  const [sum, setSum] = useState(null);

  useEffect(() => {
    loadWasm().then((result) => {
      setWasmLoaded(result);
    });
  }, []);

  return <div className="App">{wasmLoaded && <div>{wasmLoaded}</div>}</div>;
}

export default App;
