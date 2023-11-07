import loader from '@assemblyscript/loader';

export const loadWebAssembly = async (filename: string) => {
  try {
    const response = await fetch(filename);
    const buffer = await response.arrayBuffer();
    const module = await WebAssembly.compile(buffer);
    const instance = await loader.instantiate(module);
    return instance;
  } catch (error) {
    console.error('WebAssembly 로드 중 오류 발생:', error);
  }
};
