import React, { useEffect, useState } from "react";
import logo from "./logo.svg";
import "./App.css";
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

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
