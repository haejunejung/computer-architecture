import loader from '@assemblyscript/loader';
import {atom} from 'recoil';

export const wasmModuleState = atom<
  (loader.ASUtil & Record<string, unknown>) | undefined | null
>({
  key: 'wasmModuleState',
  default: null,
});

export const fileContentsState = atom<string[]>({
  key: 'fileContentsState',
  default: [],
});
