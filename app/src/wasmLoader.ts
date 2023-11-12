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

const makeMap = (value: string): Map<string, string> => {
  const map = new Map<string, string>();
  const pairs = value.split(',');
  pairs.forEach(pair => {
    const [key, value] = pair.split(':');
    map.set(key, value);
  });

  return map;
};

interface ParserFile {
  pc: string;
  regs: Map<string, string>;
  dataSection: Map<string, string>;
  stackSection: Map<string, string>;
}

export const loadParserFile = async (
  exports: loader.ASUtil & Record<string, unknown>,
  assemblyCode: Array<string>,
): Promise<Array<ParserFile>> => {
  const {
    __pin,
    __unpin,
    __getString,
    __getArray,
    __collect,
    createComputerSystem,
    getCycles,
  } = exports;

  let result: Array<ParserFile> = [];
  try {
    if (
      typeof createComputerSystem === 'function' &&
      typeof getCycles === 'function'
    ) {
      const regPtr = __pin(createComputerSystem());
      const cyclesPtr = __pin(getCycles(regPtr));
      const cycles = __getArray(cyclesPtr);
      result = cycles.map(b => {
        const cycle = __getString(b);
        const pcStartIdx = cycle.indexOf('.pc');
        const regsStartIdx = cycle.indexOf('.regs');
        const dataSectionStartIdx = cycle.indexOf('.dataSection');
        const stackSectionStartIdx = cycle.indexOf('.stackSection');
        const pc = cycle.slice(pcStartIdx + 3, regsStartIdx);
        const regs = makeMap(
          cycle.slice(regsStartIdx + 5, dataSectionStartIdx),
        );
        const dataSection = makeMap(
          cycle.slice(dataSectionStartIdx + 12, stackSectionStartIdx),
        );
        const stackSection = makeMap(cycle.slice(stackSectionStartIdx + 13));

        return {
          pc: pc,
          regs: regs,
          dataSection: dataSection,
          stackSection: stackSection,
        };
      });

      __unpin(regPtr);
      __unpin(cyclesPtr);
    }
  } catch (error) {
    throw new Error('Parser error:' + error);
  } finally {
    __collect();
    return result;
  }
};

export const loadBinaryFile = async (
  exports: loader.ASUtil & Record<string, unknown>,
  assemblyCode: Array<string>,
): Promise<AssemblerOutput> => {
  const {
    __pin,
    __unpin,
    __collect,
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
      const symbolTPtr = __pin(createSymbolTable());
      const dataSegPtr = __pin(createDataSegment());
      const textSegPtr = __pin(createTextSegment());
      const ptrs = assemblyCode.map(s => {
        const strPtr = __newString(s);
        __pin(strPtr);
        return strPtr;
      });
      const arrayPtr = __pin(__newArray(StringArrayId as number, ptrs));
      const binarysPtr = makeBinaryFile(
        symbolTPtr,
        dataSegPtr,
        textSegPtr,
        arrayPtr,
      );

      const textSegArrayPtr = getTextSeg(textSegPtr);
      const dataSegArrayPtr = getDataSeg(dataSegPtr);
      const texts = __getArray(textSegArrayPtr);
      const textResult = texts.map(b => __getString(b));
      const datas = __getArray(dataSegArrayPtr);
      const dataResult = datas.map(b => __getString(b));
      const binarys = __getArray(binarysPtr);
      const binaryResult = binarys.map(b => __getString(b));
      __unpin(symbolTPtr);
      __unpin(dataSegPtr);
      __unpin(textSegPtr);
      ptrs.forEach(ptr => __unpin(ptr));
      __unpin(arrayPtr);
      result = {binarys: binaryResult, datas: dataResult, texts: textResult};
    }
  } catch (error) {
    throw new Error('Assembler error' + error);
  } finally {
    __collect();
    return result;
  }
};
