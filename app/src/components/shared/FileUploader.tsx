import React, {useRef} from 'react';
import UploadFileIcon from '@mui/icons-material/UploadFile';
import {useSetRecoilState} from 'recoil';
import {fileContentsState} from '../../states/recoil';

const FileUploader = (): JSX.Element => {
  const fileInput = useRef<HTMLInputElement>(null);
  const setFileContents = useSetRecoilState<string[]>(fileContentsState);

  const onClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    fileInput.current?.click();
  };

  const onChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    event.preventDefault();
    const file = event.target.files?.[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = e => {
        const text = (e.target!.result as string).trim();
        const lines = text.split('\n').map(line => line.replace(/\t/g, ' '));
        setFileContents(lines);
      };
      reader.readAsText(file);
    }
  };

  return (
    <React.Fragment>
      <button onClick={onClick}>
        <UploadFileIcon />
      </button>
      <input
        type="file"
        ref={fileInput}
        onChange={onChange}
        className="hidden"
      />
    </React.Fragment>
  );
};

export default FileUploader;
