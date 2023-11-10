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
        Header: <div className="text-start">#</div>,
      },
      {
        accessor: 'data',
        Header: <div className="px-4 text-start">Assembly code</div>,
        Cell: ({value}) => {
          if (value.includes('.data') || value.includes('.text')) {
            return <div className="px-16 text-base">{value}</div>;
          } else if (value.includes(':')) {
            return <div className="px-4 text-base">{value}</div>;
          } else {
            return <div className="px-16 text-base">{value}</div>;
          }
        },
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
