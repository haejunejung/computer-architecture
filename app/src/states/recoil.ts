import loader from '@assemblyscript/loader';
import {atom} from 'recoil';
import {
  example1,
  example2,
  example3,
  example4,
  example5,
  example7,
  exmaple6,
} from '../components/assembler/Examples';
import {AssemblerOutput, Files} from './types';

export const wasmModuleState = atom<
  (loader.ASUtil & Record<string, unknown>) | undefined | null
>({
  key: 'wasmModuleState',
  default: null,
});

export const fileContentsState = atom<string[]>({
  key: 'fileContentsState',
  default: example1,
});

export const AssemblerContentState = atom<AssemblerOutput>({
  key: 'AssemblerContentState',
  default: {
    binarys: [
      '00000010001000001000100000100100',
      '00000010010000001001000000100100',
      '00111100000010000001000000000000',
      '00111100000010010001000000000000',
      '00110101001010010000000000000100',
      '00000001010000000101000000100100',
      '00000001011000000101100000100100',
      '00100010001100010000000000000001',
      '00100001011010110000000000000001',
      '00000001001000000100100000100101',
      '00010101011010001111111111111100',
      '00100010010100100000000000000010',
      '00100001011010110000000000000001',
      '00000000000100011001000001000000',
      '00000000000100101000100001000010',
      '00000010001100101001100000100100',
      '00010101011010011111111111111010',
      '00000000101111110010100000100000',
      '00000010001100101000000000100111',
      '00010001010010000000000000000001',
      '00001000000100000000000000000110',
      '00110110000100001111000011110000',
    ],
    datas: [],
    texts: [],
  },
});

export const filesState = atom<Array<Files>>({
  key: 'filesState',
  default: [
    {file: 'example1.s', data: example1},
    {file: 'example2.s', data: example2},
    {file: 'example3.s', data: example3},
    {file: 'example4.s', data: example4},
    {file: 'example5.s', data: example5},
    {file: 'example6.s', data: exmaple6},
    {file: 'example7.s', data: example7},
  ],
});

export const fileNamesState = atom<Array<string>>({
  key: 'fileNames',
  default: [
    'example1.s',
    'example2.s',
    'example3.s',
    'example4.s',
    'example5.s',
    'example6.s',
    'example7.s',
  ],
});
