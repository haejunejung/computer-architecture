import loader from '@assemblyscript/loader';
import {AssemblerOutput} from './states/types';

export const loadWebAssembly = async (
  filename: string,
): Promise<
  (loader.ASUtil & Record<string, unknown>) | undefined //
> => {
  try {
    const instance = await loader.instantiate(fetch(filename));
    const {exports} = instance;
    return exports;
  } catch (error) {
    console.log(error);
  }
};

//TODO __unpin, __collect, Garbage Collection
export const loadBinaryFile = async (
  exports: loader.ASUtil & Record<string, unknown>,
  assemblyCode: Array<string>,
): Promise<AssemblerOutput> => {
  const {
    __pin,
    __unpin,
    __getString,
    __newString,
    __getArray,
    __newArray,
    createSymbolTable,
    createDataSegment,
    createTextSegment,
    makeBinaryFile,
    StringArrayId,
    getDataSeg,
    getTextSeg,
  } = exports;

  let result: AssemblerOutput = {binarys: [], datas: [], texts: []};
  try {
    if (
      typeof createSymbolTable === 'function' &&
      typeof createDataSegment === 'function' &&
      typeof createTextSegment === 'function' &&
      typeof makeBinaryFile === 'function' &&
      typeof getTextSeg === 'function' &&
      typeof getDataSeg === 'function'
    ) {
      const symbol_t_ptr = __pin(createSymbolTable());
      const dataSeg_ptr = __pin(createDataSegment());
      const textSeg_ptr = __pin(createTextSegment());
      const ptrs = assemblyCode.map(s => __newString(s));
      const arrayPtr = __pin(__newArray(StringArrayId as number, ptrs));
      const binarysPtr = makeBinaryFile(
        symbol_t_ptr,
        dataSeg_ptr,
        textSeg_ptr,
        arrayPtr,
      );

      const textSegArrayPtr = getTextSeg(textSeg_ptr);
      const dataSegArrayPtr = getDataSeg(dataSeg_ptr);
      const texts = __getArray(textSegArrayPtr);
      const textResult = texts.map(b => __getString(b));
      const datas = __getArray(dataSegArrayPtr);
      const dataResult = datas.map(b => __getString(b));
      const binarys = __getArray(binarysPtr);
      const binaryResult = binarys.map(b => __getString(b));
      result = {binarys: binaryResult, datas: dataResult, texts: textResult};
    }
  } catch (error) {
    console.log(error);
  }

  return result;
};
