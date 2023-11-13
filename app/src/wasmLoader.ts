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
    __newString,
    __getArray,
    __newArray,
    __collect,
    StringArrayId,
    createComputerSystem,
    getCycles,
    createMIPS,
    getTextSize,
    initInstr,
  } = exports;

  console.log(exports);

  let result: Array<ParserFile> = [];

  //* TEST
  if (
    typeof createMIPS === 'function' &&
    typeof initInstr === 'function' &&
    typeof getTextSize === 'function'
  ) {
    const inputPtr = __newString(
      '000000000000000000000000010110000000000000000000000000000000110000000010001000001000100000100100000000100100000010010000001001000011110000001000000100000000000000111100000010010001000000000000001101010010100100000000000001000000000101000000010100000010010000000001011000000101100000100100001000100011000100000000000000010010000101101011000000000000000100000001001000000100100000100101000101010110100011111111111111000010001001010010000000000000001000100001011010110000000000000001000000000001000110010000010000000000000000010010100010000100001000000010001100101001100000100100000101010110100111111111111110100000000010111111001010000010000000000010001100101000000000100111000100010100100000000000000000010000100000010000000000000000011000110110000100001111000011110000000000000000000000000000011001000000000000000000000000001100100000010010001101000101011001111000',
    );
    const mipsPtr = __pin(createMIPS());
    initInstr(mipsPtr, inputPtr);
    const textSize = getTextSize(mipsPtr);
    console.log(textSize);
    __unpin(mipsPtr);
  }

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
