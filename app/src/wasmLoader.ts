import loader from '@assemblyscript/loader';

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
): Promise<Array<string> | undefined> => {
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
  } = exports;

  try {
    if (
      typeof createSymbolTable === 'function' &&
      typeof createDataSegment === 'function' &&
      typeof createTextSegment === 'function' &&
      typeof makeBinaryFile === 'function'
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
      const binarys = __getArray(binarysPtr);
      const result = binarys.map(b => __getString(b));
      return result;
    }
  } catch (error) {
    console.log(error);
  }
};
