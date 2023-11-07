import React from 'react';
import Sidebar from '../components/Sidebar';
import {useRecoilValue} from 'recoil';
import {fileContentsState} from '../states/recoil';

const Assembler = () => {
  const fileContents = useRecoilValue(fileContentsState);

  return (
    <>
      <Sidebar />
      <div>
        <h3>File Contents:</h3>
        {fileContents.map((line, index) => (
          <div key={index}>{line}</div>
        ))}
      </div>
    </>
  );
};

export default Assembler;
