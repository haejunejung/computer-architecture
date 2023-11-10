import React from 'react';
import Sidebar from '../components/shared/Sidebar';
import AssemblerSheet from '../components/assembler/AssemblerSheet';
import BinarySheet from '../components/assembler/BinarySheet';
import Header from '../components/shared/Header';

const Assembler = () => {
  return (
    <>
      <Header />
      <section className="flex">
        <Sidebar />
        <AssemblerSheet />
        <BinarySheet />
      </section>
    </>
  );
};

export default Assembler;
