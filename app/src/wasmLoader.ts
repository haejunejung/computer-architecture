import loader from "@assemblyscript/loader";

export const loadWasm = async () => {
  const wasm = await loader.instantiate(fetch("release.wasm"));
  return wasm;
};
