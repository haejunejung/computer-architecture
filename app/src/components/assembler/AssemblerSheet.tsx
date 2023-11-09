import React, {useMemo} from 'react';
import {useRecoilValue} from 'recoil';
import {fileContentsState} from '../../states/recoil';
import {Column} from 'react-table';
import {line} from 'src/states/types';
import TableSheet from '../shared/TableSheet';

const AssemblerSheet = (): JSX.Element => {
  const fileContents = useRecoilValue(fileContentsState);

  const columns: Column<line>[] = useMemo(
    () => [
      {
        accessor: 'number',
        Header: '#',
      },
      {
        accessor: 'data',
        Header: 'assembly code',
        Cell: ({value}) => <div>{value}</div>,
      },
    ],
    [],
  );

  const binarys: line[] = fileContents.map((content, index) => {
    return {number: index + 1, data: content};
  });

  const data = useMemo(() => binarys, [binarys]);

  return (
    <>
      <div className="w-1/3 px-4 py-4">
        <TableSheet columns={columns} data={data} />
      </div>
    </>
  );
};

export default AssemblerSheet;
