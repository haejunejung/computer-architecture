import React from 'react';
import {useRecoilValue} from 'recoil';
import {fileContentsState} from '../states/recoil';

const AssemblerSheet = (): JSX.Element => {
  const fileContents = useRecoilValue(fileContentsState);

  return (
    <>
      <div>
        <h3>File Contents:</h3>
        {fileContents.map((line, index) => (
          <div key={index}>{line}</div>
        ))}
      </div>
    </>
  );
};

export default AssemblerSheet;
