import React from 'react';
import Sidebar from '../components/shared/Sidebar';
import AssemblerSheet from '../components/assembler/AssemblerSheet';
import BinarySheet from '../components/assembler/BinarySheet';

const Assembler = () => {
  return (
    <section className="flex">
      <Sidebar />
      <AssemblerSheet />
      <BinarySheet />
    </section>
  );
};

export default Assembler;
