import React, {useEffect, useMemo, useState} from 'react';
import loader from '@assemblyscript/loader';
import {useRecoilValue} from 'recoil';
import {Column} from 'react-table';
import {fileContentsState, wasmModuleState} from '../../states/recoil';
import {loadBinaryFile} from '../../wasmLoader';
import TableSheet from '../shared/TableSheet';
import {line} from 'src/states/types';

const BinarySheet = (): JSX.Element => {
  const wasmModule = useRecoilValue<
    (loader.ASUtil & Record<string, unknown>) | undefined | null
  >(wasmModuleState);
  const fileContents = useRecoilValue<string[]>(fileContentsState);
  const [binaryContent, setBinaryContent] = useState<Array<string>>([]);

  const load = async () => {
    if (wasmModule) {
      try {
        const b = await loadBinaryFile(wasmModule, fileContents); // await를 사용하여 Promise가 resolve 될 때까지 기다립니다.
        setBinaryContent(b || []); // 결과가 있으면 상태를 업데이트하고, 없으면 빈 배열을 사용합니다.
      } catch (error) {
        console.error('Error loading binary file:', error);
        setBinaryContent([]); // 오류가 발생하면 빈 배열로 상태를 설정합니다.
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
        Header: '#',
      },
      {
        accessor: 'data',
        Header: '32-bit binary',
        Cell: ({value}) => <div className="px-1 py-1 text-lg">{value}</div>,
      },
    ],
    [],
  );

  const binarys: line[] = binaryContent.map((content, index) => {
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
