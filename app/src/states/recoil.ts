import {ASUtil} from '@assemblyscript/loader';
import {atom} from 'recoil';

export const wasmModuleState = atom<ASUtil | null>({
  key: 'wasmModuleState',
  default: null,
});

export const fileContentsState = atom<string[]>({
  key: 'fileContentsState',
  default: [],
});
