import React, {useEffect, useMemo, useState} from 'react';
import loader from '@assemblyscript/loader';
import {useRecoilState, useRecoilValue} from 'recoil';
import {Column} from 'react-table';
import {
  AssemblerContentState,
  fileContentsState,
  wasmModuleState,
} from '../../states/recoil';
import {loadBinaryFile} from '../../wasmLoader';
import TableSheet from '../shared/TableSheet';
import {AssemblerOutput, line} from 'src/states/types';

const BinarySheet = (): JSX.Element => {
  const wasmModule = useRecoilValue<
    (loader.ASUtil & Record<string, unknown>) | undefined | null
  >(wasmModuleState);
  const fileContents = useRecoilValue<string[]>(fileContentsState);
  const [AssemblerContent, setAssemblerContent] =
    useRecoilState<AssemblerOutput>(AssemblerContentState);

  const load = async () => {
    if (wasmModule) {
      try {
        const b = await loadBinaryFile(wasmModule, fileContents);
        setAssemblerContent(b);
      } catch (error) {
        console.error('Error loading binary file:', error);
      }
    }
  };

  useEffect(() => {
    load();
  }, [fileContents]);

  const columns: Column<line>[] = useMemo(
    () => [
      {
        accessor: 'number',
        Header: <div className="text-start">#</div>,
      },
      {
        accessor: 'data',
        Header: <div className="px-4 text-start">32-bit binary</div>,
        Cell: ({value}) => <div className="px-4 text-base">{value}</div>,
      },
    ],
    [],
  );

  const binarys: line[] = AssemblerContent?.binarys.map((content, index) => {
    return {number: index + 1, data: content};
  });

  const data = useMemo(() => binarys, [binarys]);

  return (
    <section className="w-1/3 px-4 py-4">
      <TableSheet columns={columns} data={data} />
    </section>
  );
};

export default BinarySheet;
