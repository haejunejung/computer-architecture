import React from 'react';
import FileUploader from './FileUploader';
import FolderOpenIcon from '@mui/icons-material/FolderOpen';
import {useRecoilValue, useSetRecoilState} from 'recoil';
import {
  fileContentsState,
  fileNamesState,
  filesState,
} from '../../states/recoil';

const Sidebar = (): JSX.Element => {
  const fileNames = useRecoilValue(fileNamesState);
  const files = useRecoilValue(filesState);
  const setFileContents = useSetRecoilState(fileContentsState);

  const onClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    const {name} = event.currentTarget;
    files.forEach((file, index) => {
      if (file.file === name) {
        setFileContents(file.data);
      }
    });
  };

  return (
    <main className="flex">
      <nav className="px-10">
        <section className="flex flex-col py-4">
          <div>
            <FolderOpenIcon className="border border-black" />
            <FileUploader />
          </div>

          {fileNames.map((file, index) => {
            return (
              <button
                onClick={onClick}
                key={index}
                name={file}
                className="py-1">
                <span>{index + 1}.</span>
                <span className="px-2">{file}</span>
              </button>
            );
          })}
        </section>
      </nav>
    </main>
  );
};

export default Sidebar;
