import React from 'react';
import Sidebar from '../components/Sidebar';
import AssemblerSheet from '../components/AssemblerSheet';
import BinarySheet from '../components/BinarySheet';

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
