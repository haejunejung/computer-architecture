import React, {useEffect} from 'react';
import {useRecoilValue} from 'recoil';
import {example1} from '../components/shared/Examples';
import {wasmModuleState} from '../states/recoil';
import {loadParserFile} from '../wasmLoader';
import Header from '../components/shared/Header';
import Sidebar from '../components/shared/Sidebar';
import AssemblerSheet from '../components/assembler/AssemblerSheet';
import RegisterSheet from '../components/parser/RegisterSheet';
import DataSectionSheet from '../components/parser/DataSectionSheet';
import StackSectionSheet from '../components/parser/StackSectionSheet';
import DashBoardSheet from '../components/parser/DashBoardSheet';

const Parser = (): JSX.Element => {
  const wasmModule = useRecoilValue(wasmModuleState);

  useEffect(() => {
    if (wasmModule) {
      loadParserFile(wasmModule, example1).then(response => {
        console.log(response);
      });
    }
  }, [wasmModule]);

  return (
    <>
      <Header />
      <section className="flex">
        <Sidebar />
        <AssemblerSheet />
        <RegisterSheet />
        <div className="flex flex-col">
          <DataSectionSheet />
          <StackSectionSheet />
        </div>
        <DashBoardSheet />
      </section>
    </>
  );
};

export default Parser;
