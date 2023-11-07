import React from 'react';
import {Route, Routes} from 'react-router-dom';
import Assembler from './pages/Assembler';
import Parser from './pages/Parser';
import Cache from './pages/Cache';

const Pages = (): JSX.Element => {
  return (
    <Routes>
      <Route path="/" element={<Assembler />} />
      <Route path="/assembler" element={<Assembler />} />
      <Route path="/parser" element={<Parser />} />
      <Route path="/cache" element={<Cache />} />
    </Routes>
  );
};

export default Pages;
