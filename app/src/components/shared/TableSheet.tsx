import React from 'react';
import {useTable} from 'react-table';

const TableSheet: React.FC<{columns: any; data: any}> = ({
  columns,
  data,
}): JSX.Element => {
  const {getTableProps, getTableBodyProps, headerGroups, rows, prepareRow} =
    useTable({columns, data});

  return (
    <section className="w-full overflow-auto border border-black h-[90vh] rounded-md">
      <table {...getTableProps()} className="w-full ">
        <thead className="text-white bg-black border border-black">
          {headerGroups.map(headerGroup => (
            <tr {...headerGroup.getHeaderGroupProps()}>
              {headerGroup.headers.map(column => (
                <th {...column.getHeaderProps()}>{column.render('Header')}</th>
              ))}
            </tr>
          ))}
        </thead>
        <tbody {...getTableBodyProps()}>
          {rows.map(row => {
            prepareRow(row);
            return (
              <tr {...row.getRowProps()}>
                {row.cells.map(cell => (
                  <td {...cell.getCellProps()}>{cell.render('Cell')}</td>
                ))}
              </tr>
            );
          })}
        </tbody>
      </table>
    </section>
  );
};

export default TableSheet;
